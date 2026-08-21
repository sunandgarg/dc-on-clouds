# Route migration inventory

Updated: 2026-08-21

Every explicit React Router entry in `src/App.tsx` is recorded below. "Compatibility" is intentionally not counted as migrated. The source-line column makes the inventory auditable against the legacy route registry.

| Legacy route | Legacy element | Target state | Source line |
|---|---|---|---:|
| `/` | `<Index />` | Migrated; local build verified; staging parity pending | 316 |
| `/auth` | `<Auth />` | Compatibility; password gateway implemented; full auth blocked | 317 |
| `/colleges` | `<AllColleges />` | Migrated; local build verified; staging parity pending | 318 |
| `/colleges/:slug` | `<CollegeRoute />` | Migrated; local build verified; staging parity pending | 319 |
| `/colleges/:slug/:tab` | `<CollegeNestedRoute />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 320 |
| `/college/:slug` | `<LegacyCollegeRoute />` | Migrated as permanent redirect to `/colleges/:slug`; build verified | 321 |
| `/courses` | `<AllCourses />` | Migrated; local build verified; staging parity pending | 322 |
| `/courses/:slug` | `<CourseRoute />` | Migrated; local build verified; staging parity pending | 323 |
| `/courses/:slug/:tab` | `<CourseNestedRoute />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 324 |
| `/exams` | `<AllExams />` | Migrated; local build verified; staging parity pending | 325 |
| `/exams/:slug` | `<ExamRoute />` | Migrated; local build verified; staging parity pending | 326 |
| `/exams/:slug/:tab` | `<ExamNestedRoute />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 327 |
| `/articles` | `<LegacyArticlesRoute />` | Migrated as permanent redirect to `/news`; build verified | 328 |
| `/articles/:slug` | `<LegacyArticlesRoute />` | Migrated as permanent redirect to `/news/:slug`; build verified | 329 |
| `/news` | `<News />` | Migrated; local build verified; staging parity pending | 330 |
| `/news/tag/:tag` | `<News />` | Migrated to SSR tag-filtered listing; local build verified; staging data pending | 331 |
| `/news/:slug` | `<ArticleDetail />` | Migrated; local build verified; staging parity pending | 332 |
| `/exam-calendar-2026` | `<ExamCalendar />` | Migrated as permanent redirect to `/exam-calendar`; build verified | 333 |
| `/exam-calendar` | `<ExamCalendar />` | Migrated to SSR search/category/month calendar; local build verified; staging dates pending | 334 |
| `/eligibility-checker` | `<EligibilityChecker />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 335 |
| `/eligibility-checker/:slug` | `<EligibilityChecker />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 336 |
| `/college-predictor` | `<CollegePredictor />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 337 |
| `/college-predictor/:slug` | `<CollegePredictor />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 338 |
| `/cat-universe` | `<CatUniverse />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 339 |
| `/cat-universe/:slug` | `<CatUniverseModulePage />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 340 |
| `/lock-target` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 341 |
| `/lock-target/:slug` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 342 |
| `/achieve-target` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 343 |
| `/achieve-target/:slug` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 344 |
| `/roadmap` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 345 |
| `/roadmap/:slug` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 346 |
| `/dream-college-roadmap` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 347 |
| `/dream-college-roadmap/:slug` | `<LockTarget />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 348 |
| `/target-dashboard` | `<TargetDashboard />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 349 |
| `/my-targets` | `<TargetDashboard />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 350 |
| `/target-with-ai` | `<TargetDashboard />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 351 |
| `/dashboard` | `<UserDashboard />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 353 |
| `/dashboard/:tab` | `<UserDashboard />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 354 |
| `/admin` | `<ProtectedRoute requireAdmin><AdminDashboard /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 356 |
| `/admin/colleges` | `<ProtectedRoute module="colleges"><AdminColleges /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 357 |
| `/admin/courses` | `<ProtectedRoute module="courses"><AdminCourses /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 358 |
| `/admin/exams` | `<ProtectedRoute module="exams"><AdminExams /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 359 |
| `/admin/ads` | `<ProtectedRoute module="ads"><AdminAds /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 360 |
| `/admin/ads/diagnostics` | `<ProtectedRoute module="ads"><AdminAdDiagnostics /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 361 |
| `/admin/adsense` | `<ProtectedRoute module="ads"><AdminAdsense /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 362 |
| `/admin/featured` | `<ProtectedRoute module="featured"><AdminFeatured /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 363 |
| `/admin/leads` | `<ProtectedRoute module="leads"><AdminLeads /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 364 |
| `/admin/lead-push` | `<ProtectedRoute requireAdmin><AdminLeadPushV2 /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 365 |
| `/admin/lead-intelligence` | `<ProtectedRoute requireAdmin><AdminLeadIntelligence /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 366 |
| `/admin/lead-intelligence/config` | `<ProtectedRoute requireAdmin><AdminIntentConfig /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 367 |
| `/admin/lead-intelligence/analytics` | `<ProtectedRoute requireAdmin><AdminIntentAnalytics /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 368 |
| `/admin/lead-push/automation` | `<ProtectedRoute requireAdmin><AdminMarketingAutomation /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 370 |
| `/admin/marketing-automation` | `<ProtectedRoute requireAdmin><AdminMarketingAutomation /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 371 |
| `/admin/lead-push/:view/*` | `<ProtectedRoute requireAdmin><AdminLeadPushV2 /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 372 |
| `/admin/lead-push-legacy` | `<ProtectedRoute requireAdmin><AdminLeadPushHub /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 373 |
| `/admin/lead-push-legacy/manage` | `<ProtectedRoute requireAdmin><AdminLeadPush /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 374 |
| `/admin/url-shortener` | `<ProtectedRoute requireAdmin><AdminUrlShortener /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 375 |
| `/admin/url-shortener/:tab` | `<ProtectedRoute requireAdmin><AdminUrlShortener /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 376 |
| `/admin/articles` | `<ProtectedRoute module="articles"><AdminArticles /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 377 |
| `/admin/clean-data` | `<ProtectedRoute module="content"><AdminDataCleaner /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 378 |
| `/admin/clean-data/preview/:itemId` | `<ProtectedRoute module="content"><AdminDataCleanerPreview /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 379 |
| `/admin/content` | `<ProtectedRoute module="content"><AdminContent /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 380 |
| `/admin/docs` | `<ProtectedRoute module="docs"><AdminDocs /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 381 |
| `/admin/banners` | `<ProtectedRoute module="banners"><AdminBanners /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 382 |
| `/admin/hero` | `<ProtectedRoute requireAdmin><AdminHeroSettings /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 383 |
| `/admin/hero-categories` | `<ProtectedRoute requireAdmin><AdminHeroCategories /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 384 |
| `/admin/cat-universe` | `<ProtectedRoute module="cat_universe"><AdminCatUniverse /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 385 |
| `/admin/cat-universe/sections` | `<ProtectedRoute module="cat_universe"><AdminCatUniverse /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 386 |
| `/admin/cat-universe/modules` | `<ProtectedRoute module="cat_universe"><AdminCatUniverse /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 387 |
| `/admin/cat-universe/resources` | `<ProtectedRoute module="cat_universe"><AdminCatUniverse /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 388 |
| `/admin/cat-universe/cutoffs` | `<ProtectedRoute module="cat_universe"><AdminCatUniverse /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 389 |
| `/admin/popup-analytics` | `<ProtectedRoute requireAdmin><AdminPopupAnalytics /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 390 |
| `/admin/cta-conversions` | `<ProtectedRoute requireAdmin><AdminCtaConversions /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 391 |
| `/admin/partners` | `<ProtectedRoute module="partners"><AdminPartners /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 392 |
| `/admin/ai-providers` | `<ProtectedRoute requireAdmin><AdminAIProviders /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 393 |
| `/admin/referrals` | `<ProtectedRoute module="referrals"><AdminReferrals /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 394 |
| `/admin/otp-providers` | `<ProtectedRoute requireAdmin><AdminOtpProviders /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 395 |
| `/admin/logs` | `<ProtectedRoute requireAdmin><AdminLogs /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 396 |
| `/admin/explain-system` | `<ProtectedRoute requireAdmin><AdminExplainSystem /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 397 |
| `/admin/email-providers` | `<ProtectedRoute requireAdmin><AdminEmailProviders /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 398 |
| `/admin/backup` | `<ProtectedRoute requireAdmin><AdminBackup /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 399 |
| `/admin/legal` | `<ProtectedRoute module="legal"><AdminLegalPages /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 400 |
| `/admin/sitemap` | `<ProtectedRoute module="sitemap"><AdminSitemap /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 401 |
| `/admin/integrations` | `<ProtectedRoute requireAdmin><AdminIntegrations /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 402 |
| `/admin/also-check` | `<ProtectedRoute requireAdmin><AdminAlsoCheck /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 403 |
| `/admin/careers` | `<ProtectedRoute module="careers"><AdminCareers /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 404 |
| `/admin/applications` | `<ProtectedRoute module="applications"><AdminApplications /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 405 |
| `/admin/users` | `<ProtectedRoute requireAdmin><AdminUsers /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 406 |
| `/admin/faculty` | `<ProtectedRoute module="faculty"><AdminFaculty /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 407 |
| `/admin/companies` | `<ProtectedRoute module="companies"><AdminCompanies /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 408 |
| `/admin/placements` | `<ProtectedRoute module="placements"><AdminPlacements /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 409 |
| `/admin/facilities` | `<ProtectedRoute module="facilities"><AdminFacilities /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 410 |
| `/admin/contacts` | `<ProtectedRoute module="contacts"><AdminContacts /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 411 |
| `/admin/course-fees` | `<ProtectedRoute module="course_fees"><AdminCourseFees /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 412 |
| `/admin/promoted-programs` | `<ProtectedRoute module="promoted_programs"><AdminPromotedPrograms /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 413 |
| `/admin/program-categories` | `<ProtectedRoute module="promoted_programs"><AdminPromotedPrograms /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 414 |
| `/premium-programs` | `<AllPremiumPrograms />` | Partially migrated: SSR listing; category and lead-flow parity pending | 415 |
| `/premium-programs/:slug` | `<PremiumProgramDetail />` | Partially migrated: SSR core content; rich sections, lead and application flows pending | 416 |
| `/admin/priority` | `<ProtectedRoute requireAdmin><AdminPriority /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 417 |
| `/admin/bulk` | `<ProtectedRoute requireAdmin><AdminBulk /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 418 |
| `/admin/study-material` | `<ProtectedRoute module="study_material"><AdminStudyMaterial /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 419 |
| `/admin/toppers` | `<ProtectedRoute module="study_material"><AdminToppers /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 420 |
| `/admin/board-links` | `<ProtectedRoute module="study_material"><AdminBoardLinks /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 421 |
| `/admin/tags` | `<ProtectedRoute module="articles"><AdminTagsManager /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 422 |
| `/admin/landing-pages` | `<ProtectedRoute requireAdmin><AdminLandingPages /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 423 |
| `/admin/reviews` | `<ProtectedRoute requireAdmin><AdminReviews /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 424 |
| `/admin/ai-reports` | `<ProtectedRoute requireAdmin><AdminAIReports /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 425 |
| `/admin/approval-bodies` | `<ProtectedRoute module="colleges"><AdminApprovalBodies /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 426 |
| `/admin/categories` | `<ProtectedRoute module="colleges"><AdminCategories /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 427 |
| `/admin/article-categories` | `<ProtectedRoute module="articles"><AdminArticleCategories /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 428 |
| `/lp` | `<LandingPage />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 429 |
| `/landing/:slug` | `<LandingPage />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 430 |
| `/study-material` | `<StudyMaterial />` | Partially migrated: SSR board/class directory; staging data and download flow pending | 431 |
| `/resources` | `<Resources />` | Partially migrated: SSR filtered resource directory; OTP download remains compatibility | 432 |
| `/resources/:slug` | `<Resources />` | Partially migrated: legacy SEO slug parsing and SSR filtering; OTP download remains compatibility | 433 |
| `/study-material/:classSlug` | `<StudyClass />` | Partially migrated: SSR board/subject/toppers/links; staging data pending | 434 |
| `/study-material/:classSlug/:boardSlug` | `<StudyClass />` | Partially migrated: SSR board/subject/toppers/links; staging data pending | 435 |
| `/study-material/:classSlug/:boardSlug/:subjectSlug` | `<StudySubject />` | Partially migrated: SSR chapters/resources; OTP download remains compatibility | 436 |
| `/study-material/:classSlug/:boardSlug/:subjectSlug/:chapterSlug` | `<StudySubject />` | Partially migrated: SSR chapter/resources; OTP download remains compatibility | 437 |
| `/college-study-material` | `<CollegeStudyMaterial />` | Partially migrated: SSR program directory; staging data pending | 438 |
| `/college-study-material/:programSlug` | `<CollegeProgram />` | Partially migrated: SSR university directory; staging data pending | 439 |
| `/college-study-material/:programSlug/:universitySlug` | `<CollegeUniversity />` | Partially migrated: SSR university/semester/toppers/links; staging data pending | 440 |
| `/college-study-material/:programSlug/:universitySlug/:semSlug` | `<CollegeUniversity />` | Partially migrated: legacy `semester-N` URL parsed and SSR subject directory; staging data pending | 441 |
| `/college-study-material/:programSlug/:universitySlug/:semSlug/:subjectSlug` | `<CollegeSubject />` | Partially migrated: SSR resource metadata; gated download remains compatibility | 442 |
| `/admin/college-study` | `<ProtectedRoute module="study_material"><AdminCollegeStudy /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 443 |
| `/tools` | `<AllTools />` | Migrated to static Next.js listing; build verified | 444 |
| `/tools/:slug` | `<ToolPage />` | Partially migrated: 7 native SSG calculators; 5 data/AI tools retain explicit compatibility | 445 |
| `/legal/:slug` | `<LegalPage />` | Migrated to sanitized SSR content; local build verified; staging data pending | 446 |
| `/careers` | `<AllCareers />` | Migrated; local build verified; staging parity pending | 447 |
| `/careers/:slug` | `<CareerDetail />` | Migrated; local build verified; staging parity pending | 448 |
| `/jobs` | `<AllJobs />` | Migrated; local build verified; staging parity pending | 449 |
| `/jobs/:slug` | `<JobDetail />` | Migrated; local build verified; staging parity pending | 450 |
| `/vacancies` | `<AllJobs />` | Migrated as permanent redirect to `/jobs`; build verified | 451 |
| `/vacancies/:slug` | `<JobDetail />` | Migrated as permanent redirect to `/jobs/:slug`; build verified | 452 |
| `/admin/jobs` | `<ProtectedRoute requireAdmin><AdminJobs /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 453 |
| `/admin/vacancies` | `<ProtectedRoute requireAdmin><AdminJobs /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 454 |
| `/admin/vacancy-applications` | `<ProtectedRoute requireAdmin><AdminJobApplications /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 455 |
| `/compare` | `<ComparePage />` | Migrated as permanent redirect to `/tools/compare-colleges`; tool remains compatibility | 456 |
| `/scholarships` | `<Scholarships />` | Migrated; local build verified; staging parity pending | 457 |
| `/scholarships/:slug` | `<ScholarshipDetail />` | Migrated; local build verified; staging parity pending | 458 |
| `/admin/scholarships` | `<ProtectedRoute requireAdmin><AdminScholarships /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 459 |
| `/onboarding` | `<Onboarding />` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 460 |
| `/about-us` | `<AboutUs />` | Migrated to SSR aggregate content; local build verified; staging data pending | 461 |
| `/about` | `<AboutUs />` | Migrated as permanent redirect to `/about-us`; build verified | 462 |
| `/admin/about` | `<ProtectedRoute requireAdmin><AdminAbout /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 463 |
| `/admin/authors` | `<ProtectedRoute module="users"><AdminAuthors /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 464 |
| `/author/:slug` | `<AuthorPage />` | Migrated to SSR author and contribution content; local build verified; staging data pending | 465 |
| `/admin/user-analytics` | `<ProtectedRoute requireAdmin><AdminUserAnalytics /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 466 |
| `/admin/funnel` | `<ProtectedRoute requireAdmin><AdminFunnel /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 467 |
| `/admin/heatmap` | `<ProtectedRoute requireAdmin><AdminHeatmap /></ProtectedRoute>` | Compatibility via `LEGACY_FRONTEND_URL`; not migrated | 468 |
| `/s/:code` | `<UrlRedirect />` | Partially migrated: native server redirect, validation and click count; detailed analytics/staging data pending | 470 |
| `/s/:header/:code` | `<UrlRedirect />` | Partially migrated: header-aware server redirect and validation; detailed analytics/staging data pending | 471 |
| `/r/:code` | `<UrlRedirect />` | Partially migrated: native alias of `/s/:code`; staging data pending | 472 |
| `/r/:header/:code` | `<UrlRedirect />` | Partially migrated: native header-aware alias; staging data pending | 473 |
| `*` | `<NotFound />` | Compatibility guard; legacy redirect or explicit unavailable page | 474 |

Total explicit route entries: **155**.
