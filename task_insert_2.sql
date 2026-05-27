INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '리드 전환율 개선 액션', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '리드 전환율 개선 액션'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 성과 점검(65%)', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 성과 점검(65%)'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '상반기 행사 리드 수집 & 분석', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '상반기 행사 리드 수집 & 분석'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '전환 리드 품질 개선', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '전환 리드 품질 개선'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 85% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 85% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 행사 리드 수집', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q4 행사 리드 수집'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '세일즈 연계 최적화', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '세일즈 연계 최적화'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 리드 성과 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-04'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 리드 성과 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '신규시장 패키지 적용 현황 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-05'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '신규시장 패키지 적용 현황 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '패키지 개선(현지 피드백 반영)', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-05'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '패키지 개선(현지 피드백 반영)'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '배포 100%완료. 활용 리포트', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-05'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '배포 100%완료. 활용 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '성과 비교 분석', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-05'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '성과 비교 분석'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '추가 시장 검토', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-05'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '추가 시장 검토'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Value Prop 적용 현황 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', '커스텀 파츠와 센터 베어링은 모두 작성이 완료된 상태이며, 현재는 최종 검토만 남아 있습니다. 이후 커스텀 파츠 관련 패키지, 리플렛, 홍보자료도 이어서 마무리할 예정입니다.', '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Value Prop 적용 현황 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '보완 포인트 반영', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '보완 포인트 반영'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 적용률 40% 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 적용률 40% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '추가 적용 확대', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '추가 적용 확대'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '추가 제품 검토', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '추가 제품 검토'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 80% 진행 현황 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 80% 진행 현황 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 80% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 80% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 적용 확산', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q4 적용 확산'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '100% 적용 관리', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '100% 적용 관리'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 Value Prop 결과 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-06'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 Value Prop 결과 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 프로모션 성과 분석', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 프로모션 성과 분석'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '신규 기획 상품 디자인 패키지 기획', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '신규 기획 상품 디자인 패키지 기획'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 목표 75% 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 목표 75% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 프로모션 실행', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 프로모션 실행'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '상품 촬영, 누끼 촬영, 렌더링 제작', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '상품 촬영, 누끼 촬영, 렌더링 제작'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 95% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 95% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '기획상품 A+ 컨텐츠 제작', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '기획상품 A+ 컨텐츠 제작'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '브랜드스토어 등록', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '브랜드스토어 등록'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 프로모션 성과 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-07'
AND owners.name = '이다혜'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 프로모션 성과 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 리스크 자료 업데이트', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', '품질팀과 논의를 통해 총 23개의 품질 대응 완료 리스트를 전달받았고, 이 중 작년에 촬영한 메카닉 핸드북에 포함되지 않은 약 10건의 주제를 추가로 선별했습니다. 이후 설계팀, 개발팀과의 추가 미팅을 통해 해당 10건 중 실제 촬영이 가능한 주제를 검토하였고, 최종적으로 4개의 주제를 선정했습니다.

