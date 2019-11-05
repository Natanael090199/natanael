-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2019 a las 11:58:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database_si`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_biblioteca_11`
--

CREATE TABLE `tabla_biblioteca_11` (
  `Tabla_Biblioteca_11_Id` int(11) NOT NULL,
  `Tabla_Biblioteca_11_Arch_Nom` varchar(100) DEFAULT NULL,
  `Tabla_Biblioteca_11_Exte` varchar(10) DEFAULT NULL,
  `Tabla_Biblioteca_11_Link` varchar(250) DEFAULT NULL,
  `Tabla_Biblioteca_11_Fecha` date DEFAULT NULL,
  `Tabla_Biblioteca_11_Hora` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_ctavirtual_07`
--

CREATE TABLE `tabla_ctavirtual_07` (
  `Tabla_CtaVirtual_07_Id` int(11) NOT NULL,
  `Tabla_CtaVirtual_07_NroCta` int(11) DEFAULT '30',
  `Tabla_CtaVirtual_07_EstCue` tinyint(1) DEFAULT '1',
  `Tabla_CtaVirtual_07_TiAb` tinyint(1) DEFAULT '1',
  `rela_tabla_cuenta_03` int(11) NOT NULL COMMENT 'relaciona la tabla usuario mediante el id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_cuenta_03`
--

CREATE TABLE `tabla_cuenta_03` (
  `tabla_cuenta_03_Id` int(11) NOT NULL,
  `tabla_cuenta_03_Inv` tinyint(1) NOT NULL,
  `tabla_cuenta_03_Emp` tinyint(1) NOT NULL,
  `tabla_cuenta_03_CUIL` int(22) NOT NULL,
  `tabla_cuenta_03_TipoPer` tinyint(1) NOT NULL,
  `tabla_cuenta_03_CuBA` tinyint(1) NOT NULL COMMENT 'Cuenta de banco activa',
  `tabla_cuenta_03_AFIP_Insc` tinyint(1) NOT NULL,
  `tabla_cuenta_03_NumInsc` int(50) DEFAULT NULL,
  `rela_tabla_usuario_01` int(11) NOT NULL COMMENT 'relaciona la tabla usuario mediante el id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_domicilio_02`
--

CREATE TABLE `tabla_domicilio_02` (
  `tabla_domicilio_02_Id` int(11) NOT NULL,
  `tabla_domicilio_02_Provincia` varchar(100) NOT NULL,
  `tabla_domicilio_02_Ciudad` varchar(100) NOT NULL,
  `tabla_domicilio_02_Departamento` varchar(100) NOT NULL,
  `tabla_domicilio_02_Barrio` varchar(100) NOT NULL,
  `tabla_domicilio_02_Calle` varchar(100) NOT NULL,
  `tabla_domicilio_02_Casa` int(100) NOT NULL COMMENT 'Numero de casa o departamento',
  `rela_tabla_usuario_01` int(11) NOT NULL COMMENT 'relaciona la tabla usuario mediante el id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_localidades_16`
--

CREATE TABLE `tabla_localidades_16` (
  `Tabla_Localidades_16_Id` int(11) NOT NULL,
  `Tabla_Localidades_16_Localidades` varchar(50) NOT NULL,
  `Tabla_Localidades_16_NumLoca` int(11) NOT NULL,
  `rela_Tabla_Provincias_10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_mensajeria_12`
--

CREATE TABLE `tabla_mensajeria_12` (
  `Tabla_Mensajeria_12_Id` int(11) NOT NULL,
  `Tabla_Mensajeria_12_ClasDes` tinyint(1) DEFAULT '1',
  `Tabla_Mensajeria_12_Dest` varchar(100) DEFAULT NULL,
  `Tabla_Mensajeria_12_Mensaje` varchar(500) DEFAULT NULL,
  `Tabla_Mensajeria_12_Fecha` date DEFAULT NULL,
  `Tabla_Mensajeria_12_Hora` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `rela_tabla_usuario_01` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_objetivos_14`
--

CREATE TABLE `tabla_objetivos_14` (
  `Tabla_Objetivos_14_Id` int(11) NOT NULL,
  `Tabla_Objetivos_14_Desc` varchar(50) DEFAULT NULL,
  `rela_tabla_proy_data_05` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_provincias_10`
--

CREATE TABLE `tabla_provincias_10` (
  `Tabla_Provincias_10_Id` int(11) NOT NULL,
  `Tabla_Provincias_10_Provincias` varchar(50) NOT NULL,
  `Tabla_Provincias_10_NumPcia` int(5) NOT NULL,
  `rela_tabla_domicilio_02` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_proyecto_04`
--

CREATE TABLE `tabla_proyecto_04` (
  `Tabla_Proyecto_04_Id` int(11) NOT NULL,
  `Tabla_Proyecto_04_ActivNom` varchar(250) DEFAULT NULL,
  `Tabla_Proyecto_04_ActivDesc` varchar(250) DEFAULT NULL,
  `Tabla_Proyecto_04_ActivObje` tinyint(1) DEFAULT '1',
  `Tabla_Proyecto_04_ObjeDesc` varchar(250) DEFAULT NULL,
  `Tabla_Proyecto_04_RazonSoc` varchar(250) DEFAULT NULL,
  `Tabla_Proyecto_04_CodActNac` int(50) DEFAULT '10',
  `Tabla_Proyecto_04_Port` blob,
  `rela_tabla_usuario_01` int(11) NOT NULL COMMENT 'relaciona la tabla usuario mediante el id',
  `rela_tabla_biblioteca_11` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_proy_bienes_06`
--

CREATE TABLE `tabla_proy_bienes_06` (
  `Tabla_Proy_Bienes_06_Id` int(11) NOT NULL,
  `Tabla_Proy_Bienes_06_BienNom` varchar(250) DEFAULT NULL,
  `Tabla_Proy_Bienes_06_BienTipo` tinyint(1) DEFAULT '1',
  `rela_tabla_proyecto_04` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_proy_data_05`
--

CREATE TABLE `tabla_proy_data_05` (
  `Tabla_Proy_Data_05_Id` int(11) NOT NULL,
  `Tabla_Proy_Data_05_PMar_Mis` varchar(250) DEFAULT NULL,
  `Tabla_Proy_Data_05_PMar_Vis` varchar(250) DEFAULT NULL,
  `Tabla_Proy_Data_05_PMar_Prod` varchar(250) DEFAULT NULL,
  `Tabla_Proy_Data_05_PMar_PVen` varchar(100) DEFAULT NULL,
  `Tabla_Proy_Data_05_PMar_Pub` varchar(250) DEFAULT '1',
  `rela_tabla_proyecto_04` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_pventa_15`
--

CREATE TABLE `tabla_pventa_15` (
  `Tabla_PVenta_15_Id` int(11) NOT NULL,
  `Tabla_PVenta_15_Nomb` varchar(20) DEFAULT NULL,
  `Tabla_PVenta_15_Direc` varchar(50) DEFAULT NULL,
  `rela_tabla_proy_data_05` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_tabono_13`
--

CREATE TABLE `tabla_tabono_13` (
  `Tabla_TAbono_13_Id` int(11) NOT NULL DEFAULT '1',
  `Tabla_TAbono_13_Desc` varchar(50) DEFAULT NULL,
  `rela_tabla_ctavirtual_07` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_transac_08`
--

CREATE TABLE `tabla_transac_08` (
  `Tabla_Transac_08_Id` int(11) NOT NULL,
  `Tabla_Transac_08_CodZona` int(11) DEFAULT '6',
  `Tabla_Transac_08_CodUsu` int(11) DEFAULT '11',
  `Tabla_Transac_08_TipoTra` varchar(30) DEFAULT NULL,
  `Tabla_Transac_08_EstTra` tinyint(1) DEFAULT '1',
  `Tabla_Transac_08_Monto` int(11) DEFAULT '1000',
  `Tabla_Transac_08_Fecha` date DEFAULT NULL,
  `Tabla_Transac_09_Hora` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `rela_tabla_ctavirtual_07` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_ttransac_09`
--

CREATE TABLE `tabla_ttransac_09` (
  `Tabla_TTransac_09_Id` int(11) NOT NULL,
  `Tabla_TTransac_09_Desc` varchar(25) DEFAULT NULL,
  `rela_tabla_transac_08` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_usuario_01`
--

CREATE TABLE `tabla_usuario_01` (
  `Tabla_Usuario_01_Id` int(11) NOT NULL,
  `Tabla_Usuario_01_Nombre` varchar(100) NOT NULL,
  `Tabla_Usuario_01_Email` varchar(60) NOT NULL,
  `Tabla_Usuario_01_Contraseña` varchar(60) NOT NULL,
  `Tabla_Usuario_01_Fecha` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_biblioteca_11`
--
ALTER TABLE `tabla_biblioteca_11`
  ADD PRIMARY KEY (`Tabla_Biblioteca_11_Id`);

--
-- Indices de la tabla `tabla_ctavirtual_07`
--
ALTER TABLE `tabla_ctavirtual_07`
  ADD PRIMARY KEY (`Tabla_CtaVirtual_07_Id`),
  ADD KEY `rela_tabla_01_07` (`rela_tabla_cuenta_03`);

--
-- Indices de la tabla `tabla_cuenta_03`
--
ALTER TABLE `tabla_cuenta_03`
  ADD PRIMARY KEY (`tabla_cuenta_03_Id`),
  ADD KEY `rela_tabla_01_03` (`rela_tabla_usuario_01`);

--
-- Indices de la tabla `tabla_domicilio_02`
--
ALTER TABLE `tabla_domicilio_02`
  ADD PRIMARY KEY (`tabla_domicilio_02_Id`),
  ADD KEY `rela_tabla_01_02` (`rela_tabla_usuario_01`);

--
-- Indices de la tabla `tabla_localidades_16`
--
ALTER TABLE `tabla_localidades_16`
  ADD PRIMARY KEY (`Tabla_Localidades_16_Id`),
  ADD KEY `rela_tabla_10_16` (`rela_Tabla_Provincias_10`);

--
-- Indices de la tabla `tabla_mensajeria_12`
--
ALTER TABLE `tabla_mensajeria_12`
  ADD PRIMARY KEY (`Tabla_Mensajeria_12_Id`),
  ADD KEY `rela_tabla_usuario_01` (`rela_tabla_usuario_01`);

--
-- Indices de la tabla `tabla_objetivos_14`
--
ALTER TABLE `tabla_objetivos_14`
  ADD PRIMARY KEY (`Tabla_Objetivos_14_Id`),
  ADD KEY `rela_tabla_proy_data_05` (`rela_tabla_proy_data_05`);

--
-- Indices de la tabla `tabla_provincias_10`
--
ALTER TABLE `tabla_provincias_10`
  ADD PRIMARY KEY (`Tabla_Provincias_10_Id`),
  ADD KEY `rela_tabla_02_10` (`rela_tabla_domicilio_02`);

--
-- Indices de la tabla `tabla_proyecto_04`
--
ALTER TABLE `tabla_proyecto_04`
  ADD PRIMARY KEY (`Tabla_Proyecto_04_Id`),
  ADD KEY `rela_tabla_usuario_01` (`rela_tabla_usuario_01`),
  ADD KEY `rela_tabla_04_11` (`rela_tabla_biblioteca_11`);

--
-- Indices de la tabla `tabla_proy_bienes_06`
--
ALTER TABLE `tabla_proy_bienes_06`
  ADD PRIMARY KEY (`Tabla_Proy_Bienes_06_Id`),
  ADD KEY `rela_tabla_06_04` (`rela_tabla_proyecto_04`);

--
-- Indices de la tabla `tabla_proy_data_05`
--
ALTER TABLE `tabla_proy_data_05`
  ADD PRIMARY KEY (`Tabla_Proy_Data_05_Id`),
  ADD KEY `rela_tabla_05_04` (`rela_tabla_proyecto_04`);

--
-- Indices de la tabla `tabla_pventa_15`
--
ALTER TABLE `tabla_pventa_15`
  ADD PRIMARY KEY (`Tabla_PVenta_15_Id`),
  ADD KEY `rela_tabla_05_15` (`rela_tabla_proy_data_05`);

--
-- Indices de la tabla `tabla_tabono_13`
--
ALTER TABLE `tabla_tabono_13`
  ADD PRIMARY KEY (`Tabla_TAbono_13_Id`),
  ADD KEY `rela_tabla_07_13` (`rela_tabla_ctavirtual_07`);

--
-- Indices de la tabla `tabla_transac_08`
--
ALTER TABLE `tabla_transac_08`
  ADD PRIMARY KEY (`Tabla_Transac_08_Id`),
  ADD KEY `tabla_transac_08_ibfk_1` (`rela_tabla_ctavirtual_07`);

--
-- Indices de la tabla `tabla_ttransac_09`
--
ALTER TABLE `tabla_ttransac_09`
  ADD PRIMARY KEY (`Tabla_TTransac_09_Id`),
  ADD KEY `rela_tabla_transac_08` (`rela_tabla_transac_08`);

--
-- Indices de la tabla `tabla_usuario_01`
--
ALTER TABLE `tabla_usuario_01`
  ADD PRIMARY KEY (`Tabla_Usuario_01_Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_cuenta_03`
--
ALTER TABLE `tabla_cuenta_03`
  MODIFY `tabla_cuenta_03_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabla_domicilio_02`
--
ALTER TABLE `tabla_domicilio_02`
  MODIFY `tabla_domicilio_02_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabla_localidades_16`
--
ALTER TABLE `tabla_localidades_16`
  MODIFY `Tabla_Localidades_16_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabla_provincias_10`
--
ALTER TABLE `tabla_provincias_10`
  MODIFY `Tabla_Provincias_10_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabla_usuario_01`
--
ALTER TABLE `tabla_usuario_01`
  MODIFY `Tabla_Usuario_01_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tabla_ctavirtual_07`
--
ALTER TABLE `tabla_ctavirtual_07`
  ADD CONSTRAINT `rela_tabla_01_07` FOREIGN KEY (`rela_tabla_cuenta_03`) REFERENCES `tabla_cuenta_03` (`tabla_cuenta_03_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabla_cuenta_03`
--
ALTER TABLE `tabla_cuenta_03`
  ADD CONSTRAINT `rela_tabla_01_03` FOREIGN KEY (`rela_tabla_usuario_01`) REFERENCES `tabla_usuario_01` (`Tabla_Usuario_01_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabla_domicilio_02`
--
ALTER TABLE `tabla_domicilio_02`
  ADD CONSTRAINT `rela_tabla_01_02` FOREIGN KEY (`rela_tabla_usuario_01`) REFERENCES `tabla_usuario_01` (`Tabla_Usuario_01_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabla_localidades_16`
--
ALTER TABLE `tabla_localidades_16`
  ADD CONSTRAINT `rela_tabla_10_16` FOREIGN KEY (`rela_Tabla_Provincias_10`) REFERENCES `tabla_provincias_10` (`Tabla_Provincias_10_Id`);

--
-- Filtros para la tabla `tabla_mensajeria_12`
--
ALTER TABLE `tabla_mensajeria_12`
  ADD CONSTRAINT `tabla_mensajeria_12_ibfk_1` FOREIGN KEY (`rela_tabla_usuario_01`) REFERENCES `tabla_usuario_01` (`Tabla_Usuario_01_Id`);

--
-- Filtros para la tabla `tabla_objetivos_14`
--
ALTER TABLE `tabla_objetivos_14`
  ADD CONSTRAINT `tabla_objetivos_14_ibfk_1` FOREIGN KEY (`rela_tabla_proy_data_05`) REFERENCES `tabla_proy_data_05` (`Tabla_Proy_Data_05_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabla_provincias_10`
--
ALTER TABLE `tabla_provincias_10`
  ADD CONSTRAINT `rela_tabla_02_10` FOREIGN KEY (`rela_tabla_domicilio_02`) REFERENCES `tabla_domicilio_02` (`tabla_domicilio_02_Id`);

--
-- Filtros para la tabla `tabla_proyecto_04`
--
ALTER TABLE `tabla_proyecto_04`
  ADD CONSTRAINT `rela_tabla_04_11` FOREIGN KEY (`rela_tabla_biblioteca_11`) REFERENCES `tabla_biblioteca_11` (`Tabla_Biblioteca_11_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tabla_proyecto_04_ibfk_1` FOREIGN KEY (`rela_tabla_usuario_01`) REFERENCES `tabla_usuario_01` (`Tabla_Usuario_01_Id`);

--
-- Filtros para la tabla `tabla_proy_bienes_06`
--
ALTER TABLE `tabla_proy_bienes_06`
  ADD CONSTRAINT `rela_tabla_06_04` FOREIGN KEY (`rela_tabla_proyecto_04`) REFERENCES `tabla_proyecto_04` (`Tabla_Proyecto_04_Id`);

--
-- Filtros para la tabla `tabla_proy_data_05`
--
ALTER TABLE `tabla_proy_data_05`
  ADD CONSTRAINT `rela_tabla_05_04` FOREIGN KEY (`rela_tabla_proyecto_04`) REFERENCES `tabla_proyecto_04` (`Tabla_Proyecto_04_Id`);

--
-- Filtros para la tabla `tabla_pventa_15`
--
ALTER TABLE `tabla_pventa_15`
  ADD CONSTRAINT `rela_tabla_05_15` FOREIGN KEY (`rela_tabla_proy_data_05`) REFERENCES `tabla_proy_data_05` (`Tabla_Proy_Data_05_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabla_tabono_13`
--
ALTER TABLE `tabla_tabono_13`
  ADD CONSTRAINT `rela_tabla_07_13` FOREIGN KEY (`rela_tabla_ctavirtual_07`) REFERENCES `tabla_ctavirtual_07` (`Tabla_CtaVirtual_07_Id`);

--
-- Filtros para la tabla `tabla_transac_08`
--
ALTER TABLE `tabla_transac_08`
  ADD CONSTRAINT `tabla_transac_08_ibfk_1` FOREIGN KEY (`rela_tabla_ctavirtual_07`) REFERENCES `tabla_ctavirtual_07` (`Tabla_CtaVirtual_07_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tabla_ttransac_09`
--
ALTER TABLE `tabla_ttransac_09`
  ADD CONSTRAINT `tabla_ttransac_09_ibfk_1` FOREIGN KEY (`rela_tabla_transac_08`) REFERENCES `tabla_transac_08` (`Tabla_Transac_08_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
