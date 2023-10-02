<div class="modal fade bd-example-modal-lg" id="modal_comprar_mp" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Compra de Nueva Materia Prima</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
               <form id="MpForm">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Codigo</label>
                                <input type="text" id="codigo" name="codigo" class="form-control" readonly>

                            </div>
                        </div>
                        <div class="col-sm-10">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Producto</label>
                                <input type="text" id="producto" name="producto" class="form-control" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-1">
                            <div class="mb-1">
                                <label for="password">Cantidad</label><br>
                                <input type="number" name="existencia" id="existencia" class="form-control" required>
                            </div>
                        </div>
                    <div class="col-sm-3">
                            <div class="mb-3">
                                <label for="pesounitario" class="form-label">Peso x Unidad</label>
                                <input type="text" id="pesounitario" name="pesounitario" class="form-control" value="<?php echo $fila['pesounitario']; ?>" required>
                            </div>
                        </div>
                    </div>

                    <input type="hidden" name="accion" value="insertar_materiasprimas">
                    <br>
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
        $('#MpForm').submit(function(e) {
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
                              window.location = "materias_primas.php"; // Redirecciona al usuario a la página deseada
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
