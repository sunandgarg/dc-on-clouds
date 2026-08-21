package com.dekhocampus.platform.auth;
import jakarta.servlet.http.HttpServletResponse; import jakarta.validation.Valid; import jakarta.validation.constraints.Email; import jakarta.validation.constraints.NotBlank; import java.time.Duration; import java.util.Map; import org.springframework.beans.factory.annotation.Value; import org.springframework.http.HttpHeaders; import org.springframework.http.ResponseCookie; import org.springframework.web.bind.annotation.*;
@RestController @RequestMapping("/api/v1/auth") public class AuthController {
 private final SupabaseAuthGateway gateway; private final boolean secure;
 public AuthController(SupabaseAuthGateway gateway,@Value("${app.cookie-secure}") boolean secure){this.gateway=gateway;this.secure=secure;}
 public record Login(@Email @NotBlank String email,@NotBlank String password){}
 @PostMapping("/login") Map<String,Object> login(@Valid @RequestBody Login request,HttpServletResponse response){var tokens=gateway.password(request.email(),request.password());set(response,"dc_access",String.valueOf(tokens.get("access_token")),Duration.ofSeconds(((Number)tokens.getOrDefault("expires_in",3600)).longValue()));set(response,"dc_refresh",String.valueOf(tokens.get("refresh_token")),Duration.ofDays(30));return Map.of("authenticated",true,"user",tokens.getOrDefault("user",Map.of()));}
 @PostMapping("/logout") Map<String,Object> logout(HttpServletResponse response){set(response,"dc_access","",Duration.ZERO);set(response,"dc_refresh","",Duration.ZERO);return Map.of("authenticated",false);}
 private void set(HttpServletResponse response,String name,String value,Duration age){response.addHeader(HttpHeaders.SET_COOKIE,ResponseCookie.from(name,value).httpOnly(true).secure(secure).sameSite("Lax").path("/").maxAge(age).build().toString());}
}
