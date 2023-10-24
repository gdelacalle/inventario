<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

<table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>
                    <th>Caja</th>
                    <th>Tipo Gasto</th>
                    <th>Importe</th>
                    <th>Acciones</th>

                </tr>
            </thead>
            <tbody>
                <?php
                $granTotal=0;
                    require_once("../includes/db.php");
                    $result = mysqli_query($conexion, "SELECT ic.id,ic.id_caja, ic.id_gasto, ic.comentarios, ic.fecha, ic.importe,c.descripcion,tg.descripcion as tgdescripcion 
                    FROM ingresos_caja as ic, cajas as c, tipo_gastos as tg
                    WHERE ic.id_caja = c.id AND ic.id_gasto = tg.id AND ic.estado='1'");
                while ($fila = mysqli_fetch_assoc($result)) :                        
                ?>
                <tr>
                    <td width="20%"><?php echo $fila['descripcion']; ?></td>
                    <td width="30%"><?php echo $fila['tgdescripcion']; ?></td>
                    <td width="30%"><?php echo $fila['importe']; ?></td>
                    <td> <a href="../includes/eliminar_gasto.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del">
                    Quitar <i class="fa fa-trash "></i></a></td>
                </tr>
                <?php $granTotal += $fila['importe'];?>
                <?php endwhile;?>      
            </tbody>
        </table>
        <div style="text-align: right;"><h2>Total: $ <?php echo $granTotal; ?></h2>
    </body>
</html>