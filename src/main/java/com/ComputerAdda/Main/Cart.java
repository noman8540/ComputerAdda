package com.ComputerAdda.Main;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Cart {

	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	private int id;
	
	@ManyToOne
	private Products products;
	
	@ManyToOne
	private Register register;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public Register getRegister() {
		return register;
	}

	public void setRegister(Register register) {
		this.register = register;
	}

	public Cart(Products products, Register register) {
		super();
		this.products = products;
		this.register = register;
	}

	public Cart() {
		super();
	}
	
	
}
