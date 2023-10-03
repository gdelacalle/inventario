<?php
session_start();
error_reporting(0);

$id = $_GET['id'];
$obrass = $_SESSION['obrass'];
include "db.php";

$consulta = mysqli_query($conexion, "INSERT INTO presupuesto SELECT * FROM presupuestotemporal WHERE id_obra = '$obrass'");

$query = mysqli_query($conexion, "DELETE FROM presupuestotemporal WHERE id_obra = '$obrass'");

header("Location: ../views/detalles_presupuesto.php?id=$obrass");


?>