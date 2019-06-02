package com.servlet.test.jsp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Send")
public class Send extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SimpleDateFormat formatter=new SimpleDateFormat("dd/mm/yyyy HH:mm:ss");
		Date date=new Date();
		String uname=request.getParameter("uname");
		String role=request.getParameter("role");
		String sname=request.getParameter("sname");
		String message=request.getParameter("message");
		String datetime=formatter.format(date);
		int test;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c =DriverManager.getConnection("jdbc:mysql://localhost:3306/fms","root","hack");
			PreparedStatement ps = c.prepareStatement("insert into message(sname,rname,role,message,datetime) values(?,?,?,?,?)");
			ps.setString(1,sname);
			ps.setString(2,uname);
			ps.setString(3, role);
			ps.setString(4, message);
			ps.setString(5, datetime);
			
			test=ps.executeUpdate();
			if(test==1)
			{
			response.sendRedirect("Welcome.jsp");
			return;
			}
			else {
			response.sendRedirect("page2.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		

	}


}
