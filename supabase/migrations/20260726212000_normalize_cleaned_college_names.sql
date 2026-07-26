-- Finish safe presentation cleanup for first-pass college names. This is part
-- of the same pass, so it deliberately does not increment the pass counter.

UPDATE public.colleges
SET
  name = trim(regexp_replace(name, '\s+', ' ', 'g')),
  short_name = trim(regexp_replace(short_name, '\s+', ' ', 'g')),
  updated_at = now()
WHERE ai_clean_pass_count = 1
  AND (
    name ~ '\s{2,}'
    OR short_name ~ '\s{2,}'
  );
