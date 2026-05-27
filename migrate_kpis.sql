-- ── 1. kpis 테이블 컬럼 추가 마이그레이션 ──
ALTER TABLE public.kpis
  ADD COLUMN IF NOT EXISTS kpi_key        TEXT,
  ADD COLUMN IF NOT EXISTS statement      TEXT,
  ADD COLUMN IF NOT EXISTS owners         TEXT,
  ADD COLUMN IF NOT EXISTS progress_status TEXT,
  ADD COLUMN IF NOT EXISTS q1_target      NUMERIC,
  ADD COLUMN IF NOT EXISTS q2_target      NUMERIC,
  ADD COLUMN IF NOT EXISTS q3_target      NUMERIC,
  ADD COLUMN IF NOT EXISTS q4_target      NUMERIC,
  ADD COLUMN IF NOT EXISTS q1_result      TEXT,
  ADD COLUMN IF NOT EXISTS q2_result      TEXT,
  ADD COLUMN IF NOT EXISTS q3_result      TEXT,
  ADD COLUMN IF NOT EXISTS q4_result      TEXT,
  ADD COLUMN IF NOT EXISTS unit           TEXT,
  ADD COLUMN IF NOT EXISTS strategic_pillar TEXT,
  ADD COLUMN IF NOT EXISTS strategic_theme  TEXT;

