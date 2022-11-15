<?php
include '../db/connection.php';


	$album=$_POST["album"];
	$name=$_POST["name"];
	$links=$_POST["links"];
	if(isset($_POST["submit"]) && !empty($_POST["album"])&& !empty($_POST["name"])&& !empty($_POST["links"])){
	$insert="INSERT INTO songs( album, name,links) VALUES (?,?,?)";
	$query=$conn->prepare($insert);
	
	$query->execute(array($album,$name,$links));
	if ($query) {
		$message="song inserted Successfully"
	?> 
	<script type="text/javascript">
		alert(" Successfully");
		location.href='addsong.php';
	</script>
	
	<?php  
	
	}

	}
	else {
		?> 
	<script type="text/javascript">
		alert("please fill all data");
		location.href='adduser.php';
	</script>
	
	<?php 
}
   
   ?>

	
	
	 