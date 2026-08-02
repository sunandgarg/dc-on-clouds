import { useMemo, useState } from "react";
import { useQuery } from "@tanstack/react-query";
import { BookOpenCheck, CheckSquare2, Loader2, Search, Square, Sparkles, X } from "lucide-react";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";

type EntityType = "college" | "course" | "exam";
type EntityRow = { slug: string; name: string; official_website?: string | null };
type Selection = EntityRow & { entity_type: EntityType };

const TABLES: Record<EntityType, string> = { college: "colleges", course: "courses", exam: "exams" };
const LABELS: Record<EntityType, string> = { college: "Colleges", course: "Courses", exam: "Exams" };

export function EntityResearchBlogPanel({ onArticlesCreated }: { onArticlesCreated?: () => void }) {
  const [entityType, setEntityType] = useState<EntityType>("college");
  const [search, setSearch] = useState("");
  const [selected, setSelected] = useState<Selection[]>([]);
  const [busy, setBusy] = useState(false);

  const { data: results = [], isFetching } = useQuery({
    queryKey: ["blog-entity-research-options", entityType, search],
    queryFn: async () => {
      let query = supabase.from(TABLES[entityType]).select("slug,name").eq("is_active", true).order("name").limit(30);
      if (search.trim()) query = query.ilike("name", `%${search.trim()}%`);
      const { data, error } = await query;
      if (error) throw error;
      return (data || []) as EntityRow[];
    },
    staleTime: 60_000,
  });

  const selectedKeys = useMemo(() => new Set(selected.map((item) => `${item.entity_type}:${item.slug}`)), [selected]);
  const toggle = (row: EntityRow) => {
    const key = `${entityType}:${row.slug}`;
    setSelected((current) => selectedKeys.has(key)
      ? current.filter((item) => `${item.entity_type}:${item.slug}` !== key)
      : current.length >= 20 ? current : [...current, { ...row, entity_type: entityType }]);
  };
  const selectAllVisible = () => {
    setSelected((current) => {
      const next = [...current];
      for (const row of results) {
        const key = `${entityType}:${row.slug}`;
        if (!next.some((item) => `${item.entity_type}:${item.slug}` === key) && next.length < 20) next.push({ ...row, entity_type: entityType });
      }
      return next;
    });
  };

  const generate = async () => {
    if (!selected.length) return toast.error("Select at least one college, course or exam");
    setBusy(true);
    try {
      const { data, error } = await supabase.functions.invoke("admin-blog-agent", {
        body: {
          trigger_type: "manual",
          mode: "entity_research",
          selected_entities: selected.map(({ entity_type, slug }) => ({ entity_type, slug })),
          override: { posts_per_run: selected.length, human_review_required: true, publish_status: "Draft" },
        },
      });
      if (error || data?.error) throw error || new Error(data.error);
      toast.success(`Created ${data?.created_article_ids?.length || 0} researched draft(s)`);
      setSelected([]);
      onArticlesCreated?.();
    } catch (error: unknown) {
      const failure = error as { message?: string; context?: { clone?: () => { json?: () => Promise<{ error?: string }> } } };
      let message = failure?.message || "Could not create researched blogs";
      try {
        const payload = await failure?.context?.clone?.().json?.();
        if (payload?.error) message = payload.error;
      } catch { /* use original error */ }
      toast.error(message, { duration: 14000 });
    } finally {
      setBusy(false);
    }
  };

  return (
    <section className="mb-4 rounded-2xl border border-primary/20 bg-gradient-to-br from-primary/5 via-card to-orange-500/5 p-4 shadow-sm">
      <div className="flex flex-col gap-3 lg:flex-row lg:items-start lg:justify-between">
        <div>
          <div className="flex items-center gap-2"><BookOpenCheck className="h-5 w-5 text-primary" /><h3 className="font-semibold">Research a College, Course or Exam</h3><Badge variant="outline">New quick mode</Badge></div>
          <p className="mt-1 max-w-3xl text-xs text-muted-foreground">Choose specific entities. The agent checks the saved official website first, uses database facts as context, adds citations and internal links, and creates review-ready drafts. The existing automatic workflow above is unchanged.</p>
        </div>
        <Button onClick={generate} disabled={busy || !selected.length} className="gap-2 rounded-xl">
          {busy ? <Loader2 className="h-4 w-4 animate-spin" /> : <Sparkles className="h-4 w-4" />} Research and write {selected.length || ""}
        </Button>
      </div>

      <div className="mt-4 flex flex-wrap gap-2">
        {(Object.keys(TABLES) as EntityType[]).map((type) => <Button key={type} size="sm" type="button" variant={entityType === type ? "default" : "outline"} onClick={() => { setEntityType(type); setSearch(""); }}>{LABELS[type]}</Button>)}
      </div>
      <div className="mt-3 flex flex-col gap-2 sm:flex-row">
        <div className="relative flex-1"><Search className="absolute left-3 top-1/2 h-4 w-4 -translate-y-1/2 text-muted-foreground" /><Input value={search} onChange={(event) => setSearch(event.target.value)} placeholder={`Search ${LABELS[entityType].toLowerCase()}...`} className="pl-9" /></div>
        <Button type="button" variant="outline" onClick={selectAllVisible} disabled={!results.length || selected.length >= 20} className="gap-2"><CheckSquare2 className="h-4 w-4" /> Select all shown</Button>
        {selected.length > 0 && <Button type="button" variant="ghost" onClick={() => setSelected([])} className="gap-2 text-destructive"><X className="h-4 w-4" /> Clear</Button>}
      </div>

      <div className="mt-3 grid max-h-64 gap-2 overflow-y-auto sm:grid-cols-2 lg:grid-cols-3">
        {isFetching ? <div className="col-span-full py-6 text-center text-sm text-muted-foreground">Searching...</div> : results.map((row) => {
          const checked = selectedKeys.has(`${entityType}:${row.slug}`);
          return <button key={row.slug} type="button" onClick={() => toggle(row)} className={`flex items-start gap-2 rounded-xl border p-3 text-left transition ${checked ? "border-primary bg-primary/10" : "hover:border-primary/40"}`}>
            {checked ? <CheckSquare2 className="mt-0.5 h-4 w-4 shrink-0 text-primary" /> : <Square className="mt-0.5 h-4 w-4 shrink-0 text-muted-foreground" />}
            <span className="min-w-0"><span className="block line-clamp-2 text-sm font-medium">{row.name}</span><span className="block truncate text-[10px] text-muted-foreground">{row.slug}</span></span>
          </button>;
        })}
      </div>
      {!!selected.length && <div className="mt-3 flex flex-wrap gap-1.5">{selected.map((item) => <Badge key={`${item.entity_type}:${item.slug}`} variant="secondary" className="gap-1">{item.name}<button type="button" aria-label={`Remove ${item.name}`} onClick={() => setSelected((current) => current.filter((value) => value !== item))}><X className="h-3 w-3" /></button></Badge>)}</div>}
      <p className="mt-2 text-[10px] text-muted-foreground">Maximum 20 per run. Generated items stay in Draft for review; use the bulk toolbar below to publish selected or all filtered articles.</p>
    </section>
  );
}
