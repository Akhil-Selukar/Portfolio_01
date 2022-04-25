package com.myfolio.portfolio.dto;

public class PersonalProjectHelper {

	private int personalId;

	private int projectId;
	private String projectName;
	private String gitLink;
	private String documentationLink;
	private String url;
	
	public PersonalProjectHelper() {
		// TODO Auto-generated constructor stub
	}
	
	public PersonalProjectHelper(int projectId, String projectName, String gitLink, String documentationLink,
			String url) {
		super();
		this.projectId = projectId;
		this.projectName = projectName;
		this.gitLink = gitLink;
		this.documentationLink = documentationLink;
		this.url = url;
	}

	public int getPersonalId() {
		return personalId;
	}
	public void setPersonalId(int personalId) {
		this.personalId = personalId;
	}
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getGitLink() {
		return gitLink;
	}
	public void setGitLink(String gitLink) {
		this.gitLink = gitLink;
	}
	public String getDocumentationLink() {
		return documentationLink;
	}
	public void setDocumentationLink(String documentationLink) {
		this.documentationLink = documentationLink;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
}
