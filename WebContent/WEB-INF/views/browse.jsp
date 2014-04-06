<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
 <head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>SPT MarketPlace Transactions</title>
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
		<link rel="stylesheet"
			href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/myStyles.css">
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
	  </head>
  <body>
  <style>
	.verticalLine {
    border-left: thick solid #336699 ;
	height: 300px;
	}
	
	.text-highlight {
		text-shadow: 3px 3px 3px #995500;
	}
  </style>
  <script>
	function buy(id, name, price, qty, seller, discount){
		var quantity = parseInt(window.prompt("You have chosen to buy " + name + ", we have " +qty+ " items in stock. How many do you want?", "0"));
		var diff = parseInt(qty)-quantity;
		if(quantity> 0 && diff>-1){
			var temp = (quantity*price);
			var amount = temp-(temp*0.01*discount);
			var confirm = window.confirm("Your total amount is: " + amount);
			if(confirm){
				$.ajax({
					type:		"POST",
					url:		"browse",
					data:		{item: id, seller: seller, quantity: quantity, amount: amount, diff: diff},
					success:	function(code) 
					{
						alert("Transaction successful!! <3 xoxo");
					},
					error:		function(){
						alert("Error");
					}
				});
			} else {
				alert("You cancelled the transaction. Start Over!");
			}
		} else {
			alert("You didnt enter a valid quantity");
		}
	}  
  </script>
  <div id="in-nav" style="height:80px">
      <div class="container">
        <div class="row">
          <div class="span12">
            <ul class="pull-right">
              <li style="font-size:20px"><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </ul>
              <a href="index.html"><h1 class="namePlate col-md-offset-0"><strong>SPT MARKETPLACE</strong></h1></a>
          </div>
        </div>
      </div>
    </div>
  <div class="page">
      <div class="page-container">
		<div class="container">
			<div class="row">
				<h1 class="header" style="color:red" align="center">List of available Items</h1>
						<table style="float: right" class="table table-striped sortable">
							<thead>
								<tr>
									<th>Item</th>
									<th>Price</th>	
									<th>Quantity</th>
									<th>Added On</th>
									<th>Discount</th>
									<th>Category</th>
									<th>Seller</th>
									<th>Buy</th>
									</tr>
							</thead>
						<tbody id="sellings-table" name="sellings-table">
							<c:forEach items="${list}" var="list">								
								<tr>
									<td>${list.name}</td>
									<td>${list.price }</td>
									<td>${list.quantity }</td>
									<td>${list.addedOn }</td>
									<td>${list.discount }</td>
									<td>${list.category }</td>
									<td>${list.userId }</td>
									<td><a href="javascript:void();" onClick="buy('${list.itemId}', '${list.name }', '${list.price }', '${list.quantity }', '${list.userId }', '${list.discount }');">Buy this item</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>		
		    </div>		    
	   </div>
    </div>
 </div>
	</body>
	<footer>
	<h4 style="font-weight:bold; text-align:center; text-color:black">This is a demo project</h4>
	<p style="font-weight:bold; text-align:center; text-color:black">This project was created by Sahil Gandhi, Tejash Desai and Pranav Murlidhar
	<br>
	This is merely a college project-work made under the guidance of Nikam Sir
	</p>
	
	</footer>
</html>