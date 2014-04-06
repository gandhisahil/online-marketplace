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
              <li><a href="dashboard"><span class="glyphicon glyphicon-text-width"></span><br><h3 style=" font-size:1.3em">Dashboard</h3></a></li>
              <li><a href="upload" class="active"><span class="glyphicon glyphicon-plus"></span><br><h3 style=" font-size:1.3em">Upload</h3></a></li>
              <li><a href="settings"><span class="glyphicon glyphicon-cog"></span><br><h3 style=" font-size:1.3em">Settings</h3></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  <div class="page">
      <div class="page-container">
		<header class="page-header">
            <h1 style="padding: 20px;">Upload Item</h1>
        </header>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <form class="form-horizontal" role="form" action="upload" method="post">                  
                      <div class="form-group">
                        <label for="inputItemName" class="col-sm-2 control-label">Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="name" placeholder="Item Name" name="name">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPrice" class="col-sm-2 control-label">Price</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="price" placeholder="Price per item" name="price">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputQuantity" class="col-sm-2 control-label">Quantity</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="quantity" placeholder="Number of items" name="quantity">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputDiscount" class="col-sm-2 control-label">Discount</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="discount" placeholder="In percentage" name="discount">
                        </div>
                      </div>                     
                      <!-- drop down for category -->
                      <div class="form-group">
                        <label for="inputCategory" class="col-sm-2 control-label">Category</label>
                        <div class="col-sm-10">
                          <select class="form-control" name="category">
							  <option value="1">Mobiles</option>
							  <option value="2">Automobiles</option>
							  <option value="3">Laptops</option>
							  <option value="4">Home Theatres</option>
							  <option value="5">Softwares</option>
					  	  </select>
                        </div>
                      </div>     
                      
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">                  
                          <button type="submit" class="btn btn-default">Upload</button>
                        </div>
                      </div>
                    </form>
                </div>
                <div class="col-md-3"><!-- dummy --></div>
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