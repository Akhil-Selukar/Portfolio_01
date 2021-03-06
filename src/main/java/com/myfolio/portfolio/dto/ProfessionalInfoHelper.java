package com.myfolio.portfolio.dto;

import java.util.List;

import com.myfolio.portfolio.entity.WorkProject;

public class ProfessionalInfoHelper {
	
	private int personalId;
	
	private int profId;
	private String designation;
	private String summaryPoints;
	private String progLanguages;
	private String scriptLanguages;
	private String knownDbs;
	private String toolsUsed;
	private String operatingSys;
	
	private List<WorkProject> workProjects;
	
	public ProfessionalInfoHelper() {
		// TODO Auto-generated constructor stub
	}
	
	public ProfessionalInfoHelper(int profId, String designation, String summaryPoints, String progLanguages,
			String scriptLanguages, String knownDbs, String toolsUsed, String operatingSys,
			List<WorkProject> workProjects) {
		super();
		this.profId = profId;
		this.designation = designation;
		this.summaryPoints = summaryPoints;
		this.progLanguages = progLanguages;
		this.scriptLanguages = scriptLanguages;
		this.knownDbs = knownDbs;
		this.toolsUsed = toolsUsed;
		this.operatingSys = operatingSys;
		this.workProjects = workProjects;
	}

	public ProfessionalInfoHelper(int profId, List<WorkProject> workProjects) {
		super();
		this.profId = profId;
		this.workProjects = workProjects;
	}

	public List<WorkProject> getWorkProjects() {
		return workProjects;
	}
	public void setWorkProjects(List<WorkProject> workProjects) {
		this.workProjects = workProjects;
	}
	public int getPersonalId() {
		return personalId;
	}
	public void setPersonalId(int personalId) {
		this.personalId = personalId;
	}
	public int getProfId() {
		return profId;
	}
	public void setProfId(int profId) {
		this.profId = profId;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getSummaryPoints() {
		return summaryPoints;
	}
	public void setSummaryPoints(String summaryPoints) {
		this.summaryPoints = summaryPoints;
	}
	public String getProgLanguages() {
		return progLanguages;
	}
	public void setProgLanguages(String progLanguages) {
		this.progLanguages = progLanguages;
	}
	public String getScriptLanguages() {
		return scriptLanguages;
	}
	public void setScriptLanguages(String scriptLanguages) {
		this.scriptLanguages = scriptLanguages;
	}
	public String getKnownDbs() {
		return knownDbs;
	}
	public void setKnownDbs(String knownDbs) {
		this.knownDbs = knownDbs;
	}
	public String getOperatingSys() {
		return operatingSys;
	}
	public void setOperatingSys(String operatingSys) {
		this.operatingSys = operatingSys;
	}
	public String getToolsUsed() {
		return toolsUsed;
	}
	public void setToolsUsed(String toolsUsed) {
		this.toolsUsed = toolsUsed;
	}

}
