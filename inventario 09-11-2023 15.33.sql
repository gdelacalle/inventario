-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 19:32:50
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
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `estado` int(1) NOT NULL,
  `ubicacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `descripcion`, `importe`, `estado`, `ubicacion`) VALUES
(1, 'CAJA GENERAL', 0.00, 1, 'FABRICA'),
(2, 'CAJA CRISTINA', 0.00, 1, 'FABRICA'),
(3, 'CAJA LAURA', 0.00, 1, 'FABRICA'),
(4, 'CAJA GUSTAVO', 0.00, 1, 'FABRICA');

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
(54, 'CHAPAS ESTRUCTURA', '2023-08-25 16:27:33'),
(55, 'FLEJES', '2023-09-08 16:02:41'),
(56, 'FERRETERIA', '2023-09-28 01:39:21'),
(57, 'PAÑOL', '2023-09-28 01:39:29'),
(58, 'PRUEBA', '2023-10-18 11:03:06');

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
(1, 'CONSUMIDOR FINAL', 'CONSUMIDOR FINAL', '3511234567', 'consumidor@final.com', 'SIN DOMICILIO', '99-12345678-9', '2023-09-28 17:02:12'),
(38, 'GUSTAVO VEGA', 'ESTRUCTURAS VEGA', '357212345678', 'GUSTAVO@VEGA.COM', 'RUTA 13 KM 5', '20-35356556-8', '2023-08-07 17:07:18'),
(42, 'GARCIA POSSI EDUARDO JAVIER', 'GRUPO ARES S.A.', '', '', 'AV. PATRIA 484', '30-70831279-3', '2023-08-14 15:00:01'),
(44, 'ALUWIND', '', '', '', '', '', '2023-09-11 12:56:40'),
(45, 'ANODAL', '', '', '', '', '', '2023-09-11 12:56:47'),
(46, 'GERARDO', 'RE', '', '', '', '', '2023-09-11 12:58:05'),
(53, 'ALONSO', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(54, 'CESAR ', 'VALIENTE', '', '', 'PILAR', '', '2023-09-05 16:39:51'),
(55, 'DAVID', 'VIDELA', '', '', 'PILAR', '', '2023-09-05 17:10:30'),
(56, 'DIEGO', 'RAMIREZ 2', '', '', 'VILLA MARIA', '', '2023-09-06 13:12:47'),
(57, 'ESCUELA', 'ROMA', '', '', 'CORDOBA', '', '2023-09-11 12:57:20'),
(58, 'PLEGADOS X KGS', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(59, 'ESTRUCTURA X KG', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(60, 'MANZANA 50 L22', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(61, 'INGAP S.A', '', '', '', '', '', '2023-09-11 12:58:20'),
(62, 'ASIS', '', '', '', '', '', '2023-09-11 12:56:56'),
(63, 'POLO 52', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(64, 'EX CASA PEREZ', '', '', '', '', '', '2023-09-11 12:56:22'),
(65, 'CARLOS MANUEL', 'GARCIA (CARPAT)', '', '', 'Autopista CBA-ROSARIO km 695', '33707456839', '2023-09-29 16:45:16'),
(66, 'MANZANA 50 L4', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(67, 'RIGAR 2', '', '', '', '', '', '2023-09-11 12:58:39'),
(68, 'VINUESA', 'VINUESA', '', '', '', '', '2023-09-11 18:21:02'),
(69, 'JUAN', 'PERALTA', '', '', '', '', '2023-09-12 13:24:57'),
(70, 'MARCOS', 'TABARES', '', '', 'Leandro N. Alem 1082 - Rio 2', '27521769', '2023-10-30 12:11:38'),
(71, 'METAL CE', 'METAL CE', '', '', '', '', '2023-09-13 10:11:31'),
(72, 'JOSE MIGUEL', 'PELASSA', '', 'HERNANDO', 'INTENDENTE MERLO 38', '', '2023-09-13 12:22:19'),
(73, 'EDUARDO', 'VIADA', '', '', '', '', '2023-09-13 12:26:02'),
(74, 'POLICIA', 'POLICIA', '', '', '', '', '2023-09-13 13:17:14'),
(75, 'MOTORES PESADOS', ' ', '', '', '', '', '2023-09-13 13:39:18'),
(76, 'RUBEN', 'VEGA', '', '', 'RUTA 9 FERRETERIA', '', '2023-09-13 14:07:22'),
(77, 'CARLOS', 'ZALAZAR', '', '', '', '', '2023-09-14 12:16:24'),
(79, 'TOYOTA', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(80, 'RIGAR', 'RIGAR', '', '', '', '', '2023-09-15 13:57:45'),
(81, 'MANZANA 50 L21', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(82, 'JUAN', 'NICOLA', '', '', '', '', '2023-09-18 13:01:56'),
(83, 'MARTIN', 'NICOLA', '', '', '', '', '2023-09-20 10:05:23'),
(84, 'ADICIONAL', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(85, 'LOCALES', 'POLO 52', '', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(86, 'DIEGO', 'RAMIREZ 1', '', '', 'VILLA MARIA', '', '2023-09-21 10:06:34'),
(87, 'FABRICA', 'FABRICA', '', '', '', '', '2023-09-21 13:14:40'),
(88, 'MANZANA 50 L3', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(89, 'GABRIELA', 'EVENTOS', '', '', '', '', '2023-09-22 17:21:09'),
(91, 'CHANQUIA', ' ', '', '', '', '', '2023-09-25 12:00:57'),
(92, 'CARPAL', 'S.A.', '', '', '', '', '2023-09-25 12:17:33'),
(93, 'LOCALES COMERCIALES', '', '', '', '', '', '2023-10-26 14:14:37'),
(95, 'AM CORDOBA S.A.', ' ', '', '', '', '', '2023-09-25 15:34:25'),
(96, 'GASTON', 'COLOMER', '', '', '', '', '2023-09-26 18:56:34'),
(98, 'ECONOVO', 'ECONOVO', '', '', 'ONCATIVO', '', '2023-09-28 18:08:19'),
(99, 'JUAN CARLOS', 'CONCI', '', '', 'RUTA 74 COLONIA TIROLESA', '1052239', '2023-10-03 12:04:33'),
(100, 'JORGE RICARDO', 'LUCONI', '', '', 'RIO TERCERO', '', '2023-10-24 11:29:53'),
(101, 'CRISTIAN', 'VEGA', '', '', 'RUTA 13 KM 5', '', '2023-10-04 16:27:44'),
(102, 'PORTONES', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(103, 'LEVI', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(104, 'BATISTELA', ' ', '', '', '', '', '2023-10-06 14:04:41'),
(105, 'YPF', 'VILLA WARCALDE', '', '', '', '', '2023-10-10 11:03:12'),
(106, 'LEO', 'FERNANDEZ', '', '', '', '', '2023-10-11 17:34:41'),
(107, 'LAPROVITA', ' ', '', '', '', '', '2023-10-11 18:50:04'),
(108, ' ', 'SORIA', '', '', '', '', '2023-10-12 13:56:54'),
(109, 'GABRIEL HORACIO', 'DE LA CALLE', '+543513457045', '', 'Quebracho 275', '', '2023-10-20 12:44:39'),
(110, 'EZEQUIEL', 'VERA', '', '', '', '', '2023-10-20 18:42:05'),
(111, 'ESTRUCTURA X KG ( BEN 4000 )', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(112, 'ARIEL', 'PAPASODERO', '', '', 'RN-9 Km 554 - VILLA MARIA', '20-23181290-4', '2023-10-24 12:34:34'),
(113, 'VERONICA', ' ', '', '', '', '', '2023-10-25 11:09:35'),
(114, 'MAHUEN', 'MAHUEN S.A.', '', '', 'URQUIZA 28 - ALTA GRACIA', '', '2023-11-06 18:43:53'),
(115, 'CARLOS', 'LESZEWSIZKI', '', '', '', '', '2023-10-25 13:16:48'),
(116, 'DAVID', 'VALENZUELA', '', '', '', '', '2023-10-26 10:10:16'),
(117, 'FABIAN', 'VARGAS', '', '', '', '', '2023-10-26 13:13:56'),
(118, 'INGENIERIA EN SERVICIOS S.A.', 'MHM', '', '', '', '', '2023-10-26 13:23:34'),
(119, 'PERFILERIA', 'ESTRUCTURAS VEGA', '', '', 'RUTA 13 KM 669 - PILAR', '', '2023-11-06 18:44:13'),
(120, 'MIGUEL ANGEL', 'LAPOLLA', '', '', '', '', '2023-10-27 11:18:28'),
(121, 'JOSE', 'MIRENNA', '', '', '', '', '2023-10-26 17:34:45'),
(122, 'LUIGI', 'NONO', '', '', 'AUTOPISTA CBA - ROSARIO KM 630 - ONCATIVO', '', '2023-11-06 18:45:03'),
(123, 'VICTOR', 'GATTI', '', '', 'RUTA 9 KM 648 - LAGUNA LARGA', '30-70922213-5', '2023-10-27 15:12:18'),
(125, 'MATIAS', 'LAZARO', '', '', '', '', '2023-10-27 18:18:09'),
(126, 'LUCONI (DEVOLUCION)', 'RIO TERCERO', '', '', 'RIO TERCERO', '', '2023-10-27 18:21:06'),
(127, 'RAUL', 'CUBETTA', '', '', '', '', '2023-10-30 11:43:40'),
(128, 'LOCALES B', 'POLO 52', '35152525252', '', 'ACCESO AUTOPISTA CBA - ROSARIO', '', '2023-11-06 18:39:09'),
(129, 'FRANCO', 'ROSSI', '', '', '', '', '2023-10-31 11:49:15'),
(130, 'AEROCLUB', 'OLIVA', '', '', 'OLIVA', '', '2023-10-31 12:06:19'),
(131, 'LOCALES', 'NUÑEZ', '', '', '', '', '2023-11-01 10:26:37'),
(132, 'VIRGILI - TEMER', ' ', '', '', '', '', '2023-11-01 12:35:44'),
(133, 'SALON', 'RUTA 9', '', '', 'RUTA 9 ESQ YRIGOYEN - PILAR', '', '2023-11-01 13:26:46'),
(134, 'ANODAL 3', ' ', '', '', '', '', '2023-11-01 18:43:43'),
(135, 'JULIO CESAR', 'SABAGH', '', '', 'RN-9 Km 554 - VILLA MARIA', '', '2023-11-01 18:29:24'),
(136, 'JAVIER', 'CROTTO', '', '', '', '', '2023-11-02 10:49:04'),
(137, 'FABIAN RENE', 'MASSARI', '', '', 'GENERAL MITRE 527 PILAR', '', '2023-11-07 14:31:23'),
(138, 'CLAUDIO', 'GONZALES', '', '', 'PILAR - CBA', '', '2023-11-06 18:46:04'),
(139, 'JOSE', 'AHUMADA', '', '', 'PILAR - CBA', '', '2023-11-06 18:46:14'),
(140, 'SAN PACIFICO ACEROS SRL', ' ', '', '', 'RUTA PROV. 21 KM 7 - ALVEAR STA. FE', '', '2023-11-06 18:03:08'),
(141, 'SEBASTIAN ', 'ARIAS', '3572521011', 'SEBASTIAN-ALEJANDRO-ARIAS@HOTMAIL.COM', 'CAMILE ISLEÑO', '', '2023-11-07 09:58:35'),
(142, 'ESCUELA', 'SOLSANO', '', '', 'CERRO COLORADO Y BENCHO PIEDRA', '', '2023-11-09 15:20:23'),
(143, 'ANALIA', 'RAINERO', '', '', '', '', '2023-11-09 16:09:28');

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
-- Estructura de tabla para la tabla `compras_mp`
--

CREATE TABLE `compras_mp` (
  `cmp_id` int(11) NOT NULL,
  `mp_id` int(11) NOT NULL,
  `nro_comp` varchar(15) NOT NULL,
  `cmp_fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cmp_proveedor` text DEFAULT NULL,
  `cmp_cantidad` int(11) NOT NULL,
  `cmp_kg` decimal(10,2) NOT NULL,
  `cmp_estado` varchar(1) NOT NULL,
  `cmp_id_deposito` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `compras_mp`
--

INSERT INTO `compras_mp` (`cmp_id`, `mp_id`, `nro_comp`, `cmp_fecha`, `cmp_proveedor`, `cmp_cantidad`, `cmp_kg`, `cmp_estado`, `cmp_id_deposito`) VALUES
(13, 620, '0610-00131305', '2023-10-25 15:00:21', NULL, 1, 7144.00, '1', NULL),
(14, 620, '0610-00131305', '2023-10-25 15:00:36', NULL, 1, 6779.00, '1', NULL),
(15, 620, '0610-00131305', '2023-10-25 15:00:48', NULL, 1, 7875.00, '1', NULL),
(16, 630, '1410-00924092', '2023-10-25 16:27:20', NULL, 1, 6943.00, '1', NULL),
(19, 488, '1410-00925821', '2023-10-26 12:08:55', NULL, 1, 2441.00, '1', NULL),
(20, 488, '1410-00925821', '2023-10-26 12:09:15', NULL, 1, 7442.00, '1', NULL),
(21, 500, '1410-00925821', '2023-10-26 12:09:42', NULL, 1, 6200.00, '1', NULL),
(22, 500, '1410-00925821', '2023-10-26 12:09:58', NULL, 1, 7700.00, '1', NULL),
(23, 631, '1410-00926153', '2023-10-26 16:03:41', NULL, 1, 7311.00, '1', NULL),
(24, 628, '1410-00926153', '2023-10-26 16:05:27', NULL, 1, 6721.00, '1', NULL),
(25, 630, '1410-00926239', '2023-10-26 18:44:09', NULL, 1, 6938.00, '1', NULL),
(26, 627, '1410-00926239', '2023-10-26 18:45:29', NULL, 1, 6281.00, '1', NULL),
(27, 634, '1410-00926239', '2023-10-26 18:46:52', NULL, 1, 8341.00, '1', NULL),
(28, 634, '1410-0000000', '2023-10-26 18:47:18', NULL, 1, 8401.00, '1', NULL),
(29, 631, '1410-00926192', '2023-10-26 18:50:27', NULL, 1, 7451.00, '1', NULL),
(30, 631, '1410-00926192', '2023-10-26 18:50:42', NULL, 1, 7481.00, '1', NULL),
(31, 628, '1410-00926192', '2023-10-26 18:51:10', NULL, 1, 6851.00, '1', NULL),
(32, 634, '1410-00926192', '2023-10-26 18:51:36', NULL, 1, 8421.00, '1', NULL),
(33, 631, '1410-00926176', '2023-10-27 10:09:22', NULL, 1, 7401.00, '1', NULL),
(34, 517, '1410-00926355', '2023-10-27 14:15:25', NULL, 1, 6741.00, '1', NULL),
(35, 634, '1410-00926355', '2023-10-27 14:15:57', NULL, 1, 8181.00, '1', NULL),
(36, 634, '1410-00926355', '2023-10-27 14:16:19', NULL, 1, 8381.00, '1', NULL),
(37, 517, '1410-00926355', '2023-10-27 14:16:47', NULL, 1, 6761.00, '1', NULL),
(38, 628, '1410-00926036', '2023-10-27 14:17:28', NULL, 1, 6762.00, '1', NULL),
(39, 628, '1410-00926036', '2023-10-27 14:17:53', NULL, 1, 6762.00, '1', NULL),
(40, 517, '1410-00926036', '2023-10-27 14:18:24', NULL, 1, 6612.00, '1', NULL),
(41, 634, '1410-00926441', '2023-10-27 14:19:01', NULL, 1, 8432.00, '1', NULL),
(42, 634, '1410-00926441', '2023-10-27 14:19:26', NULL, 1, 8551.00, '1', NULL),
(43, 634, '1410-00926458', '2023-10-27 18:36:46', NULL, 1, 6611.00, '1', NULL),
(44, 628, '1410-00926458', '2023-10-27 18:37:03', NULL, 1, 6881.00, '1', NULL),
(45, 630, '1410-00927002', '2023-10-31 14:01:07', NULL, 1, 6961.00, '1', NULL),
(46, 628, '1410-00927002', '2023-10-31 14:01:21', NULL, 1, 6891.00, '1', NULL),
(47, 628, '1410-00927002', '2023-10-31 14:01:40', NULL, 1, 6899.00, '1', NULL),
(48, 427, '1110-00308403', '2023-11-03 15:43:09', NULL, 1, 10760.00, '1', NULL),
(49, 427, '1110-00308403', '2023-11-03 15:43:35', NULL, 1, 10900.00, '1', NULL),
(50, 404, '0810-00292606', '2023-11-03 17:34:55', NULL, 1, 5534.00, '1', NULL),
(51, 404, '0810-00292606', '2023-11-03 17:35:12', NULL, 1, 6112.00, '1', NULL),
(52, 614, '0810-00292606', '2023-11-03 17:37:34', NULL, 1, 4628.00, '1', NULL),
(53, 614, '0810-00292606', '2023-11-03 17:37:50', NULL, 1, 5534.00, '1', NULL),
(54, 423, '1110-00308505', '2023-11-06 14:22:02', NULL, 1, 11220.00, '1', NULL),
(55, 423, '1110-00308505', '2023-11-06 14:22:27', NULL, 1, 10640.00, '1', NULL),
(56, 427, '1110/308618', '2023-11-07 14:10:19', NULL, 1, 10970.00, '1', NULL),
(57, 427, '1110/308618', '2023-11-07 14:11:09', NULL, 1, 10790.00, '1', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `depositos`
--

CREATE TABLE `depositos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `depositos`
--

INSERT INTO `depositos` (`id`, `descripcion`) VALUES
(1, 'FABRICA'),
(2, 'GALPON TECHADA'),
(3, 'FERRETERIA');

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
-- Estructura de tabla para la tabla `egresos_caja`
--

