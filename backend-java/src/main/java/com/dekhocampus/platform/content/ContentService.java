package com.dekhocampus.platform.content;

import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.springframework.stereotype.Service;

@Service
public class ContentService {
  private final ContentRepository repository;

  public ContentService(ContentRepository repository) {
    this.repository = repository;
  }

  public PageResult<Map<String, Object>> list(
      String type,
      int page,
      int size,
      String query,
      String tag,
      String category,
      UUID authorId) {
    return repository.list(
        type,
        page,
        size,
        query == null ? "" : query.trim(),
        tag == null ? "" : tag.trim(),
        category == null ? "" : category.trim(),
        authorId);
  }

  public Map<String, Object> one(String type, String slug) {
    return repository.one(type, slug);
  }

  public List<String> slugs(String type) {
    return repository.slugs(type);
  }
}
