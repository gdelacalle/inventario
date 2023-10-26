<?php
if (isset($_POST['accion'])) {
    switch ($_POST['accion']) {

            //casos de registros
        case 'insertar_categoria':
            insertar_categoria();
            break;
            
        case 'insertar_seccion':
            insertar_seccion();
            break;
            
        case 'insertar_proveedor':
            insertar_proveedor();
            break;

        case 'insertar_clientes':
            insertar_clientes();
            break;

        case 'insertar_obra':
            insertar_obra();
            break;

        case 'insertar_inventario':
            insertar_inventario();
            break;
           
        case 'insertar_compra_mp':
            insertar_compra_mp();
            break;
            
        case 'insertar_compra_inv':
            insertar_compra_inv();
            break;
            

        case 'insertar_materiasprimas':
            insertar_materiasprimas();
            break;

        case 'insertar_gasto':
            insertar_gasto();
            break;
           
        case 'insertar_transferencia':
            insertar_transferencia();
            break; 

        case 'insertar_nuevo_tipo_gasto':
            insertar_nuevo_tipo_gasto();
            break;

            case 'insertar_codebarra':
            insertar_codebarra();
            break;

        case 'insertar_presupuestotemporal':
            insertar_presupuestotemporal();
            break; 
            
        case 'insertar_nuevo_presupuesto':
            insertar_nuevo_presupuesto();
            break;

        case 'guardar_presupuesto':
            guardar_presupuesto();
            break;
            
        case 'remito_cliente':
            remito_cliente();
            break; 
              
        case 'insertar_items':
            insertar_items();
            break;
            
        case 'insertar_equivalencia':
            insertar_equivalencia();
            break;

        case 'editar_inv':
            editar_inv();
            break;

        case 'editar_mp':
            editar_mp();
            break;

        case 'Actualiza_stock':
            Actualiza_stock();
            break;

        case 'editar_prov':
            editar_prov();
            break;

        case 'editar_cat':
            editar_cat();
            break;

        case 'editar_user':
            editar_user();
            break;

        case 'editar_clientes':
            editar_clientes();
            break;

        case 'editar_perfil':
            editar_perfil();
            break;
        
        case 'editar_obra':
            editar_obra();
            break;

        case 'cambia_estado_presupuesto':
            cambia_estado_presupuesto();
            break;
            
        case 'editar_presupuesto':
            editar_presupuesto();
            break;

        case 'editar_items':
            editar_items();
            break;

        case 'editar_equivalencias':
            editar_equivalencias();
            break;

        case 'editar_seccion':
            editar_seccion();
            break;

        case 'actualiza_obra':
            actualiza_obra();
            break;             
    }
}
if (isset($_POST['accion2'])) {
    switch ($_POST['accion2']) {
        
        case 'insertar_remitoObra':
            insertar_remitoObra();
            break;
            
        case 'detalle_obra':
            detalle_obra();
            break;                               
    }
}

function insertar_categoria()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO categorias (categoria) VALUES ('$categoria')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insertar_seccion()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO seccion (seccion) 
    VALUES ('$seccion')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insertar_proveedor()
{
    global $conexion;
    extract($_POST);
    include "db.php";

    $consulta = "INSERT INTO proveedores (name, r_social, direccion, telefono, cuit, correo) 
    VALUES ('$name', '$r_social','$direccion','$telefono','$cuit','$correo')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_clientes()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO clientes (nombre,apellido,telefono,correo,direccion,cuit) 
    VALUES ('$nombre','$apellido','$telefono','$correo','$direccion','$cuit')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function insertar_obra()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO obras (descripcion, fecha_alta, fecha_entrega, id_cliente) 
    VALUES ('$descripcion','$fecha_alta','$fecha_entrega','$id_cliente')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_items()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO items (descripcion) VALUES ('$descripcion')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}


function insertar_inventario()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO inventario (codigo, producto, existencia, minimo, unidad,id_categoria,pesounitario) 
    VALUES ('$codigo', '$producto','$existencia','$minimo','$unidad','$id_categoria','$pesounitario')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_materiasprimas() 
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO materias_primas (codigo, producto, existencia, minimo, unidad,id_categoria,pesounitario) 
    VALUES ('$codigo', '$producto','$existencia','$minimo','$unidad','$id_categoria','$pesounitario')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_gasto() 
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO ingresos_caja (id_caja,id_gasto, comentarios, fecha, importe, estado,nro_comp) 
    VALUES ('$id_caja','$id_gasto', '$comentarios','$fecha','$importe','1',$numerito)";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_transferencia() 
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO transfer_cajas (id_caja_origen,id_caja_destino,descripcion, fecha, importe, estado) 
    VALUES ('$id_caja_origen','$id_caja_destino','$descripcion','$fecha','$importe','1')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}


