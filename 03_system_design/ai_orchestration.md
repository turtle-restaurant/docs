# AI 오케스트레이션 시스템 설계

> 작성일: 2026-05-19
> 버전: v2.0
> 최종 수정: 2026-05-25

---

## 변경 이력

| 날짜 | 버전 | 내용 |
|------|------|------|
| 2026-05-19 | v1.0 | 최초 작성 |
| 2026-05-21 | v1.2 | 코드 에이전트 도구 변경, 실행 흐름 추가 |
| 2026-05-25 | v1.3 | 변경 이력 테이블 추가 |
| 2026-05-25 | v2.0 | 아트 에이전트 도구 변경 (Midjourney → ComfyUI+SD), MCP 구성 전면 업데이트, Project 구조 정리, Knowledge 운영 방식 추가 |

---

## 전체 구조

```
ciny (기획자)
      ↓ 요청
오케스트레이터 Project (Claude.ai)
      ├── 기획 파트: GDD 작성/수정
      ├── 문서 파트: 개발일지, push
      └── QA 파트: 테스트 시나리오

아트 에이전트 Project (Claude.ai)
      └── 이미지 생성 파트: ComfyUI MCP → SD 로컬 생성 → assets/ 저장

코드 에이전트 Project (Claude.ai) ← M2 착수 시 추가
      └── 코드 파트: terminal MCP → Claude Code → GDScript 생성
```

---

## 에이전트 구성

| 역할      | Project       | 도구                                     | 담당 업무                       |
| ------- | ------------- | -------------------------------------- | --------------------------- |
| 오케스트레이터 | 거북이식당 오케스트레이터 | Claude.ai                              | 기획/문서/QA 통합 처리, 작업 분해       |
| 아트 에이전트 | 거북이식당 아트 에이전트 | Claude.ai + ComfyUI MCP                | 이미지 생성, 에셋 관리, 프롬프트 이력      |
| 코드 에이전트 | 거북이식당 코드 에이전트 | Claude.ai + terminal MCP + Claude Code | GDScript 생성, 씬 구조 설계, 버그 수정 |

---

## MCP 서버 구성

| MCP 서버 | 패키지 | 역할 |
|----------|--------|------|
| filesystem | @modelcontextprotocol/server-filesystem | 로컬 MD 파일 읽기/쓰기 |
| terminal | @iflow-mcp/mcp-shell-server | git, bash 명령어 실행 |
| comfyui | comfyui-mcp (로컬 빌드) | ComfyUI API 호출, 이미지 생성 |

### 허용 경로 (filesystem MCP)
- `(문서경로)`
- `(코드경로)`

---

## 아트 에이전트 상세

### 도구 스택
- Claude.ai (아트 에이전트 Project)
- ComfyUI 0.22.0 (로컬, 포트 8188)
- Stable Diffusion 모델: anything-v5.safetensors
- MCP: comfyui-mcp (`(로컬경로)/comfyui-mcp/dist/index.js`)

### 실행 흐름
```
ciny: 이미지 생성 요청
      ↓
아트 에이전트: ComfyUI 실행 여부 확인 (http://127.0.0.1:8188)
      ↓ 미실행 시
ciny: ComfyUI 수동 실행
      cd (로컬경로)/ComfyUI && source venv/bin/activate && python main.py --listen 0.0.0.0 --port 8188
      ↓ 실행 확인 후
아트 에이전트: art_guide.md 스타일 기준으로 프롬프트 구성
      ↓
comfyui MCP: 이미지 생성 → assets/ 하위 경로 저장
      ↓
아트 에이전트: prompt_log.md 기록 + art_guide.md 체크 + push
```

### 에셋 저장 경로
| 종류 | 경로 |
|------|------|
| 캐릭터 | assets/characters/ |
| 배경 | assets/backgrounds/ |
| 음식 아이템 | assets/food/ |
| UI 요소 | assets/ui/ |
| 테스트/임시 | assets/temp/ |

### 기본 스타일 설정값
| 항목 | 값 |
|------|-----|
| 모델 | anything-v5.safetensors |
| model_family | sd15 |
| style | anime |
| artist_reference | studio ghibli |
| quality | standard |
| 캐릭터 해상도 | 512×512 |
| 배경 해상도 | 768×512 |

---

## 코드 에이전트 실행 흐름 (M2 착수 시 활성화)

```
ciny: 기능 구현 요청
      ↓
코드 에이전트: 설계 확인 + Claude Code 프롬프트 작성
      ↓ ciny 승인
코드 에이전트: terminal MCP로 claude -p 실행
      ↓
Claude Code: GDScript 파일 생성/수정
      ↓
코드 에이전트: 결과 파일 확인 후 보고
```

---

## Claude Project 운영 방식

### Project = 역할이 다른 Claude
- Project마다 Instructions + Knowledge가 다름
- 같은 Project 내 세션들은 Instructions/Knowledge 공유, 대화 내용은 비공유
- 세션은 작업 단위(하루 또는 주제 단위)로 분리 권장

### Knowledge 운영 방식
| 문서 | 등록 Project | 교체 타이밍 |
|------|-------------|------------|
| GDD_main.md | 오케스트레이터 | GDD 대규모 개편 시 |
| ai_orchestration.md | 오케스트레이터 | 에이전트 구성 변경 시 |
| art_guide.md | 아트 에이전트 | 스타일 전면 변경 시 |
| prompt_log.md | 아트 에이전트 | 매 마일스톤 완료 시 |

> Claude가 로컬 파일 수정 + push는 자동 처리
> Knowledge 파일 교체는 ciny가 수동으로 진행
> Claude가 "Knowledge 교체 권장" 메시지로 타이밍 안내

---

## 경로 정보

| 구분 | 경로 |
|------|------|
| 문서 (Obsidian) | (문서경로) |
| 코드 (Godot) | (코드경로) |
| ComfyUI | (로컬경로)/ComfyUI |
| comfyui-mcp | (로컬경로)/comfyui-mcp |
| GitHub docs | github.com/turtle-restaurant/docs |
| GitHub game | github.com/turtle-restaurant/game |

---

## 일일 워크플로우

```
① 오늘 할 작업 선정
② 오케스트레이터 Project 새 세션 → 기획/설계
③ (이미지 필요 시) 아트 에이전트 Project → 이미지 생성
④ (코드 작업 시, M2~) 코드 에이전트 Project → GDScript 생성
⑤ Godot 실행 → 테스트
⑥ 오케스트레이터 Project → 일지 작성 + push
```

---

## GitHub 이슈 관리

- 이슈는 GitHub Projects에서 직접 관리
- 문서 히스토리용 이슈 목록: `03_system_design/github_issues/`
