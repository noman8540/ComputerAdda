package com.ComputerAdda.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ComputerAdda.Interface.iCart;
import com.ComputerAdda.Interface.iProducts;
import com.ComputerAdda.Interface.iRegister;
import com.ComputerAdda.Main.Register;

import jakarta.servlet.http.HttpSession;


@Controller
public class LoginController {

	
	@Autowired
	iRegister ir;
	
	@Autowired
	iProducts ip;
	
	@Autowired
	iCart ic;
	
	
	@RequestMapping("login")
	public String login()
	{
		return "login.jsp";
	}
	
	
	// For signup

	@RequestMapping("registeration")
	public String register(String name, String email, String password)
	{
		Register r1 = new Register();
				
				
		r1.setName(name);
		r1.setEmail(email);
		r1.setPassword(password);
		ir.save(r1);
		return "redirect:/login";	
				
	}
	
	
	//for login
	
	// For login
    @RequestMapping(value = "log", method = RequestMethod.POST)
    public ModelAndView login(HttpSession session, @RequestParam("email") String email, @RequestParam("password") String password) {
        ModelAndView mv = new ModelAndView();

        Register user = ir.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            session.setAttribute("eid", email);
            
            // Check if the user is an admin
            if (email.equals("computeraddaofficial@gmail.com")) {
                mv.setViewName("adminhome");
            } else {
                int i = ic.countByRegister_id(user.getId());
                mv.addObject("qty", i);
                mv.setViewName("home");
            }
        } else {
            mv.setViewName("login");
        }

        return mv;
    }
	
	
	@RequestMapping("logout")
	public String logout()
	{
		return "logout.jsp";
	}
	
	
}
