-- A programme-family pass must not replace the pre-existing total course count.
-- Update the total only when the complete campus branch/specialisation catalogue
-- has been verified.
UPDATE public.colleges
SET courses_count = CASE slug
  WHEN 'iit-delhi' THEN 50
  WHEN 'iit-bombay' THEN 45
  WHEN 'iit-madras' THEN 48
  WHEN 'aiims-delhi' THEN 25
  ELSE courses_count
END,
updated_at = now()
WHERE slug IN ('iit-delhi', 'iit-bombay', 'iit-madras', 'aiims-delhi');

NOTIFY pgrst, 'reload schema';
