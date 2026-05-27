-- 1. 컬럼 추가
ALTER TABLE public.owners
  ADD COLUMN IF NOT EXISTS teams_webhook_url TEXT,
  ADD COLUMN IF NOT EXISTS email TEXT;

-- 2. pg_net 활성화
CREATE EXTENSION IF NOT EXISTS pg_net;

-- 3. 트리거 함수
CREATE OR REPLACE FUNCTION public.notify_teams_mention()
RETURNS trigger LANGUAGE plpgsql AS $$
DECLARE
  mentioned_name  text;
  webhook_url     text;
  task_title      text;
  payload         jsonb;
  mention_matches text[];
  m               text;
BEGIN
  mention_matches := array(
    SELECT DISTINCT (regexp_matches(new.content, '@([^\s@,!?]+)', 'g'))[1]
  );
  SELECT title INTO task_title FROM public.tasks WHERE id = new.task_id;
  FOREACH m IN ARRAY mention_matches LOOP
    SELECT teams_webhook_url INTO webhook_url
    FROM public.owners WHERE name = m AND teams_webhook_url IS NOT NULL LIMIT 1;
    IF webhook_url IS NOT NULL THEN
      payload := jsonb_build_object(
        'type', 'message',
        'attachments', jsonb_build_array(jsonb_build_object(
          'contentType', 'application/vnd.microsoft.card.adaptive',
          'content', jsonb_build_object(
            '$schema', 'http://adaptivecards.io/schemas/adaptive-card.json',
            'type', 'AdaptiveCard', 'version', '1.4',
            'body', jsonb_build_array(
              jsonb_build_object('type','TextBlock','size','Medium','weight','Bolder','text','📌 KPI 대시보드 멘션 알림'),
              jsonb_build_object('type','FactSet','facts', jsonb_build_array(
                jsonb_build_object('title','태스크','value', COALESCE(task_title,'(제목 없음)')),
                jsonb_build_object('title','작성자','value', new.author_name),
                jsonb_build_object('title','내용','value', LEFT(new.content,200))
              ))
            ),
            'actions', jsonb_build_array(jsonb_build_object(
              'type','Action.OpenUrl','title','대시보드 열기',
              'url','https://masterteamply-stack.github.io/kpi-dashboard/'
            ))
          )
        ))
      );
      PERFORM net.http_post(
        url     := webhook_url,
        body    := payload,
        headers := '{"Content-Type":"application/json"}'::jsonb
      );
    END IF;
  END LOOP;
  RETURN new;
END;
$$;

-- 4. 트리거
DROP TRIGGER IF EXISTS on_comment_insert_notify_teams ON public.task_comments;
CREATE TRIGGER on_comment_insert_notify_teams
  AFTER INSERT ON public.task_comments
  FOR EACH ROW EXECUTE FUNCTION public.notify_teams_mention();

SELECT 'Migration complete ✓' as result,
       column_name FROM information_schema.columns
WHERE table_name='owners' AND column_name='teams_webhook_url';
