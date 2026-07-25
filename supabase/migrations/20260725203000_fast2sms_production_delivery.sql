-- Prefer a production-capable SMS route. The Edge Function attempts:
-- approved DLT -> approved OTP template -> legacy OTP compatibility route.
UPDATE public.otp_providers
SET config_json = COALESCE(config_json, '{}'::jsonb)
  || jsonb_build_object(
    'route', 'auto',
    'fast2sms_route', 'auto',
    'otp_fallback_to_dlt', true,
    'otp_length', 6,
    'otp_expiry_minutes', 10,
    'max_verify_attempts', 5,
    'resend_cooldown_seconds', 45
  ),
  updated_at = now()
WHERE lower(provider_name) = 'fast2sms'
  AND channel = 'sms';
