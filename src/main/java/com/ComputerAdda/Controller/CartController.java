package com.ComputerAdda.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ComputerAdda.Interface.iCart;
import com.ComputerAdda.Interface.iProducts;
import com.ComputerAdda.Interface.iRegister;
import com.ComputerAdda.Main.Cart;
import com.ComputerAdda.Main.Products;
import com.ComputerAdda.Main.Register;

@Controller
public class CartController {
	
	@Autowired
	iRegister ir;
	
	@Autowired
	iProducts ip;
	
	@Autowired
	iCart ic;
	
	@RequestMapping(value = "cart", method = RequestMethod.GET)
    public ModelAndView cart(ModelMap mp, @RequestParam("email") String email) {
        ModelAndView mv = new ModelAndView();
        if (email == null || email.trim().isEmpty()) {
            mp.put("errorMessage", "Email is required.");
            mv.setViewName("login.jsp");
            return mv;
        }
        Register r1 = ir.findByEmail(email);
        if (r1 == null) {
            mp.put("errorMessage", "User not found.");
            mv.setViewName("login.jsp");
            return mv;
        } else {
            int id = r1.getId();
            mp.put("car", ic.findAllByRegister_id(id));
            mp.put("register", r1);
        }

        mv.addAllObjects(mp);
        mv.setViewName("cart.jsp");
        return mv;
    }
	
	
	//Add to cart
	 @RequestMapping("addcart")
	    public ModelAndView addcart(@RequestParam("id") int id, @RequestParam("email") String email) {
	        ModelAndView mv = new ModelAndView();
	        Register r1 = ir.findByEmail(email);
	        if (r1 == null) {
	            mv.addObject("errorMessage", "User not found.");
	            mv.setViewName("login.jsp");
	            return mv;
	        }
	        Products p1 = ip.findById(id);
	        int i = ic.countByRegister_id(r1.getId());
	        mv.addObject("qty", i);
	        mv.setViewName("cart");
	        
	        if (p1 != null) {
	            Cart c = new Cart(p1, r1);
	            ic.save(c);
	        }
	        
	        return mv;
	    }

		@RequestMapping("remove")
		public String remove(int id)
		{
			ic.deleteById(id);
			return "home";
		}
	
	

}
