-- Make the low-cost OpenAI cleaner the production default.
-- The API credential is stored separately as the OPENAI_API_KEY Edge Function secret.
INSERT INTO public.ai_runtime_controls (
  feature,
  display_name,
  is_enabled,
  provider,
  model,
  updated_at
)
VALUES (
  'data-cleaner',
  'Official data cleaner',
  true,
  'openai',
  'gpt-4o-mini',
  now()
)
ON CONFLICT (feature) DO UPDATE
SET is_enabled = true,
    provider = EXCLUDED.provider,
    model = EXCLUDED.model,
    stop_reason = null,
    updated_at = now();
