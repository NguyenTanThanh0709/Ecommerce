package com.ecommerce.Service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.Convert.ProductConvert;
import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Entity.CartEntity;
import com.ecommerce.Entity.CartId;
import com.ecommerce.Entity.ProductEntity;
import com.ecommerce.Repository.CartRepository;
import com.ecommerce.Repository.ProductRepository;
import com.ecommerce.Service.ICartService;

@Service
public class CartService implements ICartService{
	
	@Autowired
	private CartRepository cartrepo;
	
	@Autowired
	private ProductRepository prorepo;
	
	@Autowired
	private ProductConvert proco;

	@Override
	public void save(CartEntity entity) {
		// TODO Auto-generated method stub
		cartrepo.save(entity);
	}



	@Override
	public List<ProductDTO> getall(String user) {
		List<CartEntity> listsCart = cartrepo.findAll();
		List<Long> idproduct = new ArrayList<>();
		for (CartEntity long1 : listsCart) {
			if(long1.getCartid().getPhonenumber().equalsIgnoreCase(user)) {
				idproduct.add(long1.getCartid().getIdproduct());
			}
		}
		List<ProductDTO> listPro = new ArrayList<ProductDTO>();
		for (Long idpro : idproduct) {
			listPro.add(proco.toDTO(prorepo.getOne(idpro)));
		}
		return listPro;
	}



	@Override
	public void delete(CartEntity entity) {
		cartrepo.delete(entity);
		
	}

}
