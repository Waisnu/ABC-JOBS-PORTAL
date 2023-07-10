package com.abcportal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcportal.model.Experiences;

@Repository
public interface ExperiencesRepository extends JpaRepository<Experiences, Long> {
	@Query(value = "SELECT * FROM experiences WHERE user_details_id = :id", nativeQuery = true)
	public List<Experiences> getExperiencesByUserDetailsId(@Param("id") String udID);
	
}
