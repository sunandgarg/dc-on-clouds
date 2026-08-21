# Target architecture

## Runtime

```text
Browser / crawler
      |
Cloudflare CDN and WAF
      |
Next.js 16.3 App Router (React 19.2, SSR/ISR/RSC)
      |
Spring Boot 4.1 modular monolith (Java 25)
      |
PostgreSQL 17 + Flyway
      |
S3-compatible object storage (DigitalOcean Spaces)
```

During migration, Spring contains explicit compatibility gateways to Supabase Auth and allowlisted Edge Functions. Unmigrated web routes can redirect to a separately deployed legacy origin. These are temporary dependencies, observable in `platform_migration_control`, and are not counted as completed migration.

## Frontend

- Server Components for public listings/details; Client Components only for interactive forms and filters.
- Server-only API access through `INTERNAL_API_URL`; no database/service-role key in browser bundles.
- ISR tags for public content, no-store for account/admin data, CDN caching only for public responses.
- Route-owned metadata, canonical URLs, JSON-LD, robots and dynamic sitemap.
- Original blue/orange brand, information architecture and URLs retained as the migration baseline.

## Backend modules

- `content`: allowlisted, validated public read API with pagination/search and bounded response size.
- `about`, `study` and `collegestudy`: aggregate public information and school/college study-resource APIs that avoid browser waterfalls and withhold gated file URLs.
- `redirects`: server-side short-link resolution with bounded identifiers, expiry/activity enforcement and safe redirect-target validation.
- `auth`: Supabase Auth compatibility gateway with HTTP-only cookies, evolving to a native identity provider only after account-migration validation.
- `api/functions`: allowlisted temporary bridge for existing Edge Functions.
- `observability`: correlation IDs, structured logs, Actuator readiness/liveness/metrics.
- Planned modules: admin content, leads, users, study material, decision tools, storage, integrations, jobs.

DTO/API responses are separated from persistence by JSON document mapping. Dynamic table or sort input is never accepted from callers; resource identifiers are server allowlists.

## Authentication and authorization

- Spring validates Supabase JWT signatures using the project JWKS.
- Login tokens are returned to the browser only as Secure, SameSite=Lax, HTTP-only cookies.
- Existing `user_roles` and `user_permissions` remain authoritative during compatibility.
- Every native admin mutation must add a server-side permission check before its RLS dependency is removed.
- Google OAuth, phone OTP, password recovery and token refresh require live-provider integration tests before cutover.

## Database

- Production migration begins from a verified `pg_dump --schema-only` plus row counts/checksums, not the historical SQL directory alone.
- Flyway is additive and forward-only. Destructive changes require expand/backfill/verify/contract phases and a restore-tested backup.
- HikariCP provides pooling. List/detail indexes target active content and stable pagination.
- JSON remains where it represents flexible authored content; relational domains remain relational.

## Storage

- Destination: private DigitalOcean Spaces buckets with signed URLs for user documents and public CDN paths for published media.
- Migration: inventory → copy → checksum → dual-read → URL backfill → cutover → delayed source retirement.
- No object is deleted from Supabase during migration.

## Deployment

- Multi-stage, non-root Docker images and health checks.
- GitHub Actions verifies legacy regressions plus new frontend/backend builds.
- Recommended DigitalOcean topology: managed PostgreSQL, App Platform or Droplet containers, Spaces, Cloudflare proxy/WAF.
- Secrets belong in deployment secret stores. Production uses `SECURITY_REQUIRE_AUTH=true` and TLS-only cookies.

## Primary risks

1. Auth account continuity and provider configuration.
2. Replacing 276 live RLS policies without permission regression.
3. Edge Function/integration behavior and third-party secrets.
4. Data and Storage copy completeness.
5. Visual/behavior parity across 155 routes.
6. Production traffic, crawl and Core Web Vitals verification.
