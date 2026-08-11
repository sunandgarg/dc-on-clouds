-- Admin-only, PIN-gated full public-schema export.
-- Returns every public base table with every row and column represented as JSON.

CREATE OR REPLACE FUNCTION public.list_public_tables()
RETURNS TABLE(table_name text)
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF auth.uid() IS NULL OR NOT public.has_role(auth.uid(), 'admin'::public.app_role) THEN
    RAISE EXCEPTION 'Admin access required';
  END IF;

  RETURN QUERY
  SELECT t.table_name::text
  FROM information_schema.tables t
  WHERE t.table_schema = 'public'
    AND t.table_type = 'BASE TABLE'
  ORDER BY t.table_name;
END;
$$;

REVOKE ALL ON FUNCTION public.list_public_tables() FROM public;
REVOKE ALL ON FUNCTION public.list_public_tables() FROM anon;
GRANT EXECUTE ON FUNCTION public.list_public_tables() TO authenticated;

CREATE OR REPLACE FUNCTION public.admin_full_database_export(input_pin text)
RETURNS jsonb
LANGUAGE plpgsql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  export_pin constant text := '8010321712';
  tbl record;
  table_rows jsonb;
  row_total bigint;
  table_count integer := 0;
  total_rows bigint := 0;
  output jsonb := jsonb_build_object(
    'version', 1,
    'schema', 'public',
    'exported_at', to_char(now() AT TIME ZONE 'utc', 'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"'),
    'tables', '{}'::jsonb
  );
BEGIN
  IF input_pin IS DISTINCT FROM export_pin THEN
    RAISE EXCEPTION 'Invalid export PIN';
  END IF;

  IF auth.uid() IS NULL OR NOT public.has_role(auth.uid(), 'admin'::public.app_role) THEN
    RAISE EXCEPTION 'Admin access required';
  END IF;

  FOR tbl IN
    SELECT t.table_name::text AS table_name
    FROM information_schema.tables t
    WHERE t.table_schema = 'public'
      AND t.table_type = 'BASE TABLE'
    ORDER BY t.table_name
  LOOP
    EXECUTE format(
      'SELECT count(*)::bigint, COALESCE(jsonb_agg(to_jsonb(row_data)), ''[]''::jsonb) FROM %I.%I AS row_data',
      'public',
      tbl.table_name
    )
    INTO row_total, table_rows;

    table_count := table_count + 1;
    total_rows := total_rows + COALESCE(row_total, 0);

    output := jsonb_set(
      output,
      ARRAY['tables', tbl.table_name],
      jsonb_build_object(
        'row_count', COALESCE(row_total, 0),
        'rows', COALESCE(table_rows, '[]'::jsonb)
      ),
      true
    );
  END LOOP;

  output := jsonb_set(output, '{table_count}', to_jsonb(table_count), true);
  output := jsonb_set(output, '{total_rows}', to_jsonb(total_rows), true);
  RETURN output;
END;
$$;

REVOKE ALL ON FUNCTION public.admin_full_database_export(text) FROM public;
REVOKE ALL ON FUNCTION public.admin_full_database_export(text) FROM anon;
GRANT EXECUTE ON FUNCTION public.admin_full_database_export(text) TO authenticated;
