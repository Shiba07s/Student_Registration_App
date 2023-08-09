package com.metaex.controller;

import java.util.List;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.metaex.entites.Student;
import com.metaex.entites.User;
import com.metaex.repositories.UserRepository;
import com.metaex.services.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	  @Autowired

	    private UserRepository userRepo; 
	  
	    @RequestMapping("/start")
	    public String startapp() {
	        return "sign_in";
	    } 

	    @RequestMapping("/login")
	    public String verify (@RequestParam("email") @NotBlank String email,
					          @RequestParam("password") @NotBlank String password,
					          Model model
	                        ) {

	        User userRegd = userRepo.findByEmail(email);
	        if (userRegd != null && userRegd.getEmail().equals(email) && userRegd.getPassword().equals(password)) {
	        	 model.addAttribute("msg", "WELCOME TO LDTECH REGISTRATION PORTAL");
		            return "student_registration"; 
	        } else {
	            model.addAttribute("msg", "Invalid username or password");
	            return "sign_in";
	        }
	    } 

	    @RequestMapping("/signup")
	    public String fillform() {
	        return "sign_up";
	    } 

	    @RequestMapping("/saveOne")
	    public String savecred(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, ModelMap model) {
	        if (bindingResult.hasErrors()) {
	            return "sign_up"; // Return to the form if validation errors exist
	        } 
	        userRepo.save(user);
	        model.addAttribute("msg", "DATA SAVED SUCCESSFULLY!");
	        return "sign_in";
	    }
	
	@RequestMapping("/back")
	public String backToHomePage() {
		return "home";
		
	}
	
	@RequestMapping("/studentRegistration")
	public String viewRegistrationPage() {
		return  "student_registration";
		
	}
	@RequestMapping("/save")
	public String saveStudent(@ModelAttribute("student") @Valid Student student, BindingResult bindingResult, ModelMap model) {
		if (bindingResult.hasErrors()) {
            return "student_registration"; // Return to the form if validation errors exist
        }
		model.addAttribute("msg","registration succesfully completed !!");
		studentService.saveStudent(student);
		
		return "home";
		
	}
//	@RequestMapping("/saveone")
//    public String savecred(@ModelAttribute("Login") @Valid Login log, BindingResult bindingResult, ModelMap model) {
//        if (bindingResult.hasErrors()) {
//            return "open"; // Return to the form if validation errors exist
//        }  
//        logrepo.save(log);
//        model.addAttribute("msg", "DATA SAVED SUCCESSFULLY!");
//        return "login1";
//
//    }
	@RequestMapping("/listall")
	public String getAllStudents( ModelMap model) {
		List<Student>students=studentService.getStudents();
		model.addAttribute( "students", students);
		return"student_list"; 
	}
	
	@RequestMapping("/delete")
	public String deleteStudentId(@RequestParam("id") long id,ModelMap model) {
		studentService.deleteStudent(id);
		List<Student> students = studentService.getStudents();
		model.addAttribute("students", students);
		return "student_list";
		
	}
	@RequestMapping("/update")
	public String updateStudents(@RequestParam("id") long id,ModelMap model) {
		Student student = studentService.findStudentId(id);
		model.addAttribute( "student", student);
		return "update_student";
		
	}
	@RequestMapping("/updateStudent")
	public String updateLead(@ModelAttribute("student") Student student,ModelMap model) {
		studentService.saveOneStudent(student);
		model.addAttribute( "msg", "Student id is Updated");
		List<Student> students=studentService.getStudents();
		model.addAttribute( "students", students);
		return "student_list";
		
	}  
}
