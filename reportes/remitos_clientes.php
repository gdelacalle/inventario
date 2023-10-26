
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
include "db.php";

$consulta = mysqli_query($conexion, "INSERT INTO remitosclientes SELECT * FROM remitosclientestmp");


$query = mysqli_query($conexion, "DELETE FROM remitosclientestmp");


error_reporting(0);
session_start();
$granTotal=0;
$numero = $_GET['numero'];

require_once("../includes/db.php");
$result = mysqli_query($conexion, "SELECT cast(SUM(r.cantidad * r.metros * e.peso)as decimal(10,2)) as total, cast((e.peso*r.metros)
as decimal(10,2))as peso, r.id,r.numero,c.apellido,i.producto,i.id as idp,e.seccion as idseccion,r.cantidad,r.metros,r.desarrollo,
r.unidad
FROM remitosclientes as r INNER JOIN inventario as i INNER JOIN clientes as c INNER JOIN equivalencias as e 
ON r.producto = i.id AND r.id_cliente = c.id AND r.id_seccion = e.id AND r.numero = $numero GROUP BY r.id ORDER BY r.id ASC");

$result1 = mysqli_query($conexion, "SELECT r.id,c.nombre,c.apellido,r.numero,r.fecha
FROM remitosclientes as r INNER JOIN clientes as c 
ON r.id_cliente = c.id AND r.numero = $numero");
$fila = mysqli_fetch_assoc($result1);
$nombre=$fila['nombre'];
$apellido=$fila['apellido'];
$numeros= $fila['numero'];
$fecha= $fila['fecha'];
?>

<div><h5>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666 
<div style="text-align: right;"><h4>Fecha: <?php echo $fecha?>
<h2><center>REMITO DE MATERIALES</center><div style="text-align: right;">Número: 0001 - 0000<?php echo $numeros; ?>
<h5><div style="text-align: left;">OBRA / CLIENTE:<class style="text-transform: uppercase; color: black;"> <?php echo $apellido.' '.$nombre; ?></div>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div class ="container">
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="5">
<thead class="thead-dark">
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
                    <td><center><?php echo $fila['idseccion']; ?></td>
                    <td><center><?php echo $fila['cantidad']; ?></td>
                    <td><center><?php echo $fila['metros']; ?></td>
                    <td><center><?php echo $fila['unidad']; ?></td>
                    <td><center><?php echo $fila['peso']; ?></td>
                    <td><center><?php echo $fila['total']; ?></td>
                </tr>
                <?php $granTotal += $fila['total'];?>
                <?php endwhile?>
</table>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div style="text-align: right;"><h2>Total: <?php echo $granTotal; ?> KGs</h2>

<div style="text-align: left;"><h4>FIRMA:_______________________________</h4>
<div>
<div style="text-align: left;"><h4>ACLARACIÓN:_______________________________</h4>
