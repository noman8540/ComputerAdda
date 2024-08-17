package com.ComputerAdda.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ComputerAdda.Interface.iCart;
import com.ComputerAdda.Interface.iProducts;
import com.ComputerAdda.Interface.iRegister;

@Controller
public class SinglepageController {

	
	@Autowired
	iRegister ir;
	
	@Autowired
	iProducts ip;
	
	@Autowired
	iCart ic;
	
	
//	For single page
	@RequestMapping("singlepage")
	public ModelAndView singlepage(ModelMap mo, int id)
	{
		mo.put("prod1", ip.findById(id));
		ModelAndView mv = new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("singlepage.jsp");
		return mv;
	}
	
//	For single page in admin
	@RequestMapping("adminsinglepage")
	public ModelAndView adminsinglepage(ModelMap mo, int id)
	{
		mo.put("prod1", ip.findById(id));
		ModelAndView mv = new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("Admin/adminsinglepage.jsp");
		return mv;
	}
	
	
}
