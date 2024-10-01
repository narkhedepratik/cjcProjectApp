package equ.cjc.main.service;

import java.util.List;

import equ.cjc.main.model.Student;

public interface StudentService {
	
	public void saveStudentDetails(Student st);
         
	public List<Student> getAllStudents();
}
