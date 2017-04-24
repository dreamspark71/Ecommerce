package com.gabenstore.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Subscribe 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int subID;
	private String subEmail;
	
	public int getSubID() {
		return subID;
	}
	public void setSubID(int subID) {
		this.subID = subID;
	}
	public String getSubEmail() {
		return subEmail;
	}
	public void setSubEmail(String subEmail) {
		this.subEmail = subEmail;
	}
	
}
