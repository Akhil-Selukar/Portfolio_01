package com.myfolio.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.myfolio.portfolio.dto.ProfessionalInfoHelper;
import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.entity.ProfessionalInfo;
import com.myfolio.portfolio.service.PersonalInfoService;
import com.myfolio.portfolio.service.ProfessionalInfoService;

@Controller
public class ProfessionalInfoController {
	
	@Autowired
	ProfessionalInfoService professionalInfoService;
	
	@Autowired
	PersonalInfoService personalInfoService;

	public ProfessionalInfoController(ProfessionalInfoService professionalInfoService,
			PersonalInfoService personalInfoService) {
		super();
		this.professionalInfoService = professionalInfoService;
		this.personalInfoService = personalInfoService;
	}

	@PostMapping("/pfadmin/professional")
	public String addProfessionalInfo(@ModelAttribute("profInfoModel") ProfessionalInfoHelper profInfoHelper, Model model) {
		System.out.println("====>>>> "+profInfoHelper.getPersonalId());
		System.out.println("=====>>> "+profInfoHelper.getProgLanguages());
		
		PersonalInfo oldPersonalInfo = personalInfoService.getPersonalInfoById(profInfoHelper.getPersonalId());
		ProfessionalInfo professionalInfo = new ProfessionalInfo();
		
		professionalInfo.setDesignation(profInfoHelper.getDesignation());
		professionalInfo.setKnownDbs(profInfoHelper.getKnownDbs());
		professionalInfo.setOperatingSys(profInfoHelper.getOperatingSys());
		professionalInfo.setProfId(profInfoHelper.getProfId());
		professionalInfo.setProgLanguages(profInfoHelper.getProgLanguages());
		professionalInfo.setScriptLanguages(profInfoHelper.getScriptLanguages());
		professionalInfo.setSummaryPoints(profInfoHelper.getSummaryPoints());
		
		oldPersonalInfo.setProfessionalInfo(professionalInfo);
		
		personalInfoService.savePersonalInfo(oldPersonalInfo);
		
		return "redirect:/pfadmin";
	}
}
