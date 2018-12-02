package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
 

 
public class LoginServlet extends HttpServlet {
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root", "");
 
		PreparedStatement ps = c.prepareStatement("select username,password from users where userName=? and pass=?");
		ps.setString(1, un);
		ps.setString(2, pw);
 
		ResultSet rs = ps.executeQuery();
 
		while (rs.next()) {
			response.sendRedirect("welcome.jsp");
			return;
		}
		response.sendRedirect("login.jsp");
		return;
		} 
                catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}

}