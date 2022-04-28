package com.myfolio.portfolio.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.myfolio.portfolio.dto.ProfessionalInfoHelper;
import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.entity.ProfessionalInfo;
import com.myfolio.portfolio.entity.WorkProject;
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
	public String addProfessionalInfo(@ModelAttribute("profInfoModel") ProfessionalInfoHelper profInfoHelper,
			Model model) {
		System.out.println("====>>>> " + profInfoHelper.getPersonalId());
		System.out.println("=====>>> " + profInfoHelper.getProgLanguages());

		PersonalInfo oldPersonalInfo = personalInfoService.getPersonalInfoById(profInfoHelper.getPersonalId());
		if (oldPersonalInfo.getProfessionalInfo() != null) {
			ProfessionalInfo professionalInfo = oldPersonalInfo.getProfessionalInfo();

			professionalInfo.setDesignation(profInfoHelper.getDesignation());
			professionalInfo.setKnownDbs(profInfoHelper.getKnownDbs());
			professionalInfo.setOperatingSys(profInfoHelper.getOperatingSys());
			professionalInfo.setProgLanguages(profInfoHelper.getProgLanguages());
			professionalInfo.setScriptLanguages(profInfoHelper.getScriptLanguages());
			professionalInfo.setSummaryPoints(profInfoHelper.getSummaryPoints());
			professionalInfo.setToolsUsed(profInfoHelper.getToolsUsed());
			
			oldPersonalInfo.setProfessionalInfo(professionalInfo);
		} else {
			ProfessionalInfo professionalInfo = new ProfessionalInfo();

			professionalInfo.setDesignation(profInfoHelper.getDesignation());
			professionalInfo.setKnownDbs(profInfoHelper.getKnownDbs());
			professionalInfo.setOperatingSys(profInfoHelper.getOperatingSys());
			professionalInfo.setProfId(profInfoHelper.getProfId());
			professionalInfo.setProgLanguages(profInfoHelper.getProgLanguages());
			professionalInfo.setScriptLanguages(profInfoHelper.getScriptLanguages());
			professionalInfo.setSummaryPoints(profInfoHelper.getSummaryPoints());
			professionalInfo.setToolsUsed(profInfoHelper.getToolsUsed());
			
			oldPersonalInfo.setProfessionalInfo(professionalInfo);
		}
		personalInfoService.savePersonalInfo(oldPersonalInfo);

		return "redirect:/pfadmin";
	}

	@GetMapping("/pfadmin/work/{profId}")
	public String getWorkExDetails(@PathVariable("profId") int profId, Model model) {

		ProfessionalInfo professionalInfo = professionalInfoService.getProfessionalInfoById(profId);

		List<WorkProject> workProjects = new ArrayList<WorkProject>();

		if (professionalInfo.getProjects() != null) {
			for (WorkProject wProject : professionalInfo.getProjects()) {
				WorkProject tmpWorkProject = new WorkProject();
//				wph.setProfId(professionalInfo.getProfId());
				tmpWorkProject.setDuration(wProject.getDuration());
				tmpWorkProject.setPosition(wProject.getPosition());
				tmpWorkProject.setOrganization(wProject.getOrganization());
				tmpWorkProject.setHighlights(wProject.getHighlights());
				tmpWorkProject.setAwards(wProject.getAwards());
				tmpWorkProject.setProjectId(wProject.getProjectId());

				workProjects.add(tmpWorkProject);
			}
		} else {
			WorkProject tmpWorkProject = new WorkProject();
			workProjects.add(tmpWorkProject);
		}

		ProfessionalInfoHelper profInfoHelper = new ProfessionalInfoHelper(professionalInfo.getProfId(), workProjects);

		model.addAttribute("profInfoHelper", profInfoHelper);

		return "workProjects";
	}
}
