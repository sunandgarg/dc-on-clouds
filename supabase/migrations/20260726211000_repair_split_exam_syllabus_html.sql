-- A legacy comma-separated import split HTML tables into many syllabus array
-- items. Rejoin only records where the first array item is HTML and the full
-- value contains a table. Plain subject-list syllabi are left untouched.

UPDATE public.exams
SET
  syllabus = ARRAY[array_to_string(syllabus, ',')],
  ai_clean_pass_count = greatest(coalesce(ai_clean_pass_count, 0) + 1, 1),
  data_clean_attempts = greatest(coalesce(data_clean_attempts, 0) + 1, 1),
  data_clean_successes = greatest(coalesce(data_clean_successes, 0) + 1, 1),
  data_last_checked_at = now(),
  data_clean_state = 'cleaned',
  updated_at = now()
WHERE coalesce(array_length(syllabus, 1), 0) > 1
  AND syllabus[1] ~* '<(p|ul|ol|figure|table)(\\s|>)'
  AND array_to_string(syllabus, ',') ~* '<table(\\s|>)';

-- Any record already marked cleaned predates this explicit counter and must be
-- represented as at least pass one, even if an older migration did not update
-- data_clean_successes consistently.
UPDATE public.colleges
SET ai_clean_pass_count = greatest(ai_clean_pass_count, 1)
WHERE data_clean_state = 'cleaned';
UPDATE public.courses
SET ai_clean_pass_count = greatest(ai_clean_pass_count, 1)
WHERE data_clean_state = 'cleaned';
UPDATE public.exams
SET ai_clean_pass_count = greatest(ai_clean_pass_count, 1)
WHERE data_clean_state = 'cleaned';
