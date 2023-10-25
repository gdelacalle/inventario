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
                    <th>Obra</th>
                    <th><CENTER>Producto</th>
                    <th><CENTER>Sección</th>
                    <th><CENTER>Cantidad</th>
                    <th><CENTER>Medida</th>
                    <th><CENTER>Unidad</th>
                    <th><CENTER>Peso Unitario</th>
                    <th><CENTER>Peso Total</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php
                $id_obra=$_GET['id'];
                $granTotal=0;
                $pesounidad=0;
                $total=0;
                    require_once("../includes/db.php");
                    $result = mysqli_query($conexion, "SELECT cast(SUM(p.cantidad * p.metros * e.peso)as decimal(10,2)) as totalpeso, 
                    p.id, cast((e.peso*p.metros) as decimal(10,2)) as peso,p.cantidad,p.metros,p.unidad, p.id_seccion as sid, 
                    e.seccion,i.producto,o.descripcion, o.id_cliente FROM presupuestotemporal as p, equivalencias as e, inventario as i, 
                    obras as o WHERE p.id_seccion=e.id and p.id_producto=i.id and p.id_obra=o.id and p.id_obra = id_obra GROUP BY p.id 
                    ORDER BY p.id ASC");   
                while ($fila = mysqli_fetch_assoc($result)) :                       
                ?>
                <tr>
                    <td width="20%"><?php echo $fila['descripcion']; ?></td>
                    <td width="20%"><CENTER><?php echo $fila['producto']; ?></td>
                    <td width="20%"><CENTER><?php echo $fila['seccion']; ?></td>
                    <td width="5%"><CENTER><?php echo $fila['cantidad']; ?></td>
                    <td width="5%"><CENTER><?php echo $fila['metros']; ?></td>
                    <td width="5%"><CENTER><?php echo $fila['unidad']; ?></td>
                    <td width="10%"><CENTER><?php echo $fila['peso']; ?></td>
                    <td width="10%"><CENTER><?php echo $fila['totalpeso']; ?></td>
                    <td><CENTER><a href="../includes/eliminar_item_presupuesto.php?id=<?php echo $fila['id']?>" class="btn btn-danger btn-del"><i class="fa fa-trash "></i></a></td>
                </tr>
                <?php $granTotal += $fila['totalpeso'];?>
                <?php $cliente = $fila['id_cliente'];?>
                <?php $pesounidad = $fila['peso'];?>
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





