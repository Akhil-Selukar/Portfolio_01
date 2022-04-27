package com.myfolio.portfolio.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.myfolio.portfolio.dto.PersonalInfoHelper;
import com.myfolio.portfolio.dto.PersonalProjectHelper;
import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.entity.PersonalProject;
import com.myfolio.portfolio.service.PersonalInfoService;
import com.myfolio.portfolio.service.PersonalProjectService;

@Controller
public class PersonalProjectController {

	@Autowired
	PersonalInfoService personalInfoService;
	
	@Autowired
	PersonalProjectService personalProjectService;

	public PersonalProjectController(PersonalInfoService personalInfoService,
			PersonalProjectService personalProjectService) {
		super();
		this.personalInfoService = personalInfoService;
		this.personalProjectService = personalProjectService;
	}
	
	@GetMapping("/pfadmin/personalproject/{personalId}")
	public String getPersonalProjectDetails(@PathVariable("personalId") int id, Model model) {
		
		PersonalInfo personalInfo = personalInfoService.getPersonalInfoById(id);
		
		List<PersonalProject> personalProjects = new ArrayList<PersonalProject>();
		
		if(personalInfo.getPersonalProjects() != null) {
			for(PersonalProject personalProject : personalInfo.getPersonalProjects()) {
				PersonalProject tempPersonalProject = new PersonalProject();
				
				tempPersonalProject.setDocumentationLink(personalProject.getDocumentationLink());
				tempPersonalProject.setGitLink(personalProject.getGitLink());
				tempPersonalProject.setProjectId(personalProject.getProjectId());
				tempPersonalProject.setProjectName(personalProject.getProjectName());
				tempPersonalProject.setUrl(personalProject.getUrl());
				
				personalProjects.add(tempPersonalProject);
			}
		}else {
			PersonalProject tempPersonalProject = new PersonalProject();
			personalProjects.add(tempPersonalProject);
		}
		
		PersonalInfoHelper personalInfoHelper = new PersonalInfoHelper(id, personalProjects);
		
		model.addAttribute("personalInfoHelper", personalInfoHelper);
		
		return "personlprojects";
	}
	
	@GetMapping("/pfadmin/personalproject/addproject/{personalId}")
	public String addPersonalProject(@PathVariable("personalId") int id, Model model) {
		PersonalProjectHelper personalProjectHelper = new PersonalProjectHelper();
		
		personalProjectHelper.setPersonalId(id);
		model.addAttribute("personalProjectHelper", personalProjectHelper);
		
		return "createPersonalProjectForm";
	}
	
	@PostMapping("/pfadmin/personalproject/addproject")
	public String savePersonalProject(PersonalProjectHelper personalProjectHelper) {
		PersonalInfo oldPersonalInfo = personalInfoService.getPersonalInfoById(personalProjectHelper.getPersonalId());
		
		PersonalProject personalProject = new PersonalProject(personalProjectHelper.getProjectName(), personalProjectHelper.getGitLink(),
				personalProjectHelper.getDocumentationLink(), personalProjectHelper.getUrl());
		
		List<PersonalProject> personalProjects = new ArrayList<PersonalProject>();
		personalProjects.addAll(oldPersonalInfo.getPersonalProjects());
		personalProjects.add(personalProject);
		
		oldPersonalInfo.setPersonalProjects(personalProjects);
		
		personalInfoService.savePersonalInfo(oldPersonalInfo);
		
		return "redirect:/pfadmin";
		
	}
	
	@GetMapping("/pfadmin/personalproject/editProject/{projectId}")
	public String editPersonalProject(@PathVariable("projectId") int id, Model model) {
		
		PersonalProject personalProject = personalProjectService.getPersonalProjectById(id);
		
		model.addAttribute("personalProject", personalProject);
		
		return "editPersonalProjectForm";
	}
	
	@PostMapping("/pfadmin/personalproject/save/{projectId}")
	public String saveEditedPersonalProject(@PathVariable("projectId") int id, PersonalProject personalProject) {
		
		PersonalProject oldPersonalProject = personalProjectService.getPersonalProjectById(id);
		
		oldPersonalProject.setProjectName(personalProject.getProjectName());
		oldPersonalProject.setDocumentationLink(personalProject.getDocumentationLink());
		oldPersonalProject.setGitLink(personalProject.getGitLink());
		oldPersonalProject.setUrl(personalProject.getUrl());

		personalProjectService.savePersonalProject(oldPersonalProject);
		
		return "redirect:/pfadmin";
	
	}
}
