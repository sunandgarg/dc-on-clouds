package com.dekhocampus.platform.redirects;

import java.time.OffsetDateTime;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;
import org.springframework.jdbc.core.simple.JdbcClient;
import org.springframework.stereotype.Repository;

@Repository
public class RedirectRepository {
  public record Mapping(UUID id, String url, boolean active, OffsetDateTime expiresAt, boolean tracking) {}
  private final JdbcClient jdbc;
  public RedirectRepository(JdbcClient jdbc) { this.jdbc = jdbc; }

  public Optional<Mapping> find(String code, String header) {
    String sql = header == null
        ? "SELECT id,original_url,is_active,expires_at,user_tracking FROM public.url_mappings m WHERE short_code=:code AND (header IS NULL OR ((SELECT count(*) FROM public.url_mappings x WHERE x.short_code=:code)=1)) ORDER BY (header IS NULL) DESC LIMIT 1"
        : "SELECT id,original_url,is_active,expires_at,user_tracking FROM public.url_mappings WHERE short_code=:code AND upper(header)=upper(:header) LIMIT 1";
    var params = header == null ? Map.<String, Object>of("code", code) : Map.<String, Object>of("code", code, "header", header);
    return jdbc.sql(sql).params(params).query((rs, row) -> new Mapping(
        rs.getObject("id", UUID.class), rs.getString("original_url"), rs.getBoolean("is_active"),
        rs.getObject("expires_at", OffsetDateTime.class), rs.getBoolean("user_tracking"))).optional();
  }

  public void recordClick(UUID id) {
    jdbc.sql("UPDATE public.url_mappings SET clicks=clicks+1 WHERE id=:id").param("id", id).update();
  }
}
