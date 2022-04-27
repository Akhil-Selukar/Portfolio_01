package com.myfolio.portfolio.service;

import com.myfolio.portfolio.entity.PersonalProject;

public interface PersonalProjectService {

	PersonalProject getPersonalProjectById(int id);
	PersonalProject savePersonalProject(PersonalProject personalProject);
}
