import { useState, useEffect, useMemo, useRef } from "react";
import {
  Send,
  Sparkles,
  Zap,
  GraduationCap,
  BookOpen,
  FileText,
  MapPin,
  ArrowRight,
  Search,
  Laptop,
  Globe,
} from "lucide-react";
import { Button } from "@/components/ui/button";
import { Link, useNavigate } from "react-router-dom";
import { supabase } from "@/integrations/supabase/client";
import { useHeroSettings } from "@/hooks/useHeroSettings";
import dcLogo from "@/assets/dc-logo-small.webp";
import catCollege from "@/assets/cat-college-small.webp";
import catCourse from "@/assets/cat-course-small.webp";
import catExam from "@/assets/cat-exam-small.webp";
import catApplication from "@/assets/cat-application-small.webp";
import catReviews from "@/assets/cat-reviews-small.webp";
import catNews from "@/assets/cat-news-small.webp";
import { HeroCounsellingCard } from "@/components/HeroCounsellingCard";
import { compactDisplayText, displayText } from "@/lib/displayText";

const YEAR = new Date().getFullYear();
const suggestedPrompts = [
  "Best colleges for B.Tech CSE?",
  `How to crack JEE Main ${YEAR}?`,
  "IIT vs NIT - what's right for me?",
  "Top MBA colleges after graduation?",
];

const heroQuickLinks = [
  { label: "Online Degrees", icon: Laptop, href: "#online-education-heading" },
  { label: "Earn IIT/IIM/Dr. Tag", icon: Sparkles, href: "#trending-programs-heading" },
  { label: "Study Abroad", icon: Globe, href: "#online-education-heading" },
  { label: "Top Colleges", icon: GraduationCap, href: "/colleges" },
  { label: "Courses", icon: BookOpen, href: "/courses" },
  { label: "Exams", icon: FileText, href: "/exams" },
] as const;

const heroTiles = [
  { label: "13,004+ Colleges", icon: catCollege, href: "/colleges", tone: "bg-rose-50 border-rose-100" },
  { label: "840+ Courses", icon: catCourse, href: "/courses", tone: "bg-sky-50 border-sky-100" },
  { label: "219+ Exams", icon: catExam, href: "/exams", tone: "bg-violet-50 border-violet-100" },
  { label: "Application Form", icon: catApplication, href: "/colleges", tone: "bg-emerald-50 border-emerald-100" },
  { label: "Review", icon: catReviews, href: "/articles", tone: "bg-amber-50 border-amber-100" },
  { label: "News", icon: catNews, href: "/news", tone: "bg-cyan-50 border-cyan-100" },
] as const;

interface SearchResult {
  type: "College" | "Course" | "Exam";
  name: string;
  location: string;
  slug: string;
  logo?: string;
  image?: string;
}

interface HeroSectionProps {
  onOpenChat?: (initialMessage?: string) => void;
}

