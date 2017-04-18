package com.gabenstore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.Address;
import com.gabenstore.service.AddressService;
import com.gabenstore.service.DescriptionService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.ReviewService;
import com.gabenstore.service.UserService;
import com.gabenstore.service.WishService;
import com.google.gson.Gson;

@Controller
public class HomeController 
{
	@Autowired
	ProductService productService;
	@Autowired
	DescriptionService descriptionService;
	@Autowired
	UserService userService;
	@Autowired
	WishService wishService;
	@Autowired
	AddressService addressService;
	@Autowired
	ReviewService reviewService;
	
	@RequestMapping("/")
	public String getHome(Model model)
	{
		model.addAttribute("featured",productService.displayProductFeatured());
		model.addAttribute("latest",productService.displayProductLatest());
		model.addAttribute("topFeatured",productService.displayTopFeatured());
		
		return "Home";
	}
	
	@RequestMapping("/Return")
	public String getReturn()
	{
		return "Return";
	}
	
	@RequestMapping("/FAQ")
	public String getFAQ()
	{
		return "FAQ";
	}
	
	@RequestMapping("/Policy")
	public String getPolicy()
	{
		return "Policy";
	}
	
	@RequestMapping("/403")
	public String get403()
	{
		return "403";
	}
	
	@RequestMapping("/Shop")
	public String getShop(Model model)
	{
		model.addAttribute("displayProduct",productService.displayProductByJson());
		model.addAttribute("topFeatured",productService.displayTopFeatured());
		return "Shop";
	}
	
	@RequestMapping("/Account")
	public String getAccount()
	{
		return "Account";
	}
	
	@RequestMapping("/AccountAddress")
	public String getAddress(Model model,Principal p)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		Address add=addressService.displayAddress(uid);
		Gson g=new Gson();
		String jsonList=g.toJson(add);
		model.addAttribute("address",jsonList);
		return "AccountAddress";
	}
	
	@RequestMapping("/Orders")
	public String getOrder()
	{
		return "Orders";
	}
	
	
	@RequestMapping("/AccountWishlist")
	public String getAccountWish(Model model,Principal p)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		model.addAttribute("wishdisplay",wishService.displayWish(uid));
		return "Wishlist";
	}
	
	
	
}
