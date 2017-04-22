<?php
/**
 * Created by PhpStorm.
 * User: ThanhNN
 * Date: 31/03/2017
 * Time: 10:28 CH
 */
ob_start();
session_start();
if (!isset($_SESSION['login_user'])) {
    $text = "<strong>Please login to order!</strong>";
    echo $text;
} else {

    if (isset($_GET['state']) && isset($_GET['code'])) {
        if ($_GET['state'] == 'add') {
            require_once('connectdb.php');
            $code = mysqli_real_escape_string($conn, stripslashes($_GET['code']));

            mysqli_select_db($conn, 'user');
            $query = sprintf('SELECT Foodname FROM food WHERE FoodID = "%s"', $code);
            $result = mysqli_query($conn, $query);
            $count = mysqli_num_rows($result);

            if ($count == 1) {
                $json = [];
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                array_push($json,$row);
                $json = json_encode($json);
                header('Content-Type: application/json');
                echo $json;
            } else {
                echo "<strong>Error database</strong>";
            }
        }
        if ($_GET['state'] == 'remove'){

        }
    }
}

ob_end_flush();
?>