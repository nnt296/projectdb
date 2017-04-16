<?php
ob_start();

function phpAlert ($msg){
	echo '<script type="text/javascript">alert("' .$msg. '");</script>';
}

include 'log.html';
include 'connectdb.php';
if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['signin'])){

	if ($_POST['email'] != "" && $_POST['password'] != ""){
		$email = $_POST['email'];
		$password = $_POST['password'];

		$email = stripcslashes(mysqli_real_escape_string($conn,$email));
		$password = stripcslashes(mysqli_real_escape_string($conn,$password));

		$query = sprintf( "SELECT * 
						   FROM account 
						   WHERE Email='%s' 
						   AND Password='%s'", 
						   $email,
					 	   $password);

		mysqli_select_db($conn,"user");
		$result = mysqli_query($conn, $query);
		$row = mysqli_fetch_array($result);

		$count = mysqli_num_rows($result);
		if ($count != 1){
			$warning = '<div class="alert alert-danger text-center">
	  						<strong>Warning!</strong> Incorrect email or password!
				  		</div>';
			$text = '<script type="text/javascript">
				        document.getElementById("checklogin").innerHTML = "<div class=\"alert alert-warning text-center\"><strong>Warning!</strong> Incorrect email or password! Redirect in 3s!</div>"
				    </script>';
			echo $text;
			header("refresh: 3; url= login.php");
		} else {
			session_start();
			$_SESSION['login_user'] = $email;
			$success = '<script type="text/javascript">
				        document.getElementById("checklogin").innerHTML = "<div class=\"alert alert-success text-center\"><strong>Success!</strong> Connected! Redirect in 3s!</div>"
				    </script>';
			echo $success;
			header("refresh: 3; url=index.php");
			// echo "<script>setTimeout(\"location.href = 'index.php';\",1500);</script>";
		}
	}

}

ob_end_flush();
?>
<!-- 0438687378 -->