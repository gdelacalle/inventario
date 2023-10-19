<?php
 require_once("../includes/db.php");
 $id=$_POST['ideq'];
 $seccion=$_POST['eseccion'];
 
 $consulta = "UPDATE equivalencias SET seccion = '$seccion' WHERE id = '$id' ";
 $resultado = mysqli_query($conexion, $consulta);
 if ($resultado) {
     echo json_encode("correcto");
 } else {
     echo json_encode("error");
 }
?>