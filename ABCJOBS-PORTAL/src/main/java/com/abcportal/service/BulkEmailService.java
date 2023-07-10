package com.abcportal.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.abcportal.model.BulkEmail;
import com.abcportal.model.Users;
import com.abcportal.repository.BulkEmailRepository;
import com.abcportal.repository.UsersRepository;

@Service
@Transactional
public class BulkEmailService {
	@Autowired
	BulkEmailRepository repo;
	
	@Autowired
	UsersRepository ur;
	
	@Autowired
	private JavaMailSender mailSender;
	
	public boolean sendEmail(String subject, String body, String email) {
		List<Users> users = ur.findAll();
		
		try {
			if(email == null) {
				for(Users user: users) {
					SimpleMailMessage message = new SimpleMailMessage();
					message.setFrom("abcportal@clouza.net");
					message.setTo(user.getEmail());
					message.setSubject(subject);
					message.setText(body);
					// message.setBcc(user.getEmail()); // blind carbon copy
					mailSender.send(message);
					System.out.println(user.getEmail() + " - OK");
				}
			} else {
				SimpleMailMessage message = new SimpleMailMessage();
				message.setFrom("abcportal@clouza.net");
				message.setTo(email);
				message.setSubject(subject);
				message.setText(body);
				mailSender.send(message);
			}
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return false;
	}
	
	public BulkEmail saveToDB(BulkEmail be) {
		return repo.save(be);
	}
	
	public List<BulkEmail> getEmail() {
		return repo.findAll();
	}
}
