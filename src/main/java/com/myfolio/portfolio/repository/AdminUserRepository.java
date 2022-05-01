package com.myfolio.portfolio.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.myfolio.portfolio.entity.AdminUser;

public interface AdminUserRepository extends JpaRepository<AdminUser, Integer> {
	Optional<AdminUser> findByUserName(String userName);
}
