package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.entity.ProfessionalInfo;
import com.myfolio.portfolio.repository.ProfessionalInfoRepository;
import com.myfolio.portfolio.service.ProfessionalInfoService;

@Service
public class ProfessionalInfoServiceImpl implements ProfessionalInfoService {

	@Autowired
	ProfessionalInfoRepository professionalInfoRepository;

	public ProfessionalInfoServiceImpl(ProfessionalInfoRepository professionalInfoRepository) {
		super();
		this.professionalInfoRepository = professionalInfoRepository;
	}

	@Override
	public ProfessionalInfo getProfessionalInfoById(int id) {
		
		return professionalInfoRepository.getById(id);
	}

	@Override
	public ProfessionalInfo saveProfessionalInfo(ProfessionalInfo professionalInfo) {
		
		return professionalInfoRepository.save(professionalInfo);
	}
	
	
}
