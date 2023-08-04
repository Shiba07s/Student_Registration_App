    package com.metaex.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.metaex.entites.Student;
import com.metaex.repositories.StudentRepository;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentRepository studentRepository;

	@Override
	public void saveStudent(Student student) {
		studentRepository.save(student);
		
	}

	@Override
	public List<Student> getStudents() {
		List<Student> students = studentRepository.findAll();
		return students;
	}

	@Override
	public void deleteStudent(long id) {
		studentRepository.deleteById(id);
		
	}

	@Override
	public Student findStudentId(long id) {
		 Optional<Student> findById = studentRepository.findById(id);
		 Student student = findById.get();
		return student;
	}

	@Override
	public void saveOneStudent(Student student) {
		studentRepository.save(student);
	} 
	
	
//	@Override
//	public Lead findOneLead(long id) {
//		Optional<Lead> findById = leadRepo.findById(id);
//		Lead lead = findById.get();
//		return lead;
//	}
//
//	@Override
//	public void saveLead(Lead lead) {
//		leadRepo.save(lead);
//	}

}
