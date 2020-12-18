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
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.model.BLManager;
import com.pojo.Addfertilizer;

/**
 * Servlet implementation class updatecropservlet
 */
@WebServlet("/updatecropservlet")
@MultipartConfig(fileSizeThreshold=1024 * 1024 * 2,
maxFileSize = 1024 * 1024 * 70,
maxRequestSize = 1024 * 1024 * 100)
public class updatecropservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private static String SAV_DIR = "c://ProjectDemo/Foodorder/WebContent/menuimages/";
	    FilePermission permission1=new FilePermission(SAV_DIR, "write");
	    
   BLManager bl=new BLManager();
   Addfertilizer af=new Addfertilizer();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatecropservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("fid");
		
		int fid=Integer.parseInt(id);
		af=bl.serachbyid(fid);
		
		HttpSession session=request.getSession();
		session.setAttribute("list",af);
		
		response.sendRedirect("updatefertilizer.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
PrintWriter out=response.getWriter();
		
		String fertilizername=request.getParameter("fertilizername");
		String fertilizerdetails=request.getParameter("fertilizerdetails");
		String fertilizerquantity=request.getParameter("fertilizerquantity");
		Part fertilizerimage=request.getPart("fertilizerimage");

		af.setFertilizername(fertilizername);
		af.setFertilizerdetails(fertilizerdetails);
		af.setFertilizerquantity(fertilizerquantity);
	
		try{
			String img1=extractFileName(fertilizerimage);
			af.setFertilizerimage(img1);
			
		}catch(Exception e)
		{ 
			e.printStackTrace();
		}
		
		bl.saveFertilizerUpdate(af);
		

		
		out.print("<script type=\"text/javascript\">");
		out.print("alert('Record update successfully....');");
		out.print("location='viewproduct1.jsp';");
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

}
