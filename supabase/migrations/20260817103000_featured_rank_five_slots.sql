-- Align featured rank database constraints with the current admin UI and
-- set_featured_rank RPC: #1 hero + #2-5 supporting featured cards.

ALTER TABLE public.articles
  DROP CONSTRAINT IF EXISTS articles_featured_rank_range_chk;

ALTER TABLE public.articles
  ADD CONSTRAINT articles_featured_rank_range_chk
  CHECK (featured_rank IS NULL OR featured_rank BETWEEN 1 AND 5) NOT VALID;

ALTER TABLE public.articles
  VALIDATE CONSTRAINT articles_featured_rank_range_chk;

ALTER TABLE public.colleges
  DROP CONSTRAINT IF EXISTS colleges_featured_rank_range_chk;

ALTER TABLE public.colleges
  ADD CONSTRAINT colleges_featured_rank_range_chk
  CHECK (featured_rank IS NULL OR featured_rank BETWEEN 1 AND 5) NOT VALID;

ALTER TABLE public.colleges
  VALIDATE CONSTRAINT colleges_featured_rank_range_chk;

CREATE OR REPLACE FUNCTION public.set_featured_rank(_table text, _id uuid, _rank int)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  _max int := 5;
BEGIN
  IF _table NOT IN ('articles','colleges') THEN
    RAISE EXCEPTION 'Invalid table';
  END IF;

  IF auth.role() <> 'service_role' AND NOT public.has_role(auth.uid(), 'admin'::app_role) THEN
    RAISE EXCEPTION 'Admin permission required';
  END IF;

  IF _rank IS NULL THEN
    EXECUTE format('UPDATE public.%I SET featured_rank = NULL WHERE id = $1', _table) USING _id;
    RETURN;
  END IF;

  IF _rank < 1 OR _rank > _max THEN
    RAISE EXCEPTION 'Rank out of range. Use a featured slot from 1 to 5.';
  END IF;

  EXECUTE format('UPDATE public.%I SET featured_rank = NULL WHERE id = $1', _table) USING _id;
  EXECUTE format('UPDATE public.%I SET featured_rank = featured_rank + 1 WHERE featured_rank >= $1 AND featured_rank < $2', _table) USING _rank, _max;
  EXECUTE format('UPDATE public.%I SET featured_rank = NULL WHERE featured_rank >= $1', _table) USING _max + 1;
  EXECUTE format('UPDATE public.%I SET featured_rank = $1 WHERE id = $2', _table) USING _rank, _id;
END;
$$;
