-- Admin URL Shortener integration
-- Idempotent schema for /admin/url-shortener and /s/:code redirects.

CREATE TABLE IF NOT EXISTS public.url_mappings (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  short_code varchar(10) NOT NULL,
  original_url text NOT NULL,
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at timestamptz NOT NULL DEFAULT now(),
  expires_at timestamptz,
  clicks integer NOT NULL DEFAULT 0,
  is_active boolean NOT NULL DEFAULT true,
  custom_code boolean NOT NULL DEFAULT false,
  title text,
  tags text[] DEFAULT '{}',
  last_checked_at timestamptz,
  is_healthy boolean DEFAULT true,
  header varchar(50),
  user_tracking boolean DEFAULT true,
  code_length integer DEFAULT 6,
  domain text
);

ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS header varchar(50);
ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS user_tracking boolean DEFAULT true;
ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS code_length integer DEFAULT 6;
ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS domain text;
ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS tags text[] DEFAULT '{}';
ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS last_checked_at timestamptz;
ALTER TABLE public.url_mappings ADD COLUMN IF NOT EXISTS is_healthy boolean DEFAULT true;

CREATE UNIQUE INDEX IF NOT EXISTS url_mappings_short_code_null_header_uidx
  ON public.url_mappings (short_code)
  WHERE header IS NULL;

CREATE UNIQUE INDEX IF NOT EXISTS url_mappings_header_short_code_uidx
  ON public.url_mappings (header, short_code)
  WHERE header IS NOT NULL;

CREATE INDEX IF NOT EXISTS idx_url_mappings_user_id ON public.url_mappings(user_id);
CREATE INDEX IF NOT EXISTS idx_url_mappings_created_at ON public.url_mappings(created_at DESC);
CREATE INDEX IF NOT EXISTS idx_url_mappings_header_code ON public.url_mappings(header, short_code);
CREATE INDEX IF NOT EXISTS idx_url_mappings_active_code ON public.url_mappings(short_code, is_active);

ALTER TABLE public.url_mappings ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public can read active URLs for redirect" ON public.url_mappings;
CREATE POLICY "Public can read active URLs for redirect"
ON public.url_mappings FOR SELECT
USING (is_active = true);

DROP POLICY IF EXISTS "Users can view their own URLs" ON public.url_mappings;
CREATE POLICY "Users can view their own URLs"
ON public.url_mappings FOR SELECT TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

DROP POLICY IF EXISTS "Users can create their own URLs" ON public.url_mappings;
CREATE POLICY "Users can create their own URLs"
ON public.url_mappings FOR INSERT TO authenticated
WITH CHECK (auth.uid() = user_id);

