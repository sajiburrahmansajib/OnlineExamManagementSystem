<?php include_once("connection.php"); ?>
<?php
	session_start();
	if (isset($_SESSION['user_id'])) {
      header('Location: userhome.php');
      exit;
  	}
?>

<?php

$u_id="";
if(isset($_POST['submit'])){

		if (empty($_POST['user_name']) || empty($_POST['password']) || empty($_POST['phone']) || empty($_POST['mail']) || empty($_POST['address'])){

			echo "<script type='text/javascript'>alert('Field Is Empty!')</script>";
		}
                else{
                    
                    $mail = $_POST['mail'];
			

			if (!filter_var($mail, FILTER_VALIDATE_EMAIL))
                                {
                                echo "<script type='text/javascript'>alert('Invalid email format!')</script>";
                                }
								$sql = " SELECT COUNT(*) FROM user WHERE(mail='".$mail."') ";

			$qury = mysqli_query($conn, $sql);

			$result = mysqli_fetch_array($qury);
			
			if($result[0]>0)
            {
                echo "<script type='text/javascript'>alert('This E-mail Is Already Used! Please Try Another E-Mail')</script>";				
            }
			$phone = $_POST['phone'];
			$sql = " SELECT COUNT(*) FROM user WHERE(phone='".$phone."') ";

			$qury = mysqli_query($conn, $sql);

			$result = mysqli_fetch_array($qury);
			
			if($result[0]>0)
            {
                echo "<script type='text/javascript'>alert('This Phone Number Is Already Used! Please Try Another Number')</script>";				
            }
                        else{            
			$name = $_POST['user_name'];
                        $password= MD5($_POST['password']);
                        
			$address = $_POST['address'];
                        $sex = $_POST['gender'];
			

			$sql = "INSERT INTO user (user_name, password, phone, mail, address,sex)
				VALUES ('".$name."','".$password."','".$phone."','".$mail."','".$address."','".$sex."')";

				if (mysqli_query($conn, $sql)) {
				     echo "<script type='text/javascript'>alert('Welcome! Register Successfully')</script>";
				} else {
				    echo "<script type='text/javascript'>alert('Failed!')</script>";
				}
                        }
		}
	}
?>
<?php 
    if(isset($_POST['submit1'])){

		if (empty($_POST['mail']) || empty($_POST['password1'])){

			echo "<script type='text/javascript'>alert('Field Is Empty!')</script>";
		}
                else
                {   $user_name=$_POST['mail'];
                    $pass = MD5($_POST['password1']);

      			$sql = " SELECT COUNT(*) FROM user WHERE( mail='".$user_name."' AND password='".$pass."') ";

				$qury = mysqli_query($conn, $sql);

				$result = mysqli_fetch_array($qury);
			
				if($result[0]>0)
                                {
                                        $sessionSql = " SELECT user_id,user_name,password FROM user WHERE ( mail='".$user_name."' AND password='".$pass."') ";
					$sessionQury = mysqli_query($conn, $sessionSql);
					while($sessionResult = mysqli_fetch_array($sessionQury, MYSQLI_BOTH)){
						 $u_id = $sessionResult['user_id'];
						 $u_name = $sessionResult['user_name'];
					}
					$_SESSION['user_id'] = $u_id;
					$_SESSION['user_name'] = $u_name;
			
					header('location: userhome.php');
					exit;				
                                    }
                                    else
                                    {
                                            echo "<script type='text/javascript'>alert('Invalid User Name or Password!')</script>";
                                    }
                                }
                }
     			
