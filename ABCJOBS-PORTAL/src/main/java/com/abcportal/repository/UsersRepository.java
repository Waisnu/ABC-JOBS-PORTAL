package com.abcportal.repository;

import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.abcportal.model.*;

@Repository
public interface UsersRepository extends JpaRepository<Users, Long> {
	@Query(value = "SELECT * FROM users ORDER BY user_id DESC LIMIT 1", nativeQuery = true) 
	String getLastUser();
	
	@Query(value = "SELECT * FROM users WHERE :email = email AND :password = password", nativeQuery = true)
	Users login(@Param("email") String email, @Param("password") String password);

	@Query(value = "SELECT * FROM users WHERE email = :email", nativeQuery = true)
	String checkEmail(@Param("email") String email);
}
