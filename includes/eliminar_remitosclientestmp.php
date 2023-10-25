<?php
session_start();
error_reporting(0);

$id = $_GET['id'];
$cliente = $_SESSION['cliente'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM remitosclientestmp WHERE id = '$id'");

header("Location: ../views/remitos_clientes.php?id=$cliente");
?>
