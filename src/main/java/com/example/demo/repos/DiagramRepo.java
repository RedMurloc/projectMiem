package com.example.demo.repos;

import com.example.demo.domain.Diagram;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DiagramRepo extends JpaRepository<Diagram, Long> {
}
