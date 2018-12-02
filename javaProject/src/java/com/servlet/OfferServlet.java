package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import com.bean.RegisterBean;
import com.dao.RegisterDao;
 
public class OfferServlet extends HttpServlet {
 
 public OfferServlet() {
 }
 
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 String userName = request.getParameter("username");
 String email = request.getParameter("email");
 String number = request.getParameter("number");
 String password = request.getParameter("password");
 
 RegisterBean registerBean = new RegisterBean();

 registerBean.setNumber(number);
 registerBean.setEmail(email);
 registerBean.setUserName(userName);
 registerBean.setPassword(password); 
 
 RegisterDao registerDao = new RegisterDao();
 
 
 String userRegistered = registerDao.registerUser(registerBean);
 
 if(userRegistered.equals("SUCCESS"))
 {
 request.getRequestDispatcher("/show.jsp").forward(request, response);
 }
 else
 {
 request.setAttribute("errMessage", userRegistered);
 request.getRequestDispatcher("/register.jsp").forward(request, response);
 }
 }
}