import { useEffect, useRef, useState } from "react";
import { Home, GraduationCap, FileText, Phone, User } from "lucide-react";
import { Link, useLocation } from "react-router-dom";
import { useAuth } from "@/hooks/useAuth";

const baseItems = [
  { icon: Home, label: "Home", href: "/" },
  { icon: GraduationCap, label: "Colleges", href: "/colleges" },
  { icon: FileText, label: "Exams", href: "/exams" },
] as const;

export function HomeMobileBottomNav() {
  const location = useLocation();
  const { user } = useAuth();
  const profileHref = user ? "/dashboard" : "/auth";
  const profileImage = user?.user_metadata?.avatar_url || user?.user_metadata?.picture || "";
  const [visible, setVisible] = useState(false);
  const lastScrollY = useRef(0);
  const downSteps = useRef(0);

  useEffect(() => {
    lastScrollY.current = window.scrollY;
    downSteps.current = 0;
    setVisible(false);

    const onScroll = () => {
      if (window.matchMedia("(min-width: 1024px)").matches) {
        setVisible(false);
        return;
      }

      const nextY = window.scrollY;
      const delta = nextY - lastScrollY.current;
      lastScrollY.current = nextY;

      if (nextY < 80) {
        downSteps.current = 0;
        setVisible(false);
        return;
      }

      if (delta > 8) {
        downSteps.current += 1;
        if (downSteps.current >= 2) setVisible(true);
      } else if (delta < -8) {
        downSteps.current = 0;
        setVisible(false);
      }
    };

    window.addEventListener("scroll", onScroll, { passive: true });
    return () => window.removeEventListener("scroll", onScroll);
  }, [location.pathname]);

  return (
    <>
      <nav
        aria-label="Mobile navigation"
        className={`fixed inset-x-0 bottom-0 z-[70] border-t border-slate-200 bg-white/95 pb-[env(safe-area-inset-bottom)] shadow-[0_-10px_28px_-24px_rgba(15,23,42,.7)] backdrop-blur-xl transition-transform duration-200 ease-out lg:hidden ${
          visible ? "translate-y-0" : "translate-y-full"
        }`}
      >
        <div className="grid h-16 grid-cols-5 items-stretch px-1">
          {baseItems.map((item) => {
            const active = item.href === "/" ? location.pathname === "/" : location.pathname.startsWith(item.href);
            return (
              <Link key={item.label} to={item.href} className={`flex min-w-0 flex-col items-center justify-center gap-1 text-[10px] font-medium ${active ? "text-primary" : "text-slate-500"}`}>
                <item.icon className="h-5 w-5" />
                <span className="truncate">{item.label}</span>
              </Link>
            );
          })}
          <a href="tel:+919990109797" className="flex min-w-0 flex-col items-center justify-center gap-1 text-[10px] font-medium text-slate-500">
            <Phone className="h-5 w-5" />
            <span>Call</span>
          </a>
          <Link to={profileHref} className={`flex min-w-0 flex-col items-center justify-center gap-1 text-[10px] font-medium ${location.pathname.startsWith("/dashboard") || location.pathname.startsWith("/auth") ? "text-primary" : "text-slate-500"}`}>
            {profileImage ? <img src={profileImage} alt="Profile" className="h-6 w-6 rounded-full object-cover ring-1 ring-primary/20" /> : <User className="h-5 w-5" />}
            <span className="truncate">Profile</span>
          </Link>
        </div>
      </nav>
      <div className={`transition-[height] duration-200 lg:hidden ${visible ? "h-20" : "h-0"}`} aria-hidden="true" />
    </>
  );
}
