import { useEffect, useMemo, useRef, useState } from "react";
import { useNavigate } from "react-router-dom";
import { BookOpen, BriefcaseBusiness, FileText, GraduationCap, Search, Sparkles, X } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { buildIlikeOr, buildSearchVariants } from "@/lib/fuzzySearch";

type DirectoryResult = {
  entity_type: "College" | "Course" | "Exam" | "Career";
  name: string;
  slug: string;
  subtitle: string;
  image_url: string;
  score?: number;
};

type GlobalSearchBarProps = {
  variant?: "header" | "hero";
  onAskAI?: (message?: string) => void;
};

type FuzzySearchRpc = {
  rpc: (
    fn: "search_directory_fuzzy",
    args: { p_terms: string[]; p_limit: number },
  ) => Promise<{ data: DirectoryResult[] | null; error: { message?: string } | null }>;
};

const routeFor = (result: DirectoryResult) => {
  if (result.entity_type === "College") return `/colleges/${result.slug}`;
  if (result.entity_type === "Course") return `/courses/${result.slug}`;
  if (result.entity_type === "Exam") return `/exams/${result.slug}`;
  return `/careers/${result.slug}`;
};

const iconFor = (type: DirectoryResult["entity_type"]) => {
  if (type === "College") return GraduationCap;
  if (type === "Course") return BookOpen;
  if (type === "Exam") return FileText;
  return BriefcaseBusiness;
};