따라서 해당 4건에 대한 기획 및 촬영은 5월 중 시작하여, 2분기 내 대응 자료 제작을 완료할 수 있을 것으로 예상됩니다. 또한, 올해 중 추가로 품질 클레임 해결이 완료된 사례가 생길 경우, 수량에 따라 관련 콘텐츠 제작 여부를 추가로 논의할 예정입니다.', '제작', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 리스크 자료 업데이트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '활용률 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '활용률 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 대응률 55% 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 대응률 55% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 자료 보완', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '제작', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 자료 보완'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '현지 피드백 조사 반영', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '현지 피드백 조사 반영'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 70% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 70% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 자료 업데이트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '제작', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q4 자료 업데이트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '대응률 100% 관리', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '대응률 100% 관리'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 리스크 대응 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-08'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 리스크 대응 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 참여 고객 확대', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', 'https://ctrcentral-my.sharepoint.com/:f:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/10.%20POS/BizRewards?csf=1&web=1&e=Cb2OCa
가입 고객사 수: 50
기존 KPI를 약 170% 초과 달성함에 따라 ‘가입 고객사 중 40% 직접 활용’을 새로운 KPI로 재설정', '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 참여 고객 확대'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '온보딩/가이드 점검 개선', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', 'https://ctrcentral-my.sharepoint.com/:p:/r/personal/ctrfs17_ctr_co_kr/Documents/%EB%A7%88%EC%BC%80%ED%8C%85%ED%8C%80/10.%20POS/BizRewards/BizRewards%20%EB%9F%B0%EC%B9%AD%20%EC%BA%A0%ED%8E%98%EC%9D%B8%20%EC%84%B1%EA%B3%BC%20%EB%B3%B4%EA%B3%A0%EC%84%9C.pptx?d=w64bad8a1bb6e4a54871114c8ad78017e&csf=1&web=1&e=j3Cs4N', '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '온보딩/가이드 점검 개선'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 목표 30% 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 목표 30% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 참여 확대', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 참여 확대'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '참여율 개선 액션', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '참여율 개선 액션'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 60% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 60% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 확산 캠페인', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q4 확산 캠페인'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '100% 달성 관리', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '100% 달성 관리'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 운영 성과 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-09'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 운영 성과 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 성과 중간 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', '18,914,725', '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '콘텐츠 성과 중간 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '고효율 포맷 확장', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', '5월 수치 확인 중', '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '고효율 포맷 확장'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 목표 65% 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 목표 65% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '콘텐츠 최적화', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '콘텐츠 최적화'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '저성과 콘텐츠 개선', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '저성과 콘텐츠 개선'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 80% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 80% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 성과 극대화', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q4 성과 극대화'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '지표 안정화', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '지표 안정화'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 Engagement 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-10'
AND owners.name = '송현진'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 Engagement 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '광고/클릭 효율 중간 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', '4월 3주차 기준 약 415,621을 달성하였으며, 이는 연간 KPI 대비 약 10% 수준입니다.
2분기부터는 보다 공격적인 광고 집행과 세팅 최적화를 통해 달성률을 높일 예정입니다.
또한 1월부터 4월까지 CPC와 Link Click 모두 지속적으로 증가하는 추세를 보이고 있습니다.', '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '광고/클릭 효율 중간 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '고효율 조합 확대', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '고효율 조합 확대'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 목표 65% 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 목표 65% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 캠페인 최적화', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-07-01', '2026-07-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 캠페인 최적화'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-07-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '비효율 제거', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-08-01', '2026-08-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '비효율 제거'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-08-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q3 목표 80% 점검', kpis.id, owners.id, '2026-Q3', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-09-01', '2026-09-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q3 목표 80% 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-09-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q4 성과 증대', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-10-01', '2026-10-31', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q4 성과 증대'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-10-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '지표 안정화 작업', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-11-01', '2026-11-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '지표 안정화 작업'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-11-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '연간 광고 성과 리포트', kpis.id, owners.id, '2026-Q4', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-12-01', '2026-12-31', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-11'
AND owners.name = '이기환'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '연간 광고 성과 리포트'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-12-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '메시지 적용 현황 점검', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-04-01', '2026-04-30', NULL, '분석', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-12'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '메시지 적용 현황 점검'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-04-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT '보완 메시지 반영', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-05-01', '2026-05-31', NULL, '기획', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-12'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = '보완 메시지 반영'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-05-01','')
);

INSERT INTO public.tasks (title, kpi_id, owner_id, quarter, region, status, priority, progress, allocated_budget, spend, revenue, leads, started_at, due_date, notes, task_type, created_at, updated_at)
SELECT 'Q2 100% 적용 완료', kpis.id, owners.id, '2026-Q2', 'KR', 'todo', 'medium', 0, 0, 0, 0, 0, '2026-06-01', '2026-06-30', NULL, '실행', NOW(), NOW()
FROM public.kpis, public.owners
WHERE kpis.kpi_key = 'B2D-12'
AND owners.name = '장우석'
AND NOT EXISTS (
  SELECT 1 FROM public.tasks t2
  WHERE t2.title = 'Q2 100% 적용 완료'
  AND t2.kpi_id = kpis.id
  AND COALESCE(t2.started_at::text,'') = COALESCE('2026-06-01','')
);

SELECT COUNT(*) FROM public.tasks;