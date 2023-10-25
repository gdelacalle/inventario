
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
include "db.php";

$consulta = mysqli_query($conexion, "UPDATE transfer_cajas SET estado = '2'");

error_reporting(0);
session_start();
$granTotal=0;
$numero = $_GET['numero'];

require_once("../includes/db.php");
$result = mysqli_query($conexion, "SELECT tc.id,tc.id_caja_origen, tc.id_caja_destino, tc.importe, c.descripcion
FROM transfer_cajas as tc, cajas as c WHERE tc.id_caja_origen = c.id AND tc.estado='2' AND tc.nro_comp = $numero");
$fecha= $fila['fecha'];
$numeros= $fila['numero'];
?>

<div><h5>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666 
<div style="text-align: right;"><h4>Fecha: <?php echo $fecha?>
<h2><center>Comprobante de Transferencia entre Cajas</center><div style="text-align: right;">Número: 0001 - 0000<?php echo $numeros; ?>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div class ="container">
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="5">
<thead class="thead-dark">
                <tr>
                    <th>Caja Origen</th>
                    <th>Caja Destino</th>
                    <th>Importe</th>
                </tr>
                <?php while ($fila = mysqli_fetch_assoc($result)) :?>
                <tr>
                <td width="20%"><?php echo $fila['id_caja_origen']; ?></td>
                    <td width="30%"><?php echo $fila['id_caja_destino']; ?></td>
                    <td width="30%"><?php echo $fila['importe']; ?></td>
                </tr>
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile?>
</table>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div style="text-align: right;"><h2>Total: $ <?php echo $granTotal; ?></h2>

<div style="text-align: left;"><h4>FIRMA:_______________________________</h4>
<div>
<div style="text-align: left;"><h4>ACLARACIÓN:_______________________________</h4>
