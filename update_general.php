<?php include_once("connection.php"); ?>
<?php
	session_start();
	if (!isset($_SESSION['user_id'])) {
     header('Location: userhome.php');
      exit;
  	}
 

?>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>



<?php

if(isset($_POST['submit'])){

		if (empty($_POST['name']) || empty($_POST['phone']) || empty($_POST['address'])){

			echo "<script type='text/javascript'>alert('Field Is Empty!')</script>";
		}
        else{
            $phone = $_POST['phone'];
			$u_id=$_SESSION['user_id'];
			$name = $_POST['name'];
			$address = $_POST['address'];
            $sex = $_POST['gender'];
			

			$sql = "UPDATE user SET user_name = '".$name."', phone = '".$phone."', address = '".$address."',sex = '".$sex."'  WHERE user_id ='".$u_id."'";

			if (mysqli_query($conn, $sql)) {
				$_SESSION['user_name'] = $name;
				header('location: userhome.php');
				exit;
			} 
			else {
				echo "<script type='text/javascript'>alert('Failed!')</script>";
			}
        }
	}
?>