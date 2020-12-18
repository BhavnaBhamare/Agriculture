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
import com.pojo.Addmachinery;

/**
 * Servlet implementation class AddMachinaryServlet
 */
@WebServlet("/AddMachinaryServlet")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 2,
maxFileSize = 1024 * 1024 * 70,
maxRequestSize = 1024 * 1024 * 100)
public class AddMachinaryServlet extends HttpServlet {
//    private static String SAV_DIR = "c://ProjectDemo/Foodorder/WebContent/menuimages/";

	private static final long serialVersionUID = 1L;
	
	BLManager bl=new BLManager();
	Addmachinery am=new Addmachinery();
	
       
    
    public AddMachinaryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String machinename=request.getParameter("machinename");
		String machinedescription=request.getParameter("machinedescription");		
		Part image=request.getPart("image");
		
		am.setMachinename(machinename);
		am.setDescription(machinedescription);
		
		try{
			String img1=extractFileName(image);
			am.setMachineimage(img1);
						
		}catch(Exception e)
		{ 
			e.printStackTrace();
		}
		
		bl.saveMachine(am);
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
		out.print("alert('Machine Added Successfuly');");
		out.print("location='AddMachinary.jsp';");
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
