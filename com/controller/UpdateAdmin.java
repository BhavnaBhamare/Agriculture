package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.Admin;

/**
 * Servlet implementation class UpdateAdmin
 */
@WebServlet("/UpdateAdmin")
public class UpdateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 BLManager bl=new BLManager();
     Admin a=new Admin();

    
    public UpdateAdmin() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		PrintWriter out=response.getWriter();
//		int id=Integer.parseInt(request.getParameter("id"));
	String username=request.getParameter("username");
	String password=request.getParameter("password");
//	a.setId(id);
	
	a.setUsername(username);
	a.setPassword(password);
	
	bl.updateRecord(a);
	
	
	out.print("<script type=\"text/javascript\">");
	out.print("alert('Record Updated sucessfully');");
	out.print("location='Adminprofile.jsp';");
	out.print("</script>");
	
	}

}