function insertar_nuevo_tipo_gasto() 
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO tipo_gastos (descripcion, estado) 
    VALUES ('$descripcion','1')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_compra_mp()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO compras_mp (mp_id,nro_comp,cmp_cantidad,cmp_kg,cmp_estado) 
    VALUES ('$iid','$icomprobante','$iexistencia','$ipesounitario','1')";
    $resultado = mysqli_query($conexion, $consulta);
    $consulta1 = "UPDATE materias_primas SET existencia = existencia + '$iexistencia', peso=peso+$ipesounitario WHERE id = '$iid' ";
    $resultado1 = mysqli_query($conexion, $consulta1);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_compra_inv()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    //$consulta = "INSERT INTO compras_mp (mp_id,nro_comp,cmp_cantidad,cmp_kg,cmp_estado) 
    //VALUES ('$iid','$icomprobante','$iexistencia','$ipesounitario','1')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function remito_cliente()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO remitosclientestmp (numero,id_cliente,cantidad,producto,id_seccion,metros,unidad,fecha) 
    VALUES ('$numerito','$id_cliente','$cantidad','$id_producto','$seccion','$metros','$unidad','$fecha')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_presupuestotemporal()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO presupuestotemporal (id_obra,id_cliente,id_producto,id_seccion,cantidad,metros,unidad,peso,pesototal) 
    VALUES ('$id_obra','$id_clientes','$id_producto','$seccion','$cantidad','$metros','$unidad',$pesounidad,$pesototal)";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function insertar_nuevo_presupuesto()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO obras (descripcion, fecha_alta, id_cliente,estado,detalle) 
    VALUES ('$descripcion','$fecha_alta','$id_cliente','PENDIENTE','$detalle')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}

function guardar_presupuesto()
{
    global $conexion;
    extract($_POST);
    require_once "db.php";

    $consulta = "INSERT INTO presupuesto SELECT * FROM presupuestotemporal";
    /*$id = $_GET['id'];
    include "db.php";
    $query = mysqli_query($conexion, "DELETE FROM presupuestotmp WHERE id= $id");*/
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Los datos ya se encuentran Guardados'
        );
    }
    echo json_encode($response);
}


function insertar_remitoObra()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO remitosobra (id_obra,producto,id_seccion, cantidad, metros, unidad) 
    VALUES ('$id_obra', '$producto','$seccion','$cantidad','$metros','$unidad')";
    $resultado = mysqli_query($conexion, $consulta);
    
}

function insertar_remitoclienteTMP()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    //$consulta = "UPDATE inventario SET existencia = existencia - $total WHERE id = 38";
    $consulta = "INSERT INTO remitostmp (producto, cantidad, metros, unidad, peso) 
    VALUES ('$producto','$cantidad','$metros','$unidad','$granTotal')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}


function insertar_equivalencia()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta = "INSERT INTO equivalencias (seccion, e1,e2,h1,h2,b,peso,id_categoria) 
    VALUES ('$seccion','$e1','$e2','$h1','$h2','$b','$peso','$id_categoria')";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }
    echo json_encode($response);
}


function insertar_codebarra()
{
    require_once("db.php");
    extract($_POST);

    // Verificar si el número de código ya existe en la base de datos
    $consultaExistencia = "SELECT * FROM codbarra WHERE codigo = '$codigo'";
    $resultadoExistencia = mysqli_query($conexion, $consultaExistencia);

    if (mysqli_num_rows($resultadoExistencia) > 0) {
        $response = array(
            'status' => 'error',
            'message' => 'El número de código ya está en uso'
        );
        echo json_encode($response);
        return; // Termina la ejecución de la función
    }

    $consulta = "INSERT INTO codbarra (id_producto, codigo) VALUES ('$id_producto', '$codigo')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}


function detalle_obra()
{
    global $conexion;
    extract($_POST);
    include "db.php";
    $consulta="INSERT INTO detalle_obra(id_producto,seccion, cantidad,metros,unidad,peso) 
    VALUES ('$id_producto','$seccion','$cantidad','$metros', '$unidad','$peso')";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        $response = array(
            'status' => 'success',
            'message' => 'Los datos se guardaron correctamente'
        );
    } else {
        $response = array(
            'status' => 'error',
            'message' => 'Ocurrió un error inesperado'
        );
    }

    echo json_encode($response);
}

