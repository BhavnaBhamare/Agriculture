package com.controller;

import java.io.FilePermission;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Registration;

/**
 * Servlet implementation class UpdateFarmerProfile
 */
@WebServlet("/UpdateFarmerProfile")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 2,
maxFileSize = 1024 * 1024 * 70,
maxRequestSize = 1024 * 1024 * 100)
public class UpdateFarmerProfile extends HttpServlet {
	
	private static String SAV_DIR ="c://ProjectDemo/Foodorder/WebContent/profilephoto/";
	FilePermission permission1=new FilePermission(SAV_DIR, "write");
	private static final long serialVersionUID = 1L;
	
	BLManager bl=new BLManager();
	Registration r=new Registration();
       
    
    public UpdateFarmerProfile() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		
		PrintWriter out=response.getWriter();
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		String username=request.getParameter("uname");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		//Part image=request.getPart("image");
		String confirmpassword=request.getParameter("cpassword");
		String gender=request.getParameter("gender");
		String registeras=request.getParameter("registeras");
		String address=request.getParameter("address");
		String phonenumber=request.getParameter("phonenumber");
		String mobilenumber=request.getParameter("mobileno");
		
		
		
		r.setRid(id);
		r.setUsername(username);
		r.setEmail(email);
		r.setPasssword(password);
		r.setConfirmpassword(confirmpassword);
		r.setGender(gender);
		r.setRegisteras(registeras);
		r.setAddress(address);
		r.setPhonenumber(phonenumber);
		r.setMobilenumber(mobilenumber);
     
        
        bl.saveFarmerUpdate(r);
     //   response.sendRedirect("EditProfile.jsp");
        
       out.print("<script type=\"text/javascript\">");
		out.print("alert('Record update successfully....');");
		out.print("location='editfarmer.jsp';");
		out.print("</script>");
	}


	/*private String extractFileName(Part image) {
		String contentDisp = image.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		
		
		return "";
	}*/



	}


