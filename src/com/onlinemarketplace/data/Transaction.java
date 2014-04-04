package com.onlinemarketplace.data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.onlinemarketplace.database.Select;

public class Transaction {
	
	private int transID;
	public int getTransID() {
		return transID;
	}
	public void setTransID(int transID) {
		this.transID = transID;
	}
	private int buyerID;
	public int getBuyerID() {
		return buyerID;
	}
	public void setBuyerID(int buyerID) {
		this.buyerID = buyerID;
	}
	private int sellerID;
	public int getSellerID() {
		return sellerID;
	}
	public void setSellerID(int sellerID) {
		this.sellerID = sellerID;
	}
	private int itemID;
	public int getItemID() {
		return itemID;
	}
	public void setItemID(int itemID) {
		this.itemID = itemID;
	}
	private int quantity;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	private double amount;
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	// funcions..

	// list of bought items..
	public static List getPurchase(User user) throws SQLException {
		ResultSet rs = null;
		List<Transaction> retval = null;
		String query = "SELECT * "
				+ "FROM Transaction "
				+ "WHERE buyerID="+user.getUserID()+";" ;
		try {
			rs = Select.execute(query);
			while(rs.next()){
				Transaction boo = new Transaction();
				boo.setTransID(rs.getInt("transID"));
				boo.setBuyerID(user.getUserID());
				boo.setSellerID(rs.getInt("sellerID"));
				boo.setQuantity(rs.getInt("quantity"));
				boo.setAmount(rs.getDouble("amount"));
				retval.add(boo);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return retval;
	}

	// list of sold items..
	public static List getSold(User user) throws SQLException{		
		ResultSet rs = null;
		List<Transaction> retval = null;
		String query = "SELECT * "
				+ "FROM Transaction "
				+ "WHERE sellerID="+user.getUserID()+";" ;
		try {
			rs = Select.execute(query);
			while(rs.next()){
				Transaction boo = new Transaction();
				boo.setTransID(rs.getInt("transID"));
				boo.setSellerID(user.getUserID());
				boo.setBuyerID(rs.getInt("buyerID"));
				boo.setQuantity(rs.getInt("quantity"));
				boo.setAmount(rs.getDouble("amount"));
				retval.add(boo);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return retval;
	}

}
