package com.ecommerce.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ecommerce.Entity.UserEntity;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, String>{
	List<UserEntity> findByPhonenumberAndPass(String phonenumber, String pass);
}
