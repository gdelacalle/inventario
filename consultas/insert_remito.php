<?php	

require_once("../includes/db.php");
$id=$_POST['id'];
$producto=$_POST['producto'];
$seccion=$_POST['seccion'];
$cantidad=$_POST['cantidad'];
$medida=$_POST['medida'];
$unidad=$_POST['unidad'];
$peso_u=$_POST['peso_u'];
$peso_t=$_POST['peso_t'];
$hoy=date("y-m-d");

$consulta=$mysqli->query("INSERT INTO remitosobra(id_obra,producto,id_seccion,metros,cantidad,peso,unidad,pesototal,fecha,id_categoria) VALUES ('[value-1]','[value-2]','[value-3]','[value-4]','[value-5]','[value-6]','[value-7]','[value-8]','[value-9]','[value-10]','[value-11]')");

echo $consulta;


?>