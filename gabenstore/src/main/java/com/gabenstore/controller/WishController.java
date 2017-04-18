package com.gabenstore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.WishList;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.UserService;
import com.gabenstore.service.WishService;



@Controller
public class WishController 
{
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@Autowired
	WishService wishService;
	
	@RequestMapping("/addWishHome-{productID}")
	public String addWishHome(Principal p,@ModelAttribute("wishList")WishList wishList,@PathVariable("productID")int productID)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		wishList.setUserID(uid);
		wishList.setProductName(productService.updateProduct(productID).getProductName());
		wishList.setProductPrice(productService.updateProduct(productID).getProductSalePrice());
		wishList.setProductID(productID);
		wishService.addWish(wishList);
		return "redirect:/";
	}
	
	@RequestMapping("/deleteWish-{wishID}")
	public String deleteWish(@PathVariable("wishID") int wishID)
	{
		wishService.deleteWish(wishID);
		return "redirect:/Account";
	}
	
	@RequestMapping("/addWishShop-{productID}")
	public String addWishShop(Principal p,@ModelAttribute("wishList")WishList wishList,@PathVariable("productID")int productID)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		wishList.setUserID(uid);
		wishList.setProductName(productService.updateProduct(productID).getProductName());
		wishList.setProductPrice(productService.updateProduct(productID).getProductSalePrice());
		wishList.setProductID(productID);
		wishService.addWish(wishList);
		return "redirect:/Shop";
	}
}
