<?php
	require "connect.php";
	$email = $_POST['email'];
	// $email = "123";
	$query = "INSERT INTO resetpassword VALUES(null, '$email')";

	if(mysqli_query($con,$query)){
		echo "OK";
	}else{
		echo "Fail";
	}
?>