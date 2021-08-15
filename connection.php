<?php
$servername = "localhost";
$username = "ss_project";
$password = "ss@2134";
$dbname = "dbms_project";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>