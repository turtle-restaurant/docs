# 아트 스타일 가이드 — 거북이식당

> 문서: art_style_guide.md
> 버전: v0.4
> 작성: ciny + Claude (아트 에이전트)
> 최초 작성일: 2026-05-24

---

## 변경 이력

| 버전 | 내용 |
|------|------|
| v0.1 | 초안 작성 — 연한 파스텔 손그림 방향 |
| v0.2 | 전체 톤 조정 — 만화풍 사실적 스타일로 변경 |
| v0.3 | 음식 스타일 전면 재정의 — 수채화 손그림 (고등어구이 레퍼런스), 접시 형태 GDD 연동 |
| v0.4 | art_guide.md 통합, Midjourney 흔적 제거, 캐릭터 ComfyUI 프롬프트 기준 추가 |

---

## 1. 전체 비주얼 방향

### 1.1 키워드

```
따뜻함 / 손그림 / 먹음직스러운 / 아기자기 / 정성스러운
```

### 1.2 레퍼런스

- **음식**: 첨부 고등어구이 이미지 — 수채화+손그림 혼합, 선화 없이 색 번짐으로 외곽 표현, 실사 색감의 일러스트
- **캐릭터**: 단일 톤 플랫 일러스트 — 음식과 동일한 손그림 분위기이되 수채화 번짐 없이 단순하고 또렷하게
- **배경/UI**: 따뜻하고 정돈된 플랫 스타일

### 1.3 한 줄 방향

> "수채화로 그린 듯 정성스럽고 먹음직스러운 음식이 있는 아기자기한 식당"

### 1.4 카테고리별 스타일 정의

| 카테고리 | 렌더링 방식 | 선화 | 음영 |
|----------|-----------|------|------|
| 음식 | 수채화 손그림 일러스트 | 없거나 흐릿하게 | 수채화 번짐, 붓터치 흔적 |
| 캐릭터 | 단일 톤 플랫 손그림 | 부드러운 선화 (얇고 자연스럽게) | 단일 그림자 1단계, 번짐 없음 |
| 배경/UI | 따뜻한 플랫 | 얇은 선화 | 채도 낮게, 배경이 튀지 않도록 |

---

## 2. 컬러 팔레트

### 2.1 주조색

| 색상명 | HEX | 용도 |
|--------|-----|------|
| Cream | `#F5ECD7` | 배경, 주 UI 바탕 |
| Peach | `#F0A868` | 강조 UI, 버튼, 포인트 |
| Cocoa | `#4A2E1A` | 외곽선, 텍스트 |

### 2.2 보조색

| 색상명 | HEX | 용도 |
|--------|-----|------|
| Sage | `#7AAE70` | 야채류, 자연 요소 |
| Sky | `#7AAEC8` | 국물류, 보조 UI |
| Blush | `#E8A0A0` | 캐릭터 볼터치, 특별 손님 강조 |
| Butter | `#E8C850` | 밥류, 따뜻한 조명 |
| Lavender | `#B0A0D8` | 젬 재화, 프리미엄 UI |

### 2.3 UI 전용색

| 역할 | HEX |
|------|-----|
| 타이머 안전 | `#58A840` |
| 타이머 경고 | `#E0A820` |
| 타이머 위험 | `#D04040` |
| 골드 재화 | `#D4A020` |
| 텍스트 기본 | `#4A2E1A` |
| 텍스트 보조 | `#7A5A48` |

### 2.4 음식 색상 방향

수채화 특성상 고정 HEX보다 색 영역 방향으로 가이드.

| 카테고리 | 색상 방향 |
|----------|---------|
| 밥류 | 따뜻한 흰색, 잡곡은 브라운 계열 점 산포 |
| 국/찌개 | 미역국: 올리브-다크그린. 김치찌개: 레드-오렌지. 콩나물국: 맑은 연노랑 |
| 메인반찬 | 불고기: 글레이즈 다크브라운. 생선구이: 골든 브라운. 닭갈비: 오렌지-레드|
| 서브반찬 | 배추김치: 레드-코랄 + 흰 줄기. 쌈채소: 밝은 진한 그린 |

---

## 3. 음식 이미지 스타일

> 레퍼런스: 첨부 고등어구이 이미지

### 3.1 렌더링 방식

- **기법**: 수채화 손그림 일러스트
- **선화**: 없거나 매우 흐릿하게 — 외곽은 색 번짐으로 자연스럽게 처리
- **음영**: 수채화 번짐 + 붓터치 흔적으로 입체감 표현 (하드 셀 셰이딩 금지)
- **하이라이트**: 흰 붓터치 또는 흰 여백으로 광택 표현
- **배경**: 흰색 또는 투명, 접시/그릇 포함한 완성 일러스트

