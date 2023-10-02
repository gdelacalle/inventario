<div class="modal fade" id="modal_editar_mp" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Datos del Producto</h3>
                <button type="button" class="btn btn-primary" data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="FormEditarMP">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Codigo</label>
                                <input type="text" id="codigo" name="codigo" class="form-control"  required>
                            </div>
                        </div>
                        <div class="col-sm-10">
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Producto</label>
                                <input type="text" id="producto" name="producto" class="form-control"  required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="cantidad">Cantidad</label><br>
                                <input type="number" name="cantidad" id="cantidad" class="form-control"  required>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="password">Tipo de Unidad</label><br>
                                <select name="unidad" id="unidad" class="form-control" required>
                                    <option <?php echo $fila['unidad'] === 'UNIDAD' ? 'selected' : ''; ?> value="UNIDAD">UNIDAD</option>
                                    <option <?php echo $fila['unidad'] === 'PIEZA' ? 'selected' : ''; ?> value="PIEZA">PIEZA</option>
                                    <option <?php echo $fila['unidad'] === 'PAQUETES' ? 'selected' : ''; ?> value="PAQUETES">PAQUETES</option>
                                    <option <?php echo $fila['unidad'] === 'KG' ? 'selected' : ''; ?> value="KG">KG</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="mb-3">
                                <label for="categoria">Categoria</label><br>
                                <select name="id_categoria" id="id_categoria" class="form-control" required>
                                    <?php
                                    include("../includes/db.php");
                                    // Codigo para mostrar categorias desde otra tabla
                                    $sql = "SELECT * FROM categorias ";
                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id_categoria'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['id'] . '" ' . $selected . '>' . $consulta['categoria'] . '</option>';
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="pesounitario" class="form-label">Peso x Unidad</label>
                                <input type="number" id="pesounitario" name="pesounitario" class="form-control" value="<?php echo $fila['pesounitario']; ?>" required>
                            </div>
                        </div>

                    <input type="hidden" name="accion" value="Editar_MP">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">
                    <br>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" onclick="EditarMP(<?php echo $fila['id']; ?>)">Guardar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function EditarMP(id) {
        var datosFormulario = $("#FormEditarMP" + id).serialize();
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