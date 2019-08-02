<?php 
	$hostname = "localhost";
	$username = "root";
	$password = "";
	$databasename = "networking";

	$con = mysqli_connect($hostname,$username,$password,$databasename);
	mysqli_query($con,"SETNAME 'utf8'");

?>