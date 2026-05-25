# GitHub 이슈 — M1 환경 세팅 & GDD 완성

> 마일스톤: M1
> 기간: 2026-05-19 ~ 2026-06-07
> 최종 수정: 2026-05-25

---

## 진행 상태 기준

- `[x]` 완료
- `[ ]` 미완료 / 진행 예정

---

## docs

- [x] GDD 문서 작성 및 현행화
  - v0.1: 초안 작성
  - v0.2: 컨셉데이 제거, 타이밍 쿡 단일화, 축제 시스템 설계
  - v0.3: 가로형 전환, 날짜 기반 진행, 점심/저녁 구조
  - v0.4: 문서 6개 파일 분리 (GDD_main / GDD_game / GDD_story / GDD_gold / GDD_BM / GDD_level)
  - GDD_game.md: 메인 게임 상세 설계 (조리 시스템, 주문, 플레이트, 조리기구), 샌드위치 스택 미니게임 상세 설계 추가
  - GDD_story.md: 손님 시스템 및 에피소드, 시즌 축제 현행화, 손님 시스템 개편 (일반 손님 단순화, 에피소드 다회차 구조, 튜토리얼 4일 구조, 호랑님 에피소드 방향 초안)
  - GDD_gold.md: 재화 및 경제 시스템
  - GDD_BM.md: 비즈니스 모델
  - GDD_level.md: 레벨 디자인 초안 (난이도 곡선, 조리 시간, 골드 수치, 업그레이드 비용)
- [x] AI 오케스트레이션 문서 작성 및 현행화 (v1.0 → v2.1)
  - v1.2: 코드 에이전트 도구 변경, 실행 흐름 추가
  - v1.3: 변경 이력 테이블 추가
  - v2.0: 아트 에이전트 도구 변경 (Midjourney → ComfyUI+SD), MCP 구성 전면 업데이트
  - v2.1: 아트 에이전트 이미지 생성 변경 (ComfyUI+SD → Claude.ai 직접 생성)
- [x] 메인게임 와이어프레임 / 샌드위치 스택 와이어프레임 작성 및 99_sources 등록
- [x] 아트 스타일 가이드 작성 및 확정 (art_style_guide.md v0.1~v1.0)
  - v0.1: 초안 — 전체 비주얼 방향, 컬러 팔레트, 캐릭터/배경/UI/애니메이션 기준
  - v0.3: 음식 스타일 재정의 — GDD 접시 형태 연동, ComfyUI 프롬프트 기준
  - v0.4: art_guide.md 통합, Midjourney 흔적 제거
  - v0.5: 전체 스타일 확정 — 굵은 선화+플랫 컬러 (동물 스티커 레퍼런스), 캐릭터/음식/배경/UI 일관화, 주인공 거북이 항목 신설
  - v1.0: 전면 재작성 — 레퍼런스 이미지 기반 스타일 재정의. 캐릭터 스탠딩 정면 자세로 변경. 음식 카테고리별 렌더링 분리. ComfyUI 프롬프트 전체 삭제.
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
- [x] 핵심 데이터 JSON 설계 (recipes.json / customers.json / episodes.json)
  - recipes.json v1.0: 레시피 10종 — 재료/조리기구/조리시간/판매가/접시형태/필수여부 정의
  - customers.json v1.0: 일반 손님 4종 / 에피소드 손님 6종 — 인내심 타이머/골드배율/에피소드 완료 후 처리 정의
  - episodes.json v1.0: 에피소드 6종 — 호랑님 회차 구조 확정, 나머지 5종 미확정(unplanned) 플레이스홀더
