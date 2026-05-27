ALTER TABLE public.kpis
  ADD COLUMN IF NOT EXISTS budget_plan JSONB;
SELECT 'budget_plan column added' as result;
