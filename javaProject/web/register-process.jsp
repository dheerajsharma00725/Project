<%-- 
    Document   : register-process
    Created on : 13 Nov, 2018, 10:44:18 AM
    Author     : Dheeraj Sharma
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
<%
String username=request.getParameter("username");
String password=request.getParameter("psw");
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into users(username,password)values('"+username+"','"+password+"')");
out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
    </body>
</html>

