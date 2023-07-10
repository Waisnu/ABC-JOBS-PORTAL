package com.abcportal.service;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcportal.model.Users;
import com.abcportal.repository.UsersRepository;

@Service
@Transactional
public class UsersService {
	@Autowired
	UsersRepository repo;
	
	public Users register(Users user) {
		return repo.save(user);
	}
	
	public Users login(Users user) {
		try {
			Users login = repo.login(user.getEmail(), user.getPassword());
			return login;
		} catch (Exception e) {
			System.out.println("Credential is null " + e);
		}
		return null;
	}
	
	public String getLastUser() {
		return repo.getLastUser();
	}
	
	public boolean isUserExist(Long id) {
		try {
			repo.findById(id);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
	
	public String checkEmail(String email) {
		return repo.checkEmail(email);
	}
	
	public Users updatePassword(String password, String email) {
		Long userId = Long.parseLong(repo.checkEmail(email).split(",")[0]);
		Users user = repo.findById(userId).get();
		
		// update 
		user.setPassword(password);
		
		// save
		return repo.save(user);
	}
	
	public boolean deleteUserById(Long id) {
		try {
			repo.deleteById(id);
			return true;
		} catch (Exception e) {
			System.out.println(e);
		}
		return false;
	}
}
