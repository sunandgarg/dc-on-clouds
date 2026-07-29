-- Route every DekhoCampus SMS OTP through Fast2SMS Smart OTP.
-- Existing credentials and template identifiers are preserved.
update public.otp_providers
set
  config_json = coalesce(config_json, '{}'::jsonb) || jsonb_build_object(
    'fast2sms_route', 'smart_otp',
    'route', 'smart_otp',
    'otp_fallback_to_dlt', false,
    'otp_verify_variant', 'direct',
    'otp_resend_variant', 'direct',
    'otp_length', 6,
    'otp_expiry_minutes', 10,
    'resend_cooldown_seconds', 45
  ),
  updated_at = now()
where lower(provider_name) = 'fast2sms'
  and channel = 'sms';

