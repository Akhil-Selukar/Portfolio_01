package com.myfolio.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PfController {
	
	// inject via application.properties
	@Value("${home.fName:test}")
	private String fName;
	@Value("${home.lName:test}")
	private String lName;
	@Value("${home.designation}")
	private String designation;
	@Value("${home.description:text}")
	private String description;
	
	@RequestMapping("/")
	public String welcome(Map<String, Object> model) {
		model.put("fName", this.fName);
		model.put("lName", this.lName);
		model.put("designation", this.designation);
		model.put("description", this.description);
		return "home";
	}
}
