package com.ComputerAdda.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ComputerAdda.Interface.iCart;
import com.ComputerAdda.Interface.iProducts;

@Service
public class ProductService {

    @Autowired
    private iProducts ip;

    @Autowired
    private iCart ic;

    @Transactional
    public void deleteProductAndCartItems(Integer id) {
        if (id != null) {
            // Delete all cart items that reference this product
            ic.deleteByProducts_Id(id);
            // Delete the product
            ip.deleteById(id);
        }
    }
}