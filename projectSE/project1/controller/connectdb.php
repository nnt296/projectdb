<?php
	// define('DB_SERVER', 'localhost:3306');
	// define('DB_USERNAME', 'root');
	// define('DB_PASSWORD', '');
	// define('DB_DATABASE', 'user');

	$conn = mysqli_connect('localhost:3306','root','');
	if (!$conn){
		phpAlert("Can't connect to database server!");
	} 
	mysqli_query($conn,"SET character_set_results=utf8");
	mysqli_query($conn,"set names 'utf8'");
	mb_language('uni');
	mb_internal_encoding('UTF-8');
?>