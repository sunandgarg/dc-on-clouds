ALTER TABLE public.articles ADD COLUMN IF NOT EXISTS tags text[] NOT NULL DEFAULT '{}';
ALTER TABLE public.articles ADD COLUMN IF NOT EXISTS author_id uuid;
ALTER TABLE public.colleges ADD COLUMN IF NOT EXISTS author_id uuid;
ALTER TABLE public.courses ADD COLUMN IF NOT EXISTS author_id uuid;
ALTER TABLE public.exams ADD COLUMN IF NOT EXISTS author_id uuid;
ALTER TABLE public.career_profiles ADD COLUMN IF NOT EXISTS author_id uuid;
ALTER TABLE public.scholarships ADD COLUMN IF NOT EXISTS author_id uuid;

CREATE TABLE IF NOT EXISTS public.authors (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  name text NOT NULL,
  designation text NOT NULL DEFAULT '',
  photo text NOT NULL DEFAULT '',
  short_bio text NOT NULL DEFAULT '',
  bio text NOT NULL DEFAULT '',
  expertise text[] NOT NULL DEFAULT '{}',
  email text NOT NULL DEFAULT '',
  linkedin_url text NOT NULL DEFAULT '',
  twitter_url text NOT NULL DEFAULT '',
  website_url text NOT NULL DEFAULT '',
  display_order integer NOT NULL DEFAULT 0,
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.legal_pages (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  title text NOT NULL,
  content text NOT NULL DEFAULT '',
  meta_title text NOT NULL DEFAULT '',
  meta_description text NOT NULL DEFAULT '',
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.promoted_programs (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  slug text UNIQUE NOT NULL,
  title text NOT NULL,
  college_name text NOT NULL,
  college_slug text NOT NULL DEFAULT '',
  badge text NOT NULL DEFAULT 'New',
  program_type text NOT NULL DEFAULT '',
  duration text NOT NULL DEFAULT '',
  original_price numeric NOT NULL DEFAULT 0,
  discount_percent integer NOT NULL DEFAULT 0,
  display_order integer NOT NULL DEFAULT 0,
  tag text NOT NULL DEFAULT '',
  delivery_mode text NOT NULL DEFAULT 'Online',
  country text NOT NULL DEFAULT 'India',
  image_url text NOT NULL DEFAULT '',
  category_slug text NOT NULL DEFAULT '',
  hero_image text NOT NULL DEFAULT '',
  brochure_url text NOT NULL DEFAULT '',
  apply_url text NOT NULL DEFAULT '',
  summary text NOT NULL DEFAULT '',
  about_program text NOT NULL DEFAULT '',
  eligibility text NOT NULL DEFAULT '',
  highlights jsonb NOT NULL DEFAULT '[]',
  learning_outcomes jsonb NOT NULL DEFAULT '[]',
  curriculum jsonb NOT NULL DEFAULT '[]',
  faqs jsonb NOT NULL DEFAULT '[]',
  meta_title text NOT NULL DEFAULT '',
  meta_description text NOT NULL DEFAULT '',
  is_active boolean NOT NULL DEFAULT true,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.about_page (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  hero_eyebrow text NOT NULL DEFAULT 'About DekhoCampus',
  hero_title text NOT NULL DEFAULT 'We help students choose better',
  hero_subtitle text NOT NULL DEFAULT 'and help colleges teach them better',
  hero_image text NOT NULL DEFAULT '',
  mission text NOT NULL DEFAULT '',
  vision text NOT NULL DEFAULT '',
  story text NOT NULL DEFAULT '',
  story_image text NOT NULL DEFAULT '',
  cta_title text NOT NULL DEFAULT 'Get expert counselling for free',
  cta_subtitle text NOT NULL DEFAULT '',
  meta_title text NOT NULL DEFAULT 'About Us | DekhoCampus',
  meta_description text NOT NULL DEFAULT '',
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS public.about_stats (id uuid PRIMARY KEY DEFAULT gen_random_uuid(),label text NOT NULL,value text NOT NULL,description text NOT NULL DEFAULT '',icon_emoji text NOT NULL DEFAULT '📊',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now());
CREATE TABLE IF NOT EXISTS public.about_values (id uuid PRIMARY KEY DEFAULT gen_random_uuid(),title text NOT NULL,description text NOT NULL DEFAULT '',icon_emoji text NOT NULL DEFAULT '⭐',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now());
CREATE TABLE IF NOT EXISTS public.about_founders (id uuid PRIMARY KEY DEFAULT gen_random_uuid(),name text NOT NULL,title text NOT NULL DEFAULT '',bio text NOT NULL DEFAULT '',photo text NOT NULL DEFAULT '',linkedin_url text NOT NULL DEFAULT '',twitter_url text NOT NULL DEFAULT '',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now());
CREATE TABLE IF NOT EXISTS public.about_team (id uuid PRIMARY KEY DEFAULT gen_random_uuid(),name text NOT NULL,role text NOT NULL DEFAULT '',department text NOT NULL DEFAULT '',photo text NOT NULL DEFAULT '',linkedin_url text NOT NULL DEFAULT '',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now());
CREATE TABLE IF NOT EXISTS public.about_milestones (id uuid PRIMARY KEY DEFAULT gen_random_uuid(),year text NOT NULL,title text NOT NULL,description text NOT NULL DEFAULT '',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now());
CREATE TABLE IF NOT EXISTS public.about_press (id uuid PRIMARY KEY DEFAULT gen_random_uuid(),outlet text NOT NULL,headline text NOT NULL DEFAULT '',url text NOT NULL DEFAULT '',logo text NOT NULL DEFAULT '',published_on text NOT NULL DEFAULT '',display_order integer NOT NULL DEFAULT 0,is_active boolean NOT NULL DEFAULT true,created_at timestamptz NOT NULL DEFAULT now());

CREATE INDEX IF NOT EXISTS idx_articles_tags_gin ON public.articles USING gin(tags);
CREATE INDEX IF NOT EXISTS idx_articles_author_active ON public.articles(author_id, updated_at DESC) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_authors_public_sort ON public.authors(display_order, updated_at DESC) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_legal_pages_public_slug ON public.legal_pages(slug) WHERE is_active;
CREATE INDEX IF NOT EXISTS idx_promoted_programs_public_sort ON public.promoted_programs(display_order, updated_at DESC) WHERE is_active;
