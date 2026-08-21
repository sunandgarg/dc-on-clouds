# Database migration runbook

The checked-in Flyway migrations create a safe minimal local schema and a migration-control ledger. They do not represent a verified production clone. The authenticated live audit is recorded in `docs/LIVE_SUPABASE_AUDIT.md`; it confirms that the checked-in schema snapshot has substantial drift.

## Safe source capture

`live-inventory.sql` is read-only and deliberately avoids outputting table rows,
secrets, or cron command bodies. `scripts/capture-source.sh`
creates a public-schema custom dump, a schema-only dump, an inventory report,
and SHA-256 manifests. It does **not** export Supabase Auth or Storage payloads.
The source role must have complete visibility through every public-table RLS
policy (or an owner-approved equivalent export path). Plain `GRANT SELECT` does
not bypass RLS; the script fails instead of silently creating a partial dump.

Configure a libpq service entry backed by a temporary password file or your
approved secret manager; this keeps credentials out of shell history and
process arguments. Then run with a read-only source role:

```sh
export SOURCE_PG_SERVICE=dc_supabase_readonly
database/scripts/capture-source.sh /absolute/encrypted/path/source-capture
```

Treat the resulting dump as sensitive production data. Encrypt it at rest,
limit access, record custody, and delete it according to the approved retention
policy after cutover.

On 2026-08-21, `codex_readonly` was verified with forced read-only sessions,
no elevated role attributes, and a 24-hour expiry. The live schema-only export
succeeded. Full data export stopped at `public.about_founders` because RLS
applies to that role, so the output is not a restorable production-data backup.
The private capture artifacts were kept outside the repository.

Production sequence:

1. Create a restore-tested Supabase backup, a separate Storage backup, and record table row counts, sequences, extensions, functions, triggers and RLS policies.
2. Export schema and data with approved credentials; exclude provider-managed Auth schemas unless the provider's documented migration supports them.
3. Apply Flyway to a staging PostgreSQL 17 instance and import in dependency order.
4. Compare row counts, primary-key checksums, foreign keys, sequences and representative queries.
5. Run the Spring API in shadow/read-only mode and compare responses.
6. Freeze writes briefly or use change-data replication, apply the delta, then cut reads/writes over.
7. Retain Supabase without deletion until rollback criteria and the observation window pass.

Before the first staging import, export the full Security and Performance
Advisor reports. In particular, prove access parity before changing
`college_editorial_completion_progress` to `security_invoker`, and rewrite RLS
Auth helpers as init-plan subqueries only after permission tests pass.

Never run the historical Supabase migration directory blindly against production or a vanilla PostgreSQL server: it contains provider roles, Auth dependencies, cron schedules and outbound network calls.
