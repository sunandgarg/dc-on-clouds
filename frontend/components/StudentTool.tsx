"use client";

import { useMemo, useState } from "react";
import type { ToolSlug } from "@/lib/tools";
import { ageParts, bmi, loanPayment, percentage, sipFutureValue, textStats } from "@/lib/tool-calculations";

const number = (value: string) => Number.parseFloat(value) || 0;
const money = new Intl.NumberFormat("en-IN", { maximumFractionDigits: 0, style: "currency", currency: "INR" });

export function StudentTool({ slug }: { slug: ToolSlug }) {
  const [first, setFirst] = useState("");
  const [second, setSecond] = useState("");
  const [third, setThird] = useState("");
  const [words, setWords] = useState("");

  const output = useMemo(() => {
    const a = number(first); const b = number(second); const c = number(third);
    switch (slug) {
      case "cgpa-converter": return a ? `${(a * 9.5).toFixed(2)}%` : "Enter your CGPA";
      case "percentage-calculator": return b ? `${percentage(a, b).toFixed(2)}%` : "Enter a value and total";
      case "bmi-calculator": return a && b ? `${bmi(a, b).toFixed(1)} BMI` : "Enter weight and height";
      case "emi-calculator": {
        const emi = loanPayment(a, b, c);
        return emi ? `${money.format(emi)} per month` : "Enter loan details";
      }
      case "sip-calculator": {
        const value = sipFutureValue(a, b, c);
        return value ? `${money.format(value)} estimated value` : "Enter investment details";
      }
      case "age-calculator": {
        if (!first) return "Select a date of birth";
        const birth = new Date(`${first}T00:00:00`); const now = new Date();
        if (Number.isNaN(birth.getTime()) || birth > now) return "Enter a valid past date";
        const age = ageParts(birth, now);
        return age ? `${age.years} years and ${age.months} months` : "Enter a valid past date";
      }
      case "word-counter": {
        const stats = textStats(words);
        return `${stats.words} words · ${stats.characters} characters · ${stats.readingMinutes} min read`;
      }
      default: return "";
    }
  }, [first, second, third, words, slug]);

  if (slug === "word-counter") {
    return <div className="tool-form"><label htmlFor="tool-text">Text</label><textarea id="tool-text" rows={10} value={words} onChange={(event) => setWords(event.target.value)} placeholder="Paste or type your text" /><output aria-live="polite">{output}</output></div>;
  }

  const fields: Record<string, Array<[string, string, string]>> = {
    "cgpa-converter": [["CGPA or SGPA", "number", "first"]],
    "percentage-calculator": [["Value obtained", "number", "first"], ["Total value", "number", "second"]],
    "bmi-calculator": [["Weight (kg)", "number", "first"], ["Height (cm)", "number", "second"]],
    "emi-calculator": [["Loan amount (₹)", "number", "first"], ["Annual interest (%)", "number", "second"], ["Term (months)", "number", "third"]],
    "sip-calculator": [["Monthly investment (₹)", "number", "first"], ["Expected annual return (%)", "number", "second"], ["Duration (years)", "number", "third"]],
    "age-calculator": [["Date of birth", "date", "first"]],
  };
  const setters = { first: setFirst, second: setSecond, third: setThird };
  const values = { first, second, third };
  return <div className="tool-form">{(fields[slug] || []).map(([label, type, key]) => <label key={key}>{label}<input type={type} min={type === "number" ? "0" : undefined} step="any" value={values[key as keyof typeof values]} onChange={(event) => setters[key as keyof typeof setters](event.target.value)} /></label>)}<output aria-live="polite">{output}</output>{slug === "cgpa-converter" && <small>Formula: percentage = CGPA × 9.5. Institutions may use a different conversion rule.</small>}{slug === "sip-calculator" && <small>This estimate is illustrative and is not financial advice.</small>}</div>;
}
