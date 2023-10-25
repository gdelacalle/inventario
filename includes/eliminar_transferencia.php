<?php

session_start();
error_reporting(0);


$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM transfer_cajas WHERE id = '$id'");

header('Location: ../views/transferencia_cajas.php?m=1');
