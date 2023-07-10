package com.abcportal.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcportal.model.Experiences;
import com.abcportal.repository.ExperiencesRepository;

@Service
@Transactional
public class ExperiencesService {
	@Autowired
	ExperiencesRepository repo;
	
	public List<Experiences> getExperiencesByUserDetailsId(String id) {
		return repo.getExperiencesByUserDetailsId(id);
	}
	
	public Experiences addExperiences(Experiences ex) {
		return repo.save(ex);
	}
	
	public Experiences updateExperiences(Long exId, String udID, Experiences ex) {
	    Experiences experiences = repo.findById(exId).orElse(null);
	    
	    if (experiences != null) {
	        // Update the experience with the new values
	        experiences.setUserDetailsId(udID);
	        experiences.setCompanyName(ex.getCompanyName());
	        experiences.setPosition(ex.getPosition());
	        experiences.setStartDate(ex.getStartDate());
	        experiences.setEndDate(ex.getEndDate());
	        
	        // Save the updated experience
	        return repo.save(experiences);
	    } else {
	        // Handle the case when the experience with the specified ID is not found
	        return null;
	    }
	}
	
	
	  
    public boolean deleteExperience(Long exId) {
        Experiences experience = repo.findById(exId).orElse(null);
        
        if (experience != null) {
            repo.delete(experience);
            return true;
        } else {
            // Handle the case when the experience with the specified ID is not found
            return false;
        }
    }
}
