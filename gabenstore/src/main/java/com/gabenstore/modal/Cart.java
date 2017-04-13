package com.gabenstore.modal;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import com.gabenstore.modal.User;
@Entity
public class Cart {

	@Id
	private int cartID;
	private int userID;
	
	@OneToOne
	@JoinColumn(name="userID",nullable=false,updatable=false,insertable=false)
	public User user;

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
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
