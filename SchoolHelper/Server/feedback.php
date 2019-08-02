<?php
	require "connect.php";
	$title = $_POST['title'];
	$content = $_POST['content'];

	$query = "INSERT INTO feedback VALUES(null, '$title','$content')";

	if(mysqli_query($con,$query)){
		echo "OK";
	}else{
		echo "Fail";
	}
?>