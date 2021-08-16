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

		if (empty($_POST['password']) || empty($_POST['password1'])){
			echo "<script type='text/javascript'>alert('Fild Is Empty!')</script>";

			
		}
        else
        {   $u_id=$_SESSION['user_id'];
            $pass =MD5($_POST['password']);
			$new_pass = MD5($_POST['password1']);

			$sql = " SELECT COUNT(*) FROM user WHERE( user_id='".$u_id."' AND password='".$pass."') ";

			$qury = mysqli_query($conn, $sql);

			$result = mysqli_fetch_array($qury);
			
			if($result[0]>0)
            {
                $sessionSql = "UPDATE user SET password = '".$new_pass."' WHERE user_id ='".$u_id."'";
				if(mysqli_query($conn, $sessionSql)){
				header('location: userhome.php');
				exit;				
            }
		}
            else
            {
				echo "<script type='text/javascript'>alert('Invalid User Old Password!')</script>";
            }
        }
    }
     			
?>