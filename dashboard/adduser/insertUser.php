<?php
include '../db/connection.php';


	$user_name=$_POST["username"];
	$email=$_POST["email"];
	$password=$_POST["password"];
	$phone=$_POST["phone"];
	$pass=sha1($password);
	$userType="Admin";
	if(isset($_POST["submit"]) && !empty($_POST["username"])&& !empty($_POST["email"]) && !empty($_POST["phone"])&& !empty($_POST["password"])){
	$insert="INSERT INTO `users`(`username`, `email`, `phone`, `password`,`userType`) VALUES (?,?,?,?,?)";
	$query=$conn->prepare($insert);
	
	
	$query->execute(array($user_name,$email,$phone,$password,$userType));
	if ($query) {
		$message="data inserted Successfully"
	?> 
	<script type="text/javascript">
		alert("Registration Done Successfully");
		location.href='adduser.php';
	</script>
	
	<?php  
	
	}
	 else {
			echo "data not inserted";
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

	// $result=$conn->query($insert);
	//  if ($result) {
	// 	 echo "user have been registed";
	//  }
	//  else{
	// 	 echo "not";
	//  }
//    }

// echo 'your username is: '.$user_name.'  '.$email.'  '.$password.'  '.$pass;
   
   ?>

	
	
	 