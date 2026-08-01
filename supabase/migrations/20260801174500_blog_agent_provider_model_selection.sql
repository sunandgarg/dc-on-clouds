ALTER TABLE public.blog_auto_agent_settings
  ADD COLUMN IF NOT EXISTS text_model text NOT NULL DEFAULT 'gemini-3.5-flash-lite',
  ADD COLUMN IF NOT EXISTS image_provider text NOT NULL DEFAULT 'gemini',
  ADD COLUMN IF NOT EXISTS image_model text NOT NULL DEFAULT 'gemini-3.1-flash-lite-image',
  ADD COLUMN IF NOT EXISTS language text NOT NULL DEFAULT 'English',
  ADD COLUMN IF NOT EXISTS audience text NOT NULL DEFAULT 'Indian students and parents',
  ADD COLUMN IF NOT EXISTS tone text NOT NULL DEFAULT 'Clear, practical, trustworthy',
  ADD COLUMN IF NOT EXISTS content_goals text[] NOT NULL DEFAULT ARRAY['SEO','AEO','GEO','AIO','LLMO','LLM'],
  ADD COLUMN IF NOT EXISTS required_sections text[] NOT NULL DEFAULT ARRAY['Quick answer','Key facts','Step-by-step guidance','FAQs','Sources'],
  ADD COLUMN IF NOT EXISTS minimum_sources integer NOT NULL DEFAULT 2,
  ADD COLUMN IF NOT EXISTS editorial_quality_target integer NOT NULL DEFAULT 80,
  ADD COLUMN IF NOT EXISTS human_review_required boolean NOT NULL DEFAULT true,
  ADD COLUMN IF NOT EXISTS image_mode text NOT NULL DEFAULT 'generated',
  ADD COLUMN IF NOT EXISTS image_template_url text NOT NULL DEFAULT '',
  ADD COLUMN IF NOT EXISTS image_prompt_style text NOT NULL DEFAULT 'Premium editorial, clean, credible, student-focused',
  ADD COLUMN IF NOT EXISTS include_logo boolean NOT NULL DEFAULT true,
  ADD COLUMN IF NOT EXISTS logo_url text NOT NULL DEFAULT '',
  ADD COLUMN IF NOT EXISTS logo_position text NOT NULL DEFAULT 'top-center',
  ADD COLUMN IF NOT EXISTS image_aspect_ratio text NOT NULL DEFAULT '16:9',
  ADD COLUMN IF NOT EXISTS output_resolution text NOT NULL DEFAULT '4k';

ALTER TABLE public.blog_auto_agent_settings
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_model_provider_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_image_provider_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_minimum_sources_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_editorial_quality_target_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_image_mode_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_logo_position_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_image_aspect_ratio_check,
  DROP CONSTRAINT IF EXISTS blog_auto_agent_settings_output_resolution_check;

ALTER TABLE public.blog_auto_agent_settings
  ADD CONSTRAINT blog_auto_agent_settings_model_provider_check
    CHECK (model_provider IN ('gemini','anthropic','claude','openai','xai')),
  ADD CONSTRAINT blog_auto_agent_settings_image_provider_check
    CHECK (image_provider IN ('gemini','openai','xai')),
  ADD CONSTRAINT blog_auto_agent_settings_minimum_sources_check
    CHECK (minimum_sources BETWEEN 1 AND 10),
  ADD CONSTRAINT blog_auto_agent_settings_editorial_quality_target_check
    CHECK (editorial_quality_target BETWEEN 0 AND 100),
  ADD CONSTRAINT blog_auto_agent_settings_image_mode_check
    CHECK (image_mode IN ('generated','template','none')),
  ADD CONSTRAINT blog_auto_agent_settings_logo_position_check
    CHECK (logo_position IN ('top-left','top-center','top-right','bottom-left','bottom-right')),
  ADD CONSTRAINT blog_auto_agent_settings_image_aspect_ratio_check
    CHECK (image_aspect_ratio IN ('16:9','1:1','4:5')),
  ADD CONSTRAINT blog_auto_agent_settings_output_resolution_check
    CHECK (output_resolution IN ('web','2k','4k'));

ALTER TABLE public.blog_auto_agent_runs
  DROP CONSTRAINT IF EXISTS blog_auto_agent_runs_status_check;

ALTER TABLE public.blog_auto_agent_runs
  ADD CONSTRAINT blog_auto_agent_runs_status_check
    CHECK (status IN ('running','paused','cancelling','cancelled','aborted','completed','skipped','failed')),
  ADD COLUMN IF NOT EXISTS resumed_at timestamptz,
  ADD COLUMN IF NOT EXISTS paused_at timestamptz,
  ADD COLUMN IF NOT EXISTS cancelled_at timestamptz,
  ADD COLUMN IF NOT EXISTS aborted_at timestamptz,
  ADD COLUMN IF NOT EXISTS control_note text NOT NULL DEFAULT '';

UPDATE public.blog_auto_agent_settings
SET text_model = CASE
      WHEN model_provider = 'gemini' THEN 'gemini-3.5-flash-lite'
      WHEN model_provider = 'openai' THEN 'gpt-5.6-luna'
      WHEN model_provider = 'xai' THEN 'grok-4.5'
      ELSE 'auto-haiku'
    END,
    image_provider = 'gemini',
    image_model = 'gemini-3.1-flash-lite-image',
    logo_url = 'https://dekhocampus.in/brand/dekhocampus-blog-logo.png',
    logo_position = 'top-center'
WHERE id = 'default';

COMMENT ON COLUMN public.blog_auto_agent_settings.editorial_quality_target IS
  'Internal editorial completeness target. It is not an AI-detector or authorship score.';
COMMENT ON COLUMN public.blog_auto_agent_settings.human_review_required IS
  'When true, automation stores articles as Draft even when Published is requested.';
