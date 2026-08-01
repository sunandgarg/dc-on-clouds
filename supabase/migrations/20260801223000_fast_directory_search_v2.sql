-- Fast universal directory search. Candidate filtering happens through trigram
-- indexes before scoring, avoiding a full-directory cross join per keystroke.

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA extensions;

CREATE INDEX IF NOT EXISTS idx_colleges_name_trgm_active
  ON public.colleges USING gin (lower(name) extensions.gin_trgm_ops)
  WHERE is_active = true;
CREATE INDEX IF NOT EXISTS idx_courses_name_trgm_active
  ON public.courses USING gin (lower(name) extensions.gin_trgm_ops)
  WHERE is_active = true;
CREATE INDEX IF NOT EXISTS idx_exams_name_trgm_active
  ON public.exams USING gin (lower(name) extensions.gin_trgm_ops)
  WHERE is_active = true;
CREATE INDEX IF NOT EXISTS idx_careers_name_trgm_active
  ON public.career_profiles USING gin (lower(name) extensions.gin_trgm_ops)
  WHERE is_active = true;

CREATE OR REPLACE FUNCTION public.search_directory_fast(
  p_query text,
  p_limit integer DEFAULT 10
)
RETURNS TABLE (
  entity_type text,
  name text,
  slug text,
  subtitle text,
  image_url text,
  logo_url text,
  score real
)
LANGUAGE sql
STABLE
SECURITY INVOKER
SET search_path = public, extensions
AS $$
  WITH input AS (
    SELECT lower(trim(regexp_replace(coalesce(p_query, ''), '\s+', ' ', 'g'))) AS q
  ),
  candidates AS (
    SELECT 'College'::text AS entity_type,
           public.dc_plain_label(c.name)::text AS name,
           c.slug::text,
           public.dc_plain_label(coalesce(nullif(c.city, ''), nullif(c.state, ''), ''))::text AS subtitle,
           coalesce(c.image, c.logo, '')::text AS image_url,
           coalesce(c.logo, c.image, '')::text AS logo_url,
           greatest(
             CASE WHEN lower(c.name) = i.q THEN 1.0 WHEN lower(c.name) LIKE i.q || '%' THEN 0.98 WHEN lower(c.name) LIKE '%' || i.q || '%' THEN 0.94 ELSE 0 END,
             CASE WHEN lower(c.slug) LIKE '%' || replace(i.q, ' ', '-') || '%' THEN 0.91 ELSE 0 END,
             extensions.similarity(lower(c.name), i.q)
           )::real AS score
    FROM public.colleges c CROSS JOIN input i
    WHERE c.is_active = true AND length(i.q) >= 2
      AND (lower(c.name) LIKE '%' || i.q || '%' OR lower(c.name) % i.q OR lower(c.slug) LIKE '%' || replace(i.q, ' ', '-') || '%')
    UNION ALL
    SELECT 'Course', public.dc_plain_label(c.name), c.slug,
           public.dc_plain_label(coalesce(nullif(c.level, ''), nullif(c.category, ''), 'Course')),
           coalesce(c.image, ''), coalesce(c.image, ''),
           greatest(
             CASE WHEN lower(c.name) = i.q THEN 1.0 WHEN lower(c.name) LIKE i.q || '%' THEN 0.98 WHEN lower(c.name) LIKE '%' || i.q || '%' THEN 0.94 ELSE 0 END,
             CASE WHEN lower(c.slug) LIKE '%' || replace(i.q, ' ', '-') || '%' THEN 0.91 ELSE 0 END,
             extensions.similarity(lower(c.name), i.q)
           )::real
    FROM public.courses c CROSS JOIN input i
    WHERE c.is_active = true AND length(i.q) >= 2
      AND (lower(c.name) LIKE '%' || i.q || '%' OR lower(c.name) % i.q OR lower(c.slug) LIKE '%' || replace(i.q, ' ', '-') || '%')
    UNION ALL
    SELECT 'Exam', public.dc_plain_label(e.name), e.slug,
           public.dc_plain_label(coalesce(nullif(e.exam_type, ''), nullif(e.category, ''), 'Exam')),
           coalesce(e.logo, e.image, ''), coalesce(e.logo, e.image, ''),
           greatest(
             CASE WHEN lower(e.name) = i.q THEN 1.0 WHEN lower(e.name) LIKE i.q || '%' THEN 0.98 WHEN lower(e.name) LIKE '%' || i.q || '%' THEN 0.94 ELSE 0 END,
             CASE WHEN lower(e.slug) LIKE '%' || replace(i.q, ' ', '-') || '%' THEN 0.91 ELSE 0 END,
             extensions.similarity(lower(e.name), i.q)
           )::real
    FROM public.exams e CROSS JOIN input i
    WHERE e.is_active = true AND length(i.q) >= 2
      AND (lower(e.name) LIKE '%' || i.q || '%' OR lower(e.name) % i.q OR lower(e.slug) LIKE '%' || replace(i.q, ' ', '-') || '%')
    UNION ALL
    SELECT 'Career', public.dc_plain_label(c.name), c.slug,
           public.dc_plain_label(coalesce(c.domain, 'Career')),
           coalesce(c.image, ''), coalesce(c.image, ''),
           greatest(
             CASE WHEN lower(c.name) = i.q THEN 1.0 WHEN lower(c.name) LIKE i.q || '%' THEN 0.98 WHEN lower(c.name) LIKE '%' || i.q || '%' THEN 0.94 ELSE 0 END,
             CASE WHEN lower(c.slug) LIKE '%' || replace(i.q, ' ', '-') || '%' THEN 0.91 ELSE 0 END,
             extensions.similarity(lower(c.name), i.q)
           )::real
    FROM public.career_profiles c CROSS JOIN input i
    WHERE c.is_active = true AND length(i.q) >= 2
      AND (lower(c.name) LIKE '%' || i.q || '%' OR lower(c.name) % i.q OR lower(c.slug) LIKE '%' || replace(i.q, ' ', '-') || '%')
  )
  SELECT c.entity_type, c.name, c.slug, c.subtitle, c.image_url, c.logo_url, c.score
  FROM candidates c
  WHERE c.score >= 0.2
  ORDER BY c.score DESC, length(c.name), c.name
  LIMIT greatest(1, least(coalesce(p_limit, 10), 15));
$$;

GRANT EXECUTE ON FUNCTION public.search_directory_fast(text, integer) TO anon, authenticated;
NOTIFY pgrst, 'reload schema';
