package com.dekhocampus.platform.about;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/about")
public class AboutController {
  private final AboutService service;

  public AboutController(AboutService service) {
    this.service = service;
  }

  @GetMapping
  AboutSnapshot snapshot() {
    return service.snapshot();
  }
}
