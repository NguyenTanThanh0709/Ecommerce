package com.ecommerce.Service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.ecommerce.Convert.CategoryConvert;
import com.ecommerce.Convert.OrderConvert;
import com.ecommerce.DTO.OrderDTO;
import com.ecommerce.Repository.CategoryRepository;
import com.ecommerce.Repository.OrderRepository;
import com.ecommerce.Service.IOrderSerice;

public class OrderService implements IOrderSerice{
	
	@Autowired
	private OrderRepository orderRepository;
	
	@Autowired
	private OrderConvert orderConvert;
	
	

}
