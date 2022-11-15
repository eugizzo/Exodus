<?php

include '../db/connection.php';

$id=$_GET['id'];

$query="DELETE FROM `users` WHERE  id=$id";
$delete= $conn->query($query);
if($delete){
    ?> 
	<script type="text/javascript">
		alert("user deleted");
		location.href='listUser.php';
	</script>
	
	<?php 
}

?>