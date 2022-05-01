package com.myfolio.portfolio.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "personal_info")
public class PersonalInfo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int personalId;
	
	private String firstName;
	private String lastName;
	private int age;
	private String gender;
	private String langKnown;
	private String mobileNo;
	private String emailId;
	private String country;
	private String currentLocation;
	private String gitLink;
	private String LinkedInLink;
	@Column(length = 1000)
	private String description;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_persId")
	private ProfessionalInfo professionalInfo;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_personalId")
	private List<Certificate> certificates;
	
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "fk_personalId")
	private List<PersonalProject> personalProjects;

	public PersonalInfo() {
		// TODO Auto-generated constructor stub
	}

	public int getPersonalId() {
		return personalId;
	}

	public void setPersonalId(int personalId) {
		this.personalId = personalId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getLangKnown() {
		return langKnown;
	}

	public void setLangKnown(String langKnown) {
		this.langKnown = langKnown;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCurrentLocation() {
		return currentLocation;
	}

	public void setCurrentLocation(String currentLocation) {
		this.currentLocation = currentLocation;
	}

	public String getGitLink() {
		return gitLink;
	}

	public void setGitLink(String gitLink) {
		this.gitLink = gitLink;
	}

	public String getLinkedInLink() {
		return LinkedInLink;
	}

	public void setLinkedInLink(String linkedInLink) {
		LinkedInLink = linkedInLink;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public ProfessionalInfo getProfessionalInfo() {
		return professionalInfo;
	}

	public void setProfessionalInfo(ProfessionalInfo professionalInfo) {
		this.professionalInfo = professionalInfo;
	}

	public List<Certificate> getCertificates() {
		return certificates;
	}

	public void setCertificates(List<Certificate> certificates) {
		this.certificates = certificates;
	}

	public List<PersonalProject> getPersonalProjects() {
		return personalProjects;
	}

	public void setPersonalProjects(List<PersonalProject> personalProjects) {
		this.personalProjects = personalProjects;
	}
	
	
}
