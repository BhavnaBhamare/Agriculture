package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.model.BLManager;
import com.pojo.Registration;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 BLManager bl=new BLManager();
	    Registration r=new Registration();
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
		
		String username=request.getParameter("Username");
		String email=request.getParameter("Email");
		//Part image=request.getPart("image");
		String password=request.getParameter("Password");
		String confirmpassword=request.getParameter("Confirmpassword");
		String gender=request.getParameter("gender");
		String registeras=request.getParameter("registeras");
		String address=request.getParameter("address");
		String phonenumber=request.getParameter("phonenumber");
		String mobilenumber=request.getParameter("mobilenumber");

		
		r.setUsername(username);
		r.setEmail(email);
		r.setPasssword(password);
		r.setConfirmpassword(confirmpassword);
		r.setGender(gender);
		r.setRegisteras(registeras);
		r.setAddress(address);
		r.setPhonenumber(phonenumber);
		r.setMobilenumber(mobilenumber);
		
		bl.saveregistration(r);
		
		
		out.print("<script type=\"text/javascript\">");
		out.print("alert('Register successfully..........!!!!');");
		out.print("location='Customerlogin.jsp';");
		out.print("</script>");
		
		
	}

}
