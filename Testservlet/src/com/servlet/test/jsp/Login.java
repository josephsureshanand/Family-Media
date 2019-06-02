package com.servlet.test.jsp;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String role = request.getParameter("role");
		String pass=request.getParameter("pass");
		String temp=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection c =DriverManager.getConnection("jdbc:mysql://localhost:3306/fmslogin","root","hack");
			PreparedStatement ps = c.prepareStatement("select uname,role,pass from login where uname=? and role=? and pass=?");
			ps.setString(1,uname);
			ps.setString(2,role);
			ps.setString(3,pass);
			
			
			ResultSet rs=ps.executeQuery();
		
			while(rs.next())
			{
				HttpSession session=request.getSession();
				session.setAttribute("username",uname);
				session.setAttribute("role",role);
			response.sendRedirect("Welcome.jsp");
			return;
			}
			response.sendRedirect("Login.jsp");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		}
	}

	


