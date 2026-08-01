-- Track every previously cleaned college against the requested editorial standard.
-- This does not manufacture missing facts. It records what must still be sourced.

BEGIN;

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS editorial_target_word_min integer NOT NULL DEFAULT 6000,
  ADD COLUMN IF NOT EXISTS editorial_target_word_max integer NOT NULL DEFAULT 9000,
  ADD COLUMN IF NOT EXISTS editorial_human_reviewed boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS editorial_readiness_failures text[] NOT NULL DEFAULT ARRAY[]::text[],
  ADD COLUMN IF NOT EXISTS editorial_last_evidence_check_at timestamptz;

COMMENT ON COLUMN public.colleges.editorial_human_reviewed IS
  'True only after a person checks source fidelity, specificity, readability and unsupported claims.';
COMMENT ON COLUMN public.colleges.editorial_readiness_failures IS
  'Machine-readable reasons why a college profile is not editorially ready.';

-- Enforce the user's evidence policy before calculating readiness. Preserve
-- fees only when a record explicitly carries official fee verification.
UPDATE public.colleges c
SET fees = ''
WHERE c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source')
  AND NOT COALESCE(c.official_fees_verified, false)
  AND trim(COALESCE(c.fees, '')) <> '';

DELETE FROM public.course_fees cf
USING public.colleges c
WHERE c.slug = cf.college_slug
  AND c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source')
  AND NOT COALESCE(c.official_fees_verified, false);

UPDATE public.colleges c
SET course_fee_content = 'Check the official college website for current courses and fees.'
WHERE c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source')
  AND NOT COALESCE(c.official_courses_verified, false)
  AND COALESCE(array_length(c.related_courses, 1), 0) = 0;

UPDATE public.colleges c
SET
  editorial_target_word_min = 6000,
  editorial_target_word_max = 9000,
  editorial_last_evidence_check_at = now(),
  editorial_readiness_failures = array_remove(ARRAY[
    CASE WHEN COALESCE(c.editorial_word_count, 0) < 6000 THEN 'content_below_6000_words' END,
    CASE WHEN COALESCE(c.editorial_word_count, 0) > 9000 THEN 'content_above_9000_words' END,
    CASE WHEN COALESCE(c.editorial_module_count, 0) < 14 THEN 'fewer_than_14_editorial_modules' END,
    CASE WHEN COALESCE(c.official_source_url, '') = '' THEN 'official_source_research_pending' END,
    CASE
      WHEN NOT COALESCE(c.official_courses_verified, false)
       AND NOT (
         COALESCE(array_length(c.related_courses, 1), 0) = 0
         AND trim(COALESCE(c.course_fee_content, '')) = 'Check the official college website for current courses and fees.'
       )
      THEN 'course_policy_review_required'
    END,
    CASE
      WHEN NOT COALESCE(c.official_fees_verified, false)
       AND (
         trim(COALESCE(c.fees, '')) <> ''
         OR EXISTS (SELECT 1 FROM public.course_fees cf WHERE cf.college_slug = c.slug)
       )
      THEN 'unverified_fee_review_required'
    END,
    CASE
      WHEN COALESCE(array_length(c.related_courses, 1), 0)
         + COALESCE(array_length(c.related_exams, 1), 0) = 0
      THEN 'record_level_internal_links_pending'
    END,
    CASE WHEN NOT COALESCE(c.editorial_human_reviewed, false) THEN 'human_editor_review_pending' END
  ]::text[], NULL),
  editorial_audit_state = 'source_research_and_expansion_pending',
  requires_official_source_refresh = true,
  editorial_audit_note = 'Not editorially complete. Missing requirements are recorded in editorial_readiness_failures; unsupported facts must remain blank.'
WHERE c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source');

