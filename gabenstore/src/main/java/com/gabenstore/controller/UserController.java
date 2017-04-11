package com.gabenstore.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
	
	@RequestMapping("/Register")
	public String getForm(Model model)
	{
		model.addAttribute("user",new User());
		return "Form";
	}
	
	@RequestMapping("/addUserForm")
	public String addUserForm(@ModelAttribute("user")User user)
	{
		userService.addUser(user);
		
		return "redirect:/Register";
	}
	
	 @RequestMapping("/logout")
	    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null){    
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	        }
	        return "redirect:/login?logout";
	    }
	
	 @RequestMapping("/login")
	 public String printUser(Model model) 
	 {

	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); //get logged in username
	      
	      model.addAttribute("username", name);
	      return "Home";
	  }

	
}
