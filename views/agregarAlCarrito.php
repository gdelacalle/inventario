<?php
include "../includes/db.php";
if (isset($_POST['buscador'])) {
    $codigo = $_POST['codigo'];
    // Aquí debes establecer la conexión a tu base de datos

    $consulta = "SELECT * FROM inventario WHERE UPPER(codigo) LIKE '%$codigo%' OR producto LIKE '%$codigo%' LIMIT 1";
    $resultado = mysqli_query($conexion, $consulta);
    $map_result = mysqli_num_rows($resultado);

    if ($map_result) {
        $datos = array();
        while ($dato = mysqli_fetch_assoc($resultado)) {
            $datos[] = $dato;
        }
        echo json_encode($datos);
    } else {
        echo json_encode('error');
    }
}

