package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.entity.WorkProject;
import com.myfolio.portfolio.repository.WorkProjectRepository;
import com.myfolio.portfolio.service.WorkProjectService;

@Service
public class WorkProjectServiceImpl implements WorkProjectService {

	@Autowired
	WorkProjectRepository workProjectRepository;

	public WorkProjectServiceImpl(WorkProjectRepository workProjectRepository) {
		super();
		this.workProjectRepository = workProjectRepository;
	}

	@Override
	public WorkProject getWorkProjectById(int id) {
		
		return workProjectRepository.getById(id);
	}

	@Override
	public WorkProject saveWorkProject(WorkProject workProject) {
		
		return workProjectRepository.save(workProject);
	}
	
	
}
