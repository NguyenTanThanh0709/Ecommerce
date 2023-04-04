package com.ecommerce.Entity;

import java.io.Serializable;




public class OrderLineId implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private OrderEntity order;
    private ProductEntity product;
	public OrderEntity getOrder() {
		return order;
	}
	public void setOrder(OrderEntity order) {
		this.order = order;
	}
	public ProductEntity getProduct() {
		return product;
	}
	public void setProduct(ProductEntity product) {
		this.product = product;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

    // constructors, equals, hashCode omitted for brevity
}

