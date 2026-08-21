import type { NextConfig } from "next";

const config: NextConfig = {
  output: "standalone",
  poweredByHeader: false,
  compress: true,
  images: {
    formats: ["image/avif", "image/webp"],
    remotePatterns: [
      { protocol: "https", hostname: "*.supabase.co" },
      { protocol: "https", hostname: "*.cloudfront.net" },
      { protocol: "https", hostname: "*.amazonaws.com" },
      { protocol: "https", hostname: "dekhocampus.com" },
      { protocol: "https", hostname: "images.unsplash.com" },
      { protocol: "https", hostname: "i.ytimg.com" }
    ]
  },
  async headers() {
    return [{
      source: "/:path*",
      headers: [
        { key: "X-Content-Type-Options", value: "nosniff" },
        { key: "Referrer-Policy", value: "strict-origin-when-cross-origin" },
        { key: "Permissions-Policy", value: "camera=(), microphone=(), geolocation=()" },
        { key: "X-Frame-Options", value: "SAMEORIGIN" }
      ]
    }];
  },
  async redirects() {
    return [
      { source: "/college/:slug", destination: "/colleges/:slug", permanent: true },
      { source: "/articles", destination: "/news", permanent: true },
      { source: "/articles/:slug", destination: "/news/:slug", permanent: true },
      { source: "/vacancies", destination: "/jobs", permanent: true },
      { source: "/vacancies/:slug", destination: "/jobs/:slug", permanent: true },
      { source: "/about", destination: "/about-us", permanent: true },
      { source: "/compare", destination: "/tools/compare-colleges", permanent: true },
      { source: "/exam-calendar-2026", destination: "/exam-calendar", permanent: true },
    ];
  }
};

export default config;
