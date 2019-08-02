<?php

require "connect.php";

	$taikhoan=$_POST['taikhoan'];
	$matkhau=$_POST['matkhau'];
// $taikhoan ="kien";
// $matkhau="123";
	class Account{
		function Account($id,$taikhoan,$matkhau){
			$this->Id=$id;
			$this->Taikhoan=$taikhoan;
			$this->Matkhau=$matkhau;
		}
	}

	if(strlen($taikhoan) >0 && strlen($matkhau) >0){
		$mangaccount = array();
		$query="SELECT * FROM account WHERE FIND_IN_SET('$taikhoan',taikhoan) AND FIND_IN_SET('$matkhau',matkhau)"
	;
	$data=mysqli_query($con,$query);
	if($data){
		while (($row = mysqli_fetch_assoc($data))) {
			array_push($mangaccount, new Account($row['id'],
													$row['taikhoan'],
													$row['matkhau']));
		}
		if(count($mangaccount) >0){
			echo json_encode($mangaccount);
		}else{
			echo "fail";
		}
	}
}else{
	echo"null";
}

?>