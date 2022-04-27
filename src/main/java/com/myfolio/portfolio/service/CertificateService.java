package com.myfolio.portfolio.service;

import com.myfolio.portfolio.entity.Certificate;

public interface CertificateService {
	
	Certificate getCertificateById(int id);
	Certificate saveCertificate(Certificate certiicate);
}
