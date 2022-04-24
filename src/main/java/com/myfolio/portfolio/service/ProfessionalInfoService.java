package com.myfolio.portfolio.service;

import com.myfolio.portfolio.entity.ProfessionalInfo;

public interface ProfessionalInfoService {
	ProfessionalInfo getProfessionalInfoById(int id);
	ProfessionalInfo saveProfessionalInfo(ProfessionalInfo professionalInfo);
}
