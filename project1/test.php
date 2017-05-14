<?php
// Handling data in JSON format on the server-side using PHP
//
//header("Content-Type: application/json");
//// build a PHP variable from JSON sent using POST method
//$v = json_decode(stripslashes(file_get_contents("php://input")));
//// build a PHP variable from JSON sent using GET method
//$v = json_decode(stripslashes($_GET["data"]));
//// encode the PHP variable to JSON and send it back on client-side
//echo json_encode($v);

require_once('connectdb.php');
mysqli_select_db($conn, 'user');
$date = date('Y-m-d H:i:s');
$key = "NO004";
$value = "1";

$query = sprintf('INSERT INTO pur_his VALUE ("%s","%s",%d,"%s")',
    "thanh@gmail.com",
    $key,
    intval($value),
    $date);

$result = mysqli_query($conn, $query);

if (!$result) {
    die("Error database");
}
//                $text .= $query;
mysqli_close($conn);
?>