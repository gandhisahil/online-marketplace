<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="page container">
		<header class="page-header">
			<h1>Login</h1>
		</header>

		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<%-- <span class="bg-danger">${messages.default}</span>
					<span class="bg-danger">${error.default}</span> --%>
					<form class="form-horizontal" role="form" action="login" method="post">
						<div class="form-group">
							<label for="inputEmail" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="email" class="form-control" id="email"
									placeholder="Email" name="email">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword" class="col-sm-2 control-label">Password</label>
							<div class="col-sm-10">
								<input type="password" class="form-control" id="password"
									placeholder="Password" name="password">
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<button type="submit" class="btn btn-default">Sign in</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-md-4">
					<!-- dummy -->
				</div>
			</div>
		</div>
	</div>

</body>
</html>