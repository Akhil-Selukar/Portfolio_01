package com.myfolio.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myfolio.portfolio.entity.PersonalInfo;

public interface PersonalInfoRepository extends JpaRepository<PersonalInfo, Integer> {

}
