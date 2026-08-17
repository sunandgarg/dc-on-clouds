-- DekhoCampus typography invariant:
-- Persist ASCII hyphens only. En and em dashes are normalized on every write.

create or replace function public.normalize_large_dashes_on_write()
returns trigger
language plpgsql
set search_path = public
as $$
declare
  normalized jsonb;
begin
  normalized := replace(
    replace(to_jsonb(new)::text, chr(8212), '-'),
    chr(8211),
    '-'
  )::jsonb;
  select populated.*
  into new
  from jsonb_populate_record(new, normalized) as populated;
  return new;
end;
$$;

do $$
declare
  target record;
begin
  for target in
    select schemaname, tablename
    from pg_tables
    where schemaname = 'public'
  loop
    execute format(
      'drop trigger if exists normalize_large_dashes_before_write on %I.%I',
      target.schemaname,
      target.tablename
    );
    execute format(
      'create trigger normalize_large_dashes_before_write
       before insert or update on %I.%I
       for each row execute function public.normalize_large_dashes_on_write()',
      target.schemaname,
      target.tablename
    );
  end loop;
end;
$$;

-- Clean existing text, JSON and text-array values in every public table.
do $$
declare
  column_row record;
  statement text;
begin
  for column_row in
    select
      columns.table_schema,
      columns.table_name,
      columns.column_name,
      columns.data_type,
      columns.udt_name
    from information_schema.columns as columns
    join information_schema.tables as tables
      on tables.table_schema = columns.table_schema
     and tables.table_name = columns.table_name
     and tables.table_type = 'BASE TABLE'
    where columns.table_schema = 'public'
      and (
        columns.data_type in ('text', 'character varying', 'character', 'json', 'jsonb')
        or columns.udt_name in ('_text', '_varchar')
      )
  loop
    if column_row.data_type in ('text', 'character varying', 'character') then
      statement := format(
        'update %I.%I set %I = replace(replace(%I, chr(8212), ''-''), chr(8211), ''-'')
         where position(chr(8212) in %I) > 0 or position(chr(8211) in %I) > 0',
        column_row.table_schema, column_row.table_name,
        column_row.column_name, column_row.column_name,
        column_row.column_name, column_row.column_name
      );
    elsif column_row.data_type in ('json', 'jsonb') then
      statement := format(
        'update %I.%I set %I = replace(replace(%I::text, chr(8212), ''-''), chr(8211), ''-'')::%s
         where position(chr(8212) in %I::text) > 0 or position(chr(8211) in %I::text) > 0',
        column_row.table_schema, column_row.table_name,
        column_row.column_name, column_row.column_name, column_row.data_type,
        column_row.column_name, column_row.column_name
      );
    else
      statement := format(
        'update %I.%I set %I = (
           select array_agg(replace(replace(item, chr(8212), ''-''), chr(8211), ''-'') order by ord)
           from unnest(%I) with ordinality as values_with_order(item, ord)
         )
         where array_to_string(%I, '''') like ''%%'' || chr(8212) || ''%%''
            or array_to_string(%I, '''') like ''%%'' || chr(8211) || ''%%''',
        column_row.table_schema, column_row.table_name,
        column_row.column_name, column_row.column_name,
        column_row.column_name, column_row.column_name
      );
    end if;
    execute statement;
  end loop;
end;
$$;

comment on function public.normalize_large_dashes_on_write() is
  'Mandatory content rule: converts en dash and em dash characters to ASCII hyphen on every public-table write.';

notify pgrst, 'reload schema';
