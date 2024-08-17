package com.ComputerAdda.Main;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Products {
	
	
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Id
	public int id;
	
	public String name;
	
	public String image_url;
	
	public float price;
	
	
	public String sdesc;
	
	public String ldesc;
	
	public String category;
	
	
	
	

	public String getSdesc() {
		return sdesc;
	}

	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}

	public String getLdesc() {
		return ldesc;
	}

	public void setLdesc(String ldesc) {
		this.ldesc = ldesc;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImage_url() {
		return image_url;
	}

	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Products(String name, String image_url, float price, String sdesc, String ldesc, String category) {
		super();
		this.name = name;
		this.image_url = image_url;
		this.price = price;
		this.sdesc = sdesc;
		this.ldesc = ldesc;
		this.category = category;
	}

	public Products() {
		super();
	}

	
	
	
	
	
}
