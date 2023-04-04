package com.ecommerce.DTO;

import lombok.Data;

@Data
public class UserDTO {
	private String phonenumber;
	private String nameuser;
	private String pass;
	private String roleuser = "0";
	private String address;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
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

	
	
	
}
