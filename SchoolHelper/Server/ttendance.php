<?php
	require "connect.php";
	class Attendance{
		function Attendance($idAttendance,$subject,$paramore,$mrrs,$firstname,$lastname){
			$this->idAttendance = $idAttendance;
			$this->subject = $subject;
			$this->paramore = $paramore;
			$this->mrrs	= $mrrs;
			$this->firstname = $firstname;
			$this->lastname = $lastname;
			
		}
	}

	$arrayAttendance = array();
	$query = "SELECT * FROM Attendance";
	$data = mysqli_query($con,$query);
	while ($row = mysqli_fetch_assoc($data)){
		array_push($arrayAttendance, new Attendance(
			$row['idAttendance']
			,$row['subject']
			,$row['paramore']
			,$row['mrrs']
			,$row['firstname']
						));
	}
	echo json_encode($arrayAttendance);
	if($data,$connect){
		echo "ok";
		else{
			echo "not ok";
		}
	}
?>