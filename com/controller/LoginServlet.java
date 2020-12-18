package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.Registration;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	Registration rg=new Registration();
	BLManager bl=new BLManager();
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
	IOException {
		String email = request.getParameter("email");

		String passsword = request.getParameter("passsword");
		
		rg=bl.serachbyemail(email);

		System.out.println("email" +email + passsword);


		rg = bl.searchbyEmailPassowrd(email, passsword);
		
		
		System.out.println("emaiid is"+rg.getEmail());
		
//		if(rg!=null){
//			response.sendRedirect("sucess.jsp");
//		}else{
//			response.sendRedirect("registration.html");
//		}


PrintWriter out = response.getWriter();

if (rg != null) {

	int id = rg.getRid();
	String emailid = rg.getEmail();
	String pass = rg.getPasssword();
	String name=rg.getUsername();
	String address=rg.getAddress();
	String mobileno=rg.getMobilenumber();
	String phoneno=rg.getPhonenumber();
//	String password=rg.getPasssword();
	String confirmpassword=rg.getConfirmpassword();
	String gender=rg.getGender();
	

	HttpSession session = request.getSession();

	session.setAttribute("id", id);
	session.setAttribute("email", emailid);

	session.setAttribute("password", pass);
	
	session.setAttribute("username", name);
	session.setAttribute("mobileno", mobileno);

	session.setAttribute("phoneno", phoneno);
	
	
	session.setAttribute("gender", gender);
	session.setAttribute("address", address);

	session.setAttribute("confirmpassword",confirmpassword);

	System.out.println("Welcome To Agriculture");

	out.print("<script type=\"text/javascript\">");
	out.print("alert('welcome To Agriculture World');");
	out.print("location='farmermenulist.jsp';");

//	out.print("location='adminDashboard.jsp';");
	out.print("</script>");

} else {
	out.print("<script type=\"text/javascript\">");
	out.print("alert('Enter correct username && password');");
	out.print("</script>");

}

}

}
