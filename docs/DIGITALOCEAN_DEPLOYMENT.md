# DigitalOcean production deployment

Updated: 2026-08-21

This runbook is prepared for the existing DigitalOcean project `DekhoCampus`.
The account was inspected through its authenticated control panel on 2026-08-21:
the project exists, has a payment method, and currently contains **no resources**.
No chargeable resource has been created without an explicit purchase confirmation.

## Recommended production topology

Deploy all components in Bangalore (`blr`) to minimize latency to the current
Supabase Mumbai region and the primary audience:

| Component | Recommended plan | Monthly list price observed |
|---|---:|---:|
| Next.js App Platform service | shared 1 vCPU / 1 GiB | $12.00 |
| Spring App Platform service | shared 1 vCPU / 2 GiB | $25.00 |
| Managed PostgreSQL 18 | 1 vCPU / 2 GiB / 30 GiB / 47 connections | $30.45 |
| Spaces object storage | base plan | $5.00 |
| **Estimated base total** | | **$72.45/month** |

Taxes, bandwidth/storage overages, backups beyond included allowances, domains,
CDN products, and future scaling are not included. The 1 GiB PostgreSQL option
was rejected because its 22-connection limit is below the 26 connections
observed on the source snapshot. The selected backend pool is capped at 15 to
leave headroom for migrations, operations, and scale-out.

For a lower-cost staging environment, use the smallest App Platform instances
and a disposable development database. Do not use a development database for
production.

## Prepared application specification

`.do/app.yaml` defines the two services, Bangalore region, health checks,
graceful termination, private service-to-service traffic, and the production
database binding. It contains no credential value. Because the repository was
verified public on 2026-08-21, both services use its anonymous HTTPS Git source;
manual App Platform deployment does not require DigitalOcean GitHub access. It
assumes a managed PostgreSQL cluster named `dc-on-clouds-db`.

Anonymous public-Git sources do not provide GitHub-triggered deploy-on-push. If
the repository becomes private again, or automatic deployments are required,
authorize the DigitalOcean GitHub App as follows:

1. In DigitalOcean, open **Apps** → **Create App** and choose **GitHub**.
2. Select **Manage Access** or **Install DigitalOcean GitHub App**.
3. In GitHub, choose the `sunandgarg` account, select **Only select
   repositories**, and select only `dc-on-clouds`.
4. Choose **Install/Authorize**, return to DigitalOcean, select the `main`
   branch, and enable automatic deployment.

This permission grant is optional while the repository remains public and was
not performed during the no-payment preparation run.

DigitalOcean supplies `${dc-postgres.JDBC_DATABASE_URL}` and the database user
and password at runtime. The frontend reaches Spring over
`${backend.PRIVATE_URL}` rather than the public internet. Only the Next.js
service is exposed by ingress.

The following must be entered as encrypted runtime variables in DigitalOcean:

- `SUPABASE_PUBLISHABLE_KEY` while Supabase Auth compatibility remains active.
- `LEGACY_FRONTEND_URL` only if compatibility routes need the old deployment;
  leave it unset if no safe non-looping legacy origin exists.
- Provider secrets for any Edge Function workflow when each workflow is ported.

Never enter the Supabase service-role secret into a build-time variable or
commit it. The key disclosed in chat must be rotated in Supabase before the
production deployment is considered secure.

## Provisioning and migration order

1. Confirm the $72.45/month base purchase. Keep the anonymous public-Git source,
   or optionally authorize DigitalOcean's GitHub App for **only**
   `sunandgarg/dc-on-clouds` if automatic deployments are required.
2. Create `dc-on-clouds-db` in Bangalore on PostgreSQL 18, 1 vCPU / 2 GiB /
   30 GiB, enable storage autoscaling and scheduled backups, then add the App
   Platform app as a trusted source.
3. Use the verified temporary Supabase PostgreSQL role for schema/inventory
   capture. For complete data, obtain an owner-approved export connection with
   visibility through all RLS policies; plain `GRANT SELECT` is insufficient.
4. Run `database/scripts/capture-source.sh` to create a fresh encrypted logical
   dump. Transfer it directly over encrypted channels; never commit artifacts.
5. Restore to a disposable database first. Reconcile extensions, schemas,
   tables, constraints, indexes, routines, triggers, sequences, row counts, and
   sampled checksums. Record every unsupported Supabase-specific object.
6. Apply the Spring Flyway migrations and run the target test suite against the
   restored staging database. Verify the 276 source RLS policies have equivalent
   server-side authorization before protected traffic moves.
7. Create the App Platform app from `.do/app.yaml`, enter encrypted variables,
   and deploy a staging hostname. Run auth, route, SEO, accessibility, security,
   load, and Core Web Vitals gates.
8. Create a Spaces bucket in Bangalore, perform an inventory-only pass, copy
   objects with checksums, and use a dual-read rollback window before URL
   backfills. Supabase database backups do not contain Storage objects.
9. Pause writes for the approved cutover, take and restore the final delta,
   verify counts/sequences/checksums, switch DNS with a low TTL, and monitor.
10. Keep Supabase database, Auth, Functions, Realtime, and Storage available
    until their individual rollback windows and parity sign-offs are complete.

## Performance and reliability settings

- Keep App Platform and PostgreSQL in the same Bangalore VPC and use bindable
  private endpoints.
- Start with one service instance each and Hikari pool maximum 15. Before adding
  a second Spring instance, reduce per-instance pools or increase database
  connection capacity.
- Keep PostgreSQL storage autoscaling and daily backups enabled; prove a restore
  before cutover.
- Use immutable deploys from `main`, health probes, deployment-failure alerts,
  structured request logs, and correlation IDs already implemented in Spring.
- Put public assets in Spaces behind its CDN only after checksum verification.
- Collect real-user Core Web Vitals and backend/database latency before tuning;
  scale the measured bottleneck instead of increasing every plan.

## Rollback

Before DNS cutover, retain the previous frontend origin, Supabase endpoints, a
timestamped final dump, object manifests/checksums, and the old DNS values. If
authorization, data reconciliation, error rate, or latency breaches its agreed
threshold, stop writes, restore DNS to the legacy stack, reconcile any accepted
writes, and investigate in staging. Do not destroy Supabase resources during
the rollback window.

## References

- DigitalOcean App Platform app-spec reference:
  https://docs.digitalocean.com/products/app-platform/reference/app-spec/
- DigitalOcean bindable environment variables:
  https://docs.digitalocean.com/products/app-platform/how-to/use-environment-variables/
- DigitalOcean App Platform pricing:
  https://docs.digitalocean.com/products/app-platform/details/pricing/
