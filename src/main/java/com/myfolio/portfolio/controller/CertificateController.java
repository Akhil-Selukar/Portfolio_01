package com.myfolio.portfolio.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.myfolio.portfolio.dto.CertificateHelper;
import com.myfolio.portfolio.dto.PersonalInfoHelper;
import com.myfolio.portfolio.entity.Certificate;
import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.service.CertificateService;
import com.myfolio.portfolio.service.PersonalInfoService;

@Controller
public class CertificateController {
	
	@Autowired
	CertificateService certificateService;
	
	@Autowired
	PersonalInfoService personalInfoService;

	public CertificateController(CertificateService certificateService, PersonalInfoService personalInfoService) {
		super();
		this.certificateService = certificateService;
		this.personalInfoService = personalInfoService;
	}
	
	@GetMapping("/pfadmin/certificate/{personalId}")
	public String getAllCertificates(@PathVariable("personalId")int personalId, Model model) {
		
		PersonalInfo personalInfo = personalInfoService.getPersonalInfoById(personalId);
		
		List<Certificate> certificates = new ArrayList<Certificate>();
		
		if(personalInfo.getCertificates() != null) {

			for(Certificate cert : personalInfo.getCertificates()) {
				
				Certificate certificate = new Certificate();
				
				certificate.setCertificateId(cert.getCertificateId());
				certificate.setCertificateName(cert.getCertificateName());
				certificate.setCertificateProvider(cert.getCertificateProvider());
				certificate.setExamCode(cert.getExamCode());
				certificate.setCertificateLink(cert.getCertificateLink());
				
				certificates.add(certificate);
			}
		}else {
			Certificate certificate = new Certificate();
			certificates.add(certificate);
		}
		
		PersonalInfoHelper personalInfoHelper = new PersonalInfoHelper(certificates, personalId);
		
		model.addAttribute("personalInfoHelper", personalInfoHelper);
		
		return "certificates";
		
	}
	
	@GetMapping("/pfadmin/certificate/addcertificate/{personalId}")
	public String addCertificate(@PathVariable("personalId") int personalId, Model model) {
		
		CertificateHelper certificateHelper = new CertificateHelper();
		
		certificateHelper.setPersonalId(personalId);
		model.addAttribute("certificateHelper", certificateHelper);
		
		return "createCertificateForm";
		
	}
	
	@PostMapping("/pfadmin/certificate/addcertificate")
	public String saveCertificate(CertificateHelper certificateHelper) {
		
		PersonalInfo oldPersonalInfo = personalInfoService.getPersonalInfoById(certificateHelper.getPersonalId());
		
		Certificate newCertificate = new Certificate(certificateHelper.getExamCode(), certificateHelper.getCertificateName(),
				certificateHelper.getCertificateProvider(), certificateHelper.getCertificateLink());
		
		List<Certificate> certificates = new ArrayList<Certificate>();
		
		certificates.addAll(oldPersonalInfo.getCertificates());
		certificates.add(newCertificate);
		
		oldPersonalInfo.setCertificates(certificates);
		personalInfoService.savePersonalInfo(oldPersonalInfo);

		return "redirect:/pfadmin";
	}
	
	@GetMapping("/pfadmin/certificate/edit/{certificateId}")
	public String editCertificate(@PathVariable("certificateId") int certificateId, Model model) {
		
		Certificate certificate = certificateService.getCertificateById(certificateId);
		
		model.addAttribute("certificate", certificate);
		
		return "editCertificateForm";
	}
	
	@PostMapping("/pfadmin/certificate/save/{certificateId}")
	public String saveEditedCertificate(@PathVariable("certificateId") int certificateId, Certificate certificate) {
		
		Certificate oldCertificate = certificateService.getCertificateById(certificateId);
		
		oldCertificate.setCertificateLink(certificate.getCertificateLink());
		oldCertificate.setCertificateName(certificate.getCertificateName());
		oldCertificate.setCertificateProvider(certificate.getCertificateProvider());
		oldCertificate.setExamCode(certificate.getExamCode());
		
		certificateService.saveCertificate(oldCertificate);
		
		return "redirect:/pfadmin";
		
	}
}
