package com.onlinemarketplace.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinemarketplace.data.Item;
import com.onlinemarketplace.data.Transaction;
import com.onlinemarketplace.data.User;

@WebServlet("/settings")
public class Settings extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// check for session
		HttpSession session = req.getSession(false);
		if(session == null || session.getAttribute("login") == null){
			resp.sendRedirect("login");
		} else {
			req.getRequestDispatcher("WEB-INF/views/discover.jsp").forward(req, resp);
		}

	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) {
		// TODO: add code to update user information..	
	}

}
