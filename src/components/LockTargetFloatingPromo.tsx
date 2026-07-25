import { useEffect, useState } from "react";
import { Link, useLocation } from "react-router-dom";
import { Target, X, Sparkles } from "lucide-react";
import { useAuth } from "@/hooks/useAuth";


const DISMISS_KEY = "lock_target_promo_dismissed_v1";

export function LockTargetFloatingPromo() {
  const { pathname } = useLocation();
  const { user } = useAuth();
  const [open, setOpen] = useState(false);

  useEffect(() => {
    if (typeof window === "undefined") return;
    const dismissed = sessionStorage.getItem(DISMISS_KEY);
    if (dismissed) return;
    const t = setTimeout(() => setOpen(true), 4500);
    return () => clearTimeout(t);
  }, []);

  // Hide on the lock-target page itself, dashboard, auth, and admin
  if (
    pathname.startsWith("/lock-target") ||
    pathname.startsWith("/target-dashboard") ||
    pathname.startsWith("/my-targets") ||
    pathname.startsWith("/target-with-ai") ||
    pathname.startsWith("/admin") ||
    pathname.startsWith("/auth")
  ) {
    return null;
  }


  if (!open) return null;

  function dismiss() {
    sessionStorage.setItem(DISMISS_KEY, "1");
    setOpen(false);
  }

  return (
    <div
      className="fixed z-[60] left-3 md:left-5 bottom-20 md:bottom-24 max-w-[300px] animate-in slide-in-from-bottom-2 fade-in"
      role="dialog"
      aria-label="Lock your dream college"
    >
      <div className="relative rounded-2xl border border-slate-200 bg-white text-slate-900 shadow-xl p-3 pr-9">
        <button
          onClick={dismiss}
          aria-label="Dismiss"
          className="absolute top-1.5 right-1.5 flex h-6 w-6 items-center justify-center rounded-full bg-slate-100 text-slate-500 hover:bg-slate-200"
        >
          <X className="w-3.5 h-3.5" />
        </button>
        <Link to={user ? "/target-dashboard" : "/lock-target"} onClick={() => sessionStorage.setItem(DISMISS_KEY, "1")} className="block">
          <div className="flex items-center gap-2.5">
            <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-xl bg-primary/10 text-primary">
              <Target className="w-5 h-5" strokeWidth={2.5} />
            </div>
            <div className="min-w-0">
              <div className="text-[10px] font-extrabold uppercase tracking-wider text-primary">
                Dream College
              </div>
              <div className="text-[15px] font-extrabold leading-tight">
                {user ? "Open my dashboard" : "Lock your dream college 🔒"}
              </div>
              <div className="mt-0.5 text-[11px] leading-tight text-slate-500">
                {user ? "Predicted fit, exams & roadmap →" : "Free roadmap + PDF. Tap to start →"}
              </div>
            </div>
          </div>
        </Link>
      </div>
    </div>
  );
}
