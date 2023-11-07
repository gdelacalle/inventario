<?php
session_start();
error_reporting(0);
ob_start();


require_once("../includes/db.php");
extract($_POST);

require ('../reportes/comprobante_transferencias_cajas.php');
$html = ob_get_clean();

require '../vendor/autoload.php';
use Dompdf\Dompdf;
$dompdf = new Dompdf(); //creamos el objeto Dompdf

$options=$dompdf -> getOptions();
$options ->set(array('IsRemoteEnabled'->true));
$dompdf -> setOptions($options);

$dompdf -> load_html($html);

$dompdf -> setPaper('A4');

$dompdf -> render();

$dompdf->stream("ComprobanteTransfer.pdf",array('Attachment'=>false));//true descarga directamente   ||  false abre navegador

$id = $_SESSION['id'];


?>