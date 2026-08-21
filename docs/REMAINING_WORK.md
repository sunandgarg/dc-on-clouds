# Remaining Work / Blockers

This report records every part of the migration that could not be completed or
production-verified in the current environment. It must be read together with
`MIGRATION_STATUS.md`; neither document treats an unverified item as complete.

## 1. Provision and validate the production PostgreSQL target

- **What is left:** Create the target PostgreSQL instance, apply the complete
  Supabase schema and data migration, reconcile row counts, constraints,
  indexes, functions, triggers, and RLS behavior, and run rollback/recovery
  drills.
- **Why it is blocked:** The authenticated dashboard was audited, but it does
  not provide a database password or an approved export channel. No target
  endpoint, credentials, maintenance window, or approved data-transfer path
  was supplied. Docker is also unavailable locally.
- **Required to complete:** A temporary read-only libpq service for the source,
  target database connection details, an approved maintenance/cutover window,
  backup retention requirements, and Docker or an equivalent PostgreSQL
  runtime. Start with `database/scripts/capture-source.sh`.
- **Affected:** `database/`, `db-export/`, `supabase/migrations/`,
  `backend-java/src/main/resources/db/migration/`, all database-backed
  features.
- **Safe without it:** Yes for source review and builds; no for a production
  cutover or claims of migrated production data.
- **Recommended action:** Rehearse against a disposable target first, record a
  reconciliation report, then repeat under an approved cutover runbook.

## 2. Replace the full Supabase compatibility surface

- **What is left:** Port all remaining direct client queries, RPC calls,
  Realtime subscriptions, Storage operations, and the 36 deployable Edge Functions to
  owned Spring services or explicitly retained infrastructure.
- **Why it is blocked:** The repository contains 108 frontend files with direct
  Supabase usage and integrations whose live configuration is now inventoried,
  but whose provider behavior and credentials cannot be validated safely. The current implementation intentionally
  provides a core Spring API and a controlled compatibility allowlist instead
  of falsely declaring a big-bang rewrite complete.
- **Required to complete:** Working provider credentials and sandboxes,
  production traffic/use-case inventory, product acceptance criteria, and
  access to the deployed Supabase project.
- **Affected:** Legacy `src/`, `supabase/functions/`, authentication, uploads,
  Realtime logs/profile updates, AI, SMS, email, lead, and scheduled-job flows.
- **Safe without it:** Yes while the legacy deployment remains available and
  `LEGACY_FRONTEND_URL`/Supabase compatibility are configured; no after those
  systems are removed.
- **Recommended action:** Port and verify one bounded capability at a time,
  remove it from the compatibility allowlist, and track parity evidence.

## 3. Complete authentication cutover

- **What is left:** Validate sign-in, refresh, sign-out, password recovery,
  OAuth, OTP, authorization roles, token expiry, session revocation, and admin
  access against the real Supabase tenant; then decide whether to retain or
  replace Supabase Auth.
- **Why it is blocked:** No Supabase URL/keys, OAuth applications, SMS provider
  access, test users, or production auth policy were supplied.
- **Required to complete:** Approved production/callback URLs, secret-manager
  configuration, OAuth/SMS credentials if those flows are retained, test users
  for each role, and an approved target identity architecture. Dashboard access
  is available; safe test identities and provider secrets are not.
- **Affected:** `frontend/app/auth/`, `frontend/app/api/auth/`,
  `backend-java/.../auth/`, protected routes and admin functionality.
- **Safe without it:** Public content can run; authenticated and administrative
  workflows must not be considered production-ready.
- **Recommended action:** Run an auth-specific staging test matrix before any
  user traffic is routed to the new stack.

## 4. Validate external services and scheduled workloads

- **What is left:** Verify AI providers, SMS/OTP, AWS SES, Google services,
  lead integrations, cron jobs, webhooks, and any Cloudflare-hosted worker.
