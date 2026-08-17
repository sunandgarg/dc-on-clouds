with batch as (
  select *
  from public.colleges
  where data_source_urls @> '[{"batch":"college-official-content-batch-002"}]'::jsonb
     or data_source_urls @> '{"batch":"college-official-content-batch-002"}'::jsonb
)
select
  count(*) as changed_colleges,
  count(*) filter (
    where nullif(description, '') is not null
      and nullif(page_summary, '') is not null
      and nullif(eligibility_criteria, '') is not null
      and nullif(admission_process, '') is not null
      and nullif(placement_content, '') is not null
      and nullif(facilities_content, '') is not null
      and nullif(hostel_life, '') is not null
      and nullif(scholarship_details, '') is not null
      and nullif(rankings_content, '') is not null
  ) as complete_content_sets,
  count(*) filter (where data_clean_method = 'official_source_content') as source_backed,
  count(*) filter (where official_courses_verified) as verified_catalogues,
  count(*) filter (where official_fees_verified) as verified_fees,
  count(distinct description) as unique_descriptions,
  count(*) filter (
    where concat_ws(
      ' ',
      name,
      description,
      page_summary,
      eligibility_criteria,
      admission_process,
      placement_content,
      facilities_content,
      hostel_life,
      scholarship_details,
      rankings_content
    ) ~ '[–—]'
  ) as large_dash_rows,
  (
    select count(*)
    from public.course_fees cf
    join batch b on b.slug = cf.college_slug
    where b.official_courses_verified
  ) as verified_course_rows
from batch;
