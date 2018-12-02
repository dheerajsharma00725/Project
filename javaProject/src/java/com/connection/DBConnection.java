package com.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DBConnection {
public static Connection createConnection()
{
Connection con = null;
String url = "jdbc:mysql://localhost:3306/acadview";
String username = "root";
String password = "";
try{
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        }
    catch (ClassNotFoundException e){
        }
    con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
    System.out.println("Printing connection object "+con);
    }
catch (SQLException e){
    }
return con;
}
}