<?php
	require "connect.php";

	$user = $_POST["user"];
	$pass = $_POST["pass"];

	class Student{
		function Student($idsv,$user,$pass){
			$this->idsv = $idsv;
			$this->user = $user;
			$this->pass = $pass;
		}
	}

	if(strlen($user) > 0 && strlen($pass) > 0) {
		$mangsinhvien = array();
		$query = "SELECT * FROM login WHERE FIND_IN_SET('$user', user) AND FIND_IN_SET('$pass', pass)";
		$data = mysqli_query($con,$query);
		if($data){
			while($row = mysqli_fetch_assoc($data)){
				array_push($mangsinhvien, new Student($row['idsv'],
													$row['user'],
													$row['pass']));
			}
			if(count($mangsinhvien)>0){
				echo json_encode($mangsinhvien);
			}else{
				echo "Fail";
			}
		}else{
			echo "Null";
		}
	}
?>