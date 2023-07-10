package com.abcportal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.abcportal.model.City;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {

}
