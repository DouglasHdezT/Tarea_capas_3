package com.uca.capas.domain;

public class Student {
	
	private String name = "N/A";
	private String lastName = "N/A";
	private String cDate = "N/A";
	private String career = "N/A";
	private String experience = "N/A";
	
	public Student() {
		
	}
	
	public Student(String name, String lastName, String cDate, String career, String experience) {
		this.name = name;
		this.lastName = lastName;
		this.cDate = cDate;
		this.career = career;
		this.experience = experience;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getcDate() {
		return cDate;
	}

	public void setcDate(String cDate) {
		this.cDate = cDate;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}
	
	
	
}
