package com.myfolio.portfolio.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class ProfessionalInfo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int profId;
	
	private String designation;
	private String summaryPoints;
	private String progLanguages;
	private String scriptLanguages;
	private String knownDbs;
	private String OperatingSys;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_proflId")
	private List<WorkProject> projects = new ArrayList<WorkProject>();

	public ProfessionalInfo() {
		// TODO Auto-generated constructor stub
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
		return OperatingSys;
	}
	public void setOperatingSys(String operatingSys) {
		OperatingSys = operatingSys;
	}
	public List<WorkProject> getProjects() {
		return projects;
	}
	public void setProjects(List<WorkProject> projects) {
		this.projects = projects;
	}
		
}
