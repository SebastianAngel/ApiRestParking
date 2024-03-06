CREATE DATABASE  IF NOT EXISTS `parqueadero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `parqueadero`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: parqueadero
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `registros`
--

DROP TABLE IF EXISTS `registros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registros` (
  `placa` varchar(6) NOT NULL,
  `tipo_vehiculo` varchar(10) NOT NULL,
  `tiempo` datetime NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`placa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registros`
--

LOCK TABLES `registros` WRITE;
/*!40000 ALTER TABLE `registros` DISABLE KEYS */;
INSERT INTO `registros` VALUES ('BSL744','carro','2024-03-16 19:20:07','2024-03-06 16:25:09','2024-03-06 16:25:09'),('DHX190','carro','2023-02-21 19:20:07','2024-03-06 16:25:09','2024-03-06 16:25:09'),('DYV785','moto','2024-01-31 20:10:16','2024-03-06 16:25:10','2024-03-06 16:25:10'),('FTQ501','moto','2023-09-18 17:25:16','2024-03-06 16:25:10','2024-03-06 16:25:10'),('GIK673','moto','2024-01-06 10:30:07','2024-03-06 16:25:10','2024-03-06 16:25:10'),('JUF117','moto','2024-01-18 11:25:16','2024-03-06 16:25:10','2024-03-06 16:25:10'),('KDE344','carro','2024-03-02 08:14:07','2024-03-06 16:25:09','2024-03-06 16:25:09'),('KFG148','moto','2023-12-31 04:30:15','2024-03-06 16:25:10','2024-03-06 16:25:10'),('MLZ234','carro','2024-01-19 08:14:07','2024-03-06 16:25:09','2024-03-06 16:25:09'),('OFU126','moto','2023-11-15 04:30:15','2024-03-06 16:25:10','2024-03-06 16:25:10'),('OTO392','moto','2023-08-03 12:18:02','2024-03-06 16:25:10','2024-03-06 16:25:10'),('RDN561','carro','2024-02-21 19:20:07','2024-03-06 16:25:09','2024-03-06 16:25:09'),('TSH314','moto','2023-02-15 02:15:15','2024-03-06 16:25:10','2024-03-06 16:25:10'),('WZZ461','moto','2024-03-06 10:30:07','2024-03-06 16:25:09','2024-03-06 16:25:09'),('ZWW875','moto','2023-08-03 12:18:02','2024-03-06 16:25:10','2024-03-06 16:25:10');
/*!40000 ALTER TABLE `registros` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06 11:57:19
