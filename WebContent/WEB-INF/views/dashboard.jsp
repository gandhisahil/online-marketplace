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
  <div id="in-nav" style="height:80px">
      <div class="container">
        <div class="row">
          <div class="span12">
            <ul class="pull-right">
              <li style="font-size:20px"><a href="logout"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
            </ul>
              <h1 class="namePlate col-md-offset-0"><strong>SPT MARKETPLACE</strong></h1></a>
          </div>
        </div>
      </div>
    </div>
    <div id="in-sub-nav" style="height:200px; background-color:#800080">
      <div class="container">
        <div class="row">
          <div class="span12">
            <ul style="text-align:center">
              <li><a href="home"><span class="glyphicon glyphicon-search"></span><br><h3 style=" font-size:1.3em">Discover</h3></a></li>
              <li><a href="dashboard" class="active"><span class="glyphicon glyphicon-text-width"></span><br><h3 style=" font-size:1.3em">Dashboard</h3></a></li>
              <li><a href="upload"><span class="glyphicon glyphicon-plus"></span><br><h3 style=" font-size:1.3em">Upload</h3></a></li>
              <li><a href="settings"><span class="glyphicon glyphicon-cog"></span><br><h3 style=" font-size:1.3em">Settings</h3></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  <div class="page">
      <div class="page-container">
		<div class="container">
			<div class="row">
				<h1 class="header" style="color:red" align="center">Stock List</h1>
						<table style="float: right" class="table table-striped sortable">
							<thead>
								<tr>
									<th>Item</th>
									<th>Price</th>	
									<th>Quantity</th>
									<th>Added On</th>
									<th>Discount</th>
									<th>Category</th>
									</tr>
							</thead>
						<tbody id="sellings-table" name="sellings-table">
							<c:forEach items="${stock}" var="stock">
								<tr>
									<td>${stock.name}</td>
									<td>${stock.price }</td>
									<td>${stock.quantity }</td>
									<td>${stock.addedOn }</td>
									<td>${stock.discount }</td>
									<td>${stock.category }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>		
		    </div>
		    <div class="row">
				<h1 class="header" style="color:red" align="center">Purchase List</h1>
						<table style="float: right" class="table table-striped sortable">
							<thead>
								<tr>
									<th>Transaction Id</th>
									<th>Seller</th>	
									<th>Quantity</th>
									<th>Bill Amount</th>
									</tr>
							</thead>
						<tbody id="sellings-table" name="sellings-table">
							<c:forEach items="${purchase}" var="purchase">
								<tr>
									<td>${purchase.transID}</td>
									<td>${purchase.sellerID }</td>
									<td>${purchase.quantity }</td>
									<td>${purchase.amount }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>		
		    </div>
		    <div class="row">
				<h1 class="header" style="color:red" align="center">Sold items List</h1>
						<table style="float: right" class="table table-striped sortable">
							<thead>
								<tr>
									<th>Transaction Id</th>
									<th>Buyer</th>	
									<th>Quantity</th>
									<th>Bill Amount</th>
									</tr>
							</thead>
						<tbody id="sellings-table" name="sellings-table">
							<c:forEach items="${sold}" var="sold">
								<tr>
									<td>${sold.transID}</td>
									<td>${sold.sellerID }</td>
									<td>${sold.quantity }</td>
									<td>${sold.amount }</td>
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