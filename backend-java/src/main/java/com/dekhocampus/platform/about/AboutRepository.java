package com.dekhocampus.platform.about;

import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import org.postgresql.util.PGobject;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Repository;
import tools.jackson.core.type.TypeReference;
import tools.jackson.databind.ObjectMapper;

@Repository
public class AboutRepository {
  private static final List<String> COLLECTIONS =
      List.of("stats", "values", "founders", "team", "milestones", "press");

  private final JdbcClient jdbc;
  private final ObjectMapper json;

  public AboutRepository(JdbcClient jdbc, ObjectMapper json) {
    this.jdbc = jdbc;
    this.json = json;
  }

  public AboutSnapshot snapshot() {
    var page =
        jdbc.sql("SELECT to_jsonb(t) document FROM public.about_page t LIMIT 1")
            .query(this::mapJson)
            .optional()
            .orElse(Map.of());
    var collections =
        COLLECTIONS.stream()
            .collect(
                java.util.stream.Collectors.toMap(
                    name -> name,
                    name ->
                        jdbc.sql(
                                "SELECT to_jsonb(t) document FROM public.about_"
                                    + name
                                    + " t WHERE is_active=true ORDER BY display_order, created_at")
                            .query(this::mapJson)
                            .list()));
    return new AboutSnapshot(
        page,
        collections.get("stats"),
        collections.get("values"),
        collections.get("founders"),
        collections.get("team"),
        collections.get("milestones"),
        collections.get("press"));
  }

  private Map<String, Object> mapJson(ResultSet rs, int row) throws java.sql.SQLException {
    try {
      Object raw = rs.getObject("document");
      String value = raw instanceof PGobject object ? object.getValue() : String.valueOf(raw);
      return json.readValue(value, new TypeReference<>() {});
    } catch (Exception exception) {
      throw new java.sql.SQLException("Cannot map about content", exception);
    }
  }
}
