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

?>
<?php include "../includes/header.php"; ?>

<body id="page-top">
    <!-- Begin Page Content -->
    <div class="container-fluid">
        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h4 class="m-0 font-weight-bold text-primary">LISTADO DE PRESUPUESTOS PENDIENTES
                <button type="button" class="btn btn-outline-success float-right" data-toggle="modal" data-target="#presupuesto"
                style="FONT-SIZE: 14pt">
                    <span class="glyphicon glyphicon-plus"></span> Agregar <i class="fa fa-plus"></i></button></h4>
            </div>
          <!--  <div class="col-4 bg-primary p-3">-->
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">
                            <tr>
                                <th>id</th>
                                <th>Descripcion</th>
                                <th>Cliente</th>
                                <th>Estado</th>
                                <th>Fecha Presupuesto</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            require_once("../includes/db.php");
    
                            $result = mysqli_query($conexion, "SELECT o.id,o.descripcion,o.fecha_alta,c.apellido,o.estado
                            FROM clientes as c INNER JOIN obras as o ON c.id = o.id_cliente AND o.estado='PENDIENTE' GROUP BY o.id ORDER BY c.nombre ASC");
                            while ($fila = mysqli_fetch_assoc($result)) :
                            ?>
                                <tr>
                                    <td><?php echo $fila['id']; ?></td>
                                    <td><?php echo $fila['descripcion']; ?></td>
                                    <td><?php echo $fila['apellido']; ?></td>
                                    <td><?php echo $fila['estado'],' DE ','APROBACION'; ?></td>
                                    <td><?php echo $fila['fecha_alta']; ?></td>
                                    <td>
                                        <a href="../views/armar_presupuesto.php?id=<?php echo $fila['id']?>" class="btn btn-warning btn-agregar">
                                            <i class="fa fa-plus"></i></a>
                                        <a href="../views/detalles_presupuesto.php?id=<?php echo $fila['id']?>" class="btn btn-primary btn-editar">
                                            <i class="fa fa-eye"></i></a>
                                        <a href="../includes/eliminar_presupuesto.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del">
                                            <i class="fa fa-trash "></i></a>
                                        <a type="button" class="btn btn-success" data-toggle="modal" data-target="#estadopresu<?php echo $fila['id']?>">
                                            <i class="fa fa-random"></i></a>

                                            
                                    </td>
                                </tr>
                                <?php include "cambiar_estado.php"; ?>

                            <?php endwhile; ?>
                        </tbody>
                    </table>
                    <?php include "../includes/footer.php"; ?>

<script>
    $('.btn-agregar').on('click', function(e) {
    e.preventDefault();
    const href = $(this).attr('href')
        Swal.fire({
                    title: 'Desea Agregar Datos al Presupuesto Actual?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si',
                    cancelButtonText: 'No',
                    }).then((result) => {
                        if (result.value) {
                            if (result.isConfirmed) {
                                Swal.fire(
                                    'success'
                                );
                                }else{
                                    Swal.fire(
                                        "Error!",
                                        "No se pudo Agregar, intente de nuevo.",
                                        "error"
                                );
                            }
                            document.location.href = href;
                        }
                    })
                })
    </script>

<script>
    $('.btn-editar').on('click', function(e) {
    e.preventDefault();
    const href = $(this).attr('href')
        Swal.fire({
                    title: 'Ver Detalles del Presupuesto?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si',
                    cancelButtonText: 'No',
                    }).then((result) => {
                        if (result.value) {
                            if (result.isConfirmed) {
                                Swal.fire(
                                    'success'
                                );
                                }else{
                                    Swal.fire(
                                        "Error!",
                                        "No se pudo Visualizar, intente de nuevo.",
                                        "error"
                                );
                            }
                            document.location.href = href;
                        }
                    })
                })
    </script>

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
                            'success'
                        );
                        }else{
                            Swal.fire(
                                "Error!",
                                "No se pudo eliminar, intente de nuevo.",
                                "error"
                            );
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
<?php include "form_presupuesto.php"; ?>
<?php include "form_obras.php"; ?>
<?php include "cambiar_estado.php"; ?>

</html>