package com.ldtech;

import org.springframework.boot.builder.SpringApplicationBuilder;

import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

 

public class ServletInitializer extends SpringApplicationBuilder{
	
 
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(LdtechApplication.class);
	}
	 

}
