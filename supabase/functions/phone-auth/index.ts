import { createClient } from "https://esm.sh/@supabase/supabase-js@2.49.4";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
};

const OTP_EXPIRY_MIN = 10;

function json(body: unknown, status = 200) {
  return new Response(JSON.stringify(body), {
    status,
    headers: { ...corsHeaders, "Content-Type": "application/json" },
  });
}

function normalizeIndianMobile(input: string) {
  let value = String(input || "").replace(/\D/g, "");
  while (value.startsWith("0")) value = value.slice(1);
  if (value.startsWith("91") && value.length > 10) value = value.slice(2);
  while (value.startsWith("0")) value = value.slice(1);
  return value.slice(0, 10);
}

function emailForPhone(phone: string) {
  return `phone${phone}@auth.dekhocampus.in`;
}

function passwordForPhone(phone: string) {
  return `dc!${phone}!secure2026`;
}

async function ensurePhoneUser(admin: any, phone: string) {
  const email = emailForPhone(phone);
  const password = passwordForPhone(phone);
  const e164Phone = `+91${phone}`;
  const metadata = { phone, display_name: phone, phone_verified: true, auth_provider: "phone_otp" };

  const { data: created, error } = await admin.auth.admin.createUser({
    email,
    password,
    email_confirm: true,
    phone: e164Phone,
    phone_confirm: true,
    user_metadata: metadata,
  });

  if (!error) {
    return { email, password, userId: created?.user?.id };
  }

  if (!/already|registered|exists|duplicate/i.test(error.message || "")) {
    throw error;
  }

  const { data: usersData, error: listError } = await admin.auth.admin.listUsers({ page: 1, perPage: 1000 });
  if (listError) throw listError;

  const existing = (usersData?.users || []).find((user: any) => {
    const userEmail = String(user.email || "").toLowerCase();
    const userPhone = normalizeIndianMobile(user.phone || "");
    return userEmail === email.toLowerCase() || userPhone === phone;
  });

  if (!existing?.id) {
    throw error;
  }

  const { error: updateError } = await admin.auth.admin.updateUserById(existing.id, {
    email,
    phone: e164Phone,
    password,
    user_metadata: { ...(existing.user_metadata || {}), ...metadata },
  });

  if (updateError) throw updateError;

  return { email, password, userId: existing.id };
}

async function generateSessionFallback(admin: any, email: string, redirectTo?: string) {
  const { data, error } = await admin.auth.admin.generateLink({
    type: "magiclink",
    email,
    options: { redirectTo: redirectTo || "https://www.dekhocampus.in/auth" },
  });

  if (error) throw error;

  const tokenHash = data?.properties?.hashed_token;
  if (!tokenHash) throw new Error("Could not create login token");

  return {
    token_hash: tokenHash,
    type: data?.properties?.verification_type || "magiclink",
  };
}

Deno.serve(async (req) => {
  if (req.method === "OPTIONS") return new Response(null, { headers: corsHeaders });
  if (req.method !== "POST") return json({ error: "method not allowed" }, 405);

  try {
    const body = await req.json().catch(() => ({}));
    const action = String(body.action || body.type || "verify").toLowerCase();
    const phone = normalizeIndianMobile(body.phone || body.mobile || body.phone_number || "");
    const otp = String(body.otp || body.code || body.token || "").trim();

    if (!/^\d{10}$/.test(phone)) return json({ error: "valid 10-digit phone is required" }, 400);

    const supabaseUrl = Deno.env.get("SUPABASE_URL")!;
    const serviceRole = Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")!;
    const anon = Deno.env.get("SUPABASE_ANON_KEY")!;
    const admin = createClient(supabaseUrl, serviceRole);

    if (["send", "request", "start"].includes(action)) {
      const res = await fetch(`${supabaseUrl}/functions/v1/send-otp`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${anon}`,
          apikey: anon,
        },
        body: JSON.stringify({ phone: `+91${phone}`, channel: "sms", action: "send", provider_name: "fast2sms" }),
      });
      const data = await res.json().catch(() => ({}));
      if (!res.ok || !data.success) return json({ error: data.error || "OTP send failed", data }, res.ok ? 400 : res.status);
      return json({ success: true, sent: true, expires_in: OTP_EXPIRY_MIN * 60, results: data.results || [] });
    }

    if (action === "resend") {
      const res = await fetch(`${supabaseUrl}/functions/v1/send-otp`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${anon}`,
          apikey: anon,
        },
        body: JSON.stringify({ phone: `+91${phone}`, channel: "sms", action: "resend", provider_name: "fast2sms" }),
      });
      const data = await res.json().catch(() => ({}));
      if (!res.ok || !data.success) return json({ error: data.error || "OTP resend failed", data }, res.ok ? 400 : res.status);
      return json({ success: true, sent: true, expires_in: OTP_EXPIRY_MIN * 60, results: data.results || [] });
    }

    if (!otp) return json({ error: "otp is required" }, 400);

    const verifyResponse = await fetch(`${supabaseUrl}/functions/v1/send-otp`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${anon}`,
        apikey: anon,
      },
      body: JSON.stringify({
        phone: `+91${phone}`,
        otp,
        channel: "sms",
        action: "verify",
        provider_name: "fast2sms",
      }),
    });
    const verification = await verifyResponse.json().catch(() => ({}));
    const verified = Boolean(verifyResponse.ok && verification.verified);

    if (!verified) return json({ error: verification.error || "Invalid OTP", verified: false }, 400);

    const identity = await ensurePhoneUser(admin, phone);
    const authClient = createClient(supabaseUrl, anon);
    const { data: sessionData, error: signInError } = await authClient.auth.signInWithPassword({
      email: identity.email,
      password: identity.password,
    });

    if (signInError) {
      const fallback = await generateSessionFallback(admin, identity.email, body.redirectTo);
      return json({
        success: true,
        verified: true,
        email: identity.email,
        ...fallback,
      });
    }

    return json({
      success: true,
      verified: true,
      user: sessionData.user,
      session: sessionData.session,
      access_token: sessionData.session?.access_token,
      refresh_token: sessionData.session?.refresh_token,
      email: identity.email,
    });
  } catch (e: any) {
    console.error("phone-auth error:", e?.message || e);
    return json({ error: e?.message || "Internal error" }, 500);
  }
});
