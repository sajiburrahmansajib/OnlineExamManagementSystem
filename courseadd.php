<html>
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="styles/w3.css">
        <title>Online Exam System</title>
    </head>

         <form class="w3-container w3-card-4 w3-half" action="" method="post">
             
                <p>      
                <label class="w3-text-white" ><b>Course ID</b></label>
                <input class="w3-input w3-border" name="cid" type="text" placeholder ="Course ID" required></p>
                <p>      
                <label class="w3-text-white"><b>Course Name</b></label>
                <input class="w3-input w3-border" name="cname" type="text" placeholder ="Course Name" required></p>
                
                   
                
                <p style="margin-left:41%">      
                    <input type="submit" class="w3-btn w3-ripple w3-green" name="submit" value="Add"></p>
        </form> 
              <h4 class="w3-text-green"><?php echo $succ ?></h2>
               <h2><?php echo $errorMassage ?></h2>
               
</body>
<?php
         mysqli_close($conn);
?> 
</html>