# AI 오케스트레이션 시스템 설계

> 작성일: 2026-05-19
> 버전: v1.1
> 최종 수정: 2026-05-21

---

## 에이전트 구성

### 1. 기획 에이전트
- **도구**: Claude.ai (오케스트레이터 Project)
- **역할**: GDD 작성 및 유지, 게임 로직 설계, 밸런스 수치 계산, 에피소드 스크립트 작성
- **호출 방법**: 오케스트레이터 Project 채팅에서 직접 요청
- **컨텍스트**: Project Knowledge에 GDD 문서 등록

### 2. 코드 에이전트
- **도구**: Claude Code (터미널) / Cursor (IDE)
- **역할**: GDScript 코드 생성, 에러 수정, 리팩토링
- **호출 방법**: Claude Code 터미널에서 작업 또는 Cursor 내 AI 기능
- **워킹 디렉토리**: `/Users/ciny/Desktop/my/work/turtle-restaurant`

### 3. 아트 에이전트
- **도구**: Claude.ai → Midjourney / Adobe Firefly
- **역할**: 아트 방향 정의, Midjourney 프롬프트 생성, 에셋 목록 관리
- **출력물**: `04_art_assets/` 폴더에 프롬프트 및 에셋 목록 저장

### 4. QA 에이전트
- **도구**: Claude.ai
- **역할**: 테스트 시나리오 작성, 엣지케이스 발굴, 버그 리포트 정리
- **출력물**: `03_system_design/qa_checklist.md`

### 5. 문서 에이전트
- **도구**: Claude.ai (파일시스템 MCP + terminal MCP 연결)
- **역할**: 개발일지 자동 작성, 문서 인덱스 갱신, GDD 업데이트, GitHub push
- **접근 경로**:
  - 문서: `/Users/ciny/Desktop/my/obsidian/ciny/02_study/Projects/turtle-restaurant`
  - 코드: `/Users/ciny/Desktop/my/work/turtle-restaurant`

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
③ Claude Code / Cursor → 코드 생성
④ Godot 실행 → 테스트
⑤ 에러 발생 시 → Claude Code에 에러+코드 붙여넣기
⑥ 동작 확인 → Git 커밋
⑦ 오케스트레이터 Project → 오늘 일지 작성 + push 요청
```

---

## GitHub 이슈 관리

- 이슈는 GitHub Projects에서 직접 관리
- 문서로 별도 관리하지 않음
- 참고: github.com/turtle-restaurant/docs, github.com/turtle-restaurant/game
