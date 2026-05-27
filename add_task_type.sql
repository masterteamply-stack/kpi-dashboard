-- task_type 컬럼 추가
ALTER TABLE public.tasks
  ADD COLUMN IF NOT EXISTS task_type TEXT,
  ADD COLUMN IF NOT EXISTS region TEXT NOT NULL DEFAULT 'KR';

-- 기존 데이터 기본값 설정 (Task Target에서 추론)
-- 수동으로 나중에 세팅 가능
SELECT 'task_type column added' as result;
