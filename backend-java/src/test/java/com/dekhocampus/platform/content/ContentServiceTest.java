package com.dekhocampus.platform.content;

import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.List;
import java.util.Map;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

class ContentServiceTest {
  @Test
  void normalizesSearchBeforeRepositoryAccess() {
    var repository = Mockito.mock(ContentRepository.class);
    var expected = new PageResult<Map<String, Object>>(List.of(), 0, 24, 0, 0);
    when(repository.list("colleges", 0, 24, "engineering", "", "", null))
        .thenReturn(expected);

    var service = new ContentService(repository);
    service.list("colleges", 0, 24, "  engineering  ", null, null, null);

    verify(repository).list("colleges", 0, 24, "engineering", "", "", null);
  }
}
