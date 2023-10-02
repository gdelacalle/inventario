<?php
session_start();
error_reporting(0);

$id = $_GET['id'];
$obrass = $_SESSION['obrass'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM presupuestotemporal WHERE id = '$id'");

header("Location: ../views/armar_presupuesto.php?id=$obrass");
?>