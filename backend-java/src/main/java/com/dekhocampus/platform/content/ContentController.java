package com.dekhocampus.platform.content;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Validated
@RequestMapping("/api/v1/content")
public class ContentController {
  private final ContentService service;

  public ContentController(ContentService service) {
    this.service = service;
  }

  @GetMapping("/{type}")
  PageResult<Map<String, Object>> list(
      @PathVariable String type,
      @RequestParam(defaultValue = "0") @Min(0) int page,
      @RequestParam(defaultValue = "24") @Min(1) @Max(100) int size,
      @RequestParam(defaultValue = "") String q,
      @RequestParam(defaultValue = "") String tag,
      @RequestParam(defaultValue = "") String category,
      @RequestParam(required = false) UUID authorId) {
    return service.list(type, page, size, q, tag, category, authorId);
  }

  @GetMapping("/{type}/slugs")
  List<String> slugs(@PathVariable String type) {
    return service.slugs(type);
  }

  @GetMapping("/{type}/{slug}")
  Map<String, Object> one(@PathVariable String type, @PathVariable String slug) {
    return service.one(type, slug);
  }
}
