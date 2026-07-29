-- Restore the college official-source queue after the point-in-time rollback.
-- This migration does not rewrite any college content.

alter table public.colleges
  add column if not exists data_clean_method text;

alter table public.colleges
  add column if not exists official_source_clean_pass_count integer not null default 0;

alter table public.colleges
  add column if not exists official_source_cleaned_at timestamptz;

alter table public.colleges
  add column if not exists official_source_url text;

alter table public.colleges
  add column if not exists official_courses_verified boolean not null default false;

alter table public.colleges
  add column if not exists official_fees_verified boolean not null default false;

alter table public.colleges
  add column if not exists requires_official_source_refresh boolean not null default false;

alter table public.colleges
  add column if not exists data_clean_audit_note text;

update public.colleges
set
  data_clean_method = 'structural_template',
  requires_official_source_refresh = true,
  official_courses_verified = false,
  official_fees_verified = false,
  data_clean_audit_note = coalesce(
    data_clean_audit_note,
    'Structurally cleaned; queued for source-by-source official verification.'
  )
where coalesce(official_source_clean_pass_count, 0) = 0
  and coalesce(data_clean_method, '') <> 'official_source';

create index if not exists colleges_official_refresh_queue_idx
  on public.colleges(
    requires_official_source_refresh,
    official_source_clean_pass_count,
    priority desc,
    featured_rank
  );

notify pgrst, 'reload schema';
