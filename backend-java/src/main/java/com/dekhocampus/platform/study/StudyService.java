package com.dekhocampus.platform.study;

import java.util.List;
import java.util.Map;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

@Service
public class StudyService {
  private final StudyRepository repository;

  public StudyService(StudyRepository repository) { this.repository = repository; }
  public List<Map<String, Object>> boards() { return repository.boards(); }
  public Map<String, Object> classSnapshot(int classNumber, String boardSlug) { validateClass(classNumber); return repository.classSnapshot(classNumber, boardSlug); }
  public Map<String, Object> subjectSnapshot(int classNumber, String boardSlug, String subjectSlug) { validateClass(classNumber); return repository.subjectSnapshot(classNumber, boardSlug, subjectSlug); }
  public List<Map<String, Object>> resources(Integer classNumber, String boardSlug, String subjectSlug, String type, String query, int limit) { if (classNumber != null) validateClass(classNumber); return repository.resources(classNumber, boardSlug, subjectSlug, type, query, limit); }
  private void validateClass(int classNumber) { if (classNumber < 8 || classNumber > 12) throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Class must be between 8 and 12"); }
}
