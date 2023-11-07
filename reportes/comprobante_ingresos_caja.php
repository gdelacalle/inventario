
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
include "db.php";

$consulta = mysqli_query($conexion, "UPDATE ingresos_caja SET estado = '2'");

error_reporting(0);
session_start();
$granTotal=0;
$numero = $_GET['numero'];

require_once("../includes/db.php");
$result = mysqli_query($conexion, "SELECT ic.id,ic.id_caja,ic.nro_comp, ic.id_gasto, ic.comentarios, ic.fecha, ic.importe,c.descripcion,tg.descripcion as tgdescripcion 
FROM ingresos_caja as ic, cajas as c, tipo_gastos as tg
WHERE ic.id_caja = c.id AND ic.id_gasto = tg.id AND ic.estado='2' AND ic.nro_comp = $numero");
$fecha= $fila['ic.fecha'];
?>

<div><h5>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666 
<div style="text-align: left;"><h4>Fecha: <?php echo $fecha?>
<h2><center>COMPROBANTE DE INGRESOS A CAJA</center><div style="text-align: right;">Número: 0001 - 0000<?php echo $numero; ?>
<h5>

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div class ="container">
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="5">
<thead class="thead-dark">
                <tr>
                    <th>Caja</th>
                    <th><center>Tipo Gasto</th>
                    <th><center>Comentarios</th>
                    <th><center>Importe</th>
                </tr>
                <?php while ($fila = mysqli_fetch_assoc($result)) :?>
                <tr>
                    <td><center> <?php echo $fila['descripcion']; ?></td>
                    <td><center> <?php echo $fila['tgdescripcion']; ?></td>
                    <td><center> <?php echo $fila['comentarios']; ?></td>
                    <td><center> $ <?php echo $fila['importe']; ?></td>
                </tr>
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile?>
</table>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div style="text-align: right;"><h2>Total: $ <?php echo $granTotal; ?></h2>

<div style="text-align: left;"><h4>FIRMA:_______________________________</h4>
<div>
<div style="text-align: left;"><h4>ACLARACIÓN:_______________________________</h4>
