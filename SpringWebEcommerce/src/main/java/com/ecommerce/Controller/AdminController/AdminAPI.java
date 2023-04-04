package com.ecommerce.Controller.AdminController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Service.impl.ProductService;

@CrossOrigin
@RestController
public class AdminAPI {
	
	@Autowired
	private ProductService prodcutService;
	
	
	
	@PostMapping(value = "/new")
	public ProductDTO createNew(@RequestBody ProductDTO model,HttpServletResponse response) throws IOException {
		return prodcutService.save_(model);
	}
	
	@PutMapping(value = "/new/{id}")
	public ProductDTO updateNew(@RequestBody ProductDTO model, @PathVariable("id") long id,HttpServletResponse response) throws IOException {
		model.setIdproduct(id);
		return prodcutService.save_(model);
		
	}
	
	@DeleteMapping(value = "/new")
	public void deleteNew(@RequestBody long id,HttpServletResponse response) throws IOException {
		prodcutService.delete(id);
		response.sendRedirect("/admin");
	}

}
