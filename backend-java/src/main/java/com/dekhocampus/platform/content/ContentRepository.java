package com.dekhocampus.platform.content;

import java.sql.ResultSet;
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
public class ContentRepository {
  private record Resource(
      String table,
      String label,
      String sort,
      boolean shortId,
      boolean category,
      boolean author) {}

  private static final Map<String, Resource> RESOURCES =
      Map.ofEntries(
          Map.entry(
              "colleges",
              new Resource(
                  "colleges", "name", "priority DESC, updated_at DESC", true, true, true)),
          Map.entry(
              "courses",
              new Resource(
                  "courses", "name", "priority DESC, updated_at DESC", true, true, true)),
          Map.entry(
              "exams",
              new Resource(
                  "exams", "name", "priority DESC, updated_at DESC", true, true, true)),
          Map.entry(
              "articles",
              new Resource(
                  "articles", "title", "updated_at DESC", false, true, true)),
          Map.entry(
              "careers",
              new Resource(
                  "career_profiles", "name", "display_order, updated_at DESC", false, false, true)),
          Map.entry(
              "jobs",
              new Resource(
                  "jobs", "title", "is_featured DESC, display_order, updated_at DESC", false, true, false)),
          Map.entry(
              "scholarships",
              new Resource(
                  "scholarships", "title", "display_order, updated_at DESC", false, true, true)),
          Map.entry(
              "authors",
              new Resource(
                  "authors", "name", "display_order, updated_at DESC", false, false, false)),
          Map.entry(
              "legal-pages",
              new Resource(
                  "legal_pages", "title", "updated_at DESC", false, false, false)),
          Map.entry(
              "premium-programs",
              new Resource(
                  "promoted_programs", "title", "display_order, updated_at DESC", false, false, false)));

  private final JdbcClient jdbc;
  private final ObjectMapper json;

  public ContentRepository(JdbcClient jdbc, ObjectMapper json) {
    this.jdbc = jdbc;
    this.json = json;
  }

  public PageResult<Map<String, Object>> list(
      String type,
      int page,
      int size,
      String query,
      String tag,
      String category,
      UUID authorId) {
    var resource = resource(type);
    var where = new StringBuilder(" WHERE is_active = true");
    var params = new HashMap<String, Object>();

    if (query != null && !query.isBlank()) {
      where.append(" AND (").append(resource.label()).append(" ILIKE :q OR slug ILIKE :q)");
      params.put("q", "%" + query.trim() + "%");
    }
    if (tag != null && !tag.isBlank()) {
      if (!type.equals("articles")) {
        throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Tags apply only to articles");
      }
      where.append(
          " AND EXISTS (SELECT 1 FROM unnest(tags) tag_value"
              + " WHERE lower(tag_value)=lower(:tag))");
      params.put("tag", tag.trim());
    }
    if (category != null && !category.isBlank()) {
      if (!resource.category()) {
        throw new ResponseStatusException(
            HttpStatus.BAD_REQUEST, "Category is unavailable for this content type");
      }
      where.append(" AND category ILIKE :category");
      params.put("category", "%" + category.trim() + "%");
    }
    if (authorId != null) {
      if (!resource.author()) {
        throw new ResponseStatusException(
            HttpStatus.BAD_REQUEST, "Author filtering is unavailable for this content type");
      }
      where.append(" AND author_id=:authorId");
      params.put("authorId", authorId);
    }

    var total =
        jdbc.sql("SELECT count(*) FROM public." + resource.table() + where)
            .params(params)
            .query(Long.class)
            .single();
    params.put("limit", size);
    params.put("offset", (long) page * size);
    var rows =
        jdbc.sql(
                "SELECT to_jsonb(t) document FROM public."
                    + resource.table()
                    + " t"
                    + where
                    + " ORDER BY "
                    + resource.sort()
                    + " LIMIT :limit OFFSET :offset")
            .params(params)
            .query(this::mapJson)
            .list();
    return new PageResult<>(rows, page, size, total, (int) Math.ceil(total / (double) size));
  }

  public Map<String, Object> one(String type, String slug) {
    var resource = resource(type);
    var match =
        resource.shortId()
            ? "(slug=:slug OR slug || '-' || short_id::text=:slug)"
            : "slug=:slug";
    return jdbc.sql(
            "SELECT to_jsonb(t) document FROM public."
                + resource.table()
                + " t WHERE is_active=true AND "
                + match
                + " LIMIT 1")
        .param("slug", slug)
        .query(this::mapJson)
        .optional()
        .orElseThrow(
            () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Content not found"));
  }

  public List<String> slugs(String type) {
    var resource = resource(type);
    var expression = resource.shortId() ? "slug || '-' || short_id::text" : "slug";
    return jdbc.sql(
            "SELECT "
                + expression
                + " FROM public."
                + resource.table()
                + " WHERE is_active=true ORDER BY slug")
        .query(String.class)
        .list();
  }

  private Resource resource(String type) {
    var resource = RESOURCES.get(type);
    if (resource == null) {
      throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Unknown content type");
    }
    return resource;
  }

  private Map<String, Object> mapJson(ResultSet rs, int row) throws java.sql.SQLException {
    try {
      Object raw = rs.getObject("document");
      String value = raw instanceof PGobject object ? object.getValue() : String.valueOf(raw);
      return json.readValue(value, new TypeReference<>() {});
    } catch (Exception exception) {
      throw new java.sql.SQLException("Cannot map content", exception);
    }
  }
}
