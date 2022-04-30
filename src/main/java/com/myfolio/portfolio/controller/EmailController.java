package com.myfolio.portfolio.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.myfolio.portfolio.dto.MailSendingHelper;
import com.myfolio.portfolio.service.EmailService;
import com.myfolio.portfolio.service.PersonalInfoService;

@Controller
public class EmailController {

	@Autowired
	EmailService emailService;
	
	@Autowired
	PersonalInfoService personalInfoService;
	
	public EmailController(EmailService emailService, PersonalInfoService personalInfoService) {
		super();
		this.emailService = emailService;
		this.personalInfoService = personalInfoService;
	}

	@GetMapping("/pfadmin/mail/sendmail")
	public String emailSending(MailSendingHelper mailSendingHelper) {
		
		emailService.sendEmail(personalInfoService.getPersonalInfoById(1).getEmailId(), mailSendingHelper.getName(), mailSendingHelper.geteMail(),
				mailSendingHelper.getPhoneNo(), mailSendingHelper.getMessage());
		
		return "redirect:/";
		
	}
	
}
