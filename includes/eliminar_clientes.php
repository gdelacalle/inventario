<?php

session_start();
error_reporting(0);


	$id = $_GET['id'];
	include "db.php";
	$query = mysqli_query($conexion,"DELETE FROM clientes WHERE id = $id");
	
	header ('Location: ../views/clientes.php?m=1');

?>
