package com.ecommerce.Controller.UserController;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.DTO.UserDTO;
import com.ecommerce.Entity.CartEntity;
import com.ecommerce.Entity.CartId;
import com.ecommerce.Service.impl.CartService;
import com.ecommerce.Service.impl.ProductService;
import com.ecommerce.Service.impl.UserService;

@RestController
public class UserAPI {
	
	@Autowired
	private ProductService prodcutService;
	
	@Autowired
	private UserService userSerivce;
	
	@Autowired
	private CartService cartService;
	


	@GetMapping("/searchAjax")
	public List<ProductDTO> showHomePage(@RequestParam("query") String query) {
		List<ProductDTO> data = new ArrayList<ProductDTO>();
		data  = prodcutService.search(query);
		
		return data;
	}
	
	@GetMapping("/loadMore")
	public List<ProductDTO> showHomePage(@RequestParam("start") long start, @RequestParam("end") long end) {
		List<ProductDTO> data = new ArrayList<ProductDTO>();
		data  = prodcutService.loadmore(start,end);
		
		return data;
	}
	
	@GetMapping("/getAll")
	public List<ProductDTO> showHomePage() {
		List<ProductDTO> data = new ArrayList<ProductDTO>();
		data  = prodcutService.getAllProdcut();
		
		return data;
	}
	
	@GetMapping("/getOne")
	public ProductDTO getOne(@RequestParam("id") long id) {

		ProductDTO data  = prodcutService.getOne(id);
		
		return data;
	}
	
	@PostMapping("/saveCart")
	public CartEntity saveCart(@RequestParam("id") long id, @RequestParam("user") String user) {
		CartId cart = new CartId();
		cart.setIdproduct(id);
		cart.setPhonenumber(user);
		CartEntity cartEntity = new CartEntity();
		cartEntity.setCartid(cart);
		cartService.save(cartEntity);
		return cartEntity;
	}
	
	@GetMapping("/deleteCart")
	public CartEntity deleteCart(@RequestParam("id") long id, @RequestParam("user") String user) {
		CartId cart = new CartId();
		cart.setIdproduct(id);
		cart.setPhonenumber(user);
		CartEntity cartEntity = new CartEntity();
		cartEntity.setCartid(cart);
		cartService.delete(cartEntity);
		return cartEntity; 
	}
	
//	@GetMapping("/getAllPro")
//	public List<ProductDTO> getall_(@RequestParam("user") String user){
//		List<ProductDTO> list = new ArrayList<ProductDTO>();
//		list = cartService.getall(user);
//		return list;
//	}
	
	
	@PostMapping("/registerhandle")
	public UserDTO register(@RequestBody UserDTO user) {
		user.setRoleuser("0");
		userSerivce.save(user);
		return user;
	}
	
	


}
