-- Switch public website references from dekhocampus.in to dekhocampus.com.
-- This intentionally updates public content/config tables broadly because the
-- production launch domain is dekhocampus.com.

do $$
declare
  r record;
begin
  for r in
    select c.table_schema, c.table_name, c.column_name
    from information_schema.columns c
    join information_schema.tables t
      on t.table_schema = c.table_schema
     and t.table_name = c.table_name
    where c.table_schema = 'public'
      and t.table_type = 'BASE TABLE'
      and c.data_type in ('text', 'character varying', 'character')
  loop
    execute format(
      'update %I.%I
       set %I = replace(replace(%I, %L, %L), %L, %L)
       where %I like %L or %I like %L',
      r.table_schema,
      r.table_name,
      r.column_name,
      r.column_name,
      'ui.dekhocampus.com',
      'dekhocampus.com',
      'dekhocampus.in',
      'dekhocampus.com',
      r.column_name,
      '%ui.dekhocampus.com%',
      r.column_name,
      '%dekhocampus.in%'
    );
  end loop;
end $$;

do $$
declare
  r record;
begin
  for r in
    select c.table_schema, c.table_name, c.column_name
    from information_schema.columns c
    join information_schema.tables t
      on t.table_schema = c.table_schema
     and t.table_name = c.table_name
    where c.table_schema = 'public'
      and t.table_type = 'BASE TABLE'
      and c.data_type = 'jsonb'
  loop
    execute format(
      'update %I.%I
       set %I = replace(replace(%I::text, %L, %L), %L, %L)::jsonb
       where %I::text like %L or %I::text like %L',
      r.table_schema,
      r.table_name,
      r.column_name,
      r.column_name,
      'ui.dekhocampus.com',
      'dekhocampus.com',
      'dekhocampus.in',
      'dekhocampus.com',
      r.column_name,
      '%ui.dekhocampus.com%',
      r.column_name,
      '%dekhocampus.in%'
    );
  end loop;
end $$;

do $$
declare
  r record;
begin
  for r in
    select c.table_schema, c.table_name, c.column_name
    from information_schema.columns c
    join information_schema.tables t
      on t.table_schema = c.table_schema
     and t.table_name = c.table_name
    where c.table_schema = 'public'
      and t.table_type = 'BASE TABLE'
      and c.data_type = 'json'
  loop
    execute format(
      'update %I.%I
       set %I = replace(replace(%I::text, %L, %L), %L, %L)::json
       where %I::text like %L or %I::text like %L',
      r.table_schema,
      r.table_name,
      r.column_name,
      r.column_name,
      'ui.dekhocampus.com',
      'dekhocampus.com',
      'dekhocampus.in',
      'dekhocampus.com',
      r.column_name,
      '%ui.dekhocampus.com%',
      r.column_name,
      '%dekhocampus.in%'
    );
  end loop;
end $$;
