-- Align public.universities with the current Lead Push configuration export/import schema.
-- This migration is intentionally idempotent so existing production university configs
-- remain intact while newer JSON exports can be imported without "unknown column" errors.

alter table if exists public.universities
  add column if not exists api_timeout_seconds integer default 30,
  add column if not exists default_push_concurrency integer default 2,
  add column if not exists daily_lead_limit integer,
  add column if not exists daily_pushed_count integer default 0,
  add column if not exists daily_count_reset_at date default current_date,
  add column if not exists status text default 'live',
  add column if not exists is_active boolean default true,
  add column if not exists publisher_panel_url text,
  add column if not exists publisher_id text,
  add column if not exists auth_type text default 'secret_key',
  add column if not exists auth_header_key text default 'Authorization',
  add column if not exists auth_header_value text default '',
  add column if not exists payload_wrapper text default 'object',
  add column if not exists custom_headers jsonb default '{}'::jsonb,
  add column if not exists programs jsonb default '[]'::jsonb,
  add column if not exists state_cities jsonb default '[]'::jsonb,
  add column if not exists course_specializations jsonb default '[]'::jsonb,
  add column if not exists custom_columns jsonb default '[]'::jsonb,
  add column if not exists payload_fields jsonb default '[]'::jsonb,
  add column if not exists sample_csv_content text default '',
  add column if not exists slug text;

update public.universities
set
  api_timeout_seconds = coalesce(api_timeout_seconds, 30),
  default_push_concurrency = coalesce(default_push_concurrency, 2),
  daily_lead_limit = coalesce(daily_lead_limit, daily_limit),
  daily_pushed_count = coalesce(daily_pushed_count, 0),
  daily_count_reset_at = coalesce(daily_count_reset_at, current_date),
  status = coalesce(status, case when is_active = false then 'disabled' else 'live' end),
  is_active = coalesce(is_active, status is distinct from 'disabled'),
  auth_type = coalesce(auth_type, 'secret_key'),
  auth_header_key = coalesce(auth_header_key, 'Authorization'),
  auth_header_value = coalesce(auth_header_value, ''),
  payload_wrapper = coalesce(payload_wrapper, 'object'),
  custom_headers = coalesce(custom_headers, '{}'::jsonb),
  programs = coalesce(programs, '[]'::jsonb),
  state_cities = coalesce(state_cities, '[]'::jsonb),
  course_specializations = coalesce(course_specializations, '[]'::jsonb),
  custom_columns = coalesce(custom_columns, '[]'::jsonb),
  payload_fields = coalesce(payload_fields, '[]'::jsonb),
  sample_csv_content = coalesce(sample_csv_content, ''),
  slug = coalesce(
    nullif(slug, ''),
    lower(
      regexp_replace(
        regexp_replace(coalesce(name, id::text), '[^a-zA-Z0-9]+', '-', 'g'),
        '(^-|-$)',
        '',
        'g'
      )
    )
  );

create index if not exists idx_universities_slug on public.universities(slug);
create index if not exists idx_universities_status on public.universities(status);
