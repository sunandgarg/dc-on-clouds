import { fireEvent, render, screen, waitFor } from "@testing-library/react";
import { afterEach, beforeEach, describe, expect, it, vi } from "vitest";

import { useInlineOtp } from "@/components/LeadInlineOtp";

vi.mock("@/hooks/useLeadFormSettings", () => ({
  useLeadFormSettings: () => ({
    data: { otp_mode: "live", channel_preference: "sms", form_overrides: {} },
  }),
}));

vi.mock("@/lib/phoneAuth", () => ({
  MASTER_TEST_OTP: "000000",
  tryExchangePhoneOtpForSession: vi.fn().mockResolvedValue(undefined),
}));

vi.mock("sonner", () => ({
  toast: { success: vi.fn(), error: vi.fn(), info: vi.fn() },
}));

function OtpHarness({ phone }: { phone: string }) {
  const otp = useInlineOtp(phone, "test-form");
  return (
    <div>
      {otp.getOtpButton}
      {otp.verifyBlock}
      <output data-testid="otp-state">{`${otp.requested}:${otp.verified}`}</output>
    </div>
  );
}

describe("useInlineOtp phone corrections", () => {
  beforeEach(() => {
    vi.stubGlobal("fetch", vi.fn().mockResolvedValue({
      ok: true,
      json: async () => ({ success: true, results: [{ provider: "fast2sms", channel: "sms" }] }),
    }));
  });

  afterEach(() => {
    vi.unstubAllGlobals();
    vi.clearAllMocks();
  });

  it("invalidates the old OTP and restores Get OTP when the phone changes", async () => {
    const { rerender } = render(<OtpHarness phone="9876543210" />);

    fireEvent.click(screen.getByRole("button", { name: "Get OTP" }));
    await waitFor(() => expect(screen.getByRole("button", { name: "OTP sent" })).toBeDisabled());
    expect(screen.getByPlaceholderText("Enter 6-digit OTP sent via SMS")).toBeInTheDocument();

    rerender(<OtpHarness phone="9876543211" />);

    await waitFor(() => expect(screen.getByRole("button", { name: "Get OTP" })).toBeEnabled());
    expect(screen.queryByPlaceholderText("Enter 6-digit OTP sent via SMS")).not.toBeInTheDocument();
    expect(screen.getByTestId("otp-state")).toHaveTextContent("false:false");

    fireEvent.click(screen.getByRole("button", { name: "Get OTP" }));
    await waitFor(() => expect(fetch).toHaveBeenLastCalledWith(
      expect.any(String),
      expect.objectContaining({ body: expect.stringContaining("+919876543211") }),
    ));
  });
});
