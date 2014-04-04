package com.onlinemarketplace.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinemarketplace.data.User;

@WebServlet("/register")
public class Register extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
	}
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		// User._dummyinsert();
		
		User user = new User();
		Boolean isUser = false;
		// Prepare Messages
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("messages", messages);
		
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		user.setFirstName(fname);
		user.setLastName(lname);
		// Validate name
		if ( (fname == null || fname.trim().isEmpty() ) && (lname == null || lname.trim().isEmpty() )) {
            messages.put("name", "Please enter name");
        } else if (!fname.matches("\\p{Alnum}+") && !lname.matches("\\p{Alnum}+")) {
            messages.put("name", "Please enter alphanumeric characters only");
        }
		
		String email = req.getParameter("email");
		user.setEmail(email);
		// Validate email
		if (email == null || email.trim().isEmpty()) {
            messages.put("email", "Please enter email");
        } else
			try {
				if (User.get(email)) {
					messages.put("email", "This email is already registered");
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		
		String pass = req.getParameter("password");
		user.setPassword(pass);
		// Validate pass
		if(pass.length() < 6){
			messages.put("pass", "Password must me minimum 6 characters");
		}
		
		String phone = req.getParameter("phone");
		// validate phone
		if (phone == null || phone.trim().isEmpty()) {
            messages.put("phone", "Please enter phone");
        } else if (!phone.matches("\\d+")) {
            messages.put("age", "Please enter digits only");
        } else {
        	user.setPhone(Integer.parseInt(phone));
        }
           
        String add1 = req.getParameter("addressLine1");
        String add2 = req.getParameter("addressLine2");
		String area = req.getParameter("area");
		String city = req.getParameter("city");
		String state = req.getParameter("state");
		String pin = req.getParameter("pin");
		user.setAddressLine1(add1);
		user.setAddressLine2(add2);
		user.setArea(area);
		user.setCity(city);
		user.setState(state);
		user.setPincode(Integer.parseInt(pin));
		// validate address
//		if (add1 == null || add1.trim().isEmpty() || add2== null || add2.trim().isEmpty() || area == null || area.trim().isEmpty() || city == null || city.trim().isEmpty() || state == null || state.trim().isEmpty()) {
//            messages.put("add", "Please enter all fields in the Address Details");
//        }
		
		// No validation errors? Add user to DB and redirect to login page..
		if(messages.isEmpty()){
			// add user to DB
			isUser = User.insert(user);
			if(isUser){
				try {
					resp.sendRedirect("login?re=reg");
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else {
			req.getRequestDispatcher("/WEB-INF/views/register.jsp").forward(req, resp);
		}
		
		
		
		
	}

}
