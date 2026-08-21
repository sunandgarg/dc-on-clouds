export const tools = [
  { slug: "lock-target", title: "Target with AI", description: "Build a personalized roadmap to your target college.", native: false },
  { slug: "compare-colleges", title: "Compare Colleges", description: "Compare fees, placements and rankings side by side.", native: false },
  { slug: "psychometric-test", title: "Psychometric Career Test", description: "Explore career interests and suitable study streams.", native: false },
  { slug: "cgpa-converter", title: "CGPA/SGPA Converter", description: "Estimate a percentage from CGPA or SGPA.", native: true },
  { slug: "emi-calculator", title: "Education Loan EMI Calculator", description: "Estimate monthly education-loan repayments.", native: true },
  { slug: "rank-predictor", title: "Exam Rank Predictor", description: "Estimate rank from an expected examination score.", native: false },
  { slug: "eligibility-checker", title: "College Eligibility Checker", description: "Check college eligibility from academic details.", native: false },
  { slug: "bmi-calculator", title: "BMI Calculator", description: "Calculate body mass index from height and weight.", native: true },
  { slug: "percentage-calculator", title: "Percentage Calculator", description: "Calculate a percentage from a value and total.", native: true },
  { slug: "age-calculator", title: "Age Calculator", description: "Calculate age from a date of birth.", native: true },
  { slug: "sip-calculator", title: "SIP Calculator", description: "Estimate the future value of monthly investments.", native: true },
  { slug: "word-counter", title: "Word and Character Counter", description: "Count words, characters and estimated reading time.", native: true },
] as const;

export type ToolSlug = (typeof tools)[number]["slug"];
export const nativeToolSlugs: ReadonlySet<string> = new Set(
  tools.filter((tool) => tool.native).map((tool) => tool.slug),
);
