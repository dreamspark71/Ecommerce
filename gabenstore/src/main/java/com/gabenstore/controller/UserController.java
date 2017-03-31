package com.gabenstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.Category;
import com.gabenstore.modal.User;
import com.gabenstore.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	UserService userService;
	
	@RequestMapping("/UserDB")
	public String getUserDBPage(Model model)
	{
		model.addAttribute("user",new User());
		model.addAttribute("displayUser",userService.displayUser());
		return "UserDB";
	}
	
	@RequestMapping("/addUser")
	public String addUser(@ModelAttribute("user")User user)
	{
		userService.addUser(user);
		return "redirect:/UserDB";
	}
	
	@RequestMapping("/deleteUser-{userID}")
	public String deleteUser(@PathVariable("userID") int userID)
	{
		userService.deleteUser(userID);
		return "redirect:/UserDB";
	}
	
	@RequestMapping("/updateUser-{userID}")
	public String updateCategory(Model model,@PathVariable("userID")int userID)
	{
		model.addAttribute("user",userService.updateUser(userID));
		model.addAttribute("displayUser", userService.displayUser());
		return "UserDB";
	}
}