- **Why it is blocked:** Provider credentials, external dashboards, callback
  URLs, quotas, and deployment permissions are unavailable.
- **Required to complete:** Provider-specific sandbox/production credentials,
  callback-domain ownership, secret-manager access, alert destinations, and
  test fixtures.
- **Affected:** `supabase/functions/`, `cloudflare-worker/`, notification,
  contact, lead, AI, and scheduled-processing features.
- **Safe without it:** Core public read pages can run; the listed integrations
  will not be reliable and must remain disabled or on the legacy path.
- **Recommended action:** Validate each provider in staging, including failure
  and retry behavior, before enabling its feature flag.

## 5. Production SEO, performance, accessibility, and analytics proof

- **What is left:** Crawl the deployed site, reconcile the full legacy URL
  inventory, validate canonical/structured data, submit sitemaps, run real-user
  and lab performance testing, complete an accessibility audit, and verify
  analytics/consent behavior.
- **Why it is blocked:** There is no deployed target URL, production dataset,
  Search Console/analytics access, representative traffic, or browser test
  environment configured for the new stack.
- **Required to complete:** Staging and production URLs, DNS/TLS/CDN access,
  Search Console and analytics permissions, a representative database, and
  agreed performance/accessibility budgets.
- **Affected:** `frontend/app/`, dynamic metadata, sitemap, robots, JSON-LD,
  redirects, images, fonts, consent and analytics.
- **Safe without it:** The implementation contains production-oriented SEO
  primitives; rankings, Core Web Vitals, accessibility conformance, and
  analytics correctness remain unproven.
- **Recommended action:** Run the crawl and performance/a11y gates on staging,
  remediate, then repeat after canary release.

The public school and college study directories are now implemented in Next.js
and Spring. Their file URLs remain intentionally absent from public API
responses until the authenticated/OTP download flow can be verified with live
provider credentials; this is a security safeguard, not an omitted link.

All four public short-link route forms are also native. Completing that feature
still requires migrating the authenticated admin UI plus per-click IP/device,
referrer and geographic analytics and verifying redirects against real mapping
data; the current native path safely resolves and increments aggregate clicks.

## 6. Build, scan, publish, deploy, and operate containers

- **What is left:** Build both images, run them with PostgreSQL, scan images and
  dependencies, publish to a registry, deploy to the target platform, configure
  secrets/observability/backups, and execute smoke, load, rollback, and recovery
  tests.
- **Why it is blocked:** Docker is not installed locally. The authenticated
  DigitalOcean `DekhoCampus` project was verified and is empty. Provisioning the
  prepared $72.45/month base stack and installing DigitalOcean's GitHub App for
  the private repository are chargeable/permission-changing actions requiring
  explicit confirmation immediately before execution.
- **Required to complete:** Confirm the exact DigitalOcean purchase and GitHub
  App scope, then create the Bangalore resources from `.do/app.yaml`; provide
  environment-specific encrypted secrets, domains/DNS, monitoring/alerting
  destinations, a Docker-capable build runner, and an approved release window.
- **Affected:** `compose.yml`, both Dockerfiles, `.github/workflows/`, runtime
  environment configuration and all production operations.
- **Safe without it:** Source builds and tests can run; production deployment
  cannot.
- **Recommended action:** Build and scan immutable images in CI, deploy to
  staging, prove rollback and restore, then use a canary production rollout.

The recommended base purchase is documented in
`docs/DIGITALOCEAN_DEPLOYMENT.md`: $12 Next.js + $25 Spring + $30.45 managed
PostgreSQL + $5 Spaces, approximately $72.45/month before tax and overages.

## 9. Rotate the disclosed Supabase secret

- **What is left:** Revoke/rotate the Supabase server secret pasted into chat,
  update only approved encrypted secret stores, and verify the old key fails.
- **Why it is blocked:** Rotation affects live integrations and requires an
  owner-approved inventory and maintenance window. The secret was intentionally
  not copied into source files, commands, logs, or DigitalOcean.
