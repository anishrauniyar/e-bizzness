package com.mypackage.com;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PdfController {
	
	@RequestMapping(value="/download", method=RequestMethod.GET)
	public void download(HttpServletRequest request, HttpServletResponse response) throws IOException{
		String pdfpath = "/resources/pdf/document.pdf";
		String filePath;
	   // get absolute path of the application
	   ServletContext context = request.getSession().getServletContext();
	   String appPath = context.getRealPath("");
	   String filename= request.getParameter("document");
	   //filePath = getDownloadFilePath(pdfpath);

	   // construct the complete absolute path of the file
	   String fullPath = appPath + pdfpath;       
	   File downloadFile = new File(fullPath);
	   FileInputStream inputStream = new FileInputStream(downloadFile);

	   // get MIME type of the file
	   String mimeType = context.getMimeType(fullPath);
	   if (mimeType == null) {
	       // set to binary type if MIME mapping not found
	       mimeType = "application/pdf";
	   }
	   System.out.println("MIME type: " + mimeType);


	   String headerKey = "Content-Disposition";

	   response.addHeader("Content-Disposition", "attachment;filename=document.pdf");
	   response.setContentType("application/pdf");

	   // get output stream of the response
	   OutputStream outStream = response.getOutputStream();

	   byte[] buffer = new byte[100];
	   int bytesRead = -1;

	   // write bytes read from the input stream into the output stream
	   while ((bytesRead = inputStream.read(buffer)) != -1) {
	       outStream.write(buffer, 0, bytesRead);
	   }

	   inputStream.close();
	   outStream.close();

	}
}
