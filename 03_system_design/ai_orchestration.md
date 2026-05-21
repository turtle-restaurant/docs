# AI 오케스트레이션 시스템 설계

> 작성일: 2026-05-19
> 버전: v1.2
> 최종 수정: 2026-05-21

---

## 에이전트 구성

| 역할 | 도구 | 담당 업무 |
|------|------|----------|
| 기획 에이전트 | Claude.ai (프로젝트) | GDD 작성, 게임 로직 설계, 밸런스, 에피소드 스크립트 |
| 코드 에이전트 | Claude.ai → Claude Code (terminal MCP 경유) | GDScript 생성, 씬 구조 설계, 버그 수정, 최적화 |
| 아트 에이전트 | Claude.ai + Midjourney | 프롬프트 생성, 스타일 가이드, 에셋 목록 관리 |
| QA 에이전트 | Claude.ai | 테스트 시나리오, 엣지케이스 발굴, 버그 리포트 |
| 문서 에이전트 | Claude.ai (filesystem MCP) | 개발일지 작성, 문서 갱신, push.sh 실행, 포트폴리오 정리 |

---

## 코드 에이전트 실행 흐름

```
ciny 작업 요청
→ Claude.ai: Instructions 확인 + Claude Code 프롬프트 작성
→ ciny 승인
→ Claude.ai: terminal MCP로 claude -p 실행 (non-interactive)
→ Claude Code: 파일 생성 / 수정
→ Claude.ai: 결과 파일 확인 후 보고
```

---

## 경로 정보

| 구분 | 경로 |
|------|------|
| 문서 (Obsidian) | /Users/ciny/Desktop/my/obsidian/ciny/02_study/Projects/turtle-restaurant |
| 코드 (Godot) | /Users/ciny/Desktop/my/work/turtle-restaurant |
| GitHub docs | github.com/turtle-restaurant/docs |
| GitHub game | github.com/turtle-restaurant/game |

---

## 문서 에이전트 사용법

### 개발일지 작성
작업 마무리 후 Claude에게:
```
오늘 작업 일지 작성하고 푸시해줘.
한 일: [작업 내용]
결정 사항: [결정한 것들]
```

### GDD 업데이트
```
GDD에 [내용] 추가/수정해줘
```

### 포트폴리오 정리
```
지금까지 개발일지 기반으로 포트폴리오 초안 업데이트해줘
```

---

## 일일 워크플로우

```
① 오늘 할 기능 1개 선정
② 오케스트레이터 Project → 기획/설계 질문
③ Claude Code (terminal MCP 경유) → 코드 생성
④ Godot 실행 → 테스트
⑤ 에러 발생 시 → Claude Code에 에러+코드 전달
⑥ 동작 확인 → Git 커밋
⑦ 오케스트레이터 Project → 오늘 일지 작성 + push 요청
```

---

## GitHub 이슈 관리

- 이슈는 GitHub Projects에서 직접 관리
- 문서 히스토리용 이슈 목록: `03_system_design/github_issues/`
