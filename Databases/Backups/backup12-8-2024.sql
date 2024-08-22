CREATE DATABASE  IF NOT EXISTS `edumatch` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `edumatch`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: edumatch
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
  `idAnuncios` int NOT NULL AUTO_INCREMENT COMMENT 'id del anuncio',
  `Titulo` varchar(70) DEFAULT NULL COMMENT 'Agrega un titulo ',
  `Descripcion` varchar(150) DEFAULT NULL COMMENT 'agrega uan descripcion',
  `Fecha_publicacion` date DEFAULT NULL COMMENT 'ingresa fecha de publicacion',
  `Fecha_vencimiento` date DEFAULT NULL COMMENT 'ingresa fecha de vencimiento',
  `idVideo` int DEFAULT NULL COMMENT 'id del video',
  PRIMARY KEY (`idAnuncios`),
  KEY `anuncios_ibfk_1` (`idVideo`),
  CONSTRAINT `anuncios_ibfk_1` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anuncios`
--

LOCK TABLES `anuncios` WRITE;
/*!40000 ALTER TABLE `anuncios` DISABLE KEYS */;
INSERT INTO `anuncios` VALUES (1,'Papas','anuncio de sabritas','2024-12-03','2025-12-03',1),(2,'Galletas','anuncio de galletas','2024-12-04','2025-12-03',2),(3,'Telefonia','anuncio de Samsung','2024-12-04','2025-12-01',3),(4,'Aplicacion','aplicacion abcd','2024-12-04','2025-12-01',4);
/*!40000 ALTER TABLE `anuncios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `idCarrera` int NOT NULL AUTO_INCREMENT COMMENT 'id de la carrera',
  `Tipo` varchar(50) DEFAULT NULL COMMENT 'ingresa el tipo de carrera',
  `Duracion` varchar(70) DEFAULT NULL COMMENT 'duracion de la carrera',
  `Descripcion` varchar(200) DEFAULT NULL COMMENT 'ingresa la descripcion',
  `Nombre` varchar(100) DEFAULT NULL COMMENT 'ingresa el nombre',
  PRIMARY KEY (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria ','3 años','Ingeniera enfocada en la realizacion de software ','Desarrollo de software'),(2,'Ingenieria ','3 años ','Ingeniria en sistemas computacionales ','Sistemas '),(3,'Licenciatura ','6 año ','Carrera enfocada al ambito de la medicina ','Medicina '),(4,'licenciatura ','4 años','Carrera enfocada en el ambito del derecho ','Derecho'),(5,'Licenciatura','4 años ','Carrera enfocada en la docencia ','Educacion');
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `idComentario` int NOT NULL AUTO_INCREMENT COMMENT 'id del comentario',
  `idUsuario` int DEFAULT NULL COMMENT 'id del usuario',
  `idVideo` int DEFAULT NULL COMMENT 'id del texto ',
  `Texto` text NOT NULL COMMENT 'ingresa comentario ',
  PRIMARY KEY (`idComentario`),
  KEY `comentario_ibfk_1` (`idUsuario`),
  KEY `comentario_ibfk_2` (`idVideo`),
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `comentario_ibfk_2` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,1,1,'Me encanta'),(2,2,1,'Exelente video'),(3,3,1,'Exelente explicacion'),(4,4,1,'Exelente'),(5,1,2,'Muy buen video'),(6,2,2,'Muy bien explicado');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `curso` (
  `idCurso` int NOT NULL AUTO_INCREMENT COMMENT 'id del curso ',
  `Estado` varchar(50) DEFAULT NULL COMMENT 'ingresa el estado del curso ',
  `Titulo` varchar(70) DEFAULT NULL COMMENT 'ingrsa el titulo del  curso',
  `idCarrera` int DEFAULT NULL COMMENT 'id de la carrera ',
  `Fecha_inicio` date DEFAULT NULL COMMENT 'ingresa la fecha de inicio ',
  `fecha_fin` date DEFAULT NULL COMMENT 'ingresa la fecha finalización ',
  PRIMARY KEY (`idCurso`),
  KEY `curso_ibfk_1` (`idCarrera`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'Activo','Informatica',1,'2024-07-12','2024-08-24'),(2,'Activo ','Sistemas',2,'2024-07-12','2024-08-24'),(3,'Activo','Medicina',3,'2024-07-12','2024-08-24'),(4,'Activo','Derecho ',4,'2024-07-12','2024-08-24'),(5,'Activo ','Educacion',5,'2024-07-12','2024-08-24');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `practica`
--

DROP TABLE IF EXISTS `practica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practica` (
  `idPractica` int NOT NULL AUTO_INCREMENT COMMENT 'id de la practica ',
  `Titulo` varchar(100) DEFAULT NULL COMMENT 'ingrese el titulo de practica',
  `Fecha_inicio` date DEFAULT NULL COMMENT 'ingrese la fecha de inicio ',
  `Fecha_fin` date DEFAULT NULL COMMENT 'ingrese la fecha de finalización ',
  `Estado` varchar(100) DEFAULT NULL COMMENT 'ingrse el estado del curso',
  `Descripcion` varchar(150) DEFAULT NULL COMMENT 'ingrese la descripcion del curso ',
  `idCurso` int DEFAULT NULL COMMENT 'id del curso ',
  PRIMARY KEY (`idPractica`),
  KEY `practica_ibfk_1` (`idCurso`),
  CONSTRAINT `practica_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practica`
--

LOCK TABLES `practica` WRITE;
/*!40000 ALTER TABLE `practica` DISABLE KEYS */;
INSERT INTO `practica` VALUES (1,'Informatica','2024-01-03','2024-02-04','Activa','desarrollo de habilidades ',1),(2,'Sistemas ','2024-01-03','2024-02-04','Activa','Descripcion de sistemas',2);
/*!40000 ALTER TABLE `practica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reacciones`
--

DROP TABLE IF EXISTS `reacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reacciones` (
  `idReaccion` int NOT NULL AUTO_INCREMENT COMMENT 'id de la reaccion ',
  `Tipo` varchar(20) DEFAULT NULL COMMENT 'tipo de reaccion (me gusta, no me gusta )',
  `idVideo` int DEFAULT NULL COMMENT 'ingrese el id del video ',
  `idUsuario` int DEFAULT NULL COMMENT 'ingrese ell id del usuario ',
  `Fecha_reaccion` date DEFAULT NULL COMMENT 'ingrese la fecha de la reaccion ',
  PRIMARY KEY (`idReaccion`),
  KEY `reacciones_ibfk_1` (`idUsuario`),
  KEY `reacciones_ibfk_2` (`idVideo`),
  CONSTRAINT `reacciones_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `reacciones_ibfk_2` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reacciones`
--

LOCK TABLES `reacciones` WRITE;
/*!40000 ALTER TABLE `reacciones` DISABLE KEYS */;
INSERT INTO `reacciones` VALUES (1,'Like',1,1,'2024-03-12'),(2,'Like',2,2,'2024-03-12'),(3,'like',2,3,'2024-03-06'),(4,'like',4,4,'2024-03-07'),(5,'like',3,1,'2024-03-05');
/*!40000 ALTER TABLE `reacciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT COMMENT 'ingrese el id del usuario ',
  `Nombre` varchar(50) NOT NULL COMMENT 'ingrese el nombre del ususario ',
  `Apellido_P` varchar(50) NOT NULL COMMENT 'ingrese el apellido paterno del usuario ',
  `Apellido_M` varchar(50) NOT NULL COMMENT 'ingrse el apellido materno del usuario ',
  `Edad` int NOT NULL COMMENT 'ingrese la edad del usuario ',
  `Contraseña` varchar(255) NOT NULL COMMENT 'se guardara la contraseña del usuario ',
  `Correo` varchar(100) NOT NULL COMMENT 'se guardara el correo del ususario ',
  `Telefono` varchar(15) DEFAULT NULL COMMENT 'ingrese el telefono del usuario ',
  `Rol` enum('Administrador','Usuario') DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Agustin','Jimenez','Castillo',19,'abcd123','230365@utxicotepec.edu.mx','7841461353','Administrador'),(2,'Karen ','Hernandez','Negrete',19,'123456','230570@utxicotepec.edu.mx','7461067774','Administrador'),(3,'Brian ','Marquez','Mendoza',19,'abcde','230308@utxicotepec.edu.mx','7641293643','Administrador'),(4,'Jonathan','Reyes ','Ramirez',19,'654321','230410@utxicotepec.edu.mx','7641197292','Administrador');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video` (
  `idVideo` int NOT NULL COMMENT 'ingrese el id del video ',
  `Titulo` varchar(45) DEFAULT NULL COMMENT 'ingrese el titulo del video ',
  `URL_video` varchar(45) DEFAULT NULL COMMENT 'coloque la URL del video ',
  `idUsuario` int DEFAULT NULL COMMENT 'ingres el id del usuario ',
  `Fecha_publicacion` varchar(45) DEFAULT NULL COMMENT 'ingrese la fecha de publicacion del video ',
  `idCarrera` int DEFAULT NULL COMMENT 'ingrese el id de la carrera ',
  `Duracion` varchar(45) DEFAULT NULL COMMENT 'ingrese la duracion de la carrera ',
  `Descripcion` varchar(45) DEFAULT NULL COMMENT 'ingrese la descripción del video ',
  PRIMARY KEY (`idVideo`),
  KEY `idUsuario_idx` (`idUsuario`),
  KEY `idCarrera_idx` (`idCarrera`),
  CONSTRAINT `idCarrera` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`),
  CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'Universidad','https://www.EduMatch?v=fiu-sa8UI4I',1,'2024-12-3',1,'1 min','invitacion de la universidad'),(2,'Introduccion a la carrera de Sistemas ','https://www.EduMatch?v=fiu-sa8UI02',1,'2024-12-4',2,'5 min','Introduccion ala carrera de Sistemas'),(3,'Introduccion a la carrea de Medicina ','https://www.EduMatch?v=fiu-sa8UI03',1,'2024-12-5',3,'5 min ','Introduccion a la carrera de medicina'),(4,'Introduccion a la carrea de Derecho ','https://www.EduMatch?v=fiu-sa8UI04',1,'2024-12-6',4,'5 min','Introducciona la carrera de derecho '),(5,'Introduciion a la carrera de Educacion ','https://www.EduMatch?v=fiu-sa8UI05',1,'2024-12-6',5,'5 min','Introduccion a la carrera de Educacion ');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vistas`
--

DROP TABLE IF EXISTS `vistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vistas` (
  `idVista` int NOT NULL AUTO_INCREMENT COMMENT 'id vista',
  `fecha_reproduccion` varchar(70) DEFAULT NULL COMMENT 'Ingresa fecha de reproduccion',
  `idUsuario` int DEFAULT NULL COMMENT 'id ususario ',
  `idVideo` int DEFAULT NULL COMMENT 'id video ',
  `totalComentario` int DEFAULT NULL COMMENT 'total de comentarios ',
  `total_reacciones` int DEFAULT NULL,
  PRIMARY KEY (`idVista`),
  KEY `vistas_ibfk_1` (`idVideo`),
  KEY `vistas_ibfk_2` (`idUsuario`),
  CONSTRAINT `vistas_ibfk_1` FOREIGN KEY (`idVideo`) REFERENCES `video` (`idVideo`),
  CONSTRAINT `vistas_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vistas`
--

LOCK TABLES `vistas` WRITE;
/*!40000 ALTER TABLE `vistas` DISABLE KEYS */;
INSERT INTO `vistas` VALUES (1,'12/08/2',1,1,2,NULL);
/*!40000 ALTER TABLE `vistas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'edumatch'
--

--
-- Dumping routines for database 'edumatch'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-12 15:23:26
