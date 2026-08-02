import { AlsoCheckSection } from "@/components/AlsoCheckSection";
import { TopRankedColleges } from "@/components/TopRankedColleges";
import { HeroBannerCarousel } from "@/components/HeroBannerCarousel";
import { CategorySection } from "@/components/CategorySection";
import { TrendingPrograms } from "@/components/TrendingPrograms";
import { ExploreCTACards } from "@/components/ExploreCTACards";
import { CitySearch } from "@/components/CitySearch";
import { OnlineEducationSection } from "@/components/OnlineEducationSection";
import { CareerScopeSection } from "@/components/CareerScopeSection";
import { ToolsSection } from "@/components/ToolsSection";
import { NewsSection } from "@/components/NewsSection";
import { ExamStrategiesSection } from "@/components/ExamStrategiesSection";
import { FeaturesSection } from "@/components/FeaturesSection";
import { GoogleAd } from "@/components/ads/GoogleAd";
import { FAQSection } from "@/components/FAQSection";
import { TrustedBySection } from "@/components/TrustedBySection";
import { Footer } from "@/components/Footer";
import { PeriodicLeadPopup } from "@/components/PeriodicLeadPopup";
import { QuickLinksBar } from "@/components/QuickLinksBar";

export default function HomeBelowFold() {
  return <div className="dc-home-below-fold">
    <QuickLinksBar compact />
    <div className="container"><AlsoCheckSection variant="strip" /></div>
    <div className="container"><TopRankedColleges /></div>
    <div className="container"><HeroBannerCarousel /></div>
    <div className="container"><CategorySection /></div>
    <div className="container">
      <div id="explore-cta-heading"><ExploreCTACards /></div>
      <div id="city-search-heading"><CitySearch /></div>
    </div>
    <div id="online-education-heading"><OnlineEducationSection /></div>
    <div className="container">
      <div id="career-scope-heading"><CareerScopeSection /></div>
      <div id="tools-heading"><ToolsSection /></div>
      <div id="news-heading"><NewsSection /></div>
      <div id="exam-strategies-heading"><ExamStrategiesSection /></div>
      <FeaturesSection />
      <GoogleAd placement="homepage" position="middle" pageKey="homepage" className="my-4" />
      <div id="faq-heading"><FAQSection page="homepage" title="Frequently Asked Questions" /></div>
      <div id="trending-programs-heading"><TrendingPrograms /></div>
      <div id="trusted-heading"><TrustedBySection /></div>
    </div>
    <Footer />
    <PeriodicLeadPopup />
  </div>;
}
