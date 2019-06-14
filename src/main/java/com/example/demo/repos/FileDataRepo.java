package com.example.demo.repos;

import com.example.demo.domain.FileData;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FileDataRepo extends JpaRepository<FileData, Integer> {
}
