-- ============================================================
-- @멘션 → Teams 알람 (pg_net + Supabase trigger)
-- ============================================================

-- 1. pg_net 확장 활성화
create extension if not exists pg_net;

-- 2. owners 테이블에 Teams 웹훅 URL 컬럼 추가
alter table public.owners
  add column if not exists teams_webhook_url text,
  add column if not exists email text;

-- 3. @멘션 파싱 + Teams 알람 함수
create or replace function public.notify_teams_mention()
returns trigger language plpgsql as $$
declare
  mentioned_name  text;
  webhook_url     text;
  task_title      text;
  payload         jsonb;
  mention_matches text[];
  m               text;
begin
  -- 댓글에서 @이름 패턴 추출
  mention_matches := array(
    select distinct (regexp_matches(new.content, '@([^\s@,!?]+)', 'g'))[1]
  );

  -- 태스크 제목 조회
  select title into task_title from public.tasks where id = new.task_id;

  -- 각 멘션 대상에게 알람 발송
  foreach m in array mention_matches loop
    -- owners 테이블에서 Teams 웹훅 URL 조회
    select teams_webhook_url into webhook_url
    from public.owners
    where name = m and teams_webhook_url is not null
    limit 1;

    if webhook_url is not null then
      -- Teams Adaptive Card 페이로드 구성
      payload := jsonb_build_object(
        'type', 'message',
        'attachments', jsonb_build_array(
          jsonb_build_object(
            'contentType', 'application/vnd.microsoft.card.adaptive',
            'content', jsonb_build_object(
              '$schema', 'http://adaptivecards.io/schemas/adaptive-card.json',
              'type', 'AdaptiveCard',
              'version', '1.4',
              'body', jsonb_build_array(
                jsonb_build_object(
                  'type', 'TextBlock',
                  'size', 'Medium',
                  'weight', 'Bolder',
                  'text', '📌 KPI 대시보드 멘션 알림'
                ),
                jsonb_build_object(
                  'type', 'FactSet',
                  'facts', jsonb_build_array(
                    jsonb_build_object('title', '태스크', 'value', coalesce(task_title, '(제목 없음)')),
                    jsonb_build_object('title', '작성자', 'value', new.author_name),
                    jsonb_build_object('title', '내용', 'value', left(new.content, 200))
                  )
                )
              ),
              'actions', jsonb_build_array(
                jsonb_build_object(
                  'type', 'Action.OpenUrl',
                  'title', '대시보드 열기',
                  'url', 'https://masterteamply-stack.github.io/kpi-dashboard/'
                )
              )
            )
          )
        )
      );

      -- pg_net으로 Teams 웹훅 POST
      perform net.http_post(
        url     := webhook_url,
        body    := payload,
        headers := '{"Content-Type": "application/json"}'::jsonb
      );
    end if;
  end loop;

  return new;
end;
$$;

-- 4. 댓글 INSERT 시 트리거
drop trigger if exists on_comment_insert_notify_teams on public.task_comments;
create trigger on_comment_insert_notify_teams
  after insert on public.task_comments
  for each row execute function public.notify_teams_mention();

-- 5. Teams 웹훅 URL 업데이트 (각 멤버 실제 URL로 교체)
-- ⚠️ 아래 URL을 실제 Teams 채널 Incoming Webhook URL로 변경하세요
update public.owners set teams_webhook_url = null; -- 초기화

-- 사용 예시 (실제 URL로 교체 후 실행):
-- update public.owners set teams_webhook_url = 'https://xxxx.webhook.office.com/webhookb2/...'
-- where name = '송하영';

