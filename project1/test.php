<?php
/**
 * Created by PhpStorm.
 * User: ThanhNN
 * Date: 11/04/2017
 * Time: 2:07 CH
 */

if (isset($_GET['cat']) and  $_GET['cat'] == 'all'){
    require_once ('connectdb.php');
    $query = 'SELECT Foodname,Description,Image,FoodID FROM food';
    mysqli_select_db($conn, 'user');
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
//        foreach ($json as $item){
//            echo $item['Foodname'] . $item['Description'] . $item['Image'] . $item['FoodID'];
//            echo "<br>";
//        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else {
        echo "Error database";
    }
}