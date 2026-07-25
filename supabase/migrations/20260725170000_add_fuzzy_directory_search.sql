CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA extensions;

CREATE OR REPLACE FUNCTION public.search_directory_fuzzy(
  p_terms text[],
  p_limit integer DEFAULT 10
)
RETURNS TABLE (
  entity_type text,
  name text,
  slug text,
  subtitle text,
  image_url text,
  score real
)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public, extensions
AS $$
  WITH terms AS (
    SELECT DISTINCT lower(trim(term)) AS term
    FROM unnest(COALESCE(p_terms, ARRAY[]::text[])) AS term
    WHERE length(trim(term)) >= 2
    LIMIT 12
  ),
  candidates AS (
    SELECT 'College'::text AS entity_type, c.name::text, c.slug::text,
           COALESCE(c.city, '')::text AS subtitle, COALESCE(c.logo, '')::text AS image_url
    FROM public.colleges c WHERE c.is_active = true
    UNION ALL
    SELECT 'Course', c.name::text, c.slug::text, COALESCE(c.level, '')::text, COALESCE(c.image, '')::text
    FROM public.courses c WHERE c.is_active = true
    UNION ALL
    SELECT 'Exam', e.name::text, e.slug::text, COALESCE(e.exam_type, '')::text, COALESCE(e.logo, e.image, '')::text
    FROM public.exams e WHERE e.is_active = true
    UNION ALL
    SELECT 'Career', c.name::text, c.slug::text, COALESCE(c.domain, '')::text, COALESCE(c.image, '')::text
    FROM public.career_profiles c WHERE c.is_active = true
  ),
  ranked AS (
    SELECT c.entity_type, c.name, c.slug, c.subtitle, c.image_url,
           max(greatest(
             extensions.similarity(lower(c.name), t.term),
             extensions.word_similarity(t.term, lower(c.name)),
             CASE WHEN lower(c.name) LIKE '%' || t.term || '%' THEN 0.9 ELSE 0 END
           ))::real AS score,
           bool_or(lower(c.name) = t.term) AS exact_match,
           bool_or(lower(c.name) LIKE t.term || '%') AS prefix_match
    FROM candidates c
    CROSS JOIN terms t
    GROUP BY c.entity_type, c.name, c.slug, c.subtitle, c.image_url
  )
  SELECT r.entity_type, r.name, r.slug, r.subtitle, r.image_url, r.score
  FROM ranked r
  WHERE r.score >= 0.24
  ORDER BY r.exact_match DESC, r.prefix_match DESC, r.score DESC, length(r.name), r.name
  LIMIT greatest(1, least(COALESCE(p_limit, 10), 20));
$$;

GRANT EXECUTE ON FUNCTION public.search_directory_fuzzy(text[], integer) TO anon, authenticated;

-- Keep the data cleaner on Google's lowest-cost generally available text model.
UPDATE public.ai_runtime_controls
SET provider = 'gemini',
    model = 'gemini-3.5-flash-lite',
    updated_at = now()
WHERE feature = 'data-cleaner';
