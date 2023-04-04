package com.ecommerce.Entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "T_OrderLines")
@IdClass(OrderLineId.class)
public class OrderLinesEntity {
	
	
	@Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idorder")
    private OrderEntity order;

    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idproduct")
    private ProductEntity product;
    
    private int quantity;
	private int price;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
