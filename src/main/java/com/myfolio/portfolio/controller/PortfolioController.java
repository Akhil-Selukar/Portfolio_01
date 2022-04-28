package com.myfolio.portfolio.controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PortfolioController implements ErrorController {
	
	
	@RequestMapping("/")
	public String welcome() {

		return "home";
	}
	
	@GetMapping("/error")
	public String error() {
		return "errorPage";
	}
}
