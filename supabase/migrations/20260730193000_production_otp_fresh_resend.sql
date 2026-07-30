-- Keep all login and lead-form codes on Fast2SMS's current production OTP API.
-- A resend is implemented by send-otp as a fresh OTP, so it is not constrained
-- by Fast2SMS's "resend last OTP" ten-minute provider window.
UPDATE public.otp_providers
SET
  config_json = COALESCE(config_json, '{}'::jsonb) || jsonb_build_object(
    'delivery_mode', 'production',
    'fast2sms_route', 'smart_otp',
    'route', 'smart_otp',
    'otp_fallback_to_dlt', false,
    'quick_enabled', false,
    'quick_fallback_to_dlt', false,
    'resend_strategy', 'fresh_otp',
    'otp_length', 6,
    'otp_expiry_minutes', 10,
    'resend_cooldown_seconds', 45
  ),
  updated_at = now()
WHERE lower(provider_name) = 'fast2sms'
  AND channel = 'sms';
