# GitHub 이슈 — M1 환경 세팅 & GDD 완성

> 마일스톤: M1
> 기간: 2026-05-19 ~ 2026-06-07
> 최종 수정: 2026-05-24 (최종)

---

## 진행 상태 기준

- `[x]` 완료
- `[ ]` 미완료 / 진행 예정

---

## docs

- [x] GDD v0.1 초안 작성
- [x] GDD v0.2 개편 반영 (컨셉데이 제거, 타이밍 쿡, 축제 시스템)
- [x] GDD v0.3 개편 반영 (가로형, 날짜 기반 진행, 점심/저녁 구조)
- [x] GDD v0.4 — GDD 문서 6개 파일로 분리 (GDD_main / GDD_game / GDD_story / GDD_gold / GDD_BM / GDD_level)
- [x] GDD_game.md 작성 — 메인 게임 상세 설계 (조리 시스템, 주문, 플레이트, 조리기구)
- [x] GDD_story.md 작성 — 손님 시스템 및 에피소드
- [x] GDD_gold.md 작성 — 재화 및 경제 시스템
- [x] GDD_BM.md 작성 — 비즈니스 모델
- [x] GDD_level.md 작성 — 레벨 디자인 초안 (난이도 곡선, 조리 시간, 골드 수치, 업그레이드 비용)
- [x] AI 오케스트레이션 구성 문서 작성
- [x] AI 오케스트레이션 문서 현행화 (v1.2)
- [x] 메인게임 와이어프레임 작성 및 99_sources 등록
- [x] `[2026-05-24]` GDD_game.md v0.3 — 샌드위치 스택 미니게임 상세 설계 추가
- [x] `[2026-05-24]` GDD_story.md v0.2 — 시즌 축제 현행화 (미니게임 1종 확정, 나머지 구상 중)
- [x] `[2026-05-24]` GDD_story.md v0.3 — 손님 시스템 개편 (일반 손님 단순화, 에피소드 다회차 구조, 튜토리얼 4일 구조, 호랑님 에피소드 방향 초안)
- [x] `[2026-05-24]` 샌드위치 스택 와이어프레임 99_sources 등록
- [x] `[2026-05-24]` 아트 스타일 가이드 작성 및 확정 (art_style_guide.md v0.1~v0.5)
  - v0.1: 초안 — 전체 비주얼 방향, 컬러 팔레트, 캐릭터/배경/UI/애니메이션 기준
  - v0.3: 음식 스타일 재정의 — GDD 접시 형태 연동, ComfyUI 프롬프트 기준
  - v0.4: art_guide.md 통합, Midjourney 흔적 제거
  - v0.5: 전체 스타일 확정 — 굵은 선화+플랫 컬러 (동물 스티커 레퍼런스), 캐릭터/음식/배경/UI 일관화, 주인공 거북이 항목 신설
- [ ] 손님 에피소드 스크립트 작성 — 호랑님 (4회차, 상세 스크립트 미작성)

## chore

- [x] Godot 4.6.2 설치 및 project.godot 초기화
- [x] GitHub organization 레포 3개 생성 (docs / game / design)
- [x] 로컬 git 초기화 + 첫 push (docs / game)
- [x] GitHub Projects 보드 + 마일스톤 4개 세팅
- [x] 이슈 라벨 생성
- [x] MCP Filesystem + terminal 서버 연결 및 push.sh 자동화
- [x] 오케스트레이터 Claude Project 세팅 (Instructions + Knowledge)
- [x] 해상도 기준 변경 — 390×844 → 1920×1080 (환경별 유연 대응)
- [x] 브랜치 전략 적용 (game 레포 develop 브랜치 생성)
- [x] Claude Code 설치 및 프로젝트 연결

## feat

- [x] 프로젝트 폴더 구조 확정 (scenes / scripts / assets / data)
- [ ] 핵심 데이터 JSON 설계 (recipes.json / customers.json / episodes.json)