### 3.2 접시/그릇 형태 (GDD_game 메뉴 구성 기준)

| 카테고리 | 접시 형태 |
|----------|----------|
| 밥류 | 동그라미 공기, 뚜껑 없음, 돔형 밥 |
| 메인반찬 (불고기/생선구이/닭갈비) | 높이가 긴 직사각형 접시, 고등어구이 이미지 기준 |
| 국/찌개류 | 동그라미 그릇/뚝배기, 위에서 살짝 내려다본 앵글 |
| 서브반찬 | 1×2 분할 직사각형 접시 |

### 3.3 음식별 상세 메모

| 음식 | 접시/그릇 | 렌더링 포인트 |
|------|----------|------------|
| 쌀밥 | 흰 공기, 동그라미 | 돔형 밥, 흰 하이라이트, 밥알 질감 |
| 잡곡밥 | 흰 공기, 동그라미 | 아이보리 베이스 + 브라운/블랙 잡곡 점 |
| 미역국 | 흰 사발, 동그라미 | 올리브그린 국물, 소고기 조각, 파 |
| 김치찌개 | 뚝배기, 동그라미 | 레드오렌지 국물, 김치, 두부, 파 |
| 콩나물국 | 흰 사발, 동그라미 | 맑은 연노랑 국물, 흰 콩나물, 빨간 고추 점 |
| 불고기 | 직사각형 (높이긴) | 글레이즈 다크브라운, 파/양파, 고기 결 |
| 생선구이 | 직사각형 (높이긴) | 골든 브라운, 구운 자국, 고등어구이 이미지 직접 참고 |
| 닭갈비 | 직사각형 (높이긴) | 오렌지레드 양념, 깻잎, 쫄깃한 표면 |
| 배추김치 | 1×2 분할 직사각형 | 레드코랄, 배추 흰 줄기, 양념 번짐 |
| 쌈채소 | 1×2 분할 직사각형 | 진한 초록, 상추 결, 잎 겹침 표현 |

### 3.4 ComfyUI 프롬프트 기준

**공통 템플릿**

```
[food name], [plate/bowl description],
watercolor illustration style, hand-painted texture,
soft brushstroke edges, no hard outlines,
realistic food colors, appetizing and vivid,
watercolor bleed and wash effects, white highlights,
warm tones, food illustration, white background
```

**접시 설명 치환**

| 카테고리 | plate/bowl description |
|----------|----------------------|
| 밥류 | white round rice bowl, dome-shaped rice |
| 메인반찬 | tall rectangular ceramic plate, green leaf garnish |
| 국류 | white ceramic soup bowl, clear broth |
| 찌개류 | dark stone pot (dolsot), thick broth |
| 서브반찬 | small rectangular divided plate, two compartments |

**생선구이 예시 (고등어구이 레퍼런스 반영)**

```
grilled mackerel, tall rectangular ceramic plate,
green leaf garnish underneath, small round dipping sauce bowl,
watercolor illustration style, hand-painted texture,
soft brushstroke edges, no hard outlines,
golden-brown grilled skin, charred marks, juicy fish texture,
watercolor bleed and wash effects, white highlights,
warm tones, food illustration, white background
```

---

## 4. 캐릭터 이미지 스타일

### 4.1 렌더링 방식

음식 이미지와 동일한 손그림 분위기를 공유하되, 수채화 번짐 없이 단일 톤 플랫으로 표현.

- **기법**: 플랫 손그림 일러스트 (flat hand-drawn illustration)
- **선화**: 부드럽고 자연스러운 얇은 선화 — 딱딱한 디지털 선 느낌 없이, 손으로 그린 듯 약간의 불규칙함 허용
- **음영**: 단일 그림자 1단계만 — 수채화 번짐 없이 단색 그림자로 입체감 표현
- **하이라이트**: 눈에만 흰 점 하이라이트 1개, 볼터치 필수
- **색감**: 캐릭터별 주조색 1~2색, 채도는 음식보다 낮고 부드럽게
- **배경**: 흰색 또는 투명

### 4.2 형태/비율 기준

- 비율: 머리 : 몸 = 1 : 1 ~ 1 : 1.2 (SD 비율, 머리 큰 귀여운 형태)
- 체형: 통통하고 동글동글, 뾰족한 부분 최소화
- 눈: 크고 동그랗게, 흰 하이라이트 1개
- 코/입: 최소화 (코는 작은 점 또는 삼각형, 입은 짧은 곡선)
- 볼터치: 필수 (Blush `#E8A0A0`, 반투명 원)
- 귀/꼬리/부리 등 동물 특징: 단순하게, 실루엣으로 읽힐 수 있는 수준

