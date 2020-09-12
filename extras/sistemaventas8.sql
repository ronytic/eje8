-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2020 a las 23:33:22
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventas8`
--
CREATE DATABASE IF NOT EXISTS `sistemaventas8` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `sistemaventas8`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE `producto` (
  `id_producto` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `detalle` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio`, `detalle`, `foto`, `fecha`, `hora`, `activo`) VALUES
(1, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '22:15:45', 1),
(2, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:17:17', 0),
(3, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:31:16', 1),
(4, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:31:54', 0),
(5, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:32:04', 1),
(6, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:33:40', 1),
(7, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:34:23', 1),
(8, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:34:45', 0),
(9, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:34:56', 1),
(10, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:35:21', 1),
(11, 'Chocolate', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:36:10', 1),
(12, 'Arroz', 15, 'qweqwe', 'Chocolate.jpg', '2020-09-12', '16:36:41', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `nombres` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `fotografia` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `contrasena` varchar(64) COLLATE utf8_spanish_ci NOT NULL,
  `nivel` int(2) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
