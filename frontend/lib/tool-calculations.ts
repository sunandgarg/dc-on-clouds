export const percentage = (value: number, total: number) =>
  total > 0 ? (value / total) * 100 : 0;

export const bmi = (weightKg: number, heightCm: number) =>
  weightKg > 0 && heightCm > 0 ? weightKg / ((heightCm / 100) ** 2) : 0;

export const loanPayment = (principal: number, annualRate: number, months: number) => {
  if (principal <= 0 || months <= 0) return 0;
  const monthlyRate = annualRate / 1200;
  if (monthlyRate === 0) return principal / months;
  return principal * monthlyRate * ((1 + monthlyRate) ** months)
    / (((1 + monthlyRate) ** months) - 1);
};

export const sipFutureValue = (
  monthlyInvestment: number,
  annualRate: number,
  years: number,
) => {
  const months = years * 12;
  if (monthlyInvestment <= 0 || months <= 0) return 0;
  const monthlyRate = annualRate / 1200;
  if (monthlyRate === 0) return monthlyInvestment * months;
  return monthlyInvestment
    * ((((1 + monthlyRate) ** months) - 1) / monthlyRate)
    * (1 + monthlyRate);
};

export const ageParts = (birth: Date, now: Date) => {
  if (Number.isNaN(birth.getTime()) || birth > now) return null;
  let years = now.getFullYear() - birth.getFullYear();
  let months = now.getMonth() - birth.getMonth();
  if (now.getDate() < birth.getDate()) months -= 1;
  if (months < 0) { years -= 1; months += 12; }
  return { years, months };
};

export const textStats = (value: string) => {
  const words = value.trim() ? value.trim().split(/\s+/).length : 0;
  return { words, characters: value.length, readingMinutes: Math.max(1, Math.ceil(words / 200)) };
};
