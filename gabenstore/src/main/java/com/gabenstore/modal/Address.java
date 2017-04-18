package com.gabenstore.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Address 
{
	
	private String addressFirst;
	private String addressLast;
	private String addressCompany;
	private String addressCountry;
	private String addressAddress;
	private String addressCity;
	private String addressState;
	private String addressPostal;
	private String addressPhone;
	private String addressEmail;
	@Id
	private int userID;
	
	@OneToOne
	@JoinColumn(name="userID",nullable=false,updatable=false,insertable=false)
	private User user;

	public String getAddressFirst() {
		return addressFirst;
	}

	public void setAddressFirst(String addressFirst) {
		this.addressFirst = addressFirst;
	}

	public String getAddressLast() {
		return addressLast;
	}

	public void setAddressLast(String addressLast) {
		this.addressLast = addressLast;
	}

	public String getAddressCompany() {
		return addressCompany;
	}

	public void setAddressCompany(String addressCompany) {
		this.addressCompany = addressCompany;
	}

	public String getAddressCountry() {
		return addressCountry;
	}

	public void setAddressCountry(String addressCountry) {
		this.addressCountry = addressCountry;
	}

	public String getAddressAddress() {
		return addressAddress;
	}

	public void setAddressAddress(String addressAddress) {
		this.addressAddress = addressAddress;
	}

	public String getAddressCity() {
		return addressCity;
	}

	public void setAddressCity(String addressCity) {
		this.addressCity = addressCity;
	}

	public String getAddressState() {
		return addressState;
	}

	public void setAddressState(String addressState) {
		this.addressState = addressState;
	}

	public String getAddressPostal() {
		return addressPostal;
	}

	public void setAddressPostal(String addressPostal) {
		this.addressPostal = addressPostal;
	}

	public String getAddressPhone() {
		return addressPhone;
	}

	public void setAddressPhone(String addressPhone) {
		this.addressPhone = addressPhone;
	}

	public String getAddressEmail() {
		return addressEmail;
	}

	public void setAddressEmail(String addressEmail) {
		this.addressEmail = addressEmail;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
