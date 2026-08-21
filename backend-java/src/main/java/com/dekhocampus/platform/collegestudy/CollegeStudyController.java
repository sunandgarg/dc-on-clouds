package com.dekhocampus.platform.collegestudy;

import java.util.List;
import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/college-study")
public class CollegeStudyController {
  private final CollegeStudyService service;
  public CollegeStudyController(CollegeStudyService service) { this.service = service; }
  @GetMapping("/programs") List<Map<String, Object>> programs() { return service.programs(); }
  @GetMapping("/programs/{program}") Map<String, Object> program(@PathVariable String program) { return service.program(program); }
  @GetMapping("/programs/{program}/universities/{university}") Map<String, Object> university(@PathVariable String program, @PathVariable String university, @RequestParam(required=false) Integer semester) { return service.university(program, university, semester); }
  @GetMapping("/programs/{program}/universities/{university}/semesters/{semester}/subjects/{subject}") Map<String, Object> subject(@PathVariable String program, @PathVariable String university, @PathVariable int semester, @PathVariable String subject) { return service.subject(program, university, semester, subject); }
}
