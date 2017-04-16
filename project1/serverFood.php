<?php
/**
 * Created by PhpStorm.
 * User: ThanhNN
 * Date: 31/03/2017
 * Time: 12:48 CH
 */
ob_start();
session_start();
require_once ("connectdb.php");

if (isset($_GET['cat']) && $_GET['cat']!= ""){

    $cat = mysqli_real_escape_string($conn,$_GET['cat']);
    if ($cat == "all"){
        $query = 'SELECT Foodname,Description,Image,FoodID FROM food';
    }
    else {
        $query = sprintf('SELECT Foodname,Description,Image,FoodID 
                             FROM food 
                             WHERE Category1 LIKE "%%%s%%"',$cat);
    }
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ( $count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        if (isset($_SESSION['login_user'])){
            $userID = array(
                'id' => $_SESSION['login_user']
            );
            array_push($json,$userID);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else {
        echo "<p>Error databases</p>";
    }
}
mysqli_close($conn);
ob_end_flush();
?>