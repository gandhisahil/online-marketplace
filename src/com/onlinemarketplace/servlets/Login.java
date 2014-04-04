package com.onlinemarketplace.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.SendResult;

import com.onlinemarketplace.data.User;

@WebServlet("/login")
public class Login extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("messages", messages);
		
		messages.put("default", "hii");
		
		// Already signed in? Redirect to home..
//		HttpSession session = req.getSession(false);
//		if(session == null || session.getAttribute("login") == null){
//			req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
//			// req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
//		} else {
//			resp.sendRedirect("/app/home");
//		}
		
		// Check if redirect..
//		String re = req.getParameter("re");
//		if(re==null || re.trim().isEmpty()){
//			// do nothing
//		} else if (re.equals("reg")) {
//			messages.put("default", "You have successfully registered, Log In to access your account");
//		}
		
		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {		
		// Initialize error messages
		Map<String, String> error = new HashMap<String, String>();
		req.setAttribute("error", error);
		Boolean session = false;
		
		String email = req.getParameter("email");
		String pass = req.getParameter("password");
		
		try {
			session = User.get(email, pass, req.getSession(true));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(session){
			String url = req.getServletPath();
			resp.sendRedirect("home");
//			resp.sendRedirect("/home");
		} else {
			error.put("login", "Unknown Login. Please try again!");
			req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(req, resp);
		}
		
	}
}
