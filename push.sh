#!/bin/bash

# ─────────────────────────────────────────
# 거북이식당 docs 자동 push 스크립트
# 사용법: ./push.sh
#         ./push.sh "커밋 메시지 직접 입력"
# ─────────────────────────────────────────

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$SCRIPT_DIR/.env.sh"

if [ ! -f "$ENV_FILE" ]; then
  echo "오류: .env.sh 파일을 찾을 수 없음 → $ENV_FILE"
  echo ".env.sh.example을 복사해 .env.sh를 생성하고 경로를 설정하세요."
  exit 1
fi

# shellcheck source=.env.sh
source "$ENV_FILE"

cd "$DOCS_DIR" || { echo "경로를 찾을 수 없음: $DOCS_DIR"; exit 1; }

# 변경된 파일이 없으면 종료
if git diff --quiet && git diff --cached --quiet; then
  echo "변경된 파일 없음. push 건너뜀."
  exit 0
fi

# 변경 파일 목록 출력
echo ""
echo "변경된 파일:"
git status --short
echo ""

# 커밋 메시지 결정
if [ -n "$1" ]; then
  COMMIT_MSG="$1"
else
  TODAY=$(date +"%Y-%m-%d")
  COMMIT_MSG="docs: $TODAY 작업 내용 반영"
fi

# add → commit → push
git add .
git commit -m "$COMMIT_MSG"
git push origin main

echo ""
echo "push 완료: $COMMIT_MSG"
