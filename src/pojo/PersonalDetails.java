package pojo;

import java.util.Date;

public class PersonalDetails {

	private int pdId;
	private String fullName;
	private String dateOfBirth;
	private String gender;
	private String address;
	private String currentCity;
	
	public PersonalDetails(){
		
	}

	public PersonalDetails(int pdId, String fullName, String dateOfBirth,
			String gender, String address, String currentCity) {
		super();
		this.pdId = pdId;
		this.fullName = fullName;
		this.dateOfBirth = dateOfBirth;
		this.gender = gender;
		this.address = address;
		this.currentCity = currentCity;
	}

	public int getPdId() {
		return pdId;
	}

	public void setPdId(int pdId) {
		this.pdId = pdId;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCurrentCity() {
		return currentCity;
	}

	public void setCurrentCity(String currentCity) {
		this.currentCity = currentCity;
	}
	
}
