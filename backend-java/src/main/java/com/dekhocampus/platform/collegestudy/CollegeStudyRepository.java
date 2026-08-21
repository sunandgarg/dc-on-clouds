package com.dekhocampus.platform.collegestudy;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.postgresql.util.PGobject;
import org.springframework.http.HttpStatus;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Repository;
import org.springframework.web.server.ResponseStatusException;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

@Repository
public class CollegeStudyRepository {
  private final JdbcClient jdbc;
  private final ObjectMapper json;

  public CollegeStudyRepository(JdbcClient jdbc, ObjectMapper json) {
    this.jdbc = jdbc;
    this.json = json;
  }

  public List<Map<String, Object>> programs() {
    return rows("SELECT to_jsonb(t) document FROM public.college_programs t WHERE is_active=true ORDER BY display_order,name", Map.of());
  }

  public Map<String, Object> programSnapshot(String programSlug) {
    var result = new HashMap<String, Object>();
    result.put("program", one("SELECT to_jsonb(t) document FROM public.college_programs t WHERE is_active=true AND slug=:programSlug LIMIT 1", Map.of("programSlug", programSlug), "Program not found"));
    result.put("universities", rows("SELECT to_jsonb(t) document FROM public.college_universities t WHERE is_active=true AND program_slug=:programSlug ORDER BY display_order,name", Map.of("programSlug", programSlug)));
    return result;
  }

  public Map<String, Object> universitySnapshot(String programSlug, String universitySlug, Integer semester) {
    var params = Map.<String, Object>of("programSlug", programSlug, "universitySlug", universitySlug);
    var result = new HashMap<String, Object>();
    result.put("program", one("SELECT to_jsonb(t) document FROM public.college_programs t WHERE is_active=true AND slug=:programSlug LIMIT 1", Map.of("programSlug", programSlug), "Program not found"));
    result.put("university", one("SELECT to_jsonb(t) document FROM public.college_universities t WHERE is_active=true AND program_slug=:programSlug AND slug=:universitySlug LIMIT 1", params, "University not found"));
    result.put("semesters", rows("SELECT to_jsonb(t) document FROM public.college_semesters t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug ORDER BY semester_num", params));
    result.put("quickLinks", rows("SELECT to_jsonb(t) document FROM public.college_quick_links t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug AND semester_num IS NULL ORDER BY display_order,title", params));
    result.put("fewLinks", rows("SELECT to_jsonb(t) document FROM public.college_few_links t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug ORDER BY display_order,title", params));
    result.put("toppers", rows("SELECT to_jsonb(t) document FROM public.college_toppers t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug ORDER BY year DESC,rank,display_order", params));
    if (semester != null) {
      var semesterParams = new HashMap<String, Object>(params);
      semesterParams.put("semester", semester);
      result.put("subjects", rows("SELECT to_jsonb(t) document FROM public.college_subjects t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug AND semester_num=:semester ORDER BY display_order,name", semesterParams));
      result.put("semesterLinks", rows("SELECT to_jsonb(t) document FROM public.college_quick_links t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug AND semester_num=:semester ORDER BY display_order,title", semesterParams));
    } else {
      result.put("subjects", List.of());
      result.put("semesterLinks", List.of());
    }
    return result;
  }

  public Map<String, Object> subjectSnapshot(String programSlug, String universitySlug, int semester, String subjectSlug) {
    var result = universitySnapshot(programSlug, universitySlug, semester);
    var params = Map.<String, Object>of("programSlug", programSlug, "universitySlug", universitySlug, "semester", semester, "subjectSlug", subjectSlug);
    var subject = one("SELECT to_jsonb(t) document FROM public.college_subjects t WHERE is_active=true AND program_slug=:programSlug AND university_slug=:universitySlug AND semester_num=:semester AND slug=:subjectSlug LIMIT 1", params, "Subject not found");
    var subjectId = UUID.fromString(String.valueOf(subject.get("id")));
    result.put("subject", subject);
    result.put("resources", rows("SELECT jsonb_build_object('id',r.id,'resource_type',r.resource_type,'title',r.title,'description',r.description,'year',r.year,'download_available',(r.file_url<>'' OR r.external_url<>'')) document FROM public.college_resources r WHERE r.is_active=true AND r.subject_id=:subjectId ORDER BY r.display_order,r.year DESC,r.title", Map.of("subjectId", subjectId)));
    return result;
  }

  private Map<String, Object> one(String sql, Map<String, ?> params, String message) {
    return rows(sql, params).stream().findFirst().orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, message));
  }

  private List<Map<String, Object>> rows(String sql, Map<String, ?> params) {
    return new ArrayList<>(jdbc.sql(sql).params(params).query(this::mapJson).list());
  }

  private Map<String, Object> mapJson(ResultSet rs, int row) throws java.sql.SQLException {
    try {
      Object raw = rs.getObject("document");
      String value = raw instanceof PGobject object ? object.getValue() : String.valueOf(raw);
      return json.readValue(value, new TypeReference<>() {});
    } catch (Exception exception) {
      throw new java.sql.SQLException("Cannot map college study content", exception);
    }
  }
}
