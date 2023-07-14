package com.nagarro.springassignment.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.nagarro.springassignment.dao.UserLoginDao;

@Controller
public class Login {

	UserLoginDao UserloginDao = new UserLoginDao();

	@RequestMapping("/login") // for post method mapping
	public ModelAndView checkUser(HttpServletRequest request, HttpServletResponse response) throws IOException {

		ModelAndView mv = new ModelAndView();

		// getting username and password

		String username = request.getParameter("uname");
		String password = request.getParameter("pass");

		// function to check user exist or not
		if (UserloginDao.checkLogin(username, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			mv.setViewName("WelcomePage.jsp");

		} else {
			mv.setViewName("LoginPage.jsp");

		}
		return mv;
	}

}