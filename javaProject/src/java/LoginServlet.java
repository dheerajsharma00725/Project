import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  		
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		
		if(email.equals("abc@gmail.com") && pass.equals("abc")) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("home");
		}
		else {
			response.sendRedirect("index.html");
		}
	}
}