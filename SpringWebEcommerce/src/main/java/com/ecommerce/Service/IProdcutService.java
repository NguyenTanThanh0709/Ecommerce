package com.ecommerce.Service;

import java.util.List;

import com.ecommerce.DTO.ProductDTO;

public interface IProdcutService {
	ProductDTO save(ProductDTO prodcut);
	List<ProductDTO> getAllProdcut();
	List<ProductDTO> getTop6NewProdcut();
	List<ProductDTO> getTop8NewProdcut();
	List<ProductDTO> search(String txt);
	List<ProductDTO> loadmore(long start, long end);
	
	
	ProductDTO save_(ProductDTO prductDTO);
	void delete(long id);

}
