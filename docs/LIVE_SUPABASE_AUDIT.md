# Live Supabase audit

Captured: 2026-08-21 (Asia/Kolkata)

Scope: authenticated, read-only inspection of project `kozdctbbvrnyddlftmvf`.
No production rows, credentials, objects, settings, policies, or functions were
created, modified, deleted, downloaded, or restored during this audit.

## Project and database

- Project: `dc-on-aws`, production branch, healthy at inspection time.
- Region: South Asia (Mumbai), `ap-south-1`.
- Compute: Micro (`t3a.micro`). Dashboard snapshot: CPU 3%, RAM 48%, disk 19%,
  and 26 of 60 database connections.
- PostgreSQL: 17.6, database `postgres`.
- Live public schema: 145 base tables, 371 indexes, 276 RLS policies, 39
  routines, 378 triggers, and approximately 41,220 rows from PostgreSQL table
  statistics.
- Auth: one user. Storage: five buckets.
- Recent migration shown by the dashboard:
  `lead_push_university_import_fields`.

This is significant drift from the checked-in export (117 public tables, 140
indexes, 229 policies, 24 functions, and 84 triggers). The live capture is the
authoritative planning baseline; a fresh authenticated dump is required before
cutover.

## Extensions and scheduled work

Enabled extensions:

- `pg_net` 0.20.3 in `public`
- `pg_cron` 1.6.4 in `pg_catalog`
- `pg_trgm` 1.6, `pgcrypto` 1.3, `uuid-ossp` 1.1, and
  `pg_stat_statements` 1.11 in `extensions`
- `plpgsql` 1.0 in `pg_catalog`

Two active cron jobs call the deployed blog agent every 30 minutes and the data
cleaner every minute. Their command bodies include runtime headers and were not
copied into the repository.

## Authentication

- User signup and email/password authentication are enabled.
- Email confirmation is enabled.
- Anonymous sign-in and manual identity linking are disabled.
- Built-in phone and Google providers are disabled. The source and deployed
  functions instead contain custom phone/OTP behavior.
- Site URL is `http://localhost:3000`; no additional redirect URLs are set.

The live URL configuration is not production-ready for a new deployment. It
was deliberately left unchanged because the final staging/production domains
and OAuth callback plan are not yet approved.

## Storage

| Bucket | Exposure | Policies | Limit / types |
|---|---|---:|---|
| `legacy-public-assets` | Public | 0 | 10 MB; JPEG, PNG, WebP, AVIF, SVG, PDF |
| `study-material` | Public | 2 | 50 MB/default; any MIME |
| `admin-uploads` | Public | 7 | 50 MB/default; any MIME |
| `user-documents` | Private | 3 | 2 MB; any MIME |
| `ad-images` | Public | 4 | 50 MB/default; any MIME |

The object-count query did not complete in the dashboard during a reported
Supabase technical incident. Object totals and checksums remain unverified.
Database backups explicitly exclude Storage object payloads.

## Edge Functions and Realtime

- The dashboard shows 36 deployed Edge Functions. The repository has the same
  36 function directories plus the non-deployable shared-code directory
  `_shared`; there is no function-count drift.
- Realtime is enabled and public channels are allowed.
- Realtime database pool: 2 connections; Postgres Changes pool: 2 connections.
- Limits: 200 concurrent clients, 100 events/second, 20 presence events/second,
  256 KB maximum payload.
- Publications: `supabase_realtime` and
  `supabase_realtime_messages_publication`, one relation each.

## Backups

Seven daily physical database backups were visible, from 14 through 20 August
2026. The newest was 20 August 2026 at 19:44:11 UTC. A restore was not attempted.
These backups do not contain Storage object payloads.

## Temporary database capture

On 2026-08-21, the owner-provided `codex_readonly` role was rotated to a
generated password, restricted to login-only non-elevated attributes, forced
read-only, and set to expire after 24 hours. A libpq session verified both the
role identity and read-only default. The password was not committed.

The role produced a fresh 406 KiB public-schema export plus a catalog inventory
with mode-`0600` artifacts and SHA-256 checksums outside the repository. The
inventory reconfirmed 145 tables, 371 indexes, 276 policies, 39 routines, 234
non-internal trigger objects, and approximately 41,220 rows. The earlier 378
trigger figure counts trigger-event rows exposed by `information_schema`.

A custom-format data dump was attempted and stopped at
`public.about_founders`: PostgreSQL refused the COPY because RLS affects this
role. No partial dump was retained. A complete data migration therefore still
requires an owner-approved export path with visibility through all policies;
plain `GRANT SELECT` is not sufficient.

## Advisor findings

Security Advisor: 1 error, 79 warnings, and 4 informational suggestions.

- Error: `public.college_editorial_completion_progress` is a default
  security-definer view. Its definition only aggregates
  `college_editorial_completion_queue`, but changing it to security-invoker may
  alter access for existing roles and therefore needs a staging permission
  test before production application.
- Visible mutable-search-path functions included `intent_category_for`,
  `dc_plain_label`, and `dc_strip_article_visible_sources`.
- `pg_net` is installed in `public`.
- Visible always-true RLS warnings included policies on
  `ad_analytics_events`, `ai_content_reports`, `college_applications`,
  `cta_events`, `intent_events`, and `intent_visitors`.

Performance Advisor: 0 errors, 633 warnings, and 115 informational
suggestions. The visible first page was dominated by per-row Auth/RLS function
evaluation, including policies on `feature_toggles`, `user_permissions`,
`team_invites`, `cta_events`, `hero_categories`, `adsense_settings`, `ad_units`,
`ad_scripts`, and `ad_analytics_events`.

No advisor remediation was applied directly to production. The full exported
advisor report, query plans, and representative workload are required to group
duplicate policy findings and prove that each fix preserves authorization.

## Safe conclusions

1. Supabase is an active production platform dependency, not only a database.
2. The checked-in schema export is stale and must not drive the final import.
3. The target Spring/Next compatibility strategy remains necessary until Auth,
   Storage, functions, Realtime, cron, and RLS parity are verified.
4. Production is currently backed up, but Storage needs its own independent
   backup and checksum plan.
5. Security and performance advisor findings must be remediated in staging,
   then rerun before cutover.
