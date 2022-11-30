-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 01:28:13
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejos`
--

CREATE TABLE `consejos` (
  `idconsejos` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `titu` varchar(50) NOT NULL,
  `sub` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consejos`
--

INSERT INTO `consejos` (`idconsejos`, `foto`, `titu`, `sub`) VALUES
(1, '2d.png', 'TOCAR CON OTROS', 'La música es sobre todo comunicación y avanzarás con una rapidez sorprendente si tocas con otros: proporcionando el ritmo para el solo de alguien, tocando preguntas y respuestas, cada uno con las frases del otro e incluso aprendiendo simplemente cuando paras de tocar. Gary Moore: Mucha gente puede tocar en su habitación, pero avanzarás más tocando con otros ya que mejorará tu sentido del ritmo.'),
(2, 'd3.png', 'Estudia teoría musical', 'Para aprender más rápidamente cualquier instrumento es muy importante conocer la lógica y el lenguaje musical. Piensa que los trastes de la guitarra corresponden a los semitonos de la escala cromática, si no conoces este concepto teórico no serás capaz encontrar las notas que buscas en el mástil y te costará muchísimo tocar las notas o los acordes de tu canción favorita. Además si te gusta aprender a componer tus propias canciones, estudiar los conceptos básicos de teoría musical es imprescindib');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `idimagenes` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `mexica` float NOT NULL,
  `usd` float NOT NULL,
  `descricion` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `ofetar` float NOT NULL,
  `des` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`idimagenes`, `foto`, `nombre`, `mexica`, `usd`, `descricion`, `fecha`, `ofetar`, `des`) VALUES
(1, 'g1.png', 'Cort B-001-1701-0 Guitarra', 8000, 400, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '2014-11-19', 25, 6000),
(2, 'g2.png', 'Guitarra Eléctrica Cuerpo Sóli', 9000, 510, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '2012-05-09', 30, 6300),
(3, 'g3.png', 'chamara verde de cuero ', 7000, 900, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '2022-11-23', 40, 4200),
(4, 'g4.png', 'chamara rojo algodón', 100000, 2000, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '1999-01-05', 50, 50000),
(5, 'g5.png', 'Cort B-001-1701-0 Guitarra', 8000, 400, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '2010-02-19', 60, 3200),
(6, 'g6.png', 'Cort B-001-1701-0 Guitarra', 8000, 400, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '2002-07-13', 80, 1600),
(7, 'g7.png', 'Cort B-001-1701-0 Guitarra', 8000, 400, 'La guitarra eléctrica es un tipo de guitarra en la que, a diferencia de la guitarra española y la guitarra sajona, su caja no hace resonancia, por lo que el sonido se produce indirectamente por inducción eléctrica y a través de un amplificador o también a través de un pedal de efectos.', '2011-04-21', 50, 4000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `consejos`
--
ALTER TABLE `consejos`
  ADD PRIMARY KEY (`idconsejos`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`idimagenes`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `consejos`
--
ALTER TABLE `consejos`
  MODIFY `idconsejos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `idimagenes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
