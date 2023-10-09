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
                <h4 class="m-0 font-weight-bold text-primary">LISTADO DE MATERIAS PRIMAS
                <button type="button" class="btn btn-outline-success float-right" data-toggle="modal" data-target="#materiasprimas" style="FONT-SIZE: 14pt">
                    <span class="glyphicon glyphicon-plus"></span> Agregar <i class="fa fa-plus"></i></button>
                    
                <!-- Agrega un botón para iniciar la exportación -->
                <button id="export-btn" class="btn btn-outline-warning float-right" type="button" style="FONT-SIZE: 14pt">Exportar a Excel</button>

                <!-- Agrega un elemento de descarga para el archivo Excel -->
                <a id="download-link" style="display: none"></a>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead class="thead-dark">    
                            <tr>
                                <th>ID</th>
                                <th>Codigo</th>
                                <th>Producto</th>
                                <th>Cant</th>
                                <th>Precio U$S</th>
                                <th>Peso Total</th>
                                <th>Categoria</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>

                        <tbody>
                            <?php
                            require_once("../includes/db.php");
                            $result = mysqli_query($conexion, "SELECT SUM(m.existencia * m.pesounitario) peso, m.id,m.codigo,m.producto,m.existencia,m.precio,m.pesounitario,m.unidad,m.minimo,c.categoria,c.id as cid
                            FROM materias_primas as m INNER JOIN categorias as c ON c.id = m.id_categoria
                            GROUP BY m.id ORDER BY m.producto ASC");
                            while ($fila = mysqli_fetch_assoc($result)){
                                $datos=$fila['id']."||".$fila['codigo']."||".$fila['producto']."||".$fila['existencia']."||".$fila['cid']."||".$fila['unidad']."||".$fila['pesounitario'];                                $datos2=$fila['id']."||".$fila['codigo']."||".$fila['producto'];
                            ?>
                                <tr>
                                    <td><?php echo $fila['id']; ?></td>
                                    <td><?php echo $fila['codigo']; ?></td>
                                    <td><?php echo $fila['producto']; ?></td>
                                    <td><?php echo $fila['existencia']; ?></td>
                                    <td><?php echo $fila['precio'];?></td>
                                    <td><?php echo $fila['peso']; ?></td>
                                    <td><?php echo $fila['categoria']; ?></td>
                                <td>
                                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#modal_act_mp" onclick="actualizar_mp('<?php echo $datos; ?>')">
                                    Actualiar <i class="fa fa-retweet"></i></button>

                                    <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#modal_editar_mp" onclick="modificar_mp('<?php echo $datos; ?>')">
                                    Editar <i class="fa fa-edit "></i></button>

                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal_comprar_mp" onclick="comprar_mp('<?php echo $datos; ?>')">
                                    Compra <i class="fa fa-plus"></i></button>
                                    
                                    <a href="../includes/eliminar_inv.php?id=<?php echo $fila['id'] ?>" class="btn btn-danger btn-del">
                                    Eliminar <i class="fa fa-trash "></i></a>
                                </td>
                                </tr>    
                            <?php } ?>
                        </tbody>
                    </table>
                    <?php include "../includes/footer.php"; ?>
                    <?php include "actualizar_stock.php"; ?>
                    <?php include "form_comprar_mp.php"; ?>
                    <?php include "editar_materiasprimas.php"; ?>
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
<script>
    // Función para exportar la tabla a un archivo Excel
    function exportTableToExcel() {

        const table = document.getElementById('dataTable');

        // Crear una matriz para almacenar los datos de la tabla
        const data = [];

        // Obtener todas las filas de la tabla
        const rows = table.querySelectorAll('tr');

        rows.forEach((row) => {
            const rowData = [];
            const cells = row.querySelectorAll('th, td');
            cells.forEach((cell) => {
                rowData.push(cell.innerText);
            });
            data.push(rowData);
        });

        // Crear una hoja de cálculo de Excel
        const workbook = XLSX.utils.book_new();
        const worksheet = XLSX.utils.aoa_to_sheet(data);
        XLSX.utils.book_append_sheet(workbook, worksheet, 'Tabla');

        const excelBuffer = XLSX.write(workbook, {
            bookType: 'xlsx',
            type: 'array'
        });

        const blob = new Blob([excelBuffer], {
            type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'
        });

        const downloadLink = document.getElementById('download-link');
        downloadLink.href = URL.createObjectURL(blob);
        downloadLink.download = 'inventario.xlsx';

        downloadLink.click();
    }

    const exportButton = document.getElementById('export-btn');
    exportButton.addEventListener('click', exportTableToExcel);
</script>

<?php include "form_materiasprimas.php"; ?>

</html>