DROP POLICY IF EXISTS "Users can update their own URLs" ON public.url_mappings;
CREATE POLICY "Users can update their own URLs"
ON public.url_mappings FOR UPDATE TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role))
WITH CHECK (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

DROP POLICY IF EXISTS "Users can delete their own URLs" ON public.url_mappings;
CREATE POLICY "Users can delete their own URLs"
ON public.url_mappings FOR DELETE TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

CREATE TABLE IF NOT EXISTS public.url_clicks (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  url_id uuid NOT NULL REFERENCES public.url_mappings(id) ON DELETE CASCADE,
  clicked_at timestamptz NOT NULL DEFAULT now(),
  ip_address varchar(45),
  user_agent text,
  referrer text,
  country varchar(100),
  city varchar(100),
  device_type varchar(50),
  browser varchar(100),
  os varchar(100)
);

CREATE INDEX IF NOT EXISTS idx_url_clicks_url_id ON public.url_clicks(url_id);
CREATE INDEX IF NOT EXISTS idx_url_clicks_clicked_at ON public.url_clicks(clicked_at DESC);

ALTER TABLE public.url_clicks ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view their URL clicks" ON public.url_clicks;
CREATE POLICY "Users can view their URL clicks"
ON public.url_clicks FOR SELECT TO authenticated
USING (
  public.has_role(auth.uid(), 'admin'::app_role)
  OR EXISTS (
    SELECT 1
    FROM public.url_mappings
    WHERE url_mappings.id = url_clicks.url_id
      AND url_mappings.user_id = auth.uid()
  )
);

DROP POLICY IF EXISTS "Anyone can insert clicks" ON public.url_clicks;
CREATE POLICY "Anyone can insert clicks"
ON public.url_clicks FOR INSERT
WITH CHECK (true);

DROP POLICY IF EXISTS "Anyone can record clicks" ON public.url_clicks;
CREATE POLICY "Anyone can record clicks"
ON public.url_clicks FOR INSERT
WITH CHECK (true);

CREATE TABLE IF NOT EXISTS public.url_bulk_imports (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid REFERENCES auth.users(id) ON DELETE CASCADE,
  file_name text NOT NULL,
  total_urls integer NOT NULL DEFAULT 0,
  success_count integer NOT NULL DEFAULT 0,
  error_count integer NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'pending',
  error_report jsonb DEFAULT '[]'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  completed_at timestamptz
);

ALTER TABLE public.url_bulk_imports ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can manage their imports" ON public.url_bulk_imports;
CREATE POLICY "Users can manage their imports"
ON public.url_bulk_imports FOR ALL TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role))
WITH CHECK (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

CREATE TABLE IF NOT EXISTS public.url_api_keys (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  key_hash text NOT NULL,
  key_prefix varchar(10) NOT NULL,
  name text NOT NULL,
  permissions text[] DEFAULT ARRAY['read', 'create'],
  rate_limit integer NOT NULL DEFAULT 100,
  requests_today integer NOT NULL DEFAULT 0,
  last_used_at timestamptz,
  expires_at timestamptz,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.url_api_keys ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can manage their API keys" ON public.url_api_keys;
CREATE POLICY "Users can manage their API keys"
ON public.url_api_keys FOR ALL TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role))
WITH CHECK (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

CREATE TABLE IF NOT EXISTS public.custom_domains (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  domain text NOT NULL UNIQUE,
  status text NOT NULL DEFAULT 'pending',
  verification_token text NOT NULL DEFAULT md5(gen_random_uuid()::text || clock_timestamp()::text),
  verified_at timestamptz,
  ssl_status text DEFAULT 'pending',
  dns_config jsonb DEFAULT '{}'::jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.custom_domains ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Users can view their own domains" ON public.custom_domains;
CREATE POLICY "Users can view their own domains"
ON public.custom_domains FOR SELECT TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

DROP POLICY IF EXISTS "Users can insert their own domains" ON public.custom_domains;
CREATE POLICY "Users can insert their own domains"
ON public.custom_domains FOR INSERT TO authenticated
WITH CHECK (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

DROP POLICY IF EXISTS "Users can update their own domains" ON public.custom_domains;
CREATE POLICY "Users can update their own domains"
ON public.custom_domains FOR UPDATE TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role))
WITH CHECK (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

DROP POLICY IF EXISTS "Users can delete their own domains" ON public.custom_domains;
CREATE POLICY "Users can delete their own domains"
ON public.custom_domains FOR DELETE TO authenticated
USING (auth.uid() = user_id OR public.has_role(auth.uid(), 'admin'::app_role));

CREATE OR REPLACE FUNCTION public.increment_url_clicks(p_url_id uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE public.url_mappings
  SET clicks = clicks + 1
  WHERE id = p_url_id;
END;
$$;

CREATE OR REPLACE FUNCTION public.is_short_code_available(p_code varchar, p_header varchar DEFAULT NULL)
RETURNS boolean
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF p_header IS NOT NULL THEN
    RETURN NOT EXISTS (
      SELECT 1 FROM public.url_mappings
      WHERE short_code = p_code AND header = p_header
    );
  END IF;

  RETURN NOT EXISTS (
    SELECT 1 FROM public.url_mappings
    WHERE short_code = p_code AND header IS NULL
  );
END;
$$;

CREATE OR REPLACE FUNCTION public.reset_api_daily_limits()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE public.url_api_keys SET requests_today = 0;
END;
$$;

DROP TRIGGER IF EXISTS update_custom_domains_updated_at ON public.custom_domains;
CREATE TRIGGER update_custom_domains_updated_at
BEFORE UPDATE ON public.custom_domains
FOR EACH ROW
EXECUTE FUNCTION public.update_updated_at_column();
