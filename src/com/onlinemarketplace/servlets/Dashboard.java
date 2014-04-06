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

@WebServlet("/dashboard")
public class Dashboard extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// check for session
		HttpSession session = req.getSession(false);
		if(session == null || session.getAttribute("login") == null){
			resp.sendRedirect("login");
		} else {
			// get user
			User user = (User) session.getAttribute("login");
			//			String actn = req.getParameter("actn");
			//			if(actn=="discover"){
			//
			//			}

			// get list of sold/bought/stock items..
			ArrayList<Item> stock = null;
			ArrayList<Transaction> purchase = null;
			ArrayList<Transaction> sold = null;
			try {
				stock = Item.getStock(user);
				purchase = Transaction.getPurchase(user);
				sold = Transaction.getSold(user);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			// set the jsp attributes!
			req.setAttribute("stock", stock);
			req.setAttribute("purchase", purchase);
			req.setAttribute("sold", sold);

			req.getRequestDispatcher("WEB-INF/views/dashboard.jsp").forward(req, resp);
		}

	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp){
		// post-process here!
	}
}
