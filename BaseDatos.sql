-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema reservas
--

CREATE DATABASE IF NOT EXISTS reservas;
USE reservas;

--
-- Definition of table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
CREATE TABLE `calendario` (
  `idCalendario` int(10) unsigned NOT NULL auto_increment,
  `idDestino` int(10) unsigned NOT NULL,
  `fechaHora` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `Observaciones` varchar(500) NOT NULL,
  PRIMARY KEY  (`idCalendario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendario`
--

/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;


--
-- Definition of table `destinos`
--

DROP TABLE IF EXISTS `destinos`;
CREATE TABLE `destinos` (
  `idDestino` int(10) unsigned NOT NULL auto_increment,
  `ciudad` varchar(45) NOT NULL,
  `pais` varchar(45) NOT NULL,
  `puntosTuristicos` varchar(500) NOT NULL,
  `descripcion` varchar(20000) NOT NULL,
  `imagenes` varchar(20000) NOT NULL,
  `observaciones` varchar(20000) NOT NULL,
  `idCalendario` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`idDestino`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinos`
--

/*!40000 ALTER TABLE `destinos` DISABLE KEYS */;
/*!40000 ALTER TABLE `destinos` ENABLE KEYS */;


--
-- Definition of table `guias`
--

DROP TABLE IF EXISTS `guias`;
CREATE TABLE `guias` (
  `idGuia` int(10) unsigned NOT NULL auto_increment,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(20) NOT NULL,
  `dni` varchar(12) NOT NULL,
  `idDestino` int(10) unsigned NOT NULL,
  `observaciones` varchar(500) default NULL,
  `foto` varchar(200) default NULL,
  PRIMARY KEY  (`idGuia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guias`
--

/*!40000 ALTER TABLE `guias` DISABLE KEYS */;
/*!40000 ALTER TABLE `guias` ENABLE KEYS */;


--
-- Definition of table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
CREATE TABLE `reservas` (
  `idReserva` int(10) unsigned NOT NULL auto_increment,
  `idGuia` int(10) unsigned NOT NULL,
  `observaciones` varchar(20000) NOT NULL,
  `promociones` varchar(20000) NOT NULL,
  `precio` double NOT NULL,
  `fechaHora` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY  (`idReserva`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservas`
--

/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;


--
-- Definition of table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefono` int(10) unsigned NOT NULL,
  `password` varchar(45) NOT NULL,
  `observaciones` varchar(45) NOT NULL,
  PRIMARY KEY  USING BTREE (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`nombre`,`apellidos`,`email`,`telefono`,`password`,`observaciones`) VALUES 
 ('ana','garcia','anagarcia',65659,'gsggdh',''),
 ('lucia','merino','arroba',89857,'pass','sss'),
 ('mama','oo','asi',99851,'cdfd','dd'),
 ('Charly','babas','char',625318161,'alin','sss'),
 ('jnk','sasa','dasa',3343434,'asd','ds'),
 ('hfgjf','dfgdfg','dfgdhd',555,'ffh','dfhdfh'),
 ('diego','forero','diegito',652,'fds','fdsfsds'),
 ('Mónica','Meirno','dsgnkjfg',6258,'vdsjgbsj','sdgds'),
 ('alex','jfhjf','fdd',8888,'fdd','dzvds'),
 ('eeee','rter','goooo',8888,'jjhchg','jjj'),
 ('hvh','hjvhj','hhh',8888,'554kjnjk','hvh'),
 ('maria','gdfhdf','mari',6885,'fgdfh',''),
 ('pajaro','ggg','pajarito',9898,'fdhd','dgfg'),
 ('ro','merino','royadri',4444,'pet','yiha'),
 ('simba','merino','simba',9988,'dfdaf','fdfdf');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
