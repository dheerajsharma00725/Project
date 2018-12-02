<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
           response.setHeader("Cache-Control","no-cache, no-store ,must-revalidate");
           response.setHeader("Pragma","no-cache");
           response.setHeader("Expires","0");
           
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login.jsp");
        }
        %>
    </body>
</html>
