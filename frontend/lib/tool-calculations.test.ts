import { describe, expect, it } from "vitest";
import { ageParts, bmi, loanPayment, percentage, sipFutureValue, textStats } from "./tool-calculations";

describe("student tool calculations", () => {
  it("calculates percentage and BMI", () => {
    expect(percentage(450, 500)).toBe(90);
    expect(bmi(70, 175)).toBeCloseTo(22.86, 2);
  });

  it("supports zero-interest loans and SIPs", () => {
    expect(loanPayment(120_000, 0, 12)).toBe(10_000);
    expect(sipFutureValue(1_000, 0, 2)).toBe(24_000);
  });

  it("calculates calendar age without future dates", () => {
    expect(ageParts(new Date("2000-10-20"), new Date("2026-08-21"))).toEqual({ years: 25, months: 10 });
    expect(ageParts(new Date("2030-01-01"), new Date("2026-08-21"))).toBeNull();
  });

  it("counts text deterministically", () => {
    expect(textStats("one  two\nthree")).toEqual({ words: 3, characters: 14, readingMinutes: 1 });
  });
});
