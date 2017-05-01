<?php
/**
 * Created by PhpStorm.
 * User: ThanhNN
 * Date: 31/03/2017
 * Time: 12:48 CH
 */
ob_start();
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
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else {
        echo "<p>Error databases</p>";
    }
}
if (isset($_GET['place']) && $_GET['place'] != ""){

    $place = mysqli_real_escape_string($conn, $_GET['place']);
    $query = sprintf('SELECT DISTINCT v.StoreID, v.StoreName, v.Address, v.Image
                            FROM vendor as v, food as f, purchase as p
                            WHERE v.StoreID = p.StoreID
                            AND f.FoodID = p.FoodID
                            AND f.Foodname LIKE "%%%s%%"', $place);
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
    else {
        echo "<p>Error databases</p>";
    }
}
if (isset($_GET['fplace']) && $_GET['fplace'] != ""){
    $fplace = mysqli_real_escape_string($conn, $_GET['fplace']);
    $query = sprintf('SELECT f.Foodname,f.Description,f.Image,f.FoodID,p.Price
                            FROM food as f, purchase as p
                            WHERE f.FoodID = p.FoodID
                            AND p.StoreID = "%s"', $fplace);
    mysqli_select_db($conn,"user");
    $result = mysqli_query($conn,$query);
    $count = mysqli_num_rows($result);

    if ($count > 0){
        $json = [];
        while ($row = mysqli_fetch_array($result,MYSQLI_ASSOC)){
            array_push($json,$row);
        }
        $json = json_encode($json);
        header('Content-Type: application/json');
        echo $json;
    }
}
mysqli_close($conn);
ob_end_flush();
?>