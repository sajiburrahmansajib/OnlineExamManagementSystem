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
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/w3.css">
        <title>Online Exam System</title>
    </head>
    <style> 
        .bgimg {
    background-image:url('./image/paper.jpg');
    background-size: 103% 920px;
    background-repeat: no-repeat;
               }
    .font {
    font-family: "Comic Sans MS", cursive, sans-serif;
    }

     </style>
    <body class="bgimg">
        <ul class="w3-navbar w3-black">
        <li><a class="w3-text-blue" href="#"><?php echo $_SESSION['user_name'];?></a></li>
            
        <li class="w3-dropdown-hover"><a href="#">Edit Profile<i class="fa fa-caret-down"></i></a>
      <div class="w3-dropdown-content w3-white w3-card-4">
                <a href="update_general.php">General</a>
                <a href="update_password.php">Update Password</a>
          </div>
    </li>
        
        <li class="w3-right w3-teal"><a href="logout.php">Log Out</a></li>
    </ul>