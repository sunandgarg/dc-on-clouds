-- Track cleaning attempts separately from successful, applied improvements.
-- This prevents a checked-but-unchanged record from being treated as never checked,
-- and keeps pass 2 behind every eligible record's pass 1.

DO $columns$
DECLARE
  table_name text;
BEGIN
  FOREACH table_name IN ARRAY ARRAY[
    'colleges', 'courses', 'exams', 'career_profiles', 'scholarships', 'articles',
    'study_subjects', 'college_universities', 'cat_universe_modules'
  ] LOOP
    EXECUTE format('ALTER TABLE public.%I ADD COLUMN IF NOT EXISTS data_clean_attempts integer NOT NULL DEFAULT 0', table_name);
    EXECUTE format('ALTER TABLE public.%I ADD COLUMN IF NOT EXISTS data_clean_successes integer NOT NULL DEFAULT 0', table_name);
    EXECUTE format('ALTER TABLE public.%I ADD COLUMN IF NOT EXISTS data_last_checked_at timestamptz', table_name);
    EXECUTE format('ALTER TABLE public.%I ADD COLUMN IF NOT EXISTS data_clean_state text NOT NULL DEFAULT ''never_checked''', table_name);
    EXECUTE format(
      'UPDATE public.%I
       SET data_clean_attempts = greatest(data_clean_attempts, 1),
           data_clean_successes = greatest(data_clean_successes, 1),
           data_last_checked_at = coalesce(data_last_checked_at, data_verified_at),
           data_clean_state = CASE WHEN data_clean_state = ''never_checked'' THEN ''cleaned'' ELSE data_clean_state END
       WHERE data_verified_at IS NOT NULL',
      table_name
    );
  END LOOP;
END
$columns$;

ALTER TABLE public.data_cleaning_jobs
  ADD COLUMN IF NOT EXISTS cleaning_pass integer NOT NULL DEFAULT 1;

ALTER TABLE public.data_cleaning_items
  ADD COLUMN IF NOT EXISTS cleaning_pass integer NOT NULL DEFAULT 1,
  ADD COLUMN IF NOT EXISTS previous_attempts integer NOT NULL DEFAULT 0;

-- Existing review items remain reviewable and block a premature second pass.
DO $review_backfill$
DECLARE
  mapping record;
BEGIN
  FOR mapping IN
    SELECT * FROM (VALUES
      ('colleges','colleges'), ('courses','courses'), ('exams','exams'),
      ('careers','career_profiles'), ('scholarships','scholarships'), ('articles','articles'),
      ('study_material','study_subjects'), ('college_study','college_universities'),
      ('cat_universe','cat_universe_modules')
    ) AS x(entity_type, table_name)
  LOOP
    EXECUTE format(
      'UPDATE public.%I target
       SET data_clean_attempts = greatest(target.data_clean_attempts, 1),
           data_last_checked_at = coalesce(target.data_last_checked_at, review_item.updated_at),
           data_clean_state = ''awaiting_review''
       FROM (
         SELECT DISTINCT ON (entity_id) entity_id, updated_at
         FROM public.data_cleaning_items
         WHERE entity_type = %L AND status = ''review''
         ORDER BY entity_id, updated_at DESC
       ) review_item
       WHERE target.id::text = review_item.entity_id',
      mapping.table_name,
      mapping.entity_type
    );
  END LOOP;
END
$review_backfill$;

-- Historical no-source rows should not keep displaying a synthetic 50% score.
-- Their entity remains at pass 0 so the expanded source discovery can retry it.
UPDATE public.data_cleaning_items
SET confidence = NULL,
    error_message = 'Legacy source lookup - eligible for a fresh pass with expanded research',
    updated_at = now()
WHERE status = 'skipped'
  AND (
    error_message ILIKE 'No usable cited source found%'
    OR error_message ILIKE 'No verified official source found%'
    OR error_message ILIKE 'No verified official source%'
  );

