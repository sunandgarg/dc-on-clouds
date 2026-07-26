-- Keep malformed legacy HTML/JSON out of the universal search response and
-- allow the cleaner to continue in small passes while individual records wait
-- for human review.

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
    SELECT 'College'::text AS entity_type,
           left(regexp_replace(c.name::text, '<[^>]+>', ' ', 'gi'), 120) AS name,
           c.slug::text,
           left(regexp_replace(COALESCE(c.city, '')::text, '<[^>]+>', ' ', 'gi'), 80) AS subtitle,
           COALESCE(c.logo, '')::text AS image_url
    FROM public.colleges c WHERE c.is_active = true
    UNION ALL
    SELECT 'Course',
           left(regexp_replace(c.name::text, '<[^>]+>', ' ', 'gi'), 120),
           c.slug::text,
           CASE
             WHEN lower(COALESCE(c.level, '')) ~ '(undergraduate|bachelor|(^|[^a-z])ug([^a-z]|$))' THEN 'Undergraduate'
             WHEN lower(COALESCE(c.level, '')) ~ '(postgraduate|master|(^|[^a-z])pg([^a-z]|$))' THEN 'Postgraduate'
             WHEN lower(COALESCE(c.level, '')) ~ '(doctoral|doctorate|ph\\.?d)' THEN 'Doctoral'
             WHEN lower(COALESCE(c.level, '')) ~ '(diploma)' THEN 'Diploma'
             WHEN lower(COALESCE(c.level, '')) ~ '(certificate)' THEN 'Certificate'
             ELSE left(regexp_replace(COALESCE(c.level, '')::text, '<[^>]+>', ' ', 'gi'), 60)
           END,
           COALESCE(c.image, '')::text
    FROM public.courses c WHERE c.is_active = true
    UNION ALL
    SELECT 'Exam',
           left(regexp_replace(e.name::text, '<[^>]+>', ' ', 'gi'), 120),
           e.slug::text,
           left(regexp_replace(COALESCE(e.exam_type, '')::text, '<[^>]+>', ' ', 'gi'), 60),
           COALESCE(e.logo, e.image, '')::text
    FROM public.exams e WHERE e.is_active = true
    UNION ALL
    SELECT 'Career',
           left(regexp_replace(c.name::text, '<[^>]+>', ' ', 'gi'), 120),
           c.slug::text,
           left(regexp_replace(COALESCE(c.domain, '')::text, '<[^>]+>', ' ', 'gi'), 60),
           COALESCE(c.image, '')::text
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
  SELECT r.entity_type, trim(regexp_replace(r.name, '\\s+', ' ', 'g')), r.slug,
         trim(regexp_replace(r.subtitle, '\\s+', ' ', 'g')), r.image_url, r.score
  FROM ranked r
  WHERE r.score >= 0.24
  ORDER BY r.exact_match DESC, r.prefix_match DESC, r.score DESC, length(r.name), r.name
  LIMIT greatest(1, least(COALESCE(p_limit, 10), 20));
$$;

GRANT EXECUTE ON FUNCTION public.search_directory_fuzzy(text[], integer) TO anon, authenticated;

CREATE OR REPLACE FUNCTION public.create_data_cleaning_job(
  _entity_types text[],
  _batch_size integer DEFAULT 5,
  _max_records integer DEFAULT NULL,
  _apply_mode text DEFAULT 'review',
  _created_by uuid DEFAULT NULL
) RETURNS uuid
LANGUAGE plpgsql SECURITY DEFINER SET search_path = public
AS $function$
DECLARE
  new_job uuid;
  requested_type text;
  table_name text;
  display_column text;
  remaining integer;
  inserted_count integer;
BEGIN
  IF auth.role() <> 'service_role' AND NOT public.has_role(auth.uid(), 'admin'::app_role) THEN
    RAISE EXCEPTION 'Admin permission required';
  END IF;
  IF coalesce(array_length(_entity_types, 1), 0) = 0 THEN
    RAISE EXCEPTION 'Select at least one content type';
  END IF;

  INSERT INTO public.data_cleaning_jobs(entity_types, batch_size, max_records, apply_mode, created_by)
  VALUES (
    _entity_types,
    greatest(1, least(coalesce(_batch_size, 5), 10)),
    _max_records,
    CASE WHEN _apply_mode = 'auto_apply' THEN 'auto_apply' ELSE 'review' END,
    _created_by
  )
  RETURNING id INTO new_job;

  remaining := coalesce(_max_records, 2147483647);
  FOREACH requested_type IN ARRAY _entity_types LOOP
    EXIT WHEN remaining <= 0;
    SELECT x.table_name, x.display_column INTO table_name, display_column
    FROM (VALUES
      ('colleges','colleges','name'), ('courses','courses','name'), ('exams','exams','name'),
      ('careers','career_profiles','name'), ('scholarships','scholarships','title'), ('articles','articles','title'),
      ('study_material','study_subjects','name'), ('college_study','college_universities','name'),
      ('cat_universe','cat_universe_modules','title')
    ) AS x(entity_type, table_name, display_column)
    WHERE x.entity_type = requested_type;
    IF table_name IS NULL THEN CONTINUE; END IF;

    EXECUTE format(
      'INSERT INTO public.data_cleaning_items(
         job_id, entity_type, entity_id, entity_slug, entity_name, cleaning_pass, previous_attempts
       )
       SELECT $1, $2, t.id::text, t.slug::text, coalesce(t.%I::text, t.slug::text),
              t.data_clean_attempts + 1, t.data_clean_attempts
       FROM public.%I t
       WHERE t.data_clean_state <> ''awaiting_review''
       AND NOT EXISTS (
         SELECT 1 FROM public.data_cleaning_exclusions e
         WHERE e.entity_type = $2 AND e.entity_id = t.id::text
       )
       AND t.data_clean_attempts = (
         SELECT min(candidate.data_clean_attempts)
         FROM public.%I candidate
         WHERE candidate.data_clean_state <> ''awaiting_review''
         AND NOT EXISTS (
           SELECT 1 FROM public.data_cleaning_exclusions e2
           WHERE e2.entity_type = $2 AND e2.entity_id = candidate.id::text
         )
       )
       ORDER BY t.data_last_checked_at ASC NULLS FIRST, t.updated_at ASC NULLS FIRST, t.id
       LIMIT $3',
      display_column, table_name, table_name
    ) USING new_job, requested_type, remaining;
    GET DIAGNOSTICS inserted_count = ROW_COUNT;
    remaining := remaining - inserted_count;
  END LOOP;

  UPDATE public.data_cleaning_jobs
  SET total_items = (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job),
      cleaning_pass = coalesce((SELECT min(cleaning_pass) FROM public.data_cleaning_items WHERE job_id = new_job), 1),
      status = CASE WHEN (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job) = 0 THEN 'completed' ELSE status END,
      completed_at = CASE WHEN (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job) = 0 THEN now() ELSE completed_at END,
      message = CASE WHEN (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job) = 0
        THEN 'No eligible records; resolve pending reviews before the next pass'
        ELSE 'Ready to process a bounded cleaning batch'
      END,
      updated_at = now()
  WHERE id = new_job;
  RETURN new_job;
END
$function$;

GRANT EXECUTE ON FUNCTION public.create_data_cleaning_job(text[],integer,integer,text,uuid)
  TO service_role, authenticated;

UPDATE public.ai_runtime_controls
SET is_enabled = false,
    provider = 'gemini',
    model = 'gemini-3.5-flash-lite',
    stop_reason = 'Requires an active Gemini API key before unattended source-backed cleaning can run',
    updated_at = now()
WHERE feature = 'data-cleaner';
