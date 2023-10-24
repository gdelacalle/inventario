
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
include "db.php";

$consulta = mysqli_query($conexion, "UPDATE ingresos_caja SET estado = '2'");

error_reporting(0);
session_start();
$granTotal=0;
$numero = $_GET['num'];

require_once("../includes/db.php");
$result = mysqli_query($conexion, "SELECT ic.id,ic.id_caja,ic.nro_comp, ic.id_gasto, ic.comentarios, ic.fecha, ic.importe,c.descripcion,tg.descripcion as tgdescripcion 
FROM ingresos_caja as ic, cajas as c, tipo_gastos as tg
WHERE ic.id_caja = c.id AND ic.id_gasto = tg.id AND ic.estado='2' AND ic.nro_comp = 5");
$fecha= $fila['fecha'];
$numero = $fila['nro_comp'];
?>

<div><h5>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666 
<div style="text-align: right;"><h4>Fecha: <?php echo $fecha?>
<h2><center>Comprobante de Ingreso a Caja</center><div style="text-align: right;">Número: 0001 - 0000<?php echo $numero; ?>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div class ="container">
<table class="table table-bordered" id="dataTable" width="100%" cellspacing="5">
<thead class="thead-dark">
                <tr>
                    <th>Caja</th>
                    <th>Tipo Gasto</th>
                    <th>Comentarios</th>
                    <th>Importe</th>
                </tr>
                <?php while ($fila = mysqli_fetch_assoc($result)) :?>
                <tr>
                    <td> <?php echo $fila['descripcion']; ?></td>
                    <td> <?php echo $fila['tgdescripcion']; ?></td>
                    <td> <?php echo $fila['comentarios']; ?></td>
                    <td> $ <?php echo $fila['importe']; ?></td>
                </tr>
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile?>
</table>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
<div style="text-align: right;"><h2>Total: $ <?php echo $granTotal; ?></h2>

<div style="text-align: left;"><h4>FIRMA:_______________________________</h4>
<div>
<div style="text-align: left;"><h4>ACLARACIÓN:_______________________________</h4>
