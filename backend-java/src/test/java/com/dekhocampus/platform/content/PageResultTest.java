package com.dekhocampus.platform.content;
import static org.assertj.core.api.Assertions.assertThat; import java.util.List; import org.junit.jupiter.api.Test;
class PageResultTest { @Test void preservesPaginationContract(){var result=new PageResult<>(List.of("a","b"),1,2,7,4);assertThat(result.items()).containsExactly("a","b");assertThat(result.pages()).isEqualTo(4);assertThat(result.total()).isEqualTo(7);} }
