package com.ecommerce.Entity;

import java.io.Serializable;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "T_Cart")

public class CartEntity implements Serializable{
	
	private CartId cartid;
	@EmbeddedId
	public CartId getCartid() {
		return cartid;
	}

	public void setCartid(CartId cartid) {
		this.cartid = cartid;
	}
	



}
