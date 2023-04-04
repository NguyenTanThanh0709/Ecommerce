package com.ecommerce.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.Entity.ProductEntity;

@Repository
public interface ProductRepository extends JpaRepository<ProductEntity, Long>{
	List<ProductEntity> findFirst6ByOrderByIdAsc();
	List<ProductEntity> findFirst8ByOrderByIdAsc();
	List<ProductEntity> findByNameproductContaining(String namePattern);
	
	List<ProductEntity> findByIdBetween(Long start, Long end);


}
