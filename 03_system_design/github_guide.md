# GitHub 구성 가이드

> 작성일: 2025-05-19  
> organization: github.com/turtle-restaurant

---

## 레포지토리 구성

| 레포 | URL | 공개 | 로컬 경로 |
|------|-----|------|-----------|
| `docs` | github.com/turtle-restaurant/docs | Public | `obsidian/.../turtle-restaurant/` |
| `game` | github.com/turtle-restaurant/game | Public | `project/turtle-restaurant/` |
| `design` | github.com/turtle-restaurant/design | Public | (design 레포 별도 클론 예정) |

---

## 브랜치 전략

### game 레포 (코드)
```
main          ← 안정 버전, 릴리즈 태그
  └─ develop  ← 통합 개발 브랜치
       ├─ feature/core-loop        ← 기능 개발
       ├─ feature/minigame-stack   ← 기능 개발
       └─ fix/customer-ai-bug      ← 버그 수정
```

**커밋 메시지 규칙**
```
feat: 샌드위치 미니게임 드래그 구현
fix: 손님 대기 타이머 오류 수정
docs: GameManager 주석 추가
refactor: Customer 클래스 리팩토링
chore: .gitignore 업데이트
```

### docs 레포 (문서)
```
main  ← 단일 브랜치 (문서는 브랜치 불필요)
```

### design 레포 (에셋)
```
main  ← 단일 브랜치
```

---

## GitHub Projects 구성

### 프로젝트명: 거북이식당 개발 로드맵

**Board 뷰 (칸반)**

| 🗂 백로그 | 🔧 진행 중 | 👀 리뷰 | ✅ 완료 |
|----------|-----------|---------|--------|
| 기능 아이디어, 예정 작업 | 현재 작업 중인 것 (WIP 1~2개) | 테스트·검토 필요 | 완성된 작업 |

**이슈 라벨 구성**
| 라벨 | 색상 | 용도 |
|------|------|------|
| `feat` | 🟢 초록 | 새 기능 |
| `fix` | 🔴 빨강 | 버그 수정 |
| `design` | 🟣 보라 | 아트/UI |
| `docs` | 🔵 파랑 | 문서 작업 |
| `balance` | 🟡 노랑 | 밸런스 조정 |
| `milestone` | 🟠 주황 | 마일스톤 |

**마일스톤 (6개월)**
- M1: 코어 루프 완성 (3~7주차)
- M2: 미니게임 4종 완성 (8~14주차)
- M3: 시스템 완성 (15~20주차)
- M4: 출시 (21~24주차)

---

## 로컬 Git 초기화 명령어

### 1. docs 레포
```bash
cd /Users/ciny/Desktop/my/obsidian/ciny/02_study/Projects/turtle-restaurant
git init
git remote add origin https://github.com/turtle-restaurant/docs.git
git add .
git commit -m "docs: 프로젝트 초기 문서 구조 생성"
git branch -M main
git push -u origin main
```

### 2. game 레포
```bash
cd /Users/ciny/Desktop/my/work/tsquare/project/turtle-restaurant
git init
git remote add origin https://github.com/turtle-restaurant/game.git
git add .
git commit -m "chore: Godot 프로젝트 초기 구조 생성"
git branch -M main
git push -u origin main

# develop 브랜치 생성
git checkout -b develop
git push -u origin develop
```

### 3. design 레포
```bash
# 원하는 위치에 클론 후 사용
git clone https://github.com/turtle-restaurant/design.git
```

---

## 자동화: 문서 에이전트 → GitHub 연동 흐름

```
Claude가 MD 파일 생성/수정
      ↓
터미널에서 수동 push (또는 자동화)
      ↓
GitHub docs 레포 업데이트
      ↓
GitHub Pages로 퍼블리싱 (선택)
```

### 선택: GitHub Pages 설정
docs 레포 → Settings → Pages → Branch: main / folder: / (root)  
→ `https://turtle-restaurant.github.io/docs` 로 문서 공개 가능
