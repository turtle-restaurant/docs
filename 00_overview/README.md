# 거북이식당 (Turtle Restaurant) — 프로젝트 홈

> 힐링 아케이드 + 운영 시뮬레이션 게임 | 1인 개발 | AI 오케스트레이션 기반

---

## 프로젝트 개요

| 항목 | 내용 |
|------|------|
| 게임명 | 거북이식당 (Turtle Restaurant) |
| 장르 | 힐링 아케이드 + 운영 시뮬레이션 |
| 플랫폼 | 모바일 가로 (iOS / Android), PC 고려 |
| 개발 엔진 | Godot 4.6.2 |
| 해상도 | 1920×1080 기준 (가로형) |
| 개발 기간 | 2026-05-19 ~ 2026-09-27 |
| 개발 형태 | 1인 개발 + AI 오케스트레이션 |
| 개발자 | ciny |

---

## 컨셉 한 줄 요약

> 주인공 거북이가 되어 동물 손님들에게 음식을 대접하는 파스텔+스케치톤 힐링 식당 게임

---

## 폴더 구조

```
turtle-restaurant/
├── 00_overview/         # 프로젝트 전체 개요 (지금 여기)
├── 01_GDD/              # 게임 디자인 문서
├── 02_devlog/           # 날짜별 개발일지
├── 03_system_design/    # 시스템 설계 (씬구조, DB, 클래스 다이어그램 등)
├── 04_art_assets/       # 아트 방향성, 프롬프트, 에셋 목록
├── 05_retrospective/    # 주간/월간 회고
└── 06_portfolio/        # 포트폴리오용 정리 문서
```

---

## AI 오케스트레이션 구성

| 역할      | 도구                                        | 담당 업무                                |
| ------- | ----------------------------------------- | ------------------------------------ |
| 기획 에이전트 | Claude.ai (프로젝트)                          | GDD 작성, 게임 로직 설계, 밸런스, 에피소드 스크립트     |
| 코드 에이전트 | Claude.ai → Claude Code (terminal MCP 경유) | GDScript 생성, 씬 구조 설계, 버그 수정, 최적화     |
| 아트 에이전트 | Claude.ai + Midjourney                    | 프롬프트 생성, 스타일 가이드, 에셋 목록 관리           |
| QA 에이전트 | Claude.ai                                 | 테스트 시나리오, 엣지케이스 발굴, 버그 리포트           |
| 문서 에이전트 | Claude.ai (filesystem MCP)                | 개발일지 작성, 문서 갱신, push.sh 실행, 포트폴리오 정리 |

### 코드 에이전트 실행 흐름

```
ciny 작업 요청
→ Claude.ai: Instructions 확인 + Claude Code 프롬프트 작성
→ ciny 승인
→ Claude.ai: terminal MCP로 claude -p 실행 (non-interactive)
→ Claude Code: 파일 생성 / 수정
→ Claude.ai: 결과 파일 확인 후 보고
```

---

## 개발 로드맵

| 마일스톤 | 기간 | 내용 |
|---------|------|------|
| M1 | ~2026-06-07 | 환경 세팅, GDD 완성 (진행 중) |
| M2 | 2026-06-08 ~ 07-12 | 코어 루프 프로토타입 |
| M3 | 2026-07-13 ~ 08-30 | 미니게임 3종 + 콘텐츠 |
| M4 | 2026-08-31 ~ 09-27 | QA, 밸런싱, 출시 |

---

## 경로 정보

| 구분 | 경로 |
|------|------|
| 문서 (Obsidian) | (문서경로) |
| 코드 (Godot) | (코드경로) |
| GitHub docs | github.com/turtle-restaurant/docs |
| GitHub game | github.com/turtle-restaurant/game |

---

## 관련 링크

- [[01_GDD/GDD_main]] — 메인 게임 디자인 문서
- [[02_devlog/devlog_index]] — 개발일지 목록
- [[06_portfolio/portfolio_main]] — 포트폴리오 초안
