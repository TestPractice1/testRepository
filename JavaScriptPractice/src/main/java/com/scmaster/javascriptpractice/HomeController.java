package com.scmaster.javascriptpractice;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
				
		
		return "home";
	}
	
	@RequestMapping(value="timer", method=RequestMethod.GET)
	public String timer () {
		
		
		return "timer";
		
	}
	
	@RequestMapping(value="showHidden", method=RequestMethod.GET)
	public String showHidden () {
		
		
		return "showHidden";
		
	}
	
	@RequestMapping(value="practice", method=RequestMethod.GET)
	public String practice () {
		
		return "practice";
	}
	@RequestMapping(value="count", method=RequestMethod.GET)
	public String count() {
		return "count";
	}
	
	@RequestMapping(value="type", method=RequestMethod.GET)
	public String type() {
		
		return "type";
	}
	
	@RequestMapping(value="banner", method= RequestMethod.GET)
	public String banner () {
		
		return "banner";
	}
	
	@RequestMapping(value="tab", method= RequestMethod.GET)
	public String tab () {
		
		return "tab";
	}
	
	@RequestMapping(value="rectangle", method= RequestMethod.GET)
	public String rectangle () {
		
		return "rectangle";
	}
}
