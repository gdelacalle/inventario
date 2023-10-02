<?php

session_start();
error_reporting(0);


$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM remitostmp WHERE id = '$id'");

header('Location: ../views/remitos_obras.php?m=1');
