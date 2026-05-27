INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'SteerStar 리포지셔닝 전략/메시지 초안 확정',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-30', '완료', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'SteerStar 리포지셔닝 전략/메시지 초안 확정'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '모집 공고, 선정',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', NULL, '모집공고 배포, 25일까지 접수후 27일 선정예정', '기획/실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '모집 공고, 선정'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '활동 시작, 상반기 추가 오더미션 수립(with 영업)',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '추가오더미션은 모두 수립완료했고, SteerStar 웰컴킷도 모두 제작 완료하여 4~5월내 선적에 포함 혹은 직접 배송할 예정입니다.
지역별로 활동계획도 수집하는 중이며, 4월내로 모든 계획 수립완료하고 추적관리해서 활동이 누락되지않도록 관리하겠습니다.', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '활동 시작, 상반기 추가 오더미션 수립(with 영업)'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '협업 고객사 후보 리스트업 및 콘텐츠 KPI 기준선 정리',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-30', '2025-266/2026-293 https://docs.google.com/spreadsheets/d/1MTsw5OI0Q_XwTZ0OcezgWstqLXpM96CGbASpIyYaohg/edit?pli=1&gid=792997114#gid=792997114', '기획/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '협업 고객사 후보 리스트업 및 콘텐츠 KPI 기준선 정리'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 제작 1건 완료, 광고 집행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '4월부터 Customer Voice 건으로 고객사들에게 제안을 시작할 예정이며, 5월~6월 중 촬영을 진행하여 7~8월 내 콘텐츠 발행을 계획하고 있습니다. 

현재까지 내부 논의를 통해 Kazakhstan과 Thailand에서 각각 1개 고객사와 진행하는 방향으로 검토 중입니다. 

또한 SteerStar 활동을 통해 협업 콘텐츠 제작이 가능한 추가 건이 있을지에 대해서도 함께 검토하고 있습니다.

https://app.swit.io/share-route?route_type=project&route_variables=210331011104458ASRu%2C23120501322543T5QY23%2C24070900511173EBPRDH%2C', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 제작 1건 완료, 광고 집행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 기획, 콘텐츠 분기 성과 리포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '26년 3월18일 기준 고객사 협업 콘텐츠는 총 3개 발행 완료 하였으며, 4월초까지 관련 데이터 취합 후 업데이트할 예정.

2분기에는 커스터머 보이스 진행을 위하여 협의도 시작할 예정. 

