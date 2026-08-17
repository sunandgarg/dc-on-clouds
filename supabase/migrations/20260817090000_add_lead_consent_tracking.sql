-- Track whether users kept or unchecked the Privacy / Terms consent checkbox
-- on every lead form. Existing leads remain treated as consented so old data
-- does not suddenly appear as "No consent".

ALTER TABLE public.leads
  ADD COLUMN IF NOT EXISTS consent_terms_accepted boolean NOT NULL DEFAULT true,
  ADD COLUMN IF NOT EXISTS consent_text text,
  ADD COLUMN IF NOT EXISTS consent_at timestamptz;

UPDATE public.leads
SET consent_terms_accepted = true
WHERE consent_terms_accepted IS NULL;

CREATE INDEX IF NOT EXISTS idx_leads_consent_terms_accepted
  ON public.leads(consent_terms_accepted);

CREATE INDEX IF NOT EXISTS idx_leads_consent_at
  ON public.leads(consent_at);
