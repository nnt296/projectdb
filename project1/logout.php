<?php 
	ob_start();

	session_start();
	session_destroy();

?>
<!DOCTYPE html>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="icon.jpg">

    <title>Login</title>

    <link href="./Login_files/bootstrap.min.css" rel="stylesheet">
    <link href="./Login_files/ie10-viewport-bug-workaround.css" rel="stylesheet">
    <link href="./Login_files/signin.css" rel="stylesheet">
    <script src="./Login_files/ie-emulation-modes-warning.js"></script>
  </head>

  <body>
    <script src="./Login_files/ie10-viewport-bug-workaround.js"></script>
</body></html>


<?php
	echo '<div class="alert alert-warning text-center">
  				<strong>Warning!</strong> You have been logged out! Redirect in 3s!
			  </div>';
	header("refresh: 3; url=index.php");

	ob_end_flush();
?>