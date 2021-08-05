<?php

$databaseHost = 'localhost';
$databaseName = 'washing_center';
$databaseUsername = 'root';
$databasePassword = '';



$conn = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
	
if ($conn) 
{
 echo"connected"; 
	
}
else
{   echo"database not connected";
	 mysqli_error($db);
}
	
?>
