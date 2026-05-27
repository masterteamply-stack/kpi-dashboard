
UPDATE public.tasks
SET task_type = NULL, updated_at = NOW()
WHERE task_type IN ('분석', '제작', '실행', '기획', '기획/실행', '기획/제작', '전략기획', '콘텐츠제작', '보고', '기획및실행');

SELECT task_type, COUNT(*) as cnt
FROM public.tasks
GROUP BY task_type
ORDER BY cnt DESC;
