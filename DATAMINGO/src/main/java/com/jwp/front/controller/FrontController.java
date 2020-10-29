package com.jwp.front.controller;

import java.util.Locale;
import java.util.Map;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jwp.front.service.FrontService;

@Controller
public class FrontController {
	
	@Autowired
	FrontService frontService;
	
	@RequestMapping(value = "/datamingo", method = RequestMethod.GET)
	public String datamingo(Locale locale, Model model, @RequestParam Map map) {
		return "datamingo/datamingo";
	}
	
	@RequestMapping(value = "/social", method = RequestMethod.GET)
	public String social(Locale locale, Model model, @RequestParam Map map) {
	
		return "datamingo/datamingo_social";	
	}
	
	@RequestMapping(value = "/pro", method = RequestMethod.GET)
	public String pro(Locale locale, Model model, @RequestParam Map map) {
		return "datamingo/datamingo_pro";
	}

	@RequestMapping(value = "/premium", method = RequestMethod.GET)
	public String premium(Locale locale, Model model, @RequestParam Map map) {
		return "datamingo/datamingo_premium";
	}

	@RequestMapping(value = "/design", method = RequestMethod.GET)
	public String design(Locale locale, Model model, @RequestParam Map map) {
		return "datamingo/datamingo_design";
	}
	

	@RequestMapping(value = "/contact", method = RequestMethod.GET)
	public String contact(Locale locale, Model model, @RequestParam Map map) {
		return "datamingo/datamingo_contact";
	}
	
}
