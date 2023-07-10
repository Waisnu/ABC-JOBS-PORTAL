package com.abcportal.config;
import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("com.abcjobs")
@EnableWebMvc
public class EmailConfig {

	@Bean
	public JavaMailSender GetMail() {
		Properties props = new Properties();
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		
		props.put("mail.smtp.host", "mail.clouza.net");
		props.put("mail.smtp.port", "465");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.starttls.required", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

		mailSender.setJavaMailProperties(props);
		mailSender.setUsername("abcjobs@clouza.net");
		mailSender.setPassword("abcjobs!");

		return mailSender;
	}
}