function editar_inv()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE inventario SET codigo = '$codigo', producto = '$producto', existencia = '$cantidad', 
        pesounitario = '$pesounitario', minimo = '$minimo', unidad='$unidad', id_categoria = '$id_categoria' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_mp()
{
    // alert('entra');
    require_once("db.php");
    $id=$_POST['id'];
    $codigo=$_POST['codigo'];
    $producto=$_POST['producto'];
    $cantidad=$_POST['cantidad'];
    $unidad=$_POST['unidad'];
    $categoria=$_POST['categoria'];
    $peso=$_POST['peso'];
    $consulta = "UPDATE materias_primas SET codigo = '$codigo', producto = '$producto', existencia = '$cantidad', 
        id_categoria = '$categoria', pesounitario = '$peso' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function Actualiza_stock()
{
    require_once("db.php");
    $id=$_POST['smpid'];
    $producto=$_POST['producto'];
    $destino=$_POST['sidproducto'];
    $cantidad=$_POST['cantidad'];
    $peso=$_POST['smppeso'];
    $consulta = "UPDATE materias_primas SET existencia = existencia - '$cantidad', peso=peso-$peso WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);
    $consulta1 = "INSERT INTO salida_mp(smp_id, smp_producto, smp_cantidad, smp_peso, smp_destino) VALUES ($id,'$producto',$cantidad,$peso,'$destino')";
    $resultado1 = mysqli_query($conexion, $consulta1);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_obra()
{
    require_once("db.php");
    extract($_POST);
    /*
    $imagenSubida=fopen($_FILES['contrato']['tmp_name'], 'r');
    $archivo=fread($imagenSubida,filesize($_FILES['contrato']['tmp_name']));   
    $contrato =addslashes($archivo);*/

    $consulta = "UPDATE obras SET fecha_entrega = '$fecha_entrega' WHERE id = '$id'";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function cambia_estado_presupuesto()
{
    require_once("db.php");
    extract($_POST);
    /*
    $imagenSubida=fopen($_FILES['contrato']['tmp_name'], 'r');
    $archivo=fread($imagenSubida,filesize($_FILES['contrato']['tmp_name']));   
    $contrato =addslashes($archivo);*/

    $consulta = "UPDATE obras SET estado = '$estado' WHERE id = '$id'";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_presupuesto()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE obras SET id='$id',descripcion = '$descripcion',estado = '$estado',fecha_alta = '$fecha_alta' 
    WHERE id = '$id'";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_prov()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE proveedores SET name = '$name', r_social = '$r_social', 
    direccion = '$direccion',  telefono = '$telefono', cuit = '$cuit', correo = '$correo' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_cat()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE categorias SET categoria = '$categoria' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_seccion()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE seccion SET id = '$id', seccion = '$seccion' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_items()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE items SET item = '$item' WHERE id = '$id'";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_equivalencias()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE equivalencias SET e1 = '$e1' WHERE id = '$id'";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_clientes()
{
    require_once("db.php");
    extract($_POST);
    $consulta = "UPDATE clientes SET nombre = '$nombre', apellido = '$apellido',telefono = '$telefono', 
    correo = '$correo', direccion = '$direccion', cuit = '$cuit' WHERE id = '$id_cliente' ";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_user()
{
    require_once("db.php");
    extract($_POST);
    $password = trim($_POST['password']);
    $password = password_hash($password, PASSWORD_DEFAULT, ['cost' => 5]);
    $consulta = "UPDATE users SET usuario = '$usuario', correo = '$correo', password = '$password',
		telefono='$telefono', id_rol='$id_rol' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);

    if ($resultado) {
        echo json_encode("correcto");
    } else {
        echo json_encode("error");
    }
}

function editar_perfil()
{
    include "db.php";
    extract($_POST);
    $consulta = "UPDATE users SET usuario = '$usuario', correo = '$correo' WHERE id = '$id' ";
    $resultado = mysqli_query($conexion, $consulta);
    if ($resultado === true) {
        echo json_encode("updated");
    }
    if ($resultado === false) {
        echo json_encode("error");
    }
}