CREATE OR REPLACE FUNCTION public.create_data_cleaning_job(
  _entity_types text[],
  _batch_size integer DEFAULT 100,
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
    greatest(1, least(coalesce(_batch_size, 100), 500)),
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
       WHERE NOT EXISTS (
         SELECT 1 FROM public.data_cleaning_exclusions e
         WHERE e.entity_type = $2 AND e.entity_id = t.id::text
       )
       AND NOT EXISTS (
         SELECT 1 FROM public.%I pending
         WHERE pending.data_clean_state = ''awaiting_review''
       )
       AND t.data_clean_attempts = (
         SELECT min(candidate.data_clean_attempts)
         FROM public.%I candidate
         WHERE NOT EXISTS (
           SELECT 1 FROM public.data_cleaning_exclusions e2
           WHERE e2.entity_type = $2 AND e2.entity_id = candidate.id::text
         )
       )
       ORDER BY t.data_last_checked_at ASC NULLS FIRST, t.updated_at ASC NULLS FIRST, t.id
       LIMIT $3',
      display_column, table_name, table_name, table_name
    ) USING new_job, requested_type, remaining;
    GET DIAGNOSTICS inserted_count = ROW_COUNT;
    remaining := remaining - inserted_count;
  END LOOP;

  UPDATE public.data_cleaning_jobs
  SET total_items = (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job),
      cleaning_pass = coalesce((SELECT min(cleaning_pass) FROM public.data_cleaning_items WHERE job_id = new_job), 1),
      status = CASE
        WHEN (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job) = 0 THEN 'completed'
        ELSE status
      END,
      completed_at = CASE
        WHEN (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job) = 0 THEN now()
        ELSE completed_at
      END,
      message = CASE
        WHEN (SELECT count(*) FROM public.data_cleaning_items WHERE job_id = new_job) = 0
          THEN 'No eligible records'
        ELSE 'Ready to process the next incomplete cleaning pass'
      END,
      updated_at = now()
  WHERE id = new_job;
  RETURN new_job;
END
$function$;

CREATE OR REPLACE FUNCTION public.get_data_cleaning_coverage()
RETURNS TABLE (
  entity_type text,
  total_records bigint,
  never_checked bigint,
  checked_records bigint,
  cleaned_records bigint,
  pending_reviews bigint,
  failed_checks bigint,
  current_pass integer
)
LANGUAGE plpgsql SECURITY DEFINER SET search_path = public
AS $function$
DECLARE
  mapping record;
BEGIN
  IF auth.role() <> 'service_role' AND NOT public.has_role(auth.uid(), 'admin'::app_role) THEN
    RAISE EXCEPTION 'Admin permission required';
  END IF;

  FOR mapping IN
    SELECT * FROM (VALUES
      ('colleges','colleges'), ('courses','courses'), ('exams','exams'),
      ('careers','career_profiles'), ('scholarships','scholarships'), ('articles','articles'),
      ('study_material','study_subjects'), ('college_study','college_universities'),
      ('cat_universe','cat_universe_modules')
    ) AS x(entity_type, table_name)
  LOOP
    RETURN QUERY EXECUTE format(
      'SELECT %L::text,
              count(*)::bigint,
              count(*) FILTER (WHERE data_clean_attempts = 0)::bigint,
              count(*) FILTER (WHERE data_clean_attempts > 0)::bigint,
              count(*) FILTER (WHERE data_clean_successes > 0)::bigint,
              count(*) FILTER (WHERE data_clean_state = ''awaiting_review'')::bigint,
              count(*) FILTER (WHERE data_clean_state = ''failed'')::bigint,
              coalesce(min(data_clean_attempts), 0)::integer + 1
       FROM public.%I',
      mapping.entity_type,
      mapping.table_name
    );
  END LOOP;
END
$function$;

GRANT EXECUTE ON FUNCTION public.create_data_cleaning_job(text[],integer,integer,text,uuid) TO service_role, authenticated;
GRANT EXECUTE ON FUNCTION public.get_data_cleaning_coverage() TO service_role, authenticated;
