package com.myfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PfController {
	
	@RequestMapping("/")
	/*public String welcome(Map<String, Object> model) {
		model.put("message", this.message);*/
	public String welcome() {
		return "home";
	}
}
