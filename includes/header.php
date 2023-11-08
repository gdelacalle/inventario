<?php
error_reporting(0);
session_start();
$usuario = $_SESSION['usuario'];
$permiso = $_SESSION['type'];
if ($usuario == null || $usuario == ''  && $permiso == null || $permiso == '') {

    echo "<script language='JavaScript'>
    alert('Error: Debes iniciar sesion primero ');
    location.assign('../includes/sesion/login.php');
    </script>";

    die();
} ?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=yes">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ESTRUCTURAS VEGA - Sistema de Inventario</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <!-- <link href="../vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet"> -->
    <link rel="stylesheet" href="../package/dist/sweetalert2.css">
    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

    <script src="../js/jquery.min.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand justify-content-center" href="index.php">
            <div class="sidebar-brand-text">ESTRUCTURAS VEGA</sup></div>
            </a>
            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="../views/index.php">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Principal</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <?php if($permiso=="1" || $permiso=="2" || $permiso=="3" ): ?>

             <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Productos</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/inventario.php">Productos</a>
                        <a class="collapse-item" href="../views/materias_primas.php">Materias Primas</a>
                        <a class="collapse-item" href="../views/codbarra.php">Codigos de barra</a>

                    </div>
                </div>
            </li>
           
            <?php endif; ?>
        
            <?php if($permiso=="1" || $permiso=="2" || $permiso=="3" || $permiso=="4"): ?>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseClientes" aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-user"></i>
                    <span>Clientes</span>
                </a>
                <div id="collapseClientes" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/clientes.php">Clientes</a>

                    </div>
                </div>
            </li>

            <?php endif; ?>

            <?php if($permiso=="1" || $permiso=="2"): ?>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePresupuestos" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cogs"></i>
                    <span>Presupuestos</span>
                </a>
                <div id="collapsePresupuestos" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/presupuesto.php">Listado de Presupuestos</a>
                    </div>
                </div>
            </li>
            <?php endif; ?>

            <?php if($permiso=="1" || $permiso=="4"): ?>

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseObras" aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cogs"></i>
                    <span>Obras</span>
                </a>
                <div id="collapseObras" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/obras.php">Detalle de Obras</a>

                    </div>
                </div>
            </li>

            <?php endif; ?>

            <?php if($permiso=="1" || $permiso=="2" || $permiso=="3" ): ?>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseParametros" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-cut"></i>
                    <span>Parametros</span>
                </a>
                <div id="collapseParametros" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/categorias.php">Categorias</a>
                        <a class="collapse-item" href="../views/equivalencias.php">Equivalencias</a>
                    </div>
                </div>
            </li>
            <?php endif; ?>

            <?php if($permiso=="1" || $permiso=="4"): ?>
            <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseContable" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Contable</span>
                </a>
                <div id="collapseContable" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/ingreso_caja.php">Ingresos a Caja</a>
                        <a class="collapse-item" href="../views/egreso_caja.php">Egresos de Caja</a>
                        <a class="collapse-item" href="../views/transferencia_cajas.php">Transferencias entre Cajas</a>
                        <a class="collapse-item" href="../views/detalle_mov_cajas.php">Detalle de Movimientos</a>
            </li>
            <?php endif; ?>

            <?php if($permiso=="1" || $permiso=="4"): ?>
            <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseVehiculos" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-car"></i>
                    <span>Vehículos</span>
                </a>
                <div id="collapseVehiculos" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/vehiculos.php">Flota Vehiculos</a>
            </li>
            <?php endif; ?>

            <?php if($permiso=="1"): ?>
                <hr class="sidebar-divider">

            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseConfig" aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-users"></i>
                    <span>Configuracion</span>
                </a>
                <div id="collapseConfig" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Modulos</h6>
                        <a class="collapse-item" href="../views/usuarios.php">Usuarios</a>
            </li>
            <?php endif; ?>
            
          <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">
            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">
            <!-- Main Content -->
            <div id="content">
                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <div class="input-group-append">
                               
                                <h4>Usuario actual:
                                <class style="text-transform: uppercase; color: blue;"> <?php echo $_SESSION['usuario']?> </h4>
                            </div>
                        </div>
                    </form>

         
                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"> <?php echo $_SESSION['usuario']; ?></span>
                                <img class="img-profile rounded-circle" src="../img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="../views/profile.php">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Perfil
                                </a>

                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Salir
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <?php include "../views/salir.php"; ?>