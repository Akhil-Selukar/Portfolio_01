package com.myfolio.portfolio.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.myfolio.portfolio.dto.WorkProjectHelper;
import com.myfolio.portfolio.entity.ProfessionalInfo;
import com.myfolio.portfolio.entity.WorkProject;
import com.myfolio.portfolio.service.ProfessionalInfoService;
import com.myfolio.portfolio.service.WorkProjectService;

@Controller
public class WorkProjectController {

	@Autowired
	WorkProjectService workProjectService;
	
	@Autowired
	ProfessionalInfoService professionalInfoService;

	public WorkProjectController(WorkProjectService workProjectService, ProfessionalInfoService professionalInfoService) {
		super();
		this.workProjectService = workProjectService;
		this.professionalInfoService = professionalInfoService;
	}
	
	@GetMapping("/pfadmin/work/addproject/{profId}")
	public String addWorkProjects(@PathVariable("profId") int id, Model model) {
		
		WorkProjectHelper workProjectHelper = new WorkProjectHelper();
		workProjectHelper.setProfId(id);
		
		model.addAttribute("WorkProject", workProjectHelper);
		
		return "createWorkProjectForm";
	}

	
	@PostMapping("/pfadmin/work/addproject")
	public String saveWorkProject(WorkProjectHelper workProjectHelper) {
	
		System.out.println("=====>>>===>> "+workProjectHelper.getProfId());
		
		ProfessionalInfo oldProfessionalinfo = professionalInfoService.getProfessionalInfoById(workProjectHelper.getProfId());
		WorkProject workProject = new WorkProject(workProjectHelper.getDuration(), workProjectHelper.getPosition(),
				workProjectHelper.getOrganization(), workProjectHelper.getHighlights(), workProjectHelper.getAwards());
		
		List<WorkProject> wProjectrs = new ArrayList<WorkProject>();
		wProjectrs.addAll(oldProfessionalinfo.getProjects());
		wProjectrs.add(workProject);
		
		oldProfessionalinfo.setProjects(wProjectrs);
		
		professionalInfoService.saveProfessionalInfo(oldProfessionalinfo);
		
		return "redirect:/pfadmin";
	}
	
	@GetMapping("/pfadmin/work/editProject/{projectId}")
	public String editWorkProject(@PathVariable("projectId") int id, Model model) {
		
		WorkProject workProject = workProjectService.getWorkProjectById(id);
		model.addAttribute("workProject", workProject);
	
		return "EditWorkProjectForm";
	}
	
	@PostMapping("/pfadmin/work/save/{projectId}")
	public String SaveWorkProjectById(@PathVariable("projectId") int id, WorkProject workProject) {
		
		WorkProject oldWorkProject = workProjectService.getWorkProjectById(id);
		oldWorkProject.setAwards(workProject.getAwards());
		oldWorkProject.setDuration(workProject.getDuration());
		oldWorkProject.setHighlights(workProject.getHighlights());
		oldWorkProject.setOrganization(workProject.getOrganization());
		oldWorkProject.setPosition(workProject.getPosition());
		
		workProjectService.saveWorkProject(oldWorkProject);
		
		return "redirect:/pfadmin";
		
	}
}
