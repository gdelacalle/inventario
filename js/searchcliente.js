$(document).ready(function() {
    $("#nombre").autocomplete({
        source: "buscar_cliente.php", // Archivo PHP que realiza la búsqueda
        minLength: 2, // Mínimo de caracteres para activar el autocompletado
        select: function(event, ui) {
            var clienteSeleccionado = ui.item.value;

            $.ajax({
                url: "oobtener_cliente.php", // Archivo PHP que obtiene los datos del cliente
                type: "POST",
                data: {nombre: clienteSeleccionado}, // Enviar el cliente seleccionado al servidor
                // Mostrar los datos del cliente en los campos correspondientes
                dataType: "json",success: function(data) {
                    $("#id").val(data.id);
                    //$("#nombre").val(data.nombre);
                    $("#telefono").val(data.telefono);
                    $("#direccion").val(data.direccion);
                }
            });
        }
    });
});