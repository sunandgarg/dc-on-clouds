-- Read-only Supabase/PostgreSQL migration inventory.
-- Run with a read-only database role and save the complete output as a
-- migration artifact. This file intentionally does not print user records,
-- object names, tokens, secrets, or cron command bodies.

select
  current_database() as database_name,
  current_setting('server_version') as postgres_version,
  now() at time zone 'utc' as captured_at_utc,
  (select count(*) from information_schema.tables
    where table_schema = 'public' and table_type = 'BASE TABLE') as public_tables,
  (select count(*) from pg_indexes where schemaname = 'public') as public_indexes,
  (select count(*) from pg_policies where schemaname = 'public') as public_policies,
  (select count(*) from information_schema.routines
    where routine_schema = 'public') as public_routines,
  (select count(*) from information_schema.triggers
    where trigger_schema = 'public') as public_triggers,
  (select count(*) from auth.users) as auth_users,
  (select count(*) from storage.buckets) as storage_buckets,
  (select coalesce(sum(n_live_tup), 0)::bigint from pg_stat_user_tables
    where schemaname = 'public') as estimated_public_rows;

select extname, extversion, n.nspname as schema_name
from pg_extension e
join pg_namespace n on n.oid = e.extnamespace
order by extname;

select
  b.id as bucket_id,
  b.public,
  b.file_size_limit,
  b.allowed_mime_types,
  count(o.id)::bigint as object_count,
  coalesce(sum((o.metadata ->> 'size')::bigint), 0)::bigint as total_bytes
from storage.buckets b
left join storage.objects o on o.bucket_id = b.id
group by b.id, b.public, b.file_size_limit, b.allowed_mime_types
order by b.id;

select jobid, schedule, active
from cron.job
order by jobid;

select p.pubname, count(pr.prrelid) as published_tables
from pg_publication p
left join pg_publication_rel pr on pr.prpubid = p.oid
group by p.pubname
order by p.pubname;

select
  n.nspname as schema_name,
  c.relname as view_name,
  pg_get_userbyid(c.relowner) as owner,
  coalesce(c.reloptions, array[]::text[]) as options
from pg_class c
join pg_namespace n on n.oid = c.relnamespace
where c.relkind = 'v'
  and n.nspname = 'public'
  and not (coalesce(c.reloptions, array[]::text[]) @> array['security_invoker=true'])
order by c.relname;

select
  n.nspname as schema_name,
  p.proname as function_name,
  pg_get_function_identity_arguments(p.oid) as arguments,
  p.prosecdef as security_definer,
  p.proconfig as runtime_configuration
from pg_proc p
join pg_namespace n on n.oid = p.pronamespace
where n.nspname = 'public'
order by p.proname, arguments;
