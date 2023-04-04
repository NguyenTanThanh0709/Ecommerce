package com.ecommerce.Service;

import java.util.List;

import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Entity.CartEntity;
import com.ecommerce.Entity.CartId;

public interface ICartService {
	
	public void save(CartEntity entity);
	public void delete(CartEntity entity);
	public List<ProductDTO> getall(String user);

}
