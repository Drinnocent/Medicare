package com.Medicare.Medicare.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer cartid;
	private Integer userid;
	private Integer medid;
	public Integer getCartid() {
		return cartid;
	}
	public void setCartid(Integer cartid) {
		this.cartid = cartid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getMedid() {
		return medid;
	}
	public void setMedid(Integer medid) {
		this.medid = medid;
	}
	
	
	
	

}
