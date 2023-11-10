<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<h5><div style="text-align: left" class="font-weight-bold text-primary";>TRANSFERENCIAS ENTRE CAJAS REALIZADAS</h5>
    <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>
                    <th>Caja Origen</th>
                    <th>Caja Destino</th>
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
                    $result = mysqli_query($conexion, "SELECT tc.id,tc.id_caja_origen,tc.id_caja_destino,tc.nro_comp, tc.descripcion,tc.fecha,tc.importe,co.descripcion as descripcajaorigen,cd.descripcion as descripcajadestino
                    FROM transfer_cajas as tc, cajas as co, cajas as cd
                    WHERE tc.id_caja_origen = co.id AND tc.id_caja_destino = cd.id AND tc.estado='2'");
                while ($fila = mysqli_fetch_assoc($result)) :                        
                ?>
                <tr>
                    <td width="10%"><?php echo $fila['descripcajaorigen']; ?></td>
                    <td width="10%"><?php echo $fila['descripcajadestino']; ?></td>
                    <td width="5%"><center><a target="_blank" class="nav-link" href="../reportes/comprobante_transfercajas.php?numero=<?php echo $fila['nro_comp']; ?>">
                    <?php echo $fila['nro_comp']; ?></td>
                    <td width="30%"><?php echo $fila['descripcion']; ?></td>
                    <td width="12%"><?php echo $fila['fecha']; ?></td>
                    <td width="15%"><center>$ <?php echo $fila['importe']; ?></td>
                </tr>
                <?php endwhile;?>      
            </tbody>
        </table>
    </body>
</html>