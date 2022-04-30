package com.myfolio.portfolio.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.myfolio.portfolio.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	JavaMailSender mailSender;
	
	@Override
	public void sendEmail(String toMail, String name, String eMail, String phoneNo, String body) {
		SimpleMailMessage message = new SimpleMailMessage();
		SimpleMailMessage acknowledgement = new SimpleMailMessage();
		
		System.out.println("toMail : "+toMail);
		System.out.println("Name : "+name);
		System.out.println("Email : "+eMail);
		System.out.println("phoneNo : "+phoneNo);
		System.out.println("body : "+body+"\n\nEmail : "+eMail+"\nContact No : "+phoneNo);
		
		message.setTo(toMail);
		message.setSubject(name + " Want to contact you.");
		message.setText(body);
		

		acknowledgement.setTo(eMail);
		acknowledgement.setSubject("Acknowledgement From Akhil Selukar.");
		acknowledgement.setText("Hi "+name+"\n\nThank you for visiting my profile.\nI have received your email and will respond within few hrs.\n\nThanks and regards,\nAkhil");
		
		
		mailSender.send(message);
		System.out.println("Email sent..!!");
		mailSender.send(acknowledgement);
		System.out.println("Acknowledgement sent..!!");
		
	}
}
