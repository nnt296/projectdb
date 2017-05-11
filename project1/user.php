<?php
ob_start();
session_start();

if (isset($_GET['acc'])) {
    if (!isset($_SESSION['login_user'])) {
        die("Error");
    }
    $email = $_SESSION['login_user'];
    if ($_GET['acc'] == 'profile') {
        if (isset($_SESSION['login_user'])) {
            require_once('connectdb.php');
            mysqli_select_db($conn, 'user');
            $query = sprintf("SELECT Email, First_Name,Last_Name,Phone,Address,date(Birthday) as Birthday FROM account WHERE Email='%s'", $email);
            $result = mysqli_query($conn, $query);
            $count = mysqli_num_rows($result);
            if ($count != 1) {
                die("Database problem!");
            }
            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
            $json = [];
            array_push($json, $row);
            $json = json_encode($json);
            header('Content-Type: application/json');
            echo $json;
        }
    }
    if ($_GET['acc'] == 'edit') {

    }
    if ($_GET['acc'] == 'history') {
        require_once('connectdb.php');
        mysqli_select_db($conn, 'user');
        $query = sprintf("SELECT t.DishID, t.Quantity, date(t.Date) 
                                FROM account a NATURAL JOIN transaction t 
                                WHERE a.Email='%s'", $email);
        $result = mysqli_query($conn, $query);
        $count = mysqli_num_rows($result);
        $json = [];
        if ($count < 1) {
            $array = array(
                "status" => "No record"
            );
            array_push($json,$array);
            $json = json_encode($json);
            header('Content-Type: application/json');
            echo $json;
            die();
        }
        while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            array_push($json, $row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
}
mysqli_close($conn);
ob_end_flush();
?>