https://docs.google.com/spreadsheets/d/1MTsw5OI0Q_XwTZ0OcezgWstqLXpM96CGbASpIyYaohg/edit?usp=sharing', '제작/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 기획, 콘텐츠 분기 성과 리포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Choice kit 타깃 지역 및 대상 활동 기획안 수립',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-30', 'https://app.swit.io/share-route?route_type=project&route_variables=210331011104458ASRu%2C2512150458270654KWNK%2C26012101211491TDVD2N%2C', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Choice kit 타깃 지역 및 대상 활동 기획안 수립'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '영업/마케팅 제안자료 제작 및 적용 가이드 배포',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '프로모션 설명자료 배포완료 (12개 고객사)', '제작', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '영업/마케팅 제안자료 제작 및 적용 가이드 배포'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '카달로그 준비',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', 'MENA 지역 이슈로 S.Abs 카탈로그는 완성후 배포, 중국차량 카탈로그 준비중 (데이터 확인중)', '실행/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '카달로그 준비'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Material 및 패키지 배포 개시 및 적용 결과 수집',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', 'CIS 타겟 차종 확정 및 Materials, Content 기획, Asian 타겟 차종용 카달로그 제작 완료', '실행/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Material 및 패키지 배포 개시 및 적용 결과 수집'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 전시/리드 정의/수집 프로세스 합의',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-04' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-30', 'SteerStar 대상 2000개 리드 수집 목표 세팅', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '연간 전시/리드 정의/수집 프로세스 합의'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-04' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '리드 정의/수집 프로세스 합의',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-04' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-30', '8', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '리드 정의/수집 프로세스 합의'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-04' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'SteerStar 향 리드 수집 계획 협의 및 합의',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-04' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', 'SteerStar 메인 미션을 리드 수집으로 세팅하여 고객들의 오프라인 활동 확산 계획. 상세 활동 일정은 선정 이후 세팅.', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'SteerStar 향 리드 수집 계획 협의 및 합의'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-04' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '테크세미나 일정 계획 공유 요청, 수급',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-04' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '온, 오프라인 세미나, 고객 행사, 전시 관련 리드 수립 목표 확정', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '테크세미나 일정 계획 공유 요청, 수급'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-04' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q1 행사 리드 수집 및 전환 가능 리드 분류/공유',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-04' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', 'SteerStar 오프라인 활동 시작 후 집계 예정입니다.', '실행/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Q1 행사 리드 수집 및 전환 가능 리드 분류/공유'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-04' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '메시지맵 1차 완성(검토/보완 포함)',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-05' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '아프리카 시장 대상 준비 (젠터파츠 협의 후 타겟시점 수립예정)', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '메시지맵 1차 완성(검토/보완 포함)'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-05' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '패키지 1차 배포 및 현지 적용 준비',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-05' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이다혜'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '• 멕시코 프로모션 고객 안내 e-dm 제작하여 배포, 프로모션 경품 구매중 (법인카드 한도 증액중)
  • Lordco 회사소개서 3/25까지 배포 예정', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '패키지 1차 배포 및 현지 적용 준비'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-05' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'New arrivals 대상 품목 확정 및 기존 Value Prop 정리_이기환',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-02-01', 'center bearing 자료 수급. 정리, 샘플 촬영 완료.', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'New arrivals 대상 품목 확정 및 기존 Value Prop 정리_이기환'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'New arrivals 대상 품목 확정 및 기존 Value Prop 정리_장우석',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-02-01', 'Custom parts sample 수급 완료. 이외 타 제품군 자료 요청 완료', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'New arrivals 대상 품목 확정 및 기존 Value Prop 정리_장우석'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'New arrivals 대상 품목 확정 및 기존 Value Prop 정리_이다혜',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이다혜'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-30', '개발팀 추가 자료 수급 완료.', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'New arrivals 대상 품목 확정 및 기존 Value Prop 정리_이다혜'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Center Bearing 기획, 바이럴 자료 제작',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '제품 관련 자료가 부족하여 제품 홍보자료 제작에 필요한 추가 자료를 정리해 개발 담당자님께 요청드린 상태이며, 개발팀 담당자님께서 아웃소싱하는 업체에게 이에 대한 내용을 요청한 상태입니다. 
https://app.swit.io/share-route?route_type=project&route_variables=210331011104458ASRu%2C2512150458270654KWNK%2C25111004593855410CW9%2C', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Center Bearing 기획, 바이럴 자료 제작'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'B/D 개별 자료 기획, 캠페인 기획',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', 'https://app.swit.io/share-route?route_type=project&route_variables=210331011104458ASRu%2C2512150458270654KWNK%2C25111008033196H2DORO%2C', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'B/D 개별 자료 기획, 캠페인 기획'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'custom parts (tie rod) 관련 기획 및 팔로업 일정 수립',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', 'https://app.swit.io/share-route?route_type=project&route_variables=210331011104458ASRu%2C2512150458270654KWNK%2C26010506280921ONYMLF%2C
신규고객 대상 영업활동을 위한 홍보전략 수립', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'custom parts (tie rod) 관련 기획 및 팔로업 일정 수립'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'S/A 개별 자료 기획, 제작 완료.',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이다혜'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', 'https://ctrcentral-my.sharepoint.com/:p:/r/personal/ctrfs17_ctr_co_kr/_layouts/15/Doc.aspx?sourcedoc=%7BA3CDE49C-4D54-4E3D-97AE-3B52D6446E9D%7D&file=GOLD%20%EC%8B%9C%ED%97%98%EC%9E%90%EB%A3%8C%20%EC%A0%95%EB%A6%AC.pptx&action=edit&mobileredirect=true, https://ctrcentral-my.sharepoint.com/:x:/g/personal/ctrfs17_ctr_co_kr/IQB94XUU7lmOSacWmgyeHiqUAf1gCO8BLDO4AgH07KKzjEA?e=uBbDOb&nav=MTVfezAwMDAwMDAwLTAwMDEtMDAwMC0wMDAwLTAwMDAwMDAwMDAwMH0', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'S/A 개별 자료 기획, 제작 완료.'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '세일즈킷/콘텐츠 적용 반영 및 피드백 반영',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-06' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '커스텀 파츠(Custom Parts)는 PPT 제작 및 상세페이지 제작을 완료하여 홈페이지에 게시한 상태입니다.
추가로 현재는 제품 라인 명칭, 패키지 디자인, 로고 개발, 브랜딩 작업을 기반으로 한 PPT 소개자료 제작을 진행 중이며, 3월 내 1차 완료를 목표로 하고 있습니다.

