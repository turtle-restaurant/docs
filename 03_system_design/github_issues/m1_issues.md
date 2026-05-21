# GitHub 이슈 — M1 환경 세팅 & GDD 완성

> 마일스톤: M1
> 기간: 2026-05-19 ~ 2026-06-07
> 최종 수정: 2026-05-21

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
- [x] AI 오케스트레이션 문서 현행화 (v1.1)
- [x] 메인게임 와이어프레임 작성 및 99_sources 등록
- [ ] 아트 스타일 가이드 초안 작성
- [ ] 손님 에피소드 스크립트 방향 문서화

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
- [ ] Claude Code 설치 및 프로젝트 연결

## feat

- [x] 프로젝트 폴더 구조 확정 (scenes / scripts / assets / data)
- [ ] 핵심 데이터 JSON 설계 (recipes.json / customers.json / episodes.json)
