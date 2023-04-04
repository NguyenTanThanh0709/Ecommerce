package com.ecommerce.Service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.Convert.CategoryConvert;
import com.ecommerce.DTO.CategoryDTO;
import com.ecommerce.Entity.CategoryEntity;
import com.ecommerce.Repository.CategoryRepository;
import com.ecommerce.Service.ICategoryService;

@Service
public class CategoryService implements ICategoryService {
	
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private CategoryConvert convert;

	@Override
	public List<CategoryDTO> getAllCategory() {
		// TODO Auto-generated method stub
		List<CategoryDTO> list = new ArrayList<>();
		List<CategoryEntity> l = categoryRepository.findAll();
		for (CategoryEntity categoryEntity : l) {
			list.add(convert.toDTO(categoryEntity));
		}
		return list;
	}

}
