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
    require_once('connectdb.php');
    mysqli_select_db($conn, 'user');
    if (isset($_POST['submit'])) {
        $date = date('Y-m-d H:i:s');

        $data = json_decode($_POST['submit'],true);
        $text = "";
        foreach ($data as $element){
            foreach ($element as $key=>$value){
                $query = sprintf('INSERT INTO pur_his VALUE ("%s","%s",%d,"%s")',
                    $_SESSION['login_user'],
                    $key,
                    intval($value),
                    $date);

                $result = mysqli_query($conn, $query);
                if (!$result){
                    die("Error database");
                }
            }
        }
    }
    if (isset($_GET['state']) && isset($_GET['code'])) {
        if ($_GET['state'] == 'add') {
            $code = mysqli_real_escape_string($conn, stripslashes($_GET['code']));

            $query = sprintf('SELECT Foodname FROM food WHERE FoodID = "%s"', $code);
            $result = mysqli_query($conn, $query);
            $count = mysqli_num_rows($result);

            if ($count == 1) {
                $json = [];
                $row = mysqli_fetch_array($result, MYSQLI_ASSOC);

                array_push($json, $row);
                $json = json_encode($json);
                header('Content-Type: application/json');
                echo $json;
            } else {
                echo "<strong>Error database</strong>";
            }
        }
    }
}

ob_end_flush();
?>