# Production database rollback assessment

Assessment date: 2026-07-29 (Asia/Kolkata)

## Import being investigated

- Course/exam source files arrived around 2026-07-28 18:43–18:50 IST.
- Sanitized upserts and production verification completed around
  2026-07-28 19:17–19:19 IST.
- The import inserted 30 courses and 266 exams and updated 835 existing
  courses and 71 existing exams.

## Available managed backups

| Backup ID | Backup time (UTC) | Backup time (IST) | Position |
| ---: | --- | --- | --- |
| 1233586598 | 2026-07-28 19:45:22 | 2026-07-29 01:15:22 | After import |
| 1224855051 | 2026-07-27 19:45:19 | 2026-07-28 01:15:19 | Before import |

Point-in-time recovery is disabled. There is no managed restore point immediately
before the 19:19 IST import.

## Why an in-place full restore is unsafe

Restoring production to backup `1224855051` would roll back every database table
to 2026-07-28 01:15 IST, rather than only undoing the course/exam import.

At minimum, current production contains the following changes after that backup:

- 3 newly created/updated leads
- 310 user events
- 30 newly inserted courses
- 266 newly inserted exams
- 865 course rows whose `updated_at` changed
- 337 exam rows whose `updated_at` changed

Other tables without usable timestamps may also contain changes that this count
cannot detect.

## Safe rollback approach

1. Restore backup `1224855051` **to a new Supabase project**.
2. Export only the historical `courses` and `exams` tables from that clone.
3. Take a fresh current-production backup.
4. Produce a row-level diff keyed by stable `id`, not by name alone.
5. Restore the pre-import values for the 835 courses and 71 exams that were
   updated.
6. Remove the 30 courses and 266 exams inserted by the import only after checking
   for new foreign-key references.
7. Preserve the current `image` and `logo` whenever the historical value is empty,
   unless an exact full rollback of those asset columns is explicitly requested.
8. Verify frontend counts, relationships, search results and referential integrity.

Restoring a physical backup to a new project is a paid Supabase operation and
requires explicit approval in the Supabase dashboard.

## Current table snapshots retained locally

- `reports/pre-rollback-2026-07-29/courses-current.json`
- `reports/pre-rollback-2026-07-29/exams-current.json`

These are current-state safety snapshots captured at approximately 2026-07-29
12:48 IST. They do not contain the pre-import values.

## Decision

No production restore was executed. An exact selective rollback requires the
pre-import backup to be restored into a temporary project first. A full in-place
restore is not recommended because it would delete unrelated production activity.
