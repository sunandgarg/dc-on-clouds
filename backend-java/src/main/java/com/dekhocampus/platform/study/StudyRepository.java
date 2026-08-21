package com.dekhocampus.platform.study;

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
public class StudyRepository {
  private final JdbcClient jdbc;
  private final ObjectMapper json;

  public StudyRepository(JdbcClient jdbc, ObjectMapper json) {
    this.jdbc = jdbc;
    this.json = json;
  }

  public List<Map<String, Object>> boards() {
    return rows("SELECT to_jsonb(t) document FROM public.study_boards t WHERE is_active=true ORDER BY display_order, name", Map.of());
  }

  public Map<String, Object> classSnapshot(int classNumber, String boardSlug) {
    var result = new HashMap<String, Object>();
    result.put("boards", boards());
    result.put(
        "subjects",
        rows(
            "SELECT to_jsonb(t) document FROM public.study_subjects t WHERE is_active=true AND class_num=:classNumber AND board_slug=:boardSlug ORDER BY display_order, name",
            Map.of("classNumber", classNumber, "boardSlug", boardSlug)));
    result.put(
        "toppers",
        rows(
            "SELECT to_jsonb(t) document FROM public.study_toppers t WHERE is_active=true AND class_num=:classNumber AND board_slug=:boardSlug ORDER BY year DESC, stream, rank",
            Map.of("classNumber", classNumber, "boardSlug", boardSlug)));
    result.put(
        "links",
        rows(
            "SELECT to_jsonb(t) document FROM public.study_board_links t WHERE is_active=true AND class_num=:classNumber AND board_slug=:boardSlug ORDER BY display_order, title",
            Map.of("classNumber", classNumber, "boardSlug", boardSlug)));
    return result;
  }

  public Map<String, Object> subjectSnapshot(
      int classNumber, String boardSlug, String subjectSlug) {
    var subject =
        rows(
                "SELECT to_jsonb(t) document FROM public.study_subjects t WHERE is_active=true AND class_num=:classNumber AND board_slug=:boardSlug AND slug=:subjectSlug LIMIT 1",
                Map.of(
                    "classNumber", classNumber,
                    "boardSlug", boardSlug,
                    "subjectSlug", subjectSlug))
            .stream()
            .findFirst()
            .orElseThrow(
                () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Subject not found"));
    var subjectId = UUID.fromString(String.valueOf(subject.get("id")));
    var params = Map.of("subjectId", subjectId);
    var result = new HashMap<String, Object>();
    result.put("subject", subject);
    result.put(
        "chapters",
        rows(
            "SELECT to_jsonb(t) document FROM public.study_chapters t WHERE is_active=true AND subject_id=:subjectId ORDER BY chapter_number, display_order",
            params));
    result.put(
        "resources",
        rows(
            "SELECT jsonb_build_object('id',r.id,'chapter_id',r.chapter_id,'subject_id',r.subject_id,'resource_type',r.resource_type,'year',r.year,'title',r.title,'description',r.description,'download_count',r.download_count,'content_html',r.content_html,'content_images',r.content_images,'download_available',(r.file_url<>'')) document FROM public.study_resources r WHERE r.is_active=true AND r.subject_id=:subjectId ORDER BY r.year DESC, r.display_order",
            params));
    return result;
  }

  public List<Map<String, Object>> resources(
      Integer classNumber,
      String boardSlug,
      String subjectSlug,
      String type,
      String query,
      int limit) {
    var where = new StringBuilder(" WHERE r.is_active=true AND s.is_active=true");
    var params = new HashMap<String, Object>();
    if (classNumber != null) { where.append(" AND s.class_num=:classNumber"); params.put("classNumber", classNumber); }
    if (boardSlug != null && !boardSlug.isBlank()) { where.append(" AND s.board_slug=:boardSlug"); params.put("boardSlug", boardSlug.trim()); }
    if (subjectSlug != null && !subjectSlug.isBlank()) { where.append(" AND s.slug=:subjectSlug"); params.put("subjectSlug", subjectSlug.trim()); }
    if (type != null && !type.isBlank()) { where.append(" AND r.resource_type=:type"); params.put("type", type.trim()); }
    if (query != null && !query.isBlank()) { where.append(" AND (r.title ILIKE :query OR s.name ILIKE :query)"); params.put("query", "%" + query.trim() + "%"); }
    params.put("limit", limit);
    return rows(
        "SELECT jsonb_build_object('id',r.id,'title',r.title,'description',r.description,'resource_type',r.resource_type,'year',r.year,'download_count',r.download_count,'download_available',(r.file_url<>''),'subject',jsonb_build_object('slug',s.slug,'name',s.name,'class_num',s.class_num,'board_slug',s.board_slug,'icon_emoji',s.icon_emoji),'chapter',CASE WHEN c.id IS NULL THEN NULL ELSE jsonb_build_object('slug',c.slug,'name',c.name,'chapter_number',c.chapter_number) END) document FROM public.study_resources r JOIN public.study_subjects s ON s.id=r.subject_id LEFT JOIN public.study_chapters c ON c.id=r.chapter_id"
            + where
            + " ORDER BY r.year DESC, r.display_order, r.title LIMIT :limit",
        params);
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
      throw new java.sql.SQLException("Cannot map study content", exception);
    }
  }
}
