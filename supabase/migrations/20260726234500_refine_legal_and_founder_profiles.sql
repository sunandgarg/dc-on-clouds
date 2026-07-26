-- Refine founder profiles and legal copy with India-first publisher / aggregator safeguards.

UPDATE public.about_founders
SET
  title = 'Founder & CEO',
  bio = 'Chetan Garg, Founder and CEO of DekhoCampus, is a technically strong builder with a sharp, precise style of working. He holds a B.Tech in Computer Science and an MBA, and is responsible for leading DekhoCampus growth in the EdTech space. Known for clear thinking, confidence and strong fundamentals in technology and startup strategy, Chetan focuses on solving complex education-discovery problems with practical, scalable systems.',
  photo = '/founders/chetan-garg.webp',
  display_order = 1,
  is_active = true
WHERE lower(name) = 'chetan garg';

INSERT INTO public.about_founders (name, title, bio, photo, display_order, is_active)
SELECT
  'Chetan Garg',
  'Founder & CEO',
  'Chetan Garg, Founder and CEO of DekhoCampus, is a technically strong builder with a sharp, precise style of working. He holds a B.Tech in Computer Science and an MBA, and is responsible for leading DekhoCampus growth in the EdTech space. Known for clear thinking, confidence and strong fundamentals in technology and startup strategy, Chetan focuses on solving complex education-discovery problems with practical, scalable systems.',
  '/founders/chetan-garg.webp',
  1,
  true
WHERE NOT EXISTS (SELECT 1 FROM public.about_founders WHERE lower(name) = 'chetan garg');

UPDATE public.about_founders
SET
  title = 'Co-Founder',
  bio = 'Sunand Garg, Co-Founder of DekhoCampus, is an IIT Delhi alumnus and former software developer. With a strong love for technology and product building, Sunand uses his technical skills to make finding the right college easier for students in India. His experience in the EdTech field, attention to detail and user-first mindset help DekhoCampus create simple, reliable and student-friendly solutions for education decisions.',
  photo = '/founders/sunand-garg.webp',
  display_order = 2,
  is_active = true
WHERE lower(name) = 'sunand garg';

INSERT INTO public.about_founders (name, title, bio, photo, display_order, is_active)
SELECT
  'Sunand Garg',
  'Co-Founder',
  'Sunand Garg, Co-Founder of DekhoCampus, is an IIT Delhi alumnus and former software developer. With a strong love for technology and product building, Sunand uses his technical skills to make finding the right college easier for students in India. His experience in the EdTech field, attention to detail and user-first mindset help DekhoCampus create simple, reliable and student-friendly solutions for education decisions.',
  '/founders/sunand-garg.webp',
  2,
  true
WHERE NOT EXISTS (SELECT 1 FROM public.about_founders WHERE lower(name) = 'sunand garg');

UPDATE public.about_page
SET
  hero_title = 'Built by founders who understand technology, admissions and student decisions',
  hero_subtitle = 'DekhoCampus is an independent education discovery platform helping students compare colleges, courses, exams and career paths with structured information and human support.',
  mission = 'Our mission is to make education decisions clearer for students and parents by combining structured public information, useful tools, counselling workflows and technology-led guidance.',
  vision = 'We want DekhoCampus to become India''s most useful education decision platform: transparent, searchable, AI-ready and grounded in information that students can verify before they act.',
  story = 'DekhoCampus was started to solve a simple but painful problem: students often jump between scattered pages, outdated tables and confusing admission claims before they can make one confident decision. We are building a cleaner discovery layer where students can compare options, ask better questions and connect with guidance without pressure.',
  cta_title = 'Need help choosing your next step?',
  cta_subtitle = 'Reach DekhoCampus at outreach@dekhocampus.com or +91-9990109797.',
  meta_title = 'About DekhoCampus | Founders, Mission and Education Discovery Platform',
  meta_description = 'Meet the DekhoCampus founders and learn how DekhoCampus helps students compare colleges, courses, exams and career options with structured information and guidance.',
  updated_at = now()
WHERE id IN (SELECT id FROM public.about_page ORDER BY updated_at DESC NULLS LAST LIMIT 1);

