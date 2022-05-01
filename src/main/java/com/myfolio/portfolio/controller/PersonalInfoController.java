package com.myfolio.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.myfolio.portfolio.dto.ProfessionalInfoHelper;
import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.service.PersonalInfoService;

@Controller
public class PersonalInfoController {

	@Autowired
	PersonalInfoService personalInfoService;
	
	public PersonalInfoController(PersonalInfoService personalInfoService) {
		super();
		this.personalInfoService = personalInfoService;
	}

	//Get the person in admin page.
	@GetMapping("/pfadmin/home")
	public String getPersonalInfo(Model model) {
		model.addAttribute("person", personalInfoService.getPersonalInfo());
		
		return "adminHome";
	}
	
	// Create new Profile
	@GetMapping("/pfadmin/new")
	public String addNewPersonalInfo(Model model) {
		PersonalInfo personalInfo = new PersonalInfo();
		model.addAttribute("personalInfo", personalInfo);
		
		return "createProfileForm";
	}
	
	// Save new profile
	@PostMapping("/pfadmin")
	public String savePersonalInfo(PersonalInfo personalInfo) {
		personalInfoService.savePersonalInfo(personalInfo);
		
		return "redirect:/pfadmin/home";
	}
	
	//Get profile by id
	@GetMapping("/pfadmin/{personalId}")
	public String getPersonalInfoById(@PathVariable("personalId") int id, Model model) {
		model.addAttribute("personalInfo", personalInfoService.getPersonalInfoById(id));
		
		return "personalInfoPage";
	}
	
	//Save edited personalInfo
	@PostMapping("/pfadmin/{personalId}")
	public String SaveEditedPersonalInfo(@PathVariable("personalId") int id, @ModelAttribute("personalInfo") PersonalInfo personalInfo) {
		PersonalInfo oldPersonalInfo = personalInfoService.getPersonalInfoById(id);
		
		oldPersonalInfo.setFirstName(personalInfo.getFirstName());
		oldPersonalInfo.setLastName(personalInfo.getLastName());
		oldPersonalInfo.setAge(personalInfo.getAge());
		oldPersonalInfo.setGender(personalInfo.getGender());
		oldPersonalInfo.setLangKnown(personalInfo.getLangKnown());
		oldPersonalInfo.setMobileNo(personalInfo.getMobileNo());
		oldPersonalInfo.setEmailId(personalInfo.getEmailId());
		oldPersonalInfo.setCountry(personalInfo.getCountry());
		oldPersonalInfo.setCurrentLocation(personalInfo.getCurrentLocation());
		oldPersonalInfo.setGitLink(personalInfo.getGitLink());
		oldPersonalInfo.setLinkedInLink(personalInfo.getLinkedInLink());
		oldPersonalInfo.setDescription(personalInfo.getDescription());
		
		personalInfoService.savePersonalInfo(oldPersonalInfo);
		
		return "redirect:/pfadmin/home";
	}
	
	//Delete personalInfo/profile
	@GetMapping("/pfadmin/delete/{personalId}")
	public String deletePersonalInfoById(@PathVariable("personalId") int id) {
		personalInfoService.deletePersonalInfoById(id);
		
		return "redirect:/pfadmin/home";
	}
	
	//add blank object of ProfessionalInfo
	@GetMapping("/pfadmin/professional/{personalId}")
	public String addProfessionalInfo(@PathVariable("personalId") int personalId, Model model) {
		
		ProfessionalInfoHelper professionalinfoHelper = new ProfessionalInfoHelper();
		//Use If elase
		//Check if personalInfo.professionalInfo is null
		// yes -- >> create new helper object and set key to 1
		// No -->> fetch the data from personalinfo.professionalInfo and set it to the new object of helper
		PersonalInfo perInfo = personalInfoService.getPersonalInfoById(personalId);
		
		if(perInfo.getProfessionalInfo() == null) {
			System.out.println("+=+=+=+++=>> "+personalId);
			professionalinfoHelper.setPersonalId(personalId);
			System.out.println("******* >> "+professionalinfoHelper.getPersonalId());
		}else {
			professionalinfoHelper.setPersonalId(personalId);
			professionalinfoHelper.setDesignation(perInfo.getProfessionalInfo().getDesignation());
			professionalinfoHelper.setKnownDbs(perInfo.getProfessionalInfo().getKnownDbs());
			professionalinfoHelper.setOperatingSys(perInfo.getProfessionalInfo().getOperatingSys());
			professionalinfoHelper.setProgLanguages(perInfo.getProfessionalInfo().getProgLanguages());
			professionalinfoHelper.setScriptLanguages(perInfo.getProfessionalInfo().getScriptLanguages());
			professionalinfoHelper.setSummaryPoints(perInfo.getProfessionalInfo().getSummaryPoints());
			professionalinfoHelper.setToolsUsed(perInfo.getProfessionalInfo().getToolsUsed());
		}
		
		
		model.addAttribute("profInfoModel", professionalinfoHelper);
		
		return "professionalInfoForm";
	}
	
}
