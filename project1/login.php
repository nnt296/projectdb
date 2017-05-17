<?php
ob_start();

require_once ('connectdb.php');
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
			echo "Error";
		} else {
			session_start();
			$_SESSION['login_user'] = $email;
            echo "Success";
		}
	}
    else {
	    echo "Error";
    }
}

ob_end_flush();
?>