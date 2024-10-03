	package equ.cjc.main.controller;
	
	import java.util.List;

import org.hibernate.dialect.MySQL8Dialect;
import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PathVariable;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;
	
	import equ.cjc.main.model.Student;
import equ.cjc.main.service.StudentService;

	@Controller
	public class AdminController {
		 @Autowired private StudentService sr;
		@RequestMapping("/")
		public String preLogin()
		{
			return "login";
		}
		@RequestMapping("/login")
		public String onlogin(@RequestParam String username ,@RequestParam String password, Model m)
		{
			if(username.equals("admin") && password.equals("admin123"))
			{    
				 List<Student> students = sr.getAllStudents();
			     m.addAttribute("data", students);
				return "adminscreen";
			}
			else {
				m.addAttribute("login_fail","Enter valid login details.");
				return "login";
			}
		}
		
		@RequestMapping("/enroll")
		public String onEnrollStundet(@ModelAttribute Student student)
		{
			sr.saveStudentDetails(student);
			
			System.out.println(student);
			return "adminscreen";
		}
		@RequestMapping("/remove")
		public String onRemove(@RequestParam int studentId, Model m)
		{
	        //delete the student
			sr.deleteStundet(studentId);
			// featch the remaining student
			 List<Student> students = sr.getAllStudents();
			 // send the remaining list to jsp
		     m.addAttribute("data", students);
			return "adminscreen";
		}
     
	
	}
