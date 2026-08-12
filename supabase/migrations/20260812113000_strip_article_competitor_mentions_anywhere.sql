-- Remove competitor-named credit paragraphs/list items that may appear inside
-- recent article/news content, not only at the trailing source block.
-- The frontend and article generators already apply the same policy; this
-- migration keeps the database content itself clean.

WITH cleaned AS (
  SELECT
    id,
    btrim(
      regexp_replace(
        regexp_replace(
          regexp_replace(
            regexp_replace(
              content,
              '<p[^>]*>[^<]*(collegedekho|college[[:space:]]*dekho|collegedunia|college[[:space:]]*dunia|shiksha\.com|careers[[:space:]]*360|careers360|kollege[[:space:]]*apply|kollegeapply|getmyuni|pagalguy)(.|\n|\r)*?</p>',
              '',
              'gi'
            ),
            '<li[^>]*>[^<]*(collegedekho|college[[:space:]]*dekho|collegedunia|college[[:space:]]*dunia|shiksha\.com|careers[[:space:]]*360|careers360|kollege[[:space:]]*apply|kollegeapply|getmyuni|pagalguy)(.|\n|\r)*?</li>',
            '',
            'gi'
          ),
          '(^|\n)[[:space:]]*[-*]?[[:space:]]*[^\n]*(collegedekho|college[[:space:]]*dekho|collegedunia|college[[:space:]]*dunia|shiksha\.com|careers[[:space:]]*360|careers360|kollege[[:space:]]*apply|kollegeapply|getmyuni|pagalguy)[^\n]*',
          '',
          'gi'
        ),
        '[[:space:]]{2,}',
        ' ',
        'g'
      )
    ) AS new_content
  FROM public.articles
  WHERE content IS NOT NULL
    AND (
      created_at >= now() - interval '30 days'
      OR updated_at >= now() - interval '30 days'
    )
)
UPDATE public.articles AS article
SET
  content = cleaned.new_content,
  updated_at = now()
FROM cleaned
WHERE article.id = cleaned.id
  AND article.content <> cleaned.new_content;

NOTIFY pgrst, 'reload schema';
