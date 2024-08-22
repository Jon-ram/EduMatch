-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: edumatch2
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `anuncios`
--

DROP TABLE IF EXISTS `anuncios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anuncios` (
  `idAnuncios` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(70) DEFAULT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `Fecha_publicacion` date DEFAULT NULL,
  `Fecha_vencimiento` date DEFAULT NULL,
  `idVideo` int DEFAULT NULL,
  PRIMARY KEY (`idAnuncios`),
  KEY `idVideo` (`idVideo`),
  CONSTRAINT `anuncios_ibfk_1` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncios`
--

LOCK TABLES `anuncios` WRITE;
/*!40000 ALTER TABLE `anuncios` DISABLE KEYS */;
/*!40000 ALTER TABLE `anuncios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_usuario`
--

DROP TABLE IF EXISTS `bitacora_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_usuario` (
  `idbitacora_usuario` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `comentario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbitacora_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_usuario`
--

LOCK TABLES `bitacora_usuario` WRITE;
/*!40000 ALTER TABLE `bitacora_usuario` DISABLE KEYS */;
INSERT INTO `bitacora_usuario` VALUES (5,11,'mariana sas asa','2024-08-18','Nuevo usuario agregado'),(6,11,'mariana','2024-08-18','Usuario eliminado'),(7,12,'bryan nose noseee','2024-08-18','Nuevo usuario agregado');
/*!40000 ALTER TABLE `bitacora_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacora_video`
--

DROP TABLE IF EXISTS `bitacora_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacora_video` (
  `idbitacora_video` int NOT NULL AUTO_INCREMENT,
  `idVideo` varchar(45) DEFAULT NULL,
  `idUsuario` varchar(45) DEFAULT NULL,
  `Titulo` varchar(50) DEFAULT NULL,
  `fecha` time DEFAULT NULL,
  `comentario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idbitacora_video`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacora_video`
--

LOCK TABLES `bitacora_video` WRITE;
/*!40000 ALTER TABLE `bitacora_video` DISABLE KEYS */;
INSERT INTO `bitacora_video` VALUES (5,'2','1','hola','22:41:41','Se eliminó un video'),(6,'3','1','Reporte','22:41:55','Se eliminó un video'),(7,'5','1','Desarrollo ','22:45:27','Se subió un video');
/*!40000 ALTER TABLE `bitacora_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `idCarrera` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(50) DEFAULT NULL,
  `Duracion` varchar(70) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria','2 años','ingenieria ','Desarrollo de Software multiplataforma');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idComentario` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int DEFAULT NULL,
  `idVideo` int DEFAULT NULL,
  `Texto` text NOT NULL,
  PRIMARY KEY (`idComentario`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idVideo` (`idVideo`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idCurso` int NOT NULL AUTO_INCREMENT,
  `Estado` varchar(50) DEFAULT NULL,
  `Titulo` varchar(70) DEFAULT NULL,
  `idCarrera` int DEFAULT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCurso`),
  KEY `idCarrera` (`idCarrera`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Disponible','Practica',1,'2012-12-24','0001-12-25','practica');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `cursos_disponibles`
--

DROP TABLE IF EXISTS `cursos_disponibles`;
/*!50001 DROP VIEW IF EXISTS `cursos_disponibles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cursos_disponibles` AS SELECT 
 1 AS `idCurso`,
 1 AS `Titulo`,
 1 AS `descripcion`,
 1 AS `idCarrera`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cursos_no_disponibles`
--

DROP TABLE IF EXISTS `cursos_no_disponibles`;
/*!50001 DROP VIEW IF EXISTS `cursos_no_disponibles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cursos_no_disponibles` AS SELECT 
 1 AS `idCurso`,
 1 AS `Titulo`,
 1 AS `descripcion`,
 1 AS `idCarrera`,
 1 AS `Estado`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `practica`
--

DROP TABLE IF EXISTS `practica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practica` (
  `idPractica` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(100) DEFAULT NULL,
  `Fecha_inicio` date DEFAULT NULL,
  `Fecha_fin` date DEFAULT NULL,
  `Estado` varchar(100) DEFAULT NULL,
  `Descripcion` varchar(150) DEFAULT NULL,
  `idCurso` int DEFAULT NULL,
  PRIMARY KEY (`idPractica`),
  KEY `idCurso` (`idCurso`),
  CONSTRAINT `practica_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practica`
--

LOCK TABLES `practica` WRITE;
/*!40000 ALTER TABLE `practica` DISABLE KEYS */;
/*!40000 ALTER TABLE `practica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacciones`
--

DROP TABLE IF EXISTS `reacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reacciones` (
  `idReaccion` int NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(20) DEFAULT NULL,
  `idVideo` int DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  `Fecha_reaccion` date DEFAULT NULL,
  PRIMARY KEY (`idReaccion`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idVideo` (`idVideo`),
  CONSTRAINT `reacciones_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `reacciones_ibfk_2` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacciones`
--

LOCK TABLES `reacciones` WRITE;
/*!40000 ALTER TABLE `reacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `reacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido_P` varchar(50) NOT NULL,
  `Apellido_M` varchar(50) NOT NULL,
  `Edad` int NOT NULL,
  `Contraseña` varchar(255) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Rol` enum('Administrador','Usuario') DEFAULT NULL,
  `fecha_reg` date DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Agustin','Jimenez','Castillo',20,'1234','230365@utxicotepec.edu.mx','7841461353','Administrador',NULL),(2,'Karen','ssss','sssss',19,'466342','asd@ut','23455333434','Usuario',NULL),(12,'bryan','nose','noseee',19,'12345','jsJSJ@JJD','8974738575','Usuario','2024-08-18');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_usuario_insert` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (idUsuario, nombre, fecha, comentario)
    VALUES (NEW.idUsuario, CONCAT(NEW.Nombre, ' ', NEW.Apellido_P, ' ', NEW.Apellido_M), CURDATE(), 'Nuevo usuario agregado');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_usuario_update` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (idUsuario, nombre, fecha, comentario)
    VALUES (NEW.idUsuario, CONCAT(NEW.Nombre, ' ', NEW.Apellido_P, ' ', NEW.Apellido_M), CURDATE(), ' usuario actualizado');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_usuario_delete` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (idUsuario, nombre, fecha, comentario)
    VALUES (OLD.idUsuario, CONCAT(OLD.Nombre, ' ', OLD.Apellido_P, ' ', OLD.Apellido_M), CURDATE(), 'Nuevo usuario agregado');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `idVideo` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(45) DEFAULT NULL,
  `URL_video` varchar(45) DEFAULT NULL,
  `idUsuario` int DEFAULT NULL,
  `Fecha_publicacion` date DEFAULT NULL,
  `idCarrera` int DEFAULT NULL,
  `Descripcion` varchar(45) DEFAULT NULL,
  `Duracion` time DEFAULT NULL,
  `total_comentario` int DEFAULT NULL,
  `total_reacciones` int DEFAULT NULL,
  `total_vistas` int DEFAULT NULL,
  PRIMARY KEY (`idVideo`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idCarrera` (`idCarrera`),
  CONSTRAINT `video_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `video_ibfk_2` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (5,'Desarrollo ','sn',1,'2024-08-18',1,'sn','05:00:00',NULL,NULL,100);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_video_insert` AFTER INSERT ON `video` FOR EACH ROW BEGIN
    INSERT INTO bitacora_video (idVideo, idUsuario, titulo, fecha, comentario)
    VALUES (NEW.idVideo, NEW.idUsuario, NEW.titulo, curdate(), 'Se subió un video');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_video_delete` AFTER DELETE ON `video` FOR EACH ROW BEGIN
    INSERT INTO bitacora_video (idVideo, idUsuario, titulo, fecha, comentario)
    VALUES (OLD.idVideo, OLD.idUsuario, OLD.titulo, curdate(), 'Se eliminó un video');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `videos_mayor_comentario`
--

DROP TABLE IF EXISTS `videos_mayor_comentario`;
/*!50001 DROP VIEW IF EXISTS `videos_mayor_comentario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `videos_mayor_comentario` AS SELECT 
 1 AS `idVideo`,
 1 AS `Titulo`,
 1 AS `total_comentario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `videos_mayor_vista`
--

DROP TABLE IF EXISTS `videos_mayor_vista`;
/*!50001 DROP VIEW IF EXISTS `videos_mayor_vista`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `videos_mayor_vista` AS SELECT 
 1 AS `idVideo`,
 1 AS `Titulo`,
 1 AS `total_vistas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `videos_mayores_reacciones`
--

DROP TABLE IF EXISTS `videos_mayores_reacciones`;
/*!50001 DROP VIEW IF EXISTS `videos_mayores_reacciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `videos_mayores_reacciones` AS SELECT 
 1 AS `idVideo`,
 1 AS `Titulo`,
 1 AS `total_reacciones`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cursos_disponibles`
--

/*!50001 DROP VIEW IF EXISTS `cursos_disponibles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cursos_disponibles` AS select `curso`.`idCurso` AS `idCurso`,`curso`.`Titulo` AS `Titulo`,`curso`.`descripcion` AS `descripcion`,`curso`.`idCarrera` AS `idCarrera`,`curso`.`Estado` AS `Estado` from `curso` where (`curso`.`Estado` = 'Disponible') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cursos_no_disponibles`
--

/*!50001 DROP VIEW IF EXISTS `cursos_no_disponibles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cursos_no_disponibles` AS select `curso`.`idCurso` AS `idCurso`,`curso`.`Titulo` AS `Titulo`,`curso`.`descripcion` AS `descripcion`,`curso`.`idCarrera` AS `idCarrera`,`curso`.`Estado` AS `Estado` from `curso` where (`curso`.`Estado` = 'No Disponible') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `videos_mayor_comentario`
--

/*!50001 DROP VIEW IF EXISTS `videos_mayor_comentario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videos_mayor_comentario` AS select `video`.`idVideo` AS `idVideo`,`video`.`Titulo` AS `Titulo`,`video`.`total_comentario` AS `total_comentario` from `video` order by `video`.`total_comentario` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `videos_mayor_vista`
--

/*!50001 DROP VIEW IF EXISTS `videos_mayor_vista`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videos_mayor_vista` AS select `video`.`idVideo` AS `idVideo`,`video`.`Titulo` AS `Titulo`,`video`.`total_vistas` AS `total_vistas` from `video` order by `video`.`total_vistas` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `videos_mayores_reacciones`
--

/*!50001 DROP VIEW IF EXISTS `videos_mayores_reacciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `videos_mayores_reacciones` AS select `video`.`idVideo` AS `idVideo`,`video`.`Titulo` AS `Titulo`,`video`.`total_reacciones` AS `total_reacciones` from `video` order by `video`.`total_reacciones` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-20  6:41:10
