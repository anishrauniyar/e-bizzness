package com.mypackage.com;

import java.text.DateFormat;

import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.junit.runner.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
@SessionAttributes("sessionuser")
public class HomeController{
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private String sessionuser;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		model.addAttribute("username", "Guest");
		return "home";
	}
	
	@RequestMapping(value = "/login")
	public String login(Locale locale, Model model, 
						@ModelAttribute("loginForm") SessionBean sessionbean,
						BindingResult result) {
		logger.info("Welcome home! The client locale is {}.", locale);		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "login";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home2(Locale locale, Model model, HttpServletRequest request) {
		//model.addAttribute("sessionuser", sessionuser);
		request.getLocalName();
		return "home";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String signup(Locale locale, Model model) {
		//model.addAttribute("sessionuser", sessionuser);
		return "register";
	}
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String register(Locale locale, Model model, @Valid HomeBeans homebeans, BindingResult result) {
		if(result.hasErrors()){
			return "register";
		}
		return "home";
	}
	
	@RequestMapping(value = "/form", method = RequestMethod.GET)
	public String validate(Locale locale, Model model, HttpServletRequest request, HttpServletResponse response) {
		model.addAttribute("sessionvar",request.getSession());
		return "register";
	}
	
	@RequestMapping(value="/navigation", method=RequestMethod.GET)
	public String navigation(Locale locale, Model model, @RequestParam("value") String value){
		//model.addAttribute("sessionuser", sessionuser);
		if (value.equals("category")){
			model.addAttribute("value","Category");
			return "category";
		}
		else if(value.equals("interview")){
			model.addAttribute("value", "Interview");
		}
		else if(value.equals("article")){
			model.addAttribute("value", "Article");
			return "article";
		}
		else if(value.equals("startup")){
			model.addAttribute("value", "Startup");
			return "startup";
		}
		else if(value.equals("advertisement")){
			model.addAttribute("value", "Advertisement");
		}
		else if(value.equals("video")){
			model.addAttribute("value", "Video");
		}
		else if(value.equals("aboutus")){
			model.addAttribute("value", "Aboutus");
		}
		else if(value.equals("contactus")){
			model.addAttribute("value", "Contactus");
		}
		else{
			return "home";
		}
		return "navigation";
	}
	
	@RequestMapping(value = "/startup",  method=RequestMethod.GET)
	public String startup(Locale locale, 
						  Model model) {
						 
		return "startup";
	}
	@RequestMapping(value = "/startup",  method=RequestMethod.POST)
	public String upload(Locale locale, 
						  Model model,
						  @RequestParam("upload") String value) {
		
		if(value.equals("Video")){
			model.addAttribute("upload", "video");
		}
		else if(value.equals("Story")){
			model.addAttribute("upload", "story");
		}
						 
		return "startup";
	}
	
}