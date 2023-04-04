package com.ecommerce.Convert;

import org.springframework.stereotype.Component;

import com.ecommerce.DTO.UserDTO;
import com.ecommerce.Entity.UserEntity;

@Component
public class UserConver {

	
	public UserEntity toEntity (UserDTO dto) {
		UserEntity entity = new UserEntity();
		entity.setNameuser(dto.getNameuser());
		entity.setPhonenumber(dto.getPhonenumber());
		if(dto.getRoleuser() == null) {
			entity.setRoleuser("0");
		}else {
			entity.setRoleuser(dto.getRoleuser());
		}

		entity.setPass(dto.getPass());
		return entity;
		
	}
	
	public UserDTO toDTO (UserEntity entity) {
		UserDTO dto = new UserDTO();
		dto.setNameuser(entity.getNameuser());
		dto.setPhonenumber(entity.getPhonenumber());
		if(entity.getRoleuser() == null) {
			dto.setRoleuser("0");
		}else {
			dto.setRoleuser(entity.getRoleuser());
		}
		
		dto.setPass(entity.getPass());
		
		return dto;
		
	}
	
}