CREATE TABLE IF NOT EXISTS public.college_editorial_completion_queue (
  college_slug text PRIMARY KEY,
  college_name text NOT NULL,
  priority integer NOT NULL DEFAULT 50,
  status text NOT NULL DEFAULT 'pending',
  source_status text NOT NULL DEFAULT 'unresolved',
  course_status text NOT NULL DEFAULT 'pending',
  fee_status text NOT NULL DEFAULT 'pending',
  word_count integer NOT NULL DEFAULT 0,
  module_count integer NOT NULL DEFAULT 0,
  faq_count integer NOT NULL DEFAULT 0,
  faculty_count integer NOT NULL DEFAULT 0,
  approved_review_count integer NOT NULL DEFAULT 0,
  placement_record_count integer NOT NULL DEFAULT 0,
  has_contact boolean NOT NULL DEFAULT false,
  internal_entity_link_count integer NOT NULL DEFAULT 0,
  missing_requirements text[] NOT NULL DEFAULT ARRAY[]::text[],
  last_audited_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.college_editorial_completion_queue ENABLE ROW LEVEL SECURITY;

INSERT INTO public.college_editorial_completion_queue (
  college_slug,
  college_name,
  priority,
  status,
  source_status,
  course_status,
  fee_status,
  word_count,
  module_count,
  faq_count,
  faculty_count,
  approved_review_count,
  placement_record_count,
  has_contact,
  internal_entity_link_count,
  missing_requirements,
  last_audited_at,
  updated_at
)
SELECT
  c.slug,
  c.name,
  CASE
    WHEN COALESCE(c.official_source_url, '') <> '' AND COALESCE(c.official_courses_verified, false) THEN 10
    WHEN COALESCE(c.official_source_url, '') <> '' THEN 20
    ELSE 50
  END,
  'pending',
  CASE WHEN COALESCE(c.official_source_url, '') <> '' THEN 'official_source_linked' ELSE 'official_source_pending' END,
  CASE
    WHEN COALESCE(c.official_courses_verified, false) THEN 'official_courses_verified'
    WHEN COALESCE(array_length(c.related_courses, 1), 0) = 0
      AND trim(COALESCE(c.course_fee_content, '')) = 'Check the official college website for current courses and fees.'
      THEN 'courses_withheld_pending_official_source'
    ELSE 'course_policy_review_required'
  END,
  CASE
    WHEN COALESCE(c.official_fees_verified, false) THEN 'official_fees_verified'
    WHEN trim(COALESCE(c.fees, '')) = ''
      AND NOT EXISTS (SELECT 1 FROM public.course_fees cf WHERE cf.college_slug = c.slug)
      THEN 'fees_withheld_pending_official_source'
    ELSE 'unverified_fee_review_required'
  END,
  COALESCE(c.editorial_word_count, 0),
  COALESCE(c.editorial_module_count, 0),
  (SELECT count(*)::integer FROM public.faqs f WHERE f.page = 'colleges' AND f.item_slug = c.slug AND f.is_active),
  (SELECT count(*)::integer FROM public.faculty f WHERE f.college_slug = c.slug AND f.is_active),
  (SELECT count(*)::integer FROM public.college_reviews r WHERE r.college_slug = c.slug AND r.status = 'approved'),
  (SELECT count(*)::integer FROM public.placement_records p WHERE p.college_slug = c.slug),
  EXISTS (SELECT 1 FROM public.college_contacts cc WHERE cc.college_slug = c.slug),
  COALESCE(array_length(c.related_courses, 1), 0) + COALESCE(array_length(c.related_exams, 1), 0),
  c.editorial_readiness_failures,
  now(),
  now()
FROM public.colleges c
WHERE c.data_clean_method IN ('source_review_humanized', 'official_source_content', 'official_source')
ON CONFLICT (college_slug) DO UPDATE SET
  college_name = EXCLUDED.college_name,
  priority = EXCLUDED.priority,
  status = EXCLUDED.status,
  source_status = EXCLUDED.source_status,
  course_status = EXCLUDED.course_status,
  fee_status = EXCLUDED.fee_status,
  word_count = EXCLUDED.word_count,
  module_count = EXCLUDED.module_count,
  faq_count = EXCLUDED.faq_count,
  faculty_count = EXCLUDED.faculty_count,
  approved_review_count = EXCLUDED.approved_review_count,
  placement_record_count = EXCLUDED.placement_record_count,
  has_contact = EXCLUDED.has_contact,
  internal_entity_link_count = EXCLUDED.internal_entity_link_count,
  missing_requirements = EXCLUDED.missing_requirements,
  last_audited_at = EXCLUDED.last_audited_at,
  updated_at = EXCLUDED.updated_at;

CREATE OR REPLACE VIEW public.college_editorial_completion_progress AS
SELECT
  count(*)::integer AS total_colleges,
  count(*) FILTER (WHERE status = 'complete')::integer AS complete_colleges,
  count(*) FILTER (WHERE status = 'pending')::integer AS pending_colleges,
  count(*) FILTER (WHERE source_status = 'official_source_linked')::integer AS official_source_linked,
  count(*) FILTER (WHERE source_status = 'official_source_pending')::integer AS official_source_pending,
  count(*) FILTER (WHERE course_status = 'official_courses_verified')::integer AS official_courses_verified,
  count(*) FILTER (WHERE fee_status = 'official_fees_verified')::integer AS official_fees_verified,
  count(*) FILTER (WHERE 'human_editor_review_pending' = ANY(missing_requirements))::integer AS human_review_pending,
  max(updated_at) AS last_updated_at
FROM public.college_editorial_completion_queue;

NOTIFY pgrst, 'reload schema';
COMMIT;
