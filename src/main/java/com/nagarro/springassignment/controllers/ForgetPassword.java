package com.nagarro.springassignment.controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.springassignment.dao.ForgotPasswordDao;

@Controller
public class ForgetPassword {

	@RequestMapping("/Forget")
	public ModelAndView forget(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");

		ForgotPasswordDao dao = new ForgotPasswordDao();
		ModelAndView mv = new ModelAndView();

		if (dao.forgetPass(uname, pass)) {
			mv.setViewName("LoginPage.jsp");
		} else
			mv.setViewName("ForgotPassword.jsp");

		return mv;
	}

}
