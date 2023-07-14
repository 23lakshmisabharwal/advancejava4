package com.nagarro.springassignment.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.springassignment.dao.RegistrationDao;

@Controller
public class UserRegister {
	
	@RequestMapping("register")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		RegistrationDao register = new RegistrationDao();
		ModelAndView mv = new ModelAndView();
		if (register.registerUser(uname, pass)) {
			mv.setViewName("LoginPage.jsp");
		} else {
			mv.setViewName("register.jsp");
		}
		return mv;

	}

}