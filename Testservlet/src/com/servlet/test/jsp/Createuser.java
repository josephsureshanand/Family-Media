package com.servlet.test.jsp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Createuser")
public class Createuser extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String uname=request.getParameter("uname");
		String role=request.getParameter("role");
		String pass=request.getParameter("pass");
		int test;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c =DriverManager.getConnection("jdbc:mysql://localhost:3306/fmslogin","root","hack");
			PreparedStatement ps = c.prepareStatement("insert into login(uname,role,pass) values(?,?,?)");
			ps.setString(1,uname);
			ps.setString(2, role);
			ps.setString(3, pass);
			
			test=ps.executeUpdate();
			if(test==1)
			{
				
			response.sendRedirect("Welcome.jsp");
			return;
			}
			else {
			response.sendRedirect("page1.jsp");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}
	}


