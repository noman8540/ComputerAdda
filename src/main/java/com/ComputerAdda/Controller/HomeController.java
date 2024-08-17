package com.ComputerAdda.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ComputerAdda.Interface.iProducts;
import com.ComputerAdda.Interface.iRegister;

@Controller
public class HomeController {
	
	@Autowired
	iRegister ir;
	
	@Autowired
	iProducts ip;
	
	
	
	
	
	@RequestMapping({"/", "home"})
	public ModelAndView home(ModelMap mp)
	{
		mp.put("obj", ip.findAll());
		ModelAndView mv = new ModelAndView();
		mv.addAllObjects(mp);
		
		mv.setViewName("home.jsp");
		
		return mv;
	}
	
	
	
}
