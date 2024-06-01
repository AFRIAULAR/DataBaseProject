-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-06-2024 a las 06:50:14
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
-- Base de datos: `restaurantescaba_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoriacomida`
--

CREATE TABLE `categoriacomida` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoriacomida`
--

INSERT INTO `categoriacomida` (`id`, `nombre`) VALUES
(1, 'Italiana'),
(2, 'Argentina'),
(3, 'Mexicana'),
(4, 'Japonesa'),
(5, 'Vegetariana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locacion`
--

CREATE TABLE `locacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `locacion`
--

INSERT INTO `locacion` (`id`, `nombre`) VALUES
(1, 'Palermo'),
(2, 'Recoleta'),
(3, 'San Telmo'),
(4, 'Puerto Madero'),
(5, 'Belgrano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurantes`
--

CREATE TABLE `restaurantes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_locacion` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `restaurantes`
--

INSERT INTO `restaurantes` (`id`, `nombre`, `direccion`, `telefono`, `email`, `id_locacion`, `id_categoria`) VALUES
(1, 'La Parrilla de Juan', 'Av. Santa Fe 1234', '+54 11 12345678', 'info@laparrilladejuan.com', 2, 2),
(2, 'Pizzería Bella Napoli', 'Calle Ayacucho 567', '+54 11 98765432', 'contacto@bellanapoli.com', 2, 1),
(3, 'Tacos y Tequila', 'Calle Defensa 789', '+54 11 54321678', 'info@tacosytequila.com', 3, 3),
(4, 'Sushi House', 'Av. Alicia Moreau de Justo 432', '+54 11 11223344', 'info@sushihouse.com', 4, 4),
(5, 'Asador Criollo', 'Calle Juramento 987', '+54 11 99887766', 'contacto@asadorcriollo.com', 5, 2),
(6, 'Green Paradise', 'Av. Scalabrini Ortiz 3456', '+54 11 76543210', 'info@greenparadise.com', 1, 5),
(7, 'Parrilla del Puerto', 'Calle Macacha Güemes 123', '+54 11 55558888', 'reservas@parrilladelpuerto.com', 4, 2),
(8, 'Tequila Sunrise', 'Calle Humberto Primo 789', '+54 11 33334444', 'info@tequilasunrise.com', 3, 3),
(9, 'Trattoria La Nonna', 'Av. Scalabrini Ortiz 1234', '+54 11 66669999', 'contacto@lanonna.com', 1, 1),
(11, 'Sushi Garden', 'Av. Cabildo 1234', '+54 11 88889999', 'info@sushigarden.com', 5, 4),
(12, 'La Parrilla del Sur', 'Calle Juana Manso 456', '+54 11 11112222', 'contacto@parrilladelsur.com', 4, 2),
(13, 'La Pizzería de Mario', 'Calle Defensa 123', '+54 11 44445555', 'info@lapizzeriademario.com', 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoriacomida`
--
ALTER TABLE `categoriacomida`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `locacion`
--
ALTER TABLE `locacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_locacion` (`id_locacion`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoriacomida`
--
ALTER TABLE `categoriacomida`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `locacion`
--
ALTER TABLE `locacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD CONSTRAINT `restaurantes_ibfk_1` FOREIGN KEY (`id_locacion`) REFERENCES `locacion` (`id`),
  ADD CONSTRAINT `restaurantes_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoriacomida` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
