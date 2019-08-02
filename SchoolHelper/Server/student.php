<?php
	require "connect.php";
	class Student{
		function Student($idsinhvien,$svhinh,$svten,$svblock,$svcode,$svcourse,$svstatus,$svphone,$svemail,$svaddress,$svspecialized,$svstart){
			$this->idsinhvien = $idsinhvien;
			$this->svhinh = $svhinh;
			$this->svten = $svten;
			$this->svblock = $svblock;
			$this->svcode = $svcode;
			$this->svcourse = $svcourse;
			$this->svstatus = $svstatus;
			$this->svphone = $svphone;
			$this->svemail = $svemail;
			$this->svaddress = $svaddress;
			$this->svspecialized = $svspecialized;
			$this->svstart = $svstart;
		}
	}

	$arrayinfostudent = array();
	$query = "SELECT * FROM student";
	$data = mysqli_query($con,$query);
	while ($row = mysqli_fetch_assoc($data)){
		array_push($arrayinfostudent, new Student(
			$row['idsinhvien']
			,$row['svhinh']
			,$row['svten']
			,$row['svblock']
			,$row['svcode']
			,$row['svcourse']
			,$row['svstatus']
			,$row['svphone']
			,$row['svemail']
			,$row['svaddress']
			,$row['svspecialized']
			,$row['svstart']));
	}
	echo json_encode($arrayinfostudent);
?>