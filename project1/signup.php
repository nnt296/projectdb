<?php
ob_start();

// function phpAlert ($msg){
// 	echo '<script type="text/javascript">alert("' .$msg. '");</script>';
// }
require_once ('connectdb.php');
// include 'connectdb.php';

if (isset($_POST['fname']) && isset($_POST['lname']) && isset($_POST['emailadd']) && isset($_POST['npassword']) && isset($_POST['signup'])){

	if ($_POST['emailadd'] != "" && $_POST['npassword'] != ""){
		$email = $_POST['emailadd'];
		$pass = $_POST['npassword'];
		$fname = $_POST['fname'];
		$lname = $_POST['lname'];

		$email = stripcslashes(mysqli_real_escape_string($conn,$email));
		$pass = stripcslashes(mysqli_real_escape_string($conn,$pass));
		$fname = stripcslashes(mysqli_real_escape_string($conn,$fname));
		$lname = stripcslashes(mysqli_real_escape_string($conn,$lname));

		mysqli_select_db($conn,"user");
		$query = sprintf("SELECT em FROM account WHERE em = '%s'",$email);
		$result = mysqli_query($conn,$query);
		$count = mysqli_num_rows($result);

		
		if ($count != 0){
			require_once('login.php');
			$warning = '<script type="text/javascript">
				        document.getElementById("checksignup").innerHTML = "<div class=\"alert alert-danger text-center\"><strong>Warning!</strong> Existed email!</div>"
				    </script>';
			echo $warning;
		}
		else {
			$query = sprintf( "INSERT INTO account (Email,Password,First_Name,Middle_and_Last_Name)
							   VALUES ('%s','%s','%s','%s')",
							   $email,$pass,$fname,$lname);
			
			$result = mysqli_query($conn,$query);

			if ($result){
				require_once ('login.php');
				$success = '<script type="text/javascript">
					        document.getElementById("checksignup").innerHTML = "<div class=\"alert alert-success text-center\"><strong>Success!</strong> Signed up!</div>"
					    </script>';
				echo $success;
				session_start();
				$_SESSION['login_user'] = $email;
				header("refresh: 3; url=index.php");
			} 
		}
	}
}


ob_end_flush();
?>