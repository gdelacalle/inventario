
<title>ESTRUCTURAS VEGA - Sistema de Inventario</title>
<?php
include "db.php";

$consulta = mysqli_query($conexion, "UPDATE egresos_caja SET estado = '2'");

error_reporting(0);
session_start();
$granTotal=0;
$numero = $_GET['numero'];

require_once("../includes/db.php");
$result = mysqli_query($conexion, "SELECT ec.id,ec.id_caja,ec.nro_comp, ec.id_gasto, ec.comentarios, ec.fecha, ec.importe,c.descripcion,tg.descripcion as tgdescripcion 
FROM egresos_caja as ec, cajas as c, tipo_gastos as tg
WHERE ec.id_caja = c.id AND ec.id_gasto = tg.id AND ec.estado='2' AND ec.nro_comp = $numero");

$result1 = mysqli_query($conexion, "SELECT id,importe,fecha,nro_comp,usuario
FROM egresos_caja WHERE nro_comp = $numero");
$fila = mysqli_fetch_assoc($result1);
$fecha = $fila['fecha'];
$usuario = $fila['usuario'];

?>

<div><h5>ESTRUCTURAS VEGA S.R.L.
<h6>Juan B. Alberdi 2052 - (CP5972) - Pilar - Tel:(03572) 471-666 
<div style="text-align: left;"><h4>Realizada por: <?php echo $usuario?> 
<div style="text-align: right;"><h4>Fecha: <?php echo $fecha?>
<h2><center>COMPROBANTE DE EGRESOS DE CAJA</center><div style="text-align: right;">Número: 0001 - 0000<?php echo $numero; ?>
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
