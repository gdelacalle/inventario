<div class="modal fade" id="editarequivalencia<?php echo $fila['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header ">
                <h3 class="modal-title" id="exampleModalLabel">Modificar Equivalencia</h3>
                <button type="button" class="btn " data-dismiss="modal">
                    <i class="fa fa-times" aria-hidden="true"></i></button>
            </div>
            <div class="modal-body">
                <form id="editEquivalencia<?php echo $fila['id']; ?>" method="POST">
                    <div class="form-group">
                    <div class="col-sm-12">
                            <div class="mb-3">
                                <label for="id">Producto</label><br>
                                <select name="id" id="id" class="form-control"readonly value="<?php echo $fila['id']; ?>">
                                    <?php
                                    include("../includes/db.php");
                                    // Codigo para mostrar categorias desde otra tabla
                                    $sql = "SELECT * FROM inventario as i INNER JOIN equivalencias as e WHERE e.id_producto = i.id";                                    $resultado = mysqli_query($conexion, $sql);
                                    while ($consulta = mysqli_fetch_array($resultado)) {
                                        $selected = $fila['id'] === $consulta['id'] ? 'selected' : '';
                                        echo '<option value="' . $consulta['id'] . '" ' . $selected . '>' . $consulta['producto'] . '</option>';
                                    }
                                    
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="e1" class="form-label">Espesor (e1)</label>
                                <input type="number" id="e1" name="e1" step="0.01" value="<?php echo $fila['e1']; ?>" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="e2" class="form-label">Espesor (e2)</label>
                                <input type="number" id="e2" name="e2" step="0.01" value="<?php echo $fila['e2']; ?>" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="h1" class="form-label">Altura (h1)</label>
                                <input type="number" id="h1" name="h1" step="0.01" value="<?php echo $fila['h1']; ?>" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="h2" class="form-label">Altura (h2)</label>
                                <input type="number" id="h2" name="h2" step="0.01" value="<?php echo $fila['h2']; ?>" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="b" class="form-label">Ancho (b)</label>
                                <input type="number" id="b" name="b" step="0.01" value="<?php echo $fila['b']; ?>" class="form-control" required>
                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="mb-3">
                                <label for="peso" class="form-label">Peso</label>
                                <input type="number" id="peso" name="peso" step="0.01" value="<?php echo $fila['peso']; ?>" class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <input type="hidden" name="accion" value="editar_equivalencia">
                    <input type="hidden" name="id" value="<?php echo $fila['id']; ?>">

                        <button type="button" class="btn btn-primary" onclick="editarEquival(<?php echo $fila['id']; ?>)">Modificar</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                    <?php include "../includes/footer.php"; ?>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
    function editarEquival(id) {
        var datosFormulario = $("#editEquivalencia" + id).serialize();
        $.ajax({
            url: "../includes/functions.php",
            type: "POST",
            data: datosFormulario,
            dataType: "json",
            success: function(response) {
                if (response === "correcto") {
                    alert("El registro se ha actualizado correctamente");
                    setTimeout(function() {
                        location.assign('equivalencias.php');
                    }, 2000);
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