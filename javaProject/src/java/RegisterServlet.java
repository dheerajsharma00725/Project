import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public final class RegisterServlet extends HttpServlet {
	String DB_CONNECTION_URL = "jdbc:mysql://localhost:3306/db";
	String DB_USERNAME = "root";
	String DB_PASSWORD = "root";
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
		String fname = request.getParameter("fname");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(DB_CONNECTION_URL, DB_USERNAME, DB_PASSWORD);
			
			PreparedStatement ps = con.prepareStatement("insert into user(fname,email,pass) values(?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, email);
			ps.setString(3, pass);
			
			int result = ps.executeUpdate();
			
			if(result == 1){
				response.sendRedirect("success.html");
			}
			else{
				response.sendRedirect("error.html");
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
}