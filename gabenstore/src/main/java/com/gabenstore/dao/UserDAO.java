package com.gabenstore.dao;

import java.util.List;

import com.gabenstore.modal.User;

public interface UserDAO 
{
	public void addUser(User user);
	public List<User> displayUser();
	public void deleteUser(int userID);
	public User updateUser(int userID);
}
