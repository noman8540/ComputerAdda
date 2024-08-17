package com.ComputerAdda.Interface;

import org.springframework.data.repository.CrudRepository;

import com.ComputerAdda.Main.Products;
import com.ComputerAdda.Main.Register;

public interface iRegister extends CrudRepository<Register, Integer>{

	Register findByEmail(String email);

	void save(Products p1);
}
