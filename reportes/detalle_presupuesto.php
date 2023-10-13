
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
error_reporting(0);
session_start();
$granTotal=0;
$idobra = $_GET['id'];

require_once("../includes/db.php");
$result = mysqli_query($conexion, "SELECT cast(SUM(p.cantidad * p.metros * e.peso )as decimal(10,2))as total, p.id,
cast((e.peso*p.metros)as decimal(10,2))as peso,e.seccion,i.producto,p.cantidad,p.metros,p.unidad,o.descripcion,o.id_cliente,
i.id as id_producto,p.cant_proceso,p.cant_terminadas,p.cant_obra
FROM presupuesto as p INNER JOIN inventario as i INNER JOIN equivalencias as e INNER JOIN obras as o 
ON p.id_producto = i.id AND e.id = p.id_seccion AND p.id_obra = $idobra GROUP BY p.id ORDER BY p.id ASC");

$result1 = mysqli_query($conexion, "SELECT descripcion FROM obras WHERE id = $idobra");
$fila = mysqli_fetch_assoc($result1);
$descripcion=$fila['descripcion'];

?>
<h4>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666

<center>DETALLE DEL PRESUPUESTO</center>
<h5>OBRA / CLIENTE: <class style="text-transform: uppercase; color: black;">  <?php echo $descripcion; ?>

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

<table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="5">
                <tr>
                    <td>Producto</td>
                    <th>Sección</th>
                    <th>Cantidad</th>   
                    <th>Medida</th> 
                    <th>Unidad</th> 
                    <th>Peso x Unidad</th>
                    <th>TOTAL</th>
                </tr>
                <?php while ($fila = mysqli_fetch_assoc($result)) :?>
                <tr>
                    <td><?php echo $fila['producto']; ?></td>
                    <td><center><?php echo $fila['seccion']; ?></td>
                    <td><center><?php echo $fila['cantidad']; ?></td>
                    <td><center><?php echo $fila['metros']; ?></td>
                    <td><center><?php echo $fila['unidad']; ?></td>
                    <td><center><?php echo $fila['peso']; ?></td>
                    <td><center><?php echo $fila['total']; ?></td>
                </tr>
                <?php $granTotal += $fila['total'];?>
                <?php endwhile?>
</table>
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

<center><h2>Total: <?php echo $granTotal; ?> KGs</h2></center>



<?php

//$resultado = mysqli_query($conexion,"UPDATE inventario SET existencia = existencia - $granTotal WHERE id = 366");

//$resultado = mysqli_query($conexion, "INSERT INTO presupuesto (id_obra,id_producto,seccion, cantidad, metros, unidad) 
//VALUES ('$id_obra','$id_producto','$seccion','$cantidad','$metros','$unidad')");

/*
$id = $_GET['id'];
include "db.php";
$query = mysqli_query($conexion, "DELETE FROM presupuestotmp");
*/
?>
