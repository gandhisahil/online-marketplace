package com.onlinemarketplace.servlets;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class Logout extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException{
		HttpSession session = req.getSession(false);
		if(session != null || session.getAttribute("login") != null){
			// delete session
			session.invalidate();
			resp.sendRedirect("index.html");
			return;
		}		
	}
}
