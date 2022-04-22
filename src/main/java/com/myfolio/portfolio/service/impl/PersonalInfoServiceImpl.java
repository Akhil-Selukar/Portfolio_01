package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	
}
