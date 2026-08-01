select count(*) filter (where data_source_urls::text like '%college-official-content-batch-005%') as batch_rows,
  count(*) filter (where data_source_urls::text like '%college-official-content-batch-005%' and coalesce(description,'') <> '' and coalesce(admission_process,'') <> '' and coalesce(course_fee_content,'') <> '' and coalesce(placement_content,'') <> '' and coalesce(facilities_content,'') <> '' and coalesce(hostel_life,'') <> '' and coalesce(scholarship_details,'') <> '' and coalesce(rankings_content,'') <> '') as complete_content_rows,
  count(*) filter (where data_source_urls::text like '%college-official-content-batch-005%' and official_courses_verified is true) as verified_catalogues,
  count(*) filter (where data_source_urls::text like '%college-official-content-batch-005%' and (description ~ '[—–]' or admission_process ~ '[—–]' or course_fee_content ~ '[—–]' or placement_content ~ '[—–]' or facilities_content ~ '[—–]' or hostel_life ~ '[—–]' or scholarship_details ~ '[—–]' or rankings_content ~ '[—–]')) as large_dash_rows
from public.colleges;

select count(*) as total_colleges,
  count(*) filter (where coalesce(official_source_clean_pass_count,0) > 0) as cleaned_once_or_more,
  count(*) filter (where coalesce(official_source_clean_pass_count,0) = 0) as still_zero_pass,
  count(*) filter (where official_courses_verified is true) as official_course_catalogues_verified
from public.colleges;

select name from public.colleges where data_source_urls::text like '%college-official-content-batch-005%' order by name;
