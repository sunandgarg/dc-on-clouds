# Migration audit

Date: 2026-08-21

## Executive summary

The existing product is a Vite 5/React 18 single-page application generated and extended from Lovable. It is not a small brochure site: the route registry contains 155 routes, including a large CMS/admin surface, user dashboards, lead distribution, study material, calculators, landing pages, and public entity directories. The browser currently talks directly to Supabase for data, Auth, Storage, Realtime, RPC, and Edge Functions. A small Node AWS backend is a compatibility proxy, not an independent backend.

The checked-in database export contains 117 public tables, 140 indexes, 84 triggers, 24 database functions and 229 RLS policies. The authenticated live audit on 2026-08-21 instead found 145 public tables, 371 indexes, 378 triggers, 39 routines and 276 RLS policies, confirming substantial snapshot drift. There are 272 versioned Supabase SQL migrations and 36 deployable Edge Function directories plus `_shared`. Any claim of a completed Supabase exit without a fresh credentialed dump, Storage copy and reconciliation would be unsafe.

## Current architecture

- Frontend: Vite 5, React 18, TypeScript, React Router, TanStack Query, Tailwind/shadcn, client-rendered SEO helpers.
- Backend: Supabase PostgREST/Auth/Storage/Realtime/Edge Functions; Node compatibility proxy in `backend/`.
- Database: Supabase PostgreSQL, schema snapshot in `db-export/full_schema.sql`.
- Hosting: Cloudflare Pages plus a scheduled Cloudflare Worker; Vercel metadata also exists.
- Tests: Vitest unit/component tests and Playwright flows covering homepage, compare, priority colleges, OTP and article-link behavior.

## Route inventory

All 155 explicit routes in `src/App.tsx` were reviewed and grouped below. The per-route ledger is in `docs/ROUTE_INVENTORY.md`. A group is not marked migrated unless every route and flow in it is verified.

| Route group | Representative paths | Current migration state |
|---|---|---|
| Home | `/` | Next SSR implemented; live-data and visual parity verification pending |
| Auth/onboarding | `/auth`, `/onboarding` | Password gateway implemented; phone/OAuth/recovery remain compatibility/blocked |
| Colleges | `/colleges`, `/colleges/:slug`, nested tabs, legacy `/college/:slug` | Core listing/detail SSR implemented; filters, nested tabs and legacy redirect parity pending |
| Courses | `/courses`, `/courses/:slug`, nested tabs | Core listing/detail SSR implemented; full section parity pending |
| Exams | `/exams`, `/exams/:slug`, nested tabs, exam calendar | Listing/detail and current-year calendar SSR implemented; nested section parity pending |
| Articles/news | `/news`, tags, `/news/:slug`, legacy `/articles/**` | Listing/detail/tag SSR and permanent legacy redirects implemented; staging data parity pending |
| Decision tools | eligibility checker, predictor, CAT universe, lock-target aliases, target roadmap | Legacy bridge only; not migrated |
| User account | `/dashboard/**`, targets, documents, favorites, referrals | Legacy bridge only; not migrated |
| Premium/landing | `/premium-programs/**`, `/lp`, `/landing/:slug` | Premium core listing/detail SSR implemented; rich sections/leads and landing pages remain compatibility |
| Study material | `/study-material/**`, `/college-study-material/**`, `/resources/**` | School and college directories SSR through Spring with safe metadata-only downloads; OTP/gated downloads remain compatibility |
| Careers/jobs | `/careers/**`, `/jobs/**`, `/vacancies/**` | Core SSR and permanent vacancy aliases implemented; applications pending |
| Scholarships | `/scholarships/**` | Core SSR implemented; complete field/action parity pending |
| Company/legal/authors | `/about*`, `/legal/:slug`, `/author/:slug` | SSR implemented with sanitized rich content and permanent About alias; staging data parity pending |
| Student tools | `/tools`, `/tools/:slug`, `/compare` | Static listing and 7 calculator tools migrated; 5 data/AI tools retain explicit compatibility |
| URL redirects | `/s/**`, `/r/**` | Server-side resolution, expiry/activity checks, click-count increment and safe-target validation implemented; detailed analytics/admin parity pending |
| Admin CMS | `/admin` and all content-management routes | Legacy bridge only; not migrated |
| Admin leads/integrations | lead push, intelligence, automation, URLs, AI, logs, users, backups | Legacy bridge only; not migrated |

## Supabase inventory

- Data: at least 117 public tables; 108 frontend source files contain direct Supabase calls.
- Auth: live email/password signup and confirmation are enabled; one user exists. Built-in Google and phone providers are disabled. The codebase/deployed functions contain custom phone/OTP exchange, persisted browser sessions, database-backed roles and granular permissions. Live Site URL remains `http://localhost:3000` with no additional redirects.
- Storage: live buckets are `admin-uploads`, `ad-images`, `user-documents`, `legacy-public-assets`, and `study-material`. User documents require ownership enforcement; public content assets require immutable cache-safe URLs. Database backups do not include object payloads.
- Realtime: admin system logs and profile-change subscriptions.
- Edge Functions: AI generation/counselling, OTP, email, predictions, roadmaps, lead capture/dispatch, CSV export, blog automation, data cleaning, URL redirects and integration tests.
- Database logic: RLS policies, `has_role` and permission RPCs, search RPCs, event/intent logic, update triggers and webhook dispatch.
- Schedules: two live, active jobs call the blog agent every 30 minutes and the data cleaner every minute using `pg_cron`/`pg_net`; a Cloudflare Worker also contains a 30-minute schedule.
- External services detected: Google AI/Places, OpenAI, Anthropic, Mistral, xAI, AWS SES, Twilio, MSG91, Gupshup, Fast2SMS, Airtel/Jio/BSNL DLT, Nopaperforms, UpGrad and university webhooks.
- Required secrets detected by name only: Supabase URL/publishable/service key/JWKS; Google/OpenAI keys; AWS credentials/region/from-address; blog-agent secret. Secret values were not copied into new files.

## Data safety findings

- The repository has a schema-only export and the production dashboard was audited, but no database-password-authenticated production dump was available during this run.
- Existing Supabase migrations include platform-specific roles, Auth references, extensions, cron and network calls. Replaying them blindly against vanilla PostgreSQL is unsafe.
- The new Flyway migrations use additive `IF NOT EXISTS` DDL for a minimal clean install and a migration-control ledger. They do not delete, rewrite or import production data.
- Existing user passwords cannot be exported as plaintext. Supabase Auth must remain active until users are migrated through a supported token/account strategy.

## Security findings

- Authorization currently relies heavily on RLS and frontend permission discovery. Removing RLS without equivalent server checks would create IDOR/data-exposure risk.
- Browser-side Supabase data access is widespread and remains in the legacy app. The new Next runtime uses only the Spring API.
- Public event/lead insert policies and webhook endpoints require abuse controls and production rate-limit verification.
- The new Spring boundary adds JWT validation, strict CORS, request IDs, safe error bodies and HTTP-only Auth cookies; native authorization for the complete admin/user surface is not yet implemented.
- Live Security Advisor reports 1 error, 79 warnings and 4 suggestions. The
  critical item is the default security-definer view
  `college_editorial_completion_progress`; its definition is an aggregate over
  `college_editorial_completion_queue`, but switching it to invoker rights must
  be permission-tested in staging.
- Live Performance Advisor reports 0 errors, 633 warnings and 115 suggestions,
  including repeated Auth/RLS initialization-plan findings.

See `docs/LIVE_SUPABASE_AUDIT.md` for the complete verified dashboard snapshot.
