package com.ecommerce.Convert;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ecommerce.DTO.CategoryDTO;
import com.ecommerce.Entity.CategoryEntity;
import com.ecommerce.Entity.ProductEntity;
import com.ecommerce.Repository.ProductRepository;

@Component
public class CategoryConvert {
	
	@Autowired
	private ProductRepository productRepository;
	
	public CategoryEntity toEntity(CategoryDTO dto) {
		CategoryEntity entity = new CategoryEntity();
		
		entity.setId(dto.getIdcategory());
		entity.setNamecategory(dto.getNamecategory());
		List<ProductEntity> list = productRepository.findAll();
		entity.setProducts(list);
		
		return entity;
	}
	
	public CategoryDTO toDTO(CategoryEntity entity) {
		CategoryDTO dto = new CategoryDTO();

		dto.setIdcategory(entity.getId());
		dto.setNamecategory(entity.getNamecategory());
		
		return dto;
	}

}
