package com.ecommerce.DTO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class CategoryDTO {
	private Long idcategory;
	private String namecategory;
	public Long getIdcategory() {
		return idcategory;
	}
	public void setIdcategory(Long idcategory) {
		this.idcategory = idcategory;
	}
	public String getNamecategory() {
		return namecategory;
	}
	public void setNamecategory(String namecategory) {
		this.namecategory = namecategory;
	}
}
