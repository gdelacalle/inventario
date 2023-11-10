<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h5><div style="text-align: left" class="font-weight-bold text-primary";>MOVIMIENTOS DE CAJAS</h5>
<table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>
                    <th>Caja</th>
                    <th>Tipo Gasto</th>
                    <th>Comprobante</th>
                    <th>Detalle Movimiento</th>
                    <th>Fecha</th>
                    <th>Importe</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $granTotal=0;
                    require_once("../includes/db.php");
                    $result = mysqli_query($conexion, "SELECT ec.id,ec.id_caja, ec.id_gasto,ec.nro_comp, ec.comentarios, ec.fecha, ec.importe,ec.fecha,c.descripcion,tg.descripcion as tgdescripcion 
                    FROM egresos_caja as ec, cajas as c, tipo_gastos as tg
                    WHERE ec.id_caja = c.id AND ec.id_gasto = tg.id AND ec.estado='2'");
                while ($fila = mysqli_fetch_assoc($result)) :                        
                ?>
                <tr>
                    <td width="10%"><?php echo $fila['descripcion']; ?></td>
                    <td width="20%"><?php echo $fila['tgdescripcion']; ?></td>
                    <td width="5%"><center><a target="_blank" class="nav-link" href="../reportes/comprobante_egcaja.php?numero=<?php echo $fila['nro_comp']; ?>">
                    <?php echo $fila['nro_comp']; ?></td>
                    <td width="30%"><?php echo $fila['comentarios']; ?></td>
                    <td width="12%"><?php echo $fila['fecha']; ?></td>
                    <td width="15%"><center>$ <?php echo $fila['importe']; ?></td>
                </tr>
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile;?>      
            </tbody>
        </table>
        <div style="text-align: right;"><h2>Total: $ <?php echo $granTotal; ?></h2>
    </body>
</html>