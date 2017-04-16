<?php
ob_start();
session_start();
if (!isset($_SESSION['login_user'])){
	include 'template.html';
}
else{
	// include 'home.html';
	$text = file_get_contents('home.html');
	$text = str_replace('{usermail}',$_SESSION['login_user'], $text);
	echo $text;
}
ob_end_flush(); 
?>