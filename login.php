<?php
 session_start();
 include 'dashboard/db/connection.php';

try{

if(isset($_POST['username']) && isset($_POST['password'])){

$username=trim($_POST['username']);
$password=strip_tags(trim($_POST['password']));

$login="SELECT *FROM users WHERE username=? AND password=?";
$query=$conn->prepare($login);
$query->execute(array($username,$password));

$row=$query->fetch();
$_SESSION['userType']=$row['userType'];
if ($row>0) {
	$_SESSION['username'] =$username;
if ($_SESSION['userType']=='Admin') {

	?> 
	<script type="text/javascript">
		alert("login successfull, Welcome <?php echo $username ?> to Exodus Dashboard ");
		location.href='dashboard/index.php';
	</script>
	
	<?php 
}
if ($_SESSION['userType']=='endUser'){


    ?> 
	<script type="text/javascript">
		alert("password and email not match  please try again !! ");
		location.href='endUserDashboard/index.php';
	</script>
	
	<?php 
}


}

}}
catch(PDOExeption $e){
	echo "error".$e->getmessage();
}
?>

