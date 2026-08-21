# Migration status

Updated: 2026-08-21

Status meanings: **Migrated** = implemented in target stack; **Tested** = automated checks pass locally; **Verified** = behavior/data confirmed against the real environment; **Compatibility** = still relies on legacy/Supabase; **Blocked** = required access or infrastructure is unavailable.

## Phase status

| Area | Status | Evidence / limitation |
|---|---|---|
| Repository audit | Verified | 155 routes; 272 SQL migrations; authenticated live Supabase audit completed and recorded in `docs/LIVE_SUPABASE_AUDIT.md` |
| Per-route tracking | Verified | All 155 legacy route entries are individually recorded in `docs/ROUTE_INVENTORY.md` |
| Architecture | Migrated | `docs/TARGET_ARCHITECTURE.md` and runnable target-stack code |
| Next.js foundation | Tested | App Router, strict TypeScript, RSC/SSR/ISR, error/404, security headers; lint/type/tests/build pass locally |
| Next.js runtime smoke | Verified locally | Standalone server returned HTTP 200 with rendered H1, canonical, JSON-LD, security headers, robots and sitemap |
| Core public SEO routes | Migrated, production verification pending | Home; colleges/courses/exams/news/careers/jobs/scholarships lists/details; news tags; About; legal; authors; tools listing |
| Public legacy aliases | Tested | Permanent redirects for college, articles, vacancies, About and compare aliases |
| Student calculators | Tested | 7 native SSG tools with calculation tests; 5 data/AI tools remain compatibility |
| Exam calendar | Tested, production verification pending | Current-year SSR calendar with query/category/month filtering and permanent 2026 alias |
| Premium programs | Partially migrated | SSR listing/detail and `Course` schema; rich sections, leads, applications and category parity pending |
| School study material | Partially migrated and tested | SSR boards/classes/subjects/chapters/resources with legacy SEO slug parsing; file URLs withheld and OTP downloads remain compatibility |
| College study material | Partially migrated and tested | All 5 public URL shapes now SSR through Spring; program/university/semester/subject directories are native, raw resource URLs are withheld, and gated downloads remain compatibility |
| Public short links | Partially migrated and tested | All 4 `/s` and `/r` URL forms resolve server-side through Spring with expiry/activity checks and safe-target validation; detailed click/device analytics and admin management remain compatibility |
| Remaining public routes | Compatibility | Explicit legacy-origin bridge; not counted as migrated |
| Admin and user routes | Compatibility | Legacy-origin bridge; server-side module authorization not yet ported |
| Spring Boot API | Tested | Content, About, school-study, college-study and redirect boundaries plus auth/function gateways, validation, safe allowlists and correlation IDs; Maven verify passes with 6 tests |
| PostgreSQL/Flyway | Migrated for clean local baseline; production blocked | Fresh live public-schema capture verified; full data dump is blocked by RLS and no target exists |
| Supabase database exit | Schema captured; data/cutover blocked | Expiring read-only role verified; PostgreSQL 17.6, 145 tables, 371 indexes, 276 policies, 39 routines, 234 non-internal trigger objects and ~41,220 rows observed. Full dump stopped safely at the first RLS-protected table |
| Authentication | Live audited; Compatibility | One user; email/password and confirmation enabled; built-in Google/phone disabled; password gateway implemented and existing Supabase user preserved |
| Google OAuth/phone OTP/recovery/refresh | Blocked | Google is disabled live; custom OTP functions are deployed; provider credentials, production URLs and role-based test users are required |
| RLS replacement | In progress, live risk verified | JWT boundary implemented; 276 live policies require parity. Advisor reports 1 error and 79 warnings |
| Edge Functions | Live inventory verified; Compatibility | 36 deployed functions exactly match 36 repository function directories (`_shared` excluded); 34 are allowlisted through Spring; native ports incomplete |
| Storage | Live inventory partial; migration blocked | 5 buckets and 16 policies verified; object totals/checksums and destination copy require source/destination credentials |
| Realtime | Live audited; replacement not started | Enabled with public channels, 2+2 DB pools, 200 clients and two one-table publications; admin logs/profile subscriptions remain Supabase-specific |
| SEO/GEO/AEO | Migrated for core routes, production verification pending | Metadata, canonical, JSON-LD, semantic answers, robots and dynamic sitemap |
| Performance | Architecture tested; database risks verified; CWV blocked | Server rendering, bounded payloads, ISR and standalone build pass; live advisor has 0 errors, 633 warnings and 115 suggestions; no deployed target CWV endpoint |
| Docker/deployment | Container builds verified; provisioning blocked | Both production Docker images build successfully in GitHub CI. The public repository is now configured as an anonymous Git source, so GitHub App access is optional. The authenticated `DekhoCampus` project remains empty because paid resource creation is not approved |
| CI/CD | Verified | Migration CI run `32478500434` passed all five jobs on `main`: source/deploy artifact validation, frontend, backend, both container builds and legacy regression. Legacy lint remains an explicitly non-blocking recorded baseline |
| Legacy regression | Tests/build/typecheck verified; lint backlog open | 114 tests pass; Vite build, sitemap generation and metadata post-build pass; existing legacy lint reports 2,022 errors and 106 warnings |

