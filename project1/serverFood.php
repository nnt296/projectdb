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
        $query = 'SELECT * FROM food';
    }
    else {
        $query = sprintf('SELECT * FROM food WHERE Name LIKE "%%%s%%"',$cat);
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
    $query = sprintf('SELECT * FROM vendor
                            WHERE Vendor_Name LIKE "%%%s%%"', $place);
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
if (isset($_GET['splace']) && $_GET['splace'] != ""){

    $splace = mysqli_real_escape_string($conn, $_GET['splace']);
    $query = sprintf('SELECT * FROM vendor
                            WHERE VendorID = %s', $splace);
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
    $query = sprintf('SELECT f.Name,f.Description,f.Image,f.FoodID,d.Price,d.DishID
                            FROM food as f NATURAL JOIN dish d
                            WHERE d.VendorID = %s', $fplace);
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
if (isset($_GET['fprice']) && $_GET['fprice'] != ""){
    $fprice = mysqli_real_escape_string($conn, $_GET['fprice']);
    $query = sprintf('SELECT v.Vendor_Name, v.Open_Time, v.Close_Time, v.Quality, d.DishID, d.Price
                            FROM dish d NATURAL JOIN vendor v
                            WHERE d.FoodID="%s"', $fprice);
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
        echo "Error";
    }
}
mysqli_close($conn);
ob_end_flush();
?>