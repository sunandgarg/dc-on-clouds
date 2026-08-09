-- Remove public trailing source-credit blocks from already-published articles.
-- Research/source notes may remain in internal metadata; this only cleans article body content.

CREATE OR REPLACE FUNCTION pg_temp.dc_strip_article_visible_sources(_content text)
RETURNS text
LANGUAGE plpgsql
AS $$
DECLARE
  cleaned text := coalesce(_content, '');
BEGIN
  cleaned := regexp_replace(
    cleaned,
    '<h[1-6][^>]*>[[:space:]]*(<[^>]+>[[:space:]]*)*(sources|references|citations)([[:space:]]*</[^>]+>)*[[:space:]]*</h[1-6]>(.|\n|\r)*$',
    '',
    'i'
  );

  cleaned := regexp_replace(
    cleaned,
    '<p[^>]*>[[:space:]]*(<strong>|<b>)?[[:space:]]*(sources|references|citations)[[:space:]]*(</strong>|</b>)?[[:space:]]*</p>(.|\n|\r)*$',
    '',
    'i'
  );

  cleaned := regexp_replace(
    cleaned,
    '(^|\n)[[:space:]]*(#{1,6}[[:space:]]*)?(\*\*)?[[:space:]]*(sources|references|citations)[[:space:]]*(\*\*)?[[:space:]]*(\n|<br[[:space:]]*/?>)(.|\n|\r)*$',
    '',
    'i'
  );

  RETURN btrim(cleaned);
END;
$$;

UPDATE public.articles
SET
  content = pg_temp.dc_strip_article_visible_sources(content),
  updated_at = now()
WHERE content IS NOT NULL
  AND content <> pg_temp.dc_strip_article_visible_sources(content);

NOTIFY pgrst, 'reload schema';
