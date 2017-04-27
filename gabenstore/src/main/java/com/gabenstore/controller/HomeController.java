package com.gabenstore.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.log.UserDataHelper.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.Address;
import com.gabenstore.modal.CartItems;
import com.gabenstore.modal.User;
import com.gabenstore.service.AddressService;
import com.gabenstore.service.CartService;
import com.gabenstore.service.DescriptionService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.RatingViewService;
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
	@Autowired
	RatingViewService ratingViewService;
	@Autowired
	CartService cartService;
	
	
	@RequestMapping("/")
	public String getHome(Model model)
	{
		model.addAttribute("featured",productService.displayProductFeatured());
		model.addAttribute("latest",productService.displayProductLatest());
		model.addAttribute("topFeatured",productService.displayTopFeatured());
		model.addAttribute("ratedTop",ratingViewService.displayRatingTop());
		model.addAttribute("topSale",productService.displayTopSale());
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
		
		model.addAttribute("count",productService.displayProduct().size());	
		model.addAttribute("displayProduct",productService.displayProductByJson());
		model.addAttribute("topFeatured",productService.displayTopFeatured());
		model.addAttribute("ratedTop",ratingViewService.displayRatingTop());
		model.addAttribute("topSale",productService.displayTopSale());
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
		try{
		int uid=userService.getUserByName(p.getName()).getUserID();
		Address add=addressService.displayAddress(uid);
		Gson g=new Gson();
		String jsonList=g.toJson(add);
		model.addAttribute("address",jsonList);
		}
		catch (Exception e) {
			model.addAttribute("msg",0);
		}
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
	
	@RequestMapping("/AccountDetails")
	public String getAccountDetails(Model model,Principal p)
	{
		
		model.addAttribute("userid",userService.getUserByName(p.getName()).getUserID());
		model.addAttribute("user",new User());	
		return "AccountDetails";
	}
	
	@RequestMapping("/addUserAccount")
	public String addUserAccount(@ModelAttribute("user")User user,Principal p,Model model,HttpServletRequest request,HttpSession session)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		String currentpass=userService.updateUser(uid).getUserPassword();
		String current=request.getParameter("current");
		if(current.equals(currentpass))
		{
			userService.addUser(user);
			return "redirect:/AccountDetails";
		}
		else
		{
			model.addAttribute("error", "Incorrect Current Password");
			return "AccountDetails";
		}		
	}
	
	@RequestMapping("/contact")
	public String Contact()
	{
		return "Contact";
	}
	
	@RequestMapping("/Checkout")
	public String getCheckout(Model model,Principal p)
	{
		model.addAttribute("address",new Address());
		int uid=userService.getUserByName(p.getName()).getUserID();
		model.addAttribute("displayUser",uid);
		model.addAttribute("displayCart",cartService.displayCart(uid));
		try{
			Address add=addressService.displayAddress(uid);
			Gson g=new Gson();
			String jsonList=g.toJson(add);
			model.addAttribute("Address",jsonList);
			}
			catch (Exception e) {
				model.addAttribute("msg",0);
			}
		List<CartItems> cart=cartService.displayCart1(uid);
		int finalprice=0;
		for(int i=0;i<cart.size();i++)
		{
			CartItems item=cart.get(i);
			finalprice=finalprice+item.getCartTotalAmount();
		}
		model.addAttribute("grandtotal",finalprice);
		return "Checkout";
	}
	
	
	
}

