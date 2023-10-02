<?php
error_reporting(0);
session_start();
include "../includes/header.php";
include "../includes/db.php";
$id = $_GET['id'];
echo '<input id="num" type="hidden" name="numremito" value="'.$id.'">';

?>
<div class="row">
    <div class="col-lg-12">
        <div class="form-group">
            <h4 class="text-center">Datos del Cliente</h4>
        <div class="card">
            <div class="card-body">
            <form id="remitosClienteForm">
                   <div class="row">
                    <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="id_cliente">Nombre del Cliente</label>
                                <select name="id_cliente" id="id_cliente" class="form-control" readonly>
                                    <?php
                                    include("../includes/db.php");
                                    $sql = "SELECT * FROM clientes WHERE id = $id ORDER BY apellido ASC";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['id'] . '">' . $consulta['apellido'].' '.$consulta['nombre'].'</option>';
                                    }
                                    ?> 
                                </select>
                            </div>
                        </div>
                        <?php
                                include("../includes/db.php");
                                $sql = "SELECT (numero+1) as num FROM remitosclientes ORDER BY numero DESC LIMIT 1";
                                $resultado = mysqli_query($conexion, $sql);
                                $numremito = mysqli_fetch_array($resultado);
                                $numerito = $numremito['num'];

                                $fecha = date('d-m-Y');
                                echo '<input id="fecha" type="hidden" name="fecha" value="'.$fecha.'">';
                        ?> 

                        <div class="col-sm-2">
                        <label for="numerito">Remito N°:</label>
                        <input id="numerito" class="form-control" type="text" name="numerito" value="<?php echo $numerito?>">
                        </div>
            <div class="card-body">
            <div class="row">
                <div class="col-sm-1">
                    <div>
                        <label for="cantidad">Cantidad</label>
                        <input id="cantidad" class="form-control" type="text" name="cantidad" placeholder="Cantidad" >
                    </div>
                </div>
            <div class="col-sm-3">
                <div class="mb-3">
                    <label for="id_producto">Producto</label><br>
                    <select name="id_producto" id="id_producto" class="form-control" required >
                        <option value="">Seleccione un Producto</option>
                        <?php
                            include("../includes/db.php");
                            //Codigo para mostrar categorias desde otra tabla
                            $sqlp = "SELECT * FROM inventario WHERE id_categoria IN (4, 2, 56) ORDER BY producto ASC";
                            $resultadop = mysqli_query($conexion, $sqlp);
                            while ($consulta = mysqli_fetch_array($resultadop)) {
                                echo '<option value="' . $consulta['id'] . '">' . $consulta['producto'] . '</option>';
                            }
                        ?>     
                    </select>
                </div>
            </div>
               <div class="col-sm-2">
                <div class="mb-3">
                    <label for="seccion">Seccion</label><br>
                    <select name="seccion" id="seccion" class="form-control" required>
                        <option value="">Seleccione una Sección</option>
                        <?php
                            include("../includes/db.php");
                            //Codigo para mostrar categorias desde otra tabla
                            $sql = "SELECT * FROM equivalencias WHERE id_categoria IN (4, 2) ORDER BY seccion ASC";
                            $resultado = mysqli_query($conexion, $sql);
                            while ($consulta = mysqli_fetch_array($resultado)) {
                                echo '<option value="' . $consulta['seccion'] . '">' . $consulta['seccion'] . '</option>';
                            }
                        ?>     
                    </select>
                </div>
            </div>
            <div class="col-sm-1">
                <div class="mb-3">
                    <label for="metros">Medida</label>
                    <input  id="metros" min="0" max="30000" class="form-control" step="0.01" type="number" name="metros" placeholder="Mts o Kgs">
                </div>
            </div>
            <div class="col-sm-2">
            <div class="mb-3">
                    <label for="unidad">Tipo de Unidad</label>
                        <select name="unidad" id="unidad" class="form-control" >
                            <option value="">Seleccione una opcion</option>
                            <option value="UNIDAD">UNIDAD</option>
                            <option value="MTS">METROS</option>
                            <option value="MTS2">METROS CUADRADOS</option>
                            <option value="PAQUETE">PAQUETE</option>
                            <option value="KG">KG</option>
                            <option value="LTS">LITROS</option>
                        </select>   
                </div>
            </div>
            <div class="col-sm-2">
                <div class="mb-3">
                <br>
                <?php $_SESSION['clientes'] = $id_cliente?>

                    <button type="submit" class="btn btn-warning" id="id" name="id">Agregar</button>
                    <input type="hidden" name="accion" value="remito_cliente">
                <a href="../reportes/imprimirremitocliente.php?numero=<?php echo $numremito['num'] ?>"class="btn btn-danger float-right btn-generar" type="button">Imprimir Remito</a>
                    
                </div>
            </div>
        <div id="tablaremitos" class="table-responsive">
        </form>              
        <?php include "../includes/footer.php"; ?>
        </div>  
    </div>
</div>
<script>
    $(document).ready(function() {
    id=$('#num').val();
    $('#tablaremitos').load('../componentes/tabla_remito.php?id='+id);
        $('#remitosClienteForm').submit(function(e) {
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
                            $('#tablaremitos').load('../componentes/tabla_remito.php?id='+id);
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
    $('.btn-del').on('click', function(e) {
        e.preventDefault();
        const href = $(this).attr('href')
        Swal.fire({
            title: 'Estas seguro de eliminar este registro?',
            showCancelButton: true,
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


<script>
    $('.btn-generar').on('click', function(e) {
        e.preventDefault();
        const href = $(this).attr('href')
        Swal.fire({
                    title: '¿Desea Imprimir el Remito?',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Si',
                    cancelButtonText: 'No',
        }).then((result) => {
                            if (result.value) {
                            if (result.isConfirmed) {
                            Swal.fire(
                                    'Generando Remito',
                                    'success',
                                    )
                            }
                                document.location.href = href;
                            }
                        });
    });
</script>