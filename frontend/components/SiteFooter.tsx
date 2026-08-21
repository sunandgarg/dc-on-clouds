import Link from "next/link";

export function SiteFooter() {
  return <footer><div className="container footer-grid"><div><strong>DekhoCampus</strong><p>Clear, structured guidance for better education decisions.</p></div><nav aria-label="Footer"><Link href="/about-us">About</Link><Link href="/legal/privacy-policy">Privacy</Link><Link href="/legal/terms">Terms</Link><Link href="/sitemap.xml">Sitemap</Link></nav></div></footer>;
}
