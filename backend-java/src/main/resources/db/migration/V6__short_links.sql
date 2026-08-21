CREATE TABLE IF NOT EXISTS public.url_mappings (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),short_code varchar(64) NOT NULL,original_url text NOT NULL,user_id uuid,
  created_at timestamptz NOT NULL DEFAULT now(),expires_at timestamptz,clicks integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,
  custom_code boolean NOT NULL DEFAULT false,title text,tags text[] NOT NULL DEFAULT '{}',last_checked_at timestamptz,is_healthy boolean NOT NULL DEFAULT true,
  header varchar(50),user_tracking boolean NOT NULL DEFAULT true,code_length integer NOT NULL DEFAULT 6,domain text
);
CREATE UNIQUE INDEX IF NOT EXISTS url_mappings_short_code_null_header_uidx ON public.url_mappings(short_code) WHERE header IS NULL;
CREATE UNIQUE INDEX IF NOT EXISTS url_mappings_header_short_code_uidx ON public.url_mappings(header,short_code) WHERE header IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_url_mappings_active_code ON public.url_mappings(short_code,is_active);
