package com.myfolio.portfolio.service;

import java.util.List;

import com.myfolio.portfolio.entity.PersonalInfo;

public interface PersonalInfoService {
	List<PersonalInfo> getPersonalInfo();
	PersonalInfo savePersonalInfo(PersonalInfo personalInfo);
	PersonalInfo getPersonalInfoById(int id);
	void deletePersonalInfoById(int id);
}
