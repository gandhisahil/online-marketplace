package com.onlinemarketplace.data;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.onlinemarketplace.database.Select;
import com.onlinemarketplace.database.Update;

public class Item {

	private int itemId;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	private int price;

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
	
	private Date addedOn;
	public Date getAddedOn() {
		return addedOn;
	}

	public void setAddedOn(Date addedOn) {
		this.addedOn = addedOn;
	}

	private int discount;
	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	private String category;

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
	private int userId;
	
	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	// functions..	

	public static boolean add(Item item){
		int rows = 0;
		String query= "INSERT INTO Item(name, price, addedOn, discount, category, useID) "
				+ "VALUES('"+ item.getName() +"', "+ item.getPrice() +", '"+ item.getAddedOn() +"', " + item.getDiscount() + ", '"+ item.getCategory() +"', "+item.getUserId()+"); ";
		rows = Update.execute(query);

		return rows==1;
	}
	
	// stock list from upload table..
	public static List<Item> getStock(User user) {
		
		ResultSet rs = null;
		List<Item> retval = null;
		String query = "SELECT * "
				+ "FROM Item, User "
				+ "WHERE userID="+user.getUserID()+";" ;
		try {
			rs = Select.execute(query);
			while(rs.next()){
				Item boo = new Item();
				boo.setItemId(rs.getInt("transID"));
				boo.setName(rs.getString("name"));
				boo.setPrice(rs.getInt("price"));
				boo.setAddedOn(rs.getDate("addedOn"));
				boo.setDiscount(rs.getInt("discount"));
				boo.setCategory(rs.getString("category"));
				retval.add(boo);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return retval;
	}
	
}
