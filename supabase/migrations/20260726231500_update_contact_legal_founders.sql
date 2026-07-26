-- Align public contact channels, legal pages, and About Us founders for production.

INSERT INTO public.site_integrations (key, label, category, value, enabled, notes)
VALUES
  ('whatsapp_phone', 'WhatsApp Phone Number (with country code, no +)', 'social', '919990109797', true, 'Primary DekhoCampus outreach number'),
  ('news_call_phone', 'News & Article Call Number (with country code, no +)', 'social', '919990109797', true, 'Primary DekhoCampus outreach number for news/article pages'),
  ('premium_program_fallback_phone', 'Premium Program Fallback Phone', 'premium_programs', '+919990109797', true, 'Fallback DekhoCampus outreach number')
ON CONFLICT (key) DO UPDATE
SET
  value = EXCLUDED.value,
  enabled = true,
  notes = EXCLUDED.notes,
  updated_at = now();

UPDATE public.about_page
SET
  hero_title = 'Built to make education decisions simpler',
  hero_subtitle = 'DekhoCampus helps students compare colleges, courses, exams and career paths with clearer information and human support.',
  mission = 'Our mission is to make college, course and exam discovery easier for every student by combining structured education data, practical counselling workflows and student-first product design.',
  vision = 'We want DekhoCampus to become India''s most useful education decision platform: transparent, searchable, AI-ready and grounded in information that students can verify before they act.',
  story = 'DekhoCampus was started to solve a simple but painful problem: students often jump between scattered pages, outdated tables and confusing admission claims before they can make one confident decision. We are building a cleaner discovery layer where students can compare options, ask better questions and connect with guidance without pressure.',
  cta_title = 'Need help choosing your next step?',
  cta_subtitle = 'Reach DekhoCampus at outreach@dekhocampus.com or +91-9990109797.',
  meta_title = 'About DekhoCampus | Education Search, Counselling and Student Guidance',
  meta_description = 'Learn about DekhoCampus, an education discovery platform helping students compare colleges, courses, exams and career paths with structured information and guidance.',
  updated_at = now()
WHERE id IN (SELECT id FROM public.about_page ORDER BY updated_at DESC NULLS LAST LIMIT 1);

UPDATE public.about_founders
SET
  title = 'Co-founder, DekhoCampus',
  bio = 'Chetan Garg helps shape DekhoCampus as a student-first education discovery platform, focused on clearer counselling journeys, practical admission workflows and trustworthy publishing for Indian learners.',
  photo = '/founders/chetan-garg.webp',
  display_order = 1,
  is_active = true
WHERE lower(name) = 'chetan garg';

INSERT INTO public.about_founders (name, title, bio, photo, display_order, is_active)
SELECT
  'Chetan Garg',
  'Co-founder, DekhoCampus',
  'Chetan Garg helps shape DekhoCampus as a student-first education discovery platform, focused on clearer counselling journeys, practical admission workflows and trustworthy publishing for Indian learners.',
  '/founders/chetan-garg.webp',
  1,
  true
WHERE NOT EXISTS (SELECT 1 FROM public.about_founders WHERE lower(name) = 'chetan garg');

UPDATE public.about_founders
SET
  title = 'Co-founder, DekhoCampus',
  bio = 'Sunand Garg leads product, data and growth at DekhoCampus, building systems that make college, course and exam information easier to search, compare and act on.',
  photo = '/founders/sunand-garg.webp',
  display_order = 2,
  is_active = true
WHERE lower(name) = 'sunand garg';

INSERT INTO public.about_founders (name, title, bio, photo, display_order, is_active)
SELECT
  'Sunand Garg',
  'Co-founder, DekhoCampus',
  'Sunand Garg leads product, data and growth at DekhoCampus, building systems that make college, course and exam information easier to search, compare and act on.',
  '/founders/sunand-garg.webp',
  2,
  true
WHERE NOT EXISTS (SELECT 1 FROM public.about_founders WHERE lower(name) = 'sunand garg');

