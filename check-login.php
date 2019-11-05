<?php
session_start();
error_reporting(0);
?>

<!doctype html>
<html lang="en">
	<head>
		<title>Login</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
		<link rel="stylesheet" href="css/custom.css">
	</head>
	<body>
		<div class="container">
		
			<?php
			include 'conn.php';	
			$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
			if (!$conn) {
				die("Connection failed: " . mysqli_connect_error());
			}
			$email = $_POST['email']; 
			$password = $_POST['password'];
			
			$result = mysqli_query($conn, "SELECT email, password, name FROM user WHERE email = '$email'");
			
			$row = mysqli_fetch_assoc($result);
			
			 $hash = $row['password']; 
			

			if (password_verify($_POST['password'], $hash)) {	
				
				
			echo "<div class='alert alert-danger mt-4' role='alert'>Email o Contraseña incorrecto!
				<p><a href='login.html'><strong>Please try again!</strong></a></p></div>";
			} else {
				$_SESSION['loggedin'] = true;
				$_SESSION['name'] = $row['name'];
				$_SESSION['start'] = time();
				$_SESSION['expired'] = $_SESSION['start'] + (1 * 60) ;						
				
				echo "<div class='alert alert-success mt-4' role='alert'><strong>Welcome!</strong> $row[name]			
				<p><a href='menu.html'>¡Ingresa!</a></p>";	
				echo "<div class='alert alert-success' role='alert>
				<h4 class='alert-heading'>Well done!</h4>
				<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
				<hr>
				<p class='mb-0'>Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
			  </div>";				
			}	
			?>
		</div>

		<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>

	</body>
</html>