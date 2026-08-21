package com.dekhocampus.platform.collegestudy;

import java.util.List;
import java.util.Map;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

@Service
public class CollegeStudyService {
  private final CollegeStudyRepository repository;
  public CollegeStudyService(CollegeStudyRepository repository) { this.repository = repository; }
  public List<Map<String, Object>> programs() { return repository.programs(); }
  public Map<String, Object> program(String slug) { return repository.programSnapshot(slug); }
  public Map<String, Object> university(String program, String university, Integer semester) { if (semester != null) validateSemester(semester); return repository.universitySnapshot(program, university, semester); }
  public Map<String, Object> subject(String program, String university, int semester, String subject) { validateSemester(semester); return repository.subjectSnapshot(program, university, semester, subject); }
  private void validateSemester(int semester) { if (semester < 1 || semester > 16) throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Semester must be between 1 and 16"); }
}
