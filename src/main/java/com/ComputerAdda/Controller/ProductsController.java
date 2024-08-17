package com.ComputerAdda.Controller;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ComputerAdda.Interface.iCart;
import com.ComputerAdda.Interface.iProducts;
import com.ComputerAdda.Interface.iRegister;
import com.ComputerAdda.Main.Products;

@Controller
public class ProductsController {

	@Autowired
	iRegister ir;
	
	@Autowired
	iProducts ip;
	
	@Autowired
	iCart ic;
	
	@RequestMapping("products")
	public ModelAndView products(ModelMap mp) {
	    // Fetch all products and convert Iterable to List
	    Iterable<Products> iterableProducts = ip.findAll();
	    List<Products> allProducts = new ArrayList<>();
	    iterableProducts.forEach(allProducts::add);

	    // Categorize products
	    List<Products> laptopProducts = allProducts.stream()
	        .filter(p -> "Laptop".equals(p.getCategory()))
	        .collect(Collectors.toList());

	    List<Products> accessoriesProducts = allProducts.stream()
	        .filter(p -> "Accessories".equals(p.getCategory()))
	        .collect(Collectors.toList());

	    List<Products> peripheralProducts = allProducts.stream()
	        .filter(p -> "Peripheral".equals(p.getCategory()))
	        .collect(Collectors.toList());

	    // Add categorized products to the model
	    mp.put("laptopProducts", laptopProducts);
	    mp.put("accessoriesProducts", accessoriesProducts);
	    mp.put("peripheralProducts", peripheralProducts);

	    // Create and return ModelAndView
	    ModelAndView mv = new ModelAndView();
	    mv.addAllObjects(mp);
	    mv.setViewName("products.jsp");

	    return mv;
	}


}
