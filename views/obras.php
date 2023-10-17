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
                <h4 class="m-0 font-weight-bold text-primary">LISTADO DE OBRAS EN EJECUCION</h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">    
                            <tr>
                                <th>id</th>
                                <th>Descripcion</th>
                                <th>Fecha Alta</th>
                                <th>Fecha Entrega</th>
                                <th>Cliente</th>
                                <th>Apellido</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            require_once("../includes/db.php");

                            $result = mysqli_query($conexion, "SELECT o.id,o.descripcion,o.fecha_alta,o.fecha_entrega,c.nombre,c.apellido 
                            FROM clientes as c INNER JOIN obras as o ON c.id = o.id_cliente AND o.estado='CONFIRMADA' GROUP BY o.id ORDER BY c.nombre ASC");
                            while ($fila = mysqli_fetch_assoc($result)) {
                                $datos=$fila['id']."||".$fila['descripcion']."||".$fila['nombre']."||".$fila['apellido'];                                $datos2=$fila['id']."||".$fila['codigo']."||".$fila['producto'];

                            ?>
                                <tr>
                                    <td><?php echo $fila['id']; ?></td>
                                    <td><?php echo $fila['descripcion']; ?></td>
                                    <td><?php echo $fila['fecha_alta']; ?></td>
                                    <td><?php echo $fila['fecha_entrega']; ?></td>
                                    <td><?php echo $fila['nombre']; ?></td>
                                    <td><?php echo $fila['apellido']; ?></td>

                                    <td>
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal_editar_obra" onclick="modificar_obra('<?php echo $datos; ?>')">
                                        Editar <i class="fa fa-edit "></i></button>

                                        <a href="../views/remitos_obras.php?id=<?php echo $fila['id']?>" class="btn btn-danger btn-editar">
                                        Remitar <i class="fa fa-reply-all"></i></a>
                                        
                                        
                                        <a type="button" class="btn btn-success" data-toggle="modal" data-target="#estadopresu<?php echo $fila['id']?>">
                                        Estado <i class="fa fa-random"></i></a>
                                    </td>
                                </tr>
                                
                            <?php } ?>
                        </tbody>
                    </table>
                    <?php include "editar_obras.php"; ?>
                    <?php include "cambiar_estado.php"; ?>
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
                                            'success'
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

     
</body>
<?php include "form_obras.php"; ?>
<?php include "cambiar_estado.php"; ?>

</html>