## Live Supabase verification (2026-08-21)

- Production project health, region, compute, Auth configuration, Storage bucket
  configuration, Edge Functions, Realtime, scheduled backups, cron jobs,
  extensions, publications, and advisor totals were inspected through the
  authenticated dashboard.
- Read-only SQL confirmed PostgreSQL 17.6, 145 public tables, 371 indexes, 276
  policies, 39 routines, 378 trigger-event rows (234 non-internal trigger
  objects), one Auth user, five buckets, and an estimated 41,220 public rows.
- Seven daily physical database backups were visible. They do not back up
  Storage objects.
- A temporary `codex_readonly` role was rotated to a generated password,
  restricted to non-elevated attributes, forced read-only, and given a 24-hour
  expiry. A direct connection verified `current_user=codex_readonly` and
  `default_transaction_read_only=on`.
- A 406 KiB schema-only export and catalog inventory were captured outside the
  repository with mode `0600` and SHA-256 checksums. A full logical dump was
  rejected at `public.about_founders` because RLS applies to the role. No table
  data was copied or changed.

## Live DigitalOcean verification (2026-08-21)

- The authenticated `DekhoCampus` project is accessible and contains no Apps,
  databases, Spaces buckets, or other resources. Estimated August usage was
  $0.00 at inspection time.
- The GitHub repository was verified public. `.do/app.yaml` now uses its public
  HTTPS clone URL, so a manual App Platform deployment needs no GitHub App
  permission. Repository-scoped GitHub authorization is optional only for a
  private source or deploy-on-push.
- Current plan options were inspected. The recommended Bangalore stack is a
  $12/month Next.js service, $25/month Spring service, $30.45/month managed
  PostgreSQL cluster, and $5/month Spaces base plan: approximately $72.45/month
  before taxes and overages.
- `.do/app.yaml` and `docs/DIGITALOCEAN_DEPLOYMENT.md` prepare this topology
  without embedding credentials. No paid resource or permission grant was
  silently created.

## Remaining work / blockers

### 1. Live database and Flyway cutover

- What is left: full schema/data migration, counts/checksums, query parity, sequence validation and cutover.
- Why blocked: the temporary database role and schema capture are verified, but
  plain SELECT grants do not bypass 276 RLS policies. `pg_dump` correctly
  refused to export a policy-filtered dataset. The paid DigitalOcean destination
  is intentionally not created.
- Required: rotate the separately disclosed Supabase server secret; obtain an
  owner-approved source export path with complete row visibility (not merely
  SELECT), approve and provision a disposable DigitalOcean PostgreSQL target,
  then restore/reconcile in staging before any cutover.
- Affected: every data-backed feature, `backend-java`, `database`, all content/admin/user routes.
- Safe without it: the legacy app remains safe; the new stack cannot serve production data independently.
- Next action: execute `database/README.md` against staging.

### 2. Complete route and feature parity

- What is left: advanced entity tabs, data/AI decision tools, CAT universe, dashboards, gated study-resource downloads, landing pages, premium lead/rich-section parity, full short-link analytics/management and the admin suite. Public short-link resolution, school and college study directories, exam calendar, About, legal, authors, news tags and canonical URL aliases now have Next/Spring implementations.
- Why blocked: 155-route application exceeds a safely verifiable one-pass port; many flows depend on live data and third-party services.
- Required: live staging data, legacy deployment URL for temporary continuity, test accounts and representative fixtures.
- Affected: route groups marked Compatibility in `MIGRATION_AUDIT.md`.
- Safe without it: only with `LEGACY_FRONTEND_URL` configured; otherwise the new runtime fails explicitly on those routes.
- Next action: port route groups in the order listed below with parity tests before each cutover.

### 3. Auth and authorization parity

