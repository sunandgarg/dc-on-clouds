package com.dekhocampus.platform.redirects;

import java.net.URI;
import java.time.OffsetDateTime;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

@Service
public class RedirectService {
  private final RedirectRepository repository;
  public RedirectService(RedirectRepository repository) { this.repository = repository; }

  @Transactional
  public RedirectTarget resolve(String code, String header) {
    if (!code.matches("[A-Za-z0-9_-]{1,64}")) throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid short code");
    if (header != null && !header.matches("[A-Za-z0-9_-]{1,50}")) throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid header");
    var mapping = repository.find(code, header).orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Short link not found"));
    if (!mapping.active()) throw new ResponseStatusException(HttpStatus.GONE, "Short link is inactive");
    if (mapping.expiresAt() != null && mapping.expiresAt().isBefore(OffsetDateTime.now())) throw new ResponseStatusException(HttpStatus.GONE, "Short link has expired");
    if (!safeTarget(mapping.url())) throw new ResponseStatusException(HttpStatus.UNPROCESSABLE_ENTITY, "Short link target is invalid");
    if (mapping.tracking()) repository.recordClick(mapping.id());
    return new RedirectTarget(mapping.url());
  }

  private boolean safeTarget(String value) {
    if (value == null || value.isBlank()) return false;
    if (value.startsWith("/") && !value.startsWith("//")) return true;
    try {
      var scheme = URI.create(value).getScheme();
      return "http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    } catch (IllegalArgumentException exception) {
      return false;
    }
  }
}
