-- Mark the already-cleaned college rows as structural/template cleanup.
--
-- Going forward, college cleanup must be official-source based:
-- - basic details from the official college page when available;
-- - courses from an official page/admission/brochure source;
-- - fees only when found from an authentic source, otherwise left blank.
--
-- This migration does not clean more colleges. It prevents the previous
-- structural batches from being mistaken for official course/fee cleanup.

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS data_clean_method text;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS official_source_clean_pass_count integer NOT NULL DEFAULT 0;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS official_source_cleaned_at timestamptz;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS official_source_url text;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS official_courses_verified boolean NOT NULL DEFAULT false;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS official_fees_verified boolean NOT NULL DEFAULT false;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS requires_official_source_refresh boolean NOT NULL DEFAULT false;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS data_clean_audit_note text;

COMMENT ON COLUMN public.colleges.data_clean_method IS
  'Last cleanup method. structural_template = generic structural cleanup; official_source = verified from official college/admission/brochure source.';

COMMENT ON COLUMN public.colleges.official_source_clean_pass_count IS
  'Number of cleanup passes completed using official college/admission/brochure sources.';

COMMENT ON COLUMN public.colleges.official_courses_verified IS
  'True only when courses were verified from an official source for this college.';

COMMENT ON COLUMN public.colleges.official_fees_verified IS
  'True only when fees were verified from an official/authentic source for this college.';

COMMENT ON COLUMN public.colleges.requires_official_source_refresh IS
  'True when the row has only structural/template cleanup and still needs official-source enrichment.';

UPDATE public.colleges
SET
  data_clean_method = coalesce(data_clean_method, 'structural_template'),
  requires_official_source_refresh = true,
  official_courses_verified = false,
  official_fees_verified = false,
  data_clean_audit_note = coalesce(
    data_clean_audit_note,
    'Marked on 2026-07-26: previously cleaned by structural/template batches only. Needs official-source pass before courses/fees are trusted.'
  )
WHERE coalesce(ai_clean_pass_count, 0) > 0
  AND coalesce(official_source_clean_pass_count, 0) = 0
  AND coalesce(data_clean_method, '') <> 'official_source';

CREATE INDEX IF NOT EXISTS colleges_official_source_refresh_idx
  ON public.colleges(requires_official_source_refresh, official_source_clean_pass_count, ai_clean_pass_count);
