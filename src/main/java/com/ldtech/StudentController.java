package com.ldtech;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class StudentController {
	
//	@GetMapping("/start")
//	public String start() {
//		return "sign_in";
//		
//	}
//	@GetMapping("/signup")
//	public String signin() {
//		return "sign_up";
//		
//	}
	@RequestMapping("/signup")
    public String fillform() {
        return "sign_up";
    } 
	 @RequestMapping("/start")
	    public String startapp() {
	        return "sign_in";
	    } 
	

}
