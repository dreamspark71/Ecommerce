package com.gabenstore.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gabenstore.dao.UserDAOImp;
import com.gabenstore.modal.User;
@Service
@Transactional
public class UserService 
{
	@Autowired
	UserDAOImp userDAOImp;
	
	public void addUser(User user)
	{
		userDAOImp.addUser(user);
	}
	public List<User> displayUser()
	{
		return userDAOImp.displayUser();
	}
	public void deleteUser(int userID)
	{
		userDAOImp.deleteUser(userID);
	}
	public User updateUser(int userID)
	{
		return userDAOImp.updateUser(userID);
	}
}
