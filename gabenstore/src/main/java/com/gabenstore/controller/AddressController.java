package com.gabenstore.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gabenstore.modal.Address;
import com.gabenstore.modal.User;
import com.gabenstore.service.AddressService;
import com.gabenstore.service.UserService;
import com.google.gson.Gson;

@Controller
public class AddressController 
{	
	@Autowired
	AddressService addressService;
	@Autowired
	UserService userService;
	
	@RequestMapping("/BillAddress")
	public String getBillAddress(Model model,Principal p)
	{
		model.addAttribute("address",new Address());
		return "Address";
	}
	
	@RequestMapping("/addAddress")
	public String addAddress(@ModelAttribute("address")Address address,Principal p,Model model)
	{
		addressService.addAddress(address);	
		return "redirect:/AccountAddress";
	}
	
}