INSERT INTO public.legal_pages (slug, title, content, meta_title, meta_description, is_active)
VALUES
  (
    'disclaimer',
    'Disclaimer',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>DekhoCampus is an independent education information, publishing and aggregation platform. Unless a page clearly says otherwise, DekhoCampus is not owned by, operated by, authorised by, or officially associated with any college, university, examination body, scholarship provider, government department or regulator mentioned on the platform.</p>
      <h2>Information is for guidance</h2>
      <p>We publish college, course, exam, scholarship, article, ranking and counselling information to help students research options. The content may include data compiled from official websites, public documents, institutional pages, partner inputs, user submissions and editorial research. It is not a substitute for official notices, prospectuses, admission rules, counselling authority documents or professional advice.</p>
      <h2>Verify before deciding</h2>
      <p>Admission criteria, fees, seats, dates, eligibility, syllabus, cut-offs, placements, approvals and scholarships can change without notice. Students and parents should verify important details on the relevant official website or document before applying, paying, travelling, choosing a course or making any academic or financial decision.</p>
      <h2>No guarantee</h2>
      <p>DekhoCampus does not guarantee admission, scholarship approval, placement, exam result, ranking outcome, counselling allotment or financial benefit. Any counselling, AI guidance, recommendation or shortlist is informational and depends on the accuracy of information shared by the user and the availability of verified data.</p>
      <h2>Third-party links and images</h2>
      <p>Some links, logos, images, documents or references may point to third-party sources. They are provided for convenience and attribution. Their availability, accuracy, security and content remain the responsibility of the relevant third party.</p>
      <h2>Contact</h2>
      <p>For corrections, takedown requests or publisher queries, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Disclaimer | DekhoCampus',
    'Important disclaimer for DekhoCampus users: independent publisher, aggregator and information platform. Verify details with official sources.',
    true
  ),
  (
    'terms-of-service',
    'Terms & Conditions',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>These Terms & Conditions govern your use of DekhoCampus, including our website, forms, dashboards, AI tools, counselling workflows, content pages and related services. By using DekhoCampus, you agree to these terms.</p>
      <h2>Our role</h2>
      <p>DekhoCampus operates as an independent education publisher, aggregator, search and guidance platform. We help users discover and compare colleges, courses, exams, scholarships, articles and education opportunities. We are not an admission authority, examination authority, university, regulator, employer or government body.</p>
      <h2>User responsibilities</h2>
      <p>You agree to share accurate information, use the platform lawfully, avoid impersonation, avoid scraping or disrupting the service, and independently verify official requirements before making academic, financial or travel decisions.</p>
      <h2>Leads, counselling and communication consent</h2>
      <p>When you submit a form, request a callback, use an AI tool, apply through a listed opportunity or ask for counselling, you consent to DekhoCampus and relevant education/service partners contacting you by phone, WhatsApp, SMS, email or similar channels for the requested purpose. You may ask us to stop promotional communication at any time.</p>
      <h2>Content accuracy</h2>
      <p>We aim to keep published information structured, useful and updated. However, education information changes frequently. DekhoCampus does not warrant that all data is complete, current or error-free at every moment. Official sources should be treated as final for admissions, exams, fees, seats, approvals, scholarships and deadlines.</p>
      <h2>AI tools and recommendations</h2>
      <p>AI-generated responses, rankings, summaries, predictions and shortlists are decision-support tools only. They may simplify complex information but should not be treated as a guaranteed result, official advice or final eligibility decision.</p>
      <h2>Payments and third-party services</h2>
      <p>If paid services are offered, their pricing, refund terms and deliverables will be shown before purchase or in the relevant policy. Third-party services, payment gateways, institutes, partners and advertisers may have separate terms.</p>
      <h2>Intellectual property</h2>
      <p>The DekhoCampus brand, interface, original content, data structures, graphics and software are protected by applicable intellectual property laws. Third-party marks belong to their respective owners and are used for identification or informational purposes.</p>
      <h2>Limitation of liability</h2>
      <p>To the fullest extent permitted by law, DekhoCampus is not liable for indirect, incidental, consequential or financial loss arising from reliance on information, delays, third-party actions, admission outcomes, exam outcomes or user-submitted errors.</p>
      <h2>Changes to terms</h2>
      <p>We may update these terms to reflect legal, product or operational changes. Continued use of the platform after updates means you accept the revised terms.</p>
      <h2>Contact</h2>
      <p>For questions, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Terms & Conditions | DekhoCampus',
    'DekhoCampus terms for using the education discovery, publishing, aggregation, counselling and AI guidance platform.',
    true
  ),
  (
    'privacy-policy',
    'Privacy Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>DekhoCampus respects user privacy. This Privacy Policy explains how we collect, use, disclose, retain and protect personal data when you use our website, forms, tools, counselling services, dashboards and communication channels.</p>
      <h2>Data we may collect</h2>
      <p>We may collect information such as name, phone number, email, city, state, academic interests, preferred courses, exam details, profile information, uploaded documents, form responses, communication history, device/browser data, cookies, analytics identifiers and consent records.</p>
      <h2>How we use data</h2>
      <p>We use data to provide counselling, callbacks, application support, AI recommendations, search results, shortlisted options, content personalisation, account access, lead routing, service improvement, fraud prevention, security, analytics and compliance.</p>
      <h2>Sharing and partners</h2>
      <p>We may share relevant information with colleges, universities, counselling partners, service providers, technology vendors, analytics providers, payment processors or other partners when required to deliver a requested service, respond to an enquiry, process an application, improve the platform or comply with law.</p>
      <h2>Consent and choices</h2>
      <p>By submitting information, you consent to use of your data for the requested purpose and related education guidance. You can request correction, deletion, access, withdrawal of consent or communication opt-out by contacting us. Some service or legal obligations may require us to retain limited records.</p>
      <h2>Cookies and analytics</h2>
      <p>We may use cookies, pixels, tags and analytics tools to remember preferences, improve performance, measure usage, detect abuse and personalise content. You can manage cookies through your browser settings.</p>
      <h2>Security and retention</h2>
      <p>We use reasonable technical and organisational safeguards to protect data. No online system is completely risk-free. We retain data only for as long as needed for service delivery, legal compliance, fraud prevention, analytics or legitimate business purposes.</p>
      <h2>Children and students</h2>
      <p>If a user is a minor, the platform should be used with parent or guardian involvement where required by applicable law. Parents or guardians may contact us for privacy requests relating to a minor.</p>
      <h2>Grievance and contact</h2>
      <p>For privacy requests, corrections, deletion, consent withdrawal or grievance matters, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Privacy Policy | DekhoCampus',
    'How DekhoCampus collects, uses, shares, retains and protects personal data for education discovery and counselling services.',
    true
  ),
  (
    'data-protection-policy',
    'Data Protection Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>This Data Protection Policy explains the safeguards and operating principles DekhoCampus follows while handling student, parent, counsellor, partner and website-user data.</p>
      <h2>Protection principles</h2>
      <p>We aim to process data lawfully, fairly and transparently; collect only what is relevant for education guidance and platform operations; keep data reasonably accurate; limit retention; and protect data through appropriate access controls and security practices.</p>
      <h2>Purpose limitation</h2>
      <p>Data is used for education discovery, counselling, application assistance, user support, analytics, fraud prevention, compliance, partner fulfilment and product improvement. Sensitive or high-impact decisions should not be made solely on automated outputs without human review where appropriate.</p>
      <h2>Access and controls</h2>
      <p>Access to operational data is limited to authorised personnel, vendors or partners who need it for approved purposes. We expect service providers to follow confidentiality and data protection obligations suitable for their role.</p>
      <h2>User rights</h2>
      <p>Users can request access, correction, deletion, consent withdrawal or communication opt-out. Requests may require identity verification and may be subject to legal, security, accounting or dispute-resolution retention requirements.</p>
      <h2>Incident handling</h2>
      <p>If we identify a data security incident that materially affects users, we will take reasonable steps to investigate, contain, remediate and notify affected users or authorities where legally required.</p>
      <h2>Contact</h2>
      <p>For data protection requests, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Data Protection Policy | DekhoCampus',
    'DekhoCampus data protection principles for handling student, parent, partner and platform data.',
    true
  ),
  (
    'editorial-policy',
    'Editorial Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>DekhoCampus publishes education information for students and parents as an independent publisher and aggregator. This policy explains how we aim to research, structure and improve public content.</p>
      <h2>Sources and updates</h2>
      <p>Our content may use official websites, public notices, prospectuses, regulatory documents, institution pages, public datasets, partner information, expert inputs, editorial review and user-submitted corrections. We prioritise official or primary sources for admissions, exams, fees, eligibility, seats, approvals and deadlines.</p>
      <h2>Human review and AI assistance</h2>
      <p>We may use AI tools to structure, summarise or improve readability. AI-assisted content should be reviewed against available data before publication wherever practical, and important decisions should still be verified with official sources.</p>
      <h2>Corrections</h2>
      <p>If you find outdated, incomplete or incorrect information, email <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> with the page URL, correction request and supporting source. We review correction requests based on relevance, evidence and editorial priority.</p>
      <h2>Sponsored or partner content</h2>
      <p>Some pages, listings, calls-to-action or leads may involve partners or advertisers. We aim to keep informational content useful and transparent, and commercial relationships do not remove the need for users to verify official information independently.</p>
    $html$,
    'Editorial Policy | DekhoCampus',
    'How DekhoCampus researches, structures, reviews and corrects education information as a publisher and aggregator.',
    true
  ),
  (
    'cookie-policy',
    'Cookie Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>DekhoCampus uses cookies and similar technologies to keep the website functional, improve speed, understand usage and personalise parts of the experience.</p>
      <h2>Types of cookies</h2>
      <p>We may use essential cookies for login and security, analytics cookies for performance measurement, preference cookies for user settings, and marketing or tracking technologies to measure campaigns where enabled.</p>
      <h2>Managing cookies</h2>
      <p>You can block or delete cookies through your browser settings. Some features may not work correctly if essential cookies are disabled.</p>
      <h2>Contact</h2>
      <p>For cookie-related questions, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Cookie Policy | DekhoCampus',
    'How DekhoCampus uses cookies, analytics and similar technologies.',
    true
  )
ON CONFLICT (slug) DO UPDATE
SET
  title = EXCLUDED.title,
  content = EXCLUDED.content,
  meta_title = EXCLUDED.meta_title,
  meta_description = EXCLUDED.meta_description,
  is_active = true,
  updated_at = now();
