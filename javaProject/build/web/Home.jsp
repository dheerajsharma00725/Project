<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Home Page</title>
</head>
<body>
 <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires","0");
            if(session.getAttribute("username")==null)
            {
                response.sendRedirect("login.jsp");
            }
            %>
 <center><h2>Home Page</h2></center>
 <b>User Registration Successful</b>
 <br></br>
 <b>Please <a href="login.jsp">log-in</a> to continue.</b>
  
</body>
</html><br>