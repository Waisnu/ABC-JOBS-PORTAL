package com.abcportal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.abcportal.model.Educations;

@Repository
public interface EducationsRepository extends JpaRepository<Educations, Long> {
	@Query(value = "SELECT * FROM educations WHERE user_details_id = :udID", nativeQuery = true)
	public List<Educations> getEducationsByUserDetailsId(@Param("udID") String udID);
}
