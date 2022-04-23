package com.myfolio.portfolio.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.entity.PersonalInfo;
import com.myfolio.portfolio.repository.PersonalInfoRepository;
import com.myfolio.portfolio.service.PersonalInfoService;

@Service
public class PersonalInfoServiceImpl implements PersonalInfoService{

	@Autowired
	PersonalInfoRepository personalInfoRepository;

	public PersonalInfoServiceImpl(PersonalInfoRepository personalInfoRepository) {
		super();
		this.personalInfoRepository = personalInfoRepository;
	}

	@Override
	public List<PersonalInfo> getPersonalInfo() {
		
		return personalInfoRepository.findAll();
	}

	@Override
	public PersonalInfo savePersonalInfo(PersonalInfo personalInfo) {

		return personalInfoRepository.save(personalInfo);
	}

	@Override
	public PersonalInfo getPersonalInfoById(int id) {
		return personalInfoRepository.getById(id);
	}

	@Override
	public void deletePersonalInfoById(int id) {
		personalInfoRepository.deleteById(id);
	}
	
}
