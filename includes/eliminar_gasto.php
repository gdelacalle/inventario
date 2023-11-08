<?php

session_start();
error_reporting(0);


$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM egresos_caja WHERE id = '$id'");

header('Location: ../views/egreso_caja.php?m=1');
