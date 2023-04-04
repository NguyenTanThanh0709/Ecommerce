package com.ecommerce.Service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.Convert.ProductConvert;
import com.ecommerce.DTO.ProductDTO;
import com.ecommerce.Entity.CategoryEntity;
import com.ecommerce.Entity.ProductEntity;
import com.ecommerce.Repository.CategoryRepository;
import com.ecommerce.Repository.ProductRepository;
import com.ecommerce.Service.IProdcutService;

@Service
public class ProductService implements IProdcutService{
	
	@Autowired
	private CategoryRepository categoryRepository;
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private ProductConvert productConvert;

	@Override
	public ProductDTO save(ProductDTO prodcut) {
		// TODO Auto-generated method stub
		CategoryEntity categoryEntity = categoryRepository.findOneById(prodcut.getIdcategory());
		ProductEntity productEntity =  productConvert.toEntity(prodcut);
		productEntity.setCategory(categoryEntity);
		productEntity = productRepository.save(productEntity);
		
		return productConvert.toDTO(productEntity);
	}

	@Override
	public List<ProductDTO> getAllProdcut() {
		List<ProductEntity> listProductEntity =  productRepository.findAll();
		List<ProductDTO> listProdcutDTO = new ArrayList<ProductDTO>();
		
		for (ProductEntity proEntity : listProductEntity) {
			listProdcutDTO.add(productConvert.toDTO(proEntity));
		}
		
		return listProdcutDTO;
	}

	@Override
	public List<ProductDTO> getTop6NewProdcut() {
		List<ProductEntity> listProductEntity =  productRepository.findFirst6ByOrderByIdAsc();
		List<ProductDTO> listProdcutDTO = new ArrayList<ProductDTO>();
		
		for (ProductEntity proEntity : listProductEntity) {
			listProdcutDTO.add(productConvert.toDTO(proEntity));
		}
		
		return listProdcutDTO;
	}
	
	@Override
	public List<ProductDTO> getTop8NewProdcut() {
		List<ProductEntity> listProductEntity =  productRepository.findFirst8ByOrderByIdAsc();
		List<ProductDTO> listProdcutDTO = new ArrayList<ProductDTO>();
		
		for (ProductEntity proEntity : listProductEntity) {
			listProdcutDTO.add(productConvert.toDTO(proEntity));
		}
		
		return listProdcutDTO;
	}

	@Override
	public List<ProductDTO> search(String txt) {
		// TODO Auto-generated method stub
		List<ProductEntity> listProductEntity =  productRepository.findByNameproductContaining(txt);
List<ProductDTO> listProdcutDTO = new ArrayList<ProductDTO>();
		
		for (ProductEntity proEntity : listProductEntity) {
			listProdcutDTO.add(productConvert.toDTO(proEntity));
		}
		return listProdcutDTO;
	}

	@Override
	public List<ProductDTO> loadmore(long start, long end) {
		List<ProductEntity> listProductEntity =  productRepository.findByIdBetween(start, end);
		List<ProductDTO> listProdcutDTO = new ArrayList<ProductDTO>();
				
				for (ProductEntity proEntity : listProductEntity) {
					listProdcutDTO.add(productConvert.toDTO(proEntity));
				}
				return listProdcutDTO;
	}

	public ProductDTO getOne(long id) {
		// TODO Auto-generated method stub
		return productConvert.toDTO(productRepository.findOne(id));
	}

	public ProductDTO saveCart(long id) {
		ProductEntity pro = productRepository.findOne(id);
		
		productRepository.save(pro);
		return productConvert.toDTO(pro);
	}

	public ProductDTO removeCart(long id) {
		// TODO Auto-generated method stub
		ProductEntity pro = productRepository.findOne(id);
		
		productRepository.save(pro);
		return productConvert.toDTO(pro);
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		productRepository.delete(id);
	}

	public ProductDTO save_(ProductDTO model) {

		ProductEntity newEntity = new ProductEntity();
		if(model.getIdproduct() != null) {
			
			ProductEntity oldNewEntity = productRepository.findOne(model.getIdproduct());
			newEntity = productConvert.toEntity(model, oldNewEntity);
			
		}else {
			newEntity = productConvert.toEntity(model);
		}
		CategoryEntity categoryEntity = categoryRepository.findOneById(model.getIdcategory());
		newEntity.setCategory(categoryEntity);
		newEntity = productRepository.save(newEntity);
		return productConvert.toDTO(newEntity);
		
	}


	


}
