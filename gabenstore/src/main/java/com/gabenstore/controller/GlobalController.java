package com.gabenstore.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.gabenstore.modal.CartItems;
import com.gabenstore.modal.Category;
import com.gabenstore.modal.Subscribe;
import com.gabenstore.service.CartService;
import com.gabenstore.service.CategoryService;
import com.gabenstore.service.SubscribeService;
import com.gabenstore.service.UserService;

@ControllerAdvice
public class GlobalController 
{
	@Autowired
	CategoryService categoryService;
	@Autowired
	CartService cartService;
	@Autowired
	UserService userService;
	@Autowired
	SubscribeService subscribeService;
	
	@ModelAttribute("globalCategory")
	public List<Category> GlobalCategory()
	{
		return categoryService.displayCategory();
	}
	
	@ModelAttribute("cartCount")
	public int CartCount(Principal p,Model model)
	{
		try{
		int uid=userService.getUserByName(p.getName()).getUserID();
		int a=cartService.displayAddedCart(uid).size();
		return a;
		}
		catch(Exception e)
		{
			return 0;
		}
		
	}
	
	@ModelAttribute("panelCart")
	public List<CartItems> PanelCart(Principal p)
	{
		try{
		int uid=userService.getUserByName(p.getName()).getUserID();
		return cartService.displayAddedCart(uid);
		}
		catch (Exception e) {
		e.printStackTrace();
		return null;
		}
		
	}

	@ModelAttribute("addSubscribe")
	public void addSubscribe(@ModelAttribute("subscribe")Subscribe subscribe)
	{
		subscribeService.addSub(subscribe);
	}
}
