CREATE TABLE IF NOT EXISTS public.college_programs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),slug text UNIQUE NOT NULL,name text NOT NULL,short_description text NOT NULL DEFAULT '',
  total_semesters integer NOT NULL DEFAULT 8,icon_emoji text NOT NULL DEFAULT '🎓',image text NOT NULL DEFAULT '',meta_title text NOT NULL DEFAULT '',meta_description text NOT NULL DEFAULT '',
  is_active boolean NOT NULL DEFAULT true,display_order integer NOT NULL DEFAULT 0,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.college_universities (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),program_slug text NOT NULL,slug text NOT NULL,name text NOT NULL,short_name text NOT NULL DEFAULT '',state text NOT NULL DEFAULT '',city text NOT NULL DEFAULT '',logo text NOT NULL DEFAULT '',description text NOT NULL DEFAULT '',total_semesters integer NOT NULL DEFAULT 8,meta_title text NOT NULL DEFAULT '',meta_description text NOT NULL DEFAULT '',is_active boolean NOT NULL DEFAULT true,display_order integer NOT NULL DEFAULT 0,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now(),UNIQUE(program_slug,slug)
);
CREATE TABLE IF NOT EXISTS public.college_semesters (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),program_slug text NOT NULL,university_slug text NOT NULL,semester_num integer NOT NULL,title text NOT NULL DEFAULT '',description text NOT NULL DEFAULT '',is_active boolean NOT NULL DEFAULT true,display_order integer NOT NULL DEFAULT 0,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now(),UNIQUE(program_slug,university_slug,semester_num)
);
CREATE TABLE IF NOT EXISTS public.college_subjects (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),program_slug text NOT NULL,university_slug text NOT NULL,semester_num integer NOT NULL,slug text NOT NULL,name text NOT NULL,code text NOT NULL DEFAULT '',branch text NOT NULL DEFAULT 'common',description text NOT NULL DEFAULT '',credits integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,display_order integer NOT NULL DEFAULT 0,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now(),UNIQUE(program_slug,university_slug,semester_num,slug)
);
CREATE TABLE IF NOT EXISTS public.college_resources (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),subject_id uuid NOT NULL REFERENCES public.college_subjects(id),resource_type text NOT NULL DEFAULT 'notes',title text NOT NULL,description text NOT NULL DEFAULT '',file_url text NOT NULL DEFAULT '',external_url text NOT NULL DEFAULT '',year integer,display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.college_quick_links (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),program_slug text NOT NULL,university_slug text NOT NULL,semester_num integer,link_type text NOT NULL DEFAULT 'syllabus',title text NOT NULL,description text NOT NULL DEFAULT '',icon_emoji text NOT NULL DEFAULT '📄',url text NOT NULL DEFAULT '',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.college_few_links (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),program_slug text NOT NULL,university_slug text NOT NULL,title text NOT NULL,url text NOT NULL DEFAULT '',icon_emoji text NOT NULL DEFAULT '🔗',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.college_toppers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),program_slug text NOT NULL,university_slug text NOT NULL,year integer NOT NULL,rank integer NOT NULL DEFAULT 1,name text NOT NULL,branch text NOT NULL DEFAULT '',marks text NOT NULL DEFAULT '',percentage text NOT NULL DEFAULT '',photo text NOT NULL DEFAULT '',quote text NOT NULL DEFAULT '',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_college_university_directory ON public.college_universities(program_slug,display_order) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_college_semester_directory ON public.college_semesters(program_slug,university_slug,semester_num) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_college_subject_directory ON public.college_subjects(program_slug,university_slug,semester_num,display_order) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_college_resource_subject ON public.college_resources(subject_id,display_order) WHERE is_active;
