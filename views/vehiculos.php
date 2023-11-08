<?php
error_reporting(0);
session_start();
?>
<?php include "../includes/header.php"; ?>
<script type='text/javascript' src="../js/jquery-3.5.1.js"></script>
<script type='text/javascript' src="../js/funciones_rapidas.js"></script>
<script src="https://unpkg.com/xlsx/dist/xlsx.full.min.js"></script>
<body id="page-top">
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary">LISTADO DE VEHICULOS
                <button type="button" class="btn btn-outline-success float-right" data-toggle="modal" data-target="#vehiculos" style="FONT-SIZE: 14pt">
                    <span class="glyphicon glyphicon-plus"></span> Agregar <i class="fa fa-plus"></i> </a></button></h4>
            </div> 
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">    
                            <tr>
                                <th><center>Marca</th>
                                <th><center>Modelo</th>
                                <th><center>Patente</th>
                                <th><center>Kilometros</th>
                                <th><center>N° Chasis</th>
                                <th><center>N° Motor</th>
                                <th><center>Año</th>
                                <th><center>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            require_once("../includes/db.php");
                            $result = mysqli_query($conexion, "SELECT * FROM vehiculo");
                            while ($fila = mysqli_fetch_assoc($result)) :
                            ?>
                                <tr>
                                    <td width="10%"><center><?php echo $fila['marca']; ?></td>
                                    <td width="20%"><center><?php echo $fila['modelo']; ?></td>
                                    <td width="10%"><center><?php echo $fila['patente']; ?></td>
                                    <td width="10%"><center><?php echo $fila['kmts']; ?></td>
                                    <td width="10%"><center><?php echo $fila['nro_chasis']; ?></td>
                                    <td width="10%"><center><?php echo $fila['nro_motor']; ?></td>
                                    <td width="10%"><center><?php echo $fila['ano']; ?></td>
                                    <td>
                                    <center><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#editarvehiculos<?php echo $fila['id']; ?>">
                                        Editar <i class="fa fa-edit "></i></button>
                                        
                                        <a href="../includes/eliminar_vehiculos.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del">
                                        Eliminar <i class="fa fa-trash "></i></a>
                                    </td>
                                </tr>
                                <?php include "editar_vehiculos.php"; ?>
                            <?php endwhile; ?>
                        </tbody>
                    </table>
                    <?php include "../includes/footer.php"; ?>
                    <script>
                        $('.btn-del').on('click', function(e) {
                            e.preventDefault();
                            const href = $(this).attr('href')
                            Swal.fire({
                                title: 'Estas seguro de eliminar este registro?',
                                text: "¡No podrás revertir esto!!",
                                icon: 'warning',
                                showCancelButton: true,
                                confirmButtonColor: '#3085d6',
                                cancelButtonColor: '#d33',
                                confirmButtonText: 'Si, eliminar!',
                                cancelButtonText: 'Cancelar!',
                            }).then((result) => {
                                if (result.value) {
                                    if (result.isConfirmed) {
                                        Swal.fire(
                                            'Eliminado!',
                                            'El registro fue eliminado.',
                                            'success',
                                        )
                                    }
                                    document.location.href = href;
                                }
                            })
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
    <!-- /.container-fluid -->
    </div>
    <!-- End of Main Content -->
    </div>
    <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->
</body>
<?php include "form_vehiculos.php"; ?>
<?php include "../includes/footer.php"; ?>
</html>