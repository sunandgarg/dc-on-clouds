-- Batch 001 verified official content and degree families, not every branch or
-- specialisation. Keep these records in the official-source queue until their
-- complete campus catalogues have been mapped.
UPDATE public.colleges
SET
  official_courses_verified = false,
  requires_official_source_refresh = true,
  data_clean_state = 'official_partial',
  data_quality_score = LEAST(data_quality_score, 84),
  data_clean_audit_note = 'Official-source enrichment college-official-001; programme families verified, branch/specialisation catalogue pending; fees intentionally blank pending programme-specific official circular mapping.',
  updated_at = now()
WHERE slug IN ('iit-delhi', 'iit-bombay', 'iit-madras', 'aiims-delhi');

NOTIFY pgrst, 'reload schema';
