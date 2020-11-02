-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2020 a las 00:33:39
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `appwander`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `derwanchat`
--

CREATE TABLE `derwanchat` (
  `id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `derwanchat`
--

INSERT INTO `derwanchat` (`id`, `nombre`, `mensaje`, `fecha`) VALUES
(1, 'Wander Nova', 'Hola, Buenas Noches\r\n', '2020-06-20 22:22:54'),
(2, 'Juan jose', 'Todo y tu?', '2020-06-20 22:23:22'),
(3, 'Wander Nova', 'Todo hermano', '2020-06-20 22:23:42'),
(4, 'Luis', 'Excelente', '2020-06-20 22:23:59'),
(5, 'Wander Nova', 'Gracias por su atencion', '2020-06-20 22:25:52'),
(6, 'Luis Soto', 'Bien ', '2020-06-20 22:26:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `derwanchat`
--
ALTER TABLE `derwanchat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `derwanchat`
--
ALTER TABLE `derwanchat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
