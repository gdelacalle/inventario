<?php

session_start();
error_reporting(0);


	$id = $_GET['id'];
	include "db.php";
	$query = mysqli_query($conexion,"DELETE FROM materias_primas WHERE id = '$id'");
	
	header ('Location: ../views/materias_primas.php?m=1');

?>
