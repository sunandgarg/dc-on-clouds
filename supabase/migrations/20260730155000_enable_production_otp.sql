-- Keep lead and login OTP delivery in production mode. The send-otp function
-- still rate-limits requests and uses the first successful active SMS provider.
INSERT INTO public.lead_form_settings (
  singleton,
  otp_mode,
  channel_preference,
  form_overrides
)
VALUES (
  true,
  'on',
  'sms',
  '{}'::jsonb
)
ON CONFLICT (singleton) DO UPDATE
SET
  otp_mode = 'on',
  channel_preference = 'sms',
  updated_at = now();

UPDATE public.otp_providers
SET config_json = COALESCE(config_json, '{}'::jsonb) || jsonb_build_object(
  'delivery_mode', 'production',
  'fast2sms_route', 'smart_otp',
  'route', 'smart_otp'
)
WHERE lower(provider_name) = 'fast2sms'
  AND channel = 'sms';
