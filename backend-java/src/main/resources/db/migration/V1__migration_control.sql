CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE IF NOT EXISTS public.platform_migration_control (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  component text NOT NULL UNIQUE,
  status text NOT NULL CHECK (status IN ('compatibility','migrated','verified','blocked')),
  notes text NOT NULL DEFAULT '',
  updated_at timestamptz NOT NULL DEFAULT now()
);
INSERT INTO public.platform_migration_control(component,status,notes) VALUES
 ('database','compatibility','Existing Supabase PostgreSQL remains authoritative until live export validation and cutover.'),
 ('authentication','compatibility','Spring gateway preserves Supabase Auth users using server-set HTTP-only cookies.'),
 ('edge-functions','compatibility','Allowlisted Spring bridge preserves Edge Functions pending native service migration.'),
 ('storage','blocked','Object copy requires Supabase and destination object-storage credentials.')
ON CONFLICT(component) DO UPDATE SET status=excluded.status,notes=excluded.notes,updated_at=now();
