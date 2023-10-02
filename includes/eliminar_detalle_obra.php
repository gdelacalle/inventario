<?php

session_start();
error_reporting(0);


$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM detalle_obra WHERE id = '$id'");

header('Location: ../views/obras.php?m=1');
