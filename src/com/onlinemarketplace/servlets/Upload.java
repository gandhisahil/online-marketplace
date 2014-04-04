package com.onlinemarketplace.servlets;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinemarketplace.data.Item;
import com.onlinemarketplace.data.User;

@WebServlet("/upload")
public class Upload extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		// check for session
		HttpSession session = req.getSession(false);
		if(session == null || session.getAttribute("login") == null){
			resp.sendRedirect("login");
			return;
		}
		
		req.getRequestDispatcher("WEB-INF/views/uploadItem.jsp").forward(req, resp);
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		Item item = new Item();
		boolean isItem = false;
		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));
		// set date
		java.util.Date utilDate = new java.util.Date();
		long date = utilDate.getTime();
		Date addedOn = new Date(date);
		
		int discount = Integer.parseInt(req.getParameter("discount"));
		String category = req.getParameter("category");
		// set the user id from session
		User user = (User) req.getSession().getAttribute("login");
		
		// set all the values to the object "item"
		item.setName(name);
		item.setPrice(price);
		item.setAddedOn(addedOn);
		item.setDiscount(discount);
		item.setCategory(category);
		item.setUserId(user.getUserID());
		
		isItem = Item.add(item);
		if(isItem){
			resp.sendRedirect("dashboard");
		} else {
			req.getRequestDispatcher("WEB-INF/views/uploadItem.jsp").forward(req, resp);
		}
	}
}
