
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table, th, td {
    border: 1px solid black;
}

            </style>
    </head>
    <body>
        <%
            
            try{
            String start = request.getParameter("start");
            String end = request.getParameter("end");
            String date = request.getParameter("date");
            String myurl="jdbc:mysql://localhost/acadview";
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                String query1="select * from ride where start='"+start+"' and end='"+end+"' and date='"+date+"'";
                ResultSet rs=st.executeQuery(query1);
                String driver,no;
                %><table>
                    <tr>
                        <th>Driver name</th>
                        <th>Driver no</th>
                    </tr><%
            while(rs.next()){
              driver=rs.getString("username");
            no=rs.getString("number");
            %><tr>
                
            <td><%out.println(driver);%></td>
            <td><%out.println(no);%></td>
           
            </tr> <%   
            st.close();
            }
            }
            catch(Exception e)
            {
                System.err.println("got an exception");
                System.err.println(e.getMessage());
            }
 
   
        %>
    </body>
</html>
