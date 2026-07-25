import { useState } from "react";
import { Loader2, ShieldCheck, WandSparkles } from "lucide-react";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { ThirdPartyNotice } from "@/components/ThirdPartyNotice";

type SupportedEntity = "colleges" | "courses" | "exams";

type OfficialDataFillButtonProps = {
  entityType: SupportedEntity;
  record: Record<string, unknown>;
  onApply: (updates: Record<string, unknown>) => void;
};

export function OfficialDataFillButton({ entityType, record, onApply }: OfficialDataFillButtonProps) {
  const [loading, setLoading] = useState(false);
  const name = String(record.name || "").trim();

  const fill = async () => {
    if (!name) return toast.error("Enter the name first");
    setLoading(true);
    try {
      const { data, error } = await supabase.functions.invoke("admin-data-cleaner", {
        body: { action: "enrich_draft", entity_type: entityType, record },
      });
      if (error) {
        let message = error.message;
        try {
          const response = (error as any).context as Response | undefined;
          if (response) message = (await response.clone().json())?.error || message;
        } catch { /* keep SDK message */ }
        throw new Error(message);
      }
      if (data?.error) throw new Error(data.error);
      const changedFields = Array.isArray(data?.changed_fields) ? data.changed_fields : [];
      if (!changedFields.length) {
        toast.info("No new field values could be verified from an official source. Existing values were preserved.");
        return;
      }
      onApply(data.proposed_data || {});
      toast.success(`Filled ${changedFields.length} verified field${changedFields.length === 1 ? "" : "s"} from official sources`);
    } catch (error) {
      toast.error(error instanceof Error ? error.message : "Official-source fill failed");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="space-y-2 rounded-2xl border border-blue-200 bg-blue-50/50 p-3">
      <div className="flex flex-col gap-2 sm:flex-row sm:items-center sm:justify-between">
        <div className="flex items-start gap-2">
          <ShieldCheck className="mt-0.5 h-4 w-4 shrink-0 text-primary" />
          <div>
            <p className="text-xs font-bold text-foreground">Official-source AI fill</p>
            <p className="text-[11px] leading-4 text-muted-foreground">
              Matches the result to this form's database columns. Verified fields are filled; unsupported fields stay unchanged.
            </p>
          </div>
        </div>
        <Button type="button" variant="outline" size="sm" disabled={loading || !name} onClick={fill} className="shrink-0 rounded-xl bg-white">
          {loading ? <Loader2 className="mr-2 h-3.5 w-3.5 animate-spin" /> : <WandSparkles className="mr-2 h-3.5 w-3.5" />}
          {loading ? "Checking official sources..." : "Fill verified details"}
        </Button>
      </div>
      <ThirdPartyNotice compact />
    </div>
  );
}
