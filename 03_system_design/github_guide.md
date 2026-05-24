# GitHub 구성 가이드

> 작성일: 2026-05-19
> 최종 수정: 2026-05-20
> organization: github.com/turtle-restaurant

---

## 레포지토리 구성

| 레포 | URL | 공개 | 로컬 경로 | 상태 |
|------|-----|------|-----------|------|
| `docs` | github.com/turtle-restaurant/docs | Public | `(문서경로)` | ✅ push 완료 |
| `game` | github.com/turtle-restaurant/game | Public | `(코드경로)` | ✅ push 완료 |
| `design` | github.com/turtle-restaurant/design | Public | (별도 클론 예정) | 🔲 미사용 |

---

## 브랜치 전략

### game 레포 (코드)
```
main          ← 안정 버전, 릴리즈 태그
  └─ develop  ← 통합 개발 브랜치
       ├─ feature/core-loop
       ├─ feature/minigame-timing-cook
       ├─ feature/festival-minigames
       └─ fix/버그명
```

**커밋 메시지 규칙**
```
feat: 타이밍 쿡 판정 로직 구현
fix: 손님 대기 타이머 오류 수정
docs: GameManager 주석 추가
refactor: Customer 클래스 리팩토링
chore: .gitignore 업데이트
```

### docs 레포
```
main ← 단일 브랜치 (push.sh로 자동 push)
```

### design 레포
```
main ← 단일 브랜치
```

---

## GitHub Projects 구성 ✅ 완료

**보드 뷰 (칸반)**

| 백로그 | 진행 중 | 리뷰 | 완료 |
|--------|---------|------|------|
| 기능 아이디어, 예정 작업 | WIP (1~2개 제한) | 테스트·검토 필요 | 완성 |

**이슈 라벨**
| 라벨 | 용도 |
|------|------|
| `feat` | 새 기능 |
| `fix` | 버그 수정 |
| `design` | 아트/UI |
| `docs` | 문서 작업 |
| `balance` | 밸런스 조정 |
| `chore` | 환경/설정 |

**마일스톤 ✅ 등록 완료**
| 마일스톤 | 기간 |
|----------|------|
| M1 — 환경 세팅 & GDD 완성 | 2026-05-19 ~ 2026-06-07 |
| M2 — 코어 루프 프로토타입 | 2026-06-08 ~ 2026-07-12 |
| M3 — 미니게임 및 콘텐츠 | 2026-07-13 ~ 2026-08-30 |
| M4 — QA / 밸런싱 | 2026-08-31 ~ 2026-09-27 |

---

## docs 자동 push

```
Claude가 MD 파일 생성/수정 (MCP Filesystem)
      ↓
terminal MCP로 push.sh 자동 실행
      ↓
github.com/turtle-restaurant/docs 반영
```
