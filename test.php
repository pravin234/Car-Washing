<?php
$serverName = "absclouderp\\sqlexpress"; //serverName\instanceName
$uid = "sa";     
$pwd = "Tasneem@5253#";

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array("UID"=>$uid,                              
                         "PWD"=>$pwd, "Database"=>"ABSSOFTWARE");
$conn = sqlsrv_connect( $serverName, $connectionInfo);

if( $conn ) {
     echo "Connection established.<br />";
}else{
     echo "Connection could not be established.<br />";
     die( print_r( sqlsrv_errors(), true));
}
?>
