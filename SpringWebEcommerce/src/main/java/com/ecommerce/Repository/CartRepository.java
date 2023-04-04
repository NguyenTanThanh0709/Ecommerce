package com.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.Entity.CartEntity;
import com.ecommerce.Entity.CartId;

@Repository
public interface CartRepository extends JpaRepository<CartEntity, CartId>{

}
