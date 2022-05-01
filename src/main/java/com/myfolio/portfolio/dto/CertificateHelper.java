package com.myfolio.portfolio.dto;

public class CertificateHelper {

	private int personalId;

	private int certificateId;
	private String examCode;
	private String certificateName;
	private String certificateProvider;
	private String certificateLink;
	
	public CertificateHelper() {
		// TODO Auto-generated constructor stub
	}
	
	public CertificateHelper(int personalId, int certificateId, String examCode, String certificateName,
			String certificateProvider, String certificateLink) {
		super();
		this.personalId = personalId;
		this.certificateId = certificateId;
		this.examCode = examCode;
		this.certificateName = certificateName;
		this.certificateProvider = certificateProvider;
		this.certificateLink = certificateLink;
	}

	public int getPersonalId() {
		return personalId;
	}
	public void setPersonalId(int personalId) {
		this.personalId = personalId;
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
	public String getCertificateLink() {
		return certificateLink;
	}
	public void setCertificateLink(String certificateLink) {
		this.certificateLink = certificateLink;
	}
	
}
