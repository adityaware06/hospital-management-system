CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `b_id` int NOT NULL AUTO_INCREMENT,
  `b_date` date DEFAULT NULL,
  `d_charge` int DEFAULT NULL,
  `p_method` varchar(20) DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `patient` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (2,'2023-08-28',1000,'Cash',1),(3,'2023-08-28',1000,'Cash',1),(4,'2023-08-28',1000,'Cash',1),(5,'2023-08-28',1000,'Cash',1),(6,'2023-08-28',1000,'Cash',1),(7,'2023-08-28',1000,'Cash',1),(8,'2023-08-28',1000,'Cash',1),(9,'2023-08-28',1000,'Cash',1),(10,'2023-08-28',1000,'Cash',1),(11,'2023-08-28',1000,'Cash',1),(12,'2023-08-28',1000,'Cash',1),(13,'2023-08-28',1000,'Cash',1),(14,'2023-08-28',1000,'Cash',1),(15,'2023-08-28',1000,'Cash',1),(16,'2023-08-28',1000,'Cash',1),(17,'2023-08-28',1000,'Cash',1),(18,'2023-08-28',1000,'Cash',1),(19,'2023-08-28',1000,'Cash',1),(20,'2023-08-28',1000,'Cash',1),(21,'2023-08-28',1000,'Cash',1),(22,'2023-08-28',1000,'Cash',1),(23,'2023-08-28',1000,'Cash',1),(24,'2023-08-28',500,'Cash',3),(25,'2023-08-28',1000,'Cash',1),(26,'2023-08-28',1000,'UPI',1),(27,'2023-08-28',1000,'Cash',3),(28,'2023-08-29',1000,'Cash',1),(29,'2023-08-29',1000,'Cash',1),(30,'2023-08-29',1000,'Cash',1),(31,'2023-08-29',1000,'Cash',1),(32,'2023-08-29',500,'UPI',1),(33,'2023-08-29',500,'UPI',1),(34,'2023-08-29',500,'UPI',1),(35,'2023-08-29',500,'UPI',1),(36,'2023-08-29',500,'UPI',1),(37,'2023-08-29',500,'UPI',1),(38,'2023-08-29',500,'Card',1),(39,'2023-08-29',500,'Card',1),(40,'2023-08-29',1000,'Cash',1),(41,'2023-08-29',NULL,'Cash',1),(42,'2023-08-29',500,'Cash',3),(43,'2023-08-29',1000,'Cash',3),(44,'2023-08-29',1000,'Cash',3),(45,'2023-08-29',1000,'Cash',1),(46,'2023-08-29',1000,'Cash',3),(47,'2023-08-29',1000,'Cash',1),(48,'2023-08-30',1000,'Cash',2),(49,'2023-08-30',1000,'Cash',2),(50,'2023-08-30',1000,'UPI',3),(51,'2023-08-30',1000,'Cash',3),(52,'2023-08-30',1000,'UPI',1),(53,'2023-08-30',1000,'Cash',4),(54,'2023-08-30',1000,'Cash',1);
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30  9:23:01