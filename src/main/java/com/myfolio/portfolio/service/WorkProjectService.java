package com.myfolio.portfolio.service;

import com.myfolio.portfolio.entity.WorkProject;

public interface WorkProjectService {
	WorkProject getWorkProjectById(int id);
	WorkProject saveWorkProject(WorkProject workProject);
}
