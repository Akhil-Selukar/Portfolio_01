package com.myfolio.portfolio.dto;

import javax.persistence.Column;

public class WorkProjectHelper {
	
	private int profId;

	private int projectId;
	private String duration;
	private String position;
	private String organization;
	private String highlights;
	private String awards;

	public WorkProjectHelper() {
		// TODO Auto-generated constructor stub
	}

	public WorkProjectHelper(int projectId, String duration, String position, String organization, String highlights,
			String awards) {
		super();
		this.projectId = projectId;
		this.duration = duration;
		this.position = position;
		this.organization = organization;
		this.highlights = highlights;
		this.awards = awards;
	}

	public int getProfId() {
		return profId;
	}
	public void setProfId(int profId) {
		this.profId = profId;
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
