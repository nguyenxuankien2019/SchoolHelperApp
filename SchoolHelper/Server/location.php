<?php
	require "connect.php";
	class Location{
		function Location($idlocation,$latmap,$longmap,$stay){
			$this->idlocation = $idlocation;
			$this->latmap = $latmap;
			$this->longmap = $longmap;
			$this->stay= $stay;
		}
	}

	$arraylocation = array();
	$query = "SELECT * FROM location";
	$data = mysqli_query($con,$query);
	while ($row = mysqli_fetch_assoc($data)){
		array_push($arraylocation, new Location(
			$row['idlocation']
			,$row['latmap']
			,$row['longmap']
			,$row['stay']
						));
	}
	echo json_encode($arraylocation);
?>