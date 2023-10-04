<?php
error_reporting(0);
session_start();

$permiso = $_SESSION['type'];
if ($permiso == "3") {

    echo "<script language='JavaScript'>
    alert('Error: No tiene permiso para ingresar a esa página ');
    location.assign('../views/index.php');
    </script>";

    die();
}

$granTotal=0;
$obra=0;
include "../includes/db.php";
include "../includes/header.php"; 
$id = $_GET['id'];
$_SESSION['id'] = $id

?>

<body id="page-top">
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
            <h4 class="text-center">Detalles del Presupuesto</h4>
            <div class="row">
            <center><a href="../reportes/imprimirdetallepresupuesto.php?id=<?php echo $id?>" class="btn btn-danger float-right" type="button">Imprimir Presupuesto</a></center>   
    
            <div class="table-responsive">
        <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>       
                    <th>Producto</th>
                    <th>ID Sección</th>
                    <th>Sección</th>
                    <th>Cantidad</th>
                    <th>Medida</th>
                    <th>Unidad</th>
                    <th>Peso Unitario</th>
                    <th>Peso Total</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    require_once("../includes/db.php");
                    
                    $result = mysqli_query($conexion, "SELECT cast(SUM(p.cantidad * p.metros * e.peso)as decimal(10,2)) as total, 
                    p.id, cast((e.peso*p.metros)as decimal(10,2))as peso,e.seccion,i.producto,p.cantidad,p.metros,p.unidad,o.descripcion,
                    o.id_cliente,e.id as sid
                    FROM presupuesto as p INNER JOIN inventario as i INNER JOIN equivalencias as e INNER JOIN obras as o 
                    ON p.id_producto = i.id AND e.id = p.id_seccion AND p.id_obra = o.id AND p.id_obra = $id GROUP BY p.id ORDER BY p.id ASC");   
                while ($fila = mysqli_fetch_assoc($result)) :                       
                ?>
                <tr>
                    <td width="20%"><?php echo $fila['producto']; ?></td>
                    <td width="1%"><?php echo $fila['sid']; ?></td>
                    <td width="20%"><?php echo $fila['seccion']; ?></td>
                    <td width="5%"><?php echo $fila['cantidad']; ?></td>
                    <td width="5%"><?php echo $fila['metros']; ?></td>
                    <td width="5%"><?php echo $fila['unidad']; ?></td>
                    <td width="10%"><?php echo $fila['peso']; ?></td>
                    <td width="10%"><?php echo $fila['total']; ?></td>
                </tr>
                <?php $cliente += $fila['id_cliente'];?>
                <?php $granTotal += $fila['total'];?>
                <?php endwhile;?>  

            </tbody>

        </table>
        <center><h2>Total: <?php echo $granTotal; ?> KGs</h2>

        <?php include "../includes/footer.php"; ?>
        </div>
    </div>

</div>
</body>
</html>