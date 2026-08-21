package com.dekhocampus.platform.about;

import org.springframework.stereotype.Service;

@Service
public class AboutService {
  private final AboutRepository repository;

  public AboutService(AboutRepository repository) {
    this.repository = repository;
  }

  public AboutSnapshot snapshot() {
    return repository.snapshot();
  }
}
