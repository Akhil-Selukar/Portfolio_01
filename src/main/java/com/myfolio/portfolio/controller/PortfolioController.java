package com.myfolio.portfolio.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortfolioController {
	
	
	@RequestMapping("/")
	public String welcome() {

		return "home";
	}
	
}
