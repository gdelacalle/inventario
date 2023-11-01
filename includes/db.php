<?php

$host = "localhost";
$user = "v0070449_invent";
$password = "5115T3m4";
$database = "v0070449_invent";


$conexion = mysqli_connect($host, $user, $password, $database);
if(!$conexion){
echo "No se realizo la conexion a la basa de datos, el error fue:".
mysqli_connect_error() ;


}
