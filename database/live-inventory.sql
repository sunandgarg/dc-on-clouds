-- Read-only Supabase/PostgreSQL migration inventory.
-- Run with a read-only database role and save the complete output as a
-- migration artifact. This file intentionally does not print table rows,
-- tokens, secrets, or cron command bodies. It is intentionally
-- limited to public schema and PostgreSQL catalog metadata so the documented
-- public-only migration role can execute it without Auth/Storage privileges.

select
  current_database() as database_name,
  current_setting('server_version') as postgres_version,
  now() at time zone 'utc' as captured_at_utc,
  (select count(*) from information_schema.tables
    where table_schema = 'public' and table_type = 'BASE TABLE') as public_tables,
  (select count(*) from pg_indexes where schemaname = 'public') as public_indexes,
  (select count(*) from pg_policies where schemaname = 'public') as public_policies,
  (select count(*) from pg_proc p
    join pg_namespace n on n.oid = p.pronamespace
    where n.nspname = 'public') as public_routines,
  (select count(*) from pg_trigger t
    join pg_class c on c.oid = t.tgrelid
    join pg_namespace n on n.oid = c.relnamespace
    where n.nspname = 'public' and not t.tgisinternal) as public_triggers,
  (select coalesce(sum(n_live_tup), 0)::bigint from pg_stat_user_tables
    where schemaname = 'public') as estimated_public_rows;

select extname, extversion, n.nspname as schema_name
from pg_extension e
join pg_namespace n on n.oid = e.extnamespace
order by extname;

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
