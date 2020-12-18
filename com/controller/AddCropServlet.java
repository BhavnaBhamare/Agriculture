package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javafx.scene.control.ContentDisplay;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.Part;

import com.model.BLManager;
import com.pojo.Addcrop;

/**
 * Servlet implementation class AddCropServlet
 */
@WebServlet("/AddCropServlet")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 2,
maxFileSize = 1024 * 1024 * 70,
maxRequestSize = 1024 * 1024 * 100)
public class AddCropServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	BLManager bl=new BLManager();
	Addcrop ad=new Addcrop();
	
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		String cropname=request.getParameter("cropname");
		String cropdetails=request.getParameter("cropdetails");
		String cropseasion=request.getParameter("cropseasion");
	//	String img=request.getParameter("image");
		
		
	Part image=request.getPart("image");
		
		ad.setCropname(cropname);
		ad.setCropdetail(cropdetails);
		ad.setCropseason(cropseasion);
//	ad.setCropimage(img);
		
		

		try{
		String img1=extractFileName(image);
		ad.setCropimage(img1);
					
	}catch(Exception e)
	{ 
		e.printStackTrace();
	}

	
		bl.saveCrop(ad);
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		out.print("alert('Sub menu added');");
		out.print("location='AddCrop.jsp';");
		out.print("</script>");

	}
	

	
	
	


private String extractFileName(Part image) {
		String contentDisp = image.getHeader("content-disposition");
	String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
		}
		}
		
		return "";

	}
	
	


	

}
