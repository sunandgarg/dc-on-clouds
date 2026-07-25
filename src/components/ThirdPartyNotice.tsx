import { ShieldAlert } from "lucide-react";

type ThirdPartyNoticeProps = {
  compact?: boolean;
  className?: string;
};

export function ThirdPartyNotice({ compact = false, className = "" }: ThirdPartyNoticeProps) {
  return (
    <div
      role="note"
      aria-label="Independent information disclaimer"
      className={`flex items-start justify-center gap-2 border-amber-200 bg-amber-50/95 text-amber-950 ${
        compact
          ? "rounded-xl border px-3 py-2 text-[11px] leading-4"
          : "border-t px-3 py-2 text-center text-[11px] leading-4 md:text-xs"
      } ${className}`}
    >
      <ShieldAlert className="mt-0.5 h-3.5 w-3.5 shrink-0 text-amber-700" />
      <span>
        <strong>DekhoCampus is a third-party information platform and is not associated with any examination authority.</strong>{" "}
        Check all official documents and official websites for correct, current information.
      </span>
    </div>
  );
}
