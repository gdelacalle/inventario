<?php
$fecha = date('27-m-Y');//Obtengo la fecha del dia actual
$fecha_menos1dia = date("d-m-Y", strtotime($fecha. "-1 day"));// guardo en variable la fecha actual menos 1 dia

require "../includes/db.php";

require "../includes/db.php";
$consulta = mysqli_query($conexion, "UPDATE remitosclientes as r, inventario as i set r.id_categoria=i.id_categoria where r.producto=i.id");

$nombre = mysqli_query($conexion, "SELECT * FROM clientes");//Muestra la Cantidad de Clientes
$total['nombre'] = mysqli_num_rows($nombre);

$consulta = "SELECT SUM(peso) as SumaTotal FROM materias_primas WHERE id_categoria=54 GROUP BY id_categoria";
$SumaTotal= $conexion -> query($consulta);
$fila=$SumaTotal->fetch_assoc();//te devuelve un array asociativo con el nombre del campo
$SumaTotal=$fila['SumaTotal'];//Este es el valor que acabas de calcular en la consulta

$consulta1 = "SELECT SUM(peso) as SumaBobinas FROM materias_primas WHERE id_categoria=3 GROUP BY id_categoria";
$SumaBobinas= $conexion -> query($consulta1);
$fila1=$SumaBobinas->fetch_assoc();//te devuelve un array asociativo con el nombre del campo
$SumaBobinas=$fila1['SumaBobinas'];

$consulta2 = "SELECT SUM(peso) as SumaFlejes FROM materias_primas WHERE id_categoria=55 GROUP BY id_categoria";
$SumaFlejes= $conexion -> query($consulta2);
$fila3=$SumaFlejes->fetch_assoc();//te devuelve un array asociativo con el nombre del campo
$SumaFlejes=$fila3['SumaFlejes'];

$obras = mysqli_query($conexion, "SELECT * FROM obras WHERE estado ='CONFIRMADA'");//Muestra las Obras en Ejecucion
$total['descripcion'] = mysqli_num_rows($obras);
$obrasp = mysqli_query($conexion, "SELECT * FROM obras WHERE estado ='PENDIENTE'");//Muestra los Presupuestos Pendientes
$total['estado'] = mysqli_num_rows($obrasp);

$consulta3 = "SELECT SUM(pesototal) as salidasperfileria FROM remitosclientes WHERE id_categoria IN (4) AND fecha='$fecha_menos1dia' GROUP BY fecha";
$salidasperfileria= $conexion -> query($consulta3);
$fila=$salidasperfileria->fetch_assoc();//te devuelve un array asociativo con el nombre del campo
$salidasperfileria=$fila['salidasperfileria'];//Este es el valor que acabas de calcular en la consulta

$consulta4 = "SELECT SUM(pesototal) as salidasestructura FROM remitosclientes WHERE id_categoria IN (2) AND fecha='$fecha_menos1dia' GROUP BY fecha";
$salidasestructura= $conexion -> query($consulta4);
$fila=$salidasestructura->fetch_assoc();//te devuelve un array asociativo con el nombre del campo
$salidasestructura=$fila['salidasestructura'];//Este es el valor que acabas de calcular en la consulta

error_reporting(0);
session_start();


?>
<?php include "../includes/header.php";?>

