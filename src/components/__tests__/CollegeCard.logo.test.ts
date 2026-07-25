import { describe, expect, it } from "vitest";
import { hasDistinctCollegeLogo } from "@/components/CollegeCard";

const college = (logo: string | null, image = "https://images.example/campus.jpg?width=800") => ({
  name: "Amity University",
  short_name: "Amity",
  image,
  logo,
}) as any;

describe("CollegeCard logo overlay", () => {
  it("removes the overlay when the logo is missing", () => {
    expect(hasDistinctCollegeLogo(college(null))).toBe(false);
  });

  it("removes the overlay when a campus image was copied into the logo field", () => {
    expect(hasDistinctCollegeLogo(college(
      "https://images.example/campus.jpg?width=200",
      "https://images.example/campus.jpg?width=800",
    ))).toBe(false);
  });

  it("keeps a real, distinct college logo", () => {
    expect(hasDistinctCollegeLogo(college("https://images.example/amity-logo.svg"))).toBe(true);
  });
});
