package com.ecommerce.DTO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class OrderLinesDTO {

	private Long idorder;
	private Long idproduct;
	private int quantity;
	private int price;
}
