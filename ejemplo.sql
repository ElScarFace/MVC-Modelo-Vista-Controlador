-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2020 a las 00:43:32
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Create` (IN `nom` VARCHAR(40), `pre` FLOAT)  INSERT INTO servicios(Nombre, Precio) VALUES (nom, pre)$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Delete` (IN `cod` INT)  DELETE from servicios WHERE Codigo = cod$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Read` (IN `cod` INT)  SELECT *FROM servicios WHERE Codigo = cod$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Update` (IN `cod` INT, `nom` VARCHAR(40), `pre` FLOAT)  UPDATE servicios SET Nombre = nom, Precio = pre WHERE Codigo = cod$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Vista` ()  SELECT * FROM servicios$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Codigo` int(11) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Codigo`, `Nombre`, `Precio`) VALUES
(1, 'hgdjhsgd', 123),
(2, 'ytguyhio', 2346),
(3, 'jfkuhiljljkl', 67657),
(4, 'lechita', 2345),
(5, 'jugito', 456);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Codigo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