센터 베어링(Center Bearing)은 홍보자료 제작을 위해 필요한 추가 자료를 담당자님께 요청드린 후 현재 공유 대기 중이며, 4월 중 작업 착수가 가능할 것으로 예상됩니다. 개발 담당자님이 협업사측에 관련 문의를 드린 것 까지 확인 완료.', '제작/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '세일즈킷/콘텐츠 적용 반영 및 피드백 반영'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-06' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '1월 리스트 대응 & 2월 접수안 계획 세팅',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-08' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '프로젝트 관련하여 품질팀과 미팅을 진행했으며, 현재 콘텐츠 제작을 위한 주제들을 리스트업하는 중입니다. 

3월 중으로 관련 주제 취합이 완료될 예정이며, 4월부터 콘텐츠 제작 관련 미팅을 진행하여 2분기 내 관련 대응 자료 제작이 가능할 것으로 예상됩니다.

https://ctrcentral-my.sharepoint.com/:x:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/09.%20%EC%BD%98%ED%85%90%EC%B8%A0/2026%20Customer%20Claim%20List_Marcomm.xlsx?d=wd0aad8b38d8848b493c0857489768c07&csf=1&web=1&e=fCdpDm', '제작', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '1월 리스트 대응 & 2월 접수안 계획 세팅'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-08' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '2월 리스트 대응 & 3월 사례  대응안 세팅',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-08' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '품질팀과 관련하여 1차적으로 미팅 진행하였으며, 4월중으로 협업 콘텐츠 제작을 위한 미팅을 추가로 진행할 예정. 

올해 1~2월 고객사로부터 접수된 클레임은 현재 대부분 검토 단계에 있으며, 아직 명확한 원인 분석 및 해결 방안이 도출된 건은 없는 상황입니다.
그래서 1분기 발생 클레임은 3~4분기 중 원인 및 해결 방안이 확정되는 대로, 품질팀과 협업하여 순차적으로 대응 자료를 제작할 예정입니다.

따라서 1분디~2분기에는 작년 접수된 클레임 중 이미 해결이 완료된 건을 우선 검토하고, 이 중 제조사 책임이 아닌 사례를 선별하여 대응 자료로 활용하는 방향에 대해 논의하였습니다. 
현재 품질팀에서 2025년 클레임 건들을 검토 중이며, 3월 중 관련 리스트를 전달받기로 협의된 상태입니다.

