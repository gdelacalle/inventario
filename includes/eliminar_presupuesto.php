<?php

session_start();
error_reporting(0);


	$id = $_GET['id'];
	include "db.php";
	$query = mysqli_query($conexion,"DELETE FROM obras WHERE id = '$id'");
	$query = mysqli_query($conexion,"DELETE FROM presupuesto WHERE id = '$id'");
	
	header ('Location: ../views/presupuesto.php?m=1');

?>
