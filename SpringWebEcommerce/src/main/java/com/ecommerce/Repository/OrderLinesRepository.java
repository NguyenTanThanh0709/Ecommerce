package com.ecommerce.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ecommerce.Entity.OrderLinesEntity;

public interface OrderLinesRepository extends JpaRepository<OrderLinesEntity, Long>{

}
