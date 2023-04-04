package com.ecommerce.DTO;

import lombok.Data;

@Data
public class ProductDTO {
	private Long idproduct;
	private String nameproduct;
	private int price;
	private String color;
	private int quantityproduct;
	private String description;
	private Long idcategory;
	private int stt;
	public int getStt() {
		return stt;
	}

	public void setStt(int stt) {
		this.stt = stt;
	}
	private String image;
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public Long getIdproduct() {
		return idproduct;
	}
	public void setIdproduct(Long idproduct) {
		this.idproduct = idproduct;
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
	public Long getIdcategory() {
		return idcategory;
	}
	public void setIdcategory(Long idcategory) {
		this.idcategory = idcategory;
	}
	
}