export function HeroSection({ onOpenChat }: HeroSectionProps) {
  const [searchQuery, setSearchQuery] = useState("");
  const [isFocused, setIsFocused] = useState(false);
  const [dbResults, setDbResults] = useState<SearchResult[]>([]);
  const [headlineIndex, setHeadlineIndex] = useState(0);
  const requestId = useRef(0);
  const navigate = useNavigate();

  const [bgIndex, setBgIndex] = useState(0);
  const { data: heroSettings } = useHeroSettings();
  const bgImages = useMemo(() => {
    return (heroSettings?.is_active && heroSettings.image_urls?.filter(Boolean)) || [];
  }, [heroSettings]);
  const rotationMs = (heroSettings?.rotation_seconds ?? 11) * 1000;

  // 2026 UX: ambient campus carousel - admin-configurable rotation, respects reduced-motion
  useEffect(() => {
    if (bgImages.length <= 1) return;
    if (typeof window !== "undefined" && window.matchMedia?.("(prefers-reduced-motion: reduce)").matches) return;
    const id = setInterval(() => setBgIndex((i) => (i + 1) % bgImages.length), rotationMs);
    return () => clearInterval(id);
  }, [bgImages.length, rotationMs]);

  useEffect(() => {
    if (typeof window !== "undefined" && window.matchMedia?.("(prefers-reduced-motion: reduce)").matches) return;
    const id = setInterval(() => setHeadlineIndex((i) => (i + 1) % 4), 2200);
    return () => clearInterval(id);
  }, []);

  useEffect(() => {
    const q = searchQuery.trim();
    const currentRequest = ++requestId.current;
    if (!q || q.length < 2) {
      setDbResults([]);
      return;
    }

    const timeout = setTimeout(async () => {
      try {
        const searchPattern = `%${q.replace(/[%_]/g, "")}%`;
        const [colleges, courses, exams] = await Promise.all([
          supabase
            .from("colleges")
            .select("name, slug, city, logo")
            .eq("is_active", true)
            .ilike("name", searchPattern)
            .limit(5),
          supabase
            .from("courses")
            .select("name, slug, level, category, image")
            .eq("is_active", true)
            .ilike("name", searchPattern)
            .limit(5),
          supabase
            .from("exams")
            .select("name, slug, image, logo, exam_type, category")
            .eq("is_active", true)
            .ilike("name", searchPattern)
            .limit(5),
        ]);
        if (requestId.current !== currentRequest) return;

        const rank = (name: string) => {
          const value = name.toLowerCase();
          const needle = q.toLowerCase();
          if (value === needle) return 0;
          if (value.startsWith(needle)) return 1;
          return 2;
        };

        const results: SearchResult[] = [
          ...(colleges.data || []).map((c) => ({
            type: "College" as const,
            name: compactDisplayText(c.name, "Untitled college", 90),
            slug: c.slug,
            location: compactDisplayText(c.city, "", 60),
            logo: c.logo || "",
          })),
          ...(courses.data || []).map((c) => ({
            type: "Course" as const,
            name: compactDisplayText(c.name, "Untitled course", 90),
            slug: c.slug,
            location: compactDisplayText(c.level || c.category || "Course", "", 60),
            image: c.image || "",
          })),
          ...(exams.data || []).map((e) => ({
            type: "Exam" as const,
            name: compactDisplayText(e.name, "Untitled exam", 90),
            slug: e.slug,
            location: compactDisplayText(e.exam_type || e.category || "Exam", "", 60),
            image: e.image || "",
            logo: e.logo || "",
          })),
        ].sort((a, b) => rank(a.name) - rank(b.name));
        setDbResults(results);
      } catch {
        /* skip */
      }
    }, q.length <= 2 ? 220 : 160);

    return () => clearTimeout(timeout);
  }, [searchQuery]);

  const handleAskAI = (e: React.FormEvent) => {
    e.preventDefault();
    if (onOpenChat) {
      onOpenChat(searchQuery.trim() || undefined);
      setSearchQuery("");
    }
  };

  const handleResultClick = (item: SearchResult) => {
    setSearchQuery("");
    setIsFocused(false);
    const route =
      item.type === "College" ? `/colleges/${item.slug}` :
      item.type === "Course"  ? `/courses/${item.slug}`  :
      `/exams/${item.slug}`;
    navigate(route);
  };

  const handleSuggestionClick = (prompt: string) => {
    if (onOpenChat) onOpenChat(prompt);
  };

  const handleHashLink = (href: string) => {
    const element = document.getElementById(href.slice(1));
    element?.scrollIntoView({ behavior: "smooth", block: "start" });
  };

  const showDropdown = isFocused && searchQuery.trim().length >= 2 && dbResults.length > 0;
  const rotatingWords = ["Path", "College", "Course", "Career"] as const;

  const getIcon = (item: SearchResult) => {
    if (item.type === "College") return GraduationCap;
    if (item.type === "Course") return BookOpen;
    return FileText;
  };

  const getThumb = (item: SearchResult) => {
    if (item.type === "College" && item.logo) {
      return <img src={item.logo} alt="" className="w-10 h-10 rounded-xl object-cover" />;
    }
    if (item.type === "Exam" && (item.image || item.logo)) {
      return <img src={item.logo || item.image!} alt="" className="w-10 h-10 rounded-xl object-cover" />;
    }
    const Icon = getIcon(item);
    return (
      <div className="w-10 h-10 rounded-xl bg-primary/10 flex items-center justify-center">
        <Icon className="w-5 h-5 text-primary" />
      </div>
    );
  };

  return (
    <section
      className={`relative isolate overflow-visible bg-[linear-gradient(118deg,#fff7f1_0%,#f8fbff_48%,#eef5ff_100%)] ${showDropdown ? "z-[500]" : "z-0"}`}
      aria-label="Hero"
    >
      {/* Background - bold campus image at top, smoothly fading to background where search bar sits */}
      {bgImages.length > 0 && <div className="absolute inset-x-0 top-0 h-[58%] md:h-[62%] overflow-hidden" aria-hidden="true">
          <div
            key={bgIndex}
            className="absolute inset-0"
            style={{
              backgroundImage: `url(${bgImages[bgIndex % bgImages.length]})`,
              backgroundSize: "cover",
              backgroundPosition: "center",
              opacity: heroSettings?.overlay_mode === "none" ? 1 : (heroSettings?.overlay_opacity ?? 0.45) + 0.4,
              filter: `blur(${heroSettings?.blur_px ?? 3}px) saturate(${heroSettings?.saturation ?? 1.05}) brightness(${heroSettings?.brightness ?? 1}) grayscale(${heroSettings?.grayscale ?? 0})`,
              transform: "scale(1.05)",
              WebkitMaskImage:
                "linear-gradient(to bottom, rgba(0,0,0,0.95) 35%, rgba(0,0,0,0.6) 75%, rgba(0,0,0,0) 100%)",
              maskImage: "linear-gradient(to bottom, rgba(0,0,0,0.95) 35%, rgba(0,0,0,0.6) 75%, rgba(0,0,0,0) 100%)",
            }}
          />
        {/* Admin-configurable tint/overlay */}
        {heroSettings && heroSettings.overlay_mode !== "none" && (
          <div className="absolute inset-0 pointer-events-none" style={{
            background: heroSettings.overlay_mode === "gradient"
              ? `linear-gradient(180deg, ${heroSettings.tint_color}00 0%, ${heroSettings.tint_color}${Math.round(heroSettings.overlay_opacity * 255).toString(16).padStart(2,"0")} 100%)`
              : heroSettings.overlay_mode === "tint"
                ? `${heroSettings.tint_color}${Math.round(heroSettings.overlay_opacity * 255).toString(16).padStart(2,"0")}`
                : heroSettings.overlay_mode === "light"
                  ? `rgba(255,255,255,${heroSettings.overlay_opacity})`
                  : `rgba(0,0,0,${heroSettings.overlay_opacity})`,
          }} />
        )}
        {/* Crisp top + smooth fade to base background */}
        <div className="absolute inset-0 bg-gradient-to-b from-background/60 via-background/35 to-background pointer-events-none" />
      </div>}
      <div className="absolute inset-0 overflow-hidden pointer-events-none" aria-hidden="true">
        <div
          className="absolute inset-0 opacity-[0.03]"
          style={{
            backgroundImage: `radial-gradient(circle at 1px 1px, hsl(var(--foreground)) 1px, transparent 0)`,
            backgroundSize: "40px 40px",
          }}
        />
        {/* 2026 aurora orbs - ambitio-style ambient gradient glow */}
        <div
          aria-hidden
          className="absolute top-[-10%] left-[10%] w-[520px] h-[520px] bg-accent/20 rounded-full blur-[140px]"
        />
        <div
          aria-hidden
          className="absolute top-[10%] right-[5%] w-[460px] h-[460px] bg-primary/20 rounded-full blur-[140px]"
        />
        <div
          aria-hidden
          className="absolute bottom-[-5%] left-[35%] w-[380px] h-[380px] bg-accent/8 rounded-full blur-[140px]"
        />
        <div className="absolute -right-40 top-24 h-[520px] w-[520px] rounded-full border-[70px] border-primary/[0.035]" />
        <div className="absolute -left-52 top-28 h-[460px] w-[460px] rounded-full border-[60px] border-accent/[0.04]" />
      </div>

      <div className="container relative z-10 px-4 py-8 md:py-14 lg:py-16">
        <div className="max-w-7xl mx-auto">
          <div className="grid items-center gap-8 lg:grid-cols-[minmax(0,1.25fr)_minmax(360px,0.75fr)] lg:gap-12">
            <div className="space-y-5 text-left md:space-y-6">
              {/* AI Badge + Built by IIT Delhi Alumni hero statement */}
              <div className="flex flex-col items-start justify-start gap-3">
            <span className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full bg-accent/10 border border-accent/25">
              <img src={dcLogo} alt="DekhoCampus" className="w-4 h-4 object-contain" />
              <span className="text-[11px] md:text-xs font-bold tracking-[0.12em] uppercase text-accent">
                Built by IIT Delhi Alumni
              </span>
            </span>

              <span className="inline-flex items-center gap-1.5 text-xs font-semibold text-muted-foreground select-none" aria-label="Trusted by more than one lakh students">
                <span className="relative flex h-1.5 w-1.5">
                  <span className="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-500 opacity-75"></span>
                  <span className="relative inline-flex rounded-full h-1.5 w-1.5 bg-emerald-500"></span>
                </span>
                1L+ students already guided
              </span>
          </div>

          {/* Primary promise */}
          <div>
            <h1
              className="max-w-5xl select-none text-[32px] font-black leading-[0.96] tracking-[-0.052em] text-foreground min-[390px]:text-[35px] sm:text-[56px] md:text-[68px] lg:text-[86px]"
              style={{ overflowWrap: "normal", wordBreak: "normal" }}
            >
              <span className="inline text-[#111827]" style={{ overflowWrap: "normal", wordBreak: "normal" }}>
                Discover Your Ideal{" "}
              </span>
              <span
                className="relative inline-flex min-w-[3.5em] overflow-visible align-baseline text-[#78aeca]"
                style={{ overflowWrap: "normal", wordBreak: "normal" }}
              >
                <span
                  key={rotatingWords[headlineIndex]}
                  className="absolute left-0 top-0 inline-block animate-dc-word-land whitespace-nowrap text-[#78aeca]"
                  style={{ overflowWrap: "normal", wordBreak: "normal" }}
                >
                  {rotatingWords[headlineIndex]}
                </span>
                <span className="invisible whitespace-nowrap">College</span>
              </span>
            </h1>
            <p className="mt-5 max-w-2xl text-sm font-medium leading-6 text-slate-600 sm:text-base md:text-lg md:leading-8">
              Search verified colleges, courses and exams, then move forward with clear guidance, transparent information and human support when you need it.
            </p>
          </div>

          {/* Unified Search Bar with AI icon */}
          <div className="relative z-[120] max-w-2xl">
            <form onSubmit={handleAskAI}>
              <div className="relative">
                <div
                  className={`relative flex items-center bg-card/90 backdrop-blur-xl rounded-full shadow-[0_10px_40px_-12px_hsl(var(--primary)/0.25)] border p-1.5 transition-all ${isFocused ? "border-primary/40 ring-2 ring-primary/10" : "border-border/60"}`}
                >
                  <div className="flex-shrink-0 w-10 h-10 md:w-11 md:h-11 rounded-full flex items-center justify-center ml-1">
                    {searchQuery.trim() ? (
                      <Search className="w-5 h-5 text-muted-foreground" />
                    ) : (
                      <Search className="w-5 h-5 text-muted-foreground" />
                    )}
                  </div>
                  <input
                    type="text"
                    value={searchQuery}
                    onChange={(e) => setSearchQuery(e.target.value)}
                    onFocus={() => setIsFocused(true)}
                    onBlur={() => setTimeout(() => setIsFocused(false), 200)}
                    autoCapitalize="none"
                    autoCorrect="off"
                    spellCheck={false}
                    placeholder="Search Colleges, Courses, Exams or Ask AI..."
                    className="flex-1 bg-transparent border-0 text-sm md:text-base placeholder:text-muted-foreground/60 focus:outline-none focus:ring-0 py-2.5 md:py-3 px-1 text-foreground min-w-0"
                    aria-label="Search or ask AI"
                  />
                  <Button
                    type="submit"
                    size="default"
                    className="rounded-full bg-accent hover:bg-accent/90 text-accent-foreground px-4 md:px-6 shadow-lg h-10 md:h-11 relative"
                    aria-label="Ask AI"
                  >
                    <Send className="w-4 h-4 md:mr-2" />
                    <span className="hidden md:inline font-semibold text-sm">Ask AI</span>
                    <span className="absolute -top-1.5 -right-1.5 px-1.5 h-4 rounded-full bg-white border border-accent/30 text-[9px] text-accent font-bold flex items-center justify-center shadow-sm">
                      AI
                    </span>
                  </Button>
                </div>

                {/* Search Results Dropdown */}
                {showDropdown && (
                  <div className="absolute top-full left-0 right-0 mt-2 max-h-[min(68vh,720px)] overflow-y-auto overscroll-contain bg-card border border-border rounded-2xl shadow-2xl z-[620]">
                    <div className="py-2">
                      {dbResults.map((item) => (
                        <button
                          key={`${item.type}-${item.slug}`}
                          onMouseDown={() => handleResultClick(item)}
                          className="w-full flex items-center gap-3 px-4 py-2.5 hover:bg-muted/50 transition-colors text-left"
                        >
                          {getThumb(item)}
                          <div className="flex-1 min-w-0">
                            <p className="font-medium text-foreground truncate text-sm">{displayText(item.name, "Untitled")}</p>
                            <div className="flex items-center gap-1 text-xs text-muted-foreground">
                              <span>{item.type}</span>
                              {item.location && (
                                <>
                                  <span>•</span>
                                  <MapPin className="w-3 h-3" />
                                  <span className="truncate">{displayText(item.location)}</span>
                                </>
                              )}
                            </div>
                          </div>
                          <ArrowRight className="w-4 h-4 text-muted-foreground" />
                        </button>
                      ))}
                    </div>
                    {/* Ask AI option at bottom */}
                    <div className="border-t border-border px-4 py-2.5">
                      <button
                        onMouseDown={handleAskAI as any}
                        className="w-full flex items-center gap-3 text-left hover:opacity-80 transition-opacity"
                      >
                        <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-primary to-primary/70 flex items-center justify-center">
                          <Sparkles className="w-5 h-5 text-white" />
                        </div>
                        <div>
                          <p className="font-semibold text-accent text-sm">Ask AI Counselor</p>
                          <p className="text-xs text-muted-foreground">Get personalized guidance for "{searchQuery}"</p>
                        </div>
                      </button>
                    </div>
                  </div>
                )}
              </div>
            </form>

            {/* Prompt chips */}
            <div className="mt-3 flex flex-wrap items-center justify-start gap-1.5 md:gap-2">
              <Zap className="w-3.5 h-3.5 text-accent" />
              <span className="text-xs text-muted-foreground font-medium">Try:</span>
              {suggestedPrompts.map((prompt) => (
                <button
                  key={prompt}
                  onClick={() => handleSuggestionClick(prompt)}
                  className="px-2.5 py-1 text-[11px] md:text-xs bg-card border border-border/60 rounded-full text-muted-foreground hover:text-foreground hover:border-primary/40 hover:bg-primary/5 transition-all"
                >
                  {prompt}
                </button>
              ))}
              </div>

          <nav className="mt-5 -mx-1 flex max-w-4xl gap-2 overflow-x-auto px-1 pb-1 scrollbar-hide" aria-label="Hero quick links">
            {heroQuickLinks.map(({ label, icon: Icon, href }) => {
              const className = "inline-flex shrink-0 items-center gap-1.5 rounded-full border border-white/80 bg-white/80 px-3 py-1.5 text-[11px] font-bold text-slate-700 shadow-sm backdrop-blur-md transition hover:border-primary/30 hover:bg-primary/5 hover:text-primary md:px-3.5 md:text-xs";
              const content = (
                <>
                  <Icon className="h-3.5 w-3.5" />
                  {label}
                </>
              );

              if (href.startsWith("#")) {
                return (
                  <button key={label} type="button" onClick={() => handleHashLink(href)} className={className}>
                    {content}
                  </button>
                );
              }

              return (
                <Link key={label} to={href} className={className}>
                  {content}
                </Link>
              );
            })}
          </nav>

          <div className="mt-4 grid max-w-4xl grid-cols-3 gap-2 sm:grid-cols-6 md:gap-3">
            {heroTiles.map((item) => (
              <Link
                key={item.label}
                to={item.href}
                className={`group flex min-h-[92px] flex-col items-center justify-center gap-2 rounded-2xl border ${item.tone} px-2 py-3 text-center shadow-sm transition hover:-translate-y-0.5 hover:shadow-md md:min-h-[112px] md:gap-2.5`}
              >
                <img src={item.icon} alt="" loading="eager" className="h-8 w-8 object-contain transition-transform group-hover:scale-105 md:h-11 md:w-11" />
                <span className="max-w-[86px] text-[11px] font-extrabold leading-tight text-foreground md:text-xs">
                  {item.label}
                </span>
              </Link>
            ))}
          </div>
        </div>

            </div>

            <HeroCounsellingCard onStart={(message) => handleSuggestionClick(message)} />
          </div>

        </div>
      </div>
    </section>
  );
}