### 4.3 일반 손님 4종

| 캐릭터 | 주조색 | 동물 특징 포인트 |
|--------|--------|----------------|
| 참새 | 브라운 + 아이보리 | 노란 부리, 작고 단순한 날개 |
| 쥐 | 미디엄 그레이 | 동그란 귀 2개, 얇은 꼬리 |
| 고양이 | 크림 / 오렌지 / 그레이 (컬러 3종) | 뾰족한 귀, 짧은 수염 선 |
| 강아지 | 베이지 / 브라운 (컬러 2종) | 처진 귀, 촉촉한 눈 |

### 4.4 에피소드 손님

- 일반 손님보다 약간 크고 디테일 추가
- 개성 있는 소품 포함 (구상 중)
- 표정 변화 있음 (기본 / 기쁨 / 슬픔 / 놀람)

### 4.5 ComfyUI 프롬프트 기준

**공통 템플릿**

```
[animal type] character, chibi proportion, big round eyes,
pink blush cheeks, flat hand-drawn illustration style,
soft thin outlines, single-tone flat shading, no watercolor bleed,
simple and clean, warm pastel colors, cute cartoon character,
game asset, white background
```

**일반 손님 예시 (쥐)**

```
mouse character, chibi proportion, big round eyes, round ears,
pink blush cheeks, flat hand-drawn illustration style,
soft thin outlines, single-tone flat shading, no watercolor bleed,
medium gray fur, simple thin tail, warm soft colors,
cute cartoon character, game asset, white background
```

**에피소드 손님 예시 (호랑이)**

```
tiger character, chibi proportion, big round eyes,
pink blush cheeks, flat hand-drawn illustration style,
soft thin outlines, single-tone flat shading, no watercolor bleed,
orange and white fur, black stripes simple, warm expression,
cute cartoon character, slightly larger than common character,
game asset, white background
```

---

## 5. 배경/환경 스타일

### 5.1 식당 내부

- 원근감: 살짝 위에서 내려다보는 2.5D 뷰
- 선화: 얇게 (음식/캐릭터보다 덜 강조)
- 벽/바닥: 따뜻한 나무 질감, 크림/베이지 계열
- 조명: 노란빛 따뜻한 포인트 조명
- 소품: 화분, 액자, 간판 등 아기자기한 요소
- 채도: 캐릭터/음식보다 낮게 유지

### 5.2 메인 게임 화면

- 조리기구 영역: 따뜻한 브라운 계열 주방 배경
- 주문 리스트 영역: 메모지/화이트보드 질감, 굵은 테두리
- 전체 배경: 게임 플레이 요소가 잘 보이도록 채도 낮게 유지

---

## 6. UI 스타일

### 6.1 버튼

- 형태: 모서리 둥근 라운드 렉탱글
- 외곽선: Cocoa (`#4A2E1A`), 두께 2~3px
- 배경: 크림 또는 피치 계열 단색 + 하단 두꺼운 테두리로 입체감
- 눌림 효과: 하단 테두리 사라지며 아래로 2px 이동

### 6.2 아이콘

- 선화 기반 단순 일러스트, 굵은 외곽선
- 내부 플랫 + 셀 셰이딩 1단계
- 크기 통일: 48×48px 기준

### 6.3 폰트

- 국문: 둥근 고딕 볼드 계열 (예: Nanum Round ExtraBold, 온글잎)
- 영문: 둥글고 두꺼운 손글씨 계열
- 크기 계층: 타이틀 32px / 본문 20px / 보조 16px (1920×1080 기준)

### 6.4 주문서 UI

- 메모지/영수증 질감 아이보리 배경, 굵은 테두리
- 핀으로 꽂힌 듯한 연출
- 특별 손님 주문서: Lavender (`#B0A0D8`) 배경으로 구분

---

## 7. 애니메이션 방향

| 요소 | 방향 |
|------|------|
| 캐릭터 대기 | 살랑살랑 좌우 흔들림, 0.8~1.0초 주기 |
| 조리 중 (냄비) | 뚜껑 통통 튀는 애니메이션, 보글보글 이펙트 |
| 조리 중 (프라이팬) | 재료 지글지글 흔들림, 연기 이펙트 |
| 조리 중 (밥솥) | 수증기 모락모락 |
| 조리 완성 | 반짝이는 별 이펙트 1~2개 |
| 탄 음식 | 검은 연기 이펙트 |
| 서빙 완료 | 하트 또는 별 1개 팝업 |
| 손님 퇴장 (화남) | 화남 이모티콘 팝업 + 빠른 퇴장 |
| 버튼 탭 | 스케일 0.95배 눌림 효과 |
| 이징 | ease-out 기반, 통통 튀는 느낌은 bounce |

