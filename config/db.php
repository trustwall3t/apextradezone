<?php

/* 
	Database credentials. 
	Assuming you are running MySQL
	server with default setting (user 'root' with no password) 
*/

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'u307323823_apextrade');
define('DB_PASSWORD', 'Franklin2025%');
define('DB_NAME', 'u307323823_apextrade');
 
/* Attempt to connect to MySQL database */

$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);
 
// Check connection

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
};

?>