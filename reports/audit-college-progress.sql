select count(*) as total_colleges,
  count(*) filter (where coalesce(official_source_clean_pass_count,0) > 0) as cleaned_once_or_more,
  count(*) filter (where coalesce(official_source_clean_pass_count,0) = 0) as still_zero_pass,
  count(*) filter (where official_courses_verified is true) as official_course_catalogues_verified
from public.colleges;

select name from public.colleges where data_source_urls::text like '%college-official-content-batch-003%' order by name;
