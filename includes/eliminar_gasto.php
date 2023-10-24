<?php

session_start();
error_reporting(0);


$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM ingresos_caja WHERE id = '$id'");

header('Location: ../views/ingreso_caja.php?m=1');
