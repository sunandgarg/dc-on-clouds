import { readdirSync } from "node:fs";
import { resolve } from "node:path";
import { describe, expect, it } from "vitest";

describe("short-link route tree", () => {
  for (const prefix of ["s", "r"] as const) {
    it(`uses one dynamic name at the first /${prefix} segment`, () => {
      const segmentDirectories = readdirSync(resolve(process.cwd(), "app", prefix), {
        withFileTypes: true,
      })
        .filter((entry) => entry.isDirectory() && entry.name.startsWith("["))
        .map((entry) => entry.name);

      expect(segmentDirectories).toEqual(["[header]"]);
    });
  }
});
