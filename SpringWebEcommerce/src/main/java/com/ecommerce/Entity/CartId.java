package com.ecommerce.Entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class CartId implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String phonenumber;
    private long idproduct;
	


	public String getPhonenumber() {
		return phonenumber;
	}



	@Override
	public int hashCode() {
		return Objects.hash(idproduct, phonenumber);
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CartId other = (CartId) obj;
		return Objects.equals(phonenumber, other.phonenumber);
	}



	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}



	public long getIdproduct() {
		return idproduct;
	}



	public void setIdproduct(long idproduct) {
		this.idproduct = idproduct;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}

    // constructors, equals, hashCode omitted for brevity
}
