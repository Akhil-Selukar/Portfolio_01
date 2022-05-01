package com.myfolio.portfolio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myfolio.portfolio.dto.ProfileHelper;
import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.service.PersonalInfoService;

@Controller
public class PortfolioController implements ErrorController {
	
	@Autowired
	PersonalInfoService personalInfoService;
	
	public PortfolioController(PersonalInfoService personalInfoService) {
		super();
		this.personalInfoService = personalInfoService;
	}

	@RequestMapping("/")
	public String welcome(Model model) {
		
		PersonalInfo personalInfo = personalInfoService.getPersonalInfoById(1);
		
		ProfileHelper profileHelper = new ProfileHelper();
		
		profileHelper.setFirstName(personalInfo.getFirstName());
		profileHelper.setLastName(personalInfo.getLastName());
		profileHelper.setAge(personalInfo.getAge());
		profileHelper.setGender(personalInfo.getGender());
		profileHelper.setLangKnown(personalInfo.getLangKnown());
		profileHelper.setMobileNo(personalInfo.getMobileNo());
		profileHelper.setEmailId(personalInfo.getEmailId());
		profileHelper.setCountry(personalInfo.getCountry());
		profileHelper.setCurrentLocation(personalInfo.getCurrentLocation());
		profileHelper.setGitLink(personalInfo.getGitLink());
		profileHelper.setLinkedInLink(personalInfo.getLinkedInLink());
		profileHelper.setDescription(personalInfo.getDescription());
		profileHelper.setProfessionalInfo(personalInfo.getProfessionalInfo());
		profileHelper.setCertificates(personalInfo.getCertificates());
		profileHelper.setPersonalProjects(personalInfo.getPersonalProjects());

		model.addAttribute("profileHelper", profileHelper);

		return "home";
	}
	
	@GetMapping("/error")
	public String error() {
		return "errorPage";
	}
}
