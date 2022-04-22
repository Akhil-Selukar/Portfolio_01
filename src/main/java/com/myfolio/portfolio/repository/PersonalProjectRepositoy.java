package com.myfolio.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myfolio.portfolio.entity.PersonalProject;

public interface PersonalProjectRepositoy extends JpaRepository<PersonalProject, Integer>{

}
