package com.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ecommerce.Entity.OrderEntity;

public interface OrderRepository extends JpaRepository<OrderEntity, Long>{

}
