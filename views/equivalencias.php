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
                <h4 class="m-0 font-weight-bold text-primary">LISTADO DE EQUIVALENCIAS
                <button type="button" class="btn btn-outline-success float-right" data-toggle="modal" data-target="#equivalencias" style="FONT-SIZE: 14pt">
                    <span class="glyphicon glyphicon-plus"></span> Agregar <i class="fa fa-plus"></i> </a></button></h4>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">    
                            <tr>
                                <th>Seccion</th>
                                <th>Espesor (e1)</th>
                                <th>Espesor (e2)</th>
                                <th>Altura (h1)</th>
                                <th>Altura (h2)</th>
                                <th>Ancho (b)</th>
                                <th>Categoria</th>
                                <th>Peso x Metro</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            require_once("../includes/db.php");
                            $result = mysqli_query($conexion, "SELECT e.id,e.seccion, e.e1, e.e2, e.h1, e.h2, e.b,e.peso, c.categoria
                            FROM equivalencias as e INNER JOIN categorias as c 
                            WHERE e.id_categoria = c.id ");
                            while ($fila = mysqli_fetch_assoc($result)) :
                            ?>
                                <tr>
                                    <td><?php echo $fila['seccion']; ?></td>
                                    <td><?php echo $fila['e1']; ?></td>
                                    <td><?php echo $fila['e2']; ?></td>
                                    <td><?php echo $fila['h1']; ?></td>
                                    <td><?php echo $fila['h2']; ?></td>
                                    <td><?php echo $fila['b']; ?></td>
                                    <td><?php echo $fila['categoria']; ?></td>
                                    <td><?php echo $fila['peso']; ?></td>
                                    <td>
                                        <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal_editar_equivalencia<?php echo $fila['id']; ?>">
                                        Editar <i class="fa fa-edit "></i></button>

                                        <a href="../includes/eliminar_equivalencia.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del">
                                        Eliminar <i class="fa fa-trash "></i></a>
                                    </td>
                                </tr>
                                <?php endwhile; ?>
                        </tbody>
                    </table>
                    <?php include "editar_equivalencias.php"; ?>
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
</body>
<?php include "form_equivalencias.php"; ?>
<?php include "../includes/footer.php"; ?>
</html>