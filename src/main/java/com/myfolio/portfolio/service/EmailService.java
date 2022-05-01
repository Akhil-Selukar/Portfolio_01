package com.myfolio.portfolio.service;

public interface EmailService {
	void sendEmail(String toMail, String name, String eMail, String phoneNo, String body);
}
