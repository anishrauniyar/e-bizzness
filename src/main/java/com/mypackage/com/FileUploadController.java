package com.mypackage.com;

import java.net.BindException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;

@Controller
public class FileUploadController{
 
	@RequestMapping(value="upload", method=RequestMethod.GET)
	public String onSubmit( Model model){

		FileUploadModel file = new FileUploadModel();
		 
		MultipartFile multipartFile = file.getFile();
 
		String fileName="";
 
		if(multipartFile!=null){
			fileName = multipartFile.getOriginalFilename();
			//do whatever you want
		}
		model.addAttribute("filename", fileName);
		return "startup";
	}
}
