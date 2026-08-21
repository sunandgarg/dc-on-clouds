package com.dekhocampus.platform.about;

import java.util.List;
import java.util.Map;

public record AboutSnapshot(
    Map<String, Object> page,
    List<Map<String, Object>> stats,
    List<Map<String, Object>> values,
    List<Map<String, Object>> founders,
    List<Map<String, Object>> team,
    List<Map<String, Object>> milestones,
    List<Map<String, Object>> press) {}
