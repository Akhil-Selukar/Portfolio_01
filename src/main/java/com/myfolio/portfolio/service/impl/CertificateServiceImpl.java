package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.entity.Certificate;
import com.myfolio.portfolio.repository.CertificateRepository;
import com.myfolio.portfolio.service.CertificateService;

@Service
public class CertificateServiceImpl implements CertificateService{
	
	@Autowired
	CertificateRepository certificateRepository;

	public CertificateServiceImpl(CertificateRepository certificaterepository) {
		super();
		this.certificateRepository = certificaterepository;
	}

	@Override
	public Certificate getCertificateById(int id) {
		
		return certificateRepository.getById(id);
	}

	@Override
	public Certificate saveCertificate(Certificate certiicate) {

		return certificateRepository.save(certiicate);
	}
	
	
}
