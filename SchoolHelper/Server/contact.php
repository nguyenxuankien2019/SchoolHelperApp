<?php
	require "connect.php";
	
			
			$contact_title = $_POST['Contact_Title'];
			$contact_content = $_POST['Contact_Content'];

				$query = "INSERT INTO feelback VALUES(null,'$contact_title','$contact_content)"	;
				
				if(mysqli_query($con,$query)){
					echo "success";
				}else{
					echo "false";
				}
		

	
?>