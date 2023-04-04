package com.ecommerce.Entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;



@Entity
@Table(name = "T_Product")

public class ProductEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	

	public void setId(Long id) {
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	private String nameproduct;
	private int price;
	private String color;
	private String image;
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	

	public String getNameproduct() {
		return nameproduct;
	}

	public void setNameproduct(String nameproduct) {
		this.nameproduct = nameproduct;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getQuantityproduct() {
		return quantityproduct;
	}

	public void setQuantityproduct(int quantityproduct) {
		this.quantityproduct = quantityproduct;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public CategoryEntity getCategory() {
		return category;
	}

	public void setCategory(CategoryEntity category) {
		this.category = category;
	}

	public List<OrderLinesEntity> getOrderLines() {
		return orderLines;
	}



	public void setOrderLines(List<OrderLinesEntity> orderLines) {
		this.orderLines = orderLines;
	}

	private int quantityproduct;
	private String description;
	
	@ManyToOne
    @JoinColumn(name = "idcategory")
    private CategoryEntity category;
	
	@OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
	private List<OrderLinesEntity> orderLines;
	
	
	

	

}
