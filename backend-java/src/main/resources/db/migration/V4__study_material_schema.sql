CREATE TABLE IF NOT EXISTS public.study_boards (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),slug text UNIQUE NOT NULL,name text NOT NULL,
  description text DEFAULT '',icon_emoji text DEFAULT '📚',image_url text NOT NULL DEFAULT '',
  display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.study_subjects (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),slug text NOT NULL,class_num integer NOT NULL CHECK(class_num BETWEEN 8 AND 12),
  board_slug text NOT NULL,name text NOT NULL,description text DEFAULT '',icon_emoji text DEFAULT '📖',cover_image text DEFAULT '',
  display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,author_id uuid,
  created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE(class_num,board_slug,slug)
);
CREATE TABLE IF NOT EXISTS public.study_chapters (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),subject_id uuid NOT NULL REFERENCES public.study_subjects(id),
  slug text NOT NULL,name text NOT NULL,chapter_number integer DEFAULT 0,description text DEFAULT '',
  display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now(),
  UNIQUE(subject_id,slug)
);
CREATE TABLE IF NOT EXISTS public.study_resources (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),chapter_id uuid REFERENCES public.study_chapters(id),
  subject_id uuid REFERENCES public.study_subjects(id),resource_type text NOT NULL DEFAULT 'pyq',year text DEFAULT '',
  title text NOT NULL,description text DEFAULT '',file_url text DEFAULT '',file_size_kb integer DEFAULT 0,
  download_count integer NOT NULL DEFAULT 0,display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,
  content_html text NOT NULL DEFAULT '',content_images text[] NOT NULL DEFAULT '{}',
  created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.study_toppers (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),class_num integer NOT NULL,board_slug text NOT NULL,stream text NOT NULL DEFAULT 'Science',
  year integer NOT NULL DEFAULT EXTRACT(year FROM now()),rank integer NOT NULL DEFAULT 1,name text NOT NULL,marks text NOT NULL DEFAULT '',
  percentage numeric NOT NULL DEFAULT 0,school text NOT NULL DEFAULT '',city text NOT NULL DEFAULT '',photo text NOT NULL DEFAULT '',
  is_active boolean NOT NULL DEFAULT true,display_order integer NOT NULL DEFAULT 0,
  created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE IF NOT EXISTS public.study_board_links (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),board_slug text NOT NULL,class_num integer NOT NULL,title text NOT NULL,url text NOT NULL,
  category text NOT NULL DEFAULT 'general',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),updated_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX IF NOT EXISTS idx_study_subject_directory ON public.study_subjects(class_num,board_slug,display_order) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_study_chapter_subject ON public.study_chapters(subject_id,chapter_number) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_study_resource_subject ON public.study_resources(subject_id,resource_type,year DESC) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_study_resource_chapter ON public.study_resources(chapter_id,display_order) WHERE is_active;