export function GlobalSearchBar({ variant = "header", onAskAI }: GlobalSearchBarProps) {
  const navigate = useNavigate();
  const [query, setQuery] = useState("");
  const [results, setResults] = useState<DirectoryResult[]>([]);
  const [focused, setFocused] = useState(false);
  const [loading, setLoading] = useState(false);
  const requestId = useRef(0);
  const variants = useMemo(() => buildSearchVariants(query.trim().toLowerCase()).slice(0, 10), [query]);
  const isHero = variant === "hero";

  useEffect(() => {
    const currentRequest = ++requestId.current;
    if (query.trim().length < 2) {
      setResults([]);
      setLoading(false);
      return;
    }

    setLoading(true);
    const timer = window.setTimeout(async () => {
      try {
        const { data, error } = await (supabase as unknown as FuzzySearchRpc).rpc("search_directory_fuzzy", {
          p_terms: variants,
          p_limit: 10,
        });
        if (error) throw error;
        if (requestId.current === currentRequest) setResults((data || []) as DirectoryResult[]);
      } catch {
        // Safe fallback while the fuzzy-search migration is rolling out.
        const orFor = (column: string) => buildIlikeOr(column, variants);
        const [colleges, courses, exams] = await Promise.all([
          supabase.from("colleges").select("name,slug,city,logo").eq("is_active", true).or(orFor("name")).limit(3),
          supabase.from("courses").select("name,slug").eq("is_active", true).or(orFor("name")).limit(3),
          supabase.from("exams").select("name,slug,logo").eq("is_active", true).or(orFor("name")).limit(2),
        ]);
        const fallback: DirectoryResult[] = [
          ...(colleges.data || []).map((row) => ({ entity_type: "College" as const, name: row.name, slug: row.slug, subtitle: row.city || "", image_url: row.logo || "" })),
          ...(courses.data || []).map((row) => ({ entity_type: "Course" as const, name: row.name, slug: row.slug, subtitle: "", image_url: "" })),
          ...(exams.data || []).map((row) => ({ entity_type: "Exam" as const, name: row.name, slug: row.slug, subtitle: "", image_url: row.logo || "" })),
        ];
        if (requestId.current === currentRequest) setResults(fallback);
      } finally {
        if (requestId.current === currentRequest) setLoading(false);
      }
    }, 220);

    return () => window.clearTimeout(timer);
  }, [query, variants]);

  const askDiya = () => {
    const message = query.trim() || undefined;
    if (onAskAI) onAskAI(message);
    else window.dispatchEvent(new CustomEvent("dc:open-diya", { detail: { message } }));
    setQuery("");
    setFocused(false);
  };

  const choose = (result: DirectoryResult) => {
    setQuery("");
    setFocused(false);
    navigate(routeFor(result));
  };

  const showDropdown = focused && query.trim().length >= 2;

  return (
    <div className={`relative w-full ${isHero ? "max-w-2xl" : "mx-auto max-w-3xl"}`}>
      <div className={`flex w-full items-center border bg-white transition focus-within:border-primary/40 focus-within:ring-2 focus-within:ring-primary/10 ${
        isHero
          ? "min-h-14 rounded-2xl border-border/70 px-2 shadow-[0_16px_45px_-24px_rgba(30,64,175,.45)]"
          : "min-h-10 rounded-xl border-border/80 px-2 shadow-sm"
      }`}>
        <Search className={`shrink-0 text-slate-400 ${isHero ? "ml-1 h-5 w-5" : "h-4 w-4"}`} />
        <input
          type="search"
          value={query}
          onChange={(event) => setQuery(event.target.value)}
          onFocus={() => setFocused(true)}
          onBlur={() => window.setTimeout(() => setFocused(false), 160)}
          placeholder="Search colleges, courses, exams and careers"
          aria-label="Search the entire DekhoCampus website"
          className={`min-w-0 flex-1 border-0 bg-transparent text-foreground outline-none placeholder:text-slate-400 ${
            isHero ? "px-3 py-3 text-base" : "px-2.5 py-2 text-sm"
          }`}
        />
        {query && (
          <button type="button" onMouseDown={(event) => event.preventDefault()} onClick={() => setQuery("")}
            className="flex h-8 w-8 shrink-0 items-center justify-center rounded-lg text-slate-400 hover:bg-slate-100 hover:text-slate-700" aria-label="Clear search">
            <X className="h-4 w-4" />
          </button>
        )}
        <button
          type="button"
          onMouseDown={(event) => event.preventDefault()}
          onClick={askDiya}
          className={`ml-1 inline-flex shrink-0 items-center justify-center gap-1.5 rounded-lg bg-primary font-semibold text-white transition hover:bg-primary/90 ${
            isHero ? "h-10 px-4 text-sm" : "h-8 px-3 text-xs"
          }`}
        >
          <Sparkles className="h-3.5 w-3.5" />
          <span className="hidden sm:inline">Ask Diya</span>
        </button>
      </div>

      {showDropdown && (
        <div className="absolute inset-x-0 top-full z-[80] mt-2 overflow-hidden rounded-2xl border border-border bg-white shadow-2xl">
          <div className="max-h-[min(65vh,430px)] overflow-y-auto p-1.5">
            {loading && !results.length && <p className="px-3 py-5 text-center text-sm text-muted-foreground">Searching…</p>}
            {!loading && !results.length && (
              <button type="button" onMouseDown={(event) => event.preventDefault()} onClick={askDiya}
                className="flex w-full items-center gap-3 rounded-xl px-3 py-3 text-left hover:bg-slate-50">
                <span className="flex h-9 w-9 items-center justify-center rounded-xl bg-primary/10 text-primary"><Sparkles className="h-4 w-4" /></span>
                <span><strong className="block text-sm">Ask Diya about “{query.trim()}”</strong><span className="text-xs text-muted-foreground">No exact match found</span></span>
              </button>
            )}
            {results.map((result) => {
              const Icon = iconFor(result.entity_type);
              return (
                <button key={`${result.entity_type}-${result.slug}`} type="button"
                  onMouseDown={(event) => event.preventDefault()} onClick={() => choose(result)}
                  className="flex w-full items-center gap-3 rounded-xl px-3 py-2.5 text-left hover:bg-slate-50">
                  <span className="flex h-9 w-9 shrink-0 items-center justify-center overflow-hidden rounded-xl bg-slate-100 text-primary">
                    {result.image_url ? <img src={result.image_url} alt="" className="h-full w-full object-cover" /> : <Icon className="h-4 w-4" />}
                  </span>
                  <span className="min-w-0 flex-1">
                    <strong className="block truncate text-sm text-foreground">{result.name}</strong>
                    <span className="block truncate text-xs text-muted-foreground">{result.entity_type}{result.subtitle ? ` · ${result.subtitle}` : ""}</span>
                  </span>
                </button>
              );
            })}
          </div>
        </div>
      )}
    </div>
  );
}