- What is left: production URL configuration, optional Google OAuth PKCE, custom phone OTP, recovery, refresh rotation, logout revocation, 276 live RLS-policy equivalents and admin permission tests.
- Why blocked: live configuration is known, but provider credentials, production domains, a role matrix and safe non-production users are unavailable. Testing against the single live user would be unsafe.
- Required: approved site/callback URLs, provider secrets if Google/phone are retained, staging users for each role, and an approved session/cutover policy.
- Affected: `/auth`, onboarding, dashboards, favorites/documents/referrals, every `/admin/**` route.
- Safe without it: public routes are safe; protected routes must remain on legacy.
- Next action: verify password gateway, then provider flows, then authorization matrix.

### 4. Edge Functions, integrations, schedules and Realtime

- What is left: native Spring services for all function workflows, retry/idempotency behavior, provider contract tests, scheduled jobs and realtime replacement.
- Why blocked: external credentials, webhook receivers and production fixtures are unavailable.
- Required: named secrets from the audit, sandbox accounts, allowlisted callback URLs and test payloads.
- Affected: AI, OTP/email, predictions, leads, blog/data cleaner, URLs, admin logs and intent analytics.
- Safe without it: compatibility bridge preserves configured Supabase functions; independent operation is not achieved.
- Next action: migrate lead/OTP flows first, then AI/content jobs, then analytics/realtime.

### 5. Storage migration

- What is left: object-level inventory, independent backup, copy, checksums, signed/public URL strategy and database URL backfill. Five bucket configurations and policy counts are verified live.
- Why blocked: the dashboard object-count query did not complete during a Supabase incident; source object-read credentials and destination object-store credentials are unavailable.
- Required: source read access, destination bucket/key, CDN hostname and retention policy.
- Affected: admin uploads, ads, user documents, legacy public assets and content images.
- Safe without it: only while Supabase Storage remains active.
- Next action: run an inventory-only migration, then checksum-verified dual-read copy.

### 6. Production performance and deployment verification

- What is left: Docker builds, deployed integration/E2E tests, Lighthouse/Core Web Vitals baselines, load tests, WAF/rate limits and rollback drill.
- Why blocked: Production container builds are verified in GitHub CI and the
  public Git source is prepared. DigitalOcean access is verified, but the
  project is empty and the user explicitly deferred paid resource creation.
- Required: approve the approximately $72.45/month base stack; then deploy the
  CI-verified images through App Platform with a production-like dataset and an
  approved DNS plan. GitHub App access is optional for deploy-on-push only.
- Affected: deployment readiness and every “production verification pending” item.
- Safe without it: code can be reviewed/built, but must not replace production yet.
- Next action: run CI, deploy staging, validate CWV/security/E2E, then perform a canary cutover.

### 7. Legacy lint debt

- What is left: resolve 2,022 errors and 106 warnings in the retained Vite/Supabase application and Edge Functions, predominantly unsafe `any` types plus hook, empty-block and regular-expression findings.
- Why blocked: this is pre-existing debt distributed across the legacy application; bulk suppression would hide risk and a safe correction requires feature-specific tests and provider fixtures.
- Required: staged fixes by module, test fixtures for affected integrations, and review owners for the admin and Edge Function surfaces.
- Affected: `src/`, `scripts/`, `e2e/`, `supabase/functions/`, `tailwind.config.ts` and `vite.config.ts`.
- Safe without it: current typed build and 114-test suite pass, but lint must remain a visible non-blocking CI baseline until resolved; it is not acceptable as the final target-state quality gate.
- Next action: freeze the baseline, prohibit new findings, then burn it down by migrated capability.

## Exact completion order

1. Rotate the disclosed Supabase secret, update approved consumers, revoke the
   old key, and review audit logs.
2. Keep the verified target-stack gates green and freeze the legacy lint
   baseline so new findings cannot be added.
3. Obtain an owner-approved RLS-complete Supabase export path, then confirm the
   DigitalOcean purchase and provision the Bangalore staging stack. Optionally
   authorize the repository-scoped GitHub App for deploy-on-push.
4. Import and verify database data; run Spring in shadow mode.
5. Configure Auth and verify password, refresh, recovery, OAuth and phone OTP
   with role fixtures.
6. Port admin/user APIs and routes while reproducing every RLS rule server-side.
7. Port decision tools, gated study downloads, landing/premium pages and
   short-link analytics/management with E2E parity.
8. Migrate Edge Functions/schedules/Realtime by business-risk order and clear
   their lint findings as they move.
9. Copy Storage to Spaces with checksums and a dual-read rollback window.
10. Clear the remaining legacy lint baseline or delete superseded legacy
    modules after parity approval.
11. Run container, integration, E2E, security, accessibility, load and Core Web
    Vitals checks in staging.
12. Canary production traffic, monitor, complete cutover, then retire
    compatibility only after the rollback window.
