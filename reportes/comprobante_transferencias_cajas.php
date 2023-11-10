
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
include "db.php";
error_reporting(0);
session_start();

$granTotal=0;
$numero = $_GET['numero'];
require_once("../includes/db.php");

$result1 = mysqli_query($conexion, "SELECT id,id_caja_origen,id_caja_destino,importe,fecha,nro_comp,usuario
FROM transfer_cajas WHERE nro_comp = $numero");
$fila = mysqli_fetch_assoc($result1);
$fecha = $fila['fecha'];
$cajadestino = $fila['id_caja_destino'];
$cajaorigen = $fila['id_caja_origen'];
$importee =$fila['importe'];
$usuario = $fila['usuario'];

$consulta1 = mysqli_query($conexion,"UPDATE cajas as c, transfer_cajas as tc SET c.importe = c.importe + '$importee' Where c.id = '$cajadestino' AND tc.estado='1'");
$consulta2 = mysqli_query($conexion,"UPDATE cajas as c, transfer_cajas as tc SET c.importe = c.importe - '$importee' Where c.id = '$cajaorigen' AND tc.estado='1'");

$consulta = mysqli_query($conexion, "UPDATE transfer_cajas SET estado = '2'");

$result = mysqli_query($conexion, "SELECT tc.id,tc.id_caja_origen,tc.id_caja_destino,tc.nro_comp, tc.descripcion,tc.fecha,tc.importe,co.descripcion as descripcajaorigen,cd.descripcion as descripcajadestino
FROM transfer_cajas as tc, cajas as co, cajas as cd
WHERE tc.id_caja_origen = co.id AND tc.id_caja_destino = cd.id AND tc.estado='2' AND tc.nro_comp = $numero");

?>

<div><h5>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666 
<div style="text-align: left;"><h4>Realizada por: <?php echo $usuario?> 
<div style="text-align: right;"><h4>Fecha: <?php echo $fecha?>
<h2><center>TRANSFERENCIAS ENTRE CAJAS<div style="text-align: right;">Número: 0001 - 0000<?php echo $numero; ?>
<h5>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div class ="container">
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="5">
<thead class="thead-dark">
                <tr>
                    <th>Caja Origen</th>
                    <th>Caja Destino</th>
                    <th>Importe</th>
                </tr>
                <?php while ($fila = mysqli_fetch_assoc($result)):?>
                <tr>
                    <td><center><?php echo $fila['descripcajaorigen']; ?></td>
                    <td><center><?php echo $fila['descripcajadestino']; ?></td>
                    <td><center><?php echo $fila['importe']; ?></td>
                </tr>
                
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile?>
</table>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div style="text-align: right;"><h2>Total: $ <?php echo $granTotal;?></h2>

<div style="text-align: left;"><h4>FIRMA:_______________________________</h4>
<div>
<div style="text-align: left;"><h4>ACLARACIÓN:_______________________________</h4>
