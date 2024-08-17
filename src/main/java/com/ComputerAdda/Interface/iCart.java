package com.ComputerAdda.Interface;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ComputerAdda.Main.Cart;

public interface iCart extends CrudRepository<Cart, Integer>{

	int countByRegister_id(int id);

    List<Cart> findAllByRegister_id(int id);
    void deleteByProducts_Id(int ProductsId);
}
