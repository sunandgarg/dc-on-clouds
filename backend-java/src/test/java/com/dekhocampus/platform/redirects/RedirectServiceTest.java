package com.dekhocampus.platform.redirects;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.verifyNoInteractions;
import static org.mockito.Mockito.when;

import java.time.OffsetDateTime;
import java.util.Optional;
import java.util.UUID;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.web.server.ResponseStatusException;

class RedirectServiceTest {
  @Test
  void resolvesAndCountsSafeTargets() {
    var repository = Mockito.mock(RedirectRepository.class);
    var id = UUID.randomUUID();
    when(repository.find("abc", null)).thenReturn(Optional.of(new RedirectRepository.Mapping(id, "https://example.com/path", true, null, true)));
    var result = new RedirectService(repository).resolve("abc", null);
    assertThat(result.url()).isEqualTo("https://example.com/path");
    verify(repository).recordClick(id);
  }

  @Test
  void rejectsUnsafeTargetsAndInvalidCodes() {
    var repository = Mockito.mock(RedirectRepository.class);
    var service = new RedirectService(repository);
    assertThatThrownBy(() -> service.resolve("bad code", null)).isInstanceOf(ResponseStatusException.class);
    verifyNoInteractions(repository);
    when(repository.find("abc", null)).thenReturn(Optional.of(new RedirectRepository.Mapping(UUID.randomUUID(), "javascript:alert(1)", true, OffsetDateTime.now().plusDays(1), true)));
    assertThatThrownBy(() -> service.resolve("abc", null)).isInstanceOf(ResponseStatusException.class).hasMessageContaining("422");
  }
}
