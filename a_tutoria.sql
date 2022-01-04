-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-01-2022 a las 19:22:11
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `a_tutoria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_docente`
--

CREATE TABLE `contacto_docente` (
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto_docente`
--

INSERT INTO `contacto_docente` (`nombre`, `email`, `telefono`, `mensaje`) VALUES
('carlos eduardo', 'cepm1315475358@gmail.com', '0988379640', 'hola'),
('juan', 'carlospalma30@outlook.com', '0988372323', 'hi'),
('Gabo', 'jg.pv@hotmial.com', '2132212131', 'Hola Y chao'),
(' Santiago España', 'sespaña@gmail.com', '1231231231', 'Tengo un fallo'),
('Daniel', 'daniel@gmail.com', '1231231231', 'Existe un bug en el sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto_estudiante`
--

CREATE TABLE `contacto_estudiante` (
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `telefono` text NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto_estudiante`
--

INSERT INTO `contacto_estudiante` (`nombre`, `email`, `telefono`, `mensaje`) VALUES
('pedro', 'pedro@gmail.com', '0541651651', 'contacto'),
('Jose', 'jose@hotmail.com', '1287126731', 'Informacion por favor'),
(' Santiago España', 'sespaña@gmail.com', '1231231231', 'Tengo un fallo'),
('Daniel', 'daniel@gmail.com', '1231231231', 'Existe un bug en el sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_docente`
--

CREATE TABLE `registro_docente` (
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `numerotelefono` text NOT NULL,
  `direccion` text NOT NULL,
  `email` text NOT NULL,
  `contrasena` text NOT NULL,
  `cedula` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro_docente`
--

INSERT INTO `registro_docente` (`nombre`, `apellido`, `numerotelefono`, `direccion`, `email`, `contrasena`, `cedula`) VALUES
('carlos eduardo', 'palma miranda', '0988379640', 'barrio 4 de noviembre', 'cepm1315475358@gmail.com', '12122e12e', '1315475358'),
('Jordy', 'Picp', '6564421212', 'Palmar', 'jg.pv@hotmail.com', '12345', '1234567890'),
('Juan', 'Perez', '1231231231', 'cuba', 'jperez.gmail.com', '12313123', '1234567890'),
('Daniel', 'Lopez', '1231231231', 'cuba', 'jperez.gmail.com', '12313123', '1234567890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_estudiante`
--

CREATE TABLE `registro_estudiante` (
  `nombre` text NOT NULL,
  `apellido` text NOT NULL,
  `telefono` text NOT NULL,
  `direccion` text NOT NULL,
  `email` text NOT NULL,
  `contrasena` text NOT NULL,
  `cedula` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registro_estudiante`
--

INSERT INTO `registro_estudiante` (`nombre`, `apellido`, `telefono`, `direccion`, `email`, `contrasena`, `cedula`) VALUES
('carlos eduardo', 'palma miranda', '0988379640', 'barrio 4 de noviembre', 'carlospalma30@outlook.com', '12345678952132', '1348547620'),
('Gabriel', 'Vargas', '3212132311', 'Centro manta', 'gabo@hotmail.com', '12345', '1234567890'),
('Carlos', 'Palma', '3242342342', 'calle 14', 'carlos@gmail.com', '12345', '1234567890'),
('Jordy', 'Vargas', '1239812381', 'Avenida 18', 'jv@hotmail.com', '12345', '1234567890');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitar_tutoria`
--

CREATE TABLE `solicitar_tutoria` (
  `asignatura` text NOT NULL,
  `curso` text NOT NULL,
  `nombre_docente` text NOT NULL,
  `motivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `solicitar_tutoria`
--

INSERT INTO `solicitar_tutoria` (`asignatura`, `curso`, `nombre_docente`, `motivo`) VALUES
('', '', '', ''),
('', '', '', ''),
('matematicas', 'quinto A', 'juan pedro', 'falencia en calculo2'),
('matematicas', 'quinto A', 'simon acosta', 'falencia en calculo2'),
('Electronica', '6to B', 'Pedro', 'Porque si'),
('Base de datos', '6to C', 'Andres', 'Quiero aprender'),
('Programacion', '3ro B', 'fabian', 'Necesito tutorias'),
('Base de datos', '3ro C', 'Fabian', 'Necesito ayuda'),
('Base de datos', '5ro A', 'Daniel', 'Necesito que alguien me ayude'),
('Ingenieria de Software', '6ro A', 'Ruben', 'Clases teóricas por favor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tutoria`
--

CREATE TABLE `tutoria` (
  `id_tutoria` int(11) NOT NULL,
  `asignatura` varchar(200) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `n_estudiantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Registro de tutorias asignadas';

--
-- Volcado de datos para la tabla `tutoria`
--

INSERT INTO `tutoria` (`id_tutoria`, `asignatura`, `curso`, `fecha`, `n_estudiantes`) VALUES
(1, 'Aplicaciones Web I', '5to Nivel A', '2021-12-30 02:09:20', 12),
(3, 'Física ', '1er Nivel B', '2016-09-15 11:15:00', 13),
(4, 'Lectura de textos', '5to Nivel C', '2017-10-20 08:10:20', 10),
(5, 'Redes', '5to Nivel A', '2018-08-15 09:10:20', 8),
(7, 'Electronica', '6to B', '0000-00-00 00:00:00', 11),
(17, 'Base de datos', '5to A', '0000-00-00 00:00:00', 17),
(18, 'Ingenieria de Software', '6to A', '0000-00-00 00:00:00', 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  ADD PRIMARY KEY (`id_tutoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tutoria`
--
ALTER TABLE `tutoria`
  MODIFY `id_tutoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
