<?php include_once('connection.php'); ?>
<?php
	session_start();

?>

  
<?php 
    if(isset($_POST['submit'])){

		if (empty($_POST['user_name1']) || empty($_POST['password1'])){

			$errorMassage='fild is empty! ';
		}
                else
                {   $user_name=$_POST['user_name1'];
                    $pass = $_POST['password1'];

      			$sql = " SELECT COUNT(*) FROM admins WHERE( username='".$user_name."' AND hashed_password='".$pass."') ";

				$qury = mysqli_query($conn, $sql);

				$result = mysqli_fetch_array($qury);
			
				if($result[0]>0)
                                {
                                        $asessionSql = " SELECT username,hashed_password FROM admins WHERE ( username='".$user_name."' AND hashed_password='".$pass."') ";
					$asessionQury = mysqli_query($conn, $asessionSql);
					while($sessionResult = mysqli_fetch_array($asessionQury, MYSQLI_BOTH)){
						 $a_id = $sessionResult['username'];
						
					}
					$_SESSION['admin_name'] = $a_id;
					
			
					header('location: welcomeadmin.php');
					exit;				
                                    }
                                    else
                                    {
                                            $errorMassage=' Invalid Admin Name or Password ';
                                    }
                                }
                }
     			
?>