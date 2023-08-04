package com.metaex.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.metaex.entites.Student;

public interface StudentRepository extends JpaRepository<Student, Long> {

}
