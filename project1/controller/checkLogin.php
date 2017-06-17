<?php
/**
 * Created by PhpStorm.
 * User: ThanhNN
 * Date: 22/04/2017
 * Time: 11:31 SA
 */
ob_start();
session_start();
$json = [];
if (isset($_SESSION['login_user'])){
    $userID = array(
        'id' => $_SESSION['login_user']
    );
    array_push($json,$userID);
}
else {
    $userID = array(
        'id' => 0
    );
    array_push($json,$userID);
}

$json = json_encode($json);
header('Content-Type: application/json');
echo $json;

ob_end_flush();
?>