<!-- Begin Page Content -->
<div class="container-fluid">
    <!-- Content Row -->
    <div class="row">
    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                </div>
                <a class="card-category text-danger font-weight-bold">
                    Kgs en Flejes
                </a>
                <meter id="fuel"
                        min="0" max="500000"
                        low="120000" high="500000" optimum="200000"
                        value=<?php echo $SumaFlejes;?>>
                </meter>
                <h3 class="card-title"><?php echo $SumaFlejes;echo ' Kgs'?></h3>
            </div>
            <div class="card-footer bg-danger text-white">
            </div>
        </div>
    </div>
    
    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                </div>
                <a class="card-category text-danger font-weight-bold">
                    Kgs en Bobinas
                </a>
                <meter id="fuel"
                        min="0" max="2000000"
                        low="500000" high="2000000" optimum="900000"
                        value=<?php echo $SumaBobinas;?>>
                </meter>
                <h3 class="card-title"><?php echo $SumaBobinas;echo ' Kgs'?></h3>
            </div>
            <div class="card-footer bg-danger text-white">
            </div>
        </div>
    </div>
    <div class="col-lg-2 col-md-4 col-sm-4">
        <div class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                </div>
                <a class="card-category text-danger font-weight-bold">
                    Kgs en Chapas
                </a>
                <meter id="fuel"
                        min="0" max="1500000"
                        low="120000" high="1500000" optimum="800000"
                        value=<?php echo $SumaTotal;?>>
                </meter>
                <h3 class="card-title"><?php echo $SumaTotal;echo ' Kgs'?></h3>
            </div>
            <div class="card-footer bg-danger text-white">
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-4">
        <div class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                    <?php echo $fecha_menos1dia?>
                </div>
                <a class="card-category text-danger font-weight-bold">
                    Salida Perfileria   
                </a>
                <meter id="fuel"
                        min="0" max="8000"
                        low="1200" high="5000" optimum="3500"
                        value=<?php echo $salidasperfileria;?>>
                </meter>
                <h3 class="card-title"><?php echo $salidasperfileria;echo ' Kgs'?></h3>
            </div>
            <div class="card-footer bg-success text-white">
            </div>
        </div>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-4">
        <div class="card card-stats">
            <div class="card-header card-header-danger card-header-icon">
                <div class="card-icon">
                    <?php echo $fecha_menos1dia ?>
                </div>
                <a class="card-category text-danger font-weight-bold">
                    Salida Estructuras
                </a>
                <meter id="fuel"
                        min="0" max="3500"
                        low="10" high="3000" optimum="5000"
                        value=<?php echo $salidasestructura;?>>
                </meter>
                <h3 class="card-title"><?php echo $salidasestructura;echo ' Kgs'?></h3>
            </div>
            <div class="card-footer bg-success text-white">
            </div>
        </div>
    </div>

    <div class="card-body">
            <div class="table-responsive">
            <center><h4 class="m-2 font-weight-bold text-primary">OBRAS PARA ENTREGAR </h4></center>
                <table class="table table-striped table-bordered" id="dataTable">
                    <thead class="thead-dark">
                        <tr>
                            <th>Descripcion</th>
                            <th>Fecha Alta</th>
                            <th>Fecha Entrega</th>
                            <th>Avance</th>
                            <th>Cliente</th>
                            <th>Apellido</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $query = mysqli_query($conexion, "SELECT o.id,o.descripcion,o.fecha_alta,o.fecha_entrega,o.avance,c.nombre,c.apellido 
                        FROM clientes as c INNER JOIN obras as o ON c.id = o.id_cliente AND o.estado='CONFIRMADA' GROUP BY o.id ORDER BY o.fecha_entrega ASC");
                        $result = mysqli_num_rows($query);
                        if ($result > 0) {
                            while ($fila = mysqli_fetch_assoc($query)) {?>
                                <tr>
                                    <td><?php echo $fila['descripcion']; ?></td>
                                    <td><?php echo $fila['fecha_alta']; ?></td>
                                    <td><?php echo $fila['fecha_entrega']; ?></td>
                                    <td><center><?php echo $fila['avance'] .' %'; ?></center></td>
                                    <td><?php echo $fila['nombre']; ?></td>
                                    <td><?php echo $fila['apellido']; ?></td>
                                    </td>
                                </tr>
                        <?php }
                        } ?>
                    </tbody>
                </table>
                
            </div>
        </div>
    </div>
</div>

<!-- End of Main Content -->
<?php include "../includes/footer.php";?>