CREATE TABLE `egresos_caja` (
  `id` int(11) NOT NULL,
  `nro_comp` int(100) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `id_gasto` int(10) NOT NULL,
  `comentarios` varchar(150) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `importe` decimal(10,2) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `egresos_caja`
--

INSERT INTO `egresos_caja` (`id`, `nro_comp`, `id_caja`, `id_gasto`, `comentarios`, `fecha`, `importe`, `estado`) VALUES
(1, 0, 0, 0, '0', '2023-10-24 15:31:29', 0.00, 2),
(8, 1, 2, 6, 'LIMPIEZA DE LA CASA DE GUSTAVO', '2023-11-02 00:00:00', 2000.00, 2),
(10, 2, 2, 3, 'PAGO SINDICATO UOCRA', '2023-11-09 00:00:00', 5000.00, 2);

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
(29, 4.80, 6.40, 150.00, 500.00, 488.00, 33.63, 2, '500 X 4.8 X 150 X 6.4'),
(31, 2.00, 0.00, 0.00, 120.00, 50.00, 3.83, 4, '120 X 50 X 2'),
(32, 2.00, 0.00, 0.00, 140.00, 60.00, 4.74, 4, '140 X 60 X 2'),
(33, 2.00, 0.00, 0.00, 160.00, 60.00, 4.72, 4, '160 X 60 X 2'),
(36, 4.80, 6.40, 150.00, 200.00, 188.00, 18.54, 2, '200 X 4.8 X 150 X 6.4'),
(37, 4.80, 6.40, 200.00, 350.00, 338.00, 26.45, 2, '350 X 4.8 X 200 X 6.4'),
(38, 4.80, 6.40, 150.00, 400.00, 200.00, 1.00, 2, 'VARIABLE'),
(39, 6.40, 6.40, 185.00, 510.00, 498.00, 47.50, 2, '500 X 6,4 X 185 X 6.4'),
(40, 4.80, 6.40, 148.00, 262.00, 248.00, 24.52, 2, '262 X 4.8 X 148 X 6.4'),
(41, 4.80, 6.40, 165.00, 510.00, 498.00, 35.75, 2, 'VIGA PRINCIPAL (H:500) X 165'),
(42, 4.80, 4.80, 148.00, 157.00, 148.00, 16.87, 2, 'VIGA DE COMPRESION (H:148) X 148'),
(43, 4.80, 6.40, 148.00, 384.00, 375.00, 29.25, 2, 'VIGA GUIA PORTON (375 X 4.8 X148 X 6.4)'),
(44, 2.50, 0.00, 0.00, 140.00, 6.50, 9.65, 4, 'PALOTES (140)'),
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
(63, 0.00, 0.00, 0.00, 0.00, 0.00, 4.92, 4, 'ACANALADA'),
(64, 0.00, 0.00, 0.00, 0.00, 0.00, 1.23, 4, 'ACANALADA PLASTICA'),
(65, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'SIN EQUIVALENCIA'),
(67, 2.00, 0.00, 0.00, 100.00, 50.00, 3.55, 4, '100 X 50 X 2'),
(68, 0.00, 0.00, 0.00, 0.00, 0.00, 30.70, 2, 'COLUMNAS Y VIGAS ENTREPISO'),
(69, 0.40, 0.00, 0.00, 100.00, 50.00, 1.34, 4, 'PERFIL U'),
(70, 0.50, 0.00, 0.00, 100.00, 50.00, 1.56, 4, '100 X 50 X 0.5'),
(71, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'BORREGO LOTE 3'),
(72, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'DIQUESITO'),
(73, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'BORREGO LOTE 1'),
(74, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'BORREGO LOTE 2'),
(75, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'BORREGO LOTE 1 NAVE 3'),
(76, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'CEDICOR'),
(77, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'NAVE LOCALES'),
(78, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'ANTUÑA'),
(79, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'BORREGO MANZANA K LOTE 50'),
(80, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'BEN 4000'),
(81, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'MANZANA 50 LOTE 22'),
(82, 2.00, 0.00, 0.00, 80.00, 40.00, 2.81, 4, '80 X 40 X 15 X 2'),
(83, 4.80, 6.40, 135.00, 500.00, 0.00, 34.07, 2, '500 X 4.8 X 135 X 6.4'),
(84, 4.80, 6.40, 135.00, 250.00, 0.00, 22.90, 2, '250 X 4.8 X 135 X 6.4'),
(85, 4.80, 6.40, 250.00, 500.00, 0.00, 45.00, 2, '500 X 4.8 X 250 X 6.4'),
(86, 4.80, 6.40, 148.00, 250.00, 0.00, 24.21, 2, '250 X 4.8 X 148 X 6.4'),
(87, 4.80, 6.40, 123.00, 148.00, 0.00, 19.43, 2, '148 X 4.8 X 123 X 6.4'),
(88, 4.80, 6.40, 148.00, 148.00, 0.00, 16.73, 2, '148 X 4.8 X 148 X 6.4'),
(89, 4.80, 6.40, 148.00, 375.00, 0.00, 33.47, 2, '375 X 4.8 X 148 X 6.4'),
(90, 4.80, 4.80, 123.00, 148.00, 0.00, 16.67, 2, '148 X 4.8 X 123 X 4.8'),
(91, 0.00, 0.00, 0.00, 0.00, 0.00, 4.63, 4, 'TRAPEZOIDAL'),
(92, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 2, 'CINCALUM'),
(93, 0.00, 0.00, 0.00, 0.00, 0.00, 4.95, 2, 'PREPINTADA'),
(94, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 2, 'FRENTE + CENEFA'),
(95, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'N/A'),
(96, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 2, 'ESTRUCTURA CENEFA'),
(97, 0.00, 0.00, 0.00, 0.00, 0.00, 20.40, 2, 'VIGA DE ALERO VARIABLE'),
(99, 0.00, 0.00, 0.00, 0.00, 0.00, 9.00, 2, 'ALEROS (PALOTES)'),
(100, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 2, 'CENEFA'),
(101, 0.00, 0.00, 0.00, 0.00, 0.00, 4.82, 2, 'NAVE'),
(102, 0.00, 0.00, 0.00, 0.00, 0.00, 4.82, 2, 'ALEROS (CANALETAS)'),
(103, 0.00, 0.00, 0.00, 0.00, 0.00, 0.87, 2, 'TENS. CUBIERTA (H 12mm)'),
(104, 0.00, 0.00, 0.00, 0.00, 0.00, 0.87, 2, 'TENS. LATERAL (H 12mm)'),
(105, 0.00, 0.00, 0.00, 0.00, 0.00, 0.87, 2, 'TENS. FF (H 12mm)'),
(107, 4.80, 6.40, 100.00, 200.00, 0.00, 14.02, 2, '200 X 4.8 X 100 X 6.4'),
(108, 4.80, 6.40, 100.00, 200.00, 0.00, 14.02, 2, 'VIGA PRINCIPAL 200X100'),
(109, 0.00, 0.00, 0.00, 0.00, 0.00, 7.28, 2, 'PALOTE CUBIERTA'),
(110, 0.00, 0.00, 0.00, 0.00, 0.00, 3.23, 2, 'CANALETAS'),
(111, 4.80, 6.40, 165.00, 300.00, 0.00, 27.81, 2, '300 X 4.8 X 165 X 6.4'),
(112, 6.40, 6.40, 185.00, 375.00, 0.00, 37.33, 2, '375 X 6.4 X 185 X 6.4'),
(113, 6.40, 7.90, 248.00, 500.00, 0.00, 56.17, 2, '500 X 6.4 X 248 X 7.9'),
(114, 4.80, 6.40, 148.00, 300.00, 0.00, 26.10, 2, '300 X 4.8 X 148 X 6.4'),
(115, 4.80, 6.40, 165.00, 375.00, 0.00, 30.63, 2, '375 X 4.8 X 165 X 6.4'),
(116, 4.80, 4.80, 148.00, 148.00, 0.00, 16.73, 2, '148 X 4.8 X 148 X 4.8'),
(117, 0.00, 0.00, 0.00, 0.00, 0.00, 9.44, 2, 'PALOTE GUIA PORTON'),
(118, 0.00, 0.00, 0.00, 0.00, 0.00, 15.00, 2, 'PORTON'),
(119, 4.80, 6.40, 148.00, 500.00, 0.00, 33.64, 2, '500 X 4.8 X 148 X 6.4'),
(120, 4.80, 6.40, 135.00, 200.00, 0.00, 21.55, 2, '200 X 4.8 X 135 X 6.4'),
(121, 0.00, 0.00, 0.00, 0.00, 0.00, 5.17, 4, 'CHAPA PREPINTADA'),
(122, 0.00, 0.00, 0.00, 0.00, 0.00, 5.00, 2, 'GALVANIZADA'),
(123, 0.00, 0.00, 0.00, 0.00, 0.00, 6.74, 2, 'PALOTE CENEFA'),
(124, 0.00, 0.00, 0.00, 0.00, 0.00, 4.92, 2, 'CHAPA CENEFA'),
(125, 0.00, 0.00, 0.00, 0.00, 0.00, 4.79, 2, '140 X 60 X 2 F.302'),
(126, 0.00, 0.00, 0.00, 0.00, 0.00, 4.84, 2, '140 X 60 X 2 F.320'),
(127, 0.00, 0.00, 0.00, 0.00, 0.00, 9.70, 2, 'PALOTES (160)'),
(128, 0.00, 0.00, 0.00, 0.00, 0.00, 4.98, 2, '140 X 60 X 2.5'),
(129, 0.00, 0.00, 0.00, 0.00, 0.00, 100.48, 2, 'PLACA FUNDACION 1/2'),
(130, 4.80, 6.40, 125.00, 250.00, 0.00, 22.05, 2, '250 X 4.8 X 125 X 6.4'),
(131, 4.80, 6.40, 165.00, 600.00, 0.00, 30.18, 2, '600 X 2.9 X 165 X 6.4'),
(132, 4.80, 6.40, 165.00, 500.00, 0.00, 39.10, 2, '500 X 4.8 X 165 X 6.4'),
(133, 0.00, 0.00, 0.00, 0.00, 0.00, 2.10, 2, '100 X 40 X 0.94'),
(134, 0.00, 0.00, 0.00, 0.00, 0.00, 1.20, 2, '103 X 30 X 0.94'),
(135, 0.00, 0.00, 0.00, 0.00, 0.00, 0.83, 2, 'CAÑO 30 X 30 X 6mts'),
(136, 0.00, 0.00, 0.00, 0.00, 0.00, 7.46, 2, 'PALOTE CENEFA (PC100) >C/Soportes'),
(137, 0.00, 0.00, 0.00, 0.00, 0.00, 0.75, 2, 'SOPORTES'),
(138, 0.00, 0.00, 0.00, 0.00, 0.00, 4.92, 2, 'CHAPA TRAPEZOIDAL'),
(139, 0.00, 0.00, 0.00, 0.00, 0.00, 4.92, 2, 'CHAPA ACANALADA'),
(140, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'MEDIDAS VARIAS'),
(141, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 2, 'ARMADOS COMPLETOS'),
(142, 0.00, 0.00, 0.00, 0.00, 0.00, 7.44, 2, 'PALOTES GALVANIZADO (120)'),
(143, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'PLEGADOS'),
(144, 0.00, 0.00, 0.00, 0.00, 0.00, 40.07, 2, 'CABREADAS'),
(145, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'ESTRUCTURA DE 50 X 30 X 1.6'),
(146, 0.00, 0.00, 0.00, 0.00, 0.00, 1.70, 4, '100 X 40 X 0.7'),
(147, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'P/ PLEGAR'),
(148, 0.00, 0.00, 0.00, 0.00, 0.00, 3.42, 56, 'CAÑO 80 X 30 X 1,6 X 6mts'),
(149, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'BASE DE TANQUE'),
(150, 4.80, 6.40, 150.00, 300.00, 0.00, 27.27, 2, '300 X 4.8 X 150 X 6.4'),
(151, 4.80, 6.40, 150.00, 200.00, 0.00, 102.60, 2, 'VIGA PRINCIPAL 200/380 X 150'),
(152, 3.20, 6.40, 166.00, 400.00, 0.00, 30.00, 2, '400 X 3.2 X 166 X 6.4'),
(153, 0.00, 0.00, 0.00, 0.00, 0.00, 2.50, 2, 'PLASTICA 600 MICRONES'),
(154, 4.80, 6.40, 148.00, 500.00, 250.00, 31.25, 2, '(500 X 250) X 4.8 X 148 X 6.4'),
(155, 4.80, 6.40, 148.00, 400.00, 250.00, 25.10, 2, '(400 X 250) X 4.8 X 148 X 6.4'),
(159, 0.00, 0.00, 0.00, 0.00, 0.00, 100.00, 2, 'NADA'),
(160, 0.00, 0.00, 0.00, 0.00, 0.00, 2.80, 2, 'ANGULO 2 X 1/8 X 6mts'),
(161, 0.00, 0.00, 0.00, 0.00, 0.00, 0.54, 2, 'PLANCHUELA 1 X 1/8 X 6mts'),
(162, 0.00, 0.00, 0.00, 0.00, 0.00, 1.95, 2, 'PLANCHUELA 3 X 1/8 X 6mts'),
(163, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'FRENTE Y FONDO'),
(164, 0.00, 0.00, 0.00, 0.00, 0.00, 25.00, 2, 'PLACA (580 X 375) 12.7mm'),
(165, 0.00, 0.00, 0.00, 0.00, 0.00, 8.00, 2, 'PINTADO (LARGOS)'),
(166, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'PINTADO (CORTOS)'),
(167, 0.00, 0.00, 0.00, 0.00, 0.00, 8.90, 4, '200 X 60 X 2.5'),
(168, 0.00, 0.00, 0.00, 0.00, 0.00, 75.36, 2, 'TAPAS C1'),
(169, 7.90, 9.50, 212.00, 373.00, 0.00, 58.53, 2, 'C1 - 373 X 7.9 X 212 X 9.5'),
(170, 6.40, 6.40, 135.00, 387.00, 0.00, 33.33, 2, 'V1-BORDE-387X6.4X135X6.4 S/SOPORTES'),
(171, 6.40, 7.90, 148.00, 434.00, 0.00, 42.86, 2, 'V2 - 434 X 6.4 X 148 X 7.9'),
(172, 0.00, 0.00, 0.00, 0.00, 0.00, 9.35, 2, 'BORDE PALOTE PC 200'),
(173, 6.40, 6.40, 135.00, 387.00, 0.00, 37.88, 2, 'V1-BORDE-387X6.4X135X6.4 C/SOPORTES'),
(174, 6.40, 6.40, 135.00, 387.00, 0.00, 38.13, 2, 'V1-CENTRAL-387X6.4X135X6.4 C/SOPORTES'),
(175, 6.40, 6.40, 135.00, 387.00, 0.00, 35.22, 2, 'V1-CENTRAL-387X6.4X135X6.4 S/SOPORTES'),
(176, 0.00, 0.00, 0.00, 0.00, 0.00, 0.94, 2, 'TENSORES DE CUBIERTA'),
(177, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'SOPORTES TENSOR'),
(178, 0.00, 0.00, 0.00, 0.00, 0.00, 8.64, 2, 'PALOTE 120 CUBIERTA C/ SOPORTES'),
(179, 0.00, 0.00, 0.00, 0.00, 0.00, 3.64, 2, 'AUX INF / SUP'),
(180, 0.00, 0.00, 0.00, 0.00, 0.00, 8.33, 2, 'PIECITOS (CAÑO 50 X 50)'),
(181, 0.00, 0.00, 0.00, 0.00, 0.00, 4.96, 4, 'DESPUNTE PREPITANDA'),
(182, 0.00, 0.00, 0.00, 0.00, 0.00, 5.36, 4, '140 X 70 X 2.5'),
(183, 4.80, 6.40, 150.00, 250.00, 0.00, 24.22, 2, '250 X 4.8 X 150 X 6.4'),
(184, 4.80, 6.40, 150.00, 212.00, 0.00, 22.86, 2, '212 X 4.8 X 150 X 6.4'),
(185, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 2, 'SOPORTES CORREAS'),
(186, 0.00, 0.00, 0.00, 0.00, 0.00, 7.58, 4, 'PALOTE DE CERRAMIENTO'),
(187, 4.80, 6.40, 150.00, 370.00, 0.00, 29.86, 2, '370 x 4.8 x 150 x 6.4'),
(188, 0.00, 0.00, 0.00, 0.00, 0.00, 5.21, 4, 'PREPINTADA NEGRA'),
(189, 0.00, 0.00, 0.00, 0.00, 0.00, 4.95, 4, 'PREPINTADA AZUL'),
(190, 0.00, 0.00, 0.00, 0.00, 0.00, 4.95, 4, 'PREPINTADA BLANCA'),
(191, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'CORREAS DE CENEFA'),
(192, 4.80, 6.40, 148.00, 373.00, 0.00, 28.93, 2, '373 X 4.8 X 148 X 6.4'),
(193, 4.80, 6.40, 148.00, 248.00, 0.00, 24.22, 2, '248 X 4.8 X 148 X 6.4'),
(194, 4.80, 6.40, 148.00, 498.00, 0.00, 33.64, 2, '498 X 4.8 X 148 X 6.4'),
(195, 4.80, 4.80, 148.00, 298.00, 0.00, 22.38, 2, '298 X 4.8 X 148 X 4.8'),
(196, 0.00, 0.00, 0.00, 0.00, 0.00, 4.97, 4, 'CHAPA DE SEGUNDA'),
(197, 4.80, 6.40, 123.00, 248.00, 0.00, 21.70, 2, '248 X 4.8 X 123 X 6.4'),
(198, 0.00, 0.00, 0.00, 0.00, 0.00, 4.97, 4, 'CINCALUM ACANALADA'),
(199, 0.00, 0.00, 0.00, 0.00, 0.00, 4.97, 4, 'CINCALUM TRAPEZOIDAL'),
(200, 0.00, 0.00, 0.00, 0.00, 0.00, 7.44, 2, 'TENSOR BARRA 12mm'),
(201, 0.00, 0.00, 0.00, 0.00, 0.00, 12.86, 4, 'CENEFAS DE 800'),
(202, 0.00, 0.00, 0.00, 0.00, 0.00, 8.57, 4, 'CENEFAS DE 800 SIMPLE'),
(203, 0.00, 0.00, 0.00, 0.00, 0.00, 1.73, 56, 'CAÑO 40 X 50 X 1,6 X 6mts'),
(204, 0.00, 0.00, 0.00, 0.00, 0.00, 5.21, 4, 'PREPINTADA GRIS'),
(205, 6.40, 6.40, 185.00, 498.00, 0.00, 43.61, 2, '498 X 6.4 X 185 X 6.4'),
(206, 4.80, 4.80, 148.00, 248.00, 0.00, 20.50, 2, '248 X 4.8 X 148 X 4.8'),
(207, 6.40, 6.40, 185.00, 748.00, 0.00, 56.17, 2, '748 X 6.4 X 185 X 6.4'),
(208, 4.80, 6.40, 185.00, 748.00, 0.00, 46.75, 2, '748 X 4.8 X 185 X 6.4'),
(209, 4.80, 6.40, 165.00, 748.00, 0.00, 44.76, 2, '748 X 4.8 X 165 X 6.4'),
(210, 4.80, 6.40, 148.00, 200.00, 0.00, 18.69, 2, '200 X 4.8 X 148 X 4.8'),
(211, 0.00, 0.00, 0.00, 0.00, 0.00, 1.00, 4, 'MEDIDAS VARIAS DE SEGUNDA'),
(212, 0.00, 0.00, 0.00, 0.00, 0.00, 9.34, 4, '200 X 65 X 2.25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingresos_caja`
--

CREATE TABLE `ingresos_caja` (
  `id` int(11) NOT NULL,
  `nro_comp` int(100) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `id_gasto` int(10) NOT NULL,
  `comentarios` varchar(150) DEFAULT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp(),
  `importe` decimal(10,2) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `ingresos_caja`
--

INSERT INTO `ingresos_caja` (`id`, `nro_comp`, `id_caja`, `id_gasto`, `comentarios`, `fecha`, `importe`, `estado`) VALUES
(1, 0, 0, 0, '0', '2023-10-24 15:31:29', 0.00, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `minimo` int(11) NOT NULL,
  `venta` float NOT NULL,
  `compra` float NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pesounitario` decimal(10,2) NOT NULL,
  `id_deposito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id`, `codigo`, `producto`, `existencia`, `precio`, `minimo`, `venta`, `compra`, `unidad`, `id_categoria`, `fecha`, `pesounitario`, `id_deposito`) VALUES
(365, '000002', 'COLUMNA FRENTE', 1, 0.00, 1, 0, 0, 'KG', 2, '2023-10-06 13:58:59', 0.00, 1),
(366, 'LAMINADO', 'LAMINADO EN CALIENTE (LAC)', -8784612, 0.00, 100001, 0, 0, 'KG', 5, '2023-11-02 17:51:49', 0.00, 1),
(370, '100004', 'PERFIL C 140', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(371, '100005', 'PERFIL C 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(372, '000003', 'COLUMNA FRENTE Y FONDO', 1, 0.00, 1, 0, 0, 'KG', 2, '2023-10-06 13:59:38', 0.00, 1),
(374, '000006', 'COLUMNA LATERAL', 0, 0.00, 10, 0, 0, 'KG', 2, '2023-10-06 13:59:38', 0.00, 1),
(376, '100007', 'CORREAS DE CERRAMIENTO', 1, 0.00, 1, 0, 0, 'KG', 4, '2023-10-06 13:59:38', 0.00, 1),
(377, '100006', 'CORREAS DE CUBIERTA', 1, 0.00, 1, 0, 0, 'KG', 4, '2023-10-06 13:59:38', 0.00, 1),
(378, '100006', 'CHAPAS', 1, 0.00, 1, 0, 0, 'KG', 1, '2023-10-06 13:59:38', 0.00, 1),
(379, '000007', 'VIGA', 1, 0.00, 1, 0, 0, 'KG', 2, '2023-10-06 13:59:38', 0.00, 1),
(380, '100005', 'PALOTES', 1, 0.00, 1, 0, 0, 'KG', 4, '2023-10-06 13:59:38', 0.00, 1),
(381, '100007', 'CORREAS DE CENEFA', 1, 0.00, 1, 0, 0, 'KG', 4, '2023-10-06 13:59:38', 0.00, 1),
(392, 'CHAACCINC', 'CHAPA ACANALADA CINCALUM', 100000, 0.00, 10000, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(393, 'CHAACPLAS', 'CHAPA ACANALADA PLASTICA', 100000, 0.00, 1000, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(394, 'CHATRGRIS', 'CHAPA TRAPEZOIDAL GRIS', 100000, 0.00, 1000, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(434, 'AISLANROLLO', 'ROLLO AISLANTE TERMICO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 1.00, 1),
(435, '100008', 'PERFIL C 100', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 5.00, 1),
(436, 'COLVIGA', 'COLUMNAS DE ENTREPISO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 1.00, 1),
(437, 'CUBO', 'CUBO 1.50 X 1.50', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(438, 'CABLE', 'CABLE ACERO 4mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(439, 'PRENSCABLE', 'PRENSA CABLE', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(440, 'ANG', 'ANGULO DE 1\"1/2 x 1/8\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(441, 'MALLA', 'MALLA SIMA 2 X 3', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(442, 'sap', 'SAPITOS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(443, '100008', 'PERFIL U 100', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 1.00, 1),
(444, 'ANDAMIOS', 'CUERPOS DE ANDAMIO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(445, 'TABL', 'TABLONES CHAPA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(446, 'RUED', 'RUEDAS PARA ANDAMIO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(447, 'pleg', 'PLEGADOS PREPINTADOS BLANCOS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-09 09:56:48', 0.00, 1),
(448, 'BASECOAT', 'BOLSA BASE COAT', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(449, 'TERGO', 'TERGOPOL X 30mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(450, 'ARAN', 'ARANDELAS PLASTICAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(451, 'FIBRA', 'ROLLO FIBRA DE VIDRIO X 20mts', 1, 0.00, 1, 0, 0, 'PAQUETES', 57, '2023-10-06 13:59:38', 0.00, 1),
(452, 'TORN', 'TORNILLOS T3', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(453, 'MEMBR', 'MEMBRANA 150 x 20', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(454, 'AUTOP', 'CAJA AUTOPERFORANTES 14 X 1 X 2000U', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(455, 'AUTOPT1', 'AUTOPERFORANTES T1 MECHA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(456, 'AUTOPT2M', 'AUTOPERFORANTES T2 MECHA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(457, 'AUTOPT2A', 'AUTOPERFORANTES T2 AGUJA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(458, 'PLACAS', 'PLACAS DE YESO 12,5mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(459, 'CINTAP', 'CINTA PAPEL', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(460, 'CANTON', 'CANTONERA METÁLICA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(461, 'TACOSF', 'TACO FISCHER 8mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(462, 'TORNI8mm', 'TORNILLOS PARA FISCHER 8mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(463, 'MONTAB', 'MONTANTES DE 70mm', 1, 0.00, 1, 0, 0, 'PAQUETES', 4, '2023-10-06 13:59:38', 0.00, 1),
(464, 'MONTAB35', 'MONTANTES DE 35mm', 1, 0.00, 1, 0, 0, 'PAQUETES', 4, '2023-10-06 13:59:38', 0.00, 1),
(465, 'SOLER70mm', 'SOLERAS DE 70mm', 1, 0.00, 1, 0, 0, 'PAQUETES', 4, '2023-10-06 13:59:38', 0.00, 1),
(466, 'SOLER35mm', 'SOLERAS DE 35mm', 1, 0.00, 1, 0, 0, 'PAQUETES', 4, '2023-10-06 13:59:38', 0.00, 1),
(467, 'MASIL', 'BALDE MASILLA X 32kg', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(468, 'LATEXB', 'LATEX BLANCO X 20lts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(469, 'ROLLO', 'CORRUGADO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(470, 'CAJALUZ', 'CAJA PLASTICA LUZ', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(471, 'CAJAEXLUZ', 'CAJA EXAGONAL PARA LUZ', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(472, 'LIJAA180', 'LIJA AL AGUA X 180', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(473, 'RODIL', 'RODILLO PELO LARGO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(474, 'PINCEL', 'PINCEL N° 25', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(475, 'COMBPASA', 'COMBO PASADOR CON CANDADO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(476, 'CINAIS', 'CINTA AISLADORA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(477, 'PRECINTOS', 'PRECINTOS', 1, 0.00, 1, 0, 0, 'PAQUETES', 56, '2023-10-06 13:59:38', 0.00, 1),
(478, 'DISCCORTE115', 'CAJA DISCOS DE CORTE DE 115mm', 1, 0.00, 1, 0, 0, 'PAQUETES', 56, '2023-10-06 13:59:38', 0.00, 1),
(521, 'CUMBRERAS', 'CUMBRERAS 600 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(522, 'CAPUCH', 'CAPUCHONES CHAPA', 136, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 4.00, 1),
(523, 'ALERO', 'ALERO CHAPA', 6, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 5.00, 1),
(524, 'CHAACAGALV', 'CHAPA ACANALADA GALVANIZADA X 1.55mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 7.00, 1),
(525, 'CHAACAGALVTIMP', 'CHAPA ACANALADA GALVANIZADA CIERRE TIMPANO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(526, 'POMO', 'POMO SELLADOR NEGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(527, 'CAÑOPVC', 'CAÑO PVC 110 X 4', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(528, 'CAÑOESTR', 'CAÑO ESTRUCTURAL 30 X 30 X 6mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(529, 'PLEGPPNE', 'PLEGADOS PREPINTADOS NEGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(530, 'COLINTERNAS', 'COLUMNAS INTERNAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 1.00, 1),
(531, 'PREP', 'PLEGADOS PREPINTADOS AZUL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 1.00, 1),
(532, 'FLEJES', 'FLEJES', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 1.00, 1),
(533, 'PLANCH', 'PLANCHUELA 1 1/4X 1/8', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 1.00, 1),
(534, 'PERFILCNE', 'PC 160 NEGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(535, 'PERFIL120NE', 'PC 120 NEGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(536, 'REMACHES', 'REMACHES POP', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 1.00, 1),
(537, 'RECCHAP', 'RECORTE CHAPA TRAPEZOIDAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 1.00, 1),
(538, 'LATEXG', 'LATEX GRIS X LT', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 1.00, 1),
(539, 'NAFTA', 'NAFTA', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 1.00, 1),
(549, 'GUANTESM', 'GUANTES MOTEADOS', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(550, 'BOQUILLAS', 'BOQUILLA IMANTADA 3/8', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(551, 'PUNTPH', 'PUNTA PHILIPS', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(552, 'PERFILC80', 'PERFIL C 80 CONFORMADO GALVANIZADO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(553, 'DURLOCK', 'PLACA DURLOCK 12,5', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(554, 'PLACASCP', 'PLACAS COLUMNAS PRINCIPALES', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(555, 'PLACASCI', 'PLACAS COLUMNAS INTERNAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(556, 'PLACASCEFF', 'PLACAS COLUMNAS ENTREPISO Y FF', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(557, 'COLPRINC', 'COLUMNAS PRINCIPALES', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(558, 'COLCUBOFI', 'COLUMNAS CUBIERTA DE OFICINA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(559, 'VIGASP', 'VIGAS PRINCIPALES', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(560, 'VIGASCP', 'VIGAS DE COMPRESION', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(561, 'VIGASEP', 'VIGAS DE ENTREPISO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(562, 'VIGASCO', 'VIGAS CUBIERTA DE OFICINA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(563, 'VIGATRA', 'VIGA TRANSVERSAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(564, 'CORREAENTRE', 'CORREAS DE ENTREPISO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(565, 'CHAPCERRA', 'CHAPAS DE CERRAMIENTO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(566, 'CHATRAZUL', 'CHAPA TRAPEZOIDAL AZUL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(567, 'CHATRABLANCA', 'CHAPA TRAPEZOIDAL BLANCA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(568, 'VIGASRIOSTRA', 'VIGAS RIOSTRAS 20 X 20 X 12mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(569, 'AUTOP14X2', 'CAJA AUTOPERFORANTES 14 X 2 X 1200U', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(570, 'CHAPCUBIERT', 'CHAPA DE CUBIERTA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(571, 'ESTCENEFA', 'ESTRUCTURA DE CENEFA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(572, 'CORREAALERO', 'CORREAS DE ALEROS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(573, 'CHAPALEROS', 'CHAPAS DE ALEROS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(574, 'CANALETA', 'CANALETA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(575, 'TENSOR', 'TENSOR', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(576, 'PREMARCOS', 'PREMARCOS DE PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(577, 'PORTON', 'PORTON LEVADIZO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(578, 'PUERTAS', 'PUERTA DE EMERGENCIA ANTIPANICO', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(579, 'CELOSIAS', 'CELOSIAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(580, 'CINTAPDURLOCK', 'CINTA PAPEL MICROPERFORADA P/DURLOCK', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(581, 'CHAPCENEFA', 'CHAPA CENEFA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(583, 'PORTON1', 'PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(584, 'GAFAS', 'GAFAS NEGRAS', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(585, 'FIBRON', 'FIBRON NEGRO', 100, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(586, 'BULON', 'BULON 5/16\"', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(587, 'BULON3/8', 'BULON 3/8\"', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(588, 'BULON5/8', 'BULON 5/8\"', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(589, 'PERFILC120', 'PERFIL C 120', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(590, 'RECCHAPACA', 'RECORTE CHAPA ACANALADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(591, 'RECCHPGALVA', 'RECORTE CHAPA GALVANIZADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(592, 'CUMBRVARIAS', 'CUMBRERAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(593, 'PLACAFUNDA', 'PLACAS PARA FUNDACIÓN', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(594, 'DISCCORTE230', 'DISCOS DE CORTE DE 230mm X 10U', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(595, 'CABREADASV', 'CABREADAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(596, 'PLACABBOA', 'PLACAS SUPER BOAR N°8', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(597, 'PLACABBOAn6', 'PLACAS SUPER BOAR N°6', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(598, 'ESTACAS', 'ESTACAS 10mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(599, 'SEMICAB', 'SEMICABREADAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(600, 'ANG1/2', 'ANGULO DE 1/2 x 1/8\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(601, 'GUIA', 'GUIA DE PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(602, 'MANIJA', 'MANIJA PARA PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(603, 'TACOSF10', 'TACO FISCHER 10mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(604, 'CARRITO', 'CARRITO PARA GUIA PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(605, 'CHAPPPLISA', 'CHAPA PREPINTADA LISA BLANCA 0.5 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(606, 'CHAPPPLISAN', 'CHAPA PREPINTADA LISA NEGRA 1.25 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(607, 'CHAPAN18', 'CHAPA N° 18 ', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(608, 'PLEGGALVA', 'PLEGADO GALVANIZADO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(609, 'CANAGALVA', 'CANALETA GALVANIZADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(610, 'MALLASIMA', 'MALLA SIMA 150 X 150 X 4.5 X 2.10', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(611, 'CEMENTO', 'BOLSA DE CEMENTO X 50KG', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(612, 'CUARZO', 'BOLSA DE CUARZO X 25kg', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(613, 'CHAPATRCIN', 'CHAPA TRAPEZOIDAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(614, 'RECOR', 'RECORTE', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(615, 'DISCCORTE230uni', 'DISCOS DE CORTE DE 230mm', 10000, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(616, 'DISCCORTE115uni', 'DISCOS DE CORTE DE 115mm', 10000, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(617, 'SOPORTE', 'SOPORTE TENSOR', 10000, 0.00, 10, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 1.00, 1),
(618, 'PLACASOSB', 'PLACAS OSB', 10000, 0.00, 10, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(619, 'AUTOP14X2XUNIDAD', 'AUTOPERFORANTES 14 x 2\" x UN', 1000000, 0.00, 100, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(620, 'AUTOP14X1XUNIDAD', 'AUTOPERFORANTES 14 x 1\" x UN', 1000000, 0.00, 100, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(621, 'PLACADURLOCK', 'PLACA DURLOCK 9.5', 10000, 0.00, 100, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(622, 'MEMBRALUM', 'MEMBRANA DOBLE ALUMINIO', 10000, 0.00, 10, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(623, 'FIBRAX50', 'ROLLO FIBRA DE VIDRIO X 50mts', 10000, 0.00, 10, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(624, 'PGC', 'PERFIL PGC 100 X 40 X 0.94', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(625, 'PGU', 'PERFIL PGU 103 X 30 X 0.94', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(626, 'AUTOPT1A', 'AUTOPERFORANTES T1 AGUJA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(627, 'TORNMADERA', 'TORNILLOS PARA MADERA 22 X 45', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(628, 'TORNMADERA2', 'TORNILLOS PARA MADERA 19 X 45', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(629, 'ANCLAJE', 'ANCLAJE FWA 10 X 65 FISCHER', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(630, 'CAÑOPVC160', 'CAÑO PVC 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(631, 'UNIOPVC', 'UNION PVC 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(632, 'POMOBLANCO', 'POMO SELLADOR BLANCO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(633, 'CODOPVC45', 'CODO 45° PVC 160 ', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(634, 'PEGAMENTO', 'PEGAMENTO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(635, 'PINTSINTE', 'PINTURA SINTETICO NEGRO', 1, 0.00, 11, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(636, 'FLAP', 'DISCO FLAP 115mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(637, 'SOPORTES', 'SOPORTES', 10000, 0.00, 10, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(638, 'PLEGPPGRIS', 'PLEGADOS PREPINTADOS GRIS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(639, 'PLACA', 'PLACA CHAPA 400 X 350mm X 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 14.06, 1),
(640, 'ESCUADRAS', 'ESCUADRAS DE 15 X 15', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(641, 'CAÑO100X100X2', 'CAÑO 100 X 100 X 2mm', 9, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-09 15:15:19', 0.00, 1),
(642, 'SAP100', 'SAPITOS 100mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(643, 'SAP80', 'SAPITOS 80mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(644, 'POMOTRANS', 'POMO SELLADOR TRANSPARENTE', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(645, 'THINER', 'THINER X LT', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(646, 'DISCO', 'DISCO DE CORTE DIAMANTADO 230mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(647, 'CAÑO30x60', 'CAÑO 30 X 60 X 1.6mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(648, 'CHAPALB', 'CHAPA PREPINTADA LISA NEGRA 0.5 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(649, 'CHAPPPGALVA', 'CHAPA PREPINTADA GALVANIZADA 0.5 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(650, 'CAÑOPVCNEGRO', 'CAÑO PVC NEGRO 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(651, 'CODOPVCMH', 'CODO PVC MACHO/HEMBRA NEGRO 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(652, 'CUPLAS', 'CUPLAS PVC NEGRO 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(653, 'BOQUETAS', 'BOQUETAS 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(654, 'GUINDOLA', 'GUINDOLA', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(655, 'BAJPPBLANCA', 'BAJADAS PREPINTADAS BLANCAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(656, 'FICHASTECK', 'FICHA STECK PKE32M435', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(657, 'TOMASTECK', 'TOMA STECK PKF32F435', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(658, 'HOJAPORTON', 'HOJA PARA PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(659, 'CHAACAPPG', 'CHAPA ACANALADA PREPINTADA GRIS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(660, 'ESQUINEROS', 'ESQUINEROS P/PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(661, 'RUEDAS', 'RUEDAS DE TEFLON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(662, 'BISAGRAS', 'BISAGRAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(663, 'TORNT3FRE', 'TORNILLOS T3 FREZADOS CON ALA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(664, 'CHAACAGALVA', 'CHAPA ACANALADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(665, 'BOQUETAS110', 'BOQUETAS 110', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(666, 'COMPENS', 'ADICIONALES', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(667, 'CHAPLEGADA', 'CHAPA NEGRA PLEGADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(668, 'CHAGALVALISA', 'CHAPA GALVANIZADA LISA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(669, 'EXTRAEOLICO', 'EXTRACTOR EOLICO 24\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(670, 'EXTRACUELLO', 'CUELLO CON BASE PARA EXTRACTOR', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(671, 'CHAPLISAGRIS', 'CHAPA PREPINTADA LISA GRIS 0.5 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(672, 'GOMACAUCHO', 'GOMA CAUCHO P/PISO (LUNARES)', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(673, 'CAJAREMACHE', 'CAJA REMACHES POP X 500un', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(674, 'CHAPAGALVA24', 'CHAPA GALVANIZADA N°24', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(675, 'CHATARRA', 'CHATARRA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(676, 'ROLLOFF', 'ROLL OFF (C/ CHATARRA)', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(677, 'CANASTOS', 'CANASTOS 12mts', 1, 0.00, 1, 0, 0, 'PIEZA', 56, '2023-10-06 13:59:38', 0.00, 1),
(678, 'REJAS', 'REJAS 1.67 X 2.95', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(679, 'REJJAS', 'REJA 1.23 X 0.99', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(680, 'REJASS', 'REJA 0.59 X 0.55', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(681, 'PGC100X0.7', 'PERFIL PGC 100 X 40 X 0.7', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(682, 'PGU100X0.7', 'PERFIL PGU 100 X 40 X 0.7', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(683, 'FIELTRO', 'FIELTRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(684, 'AGROTILENO', 'AGROTILENO NEGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(685, 'CORREAFyF', 'CORREAS DE FRENTE Y FONDO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(686, 'BOQUETAS100', 'BOQUETAS 100', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.20, 1),
(687, 'ESTACAS40', 'ESTACAS 40CM H10 LISO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(688, 'PINTSINTEGRIS', 'PINTURA SINTETICO GRIS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(689, 'TEFLON', 'TEFLON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(690, 'CANDADO', 'CANDADO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(691, 'RECORTES', 'RECORTE AISLANTE', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(692, 'CAÑO80x60x1.6', 'CAÑO 80 X 60 X 1.6mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(693, '20x100x1.2', 'CAÑO 20 X 100 X 1.2', 80, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(694, '12X12X0.9', 'CAÑO 12 X 12 X 0.9', 1008, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:13:10', 0.00, 1),
(695, '20X20X1.6', 'CAÑO 20 X 20 X 1.6', 472, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:24:21', 0.00, 1),
(696, '30X50X1.6', 'CAÑO 30 X 50 X 1.6', 90, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(697, '50X50X1.2', 'CAÑO 50 X 50 X 1.2', 450, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:29:06', 0.00, 1),
(698, '1.3/4X1.2', 'CAÑO 1 3/4 X 1.2', 210, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(699, '2X2', 'CAÑO 2\" X 2', 335, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:40:17', 0.00, 1),
(700, '50X50X2', 'CAÑO 50 X 50 X 2', 67, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(704, '40X40X0.9', 'CAÑO 40 X 40 X 0.9', 588, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:12:59', 0.00, 1),
(705, '20X50X0.9', 'CAÑO 20 X 50 X 0.9', 276, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:42:08', 0.00, 1),
(706, '70X70X2', 'CAÑO 70 X 70 X 2', 42, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(707, '20X30X2', 'CAÑO 20 X 30 X 2', 120, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(708, '4.1/2X2', 'CAÑO 4\" 1/2 X 2', 24, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(709, '5X1.6', 'CAÑO 5\" X 1.6', 124, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:27:26', 0.00, 1),
(710, '20X40X0.9', 'CAÑO 20 X 40 X 0.9', 331, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:40:54', 0.00, 1),
(711, '10X20X0.85', 'CAÑO 10 X 20 X 0.85', 242, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(712, '2.1/2X1.2', 'CAÑO 2\" 1/2 X 1.2', 163, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:39:33', 0.00, 1),
(715, '53X25X1.2', 'CAÑO 53 X 25 X 1.2', 120, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(716, '1\"X1.6', 'CAÑO 1\" X 1.6', 432, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(717, '1\"1/8X1.6', 'CAÑO 1\" 1/8 X 1.6', 312, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(719, '60x60x1.6', 'CAÑO 60 X 60 X 1.6', 104, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:27:51', 0.00, 1),
(720, '20X40X1.2', 'CAÑO 20 X 40 X 1.2', 207, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 12:17:21', 0.00, 1),
(721, '40X50X1.6', 'CAÑO 40 X 50 X 1.6', 160, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:33:06', 0.00, 1),
(722, '20X40X2', 'CAÑO 20 X 40 X 2', 192, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:41:29', 0.00, 1),
(723, '15X15X0.9', 'CAÑO 15 X 15 X 0.9', 645, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(724, '80X80X2.5', 'CAÑO 80 X 80 X 2.5', 50, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:21:30', 0.00, 1),
(725, '60X80X2', 'CAÑO 60 X 80 X 2', 181, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:45:29', 0.00, 1),
(728, '50X50X0.9', 'CAÑO 50 X 50 X 0.9', 90, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(729, '40X40X2', 'CAÑO 40 X 40 X 2', 72, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(730, '35X35X0.9', 'CAÑO 35 X 35 X 0.9', 132, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(732, '30X30X1.6', 'CAÑO 30 X 30 X 1.6', 57, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 13:46:55', 0.00, 1),
(733, '20X20X0.9', 'CAÑO 20 X 20 X 0.9', 480, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(734, '15X20X1.2', 'CAÑO 15 X 20 X 1.2', 174, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:39:16', 0.00, 1),
(735, '3X2', 'CAÑO 3\" X 2', 144, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:26:07', 0.00, 1),
(736, '1X0.9', 'CAÑO 1\" X 0.9', 360, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:37:46', 0.00, 1),
(738, '3/4X1.2', 'CAÑO 3/4\" X 1.2', 445, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:44:22', 0.00, 1),
(739, '5X2', 'CAÑO 5\" X 2', 114, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:16:39', 0.00, 1),
(740, '1.1/2X2', 'CAÑO 1\" 1/2 X 2', 94, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(741, '1.1/8X1.2', 'CAÑO 1\" 1/8 X 1.2', 830, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:17:03', 0.00, 1),
(743, '3.1/2X1.6', 'CAÑO 3\" 1/2 X 1.6', 139, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:14:33', 0.00, 1),
(744, '3.1/2X2', 'CAÑO 3\" 1/2 X 2', 111, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(745, '60X80X1.2', 'CAÑO 60 X 80 X 1.2', 96, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:21:50', 0.00, 1),
(746, '50X70X1.6', 'CAÑO 50 X 70 X 1.6', 112, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(748, '70X70X2.5', 'CAÑO 70 X 70 X 2.5', 162, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:45:43', 0.00, 1),
(749, '25X25X1.6', 'CAÑO 25 X 25 X 1.6', 372, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:35:16', 0.00, 1),
(750, '20X40X1.6', 'CAÑO 20 X 40 X 1.6', 90, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(751, '20X60X1.6', 'CAÑO 20 X 60 X 1.6', 172, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:42:37', 0.00, 1),
(752, '10x20x1.2', 'CAÑO 10 X 20 X 1.2', 120, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(755, '20X50X1.6', 'CAÑO 20 X 50 X 1.6', 16, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(756, '1.1/4X1.2', 'CAÑO 1\" 1/4 X 1.2', 799, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:23:10', 0.00, 1),
(757, '2X1.6', 'CAÑO 2\" X 1.6', 72, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(758, '1X1.6', 'CAÑO 1\" X 1.6', 176, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(759, '7/8X1.6', 'CAÑO 7/8\" X 1.6', 238, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(760, '3X1.6', 'CAÑO 3\" X 1.6', 244, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(761, '1.1/4X2', 'CAÑO 1\" 1/4 X 2', 375, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(763, '35X35X2', 'CAÑO 35 X 35 X 2', 160, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:24:42', 0.00, 1),
(765, '4X1.6', 'CAÑO 4\" X 1.6', 37, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(766, 'ANCLAJEQUI', 'ANCLAJE QUIMICO WEBER', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(767, 'ESTACAS', 'ESTACAS 80CM H16 CONSTRUCCION', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(768, 'ELECTRODOS', 'ELECTRODOS 3.25\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(769, 'PLEGANEGRO', 'PLEGADOS CHAPA NEGRA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(770, 'ESTRUCCORREAS', 'ESTRUCTURA DE CORREAS C100', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(772, 'ESTRUCCORREAS120', 'ESTRUCTURA DE CORREAS C120', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(773, 'ESTRUCCORREAS140', 'ESTRUCTURA DE CORREAS C140', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(774, 'ESTRUCCORREAS160', 'ESTRUCTURA DE CORREAS C160', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(775, 'DISYUNTOR', 'DISYUNTOR TETRAPOLAR 63A', 3, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(776, 'TERMICATETRA', 'TERMICA TETRAPOLAR 63A', 3, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(777, 'TERMICABIPOLAR', 'TERMICA BIPOLAR 63A', 3, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(778, 'TOMATRIFASICO', 'TOMA TRIFÁSICO C/ NEUTRO', 6, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(779, 'TOMAMONO', 'TOMA MONOFÁSICO', 6, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(780, 'CAPSULATOMA', 'CAPSULA PARA EMBUTIR', 12, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(781, 'GUIASBAJAS', 'GUIAS BAJAS CON PELOS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(782, 'CINTATRAMADA', 'CINTA TRAMADA DE 20MM X 25MTS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(783, 'LIJAA160', 'LIJA AL AGUA X 160', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(784, 'RODILLO', 'RODILLO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(785, 'BROCA', 'BROCA 8mm', 10000, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(786, 'ZUNCHO', 'ZUNCHO', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-10-06 13:59:38', 0.00, 1),
(788, 'CON20X100', 'CONECTORES 20 X 100', 10, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(789, 'CAJOC7X7', 'CAJA OCTOGONAL 7 X 7', 10, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(790, 'CAJREC5X10', 'CAJA RECTANGULAR 5 X 10', 10, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(791, 'GRAMPAS', 'CAJA DE GRAMPAS DE 20mm', 10, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(792, 'CINTATRADURLOCK', 'CINTA TRAMADA P/DURLOCK', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(793, 'PORTHOJA', 'HOJA DE PORTON', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-06 13:59:38', 0.00, 1),
(794, 'GRILON', 'GRILONES', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(795, 'PASADORES', 'PASADORES', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(796, 'ANG2X1/8', 'ANGULO DE 2\" x 1/8\" PINTADO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(797, 'PLAN3X1/8', 'PLANCHUELA DE 3\" x 1/8\" PINTADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(798, 'PLAN1X1/8', 'PLANCHUELA DE 1\" x 1/8\" PINTADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(799, 'BAJAPLUV', 'BAJADAS PLUVIALES PREPINTADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(800, 'ESCALON', 'ESCALONES', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-06 13:59:38', 0.00, 1),
(801, '40X50X1.2', 'CAÑO 40 X 50 X 1.2', 351, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:36:34', 0.00, 1),
(804, '1.3/4X1.2', 'CAÑO 1\" 3/4 X 1.2', 130, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-09 17:19:49', 0.00, 1),
(805, '1.1/4X1.6', 'CAÑO 1\" 1/4 X 1.6', 686, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-06 14:17:45', 0.00, 1),
(806, '1.1/4X0.9', 'CAÑO 1\" 1/4 X 0.9', 90, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(808, '3X1.2', 'CAÑO 3\" X 1.2', 297, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:14:58', 0.00, 1),
(810, '2.1/4X1.6', 'CAÑO 2\" 1/4 X 1.6', 66, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(813, '1X1.2', 'CAÑO 1\" X 1.2', 210, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(815, '10X40X1.2', 'CAÑO 10 X 40 X 1.2', 90, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(817, '60X60X2', 'CAÑO 60 X 60 X 2', 40, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:28:29', 0.00, 1),
(818, '20X60X1.6', 'CAÑO 20 X 60 X 1.2', 72, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(820, '50X100X2', 'CAÑO 50 X 100 X 2', 184, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:37:19', 0.00, 1),
(821, '10X10X1.2', 'CAÑO 10 X 10 X 1.2', 143, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(822, '30X40X0.9', 'CAÑO 30 X 40 X 0.9', 52, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(823, '20X50X1.2', 'CAÑO 20 X 50 X 1.2', 160, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(824, '15X30X1.2', 'CAÑO 15 X 30 X 1.2', 363, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:09:46', 0.00, 1),
(825, '20X20X1.2', 'CAÑO 20 X 20 X 1.2', 105, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(826, '45X45X2', 'CAÑO 45 X 45 X 2', 30, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(827, '10X30X1.2', 'CAÑO 10 X 30 X 1.2', 348, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:38:44', 0.00, 1),
(829, '50X70X1.2', 'CAÑO 50 X 70 X 1.2', 273, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:11:28', 0.00, 1),
(831, '30X40X1.2', 'CAÑO 30 X 40 X 1.2', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 13:59:38', 0.00, 1),
(832, '1.1/2X1.6', 'CAÑO 1\" 1/2 X 1.6', 118, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:03:31', 0.00, 0),
(833, '45X45X1.2', 'CAÑO 45 X 45 X 1.2', 390, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:30:35', 0.00, 0),
(834, '40X100X2', 'CAÑO 40 X 100 X 2', 44, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:06:20', 0.00, 0),
(837, '40X80X1.6', 'CAÑO 40 X 80 X 1.6', 52, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:07:50', 0.00, 0),
(838, '40X40X1.6', 'CAÑO 40 X 40 X 1.6', 146, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:23:29', 0.00, 0),
(839, '1.3/4X1.6', 'CAÑO 1\" 3/4 X 1.6', 206, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:10:21', 0.00, 0),
(840, '1X2', 'CAÑO 1\" X 2', 278, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:10:59', 0.00, 0),
(841, '12X12X1.2', 'CAÑO 12 X 12 X 1.2', 424, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:36:58', 0.00, 0),
(844, '40X40X2.5', 'CAÑO 40 X 40 X 2.5', 168, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:15:36', 0.00, 0),
(845, '20X30X1.6', 'CAÑO 20 X 30 X 1.6', 215, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:43:34', 0.00, 0),
(846, '2X0.9', 'CAÑO 2\" X 0.9', 273, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:21:39', 0.00, 0),
(847, '30X70X1.2', 'CAÑO 30 X 70 X 1.2', 92, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:34:28', 0.00, 0),
(850, '30X50X1.2', 'CAÑO 30 X 50 X 1.2', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:23:43', 0.00, 0),
(851, '25X25X0.9', 'CAÑO 25 X 25 X 0.9', 374, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-06 14:24:23', 0.00, 0),
(853, '4X3.2', 'CAÑO 4\" X 3.2', 24, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:27:25', 0.00, 0),
(854, '35X35X1.6', 'CAÑO 35 X 35 X 1.6', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:27:56', 0.00, 0),
(858, '60X60X2.5', 'CAÑO 60 X 60 X 2.5', 72, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:31:08', 0.00, 0),
(860, '30X70X2', 'CAÑO 30 X 70 X 2', 70, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:35:01', 0.00, 0),
(861, '60X140X1.6', 'CAÑO 60 X 140 X 1.6', 72, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:35:25', 0.00, 0),
(862, '50X50X1.6', 'CAÑO 50 X 50 X 1.6', 360, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:29:23', 0.00, 0),
(864, '15X15X1.2', 'CAÑO 15 X 15 X 1.2', 240, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:37:02', 0.00, 0),
(865, 'BULON5/8COM', 'BULON 5/8\" CON ARANDELA Y TUERCA', 10000, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:50:41', 0.00, 0),
(866, 'BULON5/16COM', 'BULON 5/16\" CON ARANDELA Y TUERCA', 10000, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 10:50:58', 0.00, 0),
(867, 'CARRETILLA', 'CARRETILLA ROJA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 13:08:14', 0.00, 0),
(868, 'HERCAL', 'HERCAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 13:08:54', 0.00, 0),
(869, 'BLOCK13', 'LADRILLOS BLOCK 13', 10000, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 14:12:52', 0.00, 0),
(870, '30X50X2', 'CAÑO 30 X 50 X 2', 138, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:21:14', 0.00, 0),
(874, '3.1/2x3.2', 'CAÑO 3\" 1/2 X 3.2', 20, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 16:56:24', 0.00, 0),
(876, '60X80X3.2', 'CAÑO 60 X 80 X 3.2', 13, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 16:57:36', 0.00, 0),
(877, '4X2', 'CAÑO 4\" X 2', 37, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:06:09', 0.00, 0),
(879, '80X100X2', 'CAÑO 80 X 100 X 2', 60, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:07:30', 0.00, 0),
(881, '100X100X1.6', 'CAÑO 100 X 100 X 1.6', 30, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:09:20', 0.00, 0),
(882, '20X80X2', 'CAÑO 20 X 80 X 2', 358, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:26:57', 0.00, 0),
(883, '1.1/2X1.2', 'CAÑO 1\" 1/2 X 1.2', 120, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:17:45', 0.00, 0),
(884, '10X20X0.9', 'CAÑO 10 X 20 X 0.9', 143, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:18:19', 0.00, 0),
(885, '2X1.2', 'CAÑO 2\" X 1.2', 61, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:18:48', 0.00, 0),
(886, '30X60X1.2', 'CAÑO 30 X 60 X 1.2', 81, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:19:22', 0.00, 0),
(887, '7/8X0.9', 'CAÑO 7/8\" X 0.9', 480, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:22:37', 0.00, 0),
(888, '3/4X2', 'CAÑO 3/4 X 2', 386, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:25:43', 0.00, 0),
(889, '60X60X1.2', 'CAÑO 60 X 60 X 1.2', 81, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:30:00', 0.00, 0),
(890, '40X60X1.2', 'CAÑO 40 X 60 X 1.2', 264, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:36:11', 0.00, 0),
(891, '40X80X1.2', 'CAÑO 40 X 80 X 1.2', 72, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:31:30', 0.00, 0),
(892, '35X35X1.2', 'CAÑO 35 X 35 X 1.2', 135, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-09 17:32:05', 0.00, 0),
(894, 'ELECTRODOS2.5', 'ELECTRODOS 2.5\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 10:42:29', 0.00, 0),
(895, 'CARETASOLDADOR', 'CARETA P/ SOLDAR', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 10:42:51', 0.00, 0),
(896, 'MANGUERA1/2', 'MANGUERA TRANSPARENTE 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 10:43:23', 0.00, 0),
(897, 'PLOMADA', 'PLOMADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 10:43:38', 0.00, 0),
(898, 'CINTAPELIGRO', 'CINTA DE PELIGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 11:33:29', 0.00, 0),
(899, 'CAÑOCORRU1/2', 'CAÑO CORRUGADO 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 11:33:58', 0.00, 0),
(900, 'CAJA15X15', 'CAJA DE PASE 165 X 165 X 80', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 11:34:27', 0.00, 0),
(901, 'CAÑOCORRU2', 'CAÑO CORRUGADO 2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 11:35:37', 0.00, 0),
(902, 'BOLSAARENA', 'BOLSA DE ARENA X 10KG', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 12:04:47', 10.00, 0),
(903, 'CODO110', 'CODO 110', 100, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 12:08:26', 0.00, 0),
(904, 'TAPAPVC', 'TAPA PVC 110', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-11 15:35:01', 0.00, 0),
(905, 'PERFILC200', 'PERFIL C 200 C/SOPORTES', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-11 15:43:27', 0.00, 0),
(906, 'DISCFLAP230', 'DISCO FLAP 230mm', 10000, 0.00, 10, 0, 0, 'UNIDAD', 56, '2023-10-12 11:10:13', 0.00, 0),
(908, 'ALAMBRE17N', 'ALAMBRE #17 NEGRO', 10000, 0.00, 1, 0, 0, 'KG', 56, '2023-10-12 12:41:49', 0.00, 0),
(910, 'DESPPREPACANA', 'DESPUNTE PREPINTADA ACANALADA', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-12 13:55:23', 0.00, 0),
(911, 'DESPPREPTRAP', 'DESPUNTE PREPINTADA TRAPEZOIDAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-12 13:55:38', 0.00, 0),
(912, 'TAPACOL', 'TAPAS P/ COLUMNA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-12 14:15:27', 0.00, 0),
(913, 'CORRECUBINF', 'CORREAS DE CUBIERTA INFERIOR', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-12 15:08:54', 0.00, 0),
(914, 'CORREAINT', 'CORREAS INTERNAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-12 15:44:05', 0.00, 0),
(915, 'CORREAEXT', 'CORREAS EXTERNAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-12 15:44:18', 0.00, 0),
(916, 'TUERAUTO5/8', 'TUERCA AUTOFRENANTE 5/8', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-12 16:14:46', 0.00, 0),
(917, 'ARANDEL5/8', 'ARANDELAS 5/8', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-12 16:15:24', 0.00, 0),
(920, 'MALACATE', 'MALACATE', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-17 10:00:57', 0.00, 0),
(921, 'CHACENELAT', 'CHAPA CENEFA LATERAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-17 11:49:09', 0.00, 0),
(922, 'CHACENEFYF', 'CHAPA CENEFA FRENTE Y FONDO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-17 11:49:27', 0.00, 0),
(923, 'PLEGCHA3.2', 'PLEGADO CHAPA 3.2mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-17 11:50:39', 0.00, 0),
(925, 'PALOTECENEFALAT', 'PALOTES DE CENEFA LATERAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-17 14:36:56', 0.00, 0),
(926, 'PALOTECENEFAFYF', 'PALOTES DE CENEFA FRENTE Y FONDO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-17 14:37:09', 0.00, 0),
(927, 'CODO90160', 'CODO 90° PVC 160 BLANCO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 10:08:51', 0.00, 0),
(928, 'CODO90160VERDE', 'CODO 90° PVC 160 VERDE', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 10:09:01', 0.00, 0),
(929, 'CODO90160MARRON', 'CODO 90° PVC 160 MARRON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 10:09:13', 0.00, 0),
(930, 'CUPLA160BL', 'CUPLA PVC 160 BLANCA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 10:10:11', 0.00, 0),
(931, 'PEGAPVC', 'PEGAMENTO P/ PVC', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 10:10:37', 0.00, 0),
(932, 'CAÑOPVCMARRON', 'CAÑO PVC MARRON 110 X 4mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 13:21:51', 0.00, 0),
(933, 'RAMALY110X63', 'RAMAL Y 110 X 63', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 13:22:17', 0.00, 0),
(934, 'CODO45X50MARR', 'CODO 45° PVC 50 MARRON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 13:23:17', 0.00, 0),
(935, 'CAJADISDESBAS', 'CAJA DISCOS DE DESBASTE 115mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 13:35:57', 0.00, 0),
(936, 'BOCAACC110', 'BOCA ACCESO 110 SALIDA 63', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 14:04:09', 0.00, 0),
(937, 'CAÑOPVC50', 'CAÑO PVC 50 X 4mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 14:05:14', 0.00, 0),
(938, 'CODOPVC90X50', 'CODO 90° PVC 50 HH MARRON', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 14:06:12', 0.00, 0),
(939, 'TAPAPVC50', 'TAPA PVC 50', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-18 14:06:31', 0.00, 0),
(940, 'PINCEL20', 'PINCEL N° 20', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-20 10:20:39', 0.00, 0),
(941, 'AUTOP14X3XUN', 'AUTOPERFORANTES 14 x 3\" x UN', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-20 10:21:25', 0.00, 0),
(942, 'TANSA', 'ROLLO DE TANSA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-20 10:21:52', 0.00, 0),
(943, 'PERFIL80NE', 'PERFIL C 80 NEGRO', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-20 12:52:02', 0.00, 0),
(944, 'AUTOP14X3MECHA', 'AUTOPERFORANTES T3 MECHA', 100000, 0.00, 100, 0, 0, 'UNIDAD', 56, '2023-10-24 11:01:00', 0.00, 0),
(945, 'AUTOP14X3AGUJA', 'AUTOPERFORANTES T3 AGUJA', 100000, 0.00, 100, 0, 0, 'UNIDAD', 56, '2023-10-24 11:01:17', 0.00, 0),
(946, 'SOPORTESCORREAS', 'SOPORTES DE CORREAS', 100000, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-24 12:14:53', 0.00, 0),
(947, 'CHACERRLAT', 'CHAPAS DE CERRAMIENTO LATERAL', 10000, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-24 12:25:52', 0.00, 0),
(948, 'CHACERRFYF', 'CHAPAS DE CERRAMIENTO F Y F', 10000, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-24 12:26:10', 0.00, 0),
(949, 'CAÑOFUSION', 'CAÑO FUSION 25mm', 10000, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-25 11:50:37', 0.00, 0),
(950, 'TOBERATORCHA', 'TOBERA P/ TORCHA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-26 10:47:27', 0.00, 0),
(951, 'BAJADAPLUVGALVA', 'BAJADAS PLUVIALES GALVANIZADAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-27 09:59:55', 0.00, 0),
(952, 'ROLLOLANAVIDRIO', 'ROLLO LANA DE VIDRIO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 11:00:39', 0.00, 0),
(953, 'HIERRO12', 'HIERRO CONSTRUCCION 12mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 12:30:40', 0.00, 0),
(954, 'HIERRO10', 'HIERRO CONSTRUCCION 10mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 12:31:05', 0.00, 0),
(955, 'PINTSINTEBLANCA', 'PINTURA SINTETICO BLANCA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 17:11:04', 0.00, 0),
(956, 'AEROSOLBLANCO', 'PINTURA SINTETICA EN AEROSOL', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 17:12:23', 0.00, 0),
(957, 'CINTATRAMADA', 'CINTA TRAMADA DE 50MM X 45MTS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 18:23:24', 0.00, 0),
(958, 'bobina', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 930', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 18:52:01', 0.00, 0),
(959, 'CORTEBOBINAS', 'CORTE Y PLANCHADO DE BOBINA', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-10-27 18:55:18', 0.00, 0),
(960, 'TORNILLOSVARIOS', 'TORNILLOS VARIOS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-27 18:57:50', 0.00, 0),
(961, 'CENEFAS', 'CENEFAS', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-10-30 11:27:10', 0.00, 0),
(962, 'PLACADURLOCKVERDE', 'PLACA DURLOCK VERDE 12,5 ANTIHUMEDAD', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-31 11:41:21', 0.00, 0),
(963, 'ANG2X1/8N', 'ANGULO DE 2\" x 1/8\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-10-31 14:19:31', 0.00, 0),
(964, 'RAMAL90', 'RAMAL 90 MH 110 x 1100', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-01 10:25:09', 0.00, 0),
(965, 'MANGO110', 'MANGO HH 110', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-01 10:25:47', 0.00, 0),
(966, 'FILTROPVC', 'FILTRO POZO PVC VERTICAL', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-01 10:26:16', 0.00, 0),
(967, 'BOXCARGA', 'BOX DE CARGA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-01 10:30:58', 0.00, 0),
(968, 'CAÑOAWADUCT40', 'CAÑO AWADUCT 40mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-01 10:48:46', 0.00, 0),
(969, 'RUEDAMETAL', 'RUEDA METALICA DE 110mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-01 11:05:39', 0.00, 0),
(970, 'TARROVACIO20LT', 'TARRO 200 LTS VACIO', 1, 0.00, 1, 0, 0, 'UNIDAD', 57, '2023-11-01 13:47:00', 0.00, 0),
(971, '0001', 'BROCA N 12', 100, 0.00, 50, 0, 0, 'UNIDAD', 56, '2023-11-01 16:53:28', 0.00, 0),
(972, 'PLACA PALOTE', 'PLACA PALOTE', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-11-02 10:01:55', 0.00, 0),
(973, '123', 'TORNILLO T2 MECHA 6 X1 1/8', 8000, 0.00, 0, 0, 0, 'UNIDAD', 56, '2023-11-03 09:47:31', 0.00, 0),
(975, 'DISCOFLAP115', 'CAJA DISCOS FLAP DE 115mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-03 10:25:53', 0.00, 0),
(976, 'HIERRO 8', 'HIERRO CONSTRUCCION 8mm', 0, 0.00, 0, 0, 0, 'UNIDAD', 56, '2023-11-03 17:57:19', 0.00, 0),
(977, 'MALLA 25X15', 'MALLA SIMA 25 X 15 X 4.2', 0, 0.00, 0, 0, 0, 'UNIDAD', 56, '2023-11-03 17:57:33', 0.00, 0),
(978, 'HIERROLISO', 'HIERRO LISO 10mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-03 17:51:55', 0.00, 0),
(979, 'PLANCHPERFO', 'PLANCHUELA 1\" PERFORADA N° 12', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-03 17:53:49', 0.00, 0),
(980, 'PC 200', 'PERFIL C 200', 1, 0.00, 1, 0, 0, 'UNIDAD', 4, '2023-11-06 09:58:03', 0.00, 0),
(981, 'TABLONMADERA', 'TABLON DE MADERA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-06 14:16:58', 0.00, 0),
(982, 'REMACHESPOP5X10', 'CAJA REMACHES POP 5X 10 X 1000un	', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-06 14:57:58', 0.00, 0),
(983, 'BOBLCN6.35X750', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 750	', 4, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-06 17:28:42', 0.00, 0),
(984, 'PERCHA', 'PERCHA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-06 17:50:07', 0.00, 0),
(985, '142', 'BOBINA 700 P/ CANALETA ', 10, 0.00, 5, 0, 0, 'UNIDAD', 2, '2023-11-07 10:09:28', 1.00, 0),
(986, 'CUPLA1/2', 'CUPLA RM 25 X 1/2\" IPS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:16:17', 0.00, 0),
(987, 'CUPLA32', 'CUPLA RM 32 X 1/2\" IPS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:16:46', 0.00, 0),
(988, 'LLAVEESFERICA', 'LLAVE ESFERICA PALANCA LARGA 32 DIAM.', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:17:40', 0.00, 0),
(989, 'FLEJEPERFORADO', 'FLEJE PERFORADO 0.71 X 19 X 30 mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:18:22', 0.00, 0),
(990, 'TAPONPOLIPROPILENO', 'TAPON POLIPROPILENO 3/4\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:19:56', 0.00, 0),
(991, 'CONEXIONTANQUE1/2', 'CONEXION PARA TANQUE DE AGUA 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:20:28', 0.00, 0),
(992, 'CONEXIONTANQUE1', 'CONEXION PARA TANQUE DE AGUA 1\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-07 11:20:46', 0.00, 0),
(993, 'CODOEXPOXI1.1/2', 'CODO 1\" 1/2 HH EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:02:10', 0.00, 0),
(994, 'TEERED1.1/2A1/2', 'TEE DE REDUCCION DE 1\" 1/2 A 1/2\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:11:10', 0.00, 0),
(995, 'TEERED1.1/2A3/4', 'TEE DE REDUCCION DE 1\" 1/2 A 3/4\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:11:40', 0.00, 0);
INSERT INTO `inventario` (`id`, `codigo`, `producto`, `existencia`, `precio`, `minimo`, `venta`, `compra`, `unidad`, `id_categoria`, `fecha`, `pesounitario`, `id_deposito`) VALUES
(996, 'TEE1.1/2', 'TEE DE 1\" 1/2 EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:12:20', 0.00, 0),
(997, 'LLAVEPASO3/4', 'LLAVE DE PASO DE 3/4\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:12:49', 0.00, 0),
(998, 'LLAVEPASO1/2', 'LLAVE DE PASO DE 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:13:24', 0.00, 0),
(999, 'BUJERED1.1/2A1/2', 'BUJE DE REDUCCION DE 1\" 1/2 A 1/2\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:14:26', 0.00, 0),
(1000, 'CODO1/2', 'CODO 1/2\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:15:55', 0.00, 0),
(1001, 'CUPLA1.1/2', 'CUPLA 1\" 1/2 EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:16:29', 0.00, 0),
(1002, 'TAPON1/2', 'TAPON 1/2\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:16:55', 0.00, 0),
(1003, 'CODOEPOXI3/4', 'CODO 3/4\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:17:37', 0.00, 0),
(1004, 'BUJERED1.1/2A3/4', 'BUJE REDUCCION 1\" 1/2 A 3/4\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:18:27', 0.00, 0),
(1005, 'TAPON3/4', 'TAPON 3/4\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:19:00', 0.00, 0),
(1006, 'PINTURAEPOXI', 'PINTURA EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:19:59', 0.00, 0),
(1007, 'PINCEL', 'PINCEL CHICO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:20:43', 0.00, 0),
(1008, 'LITARGILIO', 'SELLADOR DE ROSCA P/ GAS LITARGILIO', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:24:47', 0.00, 0),
(1009, 'GLICERINA', 'GLICERINA', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:25:12', 0.00, 0),
(1010, 'CAÑO1.1/2', 'CAÑO 1\" 1/2 EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:26:05', 0.00, 0),
(1011, 'CAÑO3/4', 'CAÑO 3/4\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:26:22', 0.00, 0),
(1012, 'CAÑO1/2', 'CAÑO 1/2\" EPOXI', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:26:36', 0.00, 0),
(1013, 'CONEXIONBRON1/2A5/16', 'CONEXION BRONCE 1/2\" A 5/16 mm', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:28:28', 0.00, 0),
(1014, 'TUERCA/VIROLA', 'TUERCA CON VIROLA 5/16\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:29:35', 0.00, 0),
(1015, 'TEFLON1/2', 'TEFLON ALTA DENSIDAD 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:30:11', 0.00, 0),
(1016, 'CUPLA3/4', 'CUPLA 3/4\" EPOXI ', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:31:33', 0.00, 0),
(1017, 'CUPLA1/2EPOXI', 'CUPLA 1/2\" EPOXI ', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:32:01', 0.00, 0),
(1018, 'CODORED3/4A1/2', 'CODO REDUCCION 3/4\" A 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:32:37', 0.00, 0),
(1019, 'CAÑOCOBRE5/16', 'CAÑO DE COBRE DE 5/16\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:33:14', 0.00, 0),
(1020, 'REJASVENT15X15', 'REJAS DE VENTILACIÓN DE 15 X 15', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:33:47', 0.00, 0),
(1021, 'FLEXIBLE1/2', 'FLEXIBLE DE 1/2\"', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:34:41', 0.00, 0),
(1022, 'BARRERAAGUA', 'BARRERA AGUA / VIENTO TOWEN', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:37:14', 0.00, 0),
(1023, 'CRUZSANANDRES', 'CRUZ DE SAN ANDRES', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:37:57', 0.00, 0),
(1024, 'CIELORASO', 'PLACA P/ CIELO RASO 60 X 60 CM', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:39:08', 0.00, 0),
(1025, 'ALAMBREATAR', 'ALAMBRE DE ATAR', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:41:35', 0.00, 0),
(1026, 'ARENA1KG', 'BOLSA DE ARENA X 1KG', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:41:57', 0.00, 0),
(1027, 'PLACACIELO', 'PLACA P/ CIELO RASO 60 X 120 CM', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:44:06', 0.00, 0),
(1028, 'TORNI8DORADO', 'TORNILLOS 8mm DORADOS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:54:32', 0.00, 0),
(1029, 'TARUGOS8MM', 'TARUGOS DE 8mm C/ TOPE', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:55:12', 0.00, 0),
(1030, 'TRAVESAÑO', 'TRAVESAÑO DE 60CM', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:55:39', 0.00, 0),
(1031, 'LARGUERO', 'LARGUERO DE 3.66mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 11:55:59', 0.00, 0),
(1032, 'TANQUEAGUA', 'TANQUE PARA AGUA 1000 LTS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 12:00:26', 0.00, 0),
(1033, 'TORNI8NEGROS', 'TORNILLOS 8mm NEGROS', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 12:05:58', 0.00, 0),
(1034, 'PLACAADICIONAL', 'PLACA ADICIONAL SOPORTE', 1, 0.00, 1, 0, 0, 'UNIDAD', 2, '2023-11-08 13:23:34', 0.00, 0),
(1035, 'CANTONERAPVC', 'CANTONERA PVC', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 13:42:38', 0.00, 0),
(1036, 'PERFILPERIMETRAL', 'PERFIL PERIMETRAL 2.60mts', 1, 0.00, 1, 0, 0, 'UNIDAD', 56, '2023-11-08 13:44:14', 0.00, 0),
(1037, '124', 'ALAMBRE GALVA N14', 100, 0.00, 10, 0, 0, 'KG', 4, '2023-11-08 18:50:30', 0.00, 0),
(1038, '126', 'SEPARADORES P/ CERAMICOS X4MM', 1000, 0.00, 100, 0, 0, 'UNIDAD', 56, '2023-11-08 18:56:39', 0.00, 0);

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
-- Estructura de tabla para la tabla `materias_primas`
--

CREATE TABLE `materias_primas` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `producto` varchar(250) NOT NULL,
  `existencia` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `minimo` int(11) NOT NULL,
  `venta` float NOT NULL,
  `compra` float NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pesounitario` decimal(10,2) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `id_deposito` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materias_primas`
--

INSERT INTO `materias_primas` (`id`, `codigo`, `producto`, `existencia`, `precio`, `minimo`, `venta`, `compra`, `unidad`, `id_categoria`, `fecha`, `pesounitario`, `peso`, `id_deposito`) VALUES
(382, 'CHA6.4X10', 'CHAPA 6.4 X 10mts', 85, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-11-01 12:29:30', 758.00, 64430.00, 1),
(383, 'CHA4.8X10', 'CHAPA 4.8 X 10mts', 52, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-11-01 12:30:29', 565.00, 29380.00, 1),
(384, 'CHA4.8X8', 'CHAPA 4.8 X 8mts', 198, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-10-25 17:40:46', 450.00, 89100.00, 1),
(385, 'CHA4.8X12', 'CHAPA 4.8 X 12mts', 108, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-11-06 14:19:43', 675.00, 73575.00, 1),
(386, 'CHA6.4X8', 'CHAPA 6.4 X 8mts', 130, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-10-19 14:30:25', 602.00, 78260.00, 1),
(387, 'CHA7.9X12', 'CHAPA 7.9 X 12mts', 235, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-10-19 14:34:49', 1142.00, 268370.00, 1),
(388, 'CHA12.5X6', 'CHAPA 12.5 X 6mts', 13, 0.00, 5, 0, 0, 'UNIDAD', 54, '2023-10-19 14:38:58', 886.00, 11518.00, 1),
(389, 'CHA10X12', 'CHAPA 10 X 12mts', 14, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-10-19 14:34:49', 1336.00, 18704.00, 1),
(390, 'CHA3.2X3', 'CHAPA 3.2 X 3mts', 60, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-10-25 11:14:07', 113.00, 6780.00, 1),
(391, 'CHA6.4X12', 'CHAPA 6.4 X 12mts', 137, 0.00, 10, 0, 0, 'UNIDAD', 54, '2023-11-09 15:24:51', 898.00, 132006.00, 1),
(396, 'GALVA0.30X1000', 'BOBINA GALVANIZADA 0.30 X 1000', 1, 0.00, 5, 0, 0, 'UNIDAD', 3, '2023-10-25 15:41:49', 3360.00, 3360.00, 1),
(397, 'GALVA0.36X818', 'BOBINA GALVANIZADA 0.36 X 818', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 5935.00, 11870.00, 1),
(398, 'GALVA0.40X1000', 'BOBINA GALVANIZADA 0.40 X 1000', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9333.00, 18666.00, 1),
(399, 'BOB0.4X1220', 'BOBINA PREPINTADA BLANCA 0.4 X 1220', 6, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4633.00, 27798.00, 1),
(400, 'BOB0.4X1220', 'BOBINA PREPINTADA ROJA 0.4 X 1220', 4, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4314.00, 17256.00, 1),
(401, 'GALVA0.5X1080', 'BOBINA GALVANIZADA 0.5 X 1080', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 3220.00, 3220.00, 1),
(402, 'GALVA0.5X1220', 'BOBINA GALVANIZADA 0.5 X 1220', 17, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 6682.29, 113598.93, 1),
(403, 'BOBC0.5X1220', 'BOBINA CINCALUM 0.5 X 1220', 12, 0.00, 7, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9907.50, 118890.00, 1),
(404, 'BOB0.5X1220', 'BOBINA PREPINTADA BLANCA 0.5 X 1220', 26, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-11-03 17:35:12', 5231.12, 137192.88, 1),
(405, 'BOB0.5X1220', 'BOBINA PREPINTADA NEGRA 0.5 X 1220', 4, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4888.00, 19552.00, 1),
(406, 'BOBLF0.5X1220', 'BOBINA LAMINADA EN FRIO 0.5 X 1220', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10405.00, 20810.00, 1),
(407, 'BOB0.5X1220', 'BOBINA PREPINTADA GRIS 0.5 X 1220', 34, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4250.00, 144500.00, 1),
(408, 'BOB0.5X1220', 'BOBINA PREPINTADA ROJA 0.5 X 1220', 5, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 5447.00, 27235.00, 1),
(409, 'GALVA0.5X915', 'BOBINA GALVANIZADA 0.5 X 915', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4580.00, 4580.00, 1),
(410, 'GALVA0.5X1124', 'BOBINA GALVANIZADA 0.5 X 1124', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10200.00, 10200.00, 1),
(411, 'GALVA07X1000', 'BOBINA GALVANIZADA 0.7 X 1000', 8, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 6083.00, 48664.00, 1),
(412, 'BOBC0.7X1220', 'BOBINA CINCALUM 0.7 X 1220', 6, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7326.00, 43956.00, 1),
(413, 'GALVA0.7X1220', 'BOBINA GALVANIZADA 0.7 X 1220', 16, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 6552.00, 104832.00, 1),
(414, 'GALVA0.9X1220', 'BOBINA GALVANIZADA 0.9 X 1220', 11, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 6184.54, 68029.94, 1),
(415, 'BOBLF0.9X1220', 'BOBINA LAMINADA EN FRIO 0.9 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10460.00, 10460.00, 1),
(416, 'GALVA1.06X1220', 'BOBINA GALVANIZADA 1.06 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 5715.00, 5715.00, 1),
(417, 'GALVA1.25X1220', 'BOBINA GALVANIZADA 1.25 X 1220', 7, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9835.00, 68845.00, 1),
(418, 'BOBLF1.25X1220', 'BOBINA LAMINADA EN FRIO 1.25 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10550.00, 10550.00, 1),
(419, 'GALVA1.5X1220', 'BOBINA GALVANIZADA 1.5 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10115.00, 10115.00, 1),
(420, 'GALVA1.6X1000', 'BOBINA GALVANIZADA 1.6 X 1000', 4, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7542.00, 30168.00, 1),
(421, 'GALVA1.6X1190', 'BOBINA GALVANIZADA 1.6 X 1190', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7035.00, 14070.00, 1),
(422, 'GALVA1.6X1200', 'BOBINA GALVANIZADA 1.6 X 1200', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9240.00, 9240.00, 1),
(423, 'GALVA1.6X1220', 'BOBINA GALVANIZADA 1.6 X 1220', 11, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-11-06 14:22:27', 8692.00, 100088.00, 1),
(424, 'GALVA1.8X1220', 'BOBINA GALVANIZADA 1.8 X 1220', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8075.00, 16150.00, 1),
(425, 'GALVA1.9X720', 'BOBINA GALVANIZADA 1.9 X 720', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4385.00, 8770.00, 1),
(426, 'GALVA2X1180', 'BOBINA GALVANIZADA 2 X 1180', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-25 15:41:49', 1480.00, 1480.00, 1),
(427, 'GALVA2X1220', 'BOBINA GALVANIZADA 2 X 1220', 9, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-11-07 14:11:09', 10822.00, 97530.00, 1),
(428, 'GALVA2.5X1140', 'BOBINA GALVANIZADA 2.5 X 1140', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10065.00, 10065.00, 1),
(429, 'GALVA2.5X1220', 'BOBINA GALVANIZADA 2.5 X 1220', 6, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9146.00, 54876.00, 1),
(430, 'GALVA2.5X825', 'BOBINA GALVANIZADA 2.5 X 825', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2430.00, 2430.00, 1),
(431, 'BOBLC2.6X760', 'BOBINA LAMINADA EN CALIENTE DECAPADA 2.6 X 760', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 3330.00, 3330.00, 1),
(432, 'GALVA2.75X960', 'BOBINA GALVANIZADA 2.75 X 960', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8080.00, 8080.00, 1),
(433, 'GALVA3.2X1220', 'BOBINA GALVANIZADA 3.2 X 1220', 4, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10506.50, 42026.00, 1),
(479, 'BOBLFN0.9X1220', 'BOBINA LAMINADA EN FRIO NEGRA 0.9 X 1220', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10835.00, 21670.00, 1),
(480, 'BOBLFN1.25X1220', 'BOBINA LAMINADA EN FRIO NEGRA 1.25 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10070.00, 10070.00, 1),
(481, 'BOBLCN1.25X1220', 'BOBINA LAMINADA EN CALIENTE NEGRA 1.25 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10465.00, 10465.00, 1),
(482, 'BOBLCN1.6X1025', 'BOBINA LAMINADA EN CALIENTE NEGRA 1.6 X 1025', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9415.00, 18830.00, 1),
(483, 'BOBLCN1.8X840', 'BOBINA LAMINADA EN CALIENTE NEGRA 1.8 X 840', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2170.00, 2170.00, 1),
(484, 'BOBLCN1.8X940', 'BOBINA LAMINADA EN CALIENTE NEGRA 1.8 X 940', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2500.00, 2500.00, 1),
(485, 'BOBLCN10.9X1245', 'BOBINA LAMINADA EN CALIENTE NEGRA 10.9 X 1245', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 11360.00, 11360.00, 1),
(486, 'BOBLCN2X1055', 'BOBINA LAMINADA EN CALIENTE NEGRA 2 X 1055', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 3118.00, 3118.00, 1),
(487, 'BOBLCN2X1245', 'BOBINA LAMINADA EN CALIENTE NEGRA 2 X 1245', 9, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-11-02 13:45:06', 10387.00, 92608.00, 1),
(488, 'BOBLCN2.4X920', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.4 X 920', 8, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-26 12:09:17', 2930.00, 23440.00, 1),
(489, 'BOBLCN2.6X1005', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.6 X 1005', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7690.00, 7690.00, 1),
(490, 'BOBLCN2.6X1023', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.6 X 1023', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9180.00, 9180.00, 1),
(491, 'BOBLCN2.6X1150', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.6 X 1150', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 1745.00, 3490.00, 1),
(492, 'BOBLCN2.6X1173', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.6 X 1173', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4725.00, 9450.00, 1),
(493, 'BOBLCN2.6X823', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.6 X 823', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7400.00, 7400.00, 1),
(494, 'BOBLCN2.6X883', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.6 X 883', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4810.00, 9620.00, 1),
(495, 'BOBLCN2.63X1164', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.63 X 1164', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8700.00, 8700.00, 1),
(496, 'BOBLCN2.72X710', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.72 X 710', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 19867.00, 19867.00, 1),
(497, 'BOBLCN2.75X1240', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.75 X 1240', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 3410.00, 3410.00, 1),
(498, 'BOBLCN2.75X933', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.75 X 933', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8480.00, 8480.00, 1),
(499, 'BOBLCN2.8X1005', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.8 X 1005', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 5370.00, 5370.00, 1),
(500, 'BOBLCN2.9X1160', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.9 X 1160', 6, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-26 12:09:59', 4001.00, 24006.00, 1),
(501, 'BOBLCN2.9X1182', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.9 X 1182', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 9880.00, 19760.00, 1),
(502, 'BOBLCN2.9X1183', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.9 X 1183', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10310.00, 10310.00, 1),
(503, 'BOBLCN2.9X1200', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.9 X 1200', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 1870.00, 1870.00, 1),
(504, 'BOBLCN2.9X1203', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.9 X 1203', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2049.00, 2049.00, 1),
(505, 'BOBLCN2.9X1223', 'BOBINA LAMINADA EN CALIENTE NEGRA 2.9 X 1223', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 10630.00, 10630.00, 1),
(506, 'BOBLCN3.6X1320', 'BOBINA LAMINADA EN CALIENTE NEGRA 3.6 X 1320', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 1885.00, 3770.00, 1),
(507, 'BOBLCN3.8X1260', 'BOBINA LAMINADA EN CALIENTE NEGRA 3.8 X 1260', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2680.00, 2680.00, 1),
(508, 'BOBLCN3.8X1300', 'BOBINA LAMINADA EN CALIENTE NEGRA 3.8 X 1300', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 1950.00, 1950.00, 1),
(509, 'BOBLCN3.8X920', 'BOBINA LAMINADA EN CALIENTE NEGRA 3.8 X 920', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8190.00, 8190.00, 1),
(510, 'BOBLCN4.2X1300', 'BOBINA LAMINADA EN CALIENTE NEGRA 4.2 X 1300', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 4710.00, 4710.00, 1),
(511, 'BOBLCN4.15X915', 'BOBINA LAMINADA EN CALIENTE NEGRA 4.15 X 915', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 6530.00, 6530.00, 1),
(512, 'BOBLCN5.8X1025', 'BOBINA LAMINADA EN CALIENTE NEGRA 5.8 X 1025', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2100.00, 2100.00, 1),
(513, 'BOBLCN6.3X870', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.3 X 870', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7410.00, 14820.00, 1),
(514, 'BOBLCN6.3X910', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.3 X 910', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8159.00, 8159.00, 1),
(515, 'BOBLCN6.35X1036', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 1036', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 8230.00, 8230.00, 1),
(516, 'BOBLCN6.35X720', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 720', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 6563.00, 6563.00, 1),
(517, 'BOBLCN6.35X740', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 740', 6, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 14:18:25', 6707.00, 40242.00, 1),
(518, 'BOBLCN6.55X930', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.55 X 930', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 2160.00, 2160.00, 1),
(519, 'BOBLCN6.7X870', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.7 X 870', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7280.00, 7280.00, 1),
(520, 'BOBLCN8X820', 'BOBINA LAMINADA EN CALIENTE NEGRA 8 X 820', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-18 10:56:01', 7239.00, 7239.00, 1),
(540, 'FLEJ0.9X179', 'FLEJE GALVANIZADO 0.90 X 179', 0, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-19 15:32:53', 864.55, 0.00, 1),
(541, 'FLEJ0.9X213', 'FLEJE GALVANIZADO 0.90 X 213', 0, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-19 15:32:53', 1140.28, 0.00, 1),
(542, 'FLEJ2X242', 'FLEJE GALVANIZADO 2 X 242', 0, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-19 15:32:53', 982.56, 0.00, 1),
(543, 'FLEJ2X200', 'FLEJE NEGRO 2 x 200', 1, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-18 10:56:01', 1800.00, 1800.00, 1),
(545, 'FLEJ2X220', 'FLEJE NEGRO 2 X 220', 6, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-18 10:56:01', 1987.00, 11922.00, 1),
(547, 'FLEJ2X322', 'FLEJE GALVANIZADO 2 X 322', 25, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-11-01 11:39:17', 1146.40, 28660.00, 1),
(548, 'FLEJ2X345', ' FLEJE GALVANIZADO 2 X 345', 51, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-18 10:56:01', 924.43, 47145.93, 1),
(582, 'FLEJ2X213', 'FLEJE GALVANIZADO 2 X 213', 1, 0.00, 1, 0, 0, 'UNIDAD', 55, '2023-10-18 10:56:01', 713.00, 713.00, 1),
(614, 'BOBA0.5X1220', 'BOBINA PREPINTADA AZUL 0.5 X 1220', 3, 0.00, 0, 0, 0, 'UNIDAD', 3, '2023-11-03 17:37:50', 6271.00, 11486.00, 1),
(615, 'CHA12.5X920X6', 'CHAPA 12.5 X 920 X 6', 17, 0.00, 0, 0, 0, 'UNIDAD', 54, '2023-10-19 14:39:41', 2704.00, 45968.00, 1),
(616, 'CHA11.8X1075', 'CHAPA 11.8 X 1075 X 5345', 1, 0.00, 0, 0, 0, 'UNIDAD', 54, '2023-10-19 14:38:04', 2190.00, 2190.00, 1),
(619, 'BOBLCN6.55X1172', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.55 X 1172', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 10611.00, 10611.00, 1),
(620, 'GALVA2.25X1220', 'BOBINA GALVANIZADA 2.25 X 1220	', 0, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-30 16:31:07', 6130.00, 0.00, 1),
(621, 'BOBLCN7X1073', 'BOBINA LAMINADA EN CALIENTE NEGRA 7 X 1073	', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 9751.00, 9751.00, 1),
(622, 'BOBLCN6.9X1245', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.9 X 1245	', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 9191.00, 9191.00, 1),
(623, 'BOBLCN6.5X1040', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.5 X 1040', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 7991.00, 7991.00, 1),
(624, 'GALVA3.2X975', 'BOBINA GALVANIZADA 3.2 X 975', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 3830.00, 3830.00, 1),
(625, 'GALVA0.78X1220', 'BOBINA GALVANIZADA 0.78 X 1220', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 6836.00, 6836.00, 1),
(626, 'BOBLCN6.5X1047', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.5 X 1047', 1, 1.00, 1, 1, 1, 'UNIDAD', 3, '2023-10-18 10:56:01', 8441.00, 8441.00, 1),
(627, 'BOBLCN6.35X772', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 772', 2, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-26 18:45:30', 6851.00, 13702.00, 0),
(628, 'BOBLCN6.35X750', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 750', 4, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-11-06 17:52:01', 6641.00, 25972.00, 0),
(629, 'BOBLCN10X920', 'BOBINA LAMINADA EN CALIENTE NEGRA 10 X 920', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-25 15:51:34', 8172.00, 8172.00, 0),
(630, 'BOBLCN6.35x760', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 760', 4, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-31 14:01:08', 6943.00, 27772.00, 0),
(631, 'BOBLCN6.35x820', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 820', 5, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 10:09:29', 7591.00, 37955.00, 0),
(632, 'BOBLC4X1300', 'BOBINA LAMINADA EN CALIENTE DECAPADA 4 X 1300', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-25 16:29:29', 2081.00, 2081.00, 0),
(633, 'BOBLCN7.6X990', 'BOBINA LAMINADA EN CALIENTE NEGRA 7.6 X 990', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-26 16:04:58', 8921.00, 8921.00, 0),
(634, 'BOBLCN6.35x930', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 930', 5, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 18:56:22', 8411.00, 42055.00, 0),
(635, 'BOBLCN6.35x780', 'BOBINA LAMINADA EN CALIENTE PLANCHADAS 6.35 X 780', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 10:10:32', 6701.00, 6701.00, 0),
(636, 'BOBLCN6.7x1370', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.7 X 1370', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 10:12:09', 3571.00, 3571.00, 0),
(637, 'BOBLCN2.75x901', 'BOBINA LAMINADA EN CALIENTE PLANCHADAS 2.75 X 901', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 10:13:11', 7782.00, 7782.00, 0),
(638, 'BOBLCN6.6x953', 'BOBINA LAMINADA EN CALIENTE 6.6 X 953', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 14:20:21', 8571.00, 8571.00, 0),
(639, 'BOBLCN4.6X1220', 'BOBINA LAMINADA EN CALIENTE NEGRA 4.6 X 1220', 1, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-10-27 18:38:31', 3851.00, 3851.00, 0),
(640, 'GALVA0.7X1000', 'BOBINA GALVANIZADA 0.70 X 1000', 7, 0.00, 1, 0, 0, 'UNIDAD', 3, '2023-11-02 13:44:29', 6083.12, 45164.96, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `obras`
--

CREATE TABLE `obras` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `avance` decimal(10,2) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_detalle_obra` int(10) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `contrato` longblob NOT NULL,
  `detalle` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `obras`
--

INSERT INTO `obras` (`id`, `descripcion`, `fecha_alta`, `fecha_entrega`, `avance`, `id_cliente`, `id_detalle_obra`, `estado`, `contrato`, `detalle`) VALUES
(81, 'GRUPO ARES S.A.', '2023-08-14', '2023-08-29', 37.49, 42, 0, 'CONFIRMADA', '', 'Galpon de 40 x 100 con Chapas Prepintadas Rojas'),
(98, 'CARPAT S.A (RIGAR 2)', '2023-09-11', '2023-11-30', 6.79, 65, 0, 'CONFIRMADA', '', '45x140x10 (6300m2) (entrepiso, aleros, aislacion en cub y cerram. , puertas de emerg. , premarcos, portones levadizos, celosias)'),
(99, 'VALIENTE', '2023-09-11', '2023-10-13', 0.00, 54, 0, 'CONFIRMADA', '', ''),
(100, 'VINUESA', '2023-09-11', '2023-10-30', 0.00, 68, 0, 'CONFIRMADA', '', ''),
(101, 'PELASSA', '2023-09-13', '2023-11-30', 0.00, 72, 0, 'CONFIRMADA', '', ''),
(103, 'NAVE DEPOSITO FABRICA', '2023-09-18', '2023-10-31', 0.00, 38, 0, 'CONFIRMADA', '', ''),
(104, 'VEGA MZ-50 - LOTE 21', '2023-09-18', NULL, 0.00, 63, 0, 'CONFIRMADA', '', ''),
(105, 'COCHERAS CONCI', '2023-09-29', NULL, 12.12, 99, 0, 'CONFIRMADA', '', ''),
(108, 'YPF VILLA WARCALDE', '2023-10-02', NULL, 15.36, 105, 0, 'CONFIRMADA', '', '11 X 43.5  SUPERFICIE TOTAL 478.5mts'),
(109, 'LUC S.A.S.', '2023-10-20', NULL, 0.00, 100, 0, 'CONFIRMADA', '', 'RUTA Nº 5 - Km 86 - Sta Rosa de Calamuchita'),
(110, 'PAPASODERO 				', '2023-10-24', NULL, 0.00, 112, 0, 'CONFIRMADA', '', 'GALPON DE 23,72mts X 39,72mts'),
(111, 'GALPON TABARES', '2023-10-23', NULL, 0.33, 70, 0, 'CONFIRMADA', '', 'NAVE ADOSADA A ESTRUCTURA DE COLUMNAS DE HORMIGON A UNA SOLA AGUA, DESTINADA A LOCALES COMERCIALES. SE VENDE 9 COLUMNAS Y TODA LA ESTRUCTRURA DE TECHO COMPLETA'),
(112, 'AGROTEC', '2023-10-27', NULL, 0.00, 123, 0, 'CONFIRMADA', '', 'NAVE ESTRUCTURA A 2 AGUAS CON CENEFA FRONTAL, DIVIDIDA EN 2 PARTES, UNA DE 15m DE ANCHO POR 24 QUE CONECTA A GALPON EXISTENTE E INCORPORA PORTON NUEVO Y LA OTRA CAIDA DEL TECHO DE 9 M,ETROS ABIERTO CON OFICINA EXISTENTE AL FONDO'),
(113, 'ROTATIVAS CORDOBA S.A.', '2023-11-01', NULL, 0.00, 135, 0, 'CONFIRMADA', '', 'GALPON DE 26 mts X 50 mts');

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
  `id_seccion` int(11) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `cant_proceso` int(11) NOT NULL,
  `cant_terminadas` int(11) NOT NULL,
  `cant_obra` int(11) NOT NULL,
  `nro_remito` int(11) NOT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(50) NOT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_entrega` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `presupuesto`
--

INSERT INTO `presupuesto` (`id`, `id_cliente`, `id_obra`, `id_producto`, `id_seccion`, `seccion`, `metros`, `cantidad`, `cant_proceso`, `cant_terminadas`, `cant_obra`, `nro_remito`, `peso`, `unidad`, `pesototal`, `estado`, `fecha_entrega`) VALUES
(1, 42, 81, 374, 39, '500 X 6,4 X 185 X 6.4', 10.00, 9, 0, 0, 9, 64, 475.00, 'MTS', 4275.00, '', NULL),
(2, 42, 81, 372, 40, '262 X 4.8 X 148 X 6.4', 10.44, 2, 0, 0, 2, 64, 255.99, 'MTS', 511.98, '', NULL),
(3, 42, 81, 372, 40, '262 X 4.8 X 148 X 6.4', 10.93, 2, 0, 0, 2, 64, 268.00, 'MTS', 536.01, '', NULL),
(4, 42, 81, 372, 40, '262 X 4.8 X 148 X 6.4', 10.51, 2, 0, 0, 2, 64, 257.71, 'MTS', 515.41, '', NULL),
(5, 42, 81, 372, 40, '262 X 4.8 X 148 X 6.4', 11.06, 2, 0, 0, 2, 64, 271.19, 'MTS', 542.38, '', NULL),
(6, 42, 81, 372, 40, '262 X 4.8 X 148 X 6.4', 5.59, 1, 1, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(7, 42, 81, 379, 41, 'VIGA PRINCIPAL (H:500) X 165', 13.35, 34, 0, 0, 34, 153, 522.00, 'MTS', 7307.79, '', NULL),
(8, 42, 81, 379, 43, 'VIGA GUIA PORTON (375 X 4.8 X148 X 6.4)', 8.00, 1, 1, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(9, 42, 81, 379, 42, 'VIGA DE COMPRESION (H:148) X 148', 5.81, 8, 0, 0, 8, 153, 97.20, 'MTS', 777.61, '', NULL),
(10, 42, 81, 376, 32, '140 X 60 X 2', 11.93, 32, 0, 0, 32, 85, 53.69, 'MTS', 1717.92, '', NULL),
(11, 42, 81, 376, 32, '140 X 60 X 2', 11.79, 66, 9, 0, 57, 85, 53.06, 'MTS', 3024.14, '', NULL),
(12, 42, 81, 376, 32, '140 X 60 X 2', 5.99, 15, 3, 0, 12, 85, 26.96, 'MTS', 323.46, '', NULL),
(13, 42, 81, 376, 32, '140 X 60 X 2', 11.89, 15, 3, 0, 12, 85, 53.51, 'MTS', 642.06, '', NULL),
(14, 42, 81, 376, 32, '140 X 60 X 2', 5.31, 43, 34, 0, 9, 85, 23.90, 'MTS', 215.06, '', NULL),
(15, 42, 81, 376, 32, '140 X 60 X 2', 4.64, 24, 24, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(16, 42, 81, 376, 32, '140 X 60 X 2', 4.71, 10, 10, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(17, 42, 81, 376, 32, '140 X 60 X 2', 4.00, 8, 8, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(18, 42, 81, 377, 32, '140 X 60 X 2', 11.93, 44, 0, 0, 44, 85, 53.73, 'MTS', 2364.12, '', NULL),
(19, 42, 81, 377, 32, '140 X 60 X 2', 11.79, 132, 73, 0, 59, 85, 53.10, 'MTS', 3132.90, '', NULL),
(20, 42, 81, 380, 44, 'PALOTES (140)', 11.93, 4, 0, 0, 4, 85, 114.84, 'MTS', 459.36, '', NULL),
(21, 42, 81, 380, 44, 'PALOTES (140)', 11.79, 12, 12, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(22, 42, 81, 378, 45, 'CHAPAS', 2540.00, 1, 1, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(23, 42, 81, 378, 45, 'CHAPAS', 2456.00, 1, 1, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(24, 42, 81, 380, 46, 'PALOTE CENEFA LATERAL ( 2MTS ALTO )', 1.00, 34, 0, 0, 34, 185, 28.00, 'UNIDAD', 952.00, '', NULL),
(25, 42, 81, 380, 47, 'PALOTE CENEFA FRENTE Y FONDO ( 2MTS ALTO )', 1.00, 12, 0, 0, 12, 185, 28.00, 'UNIDAD', 336.00, '', NULL),
(26, 42, 81, 381, 48, 'CORREAS FONDO ( 140 )', 5.16, 6, 6, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(27, 42, 81, 381, 48, 'CORREAS FONDO ( 140 )', 5.21, 9, 9, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(28, 42, 81, 381, 49, 'CORREAS FRENTE ( 140 )', 4.49, 6, 6, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(29, 42, 81, 381, 49, 'CORREAS FRENTE ( 140 )', 4.53, 6, 6, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(30, 42, 81, 381, 49, 'CORREAS FRENTE ( 140 )', 3.90, 6, 6, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(31, 42, 81, 381, 50, 'CORREAS LATERALES ( 140 )', 5.75, 12, 12, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(32, 42, 81, 381, 50, 'CORREAS LATERALES ( 140 )', 5.80, 84, 84, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(33, 42, 81, 378, 45, 'CHAPAS', 2.00, 248, 248, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(904, 65, 98, 554, 65, 'SIN EQUIVALENCIA', 28.47, 58, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(905, 65, 98, 555, 65, 'SIN EQUIVALENCIA', 32.46, 15, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(906, 65, 98, 556, 65, 'SIN EQUIVALENCIA', 14.85, 19, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(907, 65, 98, 557, 83, '500 X 4.8 X 135 X 6.4', 8.00, 58, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(908, 65, 98, 372, 84, '250 X 4.8 X 135 X 6.4', 8.56, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(909, 65, 98, 372, 84, '250 X 4.8 X 135 X 6.4', 9.16, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(910, 65, 98, 372, 84, '250 X 4.8 X 135 X 6.4', 9.75, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(911, 65, 98, 530, 85, '500 X 4.8 X 250 X 6.4', 10.34, 15, 0, 0, 15, 145, 517.13, 'MTS', 7757.00, '', NULL),
(913, 65, 98, 436, 86, '250 X 4.8 X 148 X 6.4', 3.00, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(914, 65, 98, 558, 87, '148 X 4.8 X 123 X 6.4', 3.00, 8, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(915, 65, 98, 559, 83, '500 X 4.8 X 135 X 6.4', 22.55, 58, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(916, 65, 98, 560, 88, '148 X 4.8 X 148 X 6.4', 4.93, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(917, 65, 98, 561, 89, '375 X 4.8 X 148 X 6.4', 7.00, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(918, 65, 98, 561, 89, '375 X 4.8 X 148 X 6.4', 5.08, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(919, 65, 98, 561, 89, '375 X 4.8 X 148 X 6.4', 5.59, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(920, 65, 98, 562, 90, '148 X 4.8 X 123 X 4.8', 7.02, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(923, 65, 98, 562, 90, '148 X 4.8 X 123 X 4.8', 5.10, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(924, 65, 98, 562, 90, '148 X 4.8 X 123 X 4.8', 1.91, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(925, 65, 98, 563, 83, '500 X 4.8 X 135 X 6.4', 10.00, 14, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(926, 65, 98, 377, 32, '140 X 60 X 2', 10.00, 504, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(927, 65, 98, 380, 44, 'PALOTES (140)', 10.00, 28, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(928, 65, 98, 376, 32, '140 X 60 X 2', 10.00, 172, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(929, 65, 98, 376, 32, '140 X 60 X 2', 5.00, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(930, 65, 98, 376, 32, '140 X 60 X 2', 3.71, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(931, 65, 98, 376, 32, '140 X 60 X 2', 7.30, 24, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(933, 65, 98, 376, 32, '140 X 60 X 2', 6.15, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(934, 65, 98, 376, 32, '140 X 60 X 2', 2.30, 6, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(935, 65, 98, 376, 32, '140 X 60 X 2', 5.01, 29, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(936, 65, 98, 376, 32, '140 X 60 X 2', 5.45, 59, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(937, 65, 98, 376, 32, '140 X 60 X 2', 5.27, 30, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(938, 65, 98, 564, 32, '140 X 60 X 2', 10.00, 51, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(939, 65, 98, 564, 32, '140 X 60 X 2', 5.08, 17, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(940, 65, 98, 377, 82, '80 X 40 X 15 X 2', 10.00, 21, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(941, 65, 98, 377, 82, '80 X 40 X 15 X 2', 5.08, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(943, 65, 98, 392, 92, 'CINCALUM', 13.00, 282, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(944, 65, 98, 392, 92, 'CINCALUM', 10.25, 282, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(945, 65, 98, 565, 93, 'PREPINTADA', 8.60, 50, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(946, 65, 98, 565, 93, 'PREPINTADA', 6.60, 94, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(947, 65, 98, 565, 93, 'PREPINTADA', 6.60, 113, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(948, 65, 98, 565, 93, 'PREPINTADA', 3.40, 33, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(950, 65, 98, 565, 93, 'PREPINTADA', 0.85, 141, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(951, 65, 98, 565, 64, 'ACANALADA PLASTICA', 1.50, 141, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(953, 65, 98, 565, 38, 'VARIABLE', 48.15, 46, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(954, 65, 98, 565, 94, 'FRENTE + CENEFA', 11.05, 30, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(955, 65, 98, 565, 94, 'FRENTE + CENEFA', 8.05, 18, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(956, 65, 98, 571, 96, 'ESTRUCTURA CENEFA', 2.60, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(957, 65, 98, 571, 96, 'ESTRUCTURA CENEFA', 2.00, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(958, 65, 98, 571, 96, 'ESTRUCTURA CENEFA', 1.40, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(959, 65, 98, 571, 96, 'ESTRUCTURA CENEFA', 0.80, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(960, 65, 98, 381, 32, '140 X 60 X 2', 5.58, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(961, 65, 98, 381, 32, '140 X 60 X 2', 5.49, 8, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(962, 65, 98, 379, 97, 'VIGA DE ALERO VARIABLE', 3.14, 49, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(963, 65, 98, 572, 32, '140 X 60 X 2', 10.00, 57, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(964, 65, 98, 572, 32, '140 X 60 X 2', 5.00, 6, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(965, 65, 98, 572, 32, '140 X 60 X 2', 11.18, 9, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(966, 65, 98, 573, 92, 'CINCALUM', 2.65, 236, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(967, 65, 98, 571, 99, 'ALEROS (PALOTES)', 0.40, 49, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(968, 65, 98, 381, 32, '140 X 60 X 2', 4.90, 46, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(969, 65, 98, 573, 100, 'CENEFA', 0.55, 236, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(970, 65, 98, 574, 101, 'NAVE', 140.00, 2, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(971, 65, 98, 574, 102, 'ALEROS (CANALETAS)', 233.62, 1, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(972, 65, 98, 575, 103, 'TENS. CUBIERTA (H 12mm)', 7.60, 32, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(973, 65, 98, 575, 104, 'TENS. LATERAL (H 12mm)', 6.65, 8, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(974, 65, 98, 575, 104, 'TENS. LATERAL (H 12mm)', 5.60, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(976, 65, 98, 575, 104, 'TENS. LATERAL (H 12mm)', 6.20, 14, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(977, 65, 98, 575, 105, 'TENS. FF (H 12mm)', 6.35, 10, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(980, 65, 98, 576, 95, 'N/A', 27.00, 17, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(981, 65, 98, 577, 95, 'N/A', 150.00, 18, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(982, 65, 98, 578, 95, 'N/A', 0.00, 7, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(983, 65, 98, 579, 95, 'N/A', 0.00, 11, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(984, 65, 98, 570, 92, 'CINCALUM', 7.10, 36, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(985, 54, 99, 557, 107, '200 X 4.8 X 100 X 6.4', 3.91, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(986, 54, 99, 557, 107, '200 X 4.8 X 100 X 6.4', 4.41, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(987, 54, 99, 557, 107, '200 X 4.8 X 100 X 6.4', 3.79, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(988, 54, 99, 557, 107, '200 X 4.8 X 100 X 6.4', 3.48, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(989, 54, 99, 557, 107, '200 X 4.8 X 100 X 6.4', 3.87, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(990, 54, 99, 379, 108, 'VIGA PRINCIPAL 200X100', 6.30, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(991, 54, 99, 379, 108, 'VIGA PRINCIPAL 200X100', 7.75, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(992, 54, 99, 379, 108, 'VIGA PRINCIPAL 200X100', 11.66, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(993, 54, 99, 379, 108, 'VIGA PRINCIPAL 200X100', 5.02, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(994, 54, 99, 380, 109, 'PALOTE CUBIERTA', 9.95, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(995, 54, 99, 380, 109, 'PALOTE CUBIERTA', 4.79, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(996, 54, 99, 380, 109, 'PALOTE CUBIERTA', 10.00, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(997, 54, 99, 380, 109, 'PALOTE CUBIERTA', 1.94, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(998, 54, 99, 380, 109, 'PALOTE CUBIERTA', 3.21, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1003, 54, 99, 377, 67, '100 X 50 X 2', 9.95, 0, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1004, 54, 99, 377, 67, '100 X 50 X 2', 4.79, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1005, 54, 99, 377, 67, '100 X 50 X 2', 6.68, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1006, 54, 99, 377, 67, '100 X 50 X 2', 9.89, 0, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1011, 54, 99, 381, 67, '100 X 50 X 2', 4.80, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1020, 54, 99, 574, 110, 'CANALETAS', 19.70, 0, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1021, 68, 100, 557, 111, '300 X 4.8 X 165 X 6.4', 6.80, 9, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1022, 68, 100, 557, 111, '300 X 4.8 X 165 X 6.4', 7.14, 5, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1023, 68, 100, 557, 111, '300 X 4.8 X 165 X 6.4', 6.10, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1024, 68, 100, 557, 112, '375 X 6.4 X 185 X 6.4', 8.75, 11, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1025, 68, 100, 557, 112, '375 X 6.4 X 185 X 6.4', 8.40, 9, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1026, 68, 100, 557, 113, '500 X 6.4 X 248 X 7.9', 10.30, 11, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1027, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 7.52, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1028, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 7.92, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1029, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 8.32, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1030, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 7.95, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1031, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 7.56, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1032, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 7.17, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1033, 68, 100, 372, 114, '300 X 4.8 X 148 X 6.4', 6.43, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1034, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 9.11, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1035, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 9.50, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1036, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 9.90, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1037, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 9.92, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1038, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 9.52, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1039, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 9.13, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1040, 68, 100, 372, 111, '300 X 4.8 X 165 X 6.4', 8.74, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1041, 68, 100, 559, 115, '375 X 4.8 X 165 X 6.4', 20.05, 5, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1042, 68, 100, 559, 115, '375 X 4.8 X 165 X 6.4', 20.06, 11, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1043, 68, 100, 559, 115, '375 X 4.8 X 165 X 6.4', 13.07, 9, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1044, 68, 100, 559, 115, '375 X 4.8 X 165 X 6.4', 12.01, 9, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1045, 68, 100, 559, 115, '375 X 4.8 X 165 X 6.4', 20.06, 9, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1046, 68, 100, 559, 115, '375 X 4.8 X 165 X 6.4', 9.03, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1047, 68, 100, 560, 116, '148 X 4.8 X 148 X 4.8', 4.91, 25, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1048, 68, 100, 560, 116, '148 X 4.8 X 148 X 4.8', 5.00, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1050, 68, 100, 377, 33, '160 X 60 X 2', 10.01, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1051, 68, 100, 377, 33, '160 X 60 X 2', 40.10, 37, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1053, 68, 100, 377, 33, '160 X 60 X 2', 50.00, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1054, 68, 100, 377, 33, '160 X 60 X 2', 20.10, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1055, 68, 100, 376, 33, '160 X 60 X 2', 4.62, 27, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1056, 68, 100, 376, 33, '160 X 60 X 2', 4.87, 144, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1057, 68, 100, 376, 33, '160 X 60 X 2', 4.93, 48, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1058, 68, 100, 376, 33, '160 X 60 X 2', 4.55, 22, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1059, 68, 100, 376, 33, '160 X 60 X 2', 4.45, 30, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1060, 68, 100, 376, 33, '160 X 60 X 2', 4.37, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1061, 68, 100, 376, 33, '160 X 60 X 2', 4.12, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1062, 68, 100, 376, 33, '160 X 60 X 2', 4.75, 30, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1063, 68, 100, 376, 33, '160 X 60 X 2', 4.84, 105, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1064, 68, 100, 380, 117, 'PALOTE GUIA PORTON', 4.55, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1065, 68, 100, 380, 117, 'PALOTE GUIA PORTON', 4.87, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1067, 68, 100, 583, 118, 'PORTON', 24.90, 2, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1068, 68, 100, 565, 139, 'CHAPA ACANALADA', 1.00, 585, 0, 0, 0, 0, NULL, 'MTS2', NULL, '', NULL),
(1069, 72, 101, 593, 95, 'N/A', 26.24, 16, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1070, 72, 101, 593, 95, 'N/A', 14.99, 6, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1071, 72, 101, 557, 119, '500 X 4.8 X 148 X 6.4', 8.00, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1072, 72, 101, 372, 120, '200 X 4.8 X 135 X 6.4', 8.54, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1074, 72, 101, 372, 120, '200 X 4.8 X 135 X 6.4', 9.02, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1075, 72, 101, 599, 89, '375 X 4.8 X 148 X 6.4', 10.00, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1077, 72, 101, 560, 95, 'N/A', 53.28, 4, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1079, 72, 101, 380, 95, 'N/A', 108.00, 6, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1081, 72, 101, 380, 95, 'N/A', 54.00, 2, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1082, 72, 101, 377, 32, '140 X 60 X 2', 6.00, 18, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1083, 72, 101, 377, 32, '140 X 60 X 2', 12.00, 54, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1085, 72, 101, 570, 92, 'CINCALUM', 10.20, 86, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1086, 72, 101, 574, 110, 'CANALETAS', 42.00, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1087, 72, 101, 575, 103, 'TENS. CUBIERTA (H 12mm)', 7.90, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1088, 72, 101, 575, 103, 'TENS. CUBIERTA (H 12mm)', 7.91, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1089, 72, 101, 588, 95, 'N/A', 0.00, 144, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1090, 72, 101, 586, 95, 'N/A', 0.00, 288, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1091, 72, 101, 569, 95, 'N/A', 0.00, 4200, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1092, 65, 98, 588, 95, 'N/A', 0.00, 968, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1093, 65, 98, 586, 95, 'N/A', 0.00, 3534, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1094, 65, 98, 569, 95, 'N/A', 0.00, 36320, 0, 0, 2000, 31, NULL, 'UNIDAD', NULL, '', NULL),
(1095, 65, 98, 454, 95, 'N/A', 0.00, 14928, 0, 0, 2000, 31, NULL, 'UNIDAD', NULL, '', NULL),
(1096, 54, 99, 570, 63, 'ACANALADA', 6.36, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1098, 54, 99, 570, 63, 'ACANALADA', 7.40, 5, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1099, 54, 99, 570, 63, 'ACANALADA', 4.80, 0, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1101, 54, 99, 381, 67, '100 X 50 X 2', 3.15, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1102, 54, 99, 381, 67, '100 X 50 X 2', 1.90, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1103, 54, 99, 381, 67, '100 X 50 X 2', 10.00, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1104, 54, 99, 380, 123, 'PALOTE CENEFA', 1.34, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1105, 54, 99, 380, 123, 'PALOTE CENEFA', 2.84, 0, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1107, 54, 99, 581, 124, 'CHAPA CENEFA', 3.74, 11, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1108, 54, 99, 581, 124, 'CHAPA CENEFA', 1.34, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1109, 54, 99, 574, 110, 'CANALETAS', 3.15, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1110, 54, 99, 574, 110, 'CANALETAS', 2.00, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1111, 54, 99, 574, 110, 'CANALETAS', 9.72, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1112, 54, 99, 574, 110, 'CANALETAS', 5.02, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1114, 68, 100, 565, 63, 'ACANALADA', 2333.80, 1, 0, 0, 0, 0, NULL, 'MTS2', NULL, '', NULL),
(1115, 68, 100, 570, 63, 'ACANALADA', 20.04, 21, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1116, 68, 100, 570, 63, 'ACANALADA', 19.80, 31, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1117, 68, 100, 570, 63, 'ACANALADA', 44.00, 31, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1118, 68, 100, 574, 110, 'CANALETAS', 20.08, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1119, 68, 100, 574, 110, 'CANALETAS', 29.91, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1120, 68, 100, 574, 110, 'CANALETAS', 30.17, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1121, 68, 100, 574, 110, 'CANALETAS', 10.10, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1123, 68, 100, 565, 63, 'ACANALADA', 10.30, 40, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1124, 68, 100, 565, 63, 'ACANALADA', 8.37, 40, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1126, 68, 100, 565, 63, 'ACANALADA', 8.74, 20, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1128, 81, 102, 593, 129, 'PLACA FUNDACION 1/2', 0.22, 32, 0, 0, 0, 0, NULL, 'MTS2', NULL, '', NULL),
(1130, 81, 102, 557, 29, '500 X 4.8 X 150 X 6.4', 10.00, 26, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1131, 81, 102, 372, 130, '250 X 4.8 X 125 X 6.4', 10.65, 6, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1132, 81, 102, 559, 29, '500 X 4.8 X 150 X 6.4', 11.94, 26, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1133, 81, 102, 377, 32, '140 X 60 X 2', 12.62, 120, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1134, 81, 102, 376, 32, '140 X 60 X 2', 11.86, 32, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1136, 81, 102, 376, 32, '140 X 60 X 2', 12.62, 96, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1137, 81, 102, 570, 92, 'CINCALUM', 12.20, 152, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1140, 81, 102, 565, 91, 'TRAPEZOIDAL', 6.80, 8, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1141, 81, 102, 565, 91, 'TRAPEZOIDAL', 12.00, 24, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1142, 81, 102, 565, 91, 'TRAPEZOIDAL', 12.00, 32, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1143, 81, 102, 565, 91, 'TRAPEZOIDAL', 11.00, 160, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1144, 81, 102, 381, 100, 'CENEFA', 11.90, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1145, 81, 102, 381, 100, 'CENEFA', 12.60, 36, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1146, 81, 102, 380, 44, 'PALOTES (140)', 2.00, 36, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1147, 81, 102, 380, 44, 'PALOTES (140)', 0.58, 36, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1148, 81, 102, 581, 124, 'CHAPA CENEFA', 2.00, 204, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1149, 81, 102, 574, 110, 'CANALETAS', 76.00, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1150, 81, 102, 583, 118, 'PORTON', 30.20, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1151, 81, 102, 588, 65, 'SIN EQUIVALENCIA', 0.00, 186, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1152, 81, 102, 586, 65, 'SIN EQUIVALENCIA', 0.00, 576, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1153, 81, 102, 619, 65, 'SIN EQUIVALENCIA', 0.00, 8981, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1154, 81, 102, 620, 65, 'SIN EQUIVALENCIA', 0.00, 10755, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1155, 38, 103, 593, 129, 'PLACA FUNDACION 1/2', 0.10, 84, 0, 0, 0, 0, NULL, 'MTS2', NULL, '', NULL),
(1156, 38, 103, 593, 129, 'PLACA FUNDACION 1/2', 0.09, 42, 0, 0, 0, 0, NULL, 'MTS2', NULL, '', NULL),
(1157, 38, 103, 557, 131, '600 X 2.9 X 165 X 6.4', 7.99, 42, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1158, 38, 103, 557, 85, '500 X 4.8 X 250 X 6.4', 9.38, 42, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1159, 38, 103, 372, 130, '250 X 4.8 X 125 X 6.4', 8.66, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1160, 38, 103, 372, 130, '250 X 4.8 X 125 X 6.4', 9.93, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1161, 38, 103, 559, 132, '500 X 4.8 X 165 X 6.4', 20.00, 42, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1162, 38, 103, 377, 32, '140 X 60 X 2', 10.00, 340, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1164, 38, 103, 380, 44, 'PALOTES (140)', 10.00, 20, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1165, 38, 103, 376, 32, '140 X 60 X 2', 10.00, 120, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1166, 38, 103, 376, 32, '140 X 60 X 2', 6.75, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1167, 38, 103, 376, 32, '140 X 60 X 2', 6.86, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1168, 38, 103, 376, 32, '140 X 60 X 2', 13.09, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1169, 38, 103, 376, 32, '140 X 60 X 2', 0.80, 6, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1170, 38, 103, 570, 92, 'CINCALUM', 10.93, 202, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1172, 38, 103, 570, 92, 'CINCALUM', 9.50, 202, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1173, 38, 103, 565, 92, 'CINCALUM', 8.65, 1, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1174, 38, 103, 565, 92, 'CINCALUM', 10.05, 6, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1175, 38, 103, 565, 92, 'CINCALUM', 5.53, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1176, 38, 103, 565, 92, 'CINCALUM', 10.70, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1177, 38, 103, 565, 92, 'CINCALUM', 4.74, 6, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1178, 38, 103, 565, 92, 'CINCALUM', 9.30, 7, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1180, 38, 103, 565, 92, 'CINCALUM', 10.07, 28, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1181, 38, 103, 565, 92, 'CINCALUM', 10.72, 13, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1182, 38, 103, 565, 92, 'CINCALUM', 8.60, 202, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1184, 38, 103, 581, 100, 'CENEFA', 2.70, 282, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1185, 38, 103, 574, 110, 'CANALETAS', 100.00, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1186, 38, 103, 583, 118, 'PORTON', 33.08, 3, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1187, 38, 103, 588, 65, 'SIN EQUIVALENCIA', 0.00, 420, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1189, 38, 103, 586, 65, 'SIN EQUIVALENCIA', 0.00, 2296, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1190, 38, 103, 619, 65, 'SIN EQUIVALENCIA', 0.00, 19837, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1191, 38, 103, 620, 65, 'SIN EQUIVALENCIA', 0.00, 11830, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1193, 63, 104, 593, 65, 'SIN EQUIVALENCIA', 21.74, 32, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1194, 63, 104, 557, 29, '500 X 4.8 X 150 X 6.4', 10.00, 26, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1195, 63, 104, 372, 130, '250 X 4.8 X 125 X 6.4', 10.65, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1196, 63, 104, 372, 130, '250 X 4.8 X 125 X 6.4', 11.23, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1197, 63, 104, 559, 29, '500 X 4.8 X 150 X 6.4', 11.94, 26, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1198, 63, 104, 560, 44, 'PALOTES (140)', 6.23, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1199, 63, 104, 377, 32, '140 X 60 X 2', 12.76, 40, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1200, 63, 104, 377, 32, '140 X 60 X 2', 12.62, 80, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1203, 63, 104, 380, 44, 'PALOTES (140)', 12.76, 4, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1204, 63, 104, 380, 44, 'PALOTES (140)', 12.62, 8, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1205, 63, 104, 376, 32, '140 X 60 X 2', 12.76, 32, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1206, 63, 104, 376, 32, '140 X 60 X 2', 12.62, 64, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1207, 63, 104, 685, 32, '140 X 60 X 2', 5.93, 36, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1208, 63, 104, 685, 32, '140 X 60 X 2', 5.99, 16, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1209, 63, 104, 570, 63, 'ACANALADA', 12.20, 154, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1211, 63, 104, 565, 121, 'CHAPA PREPINTADA', 10.60, 154, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1214, 63, 104, 565, 63, 'ACANALADA', 490.00, 1, 0, 0, 0, 0, NULL, 'KG', NULL, '', NULL),
(1215, 63, 104, 381, 32, '140 X 60 X 2', 5.72, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1216, 63, 104, 381, 32, '140 X 60 X 2', 5.79, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1217, 63, 104, 381, 32, '140 X 60 X 2', 6.16, 12, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1218, 63, 104, 381, 32, '140 X 60 X 2', 6.21, 60, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1220, 63, 104, 571, 44, 'PALOTES (140)', 2.60, 36, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1221, 63, 104, 581, 91, 'TRAPEZOIDAL', 2.00, 206, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1222, 63, 104, 574, 110, 'CANALETAS', 76.00, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1223, 63, 104, 583, 118, 'PORTON', 30.84, 2, 0, 0, 0, 0, NULL, 'MTS', NULL, '', NULL),
(1224, 63, 104, 588, 65, 'SIN EQUIVALENCIA', 0.00, 234, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1225, 63, 104, 586, 65, 'SIN EQUIVALENCIA', 0.00, 1040, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1226, 63, 104, 619, 65, 'SIN EQUIVALENCIA', 0.00, 9120, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1227, 63, 104, 620, 65, 'SIN EQUIVALENCIA', 0.00, 10612, 0, 0, 0, 0, NULL, 'UNIDAD', NULL, '', NULL),
(1232, 63, 104, 659, 63, 'ACANALADA', 2.45, 1, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1233, 99, 105, 593, 129, '', 0.10, 5, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1237, 99, 105, 557, 150, '', 2.42, 5, 0, 0, 5, 196, 63.16, 'MTS', 315.81, '', NULL),
(1238, 99, 105, 559, 151, '', 1.54, 5, 0, 0, 5, 196, 63.84, 'MTS', 319.20, '', NULL),
(1239, 99, 105, 377, 32, '', 10.00, 10, 0, 0, 0, 0, 225.15, 'MTS', 1125.74, '', NULL),
(1240, 99, 105, 380, 44, '', 10.00, 2, 0, 0, 2, 196, 47.40, 'MTS', 474.00, '', NULL),
(1241, 99, 105, 570, 91, '', 1.65, 6, 0, 0, 0, 0, 90.00, 'MTS', 180.00, '', NULL),
(1242, 99, 105, 865, 65, '', 0.00, 20, 0, 0, 20, 196, 7.64, 'UNIDAD', 45.84, '', NULL),
(1243, 99, 105, 866, 65, '', 0.00, 60, 0, 0, 50, 196, 0.00, 'UNIDAD', 0.00, '', NULL),
(1244, 99, 105, 619, 65, '', 0.00, 578, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1245, 99, 105, 370, 32, '', 10.00, 2, 0, 0, 2, 196, 47.40, 'MTS', 474.00, '', NULL),
(1246, 55, 106, 440, 70, '', 5.65, 3, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1247, 105, 108, 593, 129, '', 0.22, 8, 8, 0, 0, 0, 0.00, 'MTS2', 0.00, '', NULL),
(1249, 105, 108, 912, 168, '', 0.08, 8, 8, 0, 0, 0, 22.11, 'MTS', 176.84, '', NULL),
(1250, 105, 108, 557, 169, '', 5.98, 8, 0, 0, 8, 220, 6.03, 'MTS', 48.23, '', NULL),
(1251, 105, 108, 379, 170, '', 3.30, 4, 0, 0, 4, 220, 331.17, 'MTS', 2649.38, '', NULL),
(1254, 105, 108, 379, 173, '', 3.30, 12, 0, 0, 12, 220, 108.90, 'MTS', 435.60, '', NULL),
(1255, 105, 108, 379, 174, '', 4.39, 6, 0, 0, 6, 220, 123.95, 'MTS', 1487.38, '', NULL),
(1256, 105, 108, 379, 175, '', 4.39, 2, 0, 0, 2, 220, 167.39, 'MTS', 1004.34, '', NULL),
(1257, 105, 108, 379, 171, '', 18.50, 2, 0, 0, 2, 220, 144.87, 'MTS', 289.74, '', NULL),
(1258, 105, 108, 379, 171, '', 7.00, 2, 0, 0, 2, 220, 747.22, 'MTS', 1494.43, '', NULL),
(1259, 105, 108, 379, 171, '', 17.01, 2, 0, 0, 2, 220, 282.73, 'MTS', 565.46, '', NULL),
(1260, 105, 108, 379, 172, '', 3.01, 2, 0, 0, 2, 220, 687.03, 'MTS', 1374.07, '', NULL),
(1261, 105, 108, 379, 172, '', 3.21, 2, 0, 0, 2, 220, 16.37, 'MTS', 32.75, '', NULL),
(1262, 105, 108, 379, 172, '', 7.65, 4, 0, 0, 4, 220, 17.46, 'MTS', 34.92, '', NULL),
(1263, 105, 108, 379, 172, '', 7.00, 6, 0, 0, 6, 220, 41.62, 'MTS', 166.46, '', NULL),
(1265, 105, 108, 575, 176, '', 5.00, 48, 0, 0, 48, 220, 4.35, 'MTS', 208.80, '', NULL),
(1267, 105, 108, 617, 177, '', 1.00, 48, 48, 0, 0, 0, 0.75, 'UNIDAD', 36.00, '', NULL),
(1269, 105, 108, 380, 178, '', 3.20, 14, 0, 0, 14, 220, 23.30, 'MTS', 326.14, '', NULL),
(1270, 105, 108, 380, 178, '', 4.40, 7, 0, 0, 7, 220, 27.65, 'MTS', 387.07, '', NULL),
(1271, 105, 108, 377, 32, '', 2.42, 14, 14, 0, 0, 0, 38.02, 'MTS', 266.11, '', NULL),
(1272, 105, 108, 377, 32, '', 7.65, 28, 28, 0, 0, 0, 11.47, 'MTS', 160.59, '', NULL),
(1273, 105, 108, 377, 32, '', 7.00, 42, 42, 0, 0, 0, 36.26, 'MTS', 1015.31, '', NULL),
(1274, 105, 108, 377, 32, '', 2.22, 14, 14, 0, 0, 0, 33.18, 'MTS', 1393.56, '', NULL),
(1275, 105, 108, 913, 31, '', 1.22, 28, 28, 0, 0, 0, 10.52, 'MTS', 147.32, '', NULL),
(1276, 105, 108, 913, 31, '', 2.16, 14, 14, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1277, 105, 108, 913, 31, '', 6.99, 42, 42, 0, 0, 0, 8.19, 'MTS', 114.61, '', NULL),
(1278, 105, 108, 913, 31, '', 7.64, 28, 0, 0, 0, 0, 26.49, 'MTS', 1112.67, '', NULL),
(1279, 105, 108, 913, 31, '', 2.36, 14, 0, 0, 0, 0, 28.96, 'MTS', 810.76, '', NULL),
(1282, 105, 108, 379, 179, '', 0.73, 48, 0, 0, 0, 0, 2.66, 'MTS', 42.52, '', NULL),
(1283, 105, 108, 379, 180, '', 0.09, 32, 0, 0, 0, 0, 2.66, 'MTS', 127.55, '', NULL),
(1284, 105, 108, 379, 180, '', 0.05, 8, 0, 0, 0, 0, 0.75, 'MTS', 23.99, '', NULL),
(1286, 105, 108, 570, 138, '', 4.58, 82, 0, 0, 0, 0, 21.21, 'MTS', 1738.84, '', NULL),
(1287, 105, 108, 565, 138, '', 0.70, 112, 0, 0, 0, 0, 22.53, 'MTS', 1847.76, '', NULL),
(1288, 105, 108, 914, 31, '', 3.12, 8, 0, 0, 0, 0, 3.44, 'MTS', 385.73, '', NULL),
(1289, 105, 108, 914, 31, '', 4.28, 4, 0, 0, 0, 0, 11.82, 'MTS', 94.60, '', NULL),
(1290, 105, 108, 914, 31, '', 0.68, 8, 0, 0, 0, 0, 16.22, 'MTS', 64.88, '', NULL),
(1291, 105, 108, 914, 31, '', 0.44, 4, 0, 0, 0, 0, 2.58, 'MTS', 20.62, '', NULL),
(1292, 105, 108, 914, 31, '', 2.05, 4, 0, 0, 0, 0, 1.67, 'MTS', 6.67, '', NULL),
(1293, 105, 108, 914, 31, '', 6.90, 12, 0, 0, 0, 0, 7.77, 'MTS', 31.08, '', NULL),
(1294, 105, 108, 914, 31, '', 7.53, 8, 0, 0, 0, 0, 26.15, 'MTS', 313.81, '', NULL),
(1295, 105, 108, 914, 31, '', 2.25, 4, 0, 0, 0, 0, 28.54, 'MTS', 228.31, '', NULL),
(1296, 105, 108, 915, 31, '', 3.69, 8, 0, 0, 0, 0, 8.53, 'MTS', 34.11, '', NULL),
(1297, 105, 108, 915, 31, '', 4.40, 4, 0, 0, 0, 0, 13.99, 'MTS', 111.88, '', NULL),
(1298, 105, 108, 915, 31, '', 3.34, 4, 0, 0, 0, 0, 16.68, 'MTS', 66.70, '', NULL),
(1299, 105, 108, 915, 31, '', 7.00, 12, 0, 0, 0, 0, 12.66, 'MTS', 50.63, '', NULL),
(1300, 105, 108, 915, 31, '', 7.65, 8, 0, 0, 0, 0, 26.53, 'MTS', 318.36, '', NULL),
(1301, 105, 108, 915, 31, '', 3.54, 4, 0, 0, 0, 0, 28.99, 'MTS', 231.95, '', NULL),
(1302, 105, 108, 574, 110, '', 40.90, 1, 0, 0, 0, 0, 13.42, 'MTS', 53.67, '', NULL),
(1303, 105, 108, 574, 110, '', 9.50, 2, 0, 0, 0, 0, 132.11, 'MTS', 132.11, '', NULL),
(1304, 105, 108, 574, 110, '', 41.00, 2, 0, 0, 0, 0, 30.69, 'MTS', 61.37, '', NULL),
(1305, 55, 106, 523, 133, '', 0.01, 1, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1306, 55, 106, 600, 65, '', 5.36, 4, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1307, 100, 109, 593, 65, '', 0.00, 20, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1308, 100, 109, 593, 65, '', 0.00, 4, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1309, 100, 109, 557, 183, '', 4.00, 10, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1310, 100, 109, 557, 183, '', 5.00, 10, 0, 0, 0, 0, 96.88, 'MTS', 968.80, '', NULL),
(1311, 100, 109, 557, 184, '', 4.50, 4, 0, 0, 0, 0, 121.10, 'MTS', 1211.00, '', NULL),
(1313, 100, 109, 379, 183, '', 11.00, 10, 0, 0, 0, 0, 242.20, 'MTS', 2422.00, '', NULL),
(1314, 100, 109, 946, 185, '', 1.00, 90, 0, 0, 0, 0, 266.42, 'UNIDAD', 2664.20, '', NULL),
(1315, 100, 109, 377, 31, '', 10.00, 36, 0, 0, 0, 0, 1.00, 'MTS', 90.00, '', NULL),
(1316, 100, 109, 376, 31, '', 4.80, 112, 0, 0, 0, 0, 37.90, 'MTS', 1364.40, '', NULL),
(1317, 100, 109, 376, 31, '', 4.70, 36, 0, 0, 0, 0, 18.19, 'MTS', 2037.50, '', NULL),
(1318, 100, 109, 380, 186, '', 4.70, 2, 0, 0, 0, 0, 17.81, 'MTS', 641.27, '', NULL),
(1319, 100, 109, 380, 186, '', 4.80, 8, 0, 0, 0, 0, 35.63, 'MTS', 71.25, '', NULL),
(1320, 100, 109, 946, 185, '', 1.00, 106, 0, 0, 0, 0, 36.38, 'UNIDAD', 291.07, '', NULL),
(1321, 100, 109, 570, 92, '', 9.85, 40, 0, 0, 0, 0, 1.00, 'MTS', 106.00, '', NULL),
(1322, 100, 109, 947, 93, '', 2.42, 40, 0, 0, 0, 0, 49.25, 'MTS', 1970.00, '', NULL),
(1323, 100, 109, 947, 93, '', 4.42, 40, 0, 0, 0, 0, 11.98, 'MTS', 479.16, '', NULL),
(1324, 100, 109, 948, 93, '', 4.95, 15, 0, 0, 0, 0, 21.88, 'MTS', 875.16, '', NULL),
(1326, 100, 109, 948, 93, '', 5.42, 10, 0, 0, 0, 0, 24.50, 'MTS', 367.54, '', NULL),
(1327, 100, 109, 948, 93, '', 2.40, 5, 0, 0, 0, 0, 26.83, 'MTS', 268.29, '', NULL),
(1328, 100, 109, 574, 110, '', 10.00, 4, 0, 0, 0, 0, 11.88, 'MTS', 59.40, '', NULL),
(1329, 100, 109, 588, 65, '', 0.00, 80, 0, 0, 0, 0, 32.30, 'UNIDAD', 129.20, '', NULL),
(1330, 100, 109, 586, 65, '', 0.00, 196, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1331, 100, 109, 619, 65, '', 0.00, 1100, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1332, 100, 109, 620, 65, '', 0.00, 2100, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1333, 112, 110, 593, 129, '', 0.21, 16, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1334, 112, 110, 593, 129, '', 0.15, 6, 0, 0, 0, 0, 21.10, 'MTS', 337.61, '', NULL),
(1335, 112, 110, 557, 29, '', 8.00, 16, 0, 0, 0, 0, 15.07, 'MTS', 90.43, '', NULL),
(1336, 112, 110, 372, 183, '', 8.65, 4, 0, 0, 0, 0, 269.04, 'MTS', 4304.64, '', NULL),
(1337, 112, 110, 372, 183, '', 9.23, 2, 0, 0, 0, 0, 209.50, 'MTS', 838.01, '', NULL),
(1338, 112, 110, 559, 29, '', 11.94, 16, 0, 0, 0, 0, 223.55, 'MTS', 447.10, '', NULL),
(1339, 112, 110, 946, 185, '', 1.00, 160, 0, 0, 0, 0, 401.54, 'UNIDAD', 6424.68, '', NULL),
(1340, 112, 110, 560, 44, '', 5.59, 4, 0, 0, 0, 0, 1.00, 'MTS', 160.00, '', NULL),
(1341, 112, 110, 377, 32, '', 11.35, 60, 0, 0, 0, 0, 53.11, 'MTS', 212.42, '', NULL),
(1342, 112, 110, 377, 32, '', 5.67, 20, 0, 0, 0, 0, 53.80, 'MTS', 3227.94, '', NULL),
(1343, 112, 110, 376, 32, '', 11.86, 14, 0, 0, 0, 0, 26.88, 'MTS', 537.52, '', NULL),
(1344, 112, 110, 946, 185, '', 1.00, 35, 0, 0, 0, 0, 56.22, 'UNIDAD', 787.03, '', NULL),
(1348, 112, 110, 570, 92, '', 11.94, 80, 0, 0, 0, 0, 1.00, 'MTS', 35.00, '', NULL),
(1349, 112, 110, 565, 92, '', 9.31, 12, 0, 0, 0, 0, 59.70, 'MTS', 4776.00, '', NULL),
(1350, 112, 110, 565, 92, '', 10.00, 12, 0, 0, 0, 0, 46.55, 'MTS', 558.60, '', NULL),
(1351, 112, 110, 574, 110, '', 40.00, 2, 0, 0, 0, 0, 50.00, 'MTS', 600.00, '', NULL),
(1352, 112, 110, 588, 65, '', 0.00, 88, 0, 0, 0, 0, 129.20, 'UNIDAD', 258.40, '', NULL),
(1353, 112, 110, 586, 65, '', 0.00, 320, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1354, 112, 110, 619, 65, '', 0.00, 4711, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1355, 112, 110, 620, 65, '', 0.00, 1213, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1356, 70, 111, 593, 129, '', 0.18, 9, 0, 0, 9, 41, 0.00, 'MTS', 0.00, '', NULL),
(1357, 70, 111, 557, 192, '', 6.40, 9, 0, 0, 9, 243, 15.07, 'MTS', 135.65, '', NULL),
(1358, 70, 111, 559, 194, '', 21.07, 9, 0, 0, 0, 0, 185.15, 'MTS', 1666.37, '', NULL),
(1361, 70, 111, 377, 32, '', 12.50, 19, 0, 0, 0, 0, 708.46, 'MTS', 6376.13, '', NULL),
(1363, 70, 111, 377, 32, '', 11.00, 57, 0, 0, 0, 0, 59.25, 'MTS', 948.00, '', NULL),
(1364, 70, 111, 380, 109, '', 12.50, 2, 0, 0, 0, 0, 52.14, 'MTS', 2502.72, '', NULL),
(1365, 70, 111, 380, 109, '', 11.00, 6, 0, 0, 0, 0, 91.00, 'MTS', 182.00, '', NULL),
(1366, 70, 111, 570, 63, '', 11.19, 46, 0, 0, 0, 0, 80.08, 'MTS', 480.48, '', NULL),
(1367, 70, 111, 570, 63, '', 9.82, 46, 0, 0, 0, 0, 50.00, 'MTS', 2300.18, '', NULL),
(1368, 70, 111, 574, 110, '', 46.00, 1, 0, 0, 0, 0, 44.26, 'MTS', 2036.09, '', NULL),
(1369, 70, 111, 588, 65, '', 0.00, 72, 0, 0, 0, 0, 148.58, 'UNIDAD', 148.58, '', NULL),
(1370, 70, 111, 586, 65, '', 0.00, 342, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1371, 70, 111, 619, 65, '', 0.00, 4777, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1372, 123, 112, 593, 129, '', 0.15, 20, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1374, 123, 112, 593, 129, '', 0.09, 2, 0, 0, 0, 0, 8.04, 'MTS', 16.08, '', NULL),
(1375, 123, 112, 557, 192, '', 8.00, 5, 0, 0, 0, 0, 9.04, 'MTS', 18.09, '', NULL),
(1376, 123, 112, 557, 192, '', 9.20, 5, 0, 0, 0, 0, 231.44, 'MTS', 1157.20, '', NULL),
(1377, 123, 112, 372, 197, '', 8.40, 1, 0, 0, 0, 0, 266.16, 'MTS', 1330.78, '', NULL),
(1378, 123, 112, 372, 197, '', 8.81, 1, 0, 0, 0, 0, 182.28, 'MTS', 182.28, '', NULL),
(1379, 123, 112, 379, 195, '', 9.23, 5, 0, 0, 0, 0, 191.18, 'MTS', 191.18, '', NULL),
(1380, 123, 112, 379, 195, '', 14.86, 5, 0, 0, 0, 0, 206.57, 'MTS', 1032.84, '', NULL),
(1381, 123, 112, 560, 88, '', 5.92, 4, 0, 0, 0, 0, 332.57, 'MTS', 1662.83, '', NULL),
(1382, 123, 112, 377, 32, '', 12.00, 26, 0, 0, 0, 0, 99.04, 'MTS', 396.17, '', NULL),
(1383, 123, 112, 377, 32, '', 12.00, 16, 0, 0, 0, 0, 56.88, 'MTS', 1478.88, '', NULL),
(1386, 123, 112, 380, 44, '', 12.00, 4, 0, 0, 0, 0, 56.88, 'MTS', 227.52, '', NULL),
(1387, 123, 112, 376, 32, '', 4.55, 8, 0, 0, 0, 0, 105.24, 'MTS', 420.96, '', NULL),
(1388, 123, 112, 376, 32, '', 4.88, 4, 0, 0, 0, 0, 21.57, 'MTS', 172.54, '', NULL),
(1389, 123, 112, 376, 32, '', 5.78, 8, 0, 0, 0, 0, 23.13, 'MTS', 92.52, '', NULL),
(1390, 123, 112, 376, 32, '', 5.85, 6, 0, 0, 0, 0, 27.40, 'MTS', 219.18, '', NULL),
(1391, 123, 112, 570, 198, '', 14.40, 25, 0, 0, 0, 0, 27.73, 'MTS', 166.37, '', NULL),
(1392, 123, 112, 570, 198, '', 8.80, 25, 0, 0, 0, 0, 71.57, 'MTS', 1789.20, '', NULL),
(1393, 123, 112, 565, 93, '', 6.50, 6, 0, 0, 0, 0, 43.74, 'MTS', 1093.40, '', NULL),
(1394, 123, 112, 565, 93, '', 7.30, 11, 0, 0, 0, 0, 32.18, 'MTS', 193.05, '', NULL),
(1395, 123, 112, 565, 93, '', 4.75, 5, 0, 0, 0, 0, 36.14, 'MTS', 397.49, '', NULL),
(1396, 123, 112, 565, 93, '', 3.40, 19, 0, 0, 0, 0, 23.51, 'MTS', 117.56, '', NULL),
(1397, 123, 112, 381, 32, '', 4.46, 6, 0, 0, 0, 0, 16.83, 'MTS', 319.77, '', NULL),
(1398, 123, 112, 381, 32, '', 4.70, 3, 0, 0, 0, 0, 21.14, 'MTS', 126.84, '', NULL),
(1399, 123, 112, 381, 32, '', 4.90, 3, 0, 0, 0, 0, 22.28, 'MTS', 66.83, '', NULL),
(1400, 123, 112, 381, 32, '', 4.83, 3, 0, 0, 0, 0, 23.23, 'MTS', 69.68, '', NULL),
(1401, 123, 112, 380, 46, '', 2.00, 6, 0, 0, 0, 0, 22.89, 'MTS', 68.68, '', NULL),
(1402, 123, 112, 581, 124, '', 2.00, 25, 0, 0, 0, 0, 46.80, 'MTS', 280.80, '', NULL),
(1403, 123, 112, 574, 110, '', 12.20, 4, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1404, 123, 112, 583, 118, '', 25.00, 1, 0, 0, 0, 0, 39.41, 'MTS', 157.62, '', NULL),
(1407, 123, 112, 575, 200, '', 178.10, 1, 0, 0, 0, 0, 167.41, 'MTS', 167.41, '', NULL),
(1408, 123, 112, 865, 65, '', 0.00, 40, 0, 0, 0, 0, 1325.06, 'UNIDAD', 1325.06, '', NULL),
(1409, 123, 112, 866, 65, '', 0.00, 210, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1410, 123, 112, 619, 65, '', 0.00, 2880, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1411, 123, 112, 620, 65, '', 0.00, 2560, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1412, 123, 112, 666, 65, '', 480.00, 1, 0, 0, 0, 0, 0.00, 'KG', 0.00, '', NULL),
(1413, 135, 113, 593, 129, '', 0.30, 11, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1414, 135, 113, 593, 129, '', 0.20, 8, 0, 0, 0, 0, 30.14, 'MTS', 331.58, '', NULL),
(1415, 135, 113, 557, 205, '', 7.45, 11, 0, 0, 0, 0, 20.10, 'MTS', 160.77, '', NULL),
(1417, 135, 113, 557, 207, '', 4.52, 6, 0, 0, 0, 0, 211.26, 'MTS', 1267.59, '', NULL),
(1418, 135, 113, 372, 206, '', 9.41, 2, 0, 0, 0, 0, 253.89, 'MTS', 1523.33, '', NULL),
(1419, 135, 113, 372, 206, '', 8.91, 2, 0, 0, 0, 0, 192.91, 'MTS', 385.81, '', NULL),
(1420, 135, 113, 372, 206, '', 8.41, 2, 0, 0, 0, 0, 182.66, 'MTS', 365.31, '', NULL),
(1421, 135, 113, 372, 206, '', 7.91, 2, 0, 0, 0, 0, 172.41, 'MTS', 344.81, '', NULL),
(1422, 135, 113, 559, 208, '', 13.06, 22, 0, 0, 0, 0, 162.16, 'MTS', 324.31, '', NULL),
(1423, 135, 113, 559, 209, '', 10.00, 5, 0, 0, 0, 0, 610.56, 'MTS', 13432.21, '', NULL),
(1424, 135, 113, 560, 210, '', 5.59, 8, 0, 0, 0, 0, 447.60, 'MTS', 2238.00, '', NULL),
(1425, 135, 113, 377, 32, '', 10.00, 110, 0, 0, 0, 0, 104.48, 'MTS', 835.82, '', NULL),
(1426, 135, 113, 380, 109, '', 10.00, 5, 0, 0, 0, 0, 47.40, 'MTS', 5214.00, '', NULL),
(1427, 135, 113, 376, 32, '', 10.00, 50, 0, 0, 0, 0, 0.00, 'MTS', 0.00, '', NULL),
(1428, 135, 113, 376, 32, '', 10.40, 14, 0, 0, 0, 0, 47.40, 'MTS', 2370.00, '', NULL),
(1429, 135, 113, 376, 32, '', 10.40, 16, 0, 0, 0, 0, 49.30, 'MTS', 690.14, '', NULL),
(1430, 135, 113, 376, 32, '', 5.20, 16, 0, 0, 0, 0, 49.30, 'MTS', 788.74, '', NULL),
(1431, 135, 113, 637, 185, '', 1.00, 352, 0, 0, 0, 0, 24.65, 'MTS', 394.37, '', NULL),
(1432, 135, 113, 570, 63, '', 13.13, 102, 0, 0, 0, 0, 1.00, 'MTS', 352.00, '', NULL),
(1433, 135, 113, 574, 110, '', 50.00, 1, 0, 0, 0, 0, 64.60, 'MTS', 6589.16, '', NULL),
(1434, 135, 113, 865, 95, '', 0.00, 68, 0, 0, 0, 0, 161.50, 'UNIDAD', 161.50, '', NULL),
(1435, 135, 113, 866, 95, '', 0.00, 320, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1436, 135, 113, 619, 95, '', 0.00, 6500, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1437, 135, 113, 620, 95, '', 0.00, 1213, 0, 0, 0, 0, 0.00, 'UNIDAD', 0.00, '', NULL),
(1438, 135, 113, 666, 95, '', 331.00, 1, 0, 0, 0, 0, 0.00, 'KG', 0.00, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuestotemporal`
--

CREATE TABLE `presupuestotemporal` (
  `id` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `id_obra` int(10) NOT NULL,
  `id_producto` int(10) NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `seccion` varchar(150) NOT NULL,
  `metros` decimal(10,2) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `cant_proceso` int(11) NOT NULL,
  `cant_terminadas` int(11) NOT NULL,
  `cant_obra` int(11) NOT NULL,
  `nro_remito` int(11) NOT NULL,
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
  `id_cliente` int(11) NOT NULL,
  `id_tipo_cuenta` int(11) NOT NULL,
  `producto` int(10) NOT NULL,
  `id_seccion` int(10) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `id_categoria` varchar(20) NOT NULL,
  `fecha` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `remitosclientes`
--

INSERT INTO `remitosclientes` (`id`, `numero`, `id_cliente`, `id_tipo_cuenta`, `producto`, `id_seccion`, `metros`, `cantidad`, `peso`, `unidad`, `pesototal`, `id_categoria`, `fecha`) VALUES
(1, 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, '', ''),
(530, 1, 46, 1, 374, 65, 275.00, 58, 275.00, 'KG', 15950.00, '2', '05-09-2023'),
(531, 2, 44, 1, 395, 65, 10.00, 10, 10.00, 'UNIDAD', 100.00, '', '05-09-2023'),
(533, 3, 44, 1, 434, 65, 1.00, 30, 1.00, 'UNIDAD', 30.00, '56', '05-09-2023'),
(534, 4, 45, 1, 434, 65, 1.00, 30, 1.00, 'UNIDAD', 30.00, '56', '05-09-2023'),
(535, 5, 53, 1, 371, 33, 11.42, 10, 53.90, 'MTS', 539.00, '4', '05-09-2023'),
(536, 5, 53, 1, 371, 33, 6.06, 10, 28.60, 'MTS', 286.00, '4', '05-09-2023'),
(537, 5, 53, 1, 435, 67, 2.52, 14, 8.95, 'MTS', 125.30, '4', '05-09-2023'),
(538, 5, 53, 1, 436, 68, 5.70, 2, 174.99, 'MTS', 349.98, '2', '05-09-2023'),
(539, 5, 53, 1, 436, 68, 5.20, 2, 159.64, 'MTS', 319.28, '2', '05-09-2023'),
(540, 5, 53, 1, 436, 68, 8.45, 2, 259.42, 'MTS', 518.84, '2', '05-09-2023'),
(541, 5, 53, 1, 436, 68, 6.25, 1, 191.88, 'MTS', 191.88, '2', '05-09-2023'),
(543, 6, 38, 1, 438, 65, 1.00, 10, 1.00, 'MTS', 10.00, '2', '05-09-2023'),
(544, 6, 38, 1, 439, 65, 1.00, 6, 1.00, 'UNIDAD', 6.00, '2', '05-09-2023'),
(546, 6, 38, 1, 437, 65, 200.00, 1, 200.00, 'KG', 200.00, '2', '05-09-2023'),
(547, 7, 46, 1, 440, 65, 6.00, 1, 6.00, 'MTS', 6.00, '2', '05-09-2023'),
(548, 7, 46, 1, 440, 65, 2.85, 1, 2.85, 'MTS', 2.85, '2', '05-09-2023'),
(549, 7, 46, 1, 440, 65, 2.00, 1, 2.00, 'MTS', 2.00, '2', '05-09-2023'),
(574, 8, 54, 1, 441, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '05-09-2023'),
(576, 9, 55, 1, 435, 65, 2.50, 1, 2.50, 'MTS', 2.50, '4', '05-09-2023'),
(577, 9, 55, 1, 442, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '4', '05-09-2023'),
(578, 10, 56, 1, 443, 69, 6.15, 14, 8.24, 'MTS', 115.36, '4', '06-09-2023'),
(580, 10, 56, 1, 435, 70, 6.15, 25, 9.59, 'MTS', 239.75, '4', '06-09-2023'),
(581, 10, 56, 1, 444, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(582, 10, 56, 1, 445, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '4', '06-09-2023'),
(583, 10, 56, 1, 446, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(584, 10, 56, 1, 447, 65, 3.00, 3, 3.00, 'KG', 9.00, '4', '06-09-2023'),
(585, 10, 56, 1, 448, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(586, 11, 56, 1, 449, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '57', '06-09-2023'),
(587, 11, 56, 1, 450, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(588, 11, 56, 1, 451, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '57', '06-09-2023'),
(589, 11, 56, 1, 452, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(590, 11, 56, 1, 453, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '57', '06-09-2023'),
(591, 11, 56, 1, 454, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(592, 11, 56, 1, 455, 65, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(593, 11, 56, 1, 457, 65, 0.00, 2500, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(594, 11, 56, 1, 456, 65, 0.00, 2500, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(595, 11, 56, 1, 458, 65, 0.00, 40, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(596, 11, 56, 1, 459, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(597, 11, 56, 1, 460, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '4', '06-09-2023'),
(599, 11, 56, 1, 461, 65, 0.00, 300, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(600, 11, 56, 1, 462, 65, 0.00, 300, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(602, 11, 56, 1, 463, 65, 0.00, 15, 0.00, 'PAQUETE', 0.00, '4', '06-09-2023'),
(603, 11, 56, 1, 465, 65, 0.00, 8, 0.00, 'PAQUETE', 0.00, '4', '06-09-2023'),
(606, 11, 56, 1, 466, 65, 0.00, 2, 0.00, 'PAQUETE', 0.00, '4', '06-09-2023'),
(607, 11, 56, 1, 464, 65, 0.00, 7, 0.00, 'PAQUETE', 0.00, '4', '06-09-2023'),
(608, 11, 56, 1, 467, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(609, 11, 56, 1, 468, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(610, 11, 56, 1, 469, 65, 50.00, 2, 50.00, 'MTS', 100.00, '56', '06-09-2023'),
(611, 11, 56, 1, 470, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(612, 11, 56, 1, 471, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(613, 11, 56, 1, 472, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(614, 11, 56, 1, 473, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(615, 11, 56, 1, 474, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(616, 11, 56, 1, 476, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(617, 11, 56, 1, 477, 65, 0.00, 1, 0.00, 'PAQUETE', 0.00, '56', '06-09-2023'),
(618, 11, 56, 1, 478, 65, 0.00, 1, 0.00, 'PAQUETE', 0.00, '56', '06-09-2023'),
(619, 12, 44, 1, 521, 65, 0.00, 100, 0.00, 'UNIDAD', 0.00, '4', '06-09-2023'),
(620, 13, 44, 1, 524, 65, 7.09, 165, 7.09, 'KG', 1169.85, '2', '06-09-2023'),
(621, 13, 44, 1, 525, 65, 660.00, 1, 660.00, 'KG', 660.00, '2', '06-09-2023'),
(623, 13, 44, 1, 522, 65, 2.94, 136, 2.94, 'UNIDAD', 399.84, '2', '06-09-2023'),
(624, 13, 44, 1, 523, 65, 2.66, 60, 2.66, 'KG', 159.60, '4', '06-09-2023'),
(625, 14, 44, 1, 474, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(626, 14, 44, 1, 455, 65, 0.00, 150, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(627, 14, 44, 1, 526, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(628, 15, 57, 1, 527, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(629, 16, 44, 1, 528, 65, 0.00, 48, 0.00, 'UNIDAD', 0.00, '56', '06-09-2023'),
(632, 17, 58, 1, 529, 71, 1.00, 62, 1.00, 'KG', 62.00, '4', '07-09-2023'),
(633, 17, 58, 1, 447, 72, 1.00, 233, 1.00, 'KG', 233.00, '4', '07-09-2023'),
(634, 17, 58, 1, 447, 73, 1.00, 8, 1.00, 'KG', 8.00, '4', '07-09-2023'),
(635, 17, 58, 1, 447, 74, 1.00, 6, 1.00, 'KG', 6.00, '4', '07-09-2023'),
(636, 17, 58, 1, 447, 75, 1.00, 10, 1.00, 'KG', 10.00, '4', '07-09-2023'),
(637, 18, 58, 1, 529, 76, 1.00, 32, 1.00, 'KG', 32.00, '4', '07-09-2023'),
(638, 18, 58, 1, 447, 77, 1.00, 78, 1.00, 'KG', 78.00, '4', '07-09-2023'),
(639, 18, 58, 1, 529, 78, 1.00, 56, 1.00, 'KG', 56.00, '4', '07-09-2023'),
(640, 18, 58, 1, 529, 71, 1.00, 42, 1.00, 'KG', 42.00, '4', '07-09-2023'),
(642, 19, 58, 1, 529, 79, 4.28, 7, 4.28, 'KG', 29.96, '4', '07-09-2023'),
(643, 20, 59, 1, 530, 65, 325.00, 17, 325.00, 'KG', 5525.00, '2', '07-09-2023'),
(644, 20, 59, 1, 372, 65, 25.00, 8, 25.00, 'KG', 200.00, '2', '07-09-2023'),
(645, 21, 60, 1, 531, 65, 1.40, 2, 1.40, 'KG', 2.80, '4', '07-09-2023'),
(647, 21, 60, 1, 531, 65, 1.00, 2, 1.00, 'KG', 2.00, '4', '07-09-2023'),
(649, 22, 61, 1, 392, 65, 5.70, 10, 5.70, 'MTS', 57.00, '4', '07-09-2023'),
(650, 22, 61, 1, 392, 65, 3.60, 10, 3.60, 'MTS', 36.00, '4', '07-09-2023'),
(651, 22, 61, 1, 534, 65, 3.00, 1, 3.00, 'MTS', 3.00, '4', '07-09-2023'),
(652, 22, 61, 1, 535, 65, 4.55, 2, 4.55, 'MTS', 9.10, '4', '07-09-2023'),
(653, 22, 61, 1, 535, 65, 5.05, 2, 5.05, 'MTS', 10.10, '4', '07-09-2023'),
(654, 22, 61, 1, 532, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '4', '07-09-2023'),
(655, 22, 61, 1, 533, 65, 1.00, 1, 1.00, 'UNIDAD', 1.00, '4', '07-09-2023'),
(656, 23, 46, 1, 447, 65, 2.44, 2, 2.44, 'MTS', 4.88, '4', '08-09-2023'),
(657, 23, 46, 1, 536, 65, 0.00, 30, 0.00, 'UNIDAD', 0.00, '56', '08-09-2023'),
(658, 23, 46, 1, 537, 65, 0.25, 1, 0.25, 'MTS', 0.25, '4', '08-09-2023'),
(659, 24, 46, 1, 538, 65, 0.50, 1, 0.50, 'UNIDAD', 0.50, '56', '08-09-2023'),
(660, 24, 46, 1, 539, 65, 0.50, 1, 0.50, 'UNIDAD', 0.50, '57', '08-09-2023'),
(662, 25, 62, 1, 454, 65, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '08-09-2023'),
(663, 26, 44, 1, 549, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '08-09-2023'),
(664, 26, 44, 1, 550, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '08-09-2023'),
(665, 26, 44, 1, 551, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '08-09-2023'),
(666, 27, 63, 1, 552, 82, 6.00, 6, 16.86, 'MTS', 101.16, '4', '08-09-2023'),
(667, 28, 64, 1, 553, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '57', '08-09-2023'),
(669, 29, 66, 1, 566, 138, 2.00, 56, 9.84, 'MTS', 551.04, '4', '11-09-2023'),
(670, 29, 66, 1, 392, 139, 12.40, 160, 61.01, 'MTS', 9761.60, '4', '11-09-2023'),
(671, 29, 66, 1, 567, 138, 9.25, 160, 45.51, 'MTS', 7281.60, '4', '11-09-2023'),
(672, 29, 66, 1, 568, 65, 0.00, 17, 0.00, 'MTS', 0.00, '4', '11-09-2023'),
(674, 30, 44, 1, 370, 32, 3.00, 7, 14.22, 'MTS', 99.54, '4', '11-09-2023'),
(675, 31, 65, 1, 454, 65, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(676, 31, 65, 1, 569, 65, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(677, 31, 65, 1, 526, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(678, 32, 64, 1, 457, 65, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(679, 33, 44, 1, 462, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(680, 33, 44, 1, 461, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(681, 33, 44, 1, 478, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(682, 34, 44, 1, 434, 65, 0.00, 18, 0.00, 'UNIDAD', 0.00, '56', '11-09-2023'),
(683, 34, 44, 1, 393, 139, 10.00, 11, 49.20, 'MTS', 541.20, '4', '11-09-2023'),
(684, 35, 56, 1, 456, 95, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(685, 35, 56, 1, 580, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(686, 36, 44, 1, 584, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(687, 36, 44, 1, 585, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '57', '12-09-2023'),
(688, 37, 53, 1, 586, 95, 0.00, 132, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(689, 37, 53, 1, 588, 95, 0.00, 18, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(690, 38, 45, 1, 589, 31, 2.00, 3, 7.66, 'MTS', 22.98, '4', '12-09-2023'),
(691, 38, 45, 1, 591, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '4', '12-09-2023'),
(692, 39, 44, 1, 569, 95, 0.00, 2400, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(693, 39, 44, 1, 550, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '12-09-2023'),
(694, 40, 69, 1, 392, 0, 3.90, 8, NULL, 'MTS', NULL, '4', '12-09-2023'),
(695, 40, 69, 1, 392, 0, 2.50, 6, NULL, 'MTS', NULL, '4', '12-09-2023'),
(696, 40, 69, 1, 592, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '4', '12-09-2023'),
(697, 41, 70, 1, 593, 95, 35.00, 9, 35.00, 'KG', 315.00, '4', '12-09-2023'),
(698, 42, 42, 1, 374, 39, 10.00, 25, 475.00, 'MTS', 11875.00, '2', '12-09-2023'),
(710, 43, 44, 1, 455, 95, 0.00, 200, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(711, 43, 44, 1, 594, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(712, 44, 71, 1, 454, 95, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(713, 44, 71, 1, 569, 95, 0.00, 750, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(715, 45, 57, 1, 447, 95, 0.00, 9, 0.00, 'UNIDAD', 0.00, '4', '13-09-2023'),
(716, 46, 71, 1, 392, 92, 3.70, 6, 18.50, 'MTS', 111.00, '4', '13-09-2023'),
(717, 47, 54, 1, 595, 95, 136.67, 6, 136.67, 'KG', 820.02, '2', '13-09-2023'),
(718, 47, 54, 1, 380, 95, 50.83, 6, 50.83, 'KG', 304.98, '4', '13-09-2023'),
(720, 47, 54, 1, 588, 95, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(721, 47, 54, 1, 586, 95, 0.00, 105, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(723, 47, 54, 1, 381, 67, 10.00, 1, 35.50, 'MTS', 35.50, '4', '13-09-2023'),
(724, 47, 54, 1, 377, 67, 9.95, 4, 35.32, 'MTS', 141.28, '4', '13-09-2023'),
(725, 47, 54, 1, 377, 67, 9.89, 4, 35.11, 'MTS', 140.44, '4', '13-09-2023'),
(726, 48, 56, 1, 448, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(727, 48, 56, 1, 596, 95, 0.00, 10, 0.00, 'UNIDAD', 0.00, '57', '13-09-2023'),
(728, 48, 56, 1, 597, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '57', '13-09-2023'),
(729, 48, 56, 1, 451, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '57', '13-09-2023'),
(730, 49, 45, 1, 594, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(731, 49, 45, 1, 598, 95, 0.00, 10, 0.00, 'UNIDAD', 0.00, '57', '13-09-2023'),
(732, 50, 64, 1, 553, 95, 0.00, 60, 0.00, 'UNIDAD', 0.00, '57', '13-09-2023'),
(733, 50, 64, 1, 459, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(734, 50, 64, 1, 580, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(735, 50, 64, 1, 467, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(736, 51, 73, 1, 392, 92, 8.00, 7, 40.00, 'MTS', 280.00, '4', '13-09-2023'),
(739, 52, 74, 1, 600, 95, 2.00, 2, 2.00, 'MTS', 4.00, '56', '13-09-2023'),
(740, 52, 74, 1, 601, 95, 2.00, 1, 2.00, 'MTS', 2.00, '56', '13-09-2023'),
(741, 52, 74, 1, 603, 95, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(742, 52, 74, 1, 602, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(743, 52, 74, 1, 604, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(744, 53, 75, 1, 566, 138, 5.30, 6, 26.08, 'MTS', 156.48, '4', '13-09-2023'),
(745, 54, 76, 1, 605, 121, 2.44, 10, 12.61, 'MTS', 126.10, '4', '13-09-2023'),
(746, 54, 76, 1, 607, 95, 2.44, 2, 2.44, 'MTS', 4.88, '4', '13-09-2023'),
(747, 55, 71, 1, 574, 110, 3.50, 1, 11.31, 'MTS', 11.31, '2', '13-09-2023'),
(748, 55, 71, 1, 608, 95, 2.44, 21, 2.44, 'MTS', 51.24, '4', '13-09-2023'),
(749, 56, 54, 1, 594, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(751, 57, 62, 1, 569, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(752, 58, 64, 1, 457, 95, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '13-09-2023'),
(753, 59, 44, 1, 434, 95, 0.00, 22, 0.00, 'UNIDAD', 0.00, '56', '14-09-2023'),
(756, 60, 45, 1, 612, 95, 25.00, 36, 25.00, 'KG', 900.00, '56', '14-09-2023'),
(757, 60, 45, 1, 611, 95, 50.00, 18, 50.00, 'KG', 900.00, '56', '14-09-2023'),
(758, 60, 45, 1, 610, 95, 0.00, 210, 0.00, 'UNIDAD', 0.00, '56', '14-09-2023'),
(759, 60, 45, 1, 447, 121, 2.44, 18, 12.61, 'MTS', 226.98, '4', '14-09-2023'),
(760, 61, 44, 1, 434, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '14-09-2023'),
(761, 62, 44, 1, 569, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '14-09-2023'),
(762, 62, 44, 1, 536, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '14-09-2023'),
(763, 62, 44, 1, 526, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '14-09-2023'),
(764, 63, 77, 1, 613, 92, 8.00, 6, 40.00, 'MTS', 240.00, '4', '14-09-2023'),
(765, 64, 42, 1, 372, 40, 10.44, 2, 255.99, 'MTS', 511.98, '2', '15-09-2023'),
(766, 64, 42, 1, 372, 40, 10.93, 2, 268.00, 'MTS', 536.00, '2', '15-09-2023'),
(767, 64, 42, 1, 372, 40, 10.51, 2, 257.71, 'MTS', 515.42, '2', '15-09-2023'),
(768, 64, 42, 1, 372, 40, 11.06, 2, 271.19, 'MTS', 542.38, '2', '15-09-2023'),
(769, 64, 42, 1, 374, 39, 10.00, 9, 475.00, 'MTS', 4275.00, '2', '15-09-2023'),
(770, 65, 59, 1, 557, 89, 8.40, 6, 281.15, 'MTS', 1686.90, '2', '15-09-2023'),
(771, 65, 59, 1, 614, 95, 50.00, 1, 50.00, 'KG', 50.00, '4', '15-09-2023'),
(772, 66, 79, 1, 370, 125, 12.00, 52, 57.48, 'MTS', 2988.96, '4', '15-09-2023'),
(774, 66, 79, 1, 370, 126, 12.00, 40, 58.08, 'MTS', 2323.20, '4', '15-09-2023'),
(775, 67, 44, 1, 615, 95, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '15-09-2023'),
(776, 67, 44, 1, 616, 95, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '15-09-2023'),
(777, 67, 44, 1, 526, 95, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '15-09-2023'),
(778, 67, 44, 1, 476, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '15-09-2023'),
(780, 68, 53, 1, 371, 33, 6.06, 3, 28.60, 'MTS', 85.80, '4', '15-09-2023'),
(781, 68, 53, 1, 435, 67, 2.50, 1, 8.88, 'MTS', 8.88, '4', '15-09-2023'),
(782, 68, 53, 1, 392, 92, 2.50, 6, 12.50, 'MTS', 75.00, '4', '15-09-2023'),
(783, 68, 53, 1, 452, 95, 0.00, 600, 0.00, 'UNIDAD', 0.00, '56', '15-09-2023'),
(784, 69, 81, 1, 568, 95, 0.00, 17, 0.00, 'UNIDAD', 0.00, '4', '15-09-2023'),
(785, 70, 80, 1, 567, 121, 0.15, 200, 0.78, 'MTS', 156.00, '4', '15-09-2023'),
(786, 71, 66, 1, 617, 95, 1.00, 20, 1.00, 'KG', 20.00, '2', '15-09-2023'),
(788, 71, 66, 1, 380, 127, 12.76, 4, 123.77, 'MTS', 495.08, '4', '15-09-2023'),
(789, 71, 66, 1, 380, 127, 12.62, 4, 122.41, 'MTS', 489.64, '4', '15-09-2023'),
(790, 71, 66, 1, 566, 93, 2.00, 151, 9.90, 'MTS', 1494.90, '4', '15-09-2023'),
(791, 71, 66, 1, 381, 32, 6.16, 60, 29.20, 'MTS', 1752.00, '4', '15-09-2023'),
(792, 71, 66, 1, 381, 128, 6.16, 60, 30.68, 'MTS', 1840.80, '4', '15-09-2023'),
(793, 72, 66, 1, 381, 128, 6.09, 12, 30.33, 'MTS', 363.96, '4', '15-09-2023'),
(796, 68, 53, 1, 618, 95, 0.00, 30, 0.00, 'UNIDAD', 0.00, '57', '15-09-2023'),
(797, 73, 45, 1, 549, 95, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(798, 73, 45, 1, 615, 95, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(799, 74, 44, 1, 434, 95, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(800, 75, 82, 1, 618, 65, 0.00, 25, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(801, 75, 82, 1, 449, 65, 0.00, 75, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(802, 75, 82, 1, 553, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(803, 75, 82, 1, 621, 65, 0.00, 7, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(804, 75, 82, 1, 464, 65, 0.00, 2, 0.00, 'PAQUETE', 0.00, '4', '18-09-2023'),
(805, 75, 82, 1, 466, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '4', '18-09-2023'),
(806, 75, 82, 1, 453, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(807, 75, 82, 1, 622, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(808, 75, 82, 1, 467, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(809, 75, 82, 1, 623, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '57', '18-09-2023'),
(810, 75, 82, 1, 468, 65, 40.00, 2, 40.00, 'LTS', 80.00, '56', '18-09-2023'),
(811, 75, 82, 1, 624, 133, 6.15, 14, 12.92, 'MTS', 180.88, '4', '18-09-2023'),
(812, 75, 82, 1, 625, 134, 6.15, 3, 7.38, 'MTS', 22.14, '4', '18-09-2023'),
(813, 75, 82, 1, 626, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(814, 75, 82, 1, 457, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(815, 75, 82, 1, 461, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(816, 75, 82, 1, 627, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(817, 75, 82, 1, 628, 65, 0.00, 800, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(818, 75, 82, 1, 629, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(819, 75, 82, 1, 580, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(821, 75, 82, 1, 460, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '4', '18-09-2023'),
(822, 75, 82, 1, 450, 65, 0.00, 800, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(823, 75, 82, 1, 455, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(824, 75, 82, 1, 456, 65, 0.00, 300, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(825, 76, 71, 1, 630, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(826, 76, 71, 1, 631, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(827, 76, 71, 1, 632, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(828, 76, 71, 1, 633, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(829, 76, 71, 1, 634, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(830, 77, 54, 1, 635, 65, 0.00, 1, 0.00, 'LTS', 0.00, '56', '18-09-2023'),
(831, 77, 54, 1, 539, 65, 0.00, 1, 0.00, 'LTS', 0.00, '57', '18-09-2023'),
(832, 77, 54, 1, 474, 65, 0.00, 1, 0.00, 'LTS', 0.00, '56', '18-09-2023'),
(833, 77, 54, 1, 616, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(834, 77, 54, 1, 636, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-09-2023'),
(835, 78, 82, 1, 624, 133, 6.15, 20, 12.92, 'MTS', 258.40, '4', '18-09-2023'),
(836, 78, 82, 1, 625, 134, 6.15, 12, 7.38, 'MTS', 88.56, '4', '18-09-2023'),
(837, 78, 82, 1, 435, 67, 12.00, 3, 42.60, 'MTS', 127.80, '4', '18-09-2023'),
(839, 79, 44, 1, 608, 65, 2.44, 11, 2.44, 'MTS', 26.84, '4', '19-09-2023'),
(840, 80, 54, 1, 392, 92, 6.33, 3, 31.65, 'MTS', 94.95, '4', '19-09-2023'),
(841, 80, 54, 1, 392, 92, 7.40, 2, 37.00, 'MTS', 74.00, '4', '19-09-2023'),
(842, 80, 54, 1, 392, 92, 11.40, 5, 57.00, 'MTS', 285.00, '4', '19-09-2023'),
(843, 80, 54, 1, 392, 92, 4.75, 10, 23.75, 'MTS', 237.50, '4', '19-09-2023'),
(844, 80, 54, 1, 574, 110, 17.00, 1, 54.91, 'MTS', 54.91, '2', '19-09-2023'),
(845, 80, 54, 1, 528, 135, 6.00, 4, 4.98, 'MTS', 19.92, '56', '19-09-2023'),
(846, 80, 54, 1, 380, 123, 1.34, 8, 9.03, 'MTS', 72.24, '4', '19-09-2023'),
(848, 80, 54, 1, 380, 123, 2.84, 2, 19.14, 'MTS', 38.28, '4', '19-09-2023'),
(849, 80, 54, 1, 637, 137, 1.00, 4, 0.75, 'UNIDAD', 3.00, '4', '19-09-2023'),
(851, 81, 44, 1, 608, 65, 0.00, 44, 0.00, 'MTS', 0.00, '4', '19-09-2023'),
(854, 81, 44, 1, 638, 93, 0.00, 12, 0.00, 'UNIDAD', 0.00, '4', '19-09-2023'),
(855, 81, 44, 1, 638, 93, 0.00, 32, 0.00, 'MTS', 0.00, '4', '19-09-2023'),
(856, 81, 44, 1, 608, 122, 0.00, 10, 0.00, 'MTS', 0.00, '4', '19-09-2023'),
(863, 82, 43, 1, 638, 93, 2.44, 3, 12.08, 'MTSL', 36.24, '4', '19-09-2023'),
(864, 82, 43, 1, 638, 93, 2.44, 3, 12.08, 'MTSL', 36.24, '4', '19-09-2023'),
(865, 82, 43, 1, 638, 93, 2.44, 3, 12.08, 'MTSL', 36.24, '4', '19-09-2023'),
(866, 82, 43, 1, 638, 93, 2.44, 3, 12.08, 'MTSL', 36.24, '4', '19-09-2023'),
(867, 82, 43, 1, 608, 122, 2.44, 19, 12.20, 'MTSL', 231.80, '4', '19-09-2023'),
(872, 83, 76, 1, 639, 65, 14.06, 2, 14.06, 'KG', 28.12, '4', '19-09-2023'),
(873, 84, 66, 1, 370, 32, 5.81, 6, 27.54, 'MTS', 165.24, '4', '19-09-2023'),
(874, 84, 66, 1, 370, 32, 5.79, 12, 27.44, 'MTS', 329.28, '4', '19-09-2023'),
(875, 84, 66, 1, 370, 32, 5.75, 6, 27.26, 'MTS', 163.56, '4', '19-09-2023'),
(876, 84, 66, 1, 614, 65, 0.15, 72, 0.15, 'MTS', 10.80, '4', '19-09-2023'),
(877, 85, 42, 1, 376, 32, 10.62, 16, 50.34, 'MTS', 805.44, '4', '19-09-2023'),
(878, 85, 42, 1, 376, 32, 5.31, 9, 25.17, 'MTS', 226.53, '4', '19-09-2023'),
(879, 85, 42, 1, 376, 32, 11.93, 32, 56.55, 'MTS', 1809.60, '4', '19-09-2023'),
(880, 85, 42, 1, 376, 32, 11.79, 57, 55.88, 'MTS', 3185.16, '4', '19-09-2023'),
(881, 85, 42, 1, 376, 32, 11.89, 12, 56.36, 'MTS', 676.32, '4', '19-09-2023'),
(882, 85, 42, 1, 376, 32, 5.99, 12, 28.39, 'MTS', 340.68, '4', '19-09-2023'),
(883, 85, 42, 1, 376, 32, 9.28, 6, 43.99, 'MTS', 263.94, '4', '19-09-2023'),
(884, 85, 42, 1, 376, 32, 9.35, 8, 44.32, 'MTS', 354.56, '4', '19-09-2023'),
(885, 85, 42, 1, 377, 32, 11.94, 44, 56.60, 'MTS', 2490.40, '4', '19-09-2023'),
(886, 85, 42, 1, 377, 32, 11.80, 59, 55.93, 'MTS', 3299.87, '4', '19-09-2023'),
(887, 85, 42, 1, 640, 65, 0.00, 140, 0.00, 'UNIDAD', 0.00, '56', '19-09-2023'),
(888, 85, 42, 1, 586, 65, 0.00, 550, 0.00, 'UNIDAD', 0.00, '56', '19-09-2023'),
(889, 85, 42, 1, 380, 44, 12.76, 4, 123.13, 'MTS', 492.52, '4', '19-09-2023'),
(890, 86, 54, 1, 376, 67, 5.34, 2, 18.96, 'MTS', 37.92, '4', '19-09-2023'),
(891, 86, 54, 1, 376, 67, 4.85, 2, 17.22, 'MTS', 34.44, '4', '19-09-2023'),
(892, 86, 54, 1, 376, 67, 4.82, 2, 17.11, 'MTS', 34.22, '4', '19-09-2023'),
(893, 86, 54, 1, 376, 67, 4.65, 2, 16.51, 'MTS', 33.02, '4', '19-09-2023'),
(894, 86, 54, 1, 376, 67, 1.77, 2, 6.28, 'MTS', 12.56, '4', '19-09-2023'),
(895, 86, 54, 1, 376, 67, 3.04, 2, 10.79, 'MTS', 21.58, '4', '19-09-2023'),
(896, 86, 54, 1, 376, 67, 5.13, 4, 18.21, 'MTS', 72.84, '4', '19-09-2023'),
(897, 86, 54, 1, 376, 67, 4.05, 2, 14.38, 'MTS', 28.76, '4', '19-09-2023'),
(898, 87, 44, 1, 526, 65, 0.00, 24, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(899, 87, 44, 1, 550, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(900, 88, 62, 1, 569, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(901, 89, 83, 1, 392, 92, 4.50, 5, 22.50, 'MTS', 112.50, '4', '20-09-2023'),
(902, 89, 83, 1, 619, 65, 0.00, 120, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(903, 89, 83, 1, 608, 122, 2.44, 14, 12.20, 'MTS', 170.80, '4', '20-09-2023'),
(904, 89, 83, 1, 574, 110, 6.00, 5, 19.38, 'MTS', 96.90, '2', '20-09-2023'),
(905, 89, 83, 1, 641, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(908, 90, 54, 1, 434, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(909, 91, 54, 1, 643, 65, 0.00, 16, 0.00, 'UNIDAD', 0.00, '4', '20-09-2023'),
(910, 92, 45, 1, 636, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(911, 92, 45, 1, 644, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(912, 92, 45, 1, 474, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(913, 92, 45, 1, 645, 65, 0.00, 1, 0.00, 'LTS', 0.00, '57', '20-09-2023'),
(914, 92, 45, 1, 646, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(915, 93, 66, 1, 380, 127, 12.76, 4, 123.77, 'MTS', 495.08, '4', '20-09-2023'),
(916, 94, 84, 1, 647, 65, 6.00, 1, 6.00, 'MTS', 6.00, '56', '20-09-2023'),
(917, 95, 54, 1, 619, 65, 0.00, 1180, 0.00, 'UNIDAD', 0.00, '56', '20-09-2023'),
(918, 96, 93, 1, 379, 140, 162.28, 7, 162.28, 'KG', 1135.96, '2', '20-09-2023'),
(919, 96, 93, 1, 648, 65, 12.75, 12, 12.75, 'KG', 153.00, '4', '20-09-2023'),
(920, 96, 93, 1, 649, 65, 12.11, 9, 12.11, 'KG', 108.99, '4', '20-09-2023'),
(921, 97, 44, 1, 536, 65, 0.00, 150, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(922, 97, 44, 1, 614, 110, 0.00, 1, 0.00, 'UNIDAD', 0.00, '4', '21-09-2023'),
(924, 98, 86, 1, 655, 121, 0.00, 50, 0.00, 'UNIDAD', 0.00, '4', '21-09-2023'),
(925, 98, 86, 1, 650, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(926, 98, 86, 1, 651, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(927, 98, 86, 1, 652, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(928, 98, 86, 1, 653, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(929, 98, 86, 1, 654, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '57', '21-09-2023'),
(930, 99, 54, 1, 620, 65, 0.00, 410, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(931, 99, 54, 1, 581, 124, 1.35, 17, 6.64, 'MTS', 112.88, '2', '21-09-2023'),
(932, 100, 62, 1, 569, 65, 0.00, 2, 0.00, 'MTS', 0.00, '56', '21-09-2023'),
(933, 101, 87, 1, 656, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(934, 101, 87, 1, 657, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(936, 102, 59, 1, 593, 65, 22.00, 30, 22.00, 'UNIDAD', 660.00, '4', '21-09-2023'),
(940, 103, 45, 1, 610, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(941, 103, 45, 1, 658, 65, 125.00, 16, 125.00, 'KG', 2000.00, '4', '21-09-2023'),
(943, 103, 45, 1, 583, 65, 80.00, 2, 80.00, 'KG', 160.00, '2', '21-09-2023'),
(947, 103, 45, 1, 380, 117, 2.60, 2, 24.54, 'KG', 49.08, '4', '21-09-2023'),
(948, 103, 45, 1, 659, 139, 5.17, 56, 25.44, 'MTS', 1424.64, '4', '21-09-2023'),
(951, 103, 45, 1, 660, 65, 0.00, 40, 0.00, 'UNIDAD', 0.00, '4', '21-09-2023'),
(952, 103, 45, 1, 601, 65, 12.00, 10, 12.00, 'KG', 120.00, '56', '21-09-2023'),
(954, 104, 44, 1, 601, 65, 12.17, 23, 12.17, 'KG', 279.91, '56', '21-09-2023'),
(955, 105, 45, 1, 661, 65, 0.00, 32, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(956, 105, 45, 1, 662, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '21-09-2023'),
(964, 106, 54, 1, 591, 63, 1.70, 27, 8.36, 'MTS', 225.72, '4', '21-09-2023'),
(965, 107, 43, 1, 530, 65, 325.00, 17, 325.00, 'KG', 5525.00, '2', '21-09-2023'),
(966, 107, 43, 1, 372, 65, 25.00, 8, 25.00, 'KG', 200.00, '2', '21-09-2023'),
(967, 108, 53, 1, 663, 65, 0.00, 200, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(971, 109, 62, 1, 592, 63, 0.60, 102, 2.95, 'MTS2', 300.90, '4', '22-09-2023'),
(975, 110, 45, 1, 570, 122, 3.10, 12, 15.50, 'MTS', 186.00, '2', '22-09-2023'),
(976, 111, 54, 1, 665, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(977, 111, 54, 1, 536, 65, 0.00, 200, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(978, 111, 54, 1, 526, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(980, 111, 54, 1, 614, 122, 0.00, 1, 0.00, 'UNIDAD', 0.00, '4', '22-09-2023'),
(981, 112, 86, 1, 444, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(982, 112, 86, 1, 448, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(983, 112, 86, 1, 449, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '57', '22-09-2023'),
(984, 113, 42, 1, 379, 41, 13.35, 13, 477.26, 'MTS', 6204.38, '2', '22-09-2023'),
(985, 113, 42, 1, 377, 32, 11.79, 73, 55.88, 'MTS', 4079.24, '4', '22-09-2023'),
(988, 113, 42, 1, 380, 44, 11.79, 12, 113.77, 'MTS', 1365.24, '4', '22-09-2023'),
(989, 113, 42, 1, 380, 44, 11.94, 4, 115.22, 'MTS', 460.88, '4', '22-09-2023'),
(990, 113, 42, 1, 666, 65, 883.00, 1, 883.00, 'KG', 883.00, '4', '22-09-2023'),
(992, 114, 88, 1, 531, 65, 2.44, 12, 2.44, 'MTS', 29.28, '4', '22-09-2023'),
(993, 114, 88, 1, 531, 65, 0.50, 7, 0.50, 'MTS', 3.50, '4', '22-09-2023'),
(994, 115, 45, 1, 478, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(995, 115, 45, 1, 461, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(996, 115, 45, 1, 462, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(999, 116, 42, 1, 588, 141, 0.00, 306, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(1000, 116, 42, 1, 586, 141, 0.00, 748, 0.00, 'UNIDAD', 0.00, '56', '22-09-2023'),
(1001, 117, 89, 1, 380, 142, 6.00, 2, 44.64, 'MTS', 89.28, '4', '22-09-2023'),
(1002, 117, 89, 1, 380, 142, 5.00, 2, 37.20, 'MTS', 74.40, '4', '22-09-2023'),
(1003, 117, 89, 1, 589, 67, 5.00, 1, 17.75, 'MTS', 17.75, '4', '22-09-2023'),
(1004, 118, 62, 1, 569, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '25-09-2023'),
(1005, 119, 62, 1, 592, 139, 0.60, 102, 2.95, 'MTS', 300.90, '4', '25-09-2023'),
(1014, 120, 45, 1, 593, 65, 47.00, 4, 47.00, 'KG', 188.00, '4', '25-09-2023'),
(1015, 120, 45, 1, 667, 65, 9.00, 23, 9.00, 'KG', 207.00, '4', '25-09-2023'),
(1016, 121, 45, 1, 653, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '25-09-2023'),
(1017, 122, 91, 1, 664, 92, 7.00, 11, 35.00, 'MTS', 385.00, '4', '25-09-2023'),
(1018, 123, 54, 1, 529, 93, 0.24, 8, 1.19, 'MTS', 9.52, '4', '25-09-2023'),
(1019, 123, 54, 1, 668, 122, 0.25, 5, 1.25, 'MTS', 6.25, '4', '25-09-2023'),
(1020, 124, 92, 1, 669, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '25-09-2023'),
(1021, 124, 92, 1, 670, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '25-09-2023'),
(1022, 125, 46, 1, 671, 93, 0.40, 5, 1.98, 'MTS', 9.90, '4', '25-09-2023'),
(1023, 125, 46, 1, 672, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '57', '25-09-2023'),
(1024, 126, 44, 1, 667, 65, 9.00, 28, 9.00, 'KG', 252.00, '4', '25-09-2023'),
(1025, 127, 86, 1, 673, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '25-09-2023'),
(1026, 127, 86, 1, 447, 93, 0.60, 4, 2.97, 'MTS', 11.88, '4', '25-09-2023'),
(1028, 128, 58, 1, 674, 143, 270.00, 1, 270.00, 'KG', 270.00, '4', '25-09-2023'),
(1031, 129, 93, 1, 589, 65, 3668.00, 1, 3668.00, 'KG', 3668.00, '4', '25-09-2023'),
(1032, 129, 93, 1, 370, 65, 5728.00, 1, 5728.00, 'KG', 5728.00, '4', '25-09-2023'),
(1034, 130, 95, 1, 676, 65, 5920.00, 1, 5920.00, 'KG', 5920.00, '4', '28-09-2023'),
(1035, 131, 81, 1, 677, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '26-09-2023'),
(1037, 132, 45, 1, 465, 65, 0.00, 7, 0.00, 'PAQUETE', 0.00, '4', '26-09-2023'),
(1038, 132, 45, 1, 463, 65, 0.00, 13, 0.00, 'PAQUETE', 0.00, '4', '26-09-2023'),
(1039, 132, 45, 1, 464, 65, 0.00, 17, 0.00, 'PAQUETE', 0.00, '4', '26-09-2023'),
(1040, 132, 45, 1, 455, 65, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '26-09-2023'),
(1041, 132, 45, 1, 553, 65, 0.00, 16, 0.00, 'UNIDAD', 0.00, '57', '26-09-2023'),
(1042, 133, 42, 1, 575, 65, 9.49, 88, 9.49, 'KG', 835.12, '2', '26-09-2023'),
(1043, 133, 42, 1, 595, 144, 13.35, 6, 534.93, 'MTS', 3209.58, '2', '26-09-2023'),
(1047, 134, 96, 1, 680, 145, 0.00, 1, 0.00, 'UNIDAD', 0.00, '4', '26-09-2023'),
(1048, 134, 96, 1, 678, 145, 0.00, 2, 0.00, 'UNIDAD', 0.00, '4', '26-09-2023'),
(1049, 134, 96, 1, 679, 145, 0.00, 1, 0.00, 'UNIDAD', 0.00, '4', '26-09-2023'),
(1056, 135, 44, 1, 682, 65, 7.92, 48, 7.92, 'KG', 380.16, '4', '27-09-2023'),
(1057, 135, 44, 1, 681, 65, 9.72, 72, 9.72, 'KG', 699.84, '4', '27-09-2023'),
(1058, 136, 62, 1, 673, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '27-09-2023'),
(1059, 136, 62, 1, 526, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '27-09-2023'),
(1060, 137, 45, 1, 457, 65, 0.00, 1500, 0.00, 'UNIDAD', 0.00, '56', '27-09-2023'),
(1061, 138, 56, 1, 449, 65, 0.00, 26, 0.00, 'UNIDAD', 0.00, '57', '27-09-2023'),
(1062, 138, 56, 1, 683, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '27-09-2023'),
(1063, 138, 56, 1, 684, 65, 5.00, 1, 5.00, 'MTS', 5.00, '56', '27-09-2023'),
(1064, 139, 84, 1, 686, 65, 0.20, 20, 0.20, 'KG', 4.00, '56', '28-09-2023'),
(1065, 139, 84, 1, 653, 65, 0.30, 3, 0.30, 'KG', 0.90, '56', '28-09-2023'),
(1066, 140, 62, 1, 454, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '28-09-2023'),
(1067, 140, 62, 1, 550, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '28-09-2023'),
(1070, 141, 45, 1, 687, 65, 0.00, 120, 0.00, 'UNIDAD', 0.00, '56', '28-09-2023'),
(1078, 142, 98, 1, 589, 31, 8.20, 10, 31.41, 'MTS', 314.10, '4', '28-09-2023'),
(1079, 142, 98, 1, 589, 31, 10.00, 2, 38.30, 'MTS', 76.60, '4', '28-09-2023'),
(1080, 142, 98, 1, 589, 31, 12.00, 1, 45.96, 'MTS', 45.96, '4', '28-09-2023'),
(1081, 142, 98, 1, 589, 31, 2.70, 4, 10.34, 'MTS', 41.36, '4', '28-09-2023'),
(1082, 142, 98, 1, 435, 67, 8.00, 5, 28.40, 'MTS', 142.00, '4', '28-09-2023'),
(1083, 142, 98, 1, 435, 67, 8.20, 3, 29.11, 'MTS', 87.33, '4', '28-09-2023'),
(1084, 143, 62, 1, 455, 65, 0.00, 200, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1085, 143, 62, 1, 551, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1086, 144, 62, 1, 608, 65, 3.20, 15, 3.20, 'KG', 48.00, '4', '29-09-2023'),
(1089, 145, 65, 1, 530, 65, 515.00, 13, 515.00, 'KG', 6695.00, '2', '29-09-2023'),
(1090, 145, 65, 1, 530, 65, 531.00, 2, 531.00, 'KG', 1062.00, '2', '29-09-2023'),
(1091, 146, 45, 1, 636, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1092, 146, 45, 1, 688, 65, 1.00, 5, 1.00, 'LTS', 5.00, '56', '29-09-2023'),
(1093, 146, 45, 1, 689, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1094, 146, 45, 1, 455, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1095, 147, 45, 1, 690, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1096, 148, 44, 1, 653, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '29-09-2023'),
(1099, 149, 76, 1, 607, 147, 29.38, 21, 29.38, 'KG', 616.98, '4', '29-09-2023'),
(1102, 150, 93, 1, 370, 32, 12.00, 360, 56.88, 'MTS', 20476.80, '4', '29-09-2023'),
(1103, 151, 54, 1, 581, 91, 3.80, 11, 17.59, 'MTS', 193.49, '2', '02-10-2023'),
(1104, 151, 54, 1, 664, 122, 3.80, 3, 19.00, 'MTS', 57.00, '4', '02-10-2023'),
(1105, 151, 54, 1, 619, 65, 0.00, 300, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1106, 151, 54, 1, 620, 65, 0.00, 200, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1107, 151, 54, 1, 529, 93, 0.24, 8, 1.19, 'MTS', 9.52, '4', '02-10-2023'),
(1108, 151, 54, 1, 532, 122, 0.06, 8, 0.30, 'MTS', 2.40, '4', '02-10-2023'),
(1109, 151, 54, 1, 529, 143, 0.44, 1, 0.44, 'MTS', 0.44, '4', '02-10-2023'),
(1110, 151, 54, 1, 529, 143, 0.35, 12, 0.35, 'MTS', 4.20, '4', '02-10-2023'),
(1111, 151, 54, 1, 434, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1112, 151, 54, 1, 691, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1113, 152, 93, 1, 692, 148, 6.00, 49, 20.52, 'MTS', 1005.48, '56', '02-10-2023'),
(1115, 153, 42, 1, 560, 116, 5.81, 8, 97.20, 'MTS', 777.60, '2', '02-10-2023'),
(1116, 153, 42, 1, 559, 132, 13.35, 14, 521.99, 'MTS', 7307.86, '2', '02-10-2023'),
(1117, 154, 54, 1, 673, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1118, 155, 45, 1, 673, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1119, 155, 45, 1, 620, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '02-10-2023'),
(1120, 156, 66, 1, 766, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1121, 157, 45, 1, 767, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1122, 158, 45, 1, 768, 65, 0.00, 2, 0.00, 'KG', 0.00, '56', '03-10-2023'),
(1123, 158, 45, 1, 615, 65, 0.00, 2, 0.00, 'KG', 0.00, '56', '03-10-2023'),
(1124, 158, 45, 1, 549, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1125, 158, 45, 1, 476, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1126, 158, 45, 1, 673, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1127, 159, 45, 1, 456, 65, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1128, 159, 45, 1, 457, 65, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1129, 159, 45, 1, 769, 65, 272.00, 1, 272.00, 'KG', 272.00, '56', '03-10-2023'),
(1130, 159, 45, 1, 684, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1131, 159, 45, 1, 466, 65, 0.00, 6, 0.00, 'PAQUETE', 0.00, '4', '03-10-2023'),
(1132, 159, 45, 1, 464, 65, 0.00, 15, 0.00, 'PAQUETE', 0.00, '4', '03-10-2023'),
(1134, 160, 54, 1, 770, 149, 157.00, 1, 157.00, 'KG', 157.00, '4', '03-10-2023'),
(1136, 160, 54, 1, 664, 122, 3.00, 2, 15.00, 'MTS', 30.00, '4', '03-10-2023'),
(1138, 160, 54, 1, 664, 122, 4.00, 1, 20.00, 'MTS', 20.00, '4', '03-10-2023'),
(1139, 161, 62, 1, 608, 65, 89.00, 1, 89.00, 'KG', 89.00, '4', '03-10-2023'),
(1140, 162, 38, 1, 775, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1141, 162, 38, 1, 776, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1142, 162, 38, 1, 777, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1143, 162, 38, 1, 778, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1144, 162, 38, 1, 779, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1145, 162, 38, 1, 780, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1146, 163, 93, 1, 589, 65, 10110.00, 1, 10110.00, 'KG', 10110.00, '4', '03-10-2023'),
(1147, 164, 84, 1, 781, 65, 129.00, 1, 129.00, 'KG', 129.00, '4', '03-10-2023'),
(1148, 165, 59, 1, 374, 152, 8.00, 8, 240.00, 'MTS', 1920.00, '2', '03-10-2023'),
(1151, 166, 100, 1, 682, 65, 0.00, 30, 0.00, 'UNIDAD', 0.00, '4', '03-10-2023'),
(1152, 166, 100, 1, 681, 65, 0.00, 105, 0.00, 'UNIDAD', 0.00, '4', '03-10-2023'),
(1153, 166, 100, 1, 456, 65, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1154, 166, 100, 1, 455, 65, 0.00, 4000, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1155, 166, 100, 1, 457, 65, 0.00, 3000, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1156, 166, 100, 1, 461, 65, 0.00, 400, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1157, 166, 100, 1, 462, 65, 0.00, 400, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1158, 166, 100, 1, 782, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1159, 166, 100, 1, 785, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1160, 166, 100, 1, 467, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1161, 166, 100, 1, 468, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1162, 166, 100, 1, 783, 65, 0.00, 30, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1163, 166, 100, 1, 478, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1164, 166, 100, 1, 784, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1165, 166, 100, 1, 460, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '4', '03-10-2023'),
(1166, 166, 100, 1, 465, 65, 0.00, 75, 0.00, 'UNIDAD', 0.00, '4', '03-10-2023'),
(1167, 166, 100, 1, 459, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1168, 166, 100, 1, 553, 65, 0.00, 120, 0.00, 'UNIDAD', 0.00, '57', '03-10-2023'),
(1169, 166, 100, 1, 444, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1170, 166, 100, 1, 474, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '03-10-2023'),
(1171, 167, 59, 1, 557, 65, 330.00, 6, 330.00, 'KG', 1980.00, '2', '03-10-2023'),
(1172, 167, 59, 1, 379, 65, 251.00, 18, 251.00, 'KG', 4518.00, '2', '03-10-2023'),
(1174, 168, 98, 1, 768, 65, 1.00, 3, 1.00, 'KG', 3.00, '56', '04-10-2023'),
(1175, 168, 98, 1, 615, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1176, 169, 98, 1, 786, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '57', '04-10-2023'),
(1177, 170, 62, 1, 644, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1178, 171, 59, 1, 374, 152, 8.00, 11, 240.00, 'MTS', 2640.00, '2', '04-10-2023'),
(1180, 171, 59, 1, 557, 39, 8.00, 6, 380.00, 'MTS', 2280.00, '2', '04-10-2023'),
(1181, 171, 59, 1, 374, 38, 250.00, 9, 250.00, 'KG', 2250.00, '2', '04-10-2023'),
(1182, 172, 54, 1, 665, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1184, 172, 54, 1, 529, 93, 0.34, 1, 1.68, 'MTS', 1.68, '4', '04-10-2023'),
(1185, 172, 54, 1, 435, 67, 2.50, 2, 8.88, 'MTS', 17.76, '4', '04-10-2023'),
(1186, 173, 45, 1, 791, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1187, 173, 45, 1, 788, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1188, 173, 45, 1, 789, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1189, 173, 45, 1, 790, 65, 0.00, 38, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1191, 174, 42, 1, 567, 121, 10.60, 175, 54.80, 'MTS', 9590.00, '4', '04-10-2023'),
(1193, 174, 42, 1, 567, 121, 5.40, 18, 27.92, 'MTS', 502.56, '4', '04-10-2023'),
(1194, 175, 66, 1, 664, 122, 12.40, 148, 62.00, 'MTS', 9176.00, '4', '04-10-2023'),
(1196, 175, 66, 1, 664, 153, 12.00, 8, 30.00, 'MTS', 240.00, '4', '04-10-2023'),
(1198, 176, 101, 1, 464, 65, 0.00, 1, 0.00, 'PAQUETE', 0.00, '4', '04-10-2023'),
(1199, 176, 101, 1, 466, 65, 0.00, 1, 0.00, 'PAQUETE', 0.00, '4', '04-10-2023'),
(1200, 176, 101, 1, 460, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '4', '04-10-2023'),
(1201, 176, 101, 1, 461, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1202, 176, 101, 1, 462, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1203, 176, 101, 1, 457, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1204, 176, 101, 1, 626, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1205, 176, 101, 1, 467, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1206, 176, 101, 1, 792, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1207, 176, 101, 1, 553, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '57', '04-10-2023'),
(1208, 177, 45, 1, 681, 146, 6.15, 44, 10.46, 'MTS', 460.24, '4', '04-10-2023'),
(1209, 177, 45, 1, 553, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '57', '04-10-2023'),
(1210, 178, 53, 1, 463, 65, 0.00, 10, 0.00, 'PAQUETE', 0.00, '4', '04-10-2023'),
(1211, 178, 53, 1, 465, 65, 0.00, 5, 0.00, 'PAQUETE', 0.00, '4', '04-10-2023'),
(1212, 178, 53, 1, 553, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '57', '04-10-2023'),
(1213, 178, 53, 1, 455, 65, 0.00, 1500, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1214, 178, 53, 1, 457, 65, 0.00, 1500, 0.00, 'UNIDAD', 0.00, '56', '04-10-2023'),
(1215, 175, 66, 1, 574, 110, 13.00, 11, 41.99, 'MTS', 461.89, '2', '04-10-2023'),
(1216, 175, 66, 1, 574, 110, 14.00, 1, 45.22, 'MTS', 45.22, '2', '04-10-2023'),
(1217, 179, 98, 1, 620, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1218, 180, 62, 1, 454, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1219, 180, 62, 1, 550, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1223, 181, 59, 1, 379, 65, 375.00, 12, 375.00, 'KG', 4500.00, '2', '05-10-2023'),
(1224, 181, 59, 1, 379, 65, 251.00, 6, 251.00, 'KG', 1506.00, '2', '05-10-2023'),
(1225, 181, 59, 1, 557, 39, 8.00, 4, 380.00, 'MTS', 1520.00, '2', '05-10-2023'),
(1226, 182, 102, 1, 793, 65, 105.00, 4, 105.00, 'KG', 420.00, '2', '05-10-2023'),
(1227, 182, 102, 1, 794, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1228, 182, 102, 1, 602, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1229, 182, 102, 1, 795, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1242, 183, 98, 1, 796, 160, 6.00, 12, 16.80, 'MTS', 201.60, '56', '05-10-2023'),
(1243, 183, 98, 1, 797, 162, 6.00, 12, 11.70, 'MTS', 140.40, '56', '05-10-2023'),
(1244, 183, 98, 1, 798, 161, 6.00, 6, 3.24, 'MTS', 19.44, '56', '05-10-2023'),
(1245, 183, 98, 1, 602, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1246, 183, 98, 1, 795, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1250, 184, 61, 1, 435, 65, 12.00, 2, 12.00, 'MTS', 24.00, '4', '05-10-2023'),
(1251, 184, 61, 1, 435, 65, 6.00, 1, 6.00, 'MTS', 6.00, '4', '05-10-2023'),
(1252, 184, 61, 1, 613, 92, 4.30, 2, 21.50, 'MTS', 43.00, '4', '05-10-2023'),
(1253, 184, 61, 1, 619, 65, 0.00, 80, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1254, 184, 61, 1, 620, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '56', '05-10-2023'),
(1255, 184, 61, 1, 532, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '4', '05-10-2023'),
(1257, 185, 42, 1, 595, 65, 531.00, 1, 531.00, 'KG', 531.00, '2', '05-10-2023'),
(1259, 185, 42, 1, 379, 65, 177.50, 2, 177.50, 'KG', 355.00, '2', '05-10-2023'),
(1260, 185, 42, 1, 571, 65, 28.00, 34, 28.00, 'KG', 952.00, '2', '05-10-2023'),
(1261, 185, 42, 1, 571, 65, 28.00, 12, 28.00, 'KG', 336.00, '2', '05-10-2023'),
(1262, 185, 42, 1, 601, 65, 76.66, 6, 76.66, 'KG', 459.96, '56', '05-10-2023'),
(1263, 186, 86, 1, 799, 65, 10.63, 40, 10.63, 'KG', 425.20, '4', '06-10-2023'),
(1264, 187, 80, 1, 800, 65, 23.00, 4, 23.00, 'KG', 92.00, '4', '06-10-2023'),
(1265, 188, 45, 1, 769, 65, 140.00, 1, 140.00, 'KG', 140.00, '56', '06-10-2023'),
(1266, 189, 98, 1, 567, 93, 5.00, 1, 24.75, 'MTS', 24.75, '4', '06-10-2023'),
(1267, 190, 62, 1, 454, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '06-10-2023'),
(1269, 191, 59, 1, 372, 130, 9.00, 4, 198.45, 'MTS', 793.80, '2', '06-10-2023'),
(1270, 191, 59, 1, 557, 39, 8.00, 8, 380.00, 'MTS', 3040.00, '2', '06-10-2023'),
(1271, 191, 59, 1, 374, 154, 8.00, 11, 250.00, 'MTS', 2750.00, '2', '06-10-2023'),
(1272, 191, 59, 1, 593, 65, 25.00, 30, 25.00, 'KG', 750.00, '4', '06-10-2023'),
(1273, 192, 103, 1, 801, 65, 6.18, 13, 6.18, 'MTS', 80.34, '56', '06-10-2023'),
(1274, 193, 66, 1, 620, 65, 0.00, 8000, 0.00, 'UNIDAD', 0.00, '56', '06-10-2023'),
(1275, 194, 104, 1, 455, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '06-10-2023'),
(1276, 194, 104, 1, 456, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '06-10-2023'),
(1284, 195, 56, 1, 447, 65, 8.52, 27, 8.52, 'KG', 230.04, '4', '09-10-2023'),
(1285, 196, 99, 1, 557, 150, 2.42, 5, 65.99, 'MTS', 329.95, '2', '09-10-2023'),
(1288, 196, 99, 1, 559, 151, 1.54, 5, 158.00, 'MTS', 790.00, '2', '09-10-2023'),
(1289, 196, 99, 1, 370, 32, 10.00, 10, 47.40, 'MTS', 474.00, '4', '09-10-2023'),
(1290, 196, 99, 1, 380, 44, 10.00, 2, 96.50, 'MTS', 193.00, '4', '09-10-2023'),
(1294, 196, 99, 1, 640, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1295, 196, 99, 1, 865, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1296, 196, 99, 1, 866, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1297, 197, 62, 1, 616, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1300, 196, 99, 1, 659, 65, 8.72, 21, 8.72, 'KG', 183.12, '4', '09-10-2023'),
(1302, 198, 62, 1, 638, 143, 1.00, 4, 1.00, 'MTS', 4.00, '4', '09-10-2023'),
(1303, 199, 64, 1, 868, 65, 0.00, 3, 0.00, 'KG', 0.00, '56', '09-10-2023'),
(1304, 199, 64, 1, 611, 65, 0.00, 5, 0.00, 'KG', 0.00, '56', '09-10-2023'),
(1305, 199, 64, 1, 867, 65, 0.00, 1, 0.00, 'KG', 0.00, '56', '09-10-2023'),
(1306, 199, 64, 1, 869, 65, 0.00, 150, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1307, 200, 42, 1, 866, 65, 0.00, 461, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1308, 200, 42, 1, 620, 65, 0.00, 12300, 0.00, 'UNIDAD', 0.00, '56', '09-10-2023'),
(1309, 200, 42, 1, 370, 32, 5.76, 84, 27.30, 'MTS', 2293.20, '4', '09-10-2023'),
(1311, 200, 42, 1, 370, 32, 5.69, 12, 26.97, 'MTS', 323.64, '4', '09-10-2023'),
(1312, 200, 42, 1, 370, 32, 4.43, 6, 21.00, 'MTS', 126.00, '4', '09-10-2023'),
(1313, 200, 42, 1, 370, 32, 4.49, 6, 21.28, 'MTS', 127.68, '4', '09-10-2023'),
(1314, 200, 42, 1, 370, 32, 3.86, 6, 18.30, 'MTS', 109.80, '4', '09-10-2023'),
(1315, 200, 42, 1, 370, 32, 5.10, 6, 24.17, 'MTS', 145.02, '4', '09-10-2023'),
(1316, 200, 42, 1, 370, 32, 5.17, 9, 24.51, 'MTS', 220.59, '4', '09-10-2023'),
(1317, 200, 42, 1, 370, 32, 11.80, 15, 55.93, 'MTS', 838.95, '4', '09-10-2023'),
(1318, 200, 42, 1, 370, 32, 8.00, 4, 37.92, 'MTS', 151.68, '4', '09-10-2023'),
(1319, 200, 42, 1, 370, 32, 4.64, 2, 21.99, 'MTS', 43.98, '4', '09-10-2023'),
(1320, 200, 42, 1, 370, 32, 5.31, 2, 25.17, 'MTS', 50.34, '4', '09-10-2023'),
(1321, 201, 45, 1, 593, 65, 0.00, 16, 0.00, 'UNIDAD', 0.00, '4', '10-10-2023'),
(1322, 202, 98, 1, 616, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '10-10-2023'),
(1323, 202, 98, 1, 615, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '10-10-2023'),
(1324, 202, 98, 1, 549, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '10-10-2023'),
(1325, 203, 44, 1, 444, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '10-10-2023'),
(1326, 203, 44, 1, 608, 165, 1.00, 26, 8.00, 'UNIDAD', 208.00, '4', '10-10-2023'),
(1327, 203, 44, 1, 608, 166, 1.00, 29, 1.00, 'UNIDAD', 29.00, '4', '10-10-2023'),
(1328, 204, 42, 1, 601, 65, 6.00, 1, 6.00, 'MTS', 6.00, '56', '10-10-2023'),
(1329, 204, 42, 1, 696, 65, 6.00, 2, 6.00, 'MTS', 12.00, '56', '10-10-2023'),
(1330, 204, 42, 1, 732, 65, 6.00, 1, 6.00, 'MTS', 6.00, '56', '10-10-2023'),
(1331, 205, 105, 1, 593, 65, 12.00, 6, 12.00, 'KG', 72.00, '4', '10-10-2023'),
(1332, 206, 105, 1, 593, 65, 37.25, 8, 37.25, 'KG', 298.00, '4', '10-10-2023'),
(1333, 207, 105, 1, 894, 65, 1.00, 5, 1.00, 'KG', 5.00, '56', '11-10-2023'),
(1334, 207, 105, 1, 895, 65, 1.00, 1, 1.00, 'UNIDAD', 1.00, '56', '11-10-2023'),
(1335, 207, 105, 1, 896, 65, 1.00, 20, 1.00, 'MTS', 20.00, '56', '11-10-2023'),
(1336, 207, 105, 1, 897, 65, 1.00, 1, 1.00, 'UNIDAD', 1.00, '56', '11-10-2023'),
(1337, 207, 105, 1, 616, 65, 1.00, 3, 1.00, 'UNIDAD', 3.00, '56', '11-10-2023'),
(1338, 207, 105, 1, 615, 65, 1.00, 5, 1.00, 'UNIDAD', 5.00, '56', '11-10-2023'),
(1339, 208, 45, 1, 898, 65, 50.00, 1, 50.00, 'MTS', 50.00, '56', '11-10-2023'),
(1340, 208, 45, 1, 901, 65, 1.00, 11, 1.00, 'MTS', 11.00, '56', '11-10-2023'),
(1341, 208, 45, 1, 900, 65, 1.00, 1, 1.00, 'UNIDAD', 1.00, '56', '11-10-2023'),
(1342, 209, 64, 1, 720, 65, 6.00, 4, 6.00, 'MTS', 24.00, '56', '11-10-2023'),
(1343, 209, 64, 1, 868, 65, 40.00, 2, 40.00, 'KG', 80.00, '56', '11-10-2023'),
(1344, 209, 45, 1, 902, 65, 10.00, 20, 10.00, 'KG', 200.00, '56', '11-10-2023'),
(1345, 209, 45, 1, 903, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '11-10-2023'),
(1346, 210, 64, 1, 527, 65, 1.00, 2, 1.00, 'UNIDAD', 2.00, '56', '11-10-2023'),
(1347, 210, 64, 1, 904, 65, 1.00, 1, 1.00, 'UNIDAD', 1.00, '56', '11-10-2023'),
(1348, 211, 106, 1, 664, 93, 1.10, 7, 5.45, 'MTS', 38.15, '4', '11-10-2023'),
(1349, 212, 107, 1, 593, 65, 60.00, 1, 60.00, 'KG', 60.00, '4', '11-10-2023'),
(1350, 213, 88, 1, 646, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '12-10-2023'),
(1351, 214, 53, 1, 646, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '12-10-2023'),
(1352, 215, 105, 1, 906, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '12-10-2023'),
(1353, 216, 95, 1, 676, 65, 5780.00, 1, 5780.00, 'KG', 5780.00, '4', '12-10-2023'),
(1354, 217, 76, 1, 607, 65, 1.00, 4, 1.00, 'UNIDAD', 4.00, '4', '12-10-2023'),
(1355, 217, 76, 1, 769, 65, 1.00, 6, 1.00, 'UNIDAD', 6.00, '56', '12-10-2023'),
(1356, 218, 64, 1, 611, 65, 50.00, 20, 50.00, 'KG', 1000.00, '56', '12-10-2023'),
(1357, 218, 64, 1, 908, 65, 1.00, 1, 1.00, 'KG', 1.00, '56', '12-10-2023'),
(1360, 219, 108, 1, 911, 121, 3.00, 6, 15.51, 'MTS', 93.06, '4', '12-10-2023'),
(1361, 219, 108, 1, 911, 121, 2.60, 4, 13.44, 'MTS', 53.76, '4', '12-10-2023'),
(1362, 220, 105, 1, 557, 169, 5.98, 8, 350.01, 'MTS', 2800.08, '2', '12-10-2023'),
(1363, 220, 105, 1, 379, 171, 18.50, 2, 792.91, 'MTS', 1585.82, '2', '12-10-2023'),
(1364, 220, 105, 1, 379, 171, 7.00, 2, 300.02, 'MTS', 600.04, '2', '12-10-2023'),
(1365, 220, 105, 1, 379, 171, 17.01, 2, 729.05, 'MTS', 1458.10, '2', '12-10-2023'),
(1366, 220, 105, 1, 379, 173, 3.30, 12, 125.00, 'MTS', 1500.00, '2', '12-10-2023'),
(1367, 220, 105, 1, 379, 170, 3.30, 4, 109.99, 'MTS', 439.96, '2', '12-10-2023'),
(1368, 220, 105, 1, 379, 174, 4.40, 6, 167.77, 'MTS', 1006.62, '2', '12-10-2023'),
(1370, 220, 105, 1, 379, 175, 4.40, 2, 154.97, 'MTS', 309.94, '2', '12-10-2023'),
(1371, 220, 105, 1, 379, 172, 3.20, 14, 29.92, 'MTS', 418.88, '2', '12-10-2023'),
(1372, 220, 105, 1, 379, 172, 4.40, 7, 41.14, 'MTS', 287.98, '2', '12-10-2023'),
(1373, 220, 105, 1, 379, 172, 3.21, 2, 30.01, 'MTS', 60.02, '2', '12-10-2023'),
(1374, 220, 105, 1, 379, 172, 7.65, 4, 71.53, 'MTS', 286.12, '2', '12-10-2023'),
(1375, 220, 105, 1, 379, 172, 7.00, 6, 65.45, 'MTS', 392.70, '2', '12-10-2023'),
(1376, 220, 105, 1, 379, 172, 3.01, 2, 28.14, 'MTS', 56.28, '2', '12-10-2023'),
(1377, 220, 105, 1, 575, 176, 5.00, 48, 4.70, 'MTS', 225.60, '2', '12-10-2023'),
(1378, 220, 105, 1, 617, 177, 1.00, 48, 1.00, 'KG', 48.00, '2', '12-10-2023'),
(1379, 220, 105, 1, 916, 65, 0.00, 48, 0.00, 'UNIDAD', 0.00, '56', '12-10-2023');
INSERT INTO `remitosclientes` (`id`, `numero`, `id_cliente`, `id_tipo_cuenta`, `producto`, `id_seccion`, `metros`, `cantidad`, `peso`, `unidad`, `pesototal`, `id_categoria`, `fecha`) VALUES
(1380, 220, 105, 1, 917, 65, 0.00, 48, 0.00, 'UNIDAD', 0.00, '56', '12-10-2023'),
(1392, 221, 105, 1, 768, 65, 1.00, 10, 1.00, 'KG', 10.00, '56', '17-10-2023'),
(1393, 221, 105, 1, 615, 65, 1.00, 3, 1.00, 'UNIDAD', 3.00, '56', '17-10-2023'),
(1394, 221, 105, 1, 616, 65, 1.00, 3, 1.00, 'UNIDAD', 3.00, '56', '17-10-2023'),
(1395, 221, 105, 1, 920, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '17-10-2023'),
(1396, 222, 105, 1, 370, 32, 2.20, 14, 10.43, 'MTS', 146.02, '4', '17-10-2023'),
(1397, 222, 105, 1, 370, 32, 2.42, 14, 11.47, 'MTS', 160.58, '4', '17-10-2023'),
(1398, 222, 105, 1, 370, 32, 7.65, 28, 36.26, 'MTS', 1015.28, '4', '17-10-2023'),
(1399, 222, 105, 1, 370, 32, 7.00, 42, 33.18, 'MTS', 1393.56, '4', '17-10-2023'),
(1401, 223, 102, 1, 793, 65, 110.00, 3, 110.00, 'KG', 330.00, '2', '17-10-2023'),
(1403, 224, 84, 1, 601, 65, 86.25, 4, 86.25, 'KG', 345.00, '56', '17-10-2023'),
(1404, 224, 84, 1, 925, 65, 30.00, 55, 30.00, 'KG', 1650.00, '4', '17-10-2023'),
(1405, 224, 84, 1, 926, 65, 30.00, 30, 30.00, 'KG', 900.00, '4', '17-10-2023'),
(1406, 224, 84, 1, 617, 65, 1.00, 100, 1.00, 'KG', 100.00, '2', '17-10-2023'),
(1407, 225, 85, 1, 923, 65, 30.00, 1, 30.00, 'KG', 30.00, '4', '17-10-2023'),
(1408, 225, 85, 1, 923, 65, 5.40, 1, 5.40, 'KG', 5.40, '4', '17-10-2023'),
(1410, 226, 100, 1, 456, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '17-10-2023'),
(1411, 227, 53, 1, 461, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1412, 227, 53, 1, 462, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1413, 228, 100, 1, 467, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1414, 228, 100, 1, 460, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '4', '18-10-2023'),
(1415, 228, 100, 1, 792, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1416, 229, 45, 1, 927, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1417, 229, 45, 1, 930, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1418, 229, 45, 1, 931, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1419, 230, 45, 1, 455, 65, 0.00, 2000, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1420, 230, 45, 1, 681, 65, 0.00, 15, 0.00, 'UNIDAD', 0.00, '4', '18-10-2023'),
(1421, 230, 45, 1, 682, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '4', '18-10-2023'),
(1422, 230, 45, 1, 462, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1423, 231, 53, 1, 611, 65, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1424, 231, 53, 1, 932, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1425, 231, 53, 1, 934, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1426, 231, 53, 1, 933, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1427, 232, 45, 1, 935, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1428, 232, 45, 1, 455, 65, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1429, 232, 45, 1, 646, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1430, 233, 53, 1, 936, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1431, 233, 53, 1, 937, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1432, 233, 53, 1, 938, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1433, 233, 53, 1, 939, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '18-10-2023'),
(1434, 234, 105, 1, 768, 65, 1.00, 10, 1.00, 'KG', 10.00, '56', '19-10-2023'),
(1435, 235, 105, 1, 940, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '20-10-2023'),
(1436, 235, 105, 1, 784, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '20-10-2023'),
(1437, 235, 105, 1, 942, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '20-10-2023'),
(1438, 235, 105, 1, 619, 65, 0.00, 15, 0.00, 'UNIDAD', 0.00, '56', '20-10-2023'),
(1439, 235, 105, 1, 768, 65, 1.00, 5, 1.00, 'KG', 5.00, '56', '20-10-2023'),
(1440, 236, 109, 1, 943, 82, 3.00, 4, 8.43, 'MTS', 33.72, '4', '20-10-2023'),
(1441, 236, 109, 1, 613, 181, 4.00, 6, 19.84, 'MTS', 119.04, '4', '20-10-2023'),
(1442, 237, 110, 1, 664, 92, 4.33, 3, 21.65, 'MTS', 64.95, '4', '20-10-2023'),
(1445, 238, 0, 1, 567, 138, 8.50, 50, 41.82, 'KG', 2091.00, '4', '21-10-2023'),
(1446, 239, 93, 1, 567, 138, 8.50, 50, 41.82, 'KG', 2091.00, '4', '21-10-2023'),
(1447, 240, 93, 1, 370, 65, 64.38, 100, 64.38, 'KG', 6438.00, '4', '21-10-2023'),
(1448, 241, 53, 1, 682, 65, 6.15, 19, 6.15, 'MTS', 116.85, '4', '24-10-2023'),
(1449, 241, 53, 1, 681, 65, 6.15, 45, 6.15, 'MTS', 276.75, '4', '24-10-2023'),
(1450, 241, 53, 1, 620, 65, 0.00, 250, 0.00, 'UNIDAD', 0.00, '56', '24-10-2023'),
(1452, 241, 53, 1, 944, 65, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '24-10-2023'),
(1453, 241, 53, 1, 456, 65, 0.00, 3000, 0.00, 'UNIDAD', 0.00, '56', '24-10-2023'),
(1454, 241, 53, 1, 460, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '4', '24-10-2023'),
(1455, 241, 53, 1, 526, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '24-10-2023'),
(1456, 241, 53, 1, 615, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '24-10-2023'),
(1457, 242, 116, 1, 664, 63, 5.50, 9, 27.06, 'MTS', 243.54, '4', '24-10-2023'),
(1458, 242, 116, 1, 664, 63, 3.50, 10, 17.22, 'MTS', 172.20, '4', '24-10-2023'),
(1459, 242, 116, 1, 664, 63, 6.50, 3, 31.98, 'MTS', 95.94, '4', '24-10-2023'),
(1460, 242, 116, 1, 613, 91, 3.50, 2, 16.21, 'MTS', 32.42, '4', '24-10-2023'),
(1461, 242, 116, 1, 613, 91, 4.50, 1, 20.84, 'MTS', 20.84, '4', '24-10-2023'),
(1464, 243, 70, 1, 557, 187, 6.40, 9, 191.10, 'MTS', 1719.90, '2', '25-10-2023'),
(1465, 243, 70, 1, 380, 44, 6.30, 8, 60.80, 'MTS', 486.40, '4', '25-10-2023'),
(1466, 244, 45, 1, 673, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '25-10-2023'),
(1467, 244, 45, 1, 923, 65, 1.00, 30, 1.00, 'KG', 30.00, '4', '25-10-2023'),
(1468, 244, 45, 1, 923, 65, 8.00, 15, 8.00, 'KG', 120.00, '4', '25-10-2023'),
(1469, 245, 113, 1, 664, 92, 4.00, 9, 20.00, 'MTS', 180.00, '4', '25-10-2023'),
(1470, 246, 45, 1, 466, 65, 0.00, 7, 0.00, 'UNIDAD', 0.00, '4', '25-10-2023'),
(1471, 246, 45, 1, 464, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '4', '25-10-2023'),
(1472, 246, 45, 1, 949, 65, 0.00, 9, 0.00, 'UNIDAD', 0.00, '56', '25-10-2023'),
(1473, 246, 45, 1, 463, 65, 0.00, 15, 0.00, 'UNIDAD', 0.00, '4', '25-10-2023'),
(1474, 247, 114, 1, 613, 92, 4.80, 6, 24.00, 'MTS', 144.00, '4', '25-10-2023'),
(1475, 247, 114, 1, 619, 65, 0.00, 150, 0.00, 'UNIDAD', 0.00, '56', '25-10-2023'),
(1476, 247, 114, 1, 550, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '25-10-2023'),
(1477, 248, 115, 1, 613, 188, 6.50, 16, 33.87, 'MTS', 541.92, '4', '25-10-2023'),
(1484, 248, 115, 1, 435, 65, 5300.00, 1, 5300.00, 'KG', 5300.00, '4', '25-10-2023'),
(1489, 249, 66, 1, 866, 191, 0.00, 220, 0.00, 'UNIDAD', 0.00, '56', '25-10-2023'),
(1490, 250, 105, 1, 617, 65, 0.00, 48, 0.00, 'UNIDAD', 0.00, '2', '26-10-2023'),
(1491, 251, 116, 1, 465, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '4', '26-10-2023'),
(1492, 251, 116, 1, 460, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '4', '26-10-2023'),
(1493, 252, 105, 1, 616, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '26-10-2023'),
(1494, 252, 105, 1, 615, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '26-10-2023'),
(1495, 252, 105, 1, 950, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '26-10-2023'),
(1501, 253, 44, 1, 394, 65, 1421.00, 1, 1421.00, 'KG', 1421.00, '4', '26-10-2023'),
(1502, 253, 44, 1, 793, 65, 98.00, 4, 98.00, 'KG', 392.00, '2', '26-10-2023'),
(1504, 253, 44, 1, 793, 65, 92.00, 12, 92.00, 'KG', 1104.00, '2', '26-10-2023'),
(1505, 253, 44, 1, 794, 65, 0.00, 32, 0.00, 'UNIDAD', 0.00, '56', '26-10-2023'),
(1506, 254, 66, 1, 732, 65, 6.00, 9, 6.00, 'MTS', 54.00, '56', '26-10-2023'),
(1507, 255, 117, 1, 664, 181, 2.00, 4, 9.92, 'MTS', 39.68, '4', '26-10-2023'),
(1509, 256, 118, 1, 664, 92, 4.00, 5, 20.00, 'MTS', 100.00, '4', '26-10-2023'),
(1510, 256, 118, 1, 664, 92, 5.00, 4, 25.00, 'MTS', 100.00, '4', '26-10-2023'),
(1511, 256, 118, 1, 943, 82, 12.00, 5, 33.72, 'MTS', 168.60, '4', '26-10-2023'),
(1512, 257, 119, 1, 393, 64, 12.00, 1, 14.76, 'MTS', 14.76, '4', '26-10-2023'),
(1515, 258, 121, 1, 664, 196, 2.00, 4, 9.94, 'MTS', 39.76, '4', '26-10-2023'),
(1516, 259, 122, 1, 664, 92, 4.30, 19, 21.50, 'MTS', 408.50, '4', '26-10-2023'),
(1517, 259, 122, 1, 664, 92, 1.92, 33, 9.60, 'MTS', 316.80, '4', '26-10-2023'),
(1518, 259, 122, 1, 619, 65, 0.00, 700, 0.00, 'UNIDAD', 0.00, '56', '26-10-2023'),
(1519, 259, 122, 1, 620, 65, 0.00, 200, 0.00, 'UNIDAD', 0.00, '56', '26-10-2023'),
(1522, 260, 62, 1, 601, 65, 18.00, 7, 18.00, 'KG', 126.00, '56', '27-10-2023'),
(1523, 260, 62, 1, 951, 65, 129.00, 1, 129.00, 'KG', 129.00, '4', '27-10-2023'),
(1526, 261, 53, 1, 681, 146, 6.15, 40, 10.46, 'MTS', 418.40, '4', '27-10-2023'),
(1527, 261, 53, 1, 682, 146, 6.15, 20, 10.46, 'MTS', 209.20, '4', '27-10-2023'),
(1528, 261, 53, 1, 464, 65, 0.00, 18, 0.00, 'PAQUETE', 0.00, '4', '27-10-2023'),
(1529, 261, 53, 1, 466, 65, 0.00, 12, 0.00, 'PAQUETE', 0.00, '4', '27-10-2023'),
(1530, 261, 53, 1, 457, 65, 0.00, 3000, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1531, 261, 53, 1, 456, 65, 0.00, 5000, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1532, 261, 53, 1, 455, 65, 0.00, 1000, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1533, 261, 53, 1, 952, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1534, 261, 53, 1, 580, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1535, 261, 53, 1, 792, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1536, 261, 53, 1, 553, 65, 0.00, 120, 0.00, 'UNIDAD', 0.00, '57', '27-10-2023'),
(1537, 262, 120, 1, 732, 65, 6.00, 35, 6.00, 'MTS', 210.00, '56', '27-10-2023'),
(1538, 263, 111, 1, 379, 155, 10.00, 27, 251.00, 'MTS', 6777.00, '2', '27-10-2023'),
(1539, 264, 84, 1, 380, 46, 2.00, 15, 46.80, 'MTS', 702.00, '4', '27-10-2023'),
(1540, 265, 93, 1, 954, 65, 670.00, 1, 670.00, 'KG', 670.00, '56', '27-10-2023'),
(1541, 265, 93, 1, 953, 65, 700.00, 1, 700.00, 'KG', 700.00, '56', '27-10-2023'),
(1542, 266, 98, 1, 917, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1543, 266, 98, 1, 474, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1544, 266, 98, 1, 784, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1545, 266, 98, 1, 795, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1546, 266, 98, 1, 955, 65, 0.00, 1, 0.00, 'LTS', 0.00, '56', '27-10-2023'),
(1548, 266, 98, 1, 956, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1549, 267, 125, 1, 613, 92, 6.00, 3, 30.00, 'MTS', 90.00, '4', '27-10-2023'),
(1550, 268, 126, 1, 465, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '4', '27-10-2023'),
(1551, 268, 126, 1, 467, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1552, 268, 126, 1, 792, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1553, 268, 126, 1, 957, 65, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1555, 268, 126, 1, 580, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1556, 269, 84, 1, 793, 65, 105.00, 18, 105.00, 'KG', 1890.00, '2', '27-10-2023'),
(1557, 0, 84, 1, 560, 65, 107.50, 2, 107.50, 'KG', 215.00, '2', '27-10-2023'),
(1559, 270, 140, 1, 958, 65, 8355.00, 1, 8355.00, 'KG', 8355.00, '56', '27-10-2023'),
(1560, 270, 140, 1, 958, 65, 8500.00, 1, 8500.00, 'KG', 8500.00, '56', '27-10-2023'),
(1561, 270, 140, 1, 958, 65, 8500.00, 1, 8500.00, 'KG', 8500.00, '56', '27-10-2023'),
(1562, 270, 140, 1, 958, 65, 8235.00, 1, 8235.00, 'KG', 8235.00, '56', '27-10-2023'),
(1563, 268, 126, 1, 960, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '27-10-2023'),
(1564, 268, 126, 1, 463, 65, 0.00, 3, 0.00, 'PAQUETE', 0.00, '4', '27-10-2023'),
(1565, 268, 126, 1, 463, 65, 0.00, 7, 0.00, 'UNIDAD', 0.00, '4', '27-10-2023'),
(1566, 271, 93, 1, 370, 65, 7746.00, 0, 7746.00, 'KG', 0.00, '4', '28-10-2023'),
(1574, 272, 93, 1, 560, 65, 107.50, 2, 107.50, 'KG', 215.00, '2', '28-10-2023'),
(1575, 272, 93, 1, 370, 65, 64.55, 120, 64.55, 'KG', 7746.00, '4', '28-10-2023'),
(1576, 273, 98, 1, 616, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '30-10-2023'),
(1577, 273, 98, 1, 549, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '56', '30-10-2023'),
(1578, 274, 98, 1, 636, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '30-10-2023'),
(1579, 275, 44, 1, 526, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '30-10-2023'),
(1580, 275, 44, 1, 673, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '30-10-2023'),
(1581, 276, 105, 1, 589, 31, 7.00, 14, 26.81, 'MTS', 375.34, '4', '30-10-2023'),
(1582, 276, 105, 1, 589, 31, 3.15, 14, 12.06, 'MTS', 168.84, '4', '30-10-2023'),
(1583, 276, 105, 1, 589, 31, 2.95, 14, 11.30, 'MTS', 158.20, '4', '30-10-2023'),
(1585, 276, 105, 1, 589, 31, 7.65, 28, 29.30, 'MTS', 820.40, '4', '30-10-2023'),
(1586, 276, 105, 1, 589, 31, 7.00, 28, 26.81, 'MTS', 750.68, '4', '30-10-2023'),
(1587, 276, 105, 1, 961, 201, 7.00, 6, 90.02, 'MTS', 540.12, '4', '30-10-2023'),
(1589, 276, 105, 1, 961, 201, 7.60, 2, 97.74, 'MTS', 195.48, '4', '30-10-2023'),
(1590, 276, 105, 1, 961, 202, 7.00, 6, 59.99, 'MTS', 359.94, '4', '30-10-2023'),
(1591, 276, 105, 1, 961, 202, 3.00, 4, 25.71, 'MTS', 102.84, '4', '30-10-2023'),
(1592, 276, 105, 1, 961, 201, 3.00, 4, 38.58, 'MTS', 154.32, '4', '30-10-2023'),
(1594, 276, 105, 1, 721, 203, 0.40, 84, 0.69, 'MTS', 57.96, '56', '30-10-2023'),
(1595, 277, 127, 1, 664, 92, 4.00, 2, 20.00, 'MTS', 40.00, '4', '30-10-2023'),
(1596, 277, 127, 1, 664, 92, 3.60, 6, 18.00, 'MTS', 108.00, '4', '30-10-2023'),
(1597, 278, 93, 1, 560, 65, 107.50, 1, 107.50, 'MTS', 107.50, '2', '30-10-2023'),
(1598, 279, 66, 1, 569, 95, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '30-10-2023'),
(1601, 280, 105, 1, 380, 65, 420.00, 1, 420.00, 'KG', 420.00, '4', '31-10-2023'),
(1602, 280, 105, 1, 926, 65, 570.00, 1, 570.00, 'KG', 570.00, '4', '31-10-2023'),
(1603, 281, 105, 1, 768, 65, 1.00, 10, 1.00, 'KG', 10.00, '56', '31-10-2023'),
(1605, 282, 66, 4, 447, 143, 36.00, 1, 36.00, 'KG', 36.00, '4', '31-10-2023'),
(1608, 283, 42, 4, 447, 143, 1.00, 104, 1.00, 'KG', 104.00, '4', '31-10-2023'),
(1610, 284, 53, 4, 467, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '31-10-2023'),
(1611, 284, 53, 4, 952, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '31-10-2023'),
(1613, 284, 53, 4, 962, 65, 0.00, 28, 0.00, 'UNIDAD', 0.00, '56', '31-10-2023'),
(1614, 284, 53, 4, 611, 65, 0.00, 32, 0.00, 'UNIDAD', 0.00, '56', '31-10-2023'),
(1615, 284, 53, 4, 610, 65, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '31-10-2023'),
(1618, 285, 129, 6, 371, 33, 2.60, 2, 12.27, 'MTS', 24.54, '4', '31-10-2023'),
(1619, 286, 128, 4, 380, 44, 5.55, 14, 53.56, 'MTS', 749.84, '4', '31-10-2023'),
(1620, 286, 128, 4, 963, 65, 6.00, 26, 6.00, 'MTS', 156.00, '56', '31-10-2023'),
(1621, 287, 105, 4, 614, 140, 0.00, 6, 0.00, 'UNIDAD', 0.00, '4', '31-10-2023'),
(1622, 288, 66, 4, 611, 65, 50.00, 36, 50.00, 'KG', 1800.00, '56', '01-11-2023'),
(1624, 288, 66, 4, 612, 65, 25.00, 57, 25.00, 'KG', 1425.00, '56', '01-11-2023'),
(1625, 289, 45, 4, 464, 65, 0.00, 8, 0.00, 'PAQUETE', 0.00, '4', '01-11-2023'),
(1626, 289, 45, 4, 466, 65, 0.00, 3, 0.00, 'PAQUETE', 0.00, '4', '01-11-2023'),
(1629, 290, 131, 4, 593, 95, 30.00, 24, 30.00, 'KG', 720.00, '4', '01-11-2023'),
(1630, 291, 67, 4, 967, 65, 80.00, 17, 80.00, 'KG', 1360.00, '56', '01-11-2023'),
(1634, 292, 53, 4, 964, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '01-11-2023'),
(1635, 292, 53, 4, 965, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '01-11-2023'),
(1636, 292, 53, 4, 966, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '01-11-2023'),
(1637, 292, 53, 4, 968, 95, 4.00, 1, 4.00, 'MTS', 4.00, '56', '01-11-2023'),
(1638, 293, 42, 4, 567, 140, 56.20, 50, 56.20, 'KG', 2810.00, '4', '01-11-2023'),
(1641, 293, 42, 4, 394, 204, 2.05, 250, 10.68, 'MTS', 2670.00, '4', '01-11-2023'),
(1643, 293, 42, 4, 575, 95, 8.00, 4, 8.00, 'MTS', 32.00, '2', '01-11-2023'),
(1644, 294, 66, 4, 394, 140, 47.00, 48, 47.00, 'KG', 2256.00, '4', '01-11-2023'),
(1647, 295, 45, 4, 923, 95, 8.00, 27, 8.00, 'KG', 216.00, '4', '01-11-2023'),
(1649, 295, 45, 4, 923, 95, 1.00, 53, 1.00, 'KG', 53.00, '4', '01-11-2023'),
(1651, 295, 45, 4, 961, 95, 151.00, 4, 151.00, 'KG', 604.00, '4', '01-11-2023'),
(1652, 296, 44, 4, 969, 95, 0.00, 26, 0.00, 'UNIDAD', 0.00, '56', '01-11-2023'),
(1653, 297, 45, 4, 442, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '4', '01-11-2023'),
(1654, 298, 44, 4, 593, 129, 0.00, 1, 0.00, 'UNIDAD', 0.00, '4', '01-11-2023'),
(1656, 299, 132, 8, 868, 95, 50.00, 15, 50.00, 'KG', 750.00, '56', '01-11-2023'),
(1657, 300, 130, 7, 664, 92, 6.00, 8, 30.00, 'MTS', 240.00, '4', '01-11-2023'),
(1658, 301, 133, 4, 869, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '01-11-2023'),
(1659, 301, 133, 4, 611, 65, 50.00, 18, 50.00, 'KG', 900.00, '56', '01-11-2023'),
(1660, 301, 133, 4, 970, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '57', '01-11-2023'),
(1661, 302, 134, 4, 374, 65, 410.00, 1, 410.00, 'KG', 410.00, '2', '01-11-2023'),
(1662, 302, 134, 4, 379, 65, 1684.00, 1, 1684.00, 'KG', 1684.00, '2', '01-11-2023'),
(1663, 302, 134, 4, 370, 65, 535.00, 1, 535.00, 'KG', 535.00, '4', '01-11-2023'),
(1664, 302, 134, 4, 593, 65, 3.00, 8, 3.00, 'KG', 24.00, '4', '01-11-2023'),
(1665, 302, 134, 4, 971, 65, 0.00, 32, 0.00, 'UNIDAD', 0.00, '56', '01-11-2023'),
(1667, 303, 56, 4, 583, 65, 85.00, 2, 85.00, 'KG', 170.00, '2', '02-11-2023'),
(1668, 303, 56, 4, 583, 65, 68.00, 4, 68.00, 'KG', 272.00, '2', '02-11-2023'),
(1669, 303, 56, 4, 380, 65, 22.50, 4, 22.50, 'KG', 90.00, '4', '02-11-2023'),
(1670, 303, 56, 4, 794, 65, 0.00, 4, 0.00, 'KG', 0.00, '56', '02-11-2023'),
(1671, 303, 56, 4, 972, 65, 3.00, 4, 3.00, 'KG', 12.00, '4', '02-11-2023'),
(1674, 303, 56, 4, 601, 65, 13.00, 4, 13.00, 'KG', 52.00, '56', '02-11-2023'),
(1675, 303, 56, 4, 664, 204, 5.15, 5, 26.83, 'MTS', 134.15, '4', '02-11-2023'),
(1677, 303, 56, 4, 664, 204, 3.00, 7, 15.63, 'MTS', 109.41, '4', '02-11-2023'),
(1678, 303, 56, 4, 664, 204, 2.65, 7, 13.81, 'MTS', 96.67, '4', '02-11-2023'),
(1680, 304, 45, 4, 673, 65, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '02-11-2023'),
(1682, 305, 136, 2, 392, 211, 13.50, 1, 13.50, 'MTS', 13.50, '4', '02-11-2023'),
(1684, 306, 45, 4, 553, 65, 0.00, 120, 0.00, 'UNIDAD', 0.00, '57', '03-11-2023'),
(1685, 306, 45, 4, 962, 65, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1686, 306, 45, 4, 973, 65, 0.00, 3000, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1687, 306, 45, 4, 460, 65, 0.00, 75, 0.00, 'UNIDAD', 0.00, '4', '03-11-2023'),
(1688, 307, 45, 4, 975, 65, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1689, 308, 105, 4, 615, 65, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1690, 308, 105, 4, 616, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1691, 308, 105, 4, 768, 65, 1.00, 5, 1.00, 'KG', 5.00, '56', '03-11-2023'),
(1692, 309, 134, 4, 637, 65, 0.50, 30, 0.50, 'KG', 15.00, '4', '03-11-2023'),
(1693, 309, 134, 4, 946, 65, 0.50, 70, 0.50, 'KG', 35.00, '56', '03-11-2023'),
(1694, 309, 134, 4, 866, 65, 0.00, 220, 0.00, 'KG', 0.00, '56', '03-11-2023'),
(1696, 310, 133, 4, 977, 65, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1697, 310, 133, 4, 976, 65, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '03-11-2023'),
(1698, 311, 132, 8, 978, 65, 12.00, 40, 12.00, 'MTS', 480.00, '56', '03-11-2023'),
(1699, 311, 132, 8, 979, 65, 6.00, 10, 6.00, 'MTS', 60.00, '56', '03-11-2023'),
(1701, 312, 59, 6, 593, 129, 0.22, 63, 22.11, 'MTS2', 1392.93, '4', '04-11-2023'),
(1705, 313, 93, 6, 370, 65, 64.75, 160, 64.75, 'KG', 10360.00, '4', '04-11-2023'),
(1706, 313, 93, 6, 370, 140, 637.00, 1, 637.00, 'KG', 637.00, '4', '04-11-2023'),
(1707, 314, 84, 6, 980, 65, 65.30, 7, 65.30, 'KG', 457.10, '4', '04-11-2023'),
(1708, 314, 84, 6, 575, 65, 6.72, 35, 6.72, 'KG', 235.20, '2', '04-11-2023'),
(1710, 314, 84, 6, 602, 65, 0.00, 17, 0.00, 'UNIDAD', 0.00, '56', '04-11-2023'),
(1711, 314, 84, 6, 795, 65, 0.00, 16, 0.00, 'UNIDAD', 0.00, '56', '04-11-2023'),
(1712, 315, 93, 8, 567, 65, 42.10, 162, 42.10, 'KG', 6820.20, '4', '04-11-2023'),
(1713, 316, 138, 2, 435, 67, 12.00, 5, 42.60, 'MTS', 213.00, '4', '04-11-2023'),
(1714, 316, 138, 2, 435, 67, 10.00, 7, 35.50, 'MTS', 248.50, '4', '04-11-2023'),
(1715, 316, 138, 2, 589, 31, 10.00, 6, 38.30, 'MTS', 229.80, '4', '04-11-2023'),
(1716, 316, 138, 2, 664, 63, 6.20, 10, 30.50, 'MTS', 305.00, '4', '04-11-2023'),
(1717, 316, 138, 2, 943, 65, 10.00, 2, 10.00, 'MTS', 20.00, '4', '04-11-2023'),
(1718, 316, 138, 2, 870, 65, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '04-11-2023'),
(1719, 316, 138, 2, 619, 65, 0.00, 300, 0.00, 'UNIDAD', 0.00, '56', '04-11-2023'),
(1720, 316, 138, 2, 620, 65, 0.00, 60, 0.00, 'UNIDAD', 0.00, '56', '04-11-2023'),
(1724, 317, 98, 4, 567, 190, 11.30, 2, 55.94, 'MTS', 111.88, '4', '06-11-2023'),
(1725, 317, 98, 4, 567, 190, 5.50, 1, 27.23, 'MTS', 27.23, '4', '06-11-2023'),
(1726, 318, 139, 4, 638, 95, 28.00, 1, 28.00, 'KG', 28.00, '4', '06-11-2023'),
(1728, 319, 139, 4, 444, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '06-11-2023'),
(1729, 319, 139, 4, 981, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '06-11-2023'),
(1730, 320, 98, 4, 799, 190, 2.44, 25, 12.08, 'MTS', 302.00, '4', '06-11-2023'),
(1731, 320, 98, 4, 982, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '06-11-2023'),
(1733, 321, 140, 9, 983, 95, 6745.00, 1, 6745.00, 'KG', 6745.00, '56', '06-11-2023'),
(1734, 321, 140, 9, 983, 95, 6860.00, 1, 6860.00, 'KG', 6860.00, '56', '06-11-2023'),
(1735, 321, 140, 9, 983, 95, 6801.00, 1, 6801.00, 'KG', 6801.00, '56', '06-11-2023'),
(1736, 321, 140, 9, 983, 95, 6750.00, 1, 6750.00, 'KG', 6750.00, '56', '06-11-2023'),
(1737, 322, 140, 6, 984, 95, 460.00, 1, 460.00, 'KG', 460.00, '56', '06-11-2023'),
(1739, 323, 45, 4, 982, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '06-11-2023'),
(1740, 324, 134, 4, 865, 95, 0.00, 16, 0.00, 'UNIDAD', 0.00, '56', '06-11-2023'),
(1741, 325, 105, 4, 613, 92, 0.85, 112, 4.25, 'MTS', 476.00, '4', '07-11-2023'),
(1742, 325, 105, 4, 613, 92, 4.65, 82, 23.25, 'MTS', 1906.50, '4', '07-11-2023'),
(1743, 325, 105, 4, 619, 65, 0.00, 1950, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1744, 326, 141, 6, 664, 92, 12.00, 10, 60.00, 'MTS', 600.00, '4', '07-11-2023'),
(1745, 326, 141, 6, 371, 65, 55.60, 15, 55.60, 'KG', 834.00, '4', '07-11-2023'),
(1746, 326, 141, 6, 664, 92, 12.00, 10, 60.00, 'MTS', 600.00, '4', '07-11-2023'),
(1749, 327, 42, 4, 613, 190, 10.60, 15, 52.47, 'MTS', 787.05, '4', '07-11-2023'),
(1750, 327, 42, 4, 370, 140, 312.00, 0, 312.00, 'KG', 0.00, '4', '07-11-2023'),
(1751, 328, 105, 4, 985, 65, 829.00, 1, 829.00, 'KG', 829.00, '2', '07-11-2023'),
(1753, 329, 105, 4, 454, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1754, 330, 133, 4, 869, 95, 0.00, 90, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1755, 331, 53, 4, 986, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1756, 331, 53, 4, 987, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1757, 331, 53, 4, 988, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1758, 331, 53, 4, 989, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1759, 331, 53, 4, 990, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1760, 331, 53, 4, 991, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1761, 331, 53, 4, 992, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1762, 332, 133, 4, 869, 65, 0.00, 82, 0.00, 'UNIDAD', 0.00, '56', '07-11-2023'),
(1763, 333, 137, 7, 664, 92, 4.33, 8, 21.65, 'MTS', 173.20, '4', '07-11-2023'),
(1764, 333, 137, 7, 589, 31, 4.30, 2, 16.47, 'MTS', 32.94, '4', '07-11-2023'),
(1765, 333, 137, 7, 589, 31, 7.50, 4, 28.73, 'MTS', 114.92, '4', '07-11-2023'),
(1766, 334, 133, 4, 868, 95, 50.00, 5, 50.00, 'KG', 250.00, '56', '07-11-2023'),
(1767, 335, 98, 4, 655, 65, 4.00, 5, 4.00, 'KG', 20.00, '4', '07-11-2023'),
(1768, 336, 105, 4, 474, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1769, 337, 53, 4, 624, 133, 6.00, 55, 12.60, 'MTS', 693.00, '4', '08-11-2023'),
(1770, 337, 53, 4, 625, 134, 6.00, 12, 7.20, 'MTS', 86.40, '4', '08-11-2023'),
(1771, 337, 53, 4, 450, 95, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1773, 337, 53, 4, 1028, 95, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1774, 337, 53, 4, 1029, 95, 0.00, 50, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1775, 337, 53, 4, 1030, 95, 0.00, 250, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1776, 337, 53, 4, 1031, 95, 0.00, 43, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1777, 337, 53, 4, 370, 32, 12.00, 2, 56.88, 'MTS', 113.76, '4', '08-11-2023'),
(1778, 337, 53, 4, 380, 44, 1.20, 2, 11.58, 'MTS', 23.16, '4', '08-11-2023'),
(1779, 337, 53, 4, 944, 95, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1780, 337, 53, 4, 1032, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1781, 337, 53, 4, 1033, 95, 0.00, 500, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1782, 338, 134, 4, 1034, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '2', '08-11-2023'),
(1783, 338, 134, 4, 963, 95, 6.00, 1, 6.00, 'MTS', 6.00, '56', '08-11-2023'),
(1784, 339, 45, 4, 526, 95, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1785, 340, 53, 4, 618, 95, 0.00, 22, 0.00, 'UNIDAD', 0.00, '57', '08-11-2023'),
(1786, 340, 53, 4, 449, 95, 0.00, 33, 0.00, 'UNIDAD', 0.00, '57', '08-11-2023'),
(1787, 340, 53, 4, 1022, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1788, 340, 53, 4, 464, 95, 0.00, 10, 0.00, 'PAQUETE', 0.00, '4', '08-11-2023'),
(1789, 340, 53, 4, 466, 95, 0.00, 10, 0.00, 'PAQUETE', 0.00, '4', '08-11-2023'),
(1790, 340, 53, 4, 463, 95, 0.00, 5, 0.00, 'PAQUETE', 0.00, '4', '08-11-2023'),
(1791, 340, 53, 4, 465, 95, 0.00, 4, 0.00, 'PAQUETE', 0.00, '4', '08-11-2023'),
(1792, 340, 53, 4, 1035, 95, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1793, 340, 53, 4, 1036, 95, 0.00, 42, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1794, 340, 53, 4, 1027, 95, 0.00, 120, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1795, 340, 53, 4, 611, 95, 0.00, 5, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1796, 341, 45, 4, 961, 65, 0.00, 3, 0.00, 'UNIDAD', 0.00, '4', '08-11-2023'),
(1800, 342, 53, 4, 1038, 65, 0.00, 100, 0.00, 'UNIDAD', 0.00, '56', '08-11-2023'),
(1801, 342, 53, 4, 1037, 65, 0.00, 10, 0.00, 'KG', 0.00, '4', '08-11-2023'),
(1802, 343, 139, 4, 799, 95, 16.00, 3, 16.00, 'MTS', 48.00, '4', '09-11-2023'),
(1803, 344, 59, 6, 595, 65, 250.00, 30, 250.00, 'KG', 7500.00, '2', '09-11-2023'),
(1804, 345, 84, 6, 696, 65, 14.50, 4, 14.50, 'KG', 58.00, '56', '09-11-2023'),
(1806, 345, 84, 6, 943, 82, 12.00, 4, 33.72, 'MTS', 134.88, '4', '09-11-2023'),
(1807, 345, 0, 6, 943, 65, 6.00, 1, 6.00, 'KG', 6.00, '4', '09-11-2023'),
(1809, 345, 84, 6, 794, 65, 0.30, 52, 0.30, 'KG', 15.60, '56', '09-11-2023'),
(1810, 345, 84, 6, 602, 65, 1.00, 16, 1.00, 'KG', 16.00, '56', '09-11-2023'),
(1811, 345, 84, 6, 795, 65, 1.00, 16, 1.00, 'KG', 16.00, '56', '09-11-2023'),
(1812, 346, 93, 4, 648, 121, 2.44, 10, 12.61, 'MTS', 126.10, '4', '09-11-2023'),
(1813, 347, 138, 5, 435, 67, 10.00, 7, 35.50, 'MTS', 248.50, '4', '09-11-2023'),
(1814, 348, 142, 4, 993, 95, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1815, 348, 142, 4, 994, 95, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1816, 348, 142, 4, 995, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1817, 348, 142, 4, 996, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1818, 348, 142, 4, 997, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1819, 348, 142, 4, 998, 95, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1820, 348, 142, 4, 999, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1821, 348, 142, 4, 1000, 95, 0.00, 60, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1822, 348, 142, 4, 1001, 95, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1823, 348, 142, 4, 1002, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1824, 348, 142, 4, 1003, 95, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1825, 348, 142, 4, 1004, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1826, 348, 142, 4, 1005, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1827, 348, 142, 4, 1006, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1828, 348, 142, 4, 1007, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1829, 348, 142, 4, 1008, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1830, 348, 142, 4, 1009, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1831, 348, 142, 4, 1010, 95, 0.00, 11, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1832, 348, 142, 4, 1011, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1833, 348, 142, 4, 1012, 95, 0.00, 7, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1834, 348, 142, 4, 1013, 95, 0.00, 10, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1835, 348, 142, 4, 1014, 95, 0.00, 20, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1836, 348, 142, 4, 1015, 95, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1837, 348, 142, 4, 1016, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1838, 348, 142, 4, 1017, 95, 0.00, 12, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1839, 348, 142, 4, 1018, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1840, 348, 142, 4, 1019, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1841, 348, 142, 4, 1020, 95, 0.00, 8, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1842, 348, 142, 4, 1021, 95, 0.00, 2, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1843, 348, 142, 4, 993, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1844, 348, 142, 4, 611, 95, 0.00, 1, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1845, 348, 142, 4, 1026, 95, 0.00, 4, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023'),
(1846, 349, 143, 6, 641, 95, 0.00, 6, 0.00, 'UNIDAD', 0.00, '56', '09-11-2023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remitosclientestmp`
--

CREATE TABLE `remitosclientestmp` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_tipo_cuenta` int(11) NOT NULL,
  `producto` int(10) NOT NULL,
  `id_seccion` int(10) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL,
  `cantidad` int(10) DEFAULT NULL,
  `peso` decimal(10,2) DEFAULT NULL,
  `unidad` varchar(20) DEFAULT NULL,
  `pesototal` decimal(10,2) DEFAULT NULL,
  `id_categoria` varchar(20) NOT NULL,
  `fecha` varchar(15) NOT NULL
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
(2, 'INGENIERO'),
(3, 'OPERADOR'),
(4, 'ADMINISTRACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida_mp`
--

CREATE TABLE `salida_mp` (
  `smp_id` int(11) NOT NULL,
  `smp_codigo` text NOT NULL,
  `smp_producto` text NOT NULL,
  `smp_cantidad` decimal(10,2) NOT NULL,
  `smp_peso` decimal(10,2) NOT NULL,
  `smp_destino` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `salida_mp`
--

INSERT INTO `salida_mp` (`smp_id`, `smp_codigo`, `smp_producto`, `smp_cantidad`, `smp_peso`, `smp_destino`, `fecha`) VALUES
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 10.00, '457', '2023-10-26 03:00:00'),
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 10.00, '799', '2023-10-26 03:00:00'),
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 10.00, '655', '2023-10-26 03:00:00'),
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 10.00, '457', '2023-10-26 03:00:00'),
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 10.00, '799', '2023-10-26 03:00:00'),
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 10.00, '655', '2023-10-26 03:00:00'),
(382, '', 'CHAPA 6.4 X 10mts', 0.50, 188.00, '666', '2023-10-26 03:00:00'),
(396, '', 'BOBINA GALVANIZADA 0.30 X 1000', 0.00, 96.87, '666', '2023-10-26 03:00:00'),
(384, '', 'CHAPA 4.8 X 8mts', 1.00, 9100.00, '523', '2023-10-26 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 0.00, 1000.00, '666', '2023-10-26 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 1.00, 1000.00, '666', '2023-10-26 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 1.00, 1000.00, '666', '2023-10-26 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 1.00, 0.00, '666', '2023-10-26 03:00:00'),
(383, '', 'CHAPA 4.8 X 10mts', 2.00, 0.00, '365', '2023-10-26 03:00:00'),
(383, '', 'CHAPA 4.8 X 10mts', 1.00, 0.00, '374', '2023-10-26 03:00:00'),
(391, '', 'CHAPA 6.4 X 12mts', 1.00, 0.00, '365', '2023-10-26 03:00:00'),
(391, '', 'CHAPA 6.4 X 12mts', 4.00, 0.00, '365', '2023-10-26 03:00:00'),
(620, '', 'BOBINA GALVANIZADA 2.25 X 1220	', 1.00, 5990.00, '532', '2023-10-26 03:00:00'),
(404, '', 'BOBINA PREPINTADA BLANCA 0.5 X 1220', 1.00, 5226.00, '567', '2023-10-26 03:00:00'),
(620, '', 'BOBINA GALVANIZADA 2.25 X 1220	', 1.00, 6984.00, '532', '2023-10-27 03:00:00'),
(620, '', 'BOBINA GALVANIZADA 2.25 X 1220	', 1.00, 6984.00, '532', '2023-10-27 03:00:00'),
(620, '', 'BOBINA GALVANIZADA 2.25 X 1220	', 1.00, 6984.00, '532', '2023-10-27 03:00:00'),
(620, '', 'BOBINA GALVANIZADA 2.25 X 1220	', 0.00, 640.80, '532', '2023-10-27 03:00:00'),
(634, '', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 930', 4.00, 33590.00, '959', '2023-10-27 03:00:00'),
(620, '', 'BOBINA GALVANIZADA 2.25 X 1220	', 1.00, 6130.00, '532', '2023-10-30 03:00:00'),
(383, '', 'CHAPA 4.8 X 10mts', 1.00, 0.00, '666', '2023-10-30 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 1.00, 0.00, '666', '2023-10-30 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 3.00, 0.00, '666', '2023-10-30 03:00:00'),
(383, '', 'CHAPA 4.8 X 10mts', 2.00, 0.00, '666', '2023-10-30 03:00:00'),
(385, '', 'CHAPA 4.8 X 12mts', 3.00, 0.00, '666', '2023-10-30 03:00:00'),
(391, '', 'CHAPA 6.4 X 12mts', 2.00, 0.00, '666', '2023-10-30 03:00:00'),
(547, '', 'FLEJE GALVANIZADO 2 X 322', 3.00, 0.00, '666', '2023-11-01 11:39:15'),
(382, '', 'CHAPA 6.4 X 10mts', 1.00, 0.00, '666', '2023-11-01 12:29:28'),
(385, '', 'CHAPA 4.8 X 12mts', 4.00, 0.00, '666', '2023-11-01 12:29:51'),
(383, '', 'CHAPA 4.8 X 10mts', 1.00, 0.00, '666', '2023-11-01 12:30:27'),
(391, '', 'CHAPA 6.4 X 12mts', 2.00, 0.00, '666', '2023-11-01 12:30:45'),
(391, '', 'CHAPA 6.4 X 12mts', 6.00, 0.00, '666', '2023-11-01 13:03:48'),
(640, '', 'BOBINA GALVANIZADA 0.70 X 1000', 1.00, 3500.00, '532', '2023-11-02 13:44:29'),
(487, '', 'BOBINA LAMINADA EN CALIENTE NEGRA 2 X 1245', 1.00, 11262.00, '532', '2023-11-02 13:45:06'),
(614, '', 'BOBINA PREPINTADA AZUL 0.5 X 1220', 0.00, 4947.00, '566', '2023-11-03 17:37:14'),
(391, '', 'CHAPA 6.4 X 12mts', 1.00, 0.00, '666', '2023-11-06 14:19:26'),
(385, '', 'CHAPA 4.8 X 12mts', 1.00, 0.00, '666', '2023-11-06 14:19:43'),
(628, '', 'BOBINA LAMINADA EN CALIENTE NEGRA 6.35 X 750', 4.00, 27156.00, '959', '2023-11-06 17:52:01'),
(391, '', 'CHAPA 6.4 X 12mts', 5.00, 0.00, '666', '2023-11-07 14:08:52'),
(391, '', 'CHAPA 6.4 X 12mts', 4.00, 0.00, '666', '2023-11-09 15:24:51');

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
(19, 373, 'VARIABLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_cuenta`
--

CREATE TABLE `tipo_cuenta` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_cuenta`
--

INSERT INTO `tipo_cuenta` (`id`, `descripcion`, `estado`) VALUES
(1, ' ', 1),
(2, 'CONTADO', 1),
(3, 'CANCELADO', 1),
(4, 'OBRA PROPIA', 1),
(5, 'DEVOLUCIÓN', 1),
(6, 'CUENTA CORRIENTE', 1),
(7, 'EFECTIVO / TRANSFERENCIA', 1),
(8, 'COBRADO', 1),
(9, 'CONFORMADO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gastos`
--

CREATE TABLE `tipo_gastos` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tipo_gastos`
--

INSERT INTO `tipo_gastos` (`id`, `descripcion`, `estado`) VALUES
(1, 'GASTOS DE LIMPIEZA', 1),
(2, 'GASTOS DE TRANSPORTE Y FLETE', 1),
(3, 'CUOTA SINDICAL', 1),
(4, 'GASTOS DE SEPELIO A PAGAR', 1),
(5, 'GASTOS DE INSUMOS', 1),
(6, 'GASTOS DE HONORARIOS PROFESIONALES', 1),
(7, 'GASTOS DE SELLADOS', 1),
(8, 'GASTOS DE MEDICINA LABORAL', 1),
(9, 'SEGURO DE VIDA', 1),
(10, 'INDEMNIZACIONES A PAGAR', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transfer_cajas`
--

CREATE TABLE `transfer_cajas` (
  `id` int(11) NOT NULL,
  `id_caja_origen` int(10) NOT NULL,
  `id_caja_destino` int(10) NOT NULL,
  `importe` decimal(10,2) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nro_comp` int(10) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `transfer_cajas`
--

INSERT INTO `transfer_cajas` (`id`, `id_caja_origen`, `id_caja_destino`, `importe`, `descripcion`, `fecha`, `nro_comp`, `estado`) VALUES
(1, 0, 0, 0.00, '0', '2023-10-25 03:00:00', 0, 2),
(2, 1, 2, 1500000.00, 'PRUEBA', '2023-11-02 18:35:16', 0, 2),
(3, 3, 2, 350000.00, 'TRERRRR R RER RER ER FEWF F ', '2023-11-08 11:50:49', 0, 2);

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
(1, 'gabriel', 'Gabriel de la Calle', 'gdelacalle@gmail.com', '351-345-7045', 'G1234', '2023-11-02 18:30:29', 1),
(9, 'administrador', 'Gabriel de la Calle', 'gdelacalle@gmail.com', '351-345-7045', 'G1234', '2023-11-02 18:30:20', 1),
(13, 'gustavo', 'Gustavo Vega', 'gustavo@vega.com', '3572 44-8238', '12345', '2023-11-02 18:30:06', 1),
(17, 'hector', 'Hector Manoso', 'hector@estructurasvega.com', '3572 61-4806', '12345', '2023-11-02 18:30:47', 3),
(18, 'regina', 'Regina Ciriaci', 'regina@estructurasvega.com.ar ', '3572 50-4397', '12345', '2023-11-02 18:31:13', 2),
(19, 'vero', 'Verónica Vera', 'vero@vero.com.ar ', '3572 44-8304', '12345', '2023-11-02 18:31:36', 3),
(20, 'laura', 'Laura San Martin', 'laura@estructurasvega.com', '3572 50-3216', 'L12345', '2023-11-02 18:32:08', 4),
(21, 'cristina', 'Cristina Priotti', 'cristina@estructurasvega.com', '', 'C1234', '2023-11-08 18:53:04', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id` int(11) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `patente` varchar(10) NOT NULL,
  `nro_chasis` varchar(20) NOT NULL,
  `nro_motor` varchar(20) NOT NULL,
  `ano` varchar(15) NOT NULL,
  `nro_cedula` varchar(20) NOT NULL,
  `estado` int(1) NOT NULL,
  `kmts` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id`, `marca`, `modelo`, `patente`, `nro_chasis`, `nro_motor`, `ano`, `nro_cedula`, `estado`, `kmts`) VALUES
(6, 'TOYOTA', 'HILUX SRX', 'AF576CF', 'ADF456ER87', 'QWER4556YTT', '2023', '', 0, 2563);

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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `compras_mp`
--
ALTER TABLE `compras_mp`
  ADD PRIMARY KEY (`cmp_id`);

--
-- Indices de la tabla `depositos`
--
ALTER TABLE `depositos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_obra`
--
ALTER TABLE `detalle_obra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `egresos_caja`
--
ALTER TABLE `egresos_caja`
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
-- Indices de la tabla `ingresos_caja`
--
ALTER TABLE `ingresos_caja`
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
-- Indices de la tabla `materias_primas`
--
ALTER TABLE `materias_primas`
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
-- Indices de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transfer_cajas`
--
ALTER TABLE `transfer_cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users-rol` (`id_rol`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT de la tabla `codbarra`
--
ALTER TABLE `codbarra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `compras_mp`
--
ALTER TABLE `compras_mp`
  MODIFY `cmp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `depositos`
--
ALTER TABLE `depositos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `detalle_obra`
--
ALTER TABLE `detalle_obra`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `egresos_caja`
--
ALTER TABLE `egresos_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `entregas`
--
ALTER TABLE `entregas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `equivalencias`
--
ALTER TABLE `equivalencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT de la tabla `ingresos_caja`
--
ALTER TABLE `ingresos_caja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1039;

--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias_primas`
--
ALTER TABLE `materias_primas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=641;

--
-- AUTO_INCREMENT de la tabla `obras`
--
ALTER TABLE `obras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1439;

--
-- AUTO_INCREMENT de la tabla `presupuestotemporal`
--
ALTER TABLE `presupuestotemporal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1439;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1848;

--
-- AUTO_INCREMENT de la tabla `remitosclientestmp`
--
ALTER TABLE `remitosclientestmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1848;

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
-- AUTO_INCREMENT de la tabla `tipo_cuenta`
--
ALTER TABLE `tipo_cuenta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `transfer_cajas`
--
ALTER TABLE `transfer_cajas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- Restricciones para tablas volcadas
--

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
