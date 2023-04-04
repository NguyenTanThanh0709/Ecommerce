package com.ecommerce.Entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "T_User")

public class UserEntity {
	
	@Id
	private String phonenumber;
	private String nameuser;
	private String pass;
	
	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getNameuser() {
		return nameuser;
	}

	public void setNameuser(String nameuser) {
		this.nameuser = nameuser;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRoleuser() {
		return roleuser;
	}

	public void setRoleuser(String roleuser) {
		this.roleuser = roleuser;
	}

	public List<OrderEntity> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderEntity> orders) {
		this.orders = orders;
	}

	private String roleuser;
	private String address;
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}



	@OneToMany(mappedBy = "user")
	private List<OrderEntity> orders = new ArrayList<>();
	


}
