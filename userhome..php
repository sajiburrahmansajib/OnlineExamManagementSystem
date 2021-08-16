<?php include_once("connection.php"); ?>
<?php
	session_start();
	if (!isset($_SESSION['user_id'])) {
      header('Location: sign_up_log_in.php');
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
$errorMassage ="";
$succ = "";
$emailErr="";
$u_id="";
if(isset($_POST['submit2']))
    { 
    $selected_val1 = $_POST['take'];
    $selected_val2 = $_POST['difficulty'];
    $_SESSION['course']=$selected_val1;
        header("Location:test.php?id=$selected_val1&name=$selected_val2");
        exit;
		
    }
    else
    {
        
    }
	
?>