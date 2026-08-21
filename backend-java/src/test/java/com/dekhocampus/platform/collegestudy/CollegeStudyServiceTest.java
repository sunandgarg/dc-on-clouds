package com.dekhocampus.platform.collegestudy;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.Mockito.verifyNoInteractions;

import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.web.server.ResponseStatusException;

class CollegeStudyServiceTest {
  @Test
  void rejectsUnsupportedSemestersBeforeDatabaseAccess() {
    var repository = Mockito.mock(CollegeStudyRepository.class);
    var service = new CollegeStudyService(repository);

    assertThatThrownBy(() -> service.university("btech", "aktu", 17))
        .isInstanceOf(ResponseStatusException.class)
        .hasMessageContaining("400 BAD_REQUEST");
    verifyNoInteractions(repository);
  }
}
