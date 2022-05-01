package com.myfolio.portfolio.service.impl;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.entity.AdminUser;
import com.myfolio.portfolio.repository.AdminUserRepository;
import com.myfolio.portfolio.security.AdminUserDetails;

@Service
public class AdminUserDetailsService implements UserDetailsService {

	@Autowired
	AdminUserRepository adminUserRepository;

	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
		Optional<AdminUser> user = adminUserRepository.findByUserName(userName);

		user.orElseThrow(() -> new UsernameNotFoundException("User not forund : " + userName));

		return user.map(AdminUserDetails::new).get();
	}

}
