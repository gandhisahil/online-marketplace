<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="./assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="./assets/css/bootstrap-theme.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="./assets/js/bootstrap.min.js"></script>
</head>
<body>
    
    <div class="page container">
        <header class="page-header">
            <h1>Register</h1>
        </header>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <form class="form-horizontal" role="form" action="register" method="post">
                      <h4>Personal Details..</h4>
                      <div class="form-group">
                        <label for="inputFirstName" class="col-sm-2 control-label">First Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="fname" placeholder="John" name="fname">
                          <span class="bg-danger">${messages.name}</span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputLastName" class="col-sm-2 control-label">Last Name</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="lname" placeholder="Doe" name="lname">
                          <span class="bg-danger">${messages.name}</span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="email" placeholder="johndoe@company.com" name="email">
                          <span class="bg-danger">${messages.email}</span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">
                          <input type="password" class="form-control" id="password" placeholder="Password" name="password">
                          <span class="bg-danger">${messages.pass}</span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPhone" class="col-sm-2 control-label">Phone Number</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="phone" placeholder="9123456780" name="phone">
                          <span class="bg-danger">${messages.phone}</span>
                        </div>
                      </div>
                      <h4>Address Details..</h4>
                      <span class="bg-danger">${messages.address}</span>
                      <div class="form-group">
                        <label for="inputAddress1" class="col-sm-2 control-label">Address Line 1</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="addressLine1" placeholder="Address" name="addressLine1">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputAddress2" class="col-sm-2 control-label">Address Line 2</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="addressLine2" placeholder="Address" name="addressLine2">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputArea" class="col-sm-2 control-label">Area</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="area" placeholder="Matunga" name="area">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputCity" class="col-sm-2 control-label">City</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="city" placeholder="Mumbai" name="city">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputState" class="col-sm-2 control-label">State</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="state" placeholder="Maharashtra" name="State">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="inputPincode" class="col-sm-2 control-label">Pincode</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="pin" placeholder="400001" name="pin">
                        </div>
                      </div>
                      <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <button type="submit" class="btn btn-default">Register</button>
                        </div>
                      </div>
                    </form>
                </div>
                <div class="col-md-4"><!-- dummy --></div>
            </div>
        </div>
    </div>
    
</body>
</html>