- **Required to complete:** Supabase owner approval, an inventory of consumers,
  replacement secret distribution through encrypted runtime configuration, and
  a revocation test.
- **Affected:** Any server, Edge Function, script, or integration using the old
  service-role secret.
- **Safe without it:** No. Treat the disclosed key as compromised. The current
  source tree remains safe because the key is absent from it, but live consumers
  remain at risk until rotation.
- **Recommended action:** Rotate first, update known consumers atomically, revoke
  the old key, and review Supabase audit logs.

## 7. Retire the legacy lint baseline

- **What is left:** Resolve 2,022 errors and 106 warnings in the retained
  Vite/Supabase code. Most findings are unsafe `any` types, with additional
  React hook, empty-block, import, and regular-expression findings.
- **Why it is blocked:** The debt predates this target-stack work and spans
  feature-heavy admin and Edge Function code. Automatically suppressing it
  would conceal real defects; safe fixes require provider fixtures and focused
  regression tests.
- **Required to complete:** Module owners, representative integration fixtures,
  a frozen error-count baseline, and incremental reviewed fixes.
- **Affected:** `src/`, `scripts/`, `e2e/`, `supabase/functions/`,
  `tailwind.config.ts`, and `vite.config.ts`.
- **Safe without it:** The legacy TypeScript check, 114 tests, and Vite build
  pass. The lint job is explicitly non-blocking in migration CI, so this is safe
  only as temporary compatibility debt, not as a final production quality bar.
- **Recommended action:** Reject new lint findings and clear existing findings
  in the same order that legacy capabilities are migrated.

## 8. Live Supabase advisor remediation

- **What is left:** Export and classify all 79 Security Advisor warnings and
  633 Performance Advisor warnings; fix the security-definer view, mutable
  function search paths, permissive RLS policies, and per-row Auth/RLS calls;
  rerun the advisors and authorization/performance tests.
- **Why it is blocked:** Applying these changes directly to the only live
  project could break access control. The dashboard incident also prevented a
  complete export during this run, and no staging clone or role fixtures exist.
- **Required to complete:** A current schema dump, advisor exports, a restored
  staging clone, test users for every role, representative query workload, and
  approval for the resulting reviewed migration.
- **Affected:** RLS-protected tables, public database functions,
  `college_editorial_completion_progress`, Auth-backed pages and query latency.
- **Safe without it:** The existing production remains unchanged, but the
  advisor risks remain. They block security/performance sign-off for cutover.
- **Recommended action:** Restore staging, reproduce the findings, add
  permission tests, apply changes in small migrations, compare query plans,
  then rerun both advisors before production rollout.

## Exact completion order

1. Rotate the disclosed Supabase secret, update approved consumers, revoke the
   old key, and review audit logs.
2. Freeze the legacy lint baseline and keep the target-stack quality gates green.
3. Confirm the DigitalOcean purchase and GitHub App repository scope.
4. Supply remaining access through the approved secret manager; never commit secrets.
5. Provision disposable PostgreSQL and deployment staging environments.
6. Capture the live source, restore it to staging, and reconcile schema/data.
7. Export/remediate advisor findings in staging and prove RLS permission parity.
8. Validate authentication and role authorization against staging.
9. Port and verify Edge Functions, direct Supabase calls, Realtime, and Storage
   capability by capability.
10. Validate all external providers and scheduled jobs with failure tests.
11. Clear or retire each capability's legacy lint findings during its port.
12. Run regression, integration, end-to-end, security, accessibility, SEO, and
   performance gates against representative staging data.
13. Build, scan, sign, and publish immutable container images.
14. Rehearse backup, Storage restore, rollback, monitoring, and incident alerts.
15. Execute a canary production cutover, reconcile data and traffic, and retire
    legacy paths only after the acceptance window passes.