INSERT INTO public.legal_pages (slug, title, content, meta_title, meta_description, is_active)
VALUES
  (
    'disclaimer',
    'Disclaimer',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>DekhoCampus is an independent education information, publishing, search and aggregation platform. Unless expressly stated in writing on a specific page, DekhoCampus is not owned, operated, endorsed, authorised or controlled by any college, university, examination authority, counselling body, scholarship provider, regulator, government department or other third party mentioned on the platform.</p>
      <h2>Publisher and aggregator role</h2>
      <p>We publish and organise information to help students and parents research education options. Our content may be compiled from official websites, public notices, institutional pages, prospectuses, brochures, regulatory records, partner inputs, user submissions, public sources, editorial review and technology-assisted structuring.</p>
      <h2>Verify with official sources</h2>
      <p>Fees, eligibility, seats, approvals, rankings, deadlines, syllabus, exam pattern, cut-offs, placements, scholarships, admission processes and counselling rules can change without notice. Official websites, admission brochures, exam notifications, counselling portals and regulator documents should be treated as the final source before applying, paying fees, travelling, accepting admission or making any academic or financial decision.</p>
      <h2>No admission or outcome guarantee</h2>
      <p>DekhoCampus does not guarantee admission, seat allotment, scholarship approval, exam result, placement, job opportunity, ranking outcome, visa outcome, counselling callback, fee concession or any commercial benefit. AI tools, counsellor conversations, predictions, comparisons and shortlists are decision-support aids only.</p>
      <h2>Third-party links, logos and references</h2>
      <p>Third-party names, logos, images, marks, links and documents are used only for identification, reference, editorial, comparison or informational purposes. All third-party marks belong to their respective owners. Linked websites and third-party services are governed by their own terms and policies.</p>
      <h2>Corrections and takedown requests</h2>
      <p>If you believe any information, image, logo, source attribution or claim is inaccurate or infringes your rights, email the page URL, concern and supporting proof to <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a>. We review correction and takedown requests in good faith.</p>
      <h2>Contact</h2>
      <p>For publisher queries, corrections or legal notices, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Disclaimer | DekhoCampus',
    'DekhoCampus disclaimer: independent education publisher and aggregator. Verify admissions, exams, fees and official information with primary sources.',
    true
  ),
  (
    'terms-of-service',
    'Terms & Conditions',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>These Terms & Conditions govern access to and use of DekhoCampus, including our website, dashboards, forms, AI tools, search, counselling workflows, articles, listings, partner pages and related services. By using DekhoCampus, you agree to these terms and to our applicable policies.</p>
      <h2>Electronic record</h2>
      <p>These terms are published as an electronic record under applicable Indian law, including the Information Technology Act, 2000 and related rules as amended from time to time. They do not require a physical or digital signature to be binding where accepted through use of the platform.</p>
      <h2>Our role and limits</h2>
      <p>DekhoCampus is an independent education publisher, aggregator, discovery, comparison and guidance platform. We are not an admission authority, university, examination authority, counselling allotment body, regulator, government body, financial adviser or employer. Listings do not create any endorsement unless specifically stated.</p>
      <h2>User obligations</h2>
      <p>You agree to provide accurate information, use the platform lawfully, avoid impersonation, avoid unauthorised scraping, refrain from uploading unlawful or misleading content, and independently verify official requirements before taking admission, exam, payment, scholarship or career decisions.</p>
      <h2>Consent for counselling and communication</h2>
      <p>When you submit a form, request a callback, use an AI tool, download gated material, compare colleges, apply through a listed option or ask for counselling, you consent to DekhoCampus and relevant education/service partners contacting you through phone, WhatsApp, SMS, email, push notification or similar channels for the requested service, follow-up and related education guidance. You may opt out of promotional communication, though service or transactional messages may continue where necessary.</p>
      <h2>Content accuracy and changes</h2>
      <p>We try to keep information structured, useful and updated, but education information changes frequently. We do not warrant that every listing, article, fee, date, seat, ranking, exam pattern, approval or course detail is complete, current or error-free at all times. Official sources remain final.</p>
      <h2>AI tools and recommendations</h2>
      <p>AI-generated responses, summaries, predictions, ranking cues and shortlist suggestions are informational outputs. They should be reviewed by the user and checked against official sources. They do not create professional, legal, financial, medical, visa, admission or employment advice.</p>
      <h2>Partner and third-party services</h2>
      <p>Colleges, universities, advertisers, counsellors, payment gateways, analytics providers, lead partners and third-party websites may have separate terms, eligibility criteria, pricing, privacy policies and processes. DekhoCampus is not responsible for third-party decisions, delays, errors, acts or omissions.</p>
      <h2>Intellectual property</h2>
      <p>The DekhoCampus brand, interface, original content, data organisation, software, design, graphics and platform structure are protected by applicable intellectual property laws. Third-party names and marks are the property of their respective owners and are used for identification and informational purposes.</p>
      <h2>Suspension and misuse</h2>
      <p>We may restrict, suspend or terminate access where we detect misuse, unlawful activity, security risk, spam, fraud, abuse, scraping, misleading submissions or breach of these terms.</p>
      <h2>Limitation of liability</h2>
      <p>To the maximum extent permitted by law, DekhoCampus is not liable for indirect, incidental, consequential, special, punitive or financial loss arising from platform use, reliance on information, admission outcomes, exam outcomes, payment decisions, third-party services, downtime, user-submitted errors or delays.</p>
      <h2>Governing law and jurisdiction</h2>
      <p>These terms are governed by the laws of India. Subject to applicable law, courts at New Delhi, India shall have jurisdiction over disputes connected with DekhoCampus.</p>
      <h2>Contact</h2>
      <p>For terms, publisher or support queries, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Terms & Conditions | DekhoCampus',
    'Terms governing use of DekhoCampus as an independent education publisher, aggregator, search, counselling and AI guidance platform.',
    true
  ),
  (
    'privacy-policy',
    'Privacy Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>This Privacy Policy explains how DekhoCampus collects, uses, shares, stores and protects personal data when users access our website, forms, AI tools, counselling services, dashboards, communication channels and partner workflows. It is intended to align with applicable Indian privacy requirements, including the Digital Personal Data Protection Act, 2023 as and when its provisions/rules are notified and enforced.</p>
      <h2>Information we collect</h2>
      <p>We may collect name, phone number, email, city, state, education interest, preferred courses, exam details, qualification, budget range, admission preferences, uploaded documents, form responses, counselling notes, consent records, communication history, IP/device/browser information, cookies, analytics identifiers and website activity.</p>
      <h2>How we use information</h2>
      <p>We use information to provide search, counselling, callback, AI guidance, application assistance, account access, lead routing, study material access, personalised recommendations, platform analytics, product improvement, fraud prevention, security, compliance and user support.</p>
      <h2>Consent and lawful use</h2>
      <p>By submitting information or continuing to use a requested service, you consent to our processing of your data for the stated purpose and reasonably connected education-support purposes. You may withdraw consent or request changes, subject to legal, fraud-prevention, dispute-resolution and service-completion obligations.</p>
      <h2>Sharing with partners and processors</h2>
      <p>We may share relevant information with colleges, universities, admission partners, counsellors, communication vendors, hosting providers, analytics tools, payment gateways, CRM providers, AI/service processors and other authorised partners where needed to provide requested services, operate the platform, comply with law or protect legitimate interests. We do not sell personal data as a standalone product.</p>
      <h2>Cookies and analytics</h2>
      <p>We use cookies, pixels, tags and analytics technologies to run the website, secure sessions, remember preferences, measure campaigns, understand usage and improve performance. Users can manage cookies through browser settings, though some features may not work correctly if essential cookies are disabled.</p>
      <h2>Data retention</h2>
      <p>We retain information only as long as reasonably required for counselling, admissions support, user requests, legal compliance, audit, security, accounting, analytics, dispute handling or legitimate business purposes. Aggregated or anonymised data may be retained for product and research improvement.</p>
      <h2>Security</h2>
      <p>We use reasonable administrative, technical and organisational safeguards to protect information. No internet system is completely secure, so users should avoid sharing unnecessary sensitive information through public or unsecured channels.</p>
      <h2>User rights</h2>
      <p>Users may request access, correction, completion, deletion, consent withdrawal, grievance handling or communication opt-out by contacting us. We may verify identity before acting on a request and may retain limited records where required by law or legitimate operational need.</p>
      <h2>Children and guardians</h2>
      <p>Where a user is a minor, the platform should be used with parent or guardian involvement as required by applicable law. Parents or guardians can contact us for privacy requests relating to a minor.</p>
      <h2>Contact and grievance</h2>
      <p>For privacy requests, correction, deletion, consent withdrawal or grievance matters, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Privacy Policy | DekhoCampus',
    'DekhoCampus privacy policy explaining data collection, consent, partner sharing, retention, security and user rights under Indian privacy principles.',
    true
  ),
  (
    'data-protection-policy',
    'Data Protection Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>This Data Protection Policy explains how DekhoCampus handles student, parent, counsellor, partner, website-user and lead data as an education publisher, aggregator and guidance platform.</p>
      <h2>Data protection principles</h2>
      <p>We aim to process data with purpose limitation, transparency, reasonable security safeguards, data minimisation, accuracy, storage limitation and accountability. These principles are framed with reference to applicable Indian privacy and information-technology law.</p>
      <h2>Purpose limitation and minimisation</h2>
      <p>We collect data relevant to education discovery, counselling, applications, recommendations, support, analytics, fraud prevention, service operations and legal compliance. We aim not to collect personal data that is unnecessary for these purposes.</p>
      <h2>Access control</h2>
      <p>Access to operational data is limited to authorised team members, vendors and partners who need the information for approved purposes. We expect vendors and partners handling user information to follow confidentiality, security and purpose-use requirements appropriate to their role.</p>
      <h2>AI and automation safeguards</h2>
      <p>Where AI tools are used to structure information or support recommendations, outputs should be treated as informational. High-impact education decisions should be verified with official sources and, where appropriate, human review.</p>
      <h2>Incident response</h2>
      <p>If we identify a material data security incident, we will take reasonable steps to investigate, contain, remediate and notify affected users or authorities where required by applicable law.</p>
      <h2>User requests</h2>
      <p>Users may request access, correction, deletion, consent withdrawal or grievance handling. Requests may require identity verification and may be subject to legal, security, accounting, fraud-prevention or dispute-resolution retention needs.</p>
      <h2>Contact</h2>
      <p>For data protection requests, contact <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a> or call <a href="tel:+919990109797">+91-9990109797</a>.</p>
    $html$,
    'Data Protection Policy | DekhoCampus',
    'DekhoCampus data protection policy for student, parent, partner and platform data handling.',
    true
  ),
  (
    'editorial-policy',
    'Editorial Policy',
    $html$
      <p><strong>Last updated: 26 July 2026.</strong></p>
      <p>DekhoCampus publishes education information as an independent publisher and aggregator. This policy explains how we source, structure and improve college, course, exam, scholarship, article and career content.</p>
      <h2>Sources</h2>
      <p>We may use official websites, exam notices, prospectuses, counselling documents, regulator records, public datasets, institution pages, partner inputs, user submissions, expert inputs, editorial research and technology-assisted extraction. We prioritise official or primary sources for fees, seats, eligibility, approvals, dates, syllabus and admission rules.</p>
      <h2>AI-assisted content</h2>
      <p>We may use AI tools to clean data, structure pages, summarise content, improve readability and generate decision-support explanations. AI assistance does not remove the need for official-source verification for critical facts.</p>
      <h2>Corrections</h2>
      <p>If you find inaccurate, outdated or incomplete content, email the page URL, correction request and supporting source to <a href="mailto:outreach@dekhocampus.com">outreach@dekhocampus.com</a>. We review corrections based on evidence, user impact and editorial priority.</p>
      <h2>Sponsored and partner content</h2>
      <p>Some listings, calls-to-action or lead flows may involve advertisers or partners. Commercial relationships do not change the user''s responsibility to verify official information independently.</p>
    $html$,
    'Editorial Policy | DekhoCampus',
    'How DekhoCampus researches, structures, reviews and corrects education information as a publisher and aggregator.',
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
