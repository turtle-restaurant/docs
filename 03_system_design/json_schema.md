# 핵심 데이터 JSON 설계

> 문서: json_schema.md
> 버전: v1.0
> 작성: ciny + Claude (오케스트레이터)
> 작성일: 2026-05-25

---

## 개요

메인게임 로직이 참조하는 핵심 데이터 파일 3종의 구조 정의.
모든 파일은 Godot 프로젝트의 `data/` 디렉토리에 위치.

| 파일 | 경로 | 역할 |
|------|------|------|
| recipes.json | `data/recipes.json` | 조리 로직 전체 (재료→음식 매핑, 조리 시간, 판매가) |
| customers.json | `data/customers.json` | 손님 유형 정의 (일반/에피소드, 인내심, 골드 배율) |
| episodes.json | `data/episodes.json` | 에피소드 진행 데이터 (방문 날짜, 대사, 완료 보상) |

> `null` 값: GDD에서 미확정된 항목. 수치 확정 시 업데이트.
> `status: "placeholder"`: 대사 스크립트 미작성 항목.

---

## 1. recipes.json

### 구조

| 필드 | 타입 | 설명 |
|------|------|------|
| id | string | 레시피 고유 ID |
| name_ko | string | 한국어 이름 |
| category | string | `rice` / `main_dish` / `soup` / `side_dish` |
| cookware | string | 사용 조리기구 ID |
| ingredient | string | 투입 재료 ID |
| cook_time_sec | object / null | 단계별 조리 시간(초). 서브반찬은 null (즉시 완성) |
| servings_per_cook | int | 1회 조리 시 생성 인분 수 |
| burn_grace_sec | int / null | 조리 완료 후 탄 음식까지 유예 시간(초). 서브반찬은 null |
| price | int | 기본 판매가 (골드) |
| asset_id | string | 스프라이트 에셋 참조 ID |

### cookware ID 목록

| cookware ID | 조리기구 |
|-------------|---------|
| rice_cooker | 밥솥 |
| frying_pan | 프라이팬 |
| pot | 냄비 |
| banchan_box | 반찬통 |

### 레시피 목록 요약

| id | name_ko | category | ingredient | price |
|----|---------|----------|------------|-------|
| steamed_rice | 쌀밥 | rice | white_rice | 200G |
| multigrain_rice | 잡곡밥 | rice | multigrain | 250G |
| bulgogi | 불고기 | main_dish | beef | 500G |
| grilled_fish | 생선구이 | main_dish | fish | 450G |
| dak_galbi | 닭갈비 | main_dish | seasoned_chicken | 480G |
| kimchi_jjigae | 김치찌개 | soup | kimchi | 350G |
| miyeok_guk | 미역국 | soup | seaweed | 300G |
| kongnamul_guk | 콩나물국 | soup | bean_sprout | 280G |
| baechu_kimchi | 배추김치 | side_dish | baechu_kimchi_raw | 100G |
| ssam_veggies | 쌈채소 | side_dish | ssam_veggies_raw | 100G |

---

## 2. customers.json

### 구조 — 공통

| 필드 | 타입 | 설명 |
|------|------|------|
| id | string | 손님 고유 ID |
| name_ko | string | 한국어 이름 |
| animal | string | 동물 종류 |
| type | string | `regular` / `episode` |
| patience_sec | object | 세션/시기별 인내심 타이머(초) |
| gold_multiplier | float | 골드 배율 (일반 1.0 / 에피소드 1.5~2.0) |
| asset_id | string | 스프라이트 에셋 참조 ID |

### 구조 — 에피소드 손님 추가 필드

| 필드 | 타입 | 설명 |
|------|------|------|
| episode_id | string | 연결된 에피소드 ID |
| visit_days | array / null | 에피소드 방문 날짜 목록 |
| episode_end_day | int / null | 에피소드 종료 날짜 |
| unlock_condition | object | 해금 조건 (min_day, required_cookware) |
| drop_item | string / null | 특수 업그레이드용 드롭 아이템 ID |

### patience_sec 기준 (GDD_level.md)

| 세션 키 | 적용 조건 | 수치 |
|--------|----------|------|
| lunch_early | 일반 손님, Day 1~3 점심 | 20초 |
| lunch_late | 일반 손님, Day 5+ 점심 | 16초 |
| dinner_early | 일반 손님, Day 1~3 저녁 | 16초 |
| dinner_late | 일반 손님, Day 5+ 저녁 | 13초 |
| lunch | 에피소드 손님 점심 공통 | 25초 |
| dinner | 에피소드 손님 저녁 공통 | 20초 |

---

## 3. episodes.json

### 구조

| 필드 | 타입 | 설명 |
|------|------|------|
| id | string | 에피소드 고유 ID |
| customer_id | string | 연결된 손님 ID |
| name_ko | string | 에피소드 이름 |
| keyword | string / null | 에피소드 키워드/테마 |
| total_steps | int / null | 총 회차 수 |
| completion_reward | object | 완료 보상 (type, item_id, description) |
| steps | array / null | 회차별 데이터 (visit_day, dialogue, status) |

### steps 내부 구조

| 필드 | 타입 | 설명 |
|------|------|------|
| step | int | 회차 번호 |
| visit_day | int | 해당 회차 방문 날짜 |
| dialogue | object / null | 대사 데이터 (미작성 시 null) |
| status | string | `placeholder` / `draft` / `final` |

### completion_reward type 목록

| type | 설명 |
|------|------|
| interior_item | 방문률 상승 인테리어 아이템 |
| cookware_unlock | 특수 업그레이드 해금 조건 아이템 |

### 현재 작성 상태

| episode_id | 손님 | 키워드 | steps 상태 |
|------------|------|--------|-----------|
| ep_tiger | 호랑님 | 독립 후 첫 출발 (사회초년생) | placeholder (4회차) |
| ep_rabbit | 솜이 | 미확정 | null |
| ep_fox | 코코 | 미확정 | null |
| ep_bear | 베어 | 미확정 | null |
| ep_raccoon | 타누키 | 미확정 | null |
| ep_panda | 판판 | 미확정 | null |

---

## 향후 업데이트 예정

- 호랑님 에피소드 대사 스크립트 작성 후 `steps[].dialogue` 채우기
- 에피소드 손님 5종 visit_days 확정 시 customers.json 업데이트
- 드롭 아이템 ID 확정 시 반영 (현재 null 항목)
- 메뉴 변경 시스템 추가 시 recipes.json에 `unlock_condition` 필드 추가 예정
