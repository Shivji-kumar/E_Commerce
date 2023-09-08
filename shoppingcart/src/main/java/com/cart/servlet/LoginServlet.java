package com.cart.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cart.connection.DbCon;
import com.cart.dao.UserDao;
import com.cart.model.User;


@WebServlet("/user-Login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("login.jsp");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try (PrintWriter out=response.getWriter()){
			String email=request.getParameter("login-email");
			String password=request.getParameter("login-password");
			
			try {
				UserDao udao=new UserDao(DbCon.getConnection());
				User user= udao.userLogin(email, password);
				
				if(user !=null) {
					out.print("user Login");
					request.getSession().setAttribute("auth", user);
					response.sendRedirect("index.jsp");
				}else {
					out.print("user Login Failed");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			out.print(email+password);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
