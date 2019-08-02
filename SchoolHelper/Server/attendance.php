<?php
	require "connect.php";
	class attendance{
		function attendance($idLichhoc,$ngay,$phong,$giangduong,
			$ma_monhoc	,$mon,$lop,$giangvien,$thoigian,$chitiet){
			$this->idLichhoc = $idLichhoc;
			$this->ngay	 = $ngay;
			$this->phong = $phong;
			$this->giangduong= $giangduong;
			$this->ma_monhoc= $ma_monhoc	;
			$this->mon = $mon;
			$this->lop = $lop;
			$this->giangvien= $giangvien;
			$this->thoigian = $thoigian;
			$this->chitiet = $chitiet;
			
		}
	}

	$arrayattendance = array();
	$query = "SELECT * FROM attendance";
	$data = mysqli_query($con,$query);
	while ($row = mysqli_fetch_assoc($data)){
		array_push($arrayattendance, new attendance(
			$row['idLichhoc']
			,$row['ngay']
			,$row['phong']
			,$row['giangduong']
			,$row['ma_monhoc']
			,$row['mon']
			,$row['lop']
			,$row['giangvien']
			,$row['thoigian']
			,$row['chitiet']
						));
	}
	echo json_encode($arrayattendance);
?>