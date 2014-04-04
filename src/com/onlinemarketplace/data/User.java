package com.onlinemarketplace.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import com.onlinemarketplace.database.Select;
import com.onlinemarketplace.database.Update;

public class User {

	private int userID;
	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	private String firstName;
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	private String lastName;
	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	private String email;
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	private String password;
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	private int phone;
	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	private String addressLine1;
	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	private String addressLine2;
	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	private String area;
	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	private String city;
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	private String state;
	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	private int pincode;
	
	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
	// functions..

	public static boolean insert(User user){
		int rows = 0;
		
		//order of values -> userID firstName lastName email password phone addressLine1 addressLine2 area city state pincode
		String query = "INSERT INTO User(firstName, lastName, email, password, phone, addressLine1, addressLine2, area, city, state, pincode)"
				+ "values('"+ user.firstName +"','"+ user.lastName +"','"+ user.email +"','"+ user.password +"',"+ user.phone +",'"+ user.addressLine1 +"','"+ user.addressLine2 +"','"+ user.area +"','"+ user.city +"','"+ user.state +"',"+ user.pincode +");";
		
		rows = Update.execute(query);
		return rows==1;
	}

	public static void _dummyinsert(){
		String query = "insert into User(firstName, lastName ,email ,password ,phone ,addressLine1 ,addressLine2 ,area ,city, state, pincode)" 
				+ "values('Dummy', 'boo', 'boo@email.com', 'passboo', '1234567890', 'add1', 'add2', 'area', 'city', 'state', 400000);";
		System.out.println(Update.execute(query));
	}
	
	public static HttpSession setSession(HttpSession session, User user){
		session.setMaxInactiveInterval(60*60);
		session.setAttribute("login", user);
		return session;
	}
	
	public static boolean get(String email, String pass, HttpSession session) throws Exception{
		// check and verify email and pass
		ArrayList<User> userList = new ArrayList<User>();
		User user = new User();
		ResultSet rs;
		String query = "SELECT * " 
					+ "FROM User "
					+ "WHERE email LIKE '"+ email +"';";
		rs = Select.execute(query);
		while(rs.next()){
			user.userID = rs.getInt("userID");
			user.firstName = rs.getString("firstName");
			user.lastName = rs.getString("lastName");
			user.email = email;
			user.password = pass;
			user.phone = rs.getInt("phone");
			user.addressLine1 = rs.getString("addressLine1");
			user.addressLine2 = rs.getString("addressLine2");
			user.city = rs.getString("city");
			user.area = rs.getString("area");
			user.state = rs.getString("state");
			user.pincode = rs.getInt("pincode");
			if(rs.getString("email").equalsIgnoreCase(email) && rs.getString("password").equals(pass)){
				setSession(session, user);
				return true;
			}
		}
		
		return false;
	}
	
	public static boolean get(String email) throws Exception{
		// check if email is already registered in DB
		ResultSet rs;
		String query = "SELECT * " 
					+ "FROM User "
					+ "WHERE email LIKE '"+ email +"';";
		rs = Select.execute(query);
		return rs.next();
	}

}
