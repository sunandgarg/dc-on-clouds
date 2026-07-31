-- Approved service-implicit OTP template: available at all hours.
-- Fast2SMS Smart OTP ID: 9318bdac9f
-- DLT content template ID: 1777178548948652710
-- DLT reference: 11-1PKREMS8QC91B
UPDATE public.otp_providers
SET
  sender_id = 'DKCMPS',
  template_id = '9318bdac9f',
  config_json = (
    COALESCE(config_json, '{}'::jsonb)
      - 'variables_values'
      - 'otp_variables_values'
  ) || jsonb_build_object(
    'delivery_mode', 'production',
    'route', 'smart_otp',
    'fast2sms_route', 'smart_otp',
    'otp_id', '9318bdac9f',
    'dlt_content_id', '1777178548948652710',
    'dlt_reference_number', '11-1PKREMS8QC91B',
    'text_template', '{{otp}} is your OTP to verify your mobile number on DekhoCampus. Valid for 10 minutes.',
    -- Empty JSON array stringifies to an empty value in both the previous and
    -- current Edge Function builds, so neither sends variables_values.
    'otp_variables_values', '[]'::jsonb,
    'otp_length', 6,
    'otp_expiry_minutes', 10,
    'otp_fallback_to_dlt', false,
    'quick_enabled', false,
    'quick_fallback_to_dlt', false,
    'resend_strategy', 'fresh_otp',
    'resend_cooldown_seconds', 45
  ),
  updated_at = now()
WHERE lower(provider_name) = 'fast2sms'
  AND channel = 'sms';