https://ctrcentral-my.sharepoint.com/:x:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/09.%20%EC%BD%98%ED%85%90%EC%B8%A0/2026%20Customer%20Claim%20List_Marcomm.xlsx?d=wd0aad8b38d8848b493c0857489768c07&csf=1&web=1&e=0SYAn3', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '2월 리스트 대응 & 3월 사례  대응안 세팅'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-08' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'BizRewards 사용 현황/고객 기준선 및 목표 정의',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-09' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-31', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'BizRewards 사용 현황/고객 기준선 및 목표 정의'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-09' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '플랫폼 점검, 베타 테스트, 세금, 특별한 제품에 대한 물류 관련 이슈 검토, 통신 판매업 신고 완료',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-09' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', 'https://app.swit.io/share-route?route_type=project&route_variables=210331011104458ASRu%2C2512150458270654KWNK%2C26010200104662KN2UQ0%2C', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '플랫폼 점검, 베타 테스트, 세금, 특별한 제품에 대한 물류 관련 이슈 검토, 통신 판매업 신고 완료'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-09' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '캠페인 론칭 및 참여 고객사 1차 확보',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-09' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', 'https://ctrcentral-my.sharepoint.com/:f:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/10.%20POS/BizRewards?csf=1&web=1&e=ggIlki
BizRewards 가입 고객사 수: 40, 실제 주문 수:2
웰컴 이벤트, Steerstar 1차 모객 크레딧 제공 이벤트 진행', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '캠페인 론칭 및 참여 고객사 1차 확보'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-09' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Engagement 기준선 산출 및 리포트 템플릿 확정',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-10' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-31', '4,381,186', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Engagement 기준선 산출 및 리포트 템플릿 확정'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-10' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 개선안 적용 및 테스트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-10' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '10,066,956', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 개선안 적용 및 테스트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-10' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '성과 비교 분석 및 다음 분기 개선안 정리',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-10' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송현진'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '16,195,660
특정 국가 및 고객사 대상 컨텐츠 신규 광고 집행 방식 도입
LinkedIn, WhatsApp 채널 광고 소액 집행 (효율 검증 진행 중)
Facebook, Instagram 다크애드(비게시형 고객 데이터 기반 정밀 타겟팅) 집행', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '성과 비교 분석 및 다음 분기 개선안 정리'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-10' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '클릭 기준선/비효율 캠페인 식별',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-11' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-31', '26년 1월 월간 수치: 97,004
 (링크: https://ctrcentral-my.sharepoint.com/:x:/g/personal/ctrfs17_ctr_co_kr/IQCBh3-yfnljS7rp8Wk4pDMsAcTqtSMZdh1dGTvakfKLe4c?e=Xj8OdO)', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '클릭 기준선/비효율 캠페인 식별'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-11' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '소재/타깃/랜딩 A/B 테스트 설계 및 1차 실행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-11' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', '2월 달성 수치: 105,568 
2026년 누적 수치:  237,566

링크: https://ctrcentral-my.sharepoint.com/:x:/g/personal/106209_ctr_co_kr/IQBLmf-VkLy_RLEqsjergUYnAY42mPj4fvKxv3hP_BB1FJ4?e=gVxNMe

3월부터는 본격적으로 ‘클릭’ 광고에 비용을 투자하여 수치를 안정화할 예정입니다.
1~2월은 클릭 광고의 효율을 확인하기 위한 테스트 단계로, 비용을 제한적으로 집행했습니다.

테스트를 먼저 진행한 이유는 기존에 링크 클릭 목적의 광고를 집행한 이력이 없어 효율 측정이 필요했기 때문이며, Engagement 등 다른 KPI 달성을 위한 예산도 함께 고려하여 운영해야 했기 때문입니다.', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '소재/타깃/랜딩 A/B 테스트 설계 및 1차 실행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-11' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '클릭 증가율 점검 및 고효율 조합 표준화',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-11' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '4월초에 업데이트 예정', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '클릭 증가율 점검 및 고효율 조합 표준화'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-11' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '메시지맵 구조 확정 및 이해',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-12' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-01-01', '2026-01-31', 'https://ctrcentral-my.sharepoint.com/:f:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/09.%20%EC%BD%98%ED%85%90%EC%B8%A0?csf=1&web=1&e=dhVlGr&nav=MTVfezE2NkYyQ0YzLTc0QzMtNDAwMS1BRTU2LTVENTM2QUQ2RjZBOH0', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '메시지맵 구조 확정 및 이해'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-12' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-01-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '권역별 메시지맵 1차 완성(검토/보완 포함)',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-12' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-02-01', '2026-02-28', 'Phaeton 설문조사 기반 시장 주요 시사점 내부 공유 완료', '제작', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '권역별 메시지맵 1차 완성(검토/보완 포함)'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-12' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-02-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '권역별 메시지맵 1차 완성(검토/보완 포함)',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-12' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', '-', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '권역별 메시지맵 1차 완성(검토/보완 포함)'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-12' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '바이럴툴 적용/제작물 반영 및 적용 제안서 배포',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-12' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q1', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-03-01', '2026-03-31', 'CIS 타겟 품목 시장 타당성 서베이 기획', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '바이럴툴 적용/제작물 반영 및 적용 제안서 배포'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-12' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-03-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '고객 미션, 행사 집행 계획 취합',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-04-01', '2026-04-03', NULL, '기획/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '고객 미션, 행사 집행 계획 취합'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '프로모션 집행, 현지 브랜딩 활동 독려',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-05-01', NULL, 'SteerStar 브랜딩 활동 실시
(태국)Seri - Seri expo 에서 CTR 브랜딩활동 실시 완료
그 외 오더미션 진행 현황 업데이트 하였습니다. CIS는 영업팀 복귀후에 다시 협의하여 하반기에 진행할 수 있도록 독려할 예정입니다.
 https://ctrcentral-my.sharepoint.com/:x:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/16.%20SteerStar%20ambassador/2026/SteerStar%202026%20management.xlsx?d=w4865b7df93a743fb8b0015fcc72017bf&csf=1&web=1&e=wZ0QsT', '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '프로모션 집행, 현지 브랜딩 활동 독려'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '상반기 추가오더미션 종료 및 리워드지급',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-06-01', '2026-06-30', NULL, '평가', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '상반기 추가오더미션 종료 및 리워드지급'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '활동 독려 서포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-07-01', NULL, NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '활동 독려 서포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '활동 독려 서포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-08-01', NULL, NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '활동 독려 서포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '활동 독려 서포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-09-01', NULL, NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '활동 독려 서포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '활동 종료',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-10-01', '2026-10-30', NULL, '실행/분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '활동 종료'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '평가, 리워드 지급',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-11-01', '2026-11-20', NULL, '평가', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '평가, 리워드 지급'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 성과 리포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-01' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-12-01', '2026-11-27', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '연간 성과 리포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-01' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 제작, 광고 집행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-04-01', '2026-04-30', '태국은 SERI와 함께 촬영을 진행하기로 했고, 고객사와의 협의도 모두 완료되었습니다. 프로젝트 소개 이후 참여 의사에 대해서도 긍정적인 답변을 받은 상태이며, 현재는 촬영 업체를 선정하고 일정을 조율하고 있습니다.

추가로 CIS 지역은 촬영 일정이 미뤄지면서, 미얀마에서 PTG와 함께 진행이 가능한지 여부를 확인하고 있는 상황입니다.', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 제작, 광고 집행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 제작, 광고 집행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-05-01', '2026-05-31', NULL, '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 제작, 광고 집행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 상반기 성과 분석 리포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-06-01', '2026-06-30', NULL, '제작', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 상반기 성과 분석 리포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 제작, 광고 집행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 제작, 광고 집행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 제작, 광고 집행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-08-01', '2026-08-31', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 제작, 광고 집행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '분기 성과 분석, 구독자 증가율 점검(Q3 80%), 광고 전략 세팅',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '분기 성과 분석, 구독자 증가율 점검(Q3 80%), 광고 전략 세팅'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '추가 고객사 발굴, 기획, 부스팅 광고 세팅',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-10-01', '2026-10-31', NULL, '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '추가 고객사 발굴, 기획, 부스팅 광고 세팅'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Best Case 정리',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-11-01', '2026-11-30', NULL, '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Best Case 정리'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 콘텐츠 성과 리포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-02' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '이기환'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '연간 콘텐츠 성과 리포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-02' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 기획, 제작',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-04-01', '2026-04-30', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '콘텐츠 기획, 제작'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Material 및 패키지 배포',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-04-01', '2026-04-30', 'Asian 차종 카달로그 배포 완료', '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Material 및 패키지 배포'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '현지 도착 오더 맞춰 콘텐츠 현지 온, 오프라인 채널 배포',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-05-01', '2026-05-31', '중동사태로 상반기 오더가 미진하여 하반기에 시장 회복을 예상한 추가 오더 촉진 프로모션을 새로 기획중입니다.', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '현지 도착 오더 맞춰 콘텐츠 현지 온, 오프라인 채널 배포'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Choice Kit 대상 차종 콘텐츠 및 광고 집행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-05-01', '2026-05-31', 'European 차종 카달로그 배포 완료', '기획', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Choice Kit 대상 차종 콘텐츠 및 광고 집행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '적용 고객 확대(Q2 100%)',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-06-01', '2026-06-30', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '적용 고객 확대(Q2 100%)'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Sales & MKT 해외 출장 연계 오프라인 행사 기획',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-06-01', '2026-06-30', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Sales & MKT 해외 출장 연계 오프라인 행사 기획'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '결과보고, 후속 기획 논의',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '결과보고, 후속 기획 논의'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '케이스 스터디 컨텐츠 고객사 및 SNS 배포 진행',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '케이스 스터디 컨텐츠 고객사 및 SNS 배포 진행'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '프로모션 활동 콘텐츠화',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-08-01', '2026-08-31', NULL, '제작', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '프로모션 활동 콘텐츠화'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 80% 점검',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Q3 목표 80% 점검'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '미적용 고객 대응, 독려',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-10-01', '2026-10-31', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '미적용 고객 대응, 독려'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 100% 달성 관리',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-11-01', '2026-11-30', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Q4 100% 달성 관리'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 리포트',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-03' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '송하영'  LIMIT 1),
  '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = '연간 리포트'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-03' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 전시/세미나 리드 수집',
  (SELECT id FROM public.kpis   WHERE kpi_key = 'B2D-04' LIMIT 1),
  (SELECT id FROM public.owners WHERE name    = '장우석'  LIMIT 1),
  '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0,
  '2026-04-01', '2026-04-30', NULL, '실행', NOW(), NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM public.tasks t
  WHERE t.title   = 'Q2 전시/세미나 리드 수집'
  AND   t.kpi_id  = (SELECT id FROM public.kpis WHERE kpi_key = 'B2D-04' LIMIT 1)
  AND   COALESCE(t.started_at::text,'') = COALESCE('2026-04-01','')
);

SELECT COUNT(*) as total_tasks FROM public.tasks;