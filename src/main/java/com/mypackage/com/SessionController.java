package com.mypackage.com;

import java.util.Locale;



import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes("sessionuser")
public class SessionController {

	private String sessionuser;

	@Autowired
	private HomeController sc;
	
	@RequestMapping(value="/logged")
	public ModelAndView login(@RequestParam("username") String username, 
							@RequestParam("password") String password,
							@Valid @ModelAttribute("loginForm") SessionBean session,
							BindingResult result ){
		ModelAndView modelandview = new ModelAndView();

		if (result.hasErrors()){
			modelandview.setViewName("login");
			return modelandview;
		}
		if (username==null && password==null){
			modelandview.setViewName("home");
			return modelandview;
		}
		sessionuser = username;
		modelandview.setViewName("home");
		modelandview.addObject("sessionuser", sessionuser);
		return modelandview;
	}
	
	@RequestMapping(value = "/signout", method = RequestMethod.GET)
	public String signout(Locale locale, Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Cookie[] cookies = request.getCookies();
		cookies[0].setMaxAge(0);
		session.invalidate();
		model.addAttribute("sessionuser", "signout");
		return "home";
	}
}
