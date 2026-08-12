-- Harden article/news cleanup:
-- 1) Remove visible "Sources / References / Citations / Credits" blocks.
-- 2) Remove trailing competitor-credit paragraphs/lines if an old article
--    was generated without a source heading.
-- 3) Deactivate competitor research-source rows so future automation does
--    not pull or expose competitor publisher context.

CREATE OR REPLACE FUNCTION public.dc_strip_article_visible_sources(_content text)
RETURNS text
LANGUAGE plpgsql
IMMUTABLE
AS $$
DECLARE
  cleaned text := coalesce(_content, '');
BEGIN
  cleaned := regexp_replace(
    cleaned,
    '<h[1-6][^>]*>[[:space:]]*(<[^>]+>[[:space:]]*)*(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)([[:space:]]*</[^>]+>)*[[:space:]]*</h[1-6]>(.|\n|\r)*$',
    '',
    'i'
  );

  cleaned := regexp_replace(
    cleaned,
    '<p[^>]*>[[:space:]]*(<strong>|<b>)?[[:space:]]*(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)[[:space:]]*(</strong>|</b>)?([[:space:]]*<br[[:space:]]*/?>)?(.|\n|\r)*$',
    '',
    'i'
  );

  cleaned := regexp_replace(
    cleaned,
    '<div[^>]*>[[:space:]]*(<strong>|<b>)?[[:space:]]*(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)[[:space:]]*(</strong>|</b>)?([[:space:]]*<br[[:space:]]*/?>)?(.|\n|\r)*$',
    '',
    'i'
  );

  cleaned := regexp_replace(
    cleaned,
    '(^|\n)[[:space:]]*(#{1,6}[[:space:]]*)?(\*\*)?[[:space:]]*(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)[[:space:]]*(\*\*)?[[:space:]]*(\n|<br[[:space:]]*/?>)(.|\n|\r)*$',
    '',
    'i'
  );

  cleaned := regexp_replace(
    cleaned,
    '(^|\n)[[:space:]]*(-|\*)?[[:space:]]*(\*\*)?[^\n]*(collegedekho|college[[:space:]]*dekho|collegedunia|college[[:space:]]*dunia|shiksha|careers[[:space:]]*360|careers360|kollege[[:space:]]*apply|kollegeapply|getmyuni|pagalguy)[^\n]*(\*\*)?[[:space:]]*$',
    '',
    'gi'
  );

  RETURN btrim(cleaned);
END;
$$;

UPDATE public.articles
SET
  content = public.dc_strip_article_visible_sources(content),
  updated_at = now()
WHERE content IS NOT NULL
  AND (
    created_at >= now() - interval '30 days'
    OR updated_at >= now() - interval '30 days'
    OR content ~* '(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)'
    OR content ~* '(collegedekho|college[[:space:]]*dekho|collegedunia|college[[:space:]]*dunia|shiksha|careers[[:space:]]*360|careers360|kollege[[:space:]]*apply|kollegeapply|getmyuni|pagalguy)'
  )
  AND content <> public.dc_strip_article_visible_sources(content);

UPDATE public.blog_research_sources
SET
  is_active = false,
  updated_at = now()
WHERE is_active = true
  AND (
    url ~* '(collegedekho|collegedunia|shiksha|careers360|kollegeapply|getmyuni|pagalguy)'
    OR name ~* '(collegedekho|college[[:space:]]*dekho|collegedunia|college[[:space:]]*dunia|shiksha|careers[[:space:]]*360|kollege[[:space:]]*apply|kollegeapply|getmyuni|pagalguy)'
    OR source_type = 'competitor'
  );

UPDATE public.blog_auto_agent_settings
SET
  required_sections = ARRAY(
    SELECT section
    FROM unnest(required_sections) AS section
    WHERE section !~* '^[[:space:]]*(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)[[:space:]]*$'
  ),
  minimum_sources = 1,
  updated_at = now()
WHERE
  EXISTS (
    SELECT 1
    FROM unnest(required_sections) AS section
    WHERE section ~* '^[[:space:]]*(sources?|references?|citations?|bibliography|source[[:space:]]+links?|credits?)[[:space:]]*$'
  )
  OR minimum_sources <> 1;

NOTIFY pgrst, 'reload schema';
