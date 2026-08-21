package com.dekhocampus.platform.redirects;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/redirects")
public class RedirectController {
  private final RedirectService service;
  public RedirectController(RedirectService service) { this.service = service; }
  @GetMapping("/{code}") RedirectTarget resolve(@PathVariable String code, @RequestParam(required=false) String header) { return service.resolve(code, header); }
}
