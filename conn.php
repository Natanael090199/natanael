<?php
// Connection variables
$dbhost	= "localhost";	   // localhost or IP
$dbuser	= "root";		  // database username
$dbpass	= "";		     // database password
$dbname	= "proyecto_db";    // database name

$connect = mysqli_connect ($dbhost, $dbuser, $dbpass, $dbname);
	if(!$connect){
        echo "Error: Database desconected." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
    }
	else{
        echo "Database has been connected" . PHP_EOL;
echo "Información del host: " . mysqli_get_host_info($connect) . PHP_EOL;

//mysqli_close($connect);
    }
?>