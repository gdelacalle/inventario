-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-09-2023 a las 00:02:59
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(2, 'ESTRUCTURA', '2023-08-09 14:41:45'),
(3, 'BOBINAS', '2023-08-09 14:41:47'),
(4, 'PERFILERIA', '2023-08-09 14:50:47'),
(54, 'CHAPAS ESTRUCTURA', '2023-08-25 16:27:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `direccion` varchar(150) NOT NULL,
  `cuit` varchar(50) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `apellido`, `telefono`, `correo`, `direccion`, `cuit`, `fecha`) VALUES
(37, 'MARCELO LANZA', 'LOGISTICA ZONA SUR S.A', '30708700475', 'mugarte5672@gmail.com', 'EL CARMELO 4281', '30-45632145-7', '2023-08-07 14:06:13'),
(38, 'GUSTAVO VEGA', 'ESTRUCTURAS VEGA', '357212345678', 'GUSTAVO@VEGA.COM', 'RUTA 13 KM 5', '20-35356556-8', '2023-08-07 14:07:18'),
(39, 'GABRIEL HORACIO', 'DE LA CALLE', '+543513457045', 'GDELACALLE@GMAIL.COM', 'Quebracho 275', '20-29237921-9', '2023-08-07 14:07:51'),
(40, 'JOSE PEREZ', 'RIGAR 3', '03514784569', 'RIGAR3@RIGAR.COM.AR', 'AU 9 KM 620', '30-52525252-2', '2023-08-11 10:38:31'),
(41, 'JOSE MARIA', 'CASANOVES', '35724569871', 'JOSE@CASANOVES.COM.AR', 'MARCONI 1345', '30-89564512-9', '2023-08-11 11:14:53'),
(42, 'GARCIA POSSI EDUARDO JAVIER', 'GRUPO ARES S.A.', '', '', 'AV. PATRIA 484', '30-70831279-3', '2023-08-14 12:00:01'),
(43, 'CONSUMIDOR FINAL', 'CONSUMIDOR FINAL', '', 'consumidor@final.com', 'SIN DOMICILIO', '11-1111111111-1', '2023-08-22 15:13:11'),
(44, 'ALUWIND', 'ALUWIND', '', '', '', '', '2023-08-28 10:15:36'),
(45, 'ANODAL', 'ANODAL', '', '', '', '', '2023-08-28 10:15:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `codbarra`
--

CREATE TABLE `codbarra` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `codigo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `codbarra`
--

INSERT INTO `codbarra` (`id`, `id_producto`, `codigo`) VALUES
(22, 365, '1112233'),
(23, 366, '1112232');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_obra`
--

CREATE TABLE `detalle_obra` (
  `id` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `metros` int(10) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `peso` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_obra`
--

INSERT INTO `detalle_obra` (`id`, `id_producto`, `seccion`, `cantidad`, `metros`, `unidad`, `peso`) VALUES
(1, 365, '250 X 4.8 X 150 X 6.4', 1, 1, 'KG', 900),
(2, 365, '250 X 4.8 X 150 X 6.4', 1, 1, 'KG', 900),
(3, 372, '300 X 4.8 X 150 X 6.4', 1, 5, 'MTS', 0),
(4, 372, '300 X 4.8 X 150 X 6.4', 1, 5, 'MTS', 0),
(5, 0, '', 0, 0, '', 0),
(6, 372, '250 X 4.8 X 150 X 6.4', 2, 6, 'MTS', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregas`
--

CREATE TABLE `entregas` (
  `id` int(10) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `id_producto` int(50) NOT NULL,
  `cantidad` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equivalencias`
--

CREATE TABLE `equivalencias` (
  `id` int(11) NOT NULL,
  `e1` decimal(10,2) DEFAULT NULL,
  `e2` decimal(10,2) DEFAULT NULL,
  `b` decimal(10,2) DEFAULT NULL,
  `h1` decimal(10,2) DEFAULT NULL,
  `h2` decimal(10,2) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `id_categoria` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equivalencias`
--

INSERT INTO `equivalencias` (`id`, `e1`, `e2`, `b`, `h1`, `h2`, `peso`, `id_categoria`, `seccion`) VALUES
(29, 4.80, 6.40, 150.00, 500.00, 488.00, 33.91, 2, '500 X 4.8 X 150 X 6.4'),
(31, 2.00, 0.00, 0.00, 120.00, 50.00, 3.72, 4, '120 X 50 X 2'),
(32, 2.00, 0.00, 0.00, 140.00, 60.00, 4.50, 4, '140 X 60 X 2'),
(33, 2.00, 0.00, 0.00, 160.00, 60.00, 4.82, 4, '160 X 60 X 2'),
(36, 4.80, 6.40, 150.00, 200.00, 188.00, 18.54, 2, '200 X 4.8 X 150 X 6.4'),
(37, 4.80, 6.40, 200.00, 350.00, 338.00, 26.45, 2, '350 X 4.8 X 200 X 6.4'),
(38, 4.80, 6.40, 150.00, 400.00, 200.00, 1.00, 2, 'VARIABLE'),
(39, 6.40, 6.40, 185.00, 510.00, 498.00, 44.40, 2, '500 X 6,4 X 185 X 6.4'),
(40, 4.80, 6.40, 148.00, 262.00, 248.00, 24.52, 2, '262 X 4.8 X 148 X 6.4'),
(41, 4.80, 6.40, 165.00, 510.00, 498.00, 35.75, 2, 'VIGA PRINCIPAL (H:500) X 165'),
(42, 4.80, 4.80, 148.00, 157.00, 148.00, 16.87, 2, 'VIGA DE COMPRESION (H:148) X 148'),
(43, 4.80, 6.40, 148.00, 384.00, 375.00, 29.25, 2, 'VIGA GUIA PORTON (375 X 4.8 X148 X 6.4)'),
(44, 2.50, 0.00, 0.00, 140.00, 6.50, 9.00, 4, 'PALOTES (140)'),
(45, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 1, 'CHAPAS'),
(46, 0.00, 0.00, 0.00, 0.00, 0.00, 23.40, 4, 'PALOTE CENEFA LATERAL ( 2MTS ALTO )'),
(47, 0.00, 0.00, 0.00, 0.00, 0.00, 23.40, 4, 'PALOTE CENEFA FRENTE Y FONDO ( 2MTS ALTO )'),
(48, 0.00, 0.00, 0.00, 0.00, 0.00, 4.50, 4, 'CORREAS FONDO ( 140 )'),
(49, 0.00, 0.00, 0.00, 0.00, 0.00, 4.50, 4, 'CORREAS FRENTE ( 140 )'),
(50, 0.00, 0.00, 0.00, 0.00, 0.00, 4.50, 4, 'CORREAS LATERALES ( 140 )'),
(51, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 54, 'POR PESO EN KGS'),
(53, 4.80, 0.00, 8.00, 0.00, 0.00, 450.00, 54, 'CHAPA 4.8 x 8mts'),
(54, 4.80, 0.00, 10.00, 0.00, 0.00, 565.00, 54, 'CHAPA 4.8 x 10mts'),
(55, 4.80, 0.00, 12.00, 0.00, 0.00, 675.00, 54, 'CHAPA 4.8 x 12mts'),
(56, 6.40, 0.00, 8.00, 0.00, 0.00, 602.00, 54, 'CHAPA 6.4 x 8mts'),
(57, 6.40, 0.00, 10.00, 0.00, 0.00, 758.00, 54, 'CHAPA 6.4 x 10mts'),
(58, 6.40, 0.00, 12.00, 0.00, 0.00, 898.00, 54, 'CHAPA 6.4 x 12mts'),
(59, 7.90, 0.00, 12.00, 0.00, 0.00, 1142.00, 54, 'CHAPA 7.9 x 12mts'),
(60, 12.50, 0.00, 6.00, 0.00, 0.00, 886.00, 54, 'CHAPA 12.5 x 6mts'),
(61, 10.00, 0.00, 12.00, 0.00, 0.00, 1336.00, 54, 'CHAPA 10 x 12mts'),
(62, 3.20, 0.00, 3.00, 0.00, 0.00, 112.50, 54, 'CHAPA 3.2 x 3mts'),
(63, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 4, 'CHAPA ACANALADA'),
(64, 0.00, 0.00, 0.00, 0.00, 0.00, 1.23, 4, 'CHAPA ACANALADA PLASTICA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `existencia` int(11) NOT NULL,
  `minimo` int(11) NOT NULL,
  `venta` float NOT NULL,
  `compra` float NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pesounitario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `codigo`, `producto`, `existencia`, `minimo`, `venta`, `compra`, `unidad`, `id_categoria`, `fecha`, `pesounitario`) VALUES
(365, '000002', 'COLUMNA FRENTE', 0, 1, 0, 0, 'KG', 2, '2023-08-25 13:34:06', 0),
(366, 'LAMINADO', 'LAMINADO EN CALIENTE (LAC)', 19789575, 100001, 0, 0, 'KG', 2, '2023-08-31 10:17:02', 0),
(370, '100004', 'PERFIL C 140', 1, 1, 0, 0, 'UNIDAD', 4, '2023-08-11 13:27:28', 0),
(371, '100005', 'PERFIL C 160', 1, 1, 0, 0, 'UNIDAD', 4, '2023-08-11 13:27:43', 0),
(372, '000003', 'COLUMNA FRENTE Y FONDO', 1, 1, 0, 0, 'KG', 2, '2023-08-25 16:30:59', 0),
(374, '000006', 'COLUMNA LATERAL', 1, 1, 0, 0, 'KG', 2, '2023-08-11 13:25:59', 0),
(375, '100000', 'BOBINA CINCALUM 2,5MM', 3000000, 100000, 0, 0, 'KG', 4, '2023-08-25 15:18:11', 0),
(376, '100007', 'CORREAS DE CERRAMIENTO', 1, 1, 0, 0, 'KG', 4, '2023-08-25 16:31:33', 0),
(377, '100006', 'CORREAS DE CUBIERTA', 1, 1, 0, 0, 'KG', 4, '2023-08-14 11:37:18', 0),
(378, '100006', 'CHAPAS', 1, 1, 0, 0, 'KG', 1, '2023-08-14 11:38:04', 0),
(379, '000007', 'VIGA', 1, 1, 0, 0, 'KG', 2, '2023-08-14 12:05:05', 0),
(380, '100005', 'PALOTES', 1, 1, 0, 0, 'KG', 4, '2023-08-14 12:42:44', 0),
(381, '100007', 'CORREAS DE CENEFA', 1, 1, 0, 0, 'KG', 4, '2023-08-14 12:59:40', 0),
(382, 'CHA6.4X10', 'CHAPA 6.4 X 10mts', 72, 10, 0, 0, 'UNIDAD', 54, '2023-08-29 11:41:32', 758),
(383, 'CHA4.8X10', 'CHAPA 4.8 X 10mts', 96, 10, 0, 0, 'UNIDAD', 54, '2023-08-29 11:40:26', 565),
(384, 'CHA4.8X8', 'CHAPA 4.8 X 8mts', 228, 10, 0, 0, 'UNIDAD', 54, '2023-08-30 17:35:43', 450),
(385, 'CHA4.8X12', 'CHAPA 4.8 X 12mts', 156, 10, 0, 0, 'UNIDAD', 54, '2023-08-29 11:41:54', 675),
(386, 'CHA6.4X8', 'CHAPA 6.4 X 8mts', 195, 10, 0, 0, 'UNIDAD', 54, '2023-08-30 17:36:05', 602),
(387, 'CHA7.9X12', 'CHAPA 7.9 X 12mts', 249, 10, 0, 0, 'UNIDAD', 54, '2023-08-25 16:29:01', 1142),
(388, 'CHA12.5X6', 'CHAPA 12.5 X 6mts', 15, 5, 0, 0, 'UNIDAD', 54, '2023-08-25 16:29:33', 886),
(389, 'CHA10X12', 'CHAPA 10 X 12mts', 29, 10, 0, 0, 'UNIDAD', 54, '2023-08-25 16:29:41', 1336),
(390, 'CHA3.2X3', 'CHAPA 3.2 X 3mts', 124, 10, 0, 0, 'UNIDAD', 54, '2023-08-25 16:29:50', 113),
(391, 'CHA6.4X12', 'CHAPA 6.4 X 12mts', 178, 10, 0, 0, 'UNIDAD', 54, '2023-08-25 16:29:59', 898),
(392, 'CHAACCINC', 'CHAPA ACANALADA CINCALUM 2.5mm TECHO', 100000, 10000, 0, 0, 'UNIDAD', 4, '2023-08-28 10:18:16', 0),
(393, 'CHAACPLAS', 'CHAPA ACANALADA PLASTICA', 100000, 1000, 0, 0, 'UNIDAD', 4, '2023-08-28 10:19:01', 0),
(394, 'CHATRGRIS', 'CHAPA TRAPEZOIDAL GRIS', 100000, 1000, 0, 0, 'UNIDAD', 4, '2023-08-28 10:19:58', 0),
(395, 'AISLAN', 'AISLANTE', 100000, 1000, 0, 0, 'UNIDAD', 4, '2023-08-28 10:20:33', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_detalle_obra` int(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `contrato` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id`, `descripcion`, `fecha_alta`, `fecha_entrega`, `id_cliente`, `id_detalle_obra`, `estado`, `contrato`) VALUES
(76, 'TINGLADO 25 X 75', '2023-08-10', '2023-08-14', 38, 0, 'PENDIENTE', ''),
(81, 'GRUPO ARES S.A.', '2023-08-14', '2023-08-29', 42, 0, 'CONFIRMADA', ''),
(95, 'PRUEBA', '0000-00-00', NULL, 39, 0, 'PENDIENTE', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `rol`) VALUES
(1, 'Administrador'),
(2, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuesto`
--

CREATE TABLE `presupuesto` (
  `id` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(50) NOT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `presupuesto`
--

INSERT INTO `presupuesto` (`id`, `id_cliente`, `id_obra`, `id_producto`, `seccion`, `metros`, `cantidad`, `peso`, `unidad`, `pesototal`, `estado`, `fecha_entrega`) VALUES
(1, 42, 81, 374, '500 X 6,4 X 185 X 6.4', 10.00, 34, NULL, 'MTS', NULL, '', NULL),
(2, 42, 81, 372, '262 X 4.8 X 148 X 6.4', 10.44, 2, NULL, 'MTS', NULL, '', NULL),
(3, 42, 81, 372, '262 X 4.8 X 148 X 6.4', 10.93, 2, NULL, 'MTS', NULL, '', NULL),
(4, 42, 81, 372, '262 X 4.8 X 148 X 6.4', 10.51, 2, NULL, 'MTS', NULL, '', NULL),
(5, 42, 81, 372, '262 X 4.8 X 148 X 6.4', 11.06, 2, NULL, 'MTS', NULL, '', NULL),
(6, 42, 81, 372, '262 X 4.8 X 148 X 6.4', 5.59, 1, NULL, 'MTS', NULL, '', NULL),
(7, 42, 81, 379, 'VIGA PRINCIPAL (H:500) X 165', 13.35, 34, NULL, 'MTS', NULL, '', NULL),
(8, 42, 81, 379, 'VIGA GUIA PORTON (375 X 4.8 X148 X 6.4)', 8.00, 1, NULL, 'MTS', NULL, '', NULL),
(9, 42, 81, 379, 'VIGA DE COMPRESION (H:148) X 148', 5.81, 8, NULL, 'MTS', NULL, '', NULL),
(10, 42, 81, 376, '140 X 60 X 2', 11.93, 32, NULL, 'MTS', NULL, '', NULL),
(11, 42, 81, 376, '140 X 60 X 2', 11.79, 66, NULL, 'MTS', NULL, '', NULL),
(12, 42, 81, 376, '140 X 60 X 2', 5.99, 15, NULL, 'MTS', NULL, '', NULL),
(13, 42, 81, 376, '140 X 60 X 2', 11.89, 15, NULL, 'MTS', NULL, '', NULL),
(14, 42, 81, 376, '140 X 60 X 2', 5.31, 43, NULL, 'MTS', NULL, '', NULL),
(15, 42, 81, 376, '140 X 60 X 2', 4.64, 24, NULL, 'MTS', NULL, '', NULL),
(16, 42, 81, 376, '140 X 60 X 2', 4.71, 10, NULL, 'MTS', NULL, '', NULL),
(17, 42, 81, 376, '140 X 60 X 2', 4.00, 8, NULL, 'MTS', NULL, '', NULL),
(18, 42, 81, 377, '140 X 60 X 2', 11.93, 44, NULL, 'MTS', NULL, '', NULL),
(19, 42, 81, 377, '140 X 60 X 2', 11.79, 132, NULL, 'MTS', NULL, '', NULL),
(20, 42, 81, 380, 'PALOTES (140)', 11.93, 4, NULL, 'MTS', NULL, '', NULL),
(21, 42, 81, 380, 'PALOTES (140)', 11.79, 12, NULL, 'MTS', NULL, '', NULL),
(22, 42, 81, 378, 'CHAPAS', 2540.00, 1, NULL, 'MTS', NULL, '', NULL),
(23, 42, 81, 378, 'CHAPAS', 2456.00, 1, NULL, 'MTS', NULL, '', NULL),
(24, 42, 81, 380, 'PALOTE CENEFA LATERAL ( 2MTS ALTO )', 1.00, 34, NULL, 'UNIDAD', NULL, '', NULL),
(25, 42, 81, 380, 'PALOTE CENEFA FRENTE Y FONDO ( 2MTS ALTO )', 1.00, 14, NULL, 'UNIDAD', NULL, '', NULL),
(26, 42, 81, 381, 'CORREAS FONDO ( 140 )', 5.16, 6, NULL, 'MTS', NULL, '', NULL),
(27, 42, 81, 381, 'CORREAS FONDO ( 140 )', 5.21, 9, NULL, 'MTS', NULL, '', NULL),
(28, 42, 81, 381, 'CORREAS FRENTE ( 140 )', 4.49, 6, NULL, 'MTS', NULL, '', NULL),
(29, 42, 81, 381, 'CORREAS FRENTE ( 140 )', 4.53, 6, NULL, 'MTS', NULL, '', NULL),
(30, 42, 81, 381, 'CORREAS FRENTE ( 140 )', 3.90, 6, NULL, 'MTS', NULL, '', NULL),
(31, 42, 81, 381, 'CORREAS LATERALES ( 140 )', 5.75, 12, NULL, 'MTS', NULL, '', NULL),
(32, 42, 81, 381, 'CORREAS LATERALES ( 140 )', 5.80, 84, NULL, 'MTS', NULL, '', NULL),
(33, 42, 81, 378, 'CHAPAS', 2.00, 248, NULL, 'MTS', NULL, '', NULL),
(34, 0, 72, 365, '200 X 4.8 X 150 X 6.4', 6.32, 5, NULL, 'MTS', NULL, '', NULL),
(100, 0, 91, 381, '262 X 4.8 X 148 X 6.4', 1.00, 8, NULL, 'MTS', NULL, '', NULL),
(101, 0, 91, 365, '262 X 4.8 X 148 X 6.4', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(102, 0, 91, 365, '500 X 6,4 X 185 X 6.4', 1.29, 2, NULL, 'MTS', NULL, '', NULL),
(103, 0, 91, 380, 'PALOTE CENEFA FRENTE Y FONDO ( 2MTS ALTO )', 12.20, 2, NULL, 'MTS', NULL, '', NULL),
(124, 0, 91, 365, '350 X 4.8 X 200 X 6.4', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(153, 0, 92, 381, '262 X 4.8 X 148 X 6.4', 1.00, 8, NULL, 'MTS', NULL, '', NULL),
(154, 0, 92, 365, '262 X 4.8 X 148 X 6.4', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(155, 0, 92, 365, '500 X 6,4 X 185 X 6.4', 1.29, 2, NULL, 'MTS', NULL, '', NULL),
(156, 0, 92, 380, 'PALOTE CENEFA FRENTE Y FONDO ( 2MTS ALTO )', 12.20, 2, NULL, 'MTS', NULL, '', NULL),
(157, 0, 93, 365, '350 X 4.8 X 200 X 6.4', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(158, 0, 72, 377, '500 X 6,4 X 185 X 6.4', 12.36, 2, NULL, 'MTS', NULL, '', NULL),
(163, 0, 93, 374, '160 X 60 X 2', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(164, 0, 93, 374, '350 X 4.8 X 200 X 6.4', 1.26, 2, NULL, 'MTS', NULL, '', NULL),
(165, 0, 93, 381, '140 X 60 X 2', 1.78, 2, NULL, 'MTS', NULL, '', NULL),
(166, 0, 93, 365, '160 X 60 X 2', 31.00, 2, NULL, 'MTS', NULL, '', NULL),
(167, 0, 93, 378, 'CHAPAS', 1.00, 10, NULL, 'MTS', NULL, '', NULL),
(168, 0, 72, 379, 'VIGA DE COMPRESION (H:148) X 148', 15.00, 8, NULL, 'MTS', NULL, '', NULL),
(169, 0, 93, 380, 'PALOTE CENEFA LATERAL ( 2MTS ALTO )', 2.36, 10, NULL, 'MTS', NULL, '', NULL),
(170, 0, 72, 376, 'CORREAS LATERALES ( 140 )', 5.25, 120, NULL, 'MTS', NULL, '', NULL),
(171, 0, 94, 374, '350 X 4.8 X 200 X 6.4', 11.93, 10, NULL, 'MTS', NULL, '', NULL),
(172, 0, 94, 365, '262 X 4.8 X 148 X 6.4', 5.98, 8, NULL, 'MTS', NULL, '', NULL),
(173, 0, 74, 377, '140 X 60 X 2', 8.52, 2, NULL, 'MTS', NULL, '', NULL),
(179, 0, 71, 374, '350 X 4.8 X 200 X 6.4', 1.00, 6, NULL, 'MTS', NULL, '', NULL),
(180, 0, 71, 372, '262 X 4.8 X 148 X 6.4', 1.00, 10, NULL, 'MTS', NULL, '', NULL),
(181, 0, 71, 365, '160 X 60 X 2', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(182, 0, 71, 365, '160 X 60 X 2', 1.09, 1, NULL, 'MTS', NULL, '', NULL),
(186, 0, 91, 365, '500 X 4.8 X 150 X 6.4', 11.85, 2, NULL, 'MTS', NULL, '', NULL),
(187, 0, 76, 381, '262 X 4.8 X 148 X 6.4', 8.56, 8, NULL, 'MTS', NULL, '', NULL),
(198, 0, 72, 372, '200 X 4.8 X 150 X 6.4', 1.02, 1, 0.00, 'MTS', 0.00, '', NULL),
(199, 0, 72, 381, '262 X 4.8 X 148 X 6.4', 1.04, 2, 0.00, 'MTS', 0.00, '', NULL),
(200, 0, 72, 377, '500 X 4.8 X 150 X 6.4', 1.04, 8, 0.00, 'MTS', 0.00, '', NULL),
(201, 0, 72, 372, '262 X 4.8 X 148 X 6.4', 1.00, 2, 0.00, 'UNIDAD', 0.00, '', NULL),
(202, 0, 72, 380, 'PALOTE CENEFA LATERAL ( 2MTS ALTO )', 12.35, 8, NULL, 'MTS', NULL, '', NULL),
(215, 0, 72, 365, '200 X 4.8 X 150 X 6.4', 1.00, 2, 0.00, 'MTS', NULL, '', NULL),
(840, 0, 76, 365, '350 X 4.8 X 200 X 6.4', 2.65, 8, 21.20, 'MTS', NULL, '', NULL),
(841, 0, 76, 378, '200 X 4.8 X 150 X 6.4', 1.00, 2, NULL, 'MTS', NULL, '', NULL),
(842, 0, 76, 365, '140 X 60 X 2', 1.00, 2, 0.00, 'MTS', NULL, '', NULL),
(843, 0, 72, 372, '350 X 4.8 X 200 X 6.4', 15.54, 8, NULL, 'MTS', NULL, '', NULL),
(844, 0, 72, 376, '140 X 60 X 2', 4.58, 6, NULL, 'MTS', NULL, '', NULL),
(845, 0, 72, 377, '160 X 60 X 2', 18.69, 10, NULL, 'MTS', NULL, '', NULL),
(846, 0, 95, 382, 'CHAPA 6.35 X 1500 X 10000', 1.00, 1, NULL, 'UNIDAD', NULL, '', NULL),
(850, 0, 95, 384, 'CHAPA 4.8 x 8mts', 1.00, 231, NULL, 'PAQUETE', NULL, '', NULL),
(851, 0, 95, 383, 'CHAPA 4.8 x 10mts', 1.00, 98, NULL, 'PAQUETE', NULL, '', NULL),
(852, 0, 95, 385, 'CHAPA 4.8 x 12mts', 1.00, 164, NULL, 'PAQUETE', NULL, '', NULL),
(853, 0, 95, 386, 'CHAPA 6.4 x 8mts', 1.00, 198, NULL, 'PAQUETE', NULL, '', NULL),
(854, 0, 95, 382, 'CHAPA 6.4 x 10mts', 1.00, 76, NULL, 'PAQUETE', NULL, '', NULL),
(855, 0, 95, 391, 'CHAPA 6.4 x 12mts', 1.00, 178, NULL, 'PAQUETE', NULL, '', NULL),
(856, 0, 95, 387, 'CHAPA 7.9 x 12mts', 1.00, 249, NULL, 'PAQUETE', NULL, '', NULL),
(857, 0, 95, 388, 'CHAPA 12.5 x 6mts', 1.00, 15, NULL, 'PAQUETE', NULL, '', NULL),
(858, 0, 95, 389, 'CHAPA 10 x 12mts', 1.00, 29, NULL, 'PAQUETE', NULL, '', NULL),
(859, 0, 95, 390, 'CHAPA 3.2 x 3mts', 1.00, 124, NULL, 'PAQUETE', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestotemporal`
--

CREATE TABLE `presupuestotemporal` (
  `id` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(50) NOT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vendidos`
--

CREATE TABLE `productos_vendidos` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `fecha_entrega` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `r_social` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `cuit` varchar(50) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `name`, `r_social`, `direccion`, `telefono`, `cuit`, `correo`, `fecha`) VALUES
(12, 'ACEROS DUROS', 'A.C.I.N.D.A.R.', 'RUTA123 BS.AS.', '0112365487', '30-25441236-9', 'acindar@acindar.com.ar', '2023-08-07 14:05:17'),
(13, 'ACEROS BLANDOS', 'ACEROS CORDOBA', 'ESQUIU 1234 BS.AS.', '0112365487', '30-25456789-6', 'ACEROA@ACEROSCBA.COM.AR', '2023-08-07 14:05:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitosclientes`
--

CREATE TABLE `remitosclientes` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `producto` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `id_categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `remitosclientes`
--

INSERT INTO `remitosclientes` (`id`, `numero`, `id_obra`, `id_cliente`, `descripcion`, `producto`, `seccion`, `metros`, `cantidad`, `peso`, `unidad`, `pesototal`, `id_categoria`) VALUES
(1, 0, 0, 0, '0', 0, '0', NULL, NULL, NULL, NULL, NULL, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitosclientestmp`
--

CREATE TABLE `remitosclientestmp` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `producto` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `id_categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitosobra`
--

CREATE TABLE `remitosobra` (
  `id` int(11) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `producto` int(10) NOT NULL,
  `id_seccion` int(10) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_categoria` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitostmp`
--

CREATE TABLE `remitostmp` (
  `id` int(11) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `producto` int(10) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `id_categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `descripcion`) VALUES
(1, 'ADMINISTRADOR'),
(2, 'EMPLEADO'),
(3, 'ADMINISTRACION'),
(4, 'OPERARIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `seccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`id`, `id_producto`, `seccion`) VALUES
(9, 365, '250 X 4.8 X 150 X 6.4'),
(10, 365, '300 X 4.8 X 150 X 6.4'),
(11, 365, '500 X 4.8 X 150 X 6.4'),
(12, 367, '80 X 50 X 2'),
(13, 368, '100 X 50 X 1.6'),
(14, 369, '120 X 50 X 2'),
(15, 370, '140 X 60 X 2'),
(16, 371, '160 X 60 X 2'),
(18, 372, '500 X 4.8 X 200 X 6.4'),
(19, 0, 'VARIABLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `usuario`, `nombre_completo`, `correo`, `telefono`, `password`, `fecha`, `id_rol`) VALUES
(1, 'gabriel', '', 'gdelacalle@gmail.com', '3513457045', '$2y$05$slzuWkljbIpYOQxKAcXh3uFSlMt37AkyeYtyjozQprCKdY6NsJG66', '2023-08-03 13:56:14', 1),
(4, 'prueba4', '', '4', '4', '$2y$05$BOCtsEQpDvbMiyMHA1Yggu/LSoayazwHiaJU4EHAIjIJURDGLct26', '2023-07-12 17:29:04', 4),
(8, 'regina', '', 'regina@estructurasvega.com.ar', '03572589015', '$2y$05$qLN5tPg70Oy2kN0o93gvhe94ua.0ymIBH6slQoVJkvhAB1BfXZxGi', '2023-08-03 13:57:04', 1),
(9, 'administrador', '', 'gdelacalle@gmail.com', '03513457045', '$2y$05$lL9VP/cnGtLR36et9hVGMOmNkI9wna9ikFxTWqTZifi4YBjWT0DRq', '2023-08-03 14:12:43', 1),
(12, 'vero', '', 'veronica@estructurasvega.com', '035724563214', '$2y$05$YcBwMLoegq.c1WovlPcoiOGO/0/s7zLfPmNfawr5oDtjbBqxz0ZbS', '2023-08-03 13:54:55', 1),
(13, 'gustavo', '', 'gustavo@vega.com ', '35724563214', '$2y$05$pD3OGGA865I0ngwOy3RnNuVCo1n3uxloWrviIcNOST13jTrKy56s.', '2023-08-02 15:45:14', 1);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v` (
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `total` float NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `pago` float NOT NULL,
  `cambio` float NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura para la vista `v`
--
DROP TABLE IF EXISTS `v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v`  AS SELECT `presupuestotmp`.`cantidad` AS `cantidad`, `presupuestotmp`.`metros` AS `metros`, `presupuestotmp`.`cantidad`* `presupuestotmp`.`metros` AS `value` FROM `presupuestotmp` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `codbarra`
--
ALTER TABLE `codbarra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_obra`
--
ALTER TABLE `detalle_obra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entregas`
--
ALTER TABLE `entregas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equivalencias`
--
ALTER TABLE `equivalencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `obras`
--
ALTER TABLE `obras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presupuestotemporal`
--
ALTER TABLE `presupuestotemporal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `remitosclientes`
--
ALTER TABLE `remitosclientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `remitosclientestmp`
--
ALTER TABLE `remitosclientestmp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `remitosobra`
--
ALTER TABLE `remitosobra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obra` (`id_obra`),
  ADD KEY `producto` (`producto`);

--
-- Indices de la tabla `remitostmp`
--
ALTER TABLE `remitostmp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obra` (`id_obra`),
  ADD KEY `producto` (`producto`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users-rol` (`id_rol`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `codbarra`
--
ALTER TABLE `codbarra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `detalle_obra`
--
ALTER TABLE `detalle_obra`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equivalencias`
--
ALTER TABLE `equivalencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT de la tabla `presupuestotemporal`
--
ALTER TABLE `presupuestotemporal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=869;

--
-- AUTO_INCREMENT de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `remitosclientes`
--
ALTER TABLE `remitosclientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT de la tabla `remitosclientestmp`
--
ALTER TABLE `remitosclientestmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=486;

--
-- AUTO_INCREMENT de la tabla `remitosobra`
--
ALTER TABLE `remitosobra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT de la tabla `remitostmp`
--
ALTER TABLE `remitostmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `obras`
--
ALTER TABLE `obras`
  ADD CONSTRAINT `obras_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `remitosobra`
--
ALTER TABLE `remitosobra`
  ADD CONSTRAINT `remitosobra_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `remitosobra_ibfk_2` FOREIGN KEY (`producto`) REFERENCES `inventario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `remitostmp`
--
ALTER TABLE `remitostmp`
  ADD CONSTRAINT `remitostmp_ibfk_1` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `remitostmp_ibfk_2` FOREIGN KEY (`producto`) REFERENCES `inventario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users-rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
