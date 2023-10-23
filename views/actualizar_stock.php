<div class="modal fade" id="modal_act_mp"tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Datos del Producto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="actualizarstock" method="POST">
                    <div class="row">
                        <div class="col-sm-10">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Producto</label>
                                <input type="hidden" id="smpid" name="smpid" class="form-control" readonly>
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
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="password">Peso</label><br>
                                <input type="number" name="smppeso" id="smppeso" class="form-control"  required>
                            </div>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="Productos">Productos</label><br>
                                <select name="sidproducto" id="sidproducto" class="form-control" required>
                                    <?php
                                    include("../includes/db.php");
                                    // Codigo para mostrar categorias desde otra tabla
                                    $sql = "SELECT i.id, i.codigo, i.producto FROM inventario AS i WHERE id >0 ORDER BY i.producto ASC";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                       echo '<option value="' . $consulta['id'] . '">' . $consulta['producto'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <br>
                    <input type="hidden" name="accion" value="Actualiza_stock">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="actualizastock()">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function actualizastock() {
       
        var datosFormulario = $("#actualizarstock").serialize();
       
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