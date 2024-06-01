-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2024 a las 00:03:55
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estudiantes_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `calificacion` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `id_estudiante`, `id_curso`, `calificacion`) VALUES
(1, 1, 1, '9.50'),
(2, 1, 2, '7.00'),
(3, 2, 3, '9.00'),
(4, 2, 4, '6.50'),
(5, 3, 5, '8.00'),
(6, 3, 1, '7.50'),
(7, 4, 2, '8.20'),
(8, 4, 3, '7.80'),
(9, 5, 4, '9.30'),
(11, 6, 1, '8.10'),
(12, 6, 2, '7.60'),
(13, 7, 3, '8.80'),
(14, 7, 4, '7.40'),
(15, 8, 5, '9.00'),
(16, 8, 1, '8.30'),
(17, 9, 2, '7.10'),
(18, 9, 3, '8.60'),
(19, 10, 4, '7.20'),
(20, 10, 5, '9.40'),
(21, 11, 1, '8.70'),
(22, 11, 2, '7.30'),
(23, 12, 3, '9.10'),
(24, 12, 4, '7.90'),
(25, 13, 5, '8.90'),
(26, 13, 1, '7.70'),
(27, 14, 2, '8.40'),
(28, 14, 3, '7.60'),
(29, 15, 4, '9.20'),
(30, 15, 5, '8.10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `nombre`) VALUES
(1, 'Matemáticas'),
(2, 'Física'),
(3, 'Química'),
(4, 'Biología'),
(5, 'Historia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `grado` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `apellido`, `edad`, `grado`) VALUES
(1, 'Juan', 'Pérez', 18, '12'),
(2, 'María', 'García', 17, '11'),
(3, 'Carlos', 'Rodríguez', 18, '12'),
(4, 'Ana', 'Martínez', 16, '10'),
(5, 'Luis', 'Hernández', 17, '11'),
(6, 'Elena', 'López', 18, '12'),
(7, 'Miguel', 'González', 16, '10'),
(8, 'Sofía', 'Sánchez', 17, '11'),
(9, 'Jorge', 'Ramírez', 18, '12'),
(10, 'Laura', 'Torres', 16, '10'),
(11, 'Diego', 'Flores', 17, '11'),
(12, 'Lucía', 'Rivera', 18, '12'),
(13, 'Pedro', 'Gómez', 16, '10'),
(14, 'Andrea', 'Jiménez', 17, '11'),
(15, 'Fernando', 'Díaz', 18, '12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_curso` (`id_curso`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
