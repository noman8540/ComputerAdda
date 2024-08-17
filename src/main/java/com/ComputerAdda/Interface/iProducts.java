package com.ComputerAdda.Interface;

import org.springframework.data.repository.CrudRepository;

import com.ComputerAdda.Main.Products;


public interface iProducts extends CrudRepository<Products, Integer>{

	Products findById(int id);
}
