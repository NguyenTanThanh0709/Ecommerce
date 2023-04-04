package com.ecommerce.Controller.UserController;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.DTO.UserDTO;
import com.ecommerce.Service.impl.CartService;
import com.ecommerce.Service.impl.ProductService;
import com.ecommerce.Service.impl.UserService;

@Controller
public class UserController {

	@Autowired
	private ProductService proService;
	
	@Autowired
	private UserService u;
	
	@Autowired
	private CartService cartservice;
	
	@GetMapping("/bill")
    public String showBill(Model model, HttpSession session, @RequestParam("user") String user) {
List<ProductDTO> list  = new ArrayList<>();
		
		list = cartservice.getall(user);
		int tongtien = 0;
		for (ProductDTO productDTO : list) {
			tongtien += productDTO.getPrice();
		}
		session.setAttribute("user",u.getOne(user));
		model.addAttribute("lists", list);
		model.addAttribute("tt", tongtien);
		return "User/Bill";
    }
	
	@GetMapping("/cart")
    public String showCaet(Model model , HttpSession session) {
		
		Authentication auth =  
			    SecurityContextHolder.getContext().getAuthentication();
		
		String user1 = "";
		if(auth == null || !auth.isAuthenticated()) {
	        
	    } else {
	    	user1 = auth.getName();
	    }
		
		if(!user1.isEmpty() || !user1.equalsIgnoreCase("")) {
			session.setAttribute("user",u.getOne(user1));
		}
		List<ProductDTO> list  = new ArrayList<>();
		//UserDTO user = u.getOne(user);
		UserDTO use1r = u.getOne(user1);
		list = cartservice.getall(user1);
		model.addAttribute("lists", list);
		model.addAttribute("user", use1r);
		return "User/Cart";
    }
	
	@PostMapping("/loginhandle")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session) {
		if(username.isEmpty() || password.isEmpty()) {
			return "/login";
		}
		UserDTO user = u.checkLogin(username, password);
		//UserDTO user_ = u.getOne(username);
		session.setAttribute("user",u.getOne(username));
		if(user == null) {
			return "/login";
		}
		if(user.getRoleuser().endsWith("1")) {
			return "redirect:/admin";
		}else if(user.getRoleuser().endsWith("0")) {
			return "redirect:/home";
		}else {
			return "/login";
		}
		
	}
	
	

}
