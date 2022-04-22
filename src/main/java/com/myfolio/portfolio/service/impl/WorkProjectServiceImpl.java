package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
	
}
