package com.ecommerce.Controller.AdminController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Service.impl.ProductService;

@Controller
public class AdminController {
	@Autowired
	private ProductService proService;
	
	@GetMapping("admin")
    public String showHomePage(Model model) {
		List<ProductDTO> listAllprodcut_ = proService.getAllProdcut();
		model.addAttribute("lists", listAllprodcut_);
        return "Admin/HomeAdmin";
    }
}
