-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2025 a las 00:02:53
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `legolas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaturas`
--

CREATE TABLE `asignaturas` (
  `ID_Asignaturas` int(11) NOT NULL,
  `Codigo_Asignaturas` varchar(6) NOT NULL,
  `Descripcion_Asignaturas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura_personal`
--

CREATE TABLE `asignatura_personal` (
  `ID_Asignatura` int(11) NOT NULL,
  `Cedula_Personal` varchar(8) NOT NULL,
  `Codigo_Asignatura` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `idbanco` int(11) NOT NULL,
  `Codigo_banco` varchar(4) NOT NULL,
  `Denominacion_banco` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bancos`
--

INSERT INTO `bancos` (`idbanco`, `Codigo_banco`, `Denominacion_banco`) VALUES
(1, '0102', ' 0102-BANCO DE VENEZUELA'),
(2, '0104', ' 0104-VENEZOLANO DE CRÉDITO'),
(3, '0105', ' 0105-BANCO MERCANTIL'),
(4, '0108', ' 0108-BANCO PROVINCIAL'),
(5, '0114', ' 0114-BANCARIBE'),
(6, '0115', ' 0115-BANCO EXTERIOR'),
(7, '0116', ' 0116-BANCO OCCIDENTAL DE DESCUENTO'),
(8, '0128', ' 0128-BANCO CARONÍ'),
(9, '0134', ' 0134-BANESCO'),
(10, '0137', ' 0137-BANCO SOFITASA'),
(11, '0138', ' 0138-BANCO PLAZA'),
(12, '0146', ' 0146-BANGENTE'),
(13, '0149', ' 0149-BANCO DEL PUEBLO SOBERANO'),
(14, '0151', ' 0151-BFC BANCO FONDO COMÚN'),
(15, '0156', ' 0156-100% BANCO'),
(16, '0157', ' 0157-DELSUR BANCO UNIVERSAL'),
(17, '0163', ' 0163-BANCO DEL TESORO'),
(18, '0166', ' 0166-BANCO AGRÍCOLA DE VENEZUELA'),
(19, '0168', ' 0168-BANCRECER'),
(20, '0169', ' 0169-MI BANCO'),
(21, '0171', ' 0171-BANCO ACTIVO'),
(22, '0172', ' 0172-BANCAMIGA'),
(23, '0173', ' 0173-BANCO INTERNACIONAL DE DESARROLLO'),
(24, '0174', ' 0174-BANPLUS'),
(25, '0175', ' 0175-BANCO BICENTENARIO'),
(26, '0177', ' 0177-BANCO DE LA FUERZA ARMADA NACIONAL BOLIVARIANA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `ID_Cargo` int(11) NOT NULL,
  `Codigo_cargo` varchar(6) NOT NULL,
  `Descripcion_cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo_personal`
--

CREATE TABLE `cargo_personal` (
  `ID_Personal` int(11) NOT NULL,
  `Cedula_Personal_Cargo` varchar(30) NOT NULL,
  `Codigo_cargo_Personal` varchar(6) NOT NULL,
  `Fecha_ingreso_cargo` date NOT NULL,
  `Codigo_segundo_cargo` varchar(6) NOT NULL,
  `Fecha_segundo_cargo` date NOT NULL,
  `Codigo_departamento_cargo` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `ID_Departamento` int(11) NOT NULL,
  `Codigo_departamento` varchar(6) NOT NULL,
  `Descripcion_departamento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudios`
--

CREATE TABLE `estudios` (
  `ID_Estudios` int(11) NOT NULL,
  `Cedula_Personal_Estudios` varchar(8) NOT NULL,
  `Universidad_Estudios` varchar(150) NOT NULL,
  `Titulo_Estudios` varchar(15) NOT NULL,
  `Fecha_inicio_Estudios` date NOT NULL,
  `Fecha_fin_Estudios` date NOT NULL,
  `Mencion_Estudios` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hijos`
--

CREATE TABLE `hijos` (
  `ID_Hijos` int(11) NOT NULL,
  `Cedula_Personal_Hijos` varchar(8) NOT NULL,
  `Primer_apellido_Hijoss` varchar(30) NOT NULL,
  `Segundo_apellido_Hijo` varchar(30) NOT NULL,
  `Primer_nombre_Hijjo` varchar(30) NOT NULL,
  `Segundo_nombre_Hijo` varchar(30) NOT NULL,
  `Sexo_Hijo` varchar(1) NOT NULL,
  `Fecha_noto_Hijo` date NOT NULL,
  `Parentesco_Hijo` varchar(1) NOT NULL,
  `Telefono1_Hijo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `ID_Ingreso` int(11) NOT NULL,
  `Cedula_Personal_Ingreso` varchar(8) NOT NULL,
  `Correo_Personal_Ingreso` varchar(50) NOT NULL,
  `Nivel_Personal_ingreso` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ingreso`
--

INSERT INTO `ingreso` (`ID_Ingreso`, `Cedula_Personal_Ingreso`, `Correo_Personal_Ingreso`, `Nivel_Personal_ingreso`) VALUES
(55, '30824620', 'danielacastro@gmail.com', '1'),
(56, '31201259', 'elianajimenez@gmail.com', '1'),
(57, '30226219', 'carloscolina@gmail.com', '1'),
(58, '30226249', 'abrahamsalazar@gmail.com', '1'),
(59, '30700256', 'yetzabehtscorza@gmail.com', '1'),
(60, '31380639', 'josesalinas@gmail.com', '1'),
(61, '31201006', 'maikolsanchez@gmail.com', '1'),
(62, '30170441', 'nayeulisecharry@gmail.com', '2'),
(63, '31748701', 'natalypiñango@gmail.com', '2'),
(64, '30633140', 'andriuramirez@gmail.com', '2'),
(65, '31201833', 'maikolacevedo@gmail.com', '2'),
(66, '30970980', 'moisesgonzales@gmail.com', '2'),
(67, '28314475', 'fernandodasilva@gmail.com', '3'),
(68, '30824651', 'feryoruffo@gmail.com', '3'),
(69, '30969982', 'jovannasalazar@gmail.com', '3'),
(70, '31130955', 'ranzenyledezma@gmail.com', '3'),
(71, '30702937', 'nilsonpestano@gmail.com', '3'),
(72, '29910957', 'jasberucuauro@gmail.com', '5'),
(73, '30456443', 'ronelcauro@gmail.com', '5'),
(74, '32710067', 'dianagorrin@gmail.com', '5'),
(75, '28314311', 'ysagorozabel@gmail.com', '5'),
(76, '30527005', 'jornelyzgomez@gmail.com', '5'),
(77, '30041914', 'juanblanco@gmail.com', '5'),
(78, '31748686', 'luisvasquez@gmail.com', '6'),
(79, '30970022', 'loynerfernandez@gmail.com', '6'),
(80, '30225765', 'adonaialvarador@gmail.com', '6'),
(81, '31.380.2', 'yhonvivas@gmail.com', '6'),
(82, '28769007', 'eduarpalma@gmail.com', '7'),
(83, '31291085', 'alejandropereira@gmail.com', '7'),
(84, '31508245', 'lizbelissuarez@gmail.com', '7'),
(85, '29522135', 'auraizquierdo@gmail.com', '7'),
(86, '29911229', 'raymariguaicara@gmail.com', '8'),
(87, '30041620', 'edimardiaz@gmail.com', '8'),
(88, '30260391', 'yeremyhtmarcano@gmail.com', '8'),
(89, '30702092', 'wilsonbolivar@gmail.com', '8'),
(90, '24806967', 'jesusdabuena@gmail.com', '8'),
(91, '31132848', 'sergiomaza@gmail.com', '9'),
(92, '26968558', 'alejandrogutierrez@gmail.com', '9'),
(93, '29910749', 'valeriatorres@gmail.com', '9'),
(94, '31428219', 'gabrielaguilera@gmail.com', '9'),
(95, '31.428.2', 'ramseslugo@gmail.com', '9'),
(96, '20780987', 'josbelsanchez@gmail.com', '0'),
(97, '31737990', 'luisropero@gmail.com', '0'),
(98, '17482206', 'johanescobar@gmail.com', '0'),
(99, '29815867', 'keiyifarias@gmail.com', '0'),
(100, '30526997', 'gilberthhernandez@gmail.com', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `ID_Movimiento` int(11) NOT NULL,
  `Codigo_Asignatura` varchar(6) NOT NULL,
  `Descripcion_Asignatura` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `ID_Personal` int(11) NOT NULL,
  `Cedula_Personal` varchar(8) NOT NULL,
  `Primer_apellido_Personal` varchar(30) NOT NULL,
  `Segundo_apellido_Personal` varchar(30) NOT NULL,
  `Primer_nombre_Personal` varchar(30) NOT NULL,
  `Segundo_nombre_Personal` varchar(30) NOT NULL,
  `Sexo_Personal` varchar(2) NOT NULL,
  `Fecha_noto_Personal` date NOT NULL,
  `Correo_Personal` varchar(100) NOT NULL,
  `Telefono1_Personal` varchar(11) NOT NULL,
  `Telefono2_Personal` varchar(11) NOT NULL,
  `Direccion_Personal` varchar(250) NOT NULL,
  `Estado_civil_Personal` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  ADD PRIMARY KEY (`ID_Asignaturas`);

--
-- Indices de la tabla `asignatura_personal`
--
ALTER TABLE `asignatura_personal`
  ADD PRIMARY KEY (`ID_Asignatura`);

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`idbanco`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_Cargo`);

--
-- Indices de la tabla `cargo_personal`
--
ALTER TABLE `cargo_personal`
  ADD PRIMARY KEY (`ID_Personal`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`ID_Departamento`);

--
-- Indices de la tabla `estudios`
--
ALTER TABLE `estudios`
  ADD PRIMARY KEY (`ID_Estudios`);

--
-- Indices de la tabla `hijos`
--
ALTER TABLE `hijos`
  ADD PRIMARY KEY (`ID_Hijos`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`ID_Ingreso`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`ID_Movimiento`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`ID_Personal`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaturas`
--
ALTER TABLE `asignaturas`
  MODIFY `ID_Asignaturas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asignatura_personal`
--
ALTER TABLE `asignatura_personal`
  MODIFY `ID_Asignatura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `idbanco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_Cargo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo_personal`
--
ALTER TABLE `cargo_personal`
  MODIFY `ID_Personal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `ID_Departamento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudios`
--
ALTER TABLE `estudios`
  MODIFY `ID_Estudios` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hijos`
--
ALTER TABLE `hijos`
  MODIFY `ID_Hijos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  MODIFY `ID_Ingreso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `ID_Movimiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `ID_Personal` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
