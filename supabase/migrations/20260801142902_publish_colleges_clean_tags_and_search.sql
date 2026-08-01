-- Publish college records, remove import-only badges from public tags, and
-- improve cross-field directory search for queries like
-- "ACE College of Engineering Trivandrum".

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA extensions;

CREATE OR REPLACE FUNCTION public.dc_plain_label(value text)
RETURNS text
LANGUAGE sql
IMMUTABLE
AS $$
  SELECT trim(regexp_replace(
    replace(replace(replace(replace(replace(replace(replace(coalesce(value, ''), '&nbsp;', ' '), '&amp;', '&'), '&#039;', ''''), '&quot;', '"'), '&lt;', '<'), '&gt;', '>'), '&ndash;', '-'),
    '<[^>]*>',
    ' ',
    'g'
  ));
$$;

CREATE OR REPLACE FUNCTION public.search_directory_fuzzy(
  p_terms text[],
  p_limit integer DEFAULT 8
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
  WITH raw_terms AS (
    SELECT lower(trim(term)) AS term
    FROM unnest(COALESCE(p_terms, ARRAY[]::text[])) AS term
    WHERE length(trim(term)) >= 2
    LIMIT 10
  ),
  terms AS (
    SELECT DISTINCT
      term,
      regexp_replace(term, '[^a-z0-9]+', ' ', 'g') AS plain_term
    FROM raw_terms
  ),
  term_tokens AS (
    SELECT
      term,
      array_agg(token ORDER BY length(token) DESC) FILTER (WHERE length(token) >= 2) AS tokens
    FROM (
      SELECT term, unnest(regexp_split_to_array(plain_term, '\s+')) AS token
      FROM terms
    ) tokenized
    WHERE token NOT IN ('of', 'the', 'and', 'in', 'at', 'for')
    GROUP BY term
  ),
  candidates AS (
    SELECT
      'College'::text AS entity_type,
      public.dc_plain_label(c.name)::text AS name,
      c.slug::text,
      public.dc_plain_label(COALESCE(NULLIF(c.city, ''), NULLIF(c.state, ''), ''))::text AS subtitle,
      COALESCE(c.image, c.logo, '')::text AS image_url,
      COALESCE(c.logo, c.image, '')::text AS logo_url,
      lower(public.dc_plain_label(
        concat_ws(' ', c.name, c.short_name, c.slug, c.city, c.state, c.location, c.category, c.type)
      )) AS search_text
    FROM public.colleges c
    WHERE c.is_active = true
    UNION ALL
    SELECT
      'Course',
      public.dc_plain_label(c.name)::text,
      c.slug::text,
      public.dc_plain_label(COALESCE(NULLIF(c.level, ''), NULLIF(c.category, ''), 'Course'))::text,
      COALESCE(c.image, '')::text,
      COALESCE(c.image, '')::text,
      lower(public.dc_plain_label(concat_ws(' ', c.name, c.slug, c.level, c.category))) AS search_text
    FROM public.courses c
    WHERE c.is_active = true
    UNION ALL
    SELECT
      'Exam',
      public.dc_plain_label(e.name)::text,
      e.slug::text,
      public.dc_plain_label(COALESCE(NULLIF(e.exam_type, ''), NULLIF(e.category, ''), 'Exam'))::text,
      COALESCE(e.logo, e.image, '')::text,
      COALESCE(e.logo, e.image, '')::text,
      lower(public.dc_plain_label(concat_ws(' ', e.name, e.slug, e.exam_type, e.category))) AS search_text
    FROM public.exams e
    WHERE e.is_active = true
    UNION ALL
    SELECT
      'Career',
      public.dc_plain_label(c.name)::text,
      c.slug::text,
      public.dc_plain_label(COALESCE(c.domain, 'Career'))::text,
      COALESCE(c.image, '')::text,
      COALESCE(c.image, '')::text,
      lower(public.dc_plain_label(concat_ws(' ', c.name, c.slug, c.domain))) AS search_text
    FROM public.career_profiles c
    WHERE c.is_active = true
  ),
  ranked AS (
    SELECT c.entity_type, c.name, c.slug, c.subtitle, c.image_url, c.logo_url,
           max(greatest(
             extensions.similarity(lower(c.name), t.term),
             extensions.word_similarity(t.term, lower(c.name)),
             extensions.word_similarity(t.term, c.search_text),
             CASE WHEN c.search_text LIKE '%' || t.plain_term || '%' THEN 0.92 ELSE 0 END,
             CASE
               WHEN tt.tokens IS NOT NULL
                AND cardinality(tt.tokens) > 0
                AND NOT EXISTS (
                  SELECT 1
                  FROM unnest(tt.tokens) AS token
                  WHERE c.search_text NOT LIKE '%' || token || '%'
                )
               THEN 0.88
               ELSE 0
             END
           ))::real AS score,
           bool_or(lower(c.name) = t.term) AS exact_match,
           bool_or(lower(c.name) LIKE t.term || '%') AS prefix_match,
           bool_or(c.search_text LIKE '%' || t.plain_term || '%') AS phrase_match
    FROM candidates c
    CROSS JOIN terms t
    LEFT JOIN term_tokens tt ON tt.term = t.term
    GROUP BY c.entity_type, c.name, c.slug, c.subtitle, c.image_url, c.logo_url
  )
  SELECT r.entity_type, r.name, r.slug, r.subtitle, r.image_url, r.logo_url, r.score
  FROM ranked r
  WHERE r.score >= 0.22
  ORDER BY r.exact_match DESC, r.prefix_match DESC, r.phrase_match DESC, r.score DESC, length(r.name), r.name
  LIMIT greatest(1, least(COALESCE(p_limit, 8), 12));
$$;

GRANT EXECUTE ON FUNCTION public.search_directory_fuzzy(text[], integer) TO anon, authenticated;

UPDATE public.colleges
SET
  status = 'Published',
  is_active = true,
  tags = COALESCE((
    SELECT array_agg(tag ORDER BY ord)
    FROM unnest(COALESCE(tags, ARRAY[]::text[])) WITH ORDINALITY AS t(tag, ord)
    WHERE lower(tag) NOT IN ('legacy-csv-2024', 'legacy-archive')
      AND lower(tag) NOT LIKE 'legacy-%'
      AND lower(tag) NOT LIKE '%csv%'
      AND lower(tag) NOT LIKE 'import%'
  ), ARRAY[]::text[]),
  updated_at = now()
WHERE status IS DISTINCT FROM 'Published'
   OR is_active IS DISTINCT FROM true
   OR EXISTS (
    SELECT 1
    FROM unnest(COALESCE(tags, ARRAY[]::text[])) AS tag
    WHERE lower(tag) IN ('legacy-csv-2024', 'legacy-archive')
       OR lower(tag) LIKE 'legacy-%'
       OR lower(tag) LIKE '%csv%'
       OR lower(tag) LIKE 'import%'
  );

NOTIFY pgrst, 'reload schema';
