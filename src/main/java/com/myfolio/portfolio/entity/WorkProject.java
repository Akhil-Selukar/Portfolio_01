package com.myfolio.portfolio.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class WorkProject {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int projectId;
	
	private String duration;
	private String position;
	private String organization;
	
	@Column(length = 1000)
	private String highlights;
	@Column(length = 1000)
	private String awards;
	
	public WorkProject() {
		// TODO Auto-generated constructor stub
	}
	
	public WorkProject(String duration, String position, String organization, String highlights, String awards) {
		super();
		this.duration = duration;
		this.position = position;
		this.organization = organization;
		this.highlights = highlights;
		this.awards = awards;
	}

	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}
	public String getHighlights() {
		return highlights;
	}
	public void setHighlights(String highlights) {
		this.highlights = highlights;
	}
	public String getAwards() {
		return awards;
	}
	public void setAwards(String awards) {
		this.awards = awards;
	}
	
}