-- ── 2. kpi_key 로 UPDATE (기존 title 매칭) ──
UPDATE public.kpis SET
  kpi_key          = 'B2D-01',
  statement        = '핵심고객 캠페인 기반 Pipeline 기여(전년 대비 오더 20% 증진)',
  owners           = '장우석',
  progress_status  = '진행 중',
  q1_target        = 0.0, q2_target = 40.0, q3_target = 80.0, q4_target = 100.0,
  q1_result        = '10개 고객사 선정 완료, 추가오더미션 수립 완료, 웰컴킷 제작완료 (선적에 맞춰 발송중)', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(달성도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 수요 창출 > 고객 참여 기반의 수요 전환'
WHERE title = 'SteerStar 리포지셔닝';

UPDATE public.kpis SET
  kpi_key          = 'B2D-02',
  statement        = '콘텐츠 기반 신규 구독자 수 상승(전년 대비 10% 이상 확보)',
  owners           = '이기환',
  progress_status  = '진행 중',
  q1_target        = 20.0, q2_target = 60.0, q3_target = 60.0, q4_target = 100.0,
  q1_result        = 'SteerStar 및 Incentive Trip 캠페인을 통해 약 20명 확보, 연간 KPI 대비 약 8% 달성. 향후 Customer Voice 프로젝트를 통해 카자흐스탄, 우즈베키스탄, 태국에서 콘텐츠 제작 및 본격 모객 예정. 

링크: https://docs.google.com/spreadsheets/d/1MTsw5OI0Q_XwTZ0OcezgWstqLXpM96CGbASpIyYaohg/edit?usp=sharing', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(달성도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 수요 창출 > 고객 참여 기반의 수요 전환'
WHERE title = '고객사 스토리 협업 콘텐츠 강화';

UPDATE public.kpis SET
  kpi_key          = 'B2D-03',
  statement        = 'Choice kit 적용 고객 수(전년 대비 오더 수량 20% 증가)',
  owners           = '송하영, 이기환, 이다혜, 장우석',
  progress_status  = '진행 중',
  q1_target        = 20.0, q2_target = 65.0, q3_target = 80.0, q4_target = 100.0,
  q1_result        = NULL, q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(달성도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 수요 창출 > 고객 참여 기반의 수요 전환'
WHERE title = 'Choice kit 확장 전개';

UPDATE public.kpis SET
  kpi_key          = 'B2D-04',
  statement        = '온/오프라인 활동 기반 리드 확보(전년 각 활동 대비 참석자 10% 이상 확보)',
  owners           = '송하영, 장우석',
  progress_status  = '진행 중',
  q1_target        = 100.0, q2_target = 3000.0, q3_target = 6896.0, q4_target = 7259.0,
  q1_result        = NULL, q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(달성도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 수요 창출 > 고객 참여 기반의 수요 전환'
WHERE title = 'O2O 마케팅 리드 연계';

UPDATE public.kpis SET
  kpi_key          = 'B2D-05',
  statement        = '패키지 세팅 배포율 100%',
  owners           = '송하영, 이기환, 이다혜, 장우석',
  progress_status  = '진행 중',
  q1_target        = 10.0, q2_target = 100.0, q3_target = NULL, q4_target = 8.0,
  q1_result        = NULL, q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(배포율)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 기회 확대 > 판매 가속화'
WHERE title = '신규시장 진입 마케팅 패키지 설계';

UPDATE public.kpis SET
  kpi_key          = 'B2D-06',
  statement        = '핵심고객 캠페인 기반 Pipeline 기여(전년 대비 오더 20% 증진)',
  owners           = '송현진, 이기환, 이다혜, 장우석',
  progress_status  = '진행 중',
  q1_target        = 10.0, q2_target = 40.0, q3_target = 80.0, q4_target = 100.0,
  q1_result        = NULL, q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(적용률)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 기회 확대 > 판매 가속화'
WHERE title = 'Value Proposition_New arrivals';

UPDATE public.kpis SET
  kpi_key          = 'B2D-07',
  statement        = '프로모션 전략 콘텐츠 생성률 100%',
  owners           = '이다혜',
  progress_status  = '진행 중',
  q1_target        = 10.0, q2_target = 75.0, q3_target = 95.0, q4_target = 100.0,
  q1_result        = '- 2분기 발주 예정인 Mirror Set/Folding Mat 패키징 제작 100% 달성
- 1분기 Valentine’s Day/Spring Deal/Easter Day 배너 제작 100% 달성
- Tire Pressure Gauge (신규기획상품) 디자인 파일 제작 완료', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(생성률)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '시장 기회 확대 > 판매 가속화'
WHERE title = 'Chago 프로모션 콘텐츠 강화';

UPDATE public.kpis SET
  kpi_key          = 'B2D-08',
  statement        = '권역별 리스크 자료 활용 건수(claim center 접수 대비 80% 대응)',
  owners           = '송현진, 이기환',
  progress_status  = '진행 중',
  q1_target        = 30.0, q2_target = 55.0, q3_target = 80.0, q4_target = 100.0,
  q1_result        = '총 14건 중 10건 대응 완료 하였고 남은 4건은 제작 예정입니다. 이를 위한 일정 조율 및 콘텐츠 기획중인 단계입니다. 관련하여 품질팀과 협업중에 있는 상태입니다. 금일 기준 달성률은 약 71.5%입니다.', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(대응률/활용도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '마케팅 효능감 > 데이터 기반 효율 강화'
WHERE title = '지역별 리스크 대응 자료 선제적 제공';

UPDATE public.kpis SET
  kpi_key          = 'B2D-09',
  statement        = '참여 고객사 수(총 고객사 대비 30% 사용률 확보)',
  owners           = '송현진',
  progress_status  = '진행 중',
  q1_target        = 10.0, q2_target = 30.0, q3_target = 80.0, q4_target = 100.0,
  q1_result        = '48, 연간 목표 대비 약 166% 달성', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(사용률/달성도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '마케팅 효능감 > 데이터 기반 효율 강화'
WHERE title = 'BizRewards 브랜딩 플랫폼으로 활용';

UPDATE public.kpis SET
  kpi_key          = 'B2D-10',
  statement        = 'Engagement 증가율(전년 대비 10% 상승)',
  owners           = '송현진',
  progress_status  = '진행 중',
  q1_target        = 22403833.0, q2_target = 54807667.0, q3_target = 97211500.0, q4_target = 142576866.0,
  q1_result        = '11,992,849 연간 목표 8% 달성', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(달성도)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '마케팅 효능감 > 데이터 기반 효율 강화'
WHERE title = '데이터 기반 콘텐츠 마케팅';

UPDATE public.kpis SET
  kpi_key          = 'B2D-12',
  statement        = '메시지 반영된 제안 지역별 100%',
  owners           = '송하영, 이기환, 이다혜, 장우석',
  progress_status  = '진행 중',
  q1_target        = 20.0, q2_target = 40.0, q3_target = 80.0, q4_target = 100.0,
  q1_result        = NULL, q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = '%(완성도/적용률)',
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '마케팅 효능감 > 데이터 기반 효율 강화'
WHERE title = '지역별 마케팅 메시지맵';

UPDATE public.kpis SET
  kpi_key          = 'B2D-11',
  statement        = '콘텐츠 Click 증가율(전년 대비 10% 상승)',
  owners           = '이기환',
  progress_status  = '진행 중',
  q1_target        = 845045.0, q2_target = 2090090.0, q3_target = 3135134.0, q4_target = 4180179.0,
  q1_result        = '1분기 약 400,000 클릭 달성, 연간 KPI 대비 약 10% 기록.
이는 전년도 KPI 대비 약 11%기록한 수치입니다.

초기 세팅 및 A/B 테스트를 통한 최적화 기반 확보, 2분기 본격적인 캠페인 운영을 통해 성과 확대 및 KPI 달성이 가능할 것으로 예상.

다만 전쟁 이슈로 인한 MENA 채널 미운영과 올해 콘텐츠 제작 건수 및 광고 예산 감소의 영향으로, 목표 달성이 매우 도전적일 것으로 예상됨.

링크: https://ctrcentral-my.sharepoint.com/:x:/g/personal/106209_ctr_co_kr/IQBLmf-VkLy_RLEqsjergUYnAY42mPj4fvKxv3hP_BB1FJ4?e=OwFHDe', q2_result = NULL, q3_result = NULL, q4_result = NULL,
  unit             = NULL,
  strategic_pillar = 'Brand to Demand',
  strategic_theme  = '마케팅 효능감 > 데이터 기반 효율 강화'
WHERE title = '소셜 광고 효율성 제고';
