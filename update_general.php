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
<!DOCTYPE html>

<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/w3.css">
        <title>Online Exam System</title>
    </head>
    <style> 
        .bgimg {
 
    background-size: 103% 920px;
    background-repeat: no-repeat;
               }
    .font {
    font-family: "Comic Sans MS", cursive, sans-serif;
    }

     </style>
    <body class="bgimg">
        <ul class="w3-navbar w3-black">
        <li><a href="userhome.php"><?php echo $_SESSION['user_name'];?></a></li>
		<li class="w3-dropdown-hover w3-text-blue"><a href="#">Update Profile<i class="fa fa-caret-down"></i></a>
            <div class="w3-dropdown-content w3-white w3-card-4">
                <a href="update_password.php">Update Password</a>
          </div>
      
        <li class="w3-right w3-teal"><a href="logout.php">Log Out</a></li>
    </ul>
    
	       <div class = "w3-container w3-center">
            <div class="w3-card-4 w3-half w3-display-middle">
              <div class="w3-container w3-teal">
                <h2>Update Information </h2>
              </div>
                <form class="w3-container" action="" method="post">
                        <p>     
                        <label class="w3-label"><b>User Name</b></label>
                        <input class="w3-input w3-border w3-sand" name="name" type="text" placeholder = "User Name" required></p>     
                        <label class="w3-label"><b>Phone Number</b></label>
                        <input class="w3-input w3-border w3-sand" name="phone" type="tel" placeholder = "Phone" required=""></p> 
                        <label class="w3-label"><b>Address</b></label>
                        <input class="w3-input w3-border w3-sand" name="address" type="text" placeholder = "Address" required></p>
                        
                        <p>
                       <input class="w3-radio" type="radio" name="gender" value="male" checked>
                           <label class="w3-validate w3-text-red">Male</label></p>
                         <p>
                            <input class="w3-radio" type="radio" name="gender" value="female">
                           <label class="w3-validate w3-text-blue">Female</label></p>


                         <div class="w3-half"> 
                             <input type="submit" class="w3-btn w3-btn-block w3-green" name="submit" value="Update">

                        </div>
                         
              </form>
            </div>
			</div>
         <?php
         mysqli_close($conn);
        ?>  
        <footer class="w3-container w3-round-xlarge w3-bottombar w3-bottom w3-light-grey w3-opacity">
            <p1> online exam system</p1>
        </footer>
        
    </body>
    
</html>