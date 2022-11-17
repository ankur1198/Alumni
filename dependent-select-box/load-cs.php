<?php

	$conn = mysqli_connect("localhost","root","","alumni") or die("Connection failed");

	if($_POST['type'] == ""){
		$sql = "SELECT * FROM course_tb";

		$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

		$str = "";
		while($row = mysqli_fetch_assoc($query)){
		  $str .= "<option value='{$row['cid']}'>{$row['cname']}</option>";
		}
	}else if($_POST['type'] == "stateData"){

		$sql = "SELECT * FROM batch_tb WHERE course = {$_POST['id']}";

		$query = mysqli_query($conn,$sql) or die("Query Unsuccessful.");

		$str = "";
		while($row = mysqli_fetch_assoc($query)){
		  $str .= "<option value='{$row['bid']}'>{$row['batch']}</option>";
		}
	}

	echo $str;
 ?>
