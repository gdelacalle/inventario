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
                <h4 class="m-0 font-weight-bold text-primary">ENGRESO DE CAJA
            </div>
            <div class="card">
            <div class="card-body">
            <form id="egresoscajaForm">
            <div class="row">
                <div class="col-sm-2">
                    <div class="mb-3">
                        <label for="id_caja">Caja Origen</label>
                        <select name="id_caja" id="id_caja" class="form-control" required>
                        <option value="">Seleccione la Caja Origen</option>
                            <?php
                                include("../includes/db.php");
                                $sql = "SELECT * FROM cajas ORDER BY descripcion ASC";
                                $resultado = mysqli_query($conexion, $sql);
                                while ($consulta = mysqli_fetch_array($resultado)) {
                                     $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                     echo '<option value="' . $consulta['id'] . '">' . $consulta['descripcion'].'</option>';
                                }
                            ?> 
                        </select>
                    </div>
                </div>
                <?php
                    include("../includes/db.php");
                    $sql = "SELECT (nro_comp+1) as num FROM egresos_caja ORDER BY nro_comp DESC LIMIT 1";
                    $resultado = mysqli_query($conexion, $sql);
                    $numcomprobante = mysqli_fetch_array($resultado);
                    $numerito = $numcomprobante['num'];
                ?>
                <div class="col-sm-2">
                        <label for="numerito">Numero Comprobante</label>
                        <input id="numerito" class="form-control" type="text" name="numerito" value="<?php echo $numerito?>"readonly>
                    </div>
                <div class="col-sm-2">
                    <div class="mb-3">
                        <label for="fecha">Fecha</label>
                        <input type="date" name="fecha" id="fecha" class="form-control" pattern="\d{4}-\d{2}-\d{2}" required> 
                    </div>
                </div>               
                <div class="col-sm-4">
                    <div class="mb-3">
                        <label for="id_gasto">Tipo de Gasto</label>
                        <select name="id_gasto" id="id_gasto" class="form-control" required>
                        <option value="">Seleccione un Tipo de Gasto</option>
                            <?php
                                include("../includes/db.php");
                                $sql = "SELECT * FROM tipo_gastos ORDER BY descripcion ASC";
                                $resultado = mysqli_query($conexion, $sql);
                                while ($consulta = mysqli_fetch_array($resultado)) {
                                $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                echo '<option value="' . $consulta['id'] . '">' . $consulta['descripcion'].'</option>';
                                }
                            ?> 
                        </select>
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal_nuevo_gasto">
                        Nuevo <i class="fa fa-plus "></i></button>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="mb-3">
                        <label for="importe">Importe</label>
                        <input  id="importe" min="0" max="100000000" class="form-control" step="0.1" type="number" name="importe" required>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="mb-3">
                        <label for="comentarios" class="form-label">Descripcion Breve</label>
                        <input type="text" id="comentarios" name="comentarios" class="form-control" required>
                    </div>
                </div>
                <div class="col-sm-1">
                    <button type="submit" class="btn btn-warning" id="id" name="id">Agregar Gasto</button>
                    <input type="hidden" name="accion" value="insertar_gasto">
                </div>
                    <a target="_blank" href="../reportes/comprobante_egcaja.php?numero=<?php echo $numcomprobante['num'] ?>" 
                    target="_blank" class="btn btn-danger float-right btn-generar" type="button">Generar Comprobante</a>
                </div>
            </div>
                <div id="tablagastos" class="table-responsive">
            </form>              
            <?php include "../includes/footer.php"; ?>
        </div>  
    </div>
</div>

<?php include "../views/form_tipo_gasto.php";?>

<script>
    $(document).ready(function() {
    id=$('#num').val();
    $('#tablagastos').load('../componentes/tabla_gastos.php?id='+id);
        $('#egresoscajaForm').submit(function(e) {
            e.preventDefault(); // Evita que el formulario se envíe de forma predeterminada
            var formData = $(this).serialize(); // Serializa los datos del formulario
            $.ajax({
                url: '../includes/functions.php',
                type: 'POST',
                data: formData,
                dataType: 'json', // Espera una respuesta en formato JSON
                success: function(response) {
                    if (response.status === 'success') {
                        Swal.fire({
                            icon: 'success',
                            title: 'Éxito',
                        }).then(function() {
                            $('#tablagastos').load('../componentes/tabla_gastos.php?id='+id);
                        });                       

                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Ocurrió un error inesperado'
                        });
                    }
                },
                error: function(xhr, status, error) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Ocurrió un error inesperado'
                    });
                }                            
            });
        });
    });
</script>


<script>
    $('.btn-generar').on('click', function(e) {
        e.preventDefault();
        const href = $(this).attr('href')
        Swal.fire({
                    title: '¿Desea Generar el Comprobante?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si',
                    cancelButtonText: 'No',
        }).then((result) => {
                            if (result.value) {
                            if (result.isConfirmed) {
                            Swal.fire(
                                    'Generando Comprobante',
                                    )
                            }
                                document.location.href = href;
                            }
                        });
    });
</script>