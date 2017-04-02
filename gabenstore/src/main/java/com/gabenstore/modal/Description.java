package com.gabenstore.modal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Description 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int descriptionID;
	private String descriptionDRM;
	private String descriptionRegion;
	private String descriptionType;
	private String descriptionAbout;
	private String descriptionMinimum;
	private String descriptionRecommended;
	private String descriptionKey;
	private int productID;
	@OneToOne
	@JoinColumn(name="productID",nullable=false,updatable=false,insertable=false)
	private Product product;
	
	public int getDescriptionID() {
		return descriptionID;
	}
	public void setDescriptionID(int descriptionID) {
		this.descriptionID = descriptionID;
	}
	public String getDescriptionDRM() {
		return descriptionDRM;
	}
	public void setDescriptionDRM(String descriptionDRM) {
		this.descriptionDRM = descriptionDRM;
	}
	public String getDescriptionRegion() {
		return descriptionRegion;
	}
	public void setDescriptionRegion(String descriptionRegion) {
		this.descriptionRegion = descriptionRegion;
	}
	public String getDescriptionType() {
		return descriptionType;
	}
	public void setDescriptionType(String descriptionType) {
		this.descriptionType = descriptionType;
	}
	public String getDescriptionAbout() {
		return descriptionAbout;
	}
	public void setDescriptionAbout(String descriptionAbout) {
		this.descriptionAbout = descriptionAbout;
	}
	public String getDescriptionMinimum() {
		return descriptionMinimum;
	}
	public void setDescriptionMinimum(String descriptionMinimum) {
		this.descriptionMinimum = descriptionMinimum;
	}
	public String getDescriptionRecommended() {
		return descriptionRecommended;
	}
	public void setDescriptionRecommended(String descriptionRecommended) {
		this.descriptionRecommended = descriptionRecommended;
	}
	public String getDescriptionKey() {
		return descriptionKey;
	}
	public void setDescriptionKey(String descriptionKey) {
		this.descriptionKey = descriptionKey;
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	
}
