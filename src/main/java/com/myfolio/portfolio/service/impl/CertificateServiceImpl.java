package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.repository.CertificateRepository;
import com.myfolio.portfolio.service.CertificateService;

@Service
public class CertificateServiceImpl implements CertificateService{
	
	@Autowired
	CertificateRepository certificaterepository;

	public CertificateServiceImpl(CertificateRepository certificaterepository) {
		super();
		this.certificaterepository = certificaterepository;
	}
	
	
}
