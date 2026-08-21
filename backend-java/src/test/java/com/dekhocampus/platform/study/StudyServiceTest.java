package com.dekhocampus.platform.study;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.verifyNoInteractions;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.web.server.ResponseStatusException;

class StudyServiceTest {
  @Test
  void rejectsUnsupportedClassesBeforeDatabaseAccess() {
    var repository = Mockito.mock(StudyRepository.class);
    var service = new StudyService(repository);

    assertThatThrownBy(() -> service.classSnapshot(7, "cbse"))
        .isInstanceOf(ResponseStatusException.class)
        .hasMessageContaining("400 BAD_REQUEST");
    verifyNoInteractions(repository);
  }
}
