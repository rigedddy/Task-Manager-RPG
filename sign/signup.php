<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Signup Form</title>
  <link href="signup.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="back">
			<img class="work" src="../img/dice.png">
  </div>
	<div class="box">
		<form autocomplete="off" action="../include/insert.php" method="post">
			<h2>Sign up</h2>
			<div class="inputBox">
				<input type="text" required="required" name="name">
				<span>Name</span>
				<i></i>
			</div>
			<div class="inputBox">
				<input type="text" required="required" name="username">
				<span>Username</span>
				<i></i>
			</div>
			<div class="inputBox">
				<input type="date" required="required" name="dob">
				<span>Date of Birth</span>
				<i></i>
			</div>
			<div class="inputBox">
				<input type="email" required="required" name="email">
				<span>Email</span>
				<i></i>
			</div>
			<div class="inputBox">
				<input type="password" required="required" name="pass">
				<span>Password</span>
				<i></i>
			</div>
			<div class="links">
				<a href="#">Already have an account?</a>
				<a href="signin.php">Login</a>
			</div>
			<input type="submit" value="Sign Up" name="signup">
		</form>
	</div>
</body>
</html>

