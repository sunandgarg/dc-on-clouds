select count(*) filter (where data_source_urls::text like '%college-official-content-batch-004%') as batch_rows,
  count(*) filter (where data_source_urls::text like '%college-official-content-batch-004%' and coalesce(description,'') <> '' and coalesce(admission_process,'') <> '' and coalesce(course_fee_content,'') <> '' and coalesce(placement_content,'') <> '' and coalesce(facilities_content,'') <> '' and coalesce(hostel_life,'') <> '' and coalesce(scholarship_details,'') <> '' and coalesce(rankings_content,'') <> '') as complete_content_rows,
  count(*) filter (where data_source_urls::text like '%college-official-content-batch-004%' and official_courses_verified is true) as verified_catalogues,
  count(*) filter (where data_source_urls::text like '%college-official-content-batch-004%' and (description ~ chr(8211) or admission_process ~ chr(8211) or course_fee_content ~ chr(8211) or placement_content ~ chr(8211) or facilities_content ~ chr(8211) or hostel_life ~ chr(8211) or scholarship_details ~ chr(8211) or rankings_content ~ chr(8211))) as large_dash_rows
from public.colleges;

select count(*) as total_colleges,
  count(*) filter (where coalesce(official_source_clean_pass_count,0) > 0) as cleaned_once_or_more,
  count(*) filter (where coalesce(official_source_clean_pass_count,0) = 0) as still_zero_pass,
  count(*) filter (where official_courses_verified is true) as official_course_catalogues_verified
from public.colleges;

select college_slug, count(*) as course_rows
from public.course_fees
where college_slug in (select slug from public.colleges where data_source_urls::text like '%college-official-content-batch-004%' and official_courses_verified is true)
group by college_slug
order by college_slug;
