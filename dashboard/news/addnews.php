<?php 
include '../db/connection.php';
$statusMsg = '';
$title=$_POST['title'];
$description=$_POST['description'];
$uploadedBy=$_POST['uploaded_by'];
$files=$_FILES['file']['tmp_name'];
$filename=$_FILES['file']['name'];
$path='../img/news/'.$filename;
$fileType = pathinfo($path,PATHINFO_EXTENSION);
if(isset($_POST["submit"]) && !empty($_FILES["file"]["name"])){

// Allow certain file formats
$allowTypes = array('jpg','png','jpeg','gif','jfif');

if(in_array($fileType, $allowTypes)){

      // Upload file to server
if (move_uploaded_file($files,$path )) {

    // Insert image file name into database
$savefile=$conn->prepare("INSERT INTO `file`( `title`, `file_name`, `description`, `date`, `uploaded_by`) VALUES(?,?,?,?,?)");
$RESULT=$savefile->execute(array($title,$filename,$description,date('Y-m-d H:i:s'),$uploadedBy));
if($RESULT){
    // $statusMsg = "The file ".$filename. " has been uploaded successfully.";

    ?> 
	<script type="text/javascript">
		alert("The file <?=$filename; ?> has been uploaded successfully.");
		location.href='postList.php';
	</script>
	
	<?php 
}else{
    $statusMsg = "File upload failed, please try again.";
} 
}else{
$statusMsg = "Sorry, there was an error uploading your file.";
}
}else{
$statusMsg = 'Sorry, only JPG, JPEG, PNG, GIF, files are allowed to upload.';
}
}else{
$statusMsg = 'Please select a file to upload.';
}

// Display status message
echo $statusMsg;

