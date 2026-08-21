package com.dekhocampus.platform.study;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import java.util.List;
import java.util.Map;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Validated
@RequestMapping("/api/v1/study")
public class StudyController {
  private final StudyService service;
  public StudyController(StudyService service) { this.service = service; }
  @GetMapping("/boards") List<Map<String, Object>> boards() { return service.boards(); }
  @GetMapping("/classes/{classNumber}/boards/{boardSlug}") Map<String, Object> classSnapshot(@PathVariable int classNumber, @PathVariable String boardSlug) { return service.classSnapshot(classNumber, boardSlug); }
  @GetMapping("/classes/{classNumber}/boards/{boardSlug}/subjects/{subjectSlug}") Map<String, Object> subjectSnapshot(@PathVariable int classNumber, @PathVariable String boardSlug, @PathVariable String subjectSlug) { return service.subjectSnapshot(classNumber, boardSlug, subjectSlug); }
  @GetMapping("/resources") List<Map<String, Object>> resources(@RequestParam(required=false) Integer classNumber, @RequestParam(defaultValue="") String boardSlug, @RequestParam(defaultValue="") String subjectSlug, @RequestParam(defaultValue="") String type, @RequestParam(defaultValue="") String q, @RequestParam(defaultValue="200") @Min(1) @Max(1000) int limit) { return service.resources(classNumber, boardSlug, subjectSlug, type, q, limit); }
}
