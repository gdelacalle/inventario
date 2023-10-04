<?php
error_reporting(0);
session_start();

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
            <h4 class="text-center">Detalles de remitos por Cliente</h4>
            <div class="row">
                <div class="col-sm-2">
                    <div class="mb-1">
                        <label for="descripcion" class="form-label">Cliente</label>
                        <input type="text" id="descripcion" name="descripcion" class="form-control" value="<?php echo $id; ?>" readonly>
                    </div>
                </div>
            <div class="table-responsive">
        <table class="table table-striped table-bordered" id="dataTable" width="100%" cellspacing="0">
            <thead class="thead-dark">
                <tr>       
                    <th><center>Fecha</center></th>
                    <th><center>Numero Remito</center></th>
                </tr>
            </thead>
            <tbody>
                <?php
                    require_once("../includes/db.php");
                    
                    $result = mysqli_query($conexion, "SELECT r.id_cliente,c.nombre,c.apellido,r.numero,r.fecha 
                    FROM remitosclientes as r INNER JOIN clientes as c ON r.id_cliente = $id GROUP BY r.numero ORDER BY r.numero ASC");   
                while ($fila = mysqli_fetch_assoc($result)) :                       
                ?>
                <tr>
                    <td width="15%"><center><?php echo $fila['fecha']; ?></center></td>
                    <td width="15%"><center><?php echo $fila['numero']; ?></center></td>

                </tr>
                <?php endwhile;?>  
            </tbody>
        </table>
        <?php include "../includes/footer.php"; ?>
        </div>
    </div>
</div>
</body>
</html>