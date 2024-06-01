-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2024 a las 04:14:19
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
-- Base de datos: `peliculasdisney`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Animación'),
(2, 'Acción en vivo'),
(3, 'Fantasía'),
(4, 'Aventura'),
(5, 'Comedia'),
(6, 'Musical'),
(7, 'Ciencia ficción'),
(8, 'Drama'),
(9, 'Terror'),
(10, 'Familia'),
(11, 'Deportes'),
(12, 'Documental'),
(13, 'Romance');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `año_lanzamiento` year(4) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id`, `titulo`, `año_lanzamiento`, `id_categoria`) VALUES
(1, 'Toy Story', 1996, 1),
(2, 'Piratas del Caribe', 2003, 2),
(3, 'La Bella y la Bestia', 1991, 3),
(4, 'El Rey León', 1994, 1),
(5, 'Aladdin', 1992, 1),
(7, 'Tron', 1982, 6),
(8, 'John Carter', 2012, 7),
(9, 'The Mighty Ducks', 1992, 10),
(10, 'March of the Penguins', 2005, 11),
(11, 'The Parent Trap', 1998, 9),
(12, 'Toy Story', 1995, 1),
(13, 'Piratas del Caribe', 2003, 2),
(14, 'La Bella y la Bestia', 1991, 3),
(15, 'El Rey León', 1994, 1),
(16, 'Aladdin', 1992, 1),
(18, 'Tron', 1982, 6),
(19, 'John Carter', 2012, 7),
(20, 'The Mighty Ducks', 1992, 10),
(21, 'March of the Penguins', 2005, 11),
(22, 'The Parent Trap', 1998, 9),
(23, 'Frozen', 2013, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD CONSTRAINT `peliculas_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
