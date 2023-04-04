package com.ecommerce.Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;



@Entity
@Table(name = "T_Order")

public class OrderEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	public Long getId() {
		return id;
	}
	private Date dateorder;
	private int totalprice;
	private String statusorder;
	


	public void setId(Long id) {
		this.id = id;
	}

	public Date getDateorder() {
		return dateorder;
	}

	public void setDateorder(Date dateorder) {
		this.dateorder = dateorder;
	}

	public int getTotalprice() {
		return totalprice;
	}

	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}

	public String getStatusorder() {
		return statusorder;
	}

	public void setStatusorder(String statusorder) {
		this.statusorder = statusorder;
	}

	public UserEntity getUser() {
		return user;
	}

	public void setUser(UserEntity user) {
		this.user = user;
	}

	@ManyToOne
    @JoinColumn(name = "phonenumberuser")
    private UserEntity user;
	
	

}
