-- Make Lead Push automation operate on the current production project and
-- support generic lead-column matching in addition to the shortcut filters.

create extension if not exists pg_net;

alter table public.lp_automation_rules
  add column if not exists match_fields jsonb not null default '{}'::jsonb;

create index if not exists idx_lp_rules_match_fields_gin
  on public.lp_automation_rules using gin (match_fields);

create or replace function public.lp_dispatch_on_lead_insert()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
declare
  fn_url text;
begin
  fn_url := 'https://kozdctbbvrnyddlftmvf.supabase.co/functions/v1/lp-dispatch-lead';
  begin
    perform net.http_post(
      url := fn_url,
      headers := jsonb_build_object('Content-Type','application/json'),
      body := jsonb_build_object('lead_id', NEW.id)
    );
  exception when others then
    -- Lead capture must never fail because partner dispatch is down.
    null;
  end;
  return NEW;
end;
$$;

drop trigger if exists trg_lp_dispatch_on_lead_insert on public.leads;
create trigger trg_lp_dispatch_on_lead_insert
after insert on public.leads
for each row execute function public.lp_dispatch_on_lead_insert();
