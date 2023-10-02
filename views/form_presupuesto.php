<div class="modal fade" id="presupuesto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lx" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Generar Nuevo Presupuesto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
            <form id="nuevopresupuestoForm">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="mb-3">
                                <label for="descripcion" class="form-label">Descripción</label>
                                <input type="text" id="descripcion" name="descripcion" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="mb-3">
                                <label for="id_cliente">Clientes</label>
                                    <select name="id_cliente" id="id_cliente" class="form-control" required>
                                        <option value="">Selecciona una opcion</option>
                                             <?php
                                                    include("../includes/db.php");
                                                    //Codigo para mostrar categorias desde otra tabla
                                                    $sql = "SELECT * FROM clientes ORDER BY apellido ASC ";
                                                    $resultado = mysqli_query($conexion, $sql);
                                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                                        echo '<option value="' . $consulta['id'] . '">' . $consulta['apellido'] .' '.$consulta['nombre']. '</option>';
                                                    }
                                                ?>
                                            </div>
                                    </select>
                                </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="fechaalta">Fecha de Alta</label>
                                <input type="date" name="fecha_alta" id="fecha_alta" class="form-control" pattern="\d{4}-\d{2}-\d{2}"> 
                            </div>
                        </div>                                            
                    <input type="hidden" name="accion" value="insertar_nuevo_presupuesto">           
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary" id="register" name="registrar">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>
                <?php include "../includes/footer.php"; ?>
            </form>
        </div>
    </div>
</div>
            
<script>
    $(document).ready(function() {
        $('#nuevopresupuestoForm').submit(function(e) {
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
                            text: 'Los datos se guardaron correctamente'
                        }).then(function() {
                            window.location = "presupuesto.php"; // Redirecciona al usuario a la página deseada
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


















