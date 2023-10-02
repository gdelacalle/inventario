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
$cliente=0;
$pesoxunidad=0;
include "../includes/db.php";
include "../includes/header.php"; 
$id_obra = $_GET['id'];
echo '<input id="num" type="hidden" name="numremito" value="'.$id_obra.'">'

?>
<div class="row">
    <div class="col-lg-12">
        <div class="form-group">
            <h4 class="text-center">Confeccionando Nuevo Presupuesto</h4>
            <div class="card-body">
            <form id="presupuestotemporalForm">
                   <div class="row">
                   <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="id_obra">Obra</label><br>
                                <select name="id_obra" id="id_obra" class="form-control"readonly >
                                    <?php
                                    include("../includes/db.php");
                                    // Codigo para mostrar categorias desde otra tabla
                                    $sql = "SELECT * FROM obras WHERE id = '$id_obra'";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['id'] . '" ' . $selected . '>' . $consulta['descripcion'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>    
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="id_clientes">Nombre del Cliente</label>
                                <select name="id_clientes" id="id_clientes" class="form-control" readonly>
                                    <?php
                                    include("../includes/db.php");
                                    $sql = "SELECT * FROM clientes as c INNER JOIN obras as o ON c.id = o.id_cliente AND o.id = $id_obra ORDER BY c.apellido ASC";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['id_cliente'] . '">' . $consulta['apellido'].' '.$consulta['nombre'].'</option>';
                                    }
                                    ?> 
                                </select>
                            </div>
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
                            $sqlp = "SELECT * FROM inventario WHERE id_categoria IN (4, 2) ORDER BY producto ASC";
                            $resultadop = mysqli_query($conexion, $sqlp);
                            while ($consulta = mysqli_fetch_array($resultadop)) {
                                echo '<option value="' . $consulta['id'] . '">' . $consulta['producto'] . '</option>';
                            }
                        $produ=$id_producto;
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
                                echo '<option value="' . $consulta['id'] . '">' . $consulta['seccion'] . '</option>';
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
            <?php $_SESSION['obrass'] = $id_obra?>
            <div class="col-sm-2">
                <div class="mb-3">
                    <br>
                    <button type="submit" class="btn btn-warning" id="id" name="id">Agregar</button>
                    <input type="hidden" name="accion" value="insertar_presupuestotemporal">
       
                    <button href="../includes/guardar_presupuesto.php?id=<?php echo $obrass?>" class="btn btn-primary btn-agregar" id="id" name="id">Generar y Guardar</button>
                    
                </div>
            </div>
    
    <div id="tablapresupuesto" class="table-responsive">
    </form>   
        <?php include "../includes/footer.php"; ?>
        
        </div>
    </div>
</div>

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
    $('.btn-agregar').on('click', function(e) {
    e.preventDefault();
    const href = $(this).attr('href')
        Swal.fire({
                    title: 'Desea Guardar y Generar el Presupuesto?',
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
    $(document).ready(function() {
    id=$('#num').val();
    $('#tablapresupuesto').load('../componentes/tabla_presupuesto.php?id='+id);
        $('#presupuestotemporalForm').submit(function(e) {
            e.preventDefault(); // Evita que el formulario se envíe de forma predeterminada
            var formData = $(this).serialize(); // Serializa los datos del formulario
            $.ajax({
                url: '../includes/functions.php',
                type: 'POST',
                data: formData,
                dataType: 'json', // Espera una respuesta en formato JSON
                success: function(response) {
                    if (response.status == 'success') {
                        Swal.fire({
                            icon: 'success',
                            title: 'Éxito',
                        }).then(function() {

                            $('#tablapresupuesto').load('../componentes/tabla_presupuesto.php?id='+id);
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
</body>
</html>