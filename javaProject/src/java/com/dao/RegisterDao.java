package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.bean.RegisterBean;
import com.connection.DBConnection;
public class RegisterDao {
public String registerUser(RegisterBean registerBean)
{
String email = registerBean.getEmail();
String username = registerBean.getUserName();
String number = registerBean.getNumber();
String password = registerBean.getPassword();
Connection con = DBConnection.createConnection();
try
{
String query = "insert into users (sno,email,username,number,password) values (NULL,?,?,?,?)"; //Insert user details into the table 'USERS'
PreparedStatement preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
preparedStatement.setString(1, email);
preparedStatement.setString(2, username);
preparedStatement.setString(3, number);
preparedStatement.setString(4, password);
int i= preparedStatement.executeUpdate();
if (i!=0)  //Just to ensure data has been inserted into the database
return "SUCCESS"; 
}
catch(SQLException e)
{
e.printStackTrace();
}
return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
}
}