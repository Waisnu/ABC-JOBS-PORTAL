package com.abcportal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "city")
public class City {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "city_id")
	private Long cityId;
	
	@Column(name = "city_name")
	private String cityName;
	
	/*@OneToOne
	@JoinColumn(name = "country_id", referencedColumnName = "country_id")
	private Countries country;*/

	public City() {}
	public City(Long cityId, String cityName) {
		this.cityId = cityId;
		this.cityName = cityName;
		//this.country = country;
	}

	public Long getCityId() {
		return cityId;
	}

	public void setCityId(Long cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	/*public Countries getCountry() {
		return country;
	}

	public void setCountry(Countries country) {
		this.country = country;
	}*/

}
