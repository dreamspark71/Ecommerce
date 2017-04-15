package com.gabenstore.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.CartItems;
import com.gabenstore.modal.Product;
import com.gabenstore.modal.User;
import com.gabenstore.service.CartService;
import com.gabenstore.service.ProductService;
import com.gabenstore.service.UserService;
import com.google.gson.Gson;

@Controller
public class CartController 
{
	@Autowired
	CartService cartService;
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	@Autowired
	SessionFactory sessionFactory;
	
	@RequestMapping("/addToCartHome-{productID}")
	public String addToCartHome(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		cartItems.setUserID(uid);
		cartItems.setCartID(uid);
		cartItems.setProductID(productID);
		cartItems.setProductName(productService.updateProduct(productID).getProductName());
		cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
		cartItems.setCartItemQuantity(1);
		cartService.addCart(cartItems);
		return "redirect:/";
	}
	
	@RequestMapping("/viewCart")
	public String getCart(Model model,Principal p)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		model.addAttribute("displayCart",cartService.displayCart(uid));
		return "Cart";
	}
	
	@RequestMapping("/addToCartShop-{productID}")
	public String addToCartShop(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		cartItems.setUserID(uid);
		cartItems.setCartID(uid);
		cartItems.setProductID(productID);
		cartItems.setProductName(productService.updateProduct(productID).getProductName());
		cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
		cartItems.setCartItemQuantity(1);
		cartService.addCart(cartItems);
		return "redirect:/Shop";
	}
	
	@RequestMapping("/delete-{cartItemsID}")
	public String deleteCart(@PathVariable("cartItemsID")int cartItemsID)
	{
		cartService.deletecart(cartItemsID);
		return "redirect:/viewCart";
	}
	
	@RequestMapping("/addToCartViewProduct-{productID}")
	public String addToCartViewProduct(Principal p,@ModelAttribute("cartItems")CartItems cartItems,@PathVariable("productID")int productID)
	{
		int uid=userService.getUserByName(p.getName()).getUserID();
		cartItems.setUserID(uid);
		cartItems.setCartID(uid);
		cartItems.setProductID(productID);
		cartItems.setProductName(productService.updateProduct(productID).getProductName());
		cartItems.setCartAmount(productService.updateProduct(productID).getProductSalePrice());
		cartItems.setCartItemQuantity(1);
		cartService.addCart(cartItems);
		return "redirect:/viewProduct-"+productID;
	}
	
}
