<div class="modal fade" id="modal_act_mp<?php echo $fila['id']; ?>"tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Datos del Producto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="actualizarstock<?php echo $fila['id']; ?>" method="POST">
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Producto</label>
                                <input type="text" id="producto" name="producto" class="form-control" readonly>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="password">Cantidad</label><br>
                                <input type="number" name="cantidad" id="cantidad" class="form-control"  required>
                            </div>
                        </div>
                    </div>
                    <br>
                    <input type="hidden" name="accion" value="Actualiza_stock">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="actualizastock(<?php echo $fila['id']; ?>)">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function actualizastock(id) {
        var datosFormulario = $("#actualizarstock" + id).serialize();
        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('materias_primas.php');
                    }, 10);
                } else {
                    alert("Ha ocurrido un error al actualizar el registro");
                }
            },
            error: function() {
                alert("Error de comunicacion con el servidor");
            }
        });
    }
</script>