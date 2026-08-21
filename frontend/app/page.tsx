import Link from "next/link";
import { JsonLd } from "@/components/JsonLd";
import { site } from "@/lib/site";

const tiles = [["13,000+", "Colleges", "/colleges"], ["840+", "Courses", "/courses"], ["219+", "Exams", "/exams"], ["Guides", "Scholarships", "/scholarships"]] as const;

export default function Home() {
  return <main><JsonLd data={{ "@context": "https://schema.org", "@type": "WebSite", name: site.name, url: site.url, potentialAction: { "@type": "SearchAction", target: `${site.url}/colleges?q={search_term_string}`, "query-input": "required name=search_term_string" } }} />
    <section className="hero"><div className="container"><p className="eyebrow light">Built by IIT Delhi alumni</p><h1>Find the right college, course and career path</h1><p>Compare verified education options, understand admissions, and get clear answers for your next decision.</p><form action="/colleges" className="hero-search"><label className="sr-only" htmlFor="home-q">Search colleges</label><input id="home-q" name="q" placeholder="Search colleges, courses or exams" /><button>Search</button></form></div></section>
    <section className="container tile-grid" aria-label="Explore DekhoCampus">{tiles.map(([number, label, href]) => <Link href={href} key={href}><strong>{number}</strong><span>{label}</span></Link>)}</section>
    <section className="container answer-section"><p className="eyebrow">Start with a direct answer</p><h2>Everything you need to make an informed education decision</h2><div className="answer-grid"><article><h3>Which college is right for me?</h3><p>Compare location, approvals, fees, placements and courses on structured college pages.</p><Link href="/colleges">Compare colleges →</Link></article><article><h3>What should I study?</h3><p>Explore course duration, eligibility, subjects, careers and expected outcomes.</p><Link href="/courses">Explore courses →</Link></article><article><h3>Which exam should I prepare for?</h3><p>Review eligibility, dates, patterns, syllabi and participating colleges.</p><Link href="/exams">Explore exams →</Link></article></div></section>
  </main>;
}
