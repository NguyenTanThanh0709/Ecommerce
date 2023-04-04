package com.ecommerce.Controller;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecommerce.DTO.CategoryDTO;
import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Service.impl.CategoryService;
import com.ecommerce.Service.impl.ProductService;
import com.ecommerce.Service.impl.UserService;


@Controller
public class MainController {

	@Autowired
	private ProductService prodcutService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	


	@GetMapping({ "/home", "" })
	public String showHomePage(Model model, @RequestParam(value = "success",required = false) String success,  HttpSession session) throws IOException{
		
		if(success != null) {
			Authentication auth =  
				    SecurityContextHolder.getContext().getAuthentication();
			
			String user = "";
			if(auth == null || !auth.isAuthenticated()) {
		        
		    } else {
		    	user = auth.getName();
		    }
			
			if(!user.isEmpty() || !user.equalsIgnoreCase("")) {
				session.setAttribute("user",userService.getOne(user));
			}
		}
		
		List<ProductDTO> listAllprodcut_ = prodcutService.getAllProdcut();
		List<ProductDTO> listAllprodcut = prodcutService.getTop8NewProdcut();
		List<ProductDTO> listTop6Newprodcut = prodcutService.getTop6NewProdcut();
		List<CategoryDTO> cate = categoryService.getAllCategory();
		Set<String> setA = new HashSet<String>();
		for (ProductDTO string : listAllprodcut_) {
			setA.add(string.getColor());
		}
		model.addAttribute("listproduct", listAllprodcut);
		model.addAttribute("listTOp6product", listTop6Newprodcut);
		model.addAttribute("cate", cate);
		model.addAttribute("colors", setA);
		
		return "User/homeUser";
	}

	

	@GetMapping("/login")
	public String login(Model model, @RequestParam(value = "error",required = false) String error,
			@RequestParam(value = "logout",	required = false) String logout) {
		
		
		if (error != null) {
			model.addAttribute("error", "Invalid Credentials provided.");
		}

		if (logout != null) {
			model.addAttribute("message", "Logged out from JournalDEV successfully.");
		}
		return "login";
	}

	@GetMapping("/register")
	public String register(Model model) {
		return "Register";
	}
	
	
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied() {
        return "403Page";
    }
	
	
}