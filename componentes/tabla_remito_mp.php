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
                    <th>Cliente</th>
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>Medida</th>
                    <th>Unidad</th>
                    <th>Peso Total</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $id=$_GET['id'];
                $granTotal=0;
                $pesounidad=0;
                $total=0;
                    require_once("../includes/db.php");
                    $result = mysqli_query($conexion, "SELECT r.id,c.nombre,mp.producto,r.cantidad,r.metros,r.unidad,c.id as id_cliente
                    FROM remitosclientestmp as r INNER JOIN materias_primas as mp INNER JOIN clientes as c 
                    ON r.producto = mp.id AND r.id_cliente = c.id AND r.id_cliente = $id GROUP BY r.id ORDER BY r.id ASC");
                while ($fila = mysqli_fetch_assoc($result)) :                        
                ?>
                <tr>
                    <td width="20%"><?php echo $fila['nombre']; ?></td>
                    <td width="30%"><?php echo $fila['producto']; ?></td>
                    <td width="5%"><?php echo $fila['cantidad']; ?></td>
                    <td width="5%"><?php echo $fila['metros']; ?></td>
                    <td width="10%"><?php echo $fila['unidad']; ?></td>
                    <td width="10%"><?php echo $fila['totalpeso']; ?></td>
                    <td><a href="../includes/eliminar_remitosclientestmp.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del"><i class="fa fa-trash "></i></a></td>
                </tr>
                <?php 
                    $granTotal += $fila['totalpeso'];
                    $cliente=$fila['id_cliente'];
                    $pesounidad = $fila['pesoxunidad'];
                    $total = $fila['totalpeso'];
                 ?>
                <?php endwhile;?> 

                <?php
                echo '<input  id="pesounidad"  class="form-control" type="hidden" name="pesounidad" value="'.$pesounidad.'">';
                echo '<input  id="pesototal"  class="form-control" type="hidden" name="pesototal" value="'.$total.'">';
                ?>       
            </tbody>
        </table>
        <center><h2>Total: <?php echo $granTotal; ?> KGs</h2> 
</body>
</html>