package equ.cjc.main.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import equ.cjc.main.model.Student;
import equ.cjc.main.repository.StudentRepository;
import equ.cjc.main.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService{

	@Autowired private StudentRepository sr;
	
	@Override
	public void saveStudentDetails(Student st) {
		
		sr.save(st);
	}

	@Override
	public List<Student> getAllStudents() {
	
		// Select * from tablename;
		return sr.findAll();
	}

	
}
