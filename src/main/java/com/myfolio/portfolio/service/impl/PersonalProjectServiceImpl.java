package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.entity.PersonalProject;
import com.myfolio.portfolio.repository.PersonalProjectRepositoy;
import com.myfolio.portfolio.service.PersonalProjectService;

@Service
public class PersonalProjectServiceImpl implements PersonalProjectService {

	@Autowired
	PersonalProjectRepositoy personalProjectRepositoy;

	public PersonalProjectServiceImpl(PersonalProjectRepositoy personalProjectRepositoy) {
		super();
		this.personalProjectRepositoy = personalProjectRepositoy;
	}

	@Override
	public PersonalProject getPersonalProjectById(int id) {

		return personalProjectRepositoy.getById(id);
	}

	@Override
	public PersonalProject savePersonalProject(PersonalProject personalProject) {

		return personalProjectRepositoy.save(personalProject);
	}
	
}
