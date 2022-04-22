package com.myfolio.portfolio.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Certificate {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int certificateId;
	
	private String examCode;
	private String certificateName;
	private String certificateProvider;
	
	public Certificate() {
		// TODO Auto-generated constructor stub
	}
	
	public int getCertificateId() {
		return certificateId;
	}
	public void setCertificateId(int certificateId) {
		this.certificateId = certificateId;
	}
	public String getExamCode() {
		return examCode;
	}
	public void setExamCode(String examCode) {
		this.examCode = examCode;
	}
	public String getCertificateName() {
		return certificateName;
	}
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public String getCertificateProvider() {
		return certificateProvider;
	}
	public void setCertificateProvider(String certificateProvider) {
		this.certificateProvider = certificateProvider;
	}
	
}
