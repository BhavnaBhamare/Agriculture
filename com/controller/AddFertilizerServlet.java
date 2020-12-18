package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.model.BLManager;
import com.pojo.Addfertilizer;

/**
 * Servlet implementation class AddFertilizerServlet
 */
@WebServlet("/AddFertilizerServlet")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 2,
maxFileSize = 1024 * 1024 * 70,
maxRequestSize = 1024 * 1024 * 100)

public class AddFertilizerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	BLManager bl=new BLManager();
	Addfertilizer af=new Addfertilizer();
	
	
	public AddFertilizerServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String fertilizername=request.getParameter("fertilizername");
		String fertilizerdetail=request.getParameter("fertilizerdetail");
		String fertilizerquantity=request.getParameter("fertilizerquantity");
		
		Part image=request.getPart("image");
		
		af.setFertilizername(fertilizername);
		af.setFertilizerdetails(fertilizerdetail);
		af.setFertilizerquantity(fertilizerquantity);
		
		
		try{
			String img1=extractFileName(image);
			af.setFertilizerimage(img1);
						
		}catch(Exception e)
		{ 
			e.printStackTrace();
		}

		
			bl.saveFertilize(af);
			PrintWriter out=response.getWriter();
			out.print("<script type=\"text/javascript\">");
			out.print("alert('Fertilizer is added');");
			out.print("location='AddFertilizer.jsp';");
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
