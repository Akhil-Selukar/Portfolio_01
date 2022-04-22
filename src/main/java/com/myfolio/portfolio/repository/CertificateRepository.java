package com.myfolio.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myfolio.portfolio.entity.Certificate;

public interface CertificateRepository extends JpaRepository<Certificate, Integer> {

}
