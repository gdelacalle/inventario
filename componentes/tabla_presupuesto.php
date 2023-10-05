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
                    <th>Obra</th>
                    <th>Producto</th>
                    <th>Sección</th>
                    <th>Cantidad</th>
                    <th>Medida</th>
                    <th>Unidad</th>
                    <th>Peso Unitario</th>
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
                    $result = mysqli_query($conexion, "SELECT cast(SUM(p.cantidad * p.metros * e.peso)as decimal(10,2)) as total, 
                    p.id, cast((e.peso*p.metros) as decimal(10,2)) as peso,e.id as sid,e.seccion,i.producto,p.cantidad,p.metros,p.unidad,
                    o.descripcion,p.id_seccion as sid,o.id_cliente FROM presupuestotemporal as p INNER JOIN inventario as i INNER JOIN equivalencias as e 
                    INNER JOIN obras as o ON p.id_producto = i.id AND p.seccion = e.seccion AND p.id_obra = $id 
                    GROUP BY p.id ORDER BY p.id ASC");   
                while ($fila = mysqli_fetch_assoc($result)) :                       
                ?>
                <tr>
                    <td width="20%"><?php echo $fila['descripcion']; ?></td>
                    <td width="20%"><?php echo $fila['producto']; ?></td>
                    <td width="20%"><?php echo $fila['sid']; ?></td>
                    <td width="20%"><?php echo $fila['seccion']; ?></td>
                    <td width="5%"><?php echo $fila['cantidad']; ?></td>
                    <td width="5%"><?php echo $fila['metros']; ?></td>
                    <td width="5%"><?php echo $fila['unidad']; ?></td>
                    <td width="10%"><?php echo $fila['peso']; ?></td>
                    <td width="10%"><?php echo $fila['total']; ?></td>
                    <td><a href="../includes/eliminar_item_presupuesto.php?id=<?php echo $fila['id']?>" class="btn btn-danger btn-del"><i class="fa fa-trash "></i></a></td>
                </tr>
                <?php $granTotal += $fila['totalpeso'];?>
                <?php $cliente = $fila['id_cliente'];?>
                <?php $pesounidad = $fila['pesoxunidad'];?>
                <?php $total = $fila['totalpeso'];?>
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





