<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>
                    <th>Caja Origen</th>
                    <th>Caja Destino</th>
                    <th>Importe</th>
                    <th>Acciones</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $granTotal=0;
                    require_once("../includes/db.php");
                    $result = mysqli_query($conexion, "SELECT tc.id,tc.id_caja_origen, tc.id_caja_destino, tc.importe, c.descripcion
                    FROM transfer_cajas as tc, cajas as c WHERE tc.id_caja_origen = c.id AND tc.estado='1'");
                while ($fila = mysqli_fetch_assoc($result)) :                        
                ?>
                <tr>
                    <td width="20%"><?php echo $fila['id_caja_origen']; ?></td>
                    <td width="30%"><?php echo $fila['id_caja_destino']; ?></td>
                    <td width="30%"><?php echo $fila['importe']; ?></td>
                    <td> <a href="../includes/eliminar_transferencia.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del">
                    Quitar <i class="fa fa-trash "></i></a></td>
                </tr>
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile;?>      
            </tbody>
        </table>
        <div style="text-align: right;"><h2>Total: $ <?php echo $granTotal; ?></h2>
    </body>
</html>