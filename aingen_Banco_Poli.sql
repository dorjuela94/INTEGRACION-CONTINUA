-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 02-07-2018 a las 12:42:00
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aingen_Banco_Poli`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ciudad`
--

CREATE TABLE `Ciudad` (
  `id_Ciudad` int(11) NOT NULL,
  `id_Pais` int(11) NOT NULL,
  `Nombre_Ciudad` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Clientes`
--

CREATE TABLE `Clientes` (
  `id_documento` int(15) NOT NULL,
  `id_cuenta` int(15) NOT NULL,
  `Nombre` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Apellido` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Pais` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Ciudad` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Cuentas`
--

CREATE TABLE `Cuentas` (
  `id_Cuenta` int(20) NOT NULL,
  `id_Documento` int(20) NOT NULL,
  `Ingreso` int(20) NOT NULL,
  `Egreso` int(20) NOT NULL,
  `Saldo` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Movimiento`
--

CREATE TABLE `Movimiento` (
  `id_Movimiento` int(11) NOT NULL,
  `id_Cuenta` int(11) NOT NULL,
  `id_Documento` int(11) NOT NULL,
  `Monto` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Pais`
--

CREATE TABLE `Pais` (
  `id_Pais` int(10) NOT NULL,
  `Nombre_Pais` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `RegistroUsuarios`
--

CREATE TABLE `RegistroUsuarios` (
  `id` int(100) NOT NULL,
  `nombre` varchar(10) CHARACTER SET utf8 NOT NULL,
  `apellido` varchar(15) CHARACTER SET utf8 NOT NULL,
  `cedula` int(11) NOT NULL,
  `username` varchar(8) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `pais` varchar(10) CHARACTER SET utf8 NOT NULL,
  `ciudad` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `RegistroUsuarios`
--

INSERT INTO `RegistroUsuarios` (`id`, `nombre`, `apellido`, `cedula`, `username`, `password`, `pais`, `ciudad`) VALUES
(8, 'JOHN', 'GARZON', 80902567, 'JOHNG', 'cc06e7b4b8791ed0f7bc714792b7b26f', 'COLOMBIA', 'BOGOTA'),
(9, 'Diego', 'Orjuela', 1070013960, 'dorjuela', 'fb47fd604b6cc9637154aeba6ae136be', 'Colombia', 'Bogota'),
(10, 'JOHN', 'GARZON', 123456, 'JOHN', '202cb962ac59075b964b07152d234b70', 'COLOMBIA', 'BOGOTA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Ciudad`
--
ALTER TABLE `Ciudad`
  ADD PRIMARY KEY (`id_Ciudad`),
  ADD UNIQUE KEY `id_Pais` (`id_Pais`);

--
-- Indices de la tabla `Clientes`
--
ALTER TABLE `Clientes`
  ADD PRIMARY KEY (`id_documento`);

--
-- Indices de la tabla `Cuentas`
--
ALTER TABLE `Cuentas`
  ADD PRIMARY KEY (`id_Cuenta`),
  ADD KEY `id_Documento` (`id_Documento`);

--
-- Indices de la tabla `Movimiento`
--
ALTER TABLE `Movimiento`
  ADD PRIMARY KEY (`id_Cuenta`,`Fecha`,`id_Movimiento`) USING BTREE,
  ADD UNIQUE KEY `id_Documento` (`id_Documento`);

--
-- Indices de la tabla `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`id_Pais`);

--
-- Indices de la tabla `RegistroUsuarios`
--
ALTER TABLE `RegistroUsuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cedula` (`cedula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `RegistroUsuarios`
--
ALTER TABLE `RegistroUsuarios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
