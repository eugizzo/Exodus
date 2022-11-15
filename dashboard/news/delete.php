<?php

include '../db/connection.php';
$id=$_GET['id'];

$query="DELETE FROM file WHERE id=$id";
$delete= $conn->query($query);

if($delete){
    ?> 
	<script type="text/javascript">
		location.href='postList.php';
	</script>
	
	<?php 
}

?>