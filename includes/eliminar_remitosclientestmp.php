<?php
session_start();
error_reporting(0);

include "db.php";
$id = $_GET['id'];
$clientes = $_SESSION['clientes'];

$query = mysqli_query($conexion, "DELETE FROM remitosclientestmp WHERE id = '$id'");

header("Location: ../views/remitos_clientes.php?id=$clientes");
?>
