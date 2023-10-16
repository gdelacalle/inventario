<?php
 require_once("../includes/db.php");
 $id=$_POST['id'];
 $codigo=$_POST['codigo'];
 $producto=$_POST['producto'];
 $cantidad=$_POST['cantidad'];
 $unidad=$_POST['unidad'];
 $categoria=$_POST['categoria'];
 $peso=$_POST['peso'];
 $consulta = "UPDATE materias_primas SET codigo = '$codigo', producto = '$producto', existencia = '$cantidad', 
     id_categoria = '$categoria', pesounitario = '$peso' WHERE id = '$id' ";
 $resultado = mysqli_query($conexion, $consulta);
 if ($resultado) {
     echo json_encode("correcto");
 } else {
     echo json_encode("error");
 }
?>