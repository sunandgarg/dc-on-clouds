import Link from "next/link";

const links = [
  ["Colleges", "/colleges"], ["Courses", "/courses"], ["Exams", "/exams"],
  ["Scholarships", "/scholarships"], ["Careers", "/careers"], ["News", "/news"]
] as const;

export function SiteHeader() {
  return <header className="site-header"><div className="container nav-row">
    <Link className="brand" href="/" aria-label="DekhoCampus home"><span className="brand-mark">DC</span><span>DekhoCampus</span></Link>
    <nav aria-label="Primary navigation">{links.map(([label, href]) => <Link key={href} href={href}>{label}</Link>)}</nav>
    <Link className="button button-outline" href="/auth">Sign in</Link>
  </div></header>;
}
