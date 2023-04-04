package com.ecommerce.Convert;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Entity.CategoryEntity;
import com.ecommerce.Entity.ProductEntity;
import com.ecommerce.Repository.CategoryRepository;

@Component
public class ProductConvert {
	
	@Autowired
	private CategoryRepository c;
	
	public ProductEntity toEntity(ProductDTO dto) {
		ProductEntity entity = new ProductEntity();
		
		entity.setColor(dto.getColor());
		entity.setDescription(dto.getDescription());
		entity.setNameproduct(dto.getNameproduct());
		entity.setPrice(dto.getPrice());
		entity.setQuantityproduct(dto.getQuantityproduct());
		entity.setId(dto.getIdproduct());
		entity.setImage(dto.getImage());
		

		
		return entity;
	}
	
	public ProductDTO toDTO(ProductEntity entity) {
		ProductDTO dto = new ProductDTO();
		
		
		dto.setColor(entity.getColor());
		dto.setDescription(entity.getDescription());
		dto.setNameproduct(entity.getNameproduct());
		dto.setPrice(entity.getPrice());
		dto.setQuantityproduct(entity.getQuantityproduct());
		dto.setIdproduct(entity.getId());
		dto.setImage(entity.getImage());
		dto.setIdcategory(entity.getCategory().getId());
		
		return dto;
	}

	public ProductEntity toEntity(ProductDTO model, ProductEntity oldNewEntity) {
		oldNewEntity.setColor(model.getColor());
		oldNewEntity.setDescription(model.getDescription());
		oldNewEntity.setId(model.getIdproduct());
		oldNewEntity.setNameproduct(model.getNameproduct());
		oldNewEntity.setImage(model.getImage());
		oldNewEntity.setQuantityproduct(model.getQuantityproduct());
		
		oldNewEntity.setPrice(model.getPrice());
		CategoryEntity x = c.findOneById(model.getIdcategory());
		oldNewEntity.setCategory(x);
		
		return oldNewEntity;
	}

}
