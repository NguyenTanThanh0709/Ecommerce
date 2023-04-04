package com.ecommerce.DTO;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class OrderDTO {
	private Long idorder;
	private String phonenumberuser;
	private Date dateorder;
	private int totalprice;
	private String statusorder;
	
}
