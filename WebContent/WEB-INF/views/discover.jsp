<!DOCTYPE html>
<html lang="en">
 <head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>SPT MarketPlace - Discover</title>
		<link rel="stylesheet" href="assets/css/bootstrap.min.css">
		<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
		<link rel="stylesheet"
			href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/myStyles.css">
		
    <script> 
    $(function(){
      $("#includedContent").load("mainHeader.html"); 
    });
    </script> 
		</head>
  <body>
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
              <li><a href="home" class="active"><span class="glyphicon glyphicon-search"></span><br><h3 style=" font-size:1.3em">Discover</h3></a></li>
              <li><a href="dashboard"><span class="glyphicon glyphicon-text-width"></span><br><h3 style=" font-size:1.3em">Dashboard</h3></a></li>
              <li><a href="upload"><span class="glyphicon glyphicon-plus"></span><br><h3 style=" font-size:1.3em">Upload</h3></a></li>
              <li><a href="settings" class=""><span class="glyphicon glyphicon-cog"></span><br><h3 style=" font-size:1.3em">Settings</h3></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  <div class="page">
      <div class="page-container">
		<div class="container">
			<!-- <div class="row">
				<div class="span10">
					<div class="col-md-0 col-md-offset-0">
						<label class="col-sm-5 control-label" style="color:red"><h3>Search From All Items</h3></label>
						<div class="col-sm-10">
                          <input type="text" class="form-control" id="searchQ" placeholder="Enter your search description" name="searchQ">
                        </div>
						<div class="col-sm-2">
                          <button type="submit" class="btn btn-default">Search Query</button>
                        </div>
				</div>
			</div>
			</div> -->
			<br>
			<br>
			<br>
			<div class="row">
				<div class="span12"> 
				<div id='container'>
				<div class="col-md-0 col-md-offset-0">
				<label class="col-sm-10 control-label" style="color:red"><h3>Select one of the following categories to browse</h3></label>
				</div>
				 <div id='mobiles'><a href="browse?category=1"><h4 style="font-weight:bold">Mobiles</h4></a></div>
				 <div id='laptops'><a href="browse?category=3"><h4 style="font-weight:bold">Laptops</h4></a></div>
				 <div id='automobiles'><a href="browse?category=2"><h4 style="font-weight:bold">Automobiles</h4></a></div>
				 <div id='homeTheatres'><a href="browse?category=4"><h4 style="font-weight:bold">Home Theatres</h4></a></div>
				 <div id='softwares'><a href="browse?category=5"><h4 style="font-weight:bold">Softwares</h4></a></div>
				</div>	
					</div>
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