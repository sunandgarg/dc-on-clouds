-- Allow admins to explicitly choose the colleges, courses, and exams shown in
-- the homepage "Explore by Category" section. When a category has no checked
-- rows, the frontend retains its existing priority/rating fallback.

ALTER TABLE public.colleges
  ADD COLUMN IF NOT EXISTS show_in_explore_by_category boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS explore_by_category_checked_at timestamptz;

ALTER TABLE public.courses
  ADD COLUMN IF NOT EXISTS show_in_explore_by_category boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS explore_by_category_checked_at timestamptz;

ALTER TABLE public.exams
  ADD COLUMN IF NOT EXISTS show_in_explore_by_category boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS explore_by_category_checked_at timestamptz;

CREATE OR REPLACE FUNCTION public.set_explore_by_category_checked_at()
RETURNS trigger
LANGUAGE plpgsql
SET search_path = public
AS $$
BEGIN
  IF NEW.show_in_explore_by_category IS TRUE THEN
    IF TG_OP = 'INSERT' THEN
      NEW.explore_by_category_checked_at = now();
    ELSIF OLD.show_in_explore_by_category IS DISTINCT FROM TRUE THEN
      NEW.explore_by_category_checked_at = now();
    END IF;
  ELSIF NEW.show_in_explore_by_category IS NOT TRUE THEN
    NEW.explore_by_category_checked_at = NULL;
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS colleges_set_explore_by_category_checked_at ON public.colleges;
CREATE TRIGGER colleges_set_explore_by_category_checked_at
BEFORE INSERT OR UPDATE OF show_in_explore_by_category ON public.colleges
FOR EACH ROW
EXECUTE FUNCTION public.set_explore_by_category_checked_at();

DROP TRIGGER IF EXISTS courses_set_explore_by_category_checked_at ON public.courses;
CREATE TRIGGER courses_set_explore_by_category_checked_at
BEFORE INSERT OR UPDATE OF show_in_explore_by_category ON public.courses
FOR EACH ROW
EXECUTE FUNCTION public.set_explore_by_category_checked_at();

DROP TRIGGER IF EXISTS exams_set_explore_by_category_checked_at ON public.exams;
CREATE TRIGGER exams_set_explore_by_category_checked_at
BEFORE INSERT OR UPDATE OF show_in_explore_by_category ON public.exams
FOR EACH ROW
EXECUTE FUNCTION public.set_explore_by_category_checked_at();

CREATE INDEX IF NOT EXISTS colleges_homepage_explore_category_idx
  ON public.colleges (category, explore_by_category_checked_at DESC)
  WHERE is_active = true AND show_in_explore_by_category = true;

CREATE INDEX IF NOT EXISTS courses_homepage_explore_category_idx
  ON public.courses (category, explore_by_category_checked_at DESC)
  WHERE is_active = true AND show_in_explore_by_category = true;

CREATE INDEX IF NOT EXISTS exams_homepage_explore_category_idx
  ON public.exams (category, explore_by_category_checked_at DESC)
  WHERE is_active = true AND show_in_explore_by_category = true;
