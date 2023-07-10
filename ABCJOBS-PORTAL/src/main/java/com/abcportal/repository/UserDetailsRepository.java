package com.abcportal.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcportal.model.UserDetails;

@Repository
public interface UserDetailsRepository extends JpaRepository<UserDetails, Long> {
	@Query(value = "SELECT user_details_id, first_name, last_name, title, about, company_name, url FROM user_details"
			+ " JOIN users ON user_details.user_id = users.user_id"
			+ " WHERE users.user_id = :userId", nativeQuery = true)
	public String getDetailsById(@Param("userId") String userId);
	
	@Query(value = "SELECT * FROM user_details"
	 		+ " WHERE first_name LIKE %:key%"
	 		+ " OR last_name LIKE %:key%"
	 		+ " OR title LIKE %:key%", nativeQuery = true)
	public List<UserDetails> searchByKey(@Param("key") String key);
}
