package com.onlinemarketplace.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlinemarketplace.data.Item;
import com.onlinemarketplace.data.Transaction;
import com.onlinemarketplace.data.User;

@WebServlet("/browse")
public class Browse extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// check for session
		HttpSession session = req.getSession(false);
		if(session == null || session.getAttribute("login") == null){
			resp.sendRedirect("login");
			return;
		}
		// get user
		User user = (User) session.getAttribute("login");
		int id = Integer.parseInt(req.getParameter("category"));

		// get list of sold/bought/stock items..
		ArrayList<Item> list = null;
		list = Item.get(id);
		// set the .jsp attributes!
		req.setAttribute("list", list);

		req.getRequestDispatcher("WEB-INF/views/browse.jsp").forward(req, resp);


	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// service the ajax request and complete the transaction
		Transaction tx = new Transaction();
		int itemId = Integer.parseInt(req.getParameter("item"));
		
		// buyer is the user in session
		User user = (User) req.getSession(false).getAttribute("login");
		int buyer = user.getUserID();
		int seller = Integer.parseInt(req.getParameter("seller"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		int amount = Integer.parseInt(req.getParameter("amount"));
		int diff = Integer.parseInt(req.getParameter("diff"));
		
		tx.setItemID(itemId);
		tx.setBuyerID(buyer);
		tx.setSellerID(seller);
		tx.setAmount(amount);
		tx.setQuantity(quantity);
		// make transaction
		boolean success = Transaction.make(tx, diff);
		if(success){
			req.getRequestDispatcher("WEB-INF/views/dashboard.jsp").forward(req, resp);
		}
		
	}
}
