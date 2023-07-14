package com.nagarro.springassignment.controllers;

import java.io.IOException;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nagarro.springassignment.models.Tshirts;
import com.nagarro.springassignment.services.CsvReaderServices;

@Controller
public class SearchApp {

	CsvReaderServices searchTshirts = new CsvReaderServices();

	@RequestMapping("/Search") // post method mapping
	public ModelAndView checkUser(HttpServletRequest request, HttpServletResponse response)
			throws InterruptedException, NumberFormatException, IOException {
//         searchTshirts.getmapData();
		ModelAndView mv = new ModelAndView();

		String colour = request.getParameter("colour");
		String size = request.getParameter("size");
		String gender = request.getParameter("gender");
		String outputPreference = request.getParameter("outputPreference");

		// thread creation
		// SearchController tshirtThread = new SearchController();
		// tshirtThread.start();
//		tshirtThread.join();
//		tshirtThread.interrupt();

		List<Tshirts> result = searchTshirts.sortTshirts(colour, size, gender, outputPreference); // calling sortTshirts

		mv.addObject("result", result);
		mv.setViewName("SearchPage.jsp");
		return mv;
	}

}