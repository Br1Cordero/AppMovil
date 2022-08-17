CREATE DATABASE  IF NOT EXISTS `transporte` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `transporte`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: transporte
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `bus_coop`
--

DROP TABLE IF EXISTS `bus_coop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_coop` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Coop` int NOT NULL,
  `Bus` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Coop` (`Coop`),
  KEY `Bus` (`Bus`),
  CONSTRAINT `bus_coop_ibfk_1` FOREIGN KEY (`Coop`) REFERENCES `coop` (`Id`),
  CONSTRAINT `bus_coop_ibfk_2` FOREIGN KEY (`Bus`) REFERENCES `buses` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_coop`
--

LOCK TABLES `bus_coop` WRITE;
/*!40000 ALTER TABLE `bus_coop` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus_coop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buses` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Matricula` varchar(10) NOT NULL,
  `Conductor` int NOT NULL,
  `Oficial` int NOT NULL,
  `Asientos` int NOT NULL,
  `Estado` int NOT NULL,
  `Disco` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Conductor` (`Conductor`),
  KEY `Oficial` (`Oficial`),
  KEY `Estado` (`Estado`),
  CONSTRAINT `buses_ibfk_1` FOREIGN KEY (`Conductor`) REFERENCES `cond` (`Id`),
  CONSTRAINT `buses_ibfk_2` FOREIGN KEY (`Oficial`) REFERENCES `ofc` (`Id`),
  CONSTRAINT `buses_ibfk_3` FOREIGN KEY (`Estado`) REFERENCES `estado` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `c_r`
--

DROP TABLE IF EXISTS `c_r`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_r` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Coop` int NOT NULL,
  `Ruta` int NOT NULL,
  `Estado` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Coop` (`Coop`),
  KEY `Ruta` (`Ruta`),
  KEY `Estado` (`Estado`),
  CONSTRAINT `c_r_ibfk_1` FOREIGN KEY (`Coop`) REFERENCES `coop` (`Id`),
  CONSTRAINT `c_r_ibfk_2` FOREIGN KEY (`Ruta`) REFERENCES `rutas` (`Id`),
  CONSTRAINT `c_r_ibfk_3` FOREIGN KEY (`Estado`) REFERENCES `estado` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_r`
--

LOCK TABLES `c_r` WRITE;
/*!40000 ALTER TABLE `c_r` DISABLE KEYS */;
/*!40000 ALTER TABLE `c_r` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ced` int NOT NULL,
  `Apellidos` varchar(150) NOT NULL,
  `Nombres` varchar(150) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `F_C` datetime DEFAULT (curdate()),
  `F_M` datetime DEFAULT (curdate()),
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,151073590,'Cordero Sanchesz','Bruno Mateo','brunomateoc7@gmail.com',NULL,NULL),(2,151073590,'Cordero Sanchesz','Bruno Mateo','brunomateoc7@gmail.com',NULL,NULL),(3,151073590,'Cordero Sanchesz','Bruno Mateo','brunomateoc7@gmail.com','2022-08-16 00:00:00','2022-08-16 00:00:00'),(4,151073591,'Cordero Sanchesz','Bruno Mateo','brunomateoc7@gmail.com','2022-08-16 00:00:00','2022-08-16 00:00:00'),(5,151053591,'Cordero Sanchesz','Bruno Mateo','brunomateoc7@gmail.com','2022-08-16 00:00:00','2022-08-16 00:00:00');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cond`
--

DROP TABLE IF EXISTS `cond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cond` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ced` int NOT NULL,
  `Apellidos` varchar(150) NOT NULL,
  `Nombres` varchar(150) NOT NULL,
  `Estado` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Estado` (`Estado`),
  CONSTRAINT `cond_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `estado` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cond`
--

LOCK TABLES `cond` WRITE;
/*!40000 ALTER TABLE `cond` DISABLE KEYS */;
/*!40000 ALTER TABLE `cond` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coop`
--

DROP TABLE IF EXISTS `coop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coop` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `Img` varchar(250) NOT NULL,
  `Bus` int NOT NULL,
  `F_C` datetime NOT NULL,
  `Estado` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Estado` (`Estado`),
  CONSTRAINT `coop_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `estado` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coop`
--

LOCK TABLES `coop` WRITE;
/*!40000 ALTER TABLE `coop` DISABLE KEYS */;
/*!40000 ALTER TABLE `coop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Descrip` varchar(10) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ofc`
--

DROP TABLE IF EXISTS `ofc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ofc` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ced` int NOT NULL,
  `Apellidos` varchar(150) NOT NULL,
  `Nombres` varchar(150) NOT NULL,
  `Estado` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Estado` (`Estado`),
  CONSTRAINT `ofc_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `estado` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ofc`
--

LOCK TABLES `ofc` WRITE;
/*!40000 ALTER TABLE `ofc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Des` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'ADMIN'),(2,'CLIENTE'),(3,'TRABAJADOR');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rutas`
--

DROP TABLE IF EXISTS `rutas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutas` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `salida` varchar(150) NOT NULL,
  `destino` varchar(150) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `Estado` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Estado` (`Estado`),
  CONSTRAINT `rutas_ibfk_1` FOREIGN KEY (`Estado`) REFERENCES `estado` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutas`
--

LOCK TABLES `rutas` WRITE;
/*!40000 ALTER TABLE `rutas` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajdores`
--

DROP TABLE IF EXISTS `trabajdores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajdores` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Ced` int NOT NULL,
  `Apellidos` varchar(150) NOT NULL,
  `Nombres` varchar(150) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `user` varchar(13) NOT NULL,
  `password` varchar(150) NOT NULL,
  `F_C` datetime DEFAULT (curdate()),
  `F_M` datetime DEFAULT (curdate()),
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajdores`
--

LOCK TABLES `trabajdores` WRITE;
/*!40000 ALTER TABLE `trabajdores` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajdores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `u_p`
--

DROP TABLE IF EXISTS `u_p`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `u_p` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `User` int NOT NULL,
  `Perfil` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `User` (`User`),
  KEY `Perfil` (`Perfil`),
  CONSTRAINT `u_p_ibfk_1` FOREIGN KEY (`User`) REFERENCES `usuarios` (`Id`),
  CONSTRAINT `u_p_ibfk_2` FOREIGN KEY (`Perfil`) REFERENCES `perfil` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `u_p`
--

LOCK TABLES `u_p` WRITE;
/*!40000 ALTER TABLE `u_p` DISABLE KEYS */;
INSERT INTO `u_p` VALUES (1,6,2);
/*!40000 ALTER TABLE `u_p` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'151073590','151073590'),(2,'151073590','151073590'),(3,'151073590','151073590'),(4,'151073590','151073590'),(5,'151073591','151073591'),(6,'151053591','151053591');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'transporte'
--
/*!50003 DROP PROCEDURE IF EXISTS `Clientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Clientes`(
in Ced int, 
in Apellidos varchar(150), 
in Nombres varchar(150), 
in Email varchar(250))
BEGIN

declare Usuario int;
insert into usuarios (user, password) values (Ced, Ced);
insert into cliente (Ced, Apellidos, Nombres, Email, F_C,F_M ) 
values (Ced, Apellidos, Nombres, Email, curdate() ,curdate() );
select * from cliente;
set  Usuario = (select Id from usuarios where user = Ced);
INSERT INTO u_p (`User`, `Perfil`) VALUES ( Usuario, '2');


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-16 20:09:31
