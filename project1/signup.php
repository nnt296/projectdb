<?php
ob_start();

require_once('connectdb.php');

if (isset($_POST['fname']) && isset($_POST['lname']) && isset($_POST['email']) && isset($_POST['pass']) && isset($_POST['signup'])) {

    if ($_POST['email'] != "" && $_POST['pass'] != "") {
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];

        $email = stripcslashes(mysqli_real_escape_string($conn, $email));
        $pass = stripcslashes(mysqli_real_escape_string($conn, $pass));
        $fname = stripcslashes(mysqli_real_escape_string($conn, $fname));
        $lname = stripcslashes(mysqli_real_escape_string($conn, $lname));

        mysqli_select_db($conn, "user");
        $query = sprintf("SELECT Email FROM account WHERE Email = '%s'", $email);
        $result = mysqli_query($conn, $query);
        $count = mysqli_num_rows($result);


        if ($count != 0) {
            echo "Error";
        } else {
            $query = sprintf("INSERT INTO account (Email,Password,First_Name,Last_Name)
							   VALUES ('%s','%s','%s','%s')",
                $email, $pass, $fname, $lname);

            $result = mysqli_query($conn, $query);

            if ($result) {
                session_start();
                $_SESSION['login_user'] = $email;
                echo "Success";
            }
        }
    } else {
        echo "Null";
    }
}
ob_end_flush();
?>