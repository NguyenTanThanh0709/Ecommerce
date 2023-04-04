package com.ecommerce.Service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ecommerce.Convert.UserConver;
import com.ecommerce.DTO.UserDTO;
import com.ecommerce.Entity.UserEntity;
import com.ecommerce.Repository.UserRepository;
import com.ecommerce.Service.IUserService;


@Service
public class UserService implements IUserService{
	
	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private UserConver userConver;

	@Override
	public UserDTO save(UserDTO user) {
		
		UserEntity userEntity = userConver.toEntity(user);
		userEntity = userRepository.save(userEntity);
		return userConver.toDTO(userEntity);
	
	}
		
		public UserDTO getOne(String phonenumber) {
			return userConver.toDTO(userRepository.findOne(phonenumber));
		}
		
		public UserDTO checkLogin(String phonenumber, String pass) {
			List<UserEntity> list = userRepository.findByPhonenumberAndPass(phonenumber, pass);
			if(list.size() == 1) {
				return userConver.toDTO(list.get(0));
			}
			return null;
		}

}
