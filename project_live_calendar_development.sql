-- MySQL dump 10.13  Distrib 5.7.27, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: project_live_calendar_development
-- ------------------------------------------------------
-- Server version	5.7.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arrangements`
--

DROP TABLE IF EXISTS `arrangements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrangements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrangements`
--

LOCK TABLES `arrangements` WRITE;
/*!40000 ALTER TABLE `arrangements` DISABLE KEYS */;
INSERT INTO `arrangements` VALUES (1,'2020-11-09 09:00:00','2020-11-09 10:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(2,'2020-11-09 10:00:00','2020-11-09 11:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(3,'2020-11-09 11:00:00','2020-11-09 12:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(4,'2020-11-09 12:00:00','2020-11-09 13:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(5,'2020-11-09 13:00:00','2020-11-09 14:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(6,'2020-11-09 14:00:00','2020-11-09 15:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(7,'2020-11-09 15:00:00','2020-11-09 16:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(8,'2020-11-09 16:00:00','2020-11-09 17:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(9,'2020-11-09 17:00:00','2020-11-09 18:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(10,'2020-11-10 09:00:00','2020-11-10 10:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(11,'2020-11-10 10:00:00','2020-11-10 11:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(12,'2020-11-10 11:00:00','2020-11-10 12:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(13,'2020-11-10 12:00:00','2020-11-10 13:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(14,'2020-11-10 13:00:00','2020-11-10 14:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(15,'2020-11-10 14:00:00','2020-11-10 15:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(16,'2020-11-10 15:00:00','2020-11-10 16:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(17,'2020-11-10 16:00:00','2020-11-10 17:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(18,'2020-11-10 17:00:00','2020-11-10 18:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(19,'2020-11-11 09:00:00','2020-11-11 10:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(20,'2020-11-11 10:00:00','2020-11-11 11:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(21,'2020-11-11 11:00:00','2020-11-11 12:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(22,'2020-11-11 12:00:00','2020-11-11 13:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(23,'2020-11-11 13:00:00','2020-11-11 14:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(24,'2020-11-11 14:00:00','2020-11-11 15:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(25,'2020-11-11 15:00:00','2020-11-11 16:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(26,'2020-11-11 16:00:00','2020-11-11 17:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(27,'2020-11-11 17:00:00','2020-11-11 18:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(28,'2020-11-12 09:00:00','2020-11-12 10:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(29,'2020-11-12 10:00:00','2020-11-12 11:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(30,'2020-11-12 11:00:00','2020-11-12 12:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(31,'2020-11-12 12:00:00','2020-11-12 13:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(32,'2020-11-12 13:00:00','2020-11-12 14:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(33,'2020-11-12 14:00:00','2020-11-12 15:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(34,'2020-11-12 15:00:00','2020-11-12 16:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(35,'2020-11-12 16:00:00','2020-11-12 17:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(36,'2020-11-12 17:00:00','2020-11-12 18:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(37,'2020-11-13 09:00:00','2020-11-13 10:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(38,'2020-11-13 10:00:00','2020-11-13 11:00:00',1,'2020-11-09 05:20:18','2020-11-09 05:20:18'),(39,'2020-11-13 11:00:00','2020-11-13 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(40,'2020-11-13 12:00:00','2020-11-13 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(41,'2020-11-13 13:00:00','2020-11-13 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(42,'2020-11-13 14:00:00','2020-11-13 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(43,'2020-11-13 15:00:00','2020-11-13 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(44,'2020-11-13 16:00:00','2020-11-13 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(45,'2020-11-13 17:00:00','2020-11-13 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(46,'2020-11-14 09:00:00','2020-11-14 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(47,'2020-11-14 10:00:00','2020-11-14 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(48,'2020-11-14 11:00:00','2020-11-14 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(49,'2020-11-14 12:00:00','2020-11-14 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(50,'2020-11-14 13:00:00','2020-11-14 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(51,'2020-11-14 14:00:00','2020-11-14 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(52,'2020-11-14 15:00:00','2020-11-14 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(53,'2020-11-14 16:00:00','2020-11-14 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(54,'2020-11-14 17:00:00','2020-11-14 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(55,'2020-11-15 09:00:00','2020-11-15 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(56,'2020-11-15 10:00:00','2020-11-15 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(57,'2020-11-15 11:00:00','2020-11-15 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(58,'2020-11-15 12:00:00','2020-11-15 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(59,'2020-11-15 13:00:00','2020-11-15 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(60,'2020-11-15 14:00:00','2020-11-15 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(61,'2020-11-15 15:00:00','2020-11-15 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(62,'2020-11-15 16:00:00','2020-11-15 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(63,'2020-11-15 17:00:00','2020-11-15 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(64,'2020-11-16 09:00:00','2020-11-16 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(65,'2020-11-16 10:00:00','2020-11-16 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(66,'2020-11-16 11:00:00','2020-11-16 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(67,'2020-11-16 12:00:00','2020-11-16 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(68,'2020-11-16 13:00:00','2020-11-16 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(69,'2020-11-16 14:00:00','2020-11-16 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(70,'2020-11-16 15:00:00','2020-11-16 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(71,'2020-11-16 16:00:00','2020-11-16 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(72,'2020-11-16 17:00:00','2020-11-16 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(73,'2020-11-17 09:00:00','2020-11-17 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(74,'2020-11-17 10:00:00','2020-11-17 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(75,'2020-11-17 11:00:00','2020-11-17 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(76,'2020-11-17 12:00:00','2020-11-17 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(77,'2020-11-17 13:00:00','2020-11-17 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(78,'2020-11-17 14:00:00','2020-11-17 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(79,'2020-11-17 15:00:00','2020-11-17 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(80,'2020-11-17 16:00:00','2020-11-17 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(81,'2020-11-17 17:00:00','2020-11-17 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(82,'2020-11-18 09:00:00','2020-11-18 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(83,'2020-11-18 10:00:00','2020-11-18 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(84,'2020-11-18 11:00:00','2020-11-18 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(85,'2020-11-18 12:00:00','2020-11-18 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(86,'2020-11-18 13:00:00','2020-11-18 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(87,'2020-11-18 14:00:00','2020-11-18 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(88,'2020-11-18 15:00:00','2020-11-18 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(89,'2020-11-18 16:00:00','2020-11-18 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(90,'2020-11-18 17:00:00','2020-11-18 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(91,'2020-11-19 09:00:00','2020-11-19 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(92,'2020-11-19 10:00:00','2020-11-19 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(93,'2020-11-19 11:00:00','2020-11-19 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(94,'2020-11-19 12:00:00','2020-11-19 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(95,'2020-11-19 13:00:00','2020-11-19 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(96,'2020-11-19 14:00:00','2020-11-19 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(97,'2020-11-19 15:00:00','2020-11-19 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(98,'2020-11-19 16:00:00','2020-11-19 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(99,'2020-11-19 17:00:00','2020-11-19 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(100,'2020-11-20 09:00:00','2020-11-20 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(101,'2020-11-20 10:00:00','2020-11-20 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(102,'2020-11-20 11:00:00','2020-11-20 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(103,'2020-11-20 12:00:00','2020-11-20 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(104,'2020-11-20 13:00:00','2020-11-20 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(105,'2020-11-20 14:00:00','2020-11-20 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(106,'2020-11-20 15:00:00','2020-11-20 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(107,'2020-11-20 16:00:00','2020-11-20 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(108,'2020-11-20 17:00:00','2020-11-20 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(109,'2020-11-21 09:00:00','2020-11-21 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(110,'2020-11-21 10:00:00','2020-11-21 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(111,'2020-11-21 11:00:00','2020-11-21 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(112,'2020-11-21 12:00:00','2020-11-21 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(113,'2020-11-21 13:00:00','2020-11-21 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(114,'2020-11-21 14:00:00','2020-11-21 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(115,'2020-11-21 15:00:00','2020-11-21 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(116,'2020-11-21 16:00:00','2020-11-21 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(117,'2020-11-21 17:00:00','2020-11-21 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(118,'2020-11-22 09:00:00','2020-11-22 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(119,'2020-11-22 10:00:00','2020-11-22 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(120,'2020-11-22 11:00:00','2020-11-22 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(121,'2020-11-22 12:00:00','2020-11-22 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(122,'2020-11-22 13:00:00','2020-11-22 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(123,'2020-11-22 14:00:00','2020-11-22 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(124,'2020-11-22 15:00:00','2020-11-22 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(125,'2020-11-22 16:00:00','2020-11-22 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(126,'2020-11-22 17:00:00','2020-11-22 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(127,'2020-11-23 09:00:00','2020-11-23 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(128,'2020-11-23 10:00:00','2020-11-23 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(129,'2020-11-23 11:00:00','2020-11-23 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(130,'2020-11-23 12:00:00','2020-11-23 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(131,'2020-11-23 13:00:00','2020-11-23 14:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(132,'2020-11-23 14:00:00','2020-11-23 15:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(133,'2020-11-23 15:00:00','2020-11-23 16:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(134,'2020-11-23 16:00:00','2020-11-23 17:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(135,'2020-11-23 17:00:00','2020-11-23 18:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(136,'2020-11-24 09:00:00','2020-11-24 10:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(137,'2020-11-24 10:00:00','2020-11-24 11:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(138,'2020-11-24 11:00:00','2020-11-24 12:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(139,'2020-11-24 12:00:00','2020-11-24 13:00:00',1,'2020-11-09 05:20:19','2020-11-09 05:20:19'),(140,'2020-11-24 13:00:00','2020-11-24 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(141,'2020-11-24 14:00:00','2020-11-24 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(142,'2020-11-24 15:00:00','2020-11-24 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(143,'2020-11-24 16:00:00','2020-11-24 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(144,'2020-11-24 17:00:00','2020-11-24 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(145,'2020-11-25 09:00:00','2020-11-25 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(146,'2020-11-25 10:00:00','2020-11-25 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(147,'2020-11-25 11:00:00','2020-11-25 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(148,'2020-11-25 12:00:00','2020-11-25 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(149,'2020-11-25 13:00:00','2020-11-25 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(150,'2020-11-25 14:00:00','2020-11-25 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(151,'2020-11-25 15:00:00','2020-11-25 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(152,'2020-11-25 16:00:00','2020-11-25 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(153,'2020-11-25 17:00:00','2020-11-25 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(154,'2020-11-26 09:00:00','2020-11-26 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(155,'2020-11-26 10:00:00','2020-11-26 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(156,'2020-11-26 11:00:00','2020-11-26 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(157,'2020-11-26 12:00:00','2020-11-26 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(158,'2020-11-26 13:00:00','2020-11-26 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(159,'2020-11-26 14:00:00','2020-11-26 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(160,'2020-11-26 15:00:00','2020-11-26 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(161,'2020-11-26 16:00:00','2020-11-26 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(162,'2020-11-26 17:00:00','2020-11-26 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(163,'2020-11-27 09:00:00','2020-11-27 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(164,'2020-11-27 10:00:00','2020-11-27 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(165,'2020-11-27 11:00:00','2020-11-27 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(166,'2020-11-27 12:00:00','2020-11-27 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(167,'2020-11-27 13:00:00','2020-11-27 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(168,'2020-11-27 14:00:00','2020-11-27 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(169,'2020-11-27 15:00:00','2020-11-27 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(170,'2020-11-27 16:00:00','2020-11-27 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(171,'2020-11-27 17:00:00','2020-11-27 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(172,'2020-11-28 09:00:00','2020-11-28 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(173,'2020-11-28 10:00:00','2020-11-28 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(174,'2020-11-28 11:00:00','2020-11-28 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(175,'2020-11-28 12:00:00','2020-11-28 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(176,'2020-11-28 13:00:00','2020-11-28 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(177,'2020-11-28 14:00:00','2020-11-28 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(178,'2020-11-28 15:00:00','2020-11-28 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(179,'2020-11-28 16:00:00','2020-11-28 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(180,'2020-11-28 17:00:00','2020-11-28 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(181,'2020-11-29 09:00:00','2020-11-29 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(182,'2020-11-29 10:00:00','2020-11-29 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(183,'2020-11-29 11:00:00','2020-11-29 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(184,'2020-11-29 12:00:00','2020-11-29 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(185,'2020-11-29 13:00:00','2020-11-29 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(186,'2020-11-29 14:00:00','2020-11-29 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(187,'2020-11-29 15:00:00','2020-11-29 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(188,'2020-11-29 16:00:00','2020-11-29 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(189,'2020-11-29 17:00:00','2020-11-29 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(190,'2020-11-30 09:00:00','2020-11-30 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(191,'2020-11-30 10:00:00','2020-11-30 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(192,'2020-11-30 11:00:00','2020-11-30 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(193,'2020-11-30 12:00:00','2020-11-30 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(194,'2020-11-30 13:00:00','2020-11-30 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(195,'2020-11-30 14:00:00','2020-11-30 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(196,'2020-11-30 15:00:00','2020-11-30 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(197,'2020-11-30 16:00:00','2020-11-30 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(198,'2020-11-30 17:00:00','2020-11-30 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(199,'2020-12-01 09:00:00','2020-12-01 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(200,'2020-12-01 10:00:00','2020-12-01 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(201,'2020-12-01 11:00:00','2020-12-01 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(202,'2020-12-01 12:00:00','2020-12-01 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(203,'2020-12-01 13:00:00','2020-12-01 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(204,'2020-12-01 14:00:00','2020-12-01 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(205,'2020-12-01 15:00:00','2020-12-01 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(206,'2020-12-01 16:00:00','2020-12-01 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(207,'2020-12-01 17:00:00','2020-12-01 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(208,'2020-12-02 09:00:00','2020-12-02 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(209,'2020-12-02 10:00:00','2020-12-02 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(210,'2020-12-02 11:00:00','2020-12-02 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(211,'2020-12-02 12:00:00','2020-12-02 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(212,'2020-12-02 13:00:00','2020-12-02 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(213,'2020-12-02 14:00:00','2020-12-02 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(214,'2020-12-02 15:00:00','2020-12-02 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(215,'2020-12-02 16:00:00','2020-12-02 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(216,'2020-12-02 17:00:00','2020-12-02 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(217,'2020-12-03 09:00:00','2020-12-03 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(218,'2020-12-03 10:00:00','2020-12-03 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(219,'2020-12-03 11:00:00','2020-12-03 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(220,'2020-12-03 12:00:00','2020-12-03 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(221,'2020-12-03 13:00:00','2020-12-03 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(222,'2020-12-03 14:00:00','2020-12-03 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(223,'2020-12-03 15:00:00','2020-12-03 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(224,'2020-12-03 16:00:00','2020-12-03 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(225,'2020-12-03 17:00:00','2020-12-03 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(226,'2020-12-04 09:00:00','2020-12-04 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(227,'2020-12-04 10:00:00','2020-12-04 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(228,'2020-12-04 11:00:00','2020-12-04 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(229,'2020-12-04 12:00:00','2020-12-04 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(230,'2020-12-04 13:00:00','2020-12-04 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(231,'2020-12-04 14:00:00','2020-12-04 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(232,'2020-12-04 15:00:00','2020-12-04 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(233,'2020-12-04 16:00:00','2020-12-04 17:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(234,'2020-12-04 17:00:00','2020-12-04 18:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(235,'2020-12-05 09:00:00','2020-12-05 10:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(236,'2020-12-05 10:00:00','2020-12-05 11:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(237,'2020-12-05 11:00:00','2020-12-05 12:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(238,'2020-12-05 12:00:00','2020-12-05 13:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(239,'2020-12-05 13:00:00','2020-12-05 14:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(240,'2020-12-05 14:00:00','2020-12-05 15:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(241,'2020-12-05 15:00:00','2020-12-05 16:00:00',1,'2020-11-09 05:20:20','2020-11-09 05:20:20'),(242,'2020-12-05 16:00:00','2020-12-05 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(243,'2020-12-05 17:00:00','2020-12-05 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(244,'2020-12-06 09:00:00','2020-12-06 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(245,'2020-12-06 10:00:00','2020-12-06 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(246,'2020-12-06 11:00:00','2020-12-06 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(247,'2020-12-06 12:00:00','2020-12-06 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(248,'2020-12-06 13:00:00','2020-12-06 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(249,'2020-12-06 14:00:00','2020-12-06 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(250,'2020-12-06 15:00:00','2020-12-06 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(251,'2020-12-06 16:00:00','2020-12-06 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(252,'2020-12-06 17:00:00','2020-12-06 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(253,'2020-12-07 09:00:00','2020-12-07 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(254,'2020-12-07 10:00:00','2020-12-07 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(255,'2020-12-07 11:00:00','2020-12-07 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(256,'2020-12-07 12:00:00','2020-12-07 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(257,'2020-12-07 13:00:00','2020-12-07 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(258,'2020-12-07 14:00:00','2020-12-07 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(259,'2020-12-07 15:00:00','2020-12-07 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(260,'2020-12-07 16:00:00','2020-12-07 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(261,'2020-12-07 17:00:00','2020-12-07 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(262,'2020-12-08 09:00:00','2020-12-08 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(263,'2020-12-08 10:00:00','2020-12-08 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(264,'2020-12-08 11:00:00','2020-12-08 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(265,'2020-12-08 12:00:00','2020-12-08 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(266,'2020-12-08 13:00:00','2020-12-08 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(267,'2020-12-08 14:00:00','2020-12-08 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(268,'2020-12-08 15:00:00','2020-12-08 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(269,'2020-12-08 16:00:00','2020-12-08 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(270,'2020-12-08 17:00:00','2020-12-08 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(271,'2020-12-09 09:00:00','2020-12-09 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(272,'2020-12-09 10:00:00','2020-12-09 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(273,'2020-12-09 11:00:00','2020-12-09 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(274,'2020-12-09 12:00:00','2020-12-09 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(275,'2020-12-09 13:00:00','2020-12-09 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(276,'2020-12-09 14:00:00','2020-12-09 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(277,'2020-12-09 15:00:00','2020-12-09 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(278,'2020-12-09 16:00:00','2020-12-09 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(279,'2020-12-09 17:00:00','2020-12-09 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(280,'2020-12-10 09:00:00','2020-12-10 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(281,'2020-12-10 10:00:00','2020-12-10 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(282,'2020-12-10 11:00:00','2020-12-10 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(283,'2020-12-10 12:00:00','2020-12-10 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(284,'2020-12-10 13:00:00','2020-12-10 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(285,'2020-12-10 14:00:00','2020-12-10 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(286,'2020-12-10 15:00:00','2020-12-10 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(287,'2020-12-10 16:00:00','2020-12-10 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(288,'2020-12-10 17:00:00','2020-12-10 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(289,'2020-12-11 09:00:00','2020-12-11 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(290,'2020-12-11 10:00:00','2020-12-11 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(291,'2020-12-11 11:00:00','2020-12-11 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(292,'2020-12-11 12:00:00','2020-12-11 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(293,'2020-12-11 13:00:00','2020-12-11 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(294,'2020-12-11 14:00:00','2020-12-11 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(295,'2020-12-11 15:00:00','2020-12-11 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(296,'2020-12-11 16:00:00','2020-12-11 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(297,'2020-12-11 17:00:00','2020-12-11 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(298,'2020-12-12 09:00:00','2020-12-12 10:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(299,'2020-12-12 10:00:00','2020-12-12 11:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(300,'2020-12-12 11:00:00','2020-12-12 12:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(301,'2020-12-12 12:00:00','2020-12-12 13:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(302,'2020-12-12 13:00:00','2020-12-12 14:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(303,'2020-12-12 14:00:00','2020-12-12 15:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(304,'2020-12-12 15:00:00','2020-12-12 16:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(305,'2020-12-12 16:00:00','2020-12-12 17:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21'),(306,'2020-12-12 17:00:00','2020-12-12 18:00:00',1,'2020-11-09 05:20:21','2020-11-09 05:20:21');
/*!40000 ALTER TABLE `arrangements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `partner_id` bigint(20) DEFAULT NULL,
  `arrangement_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabilities`
--

LOCK TABLES `availabilities` WRITE;
/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` VALUES (32,1,37,'2020-11-12 16:10:17','2020-11-12 16:10:17'),(33,1,38,'2020-11-13 00:23:36','2020-11-13 00:23:36'),(34,1,39,'2020-11-13 00:23:38','2020-11-13 00:23:38'),(35,1,40,'2020-11-13 00:23:41','2020-11-13 00:23:41'),(36,1,41,'2020-11-13 00:29:29','2020-11-13 00:29:29'),(37,1,42,'2020-11-13 00:29:32','2020-11-13 00:29:32'),(38,1,43,'2020-11-13 00:29:51','2020-11-13 00:29:51'),(39,1,44,'2020-11-13 00:29:52','2020-11-13 00:29:52'),(40,1,45,'2020-11-13 00:29:55','2020-11-13 00:29:55'),(41,1,55,'2020-11-13 00:30:02','2020-11-13 00:30:02'),(42,1,56,'2020-11-13 00:30:02','2020-11-13 00:30:02'),(43,1,57,'2020-11-13 00:30:03','2020-11-13 00:30:03'),(44,1,46,'2020-11-13 00:30:14','2020-11-13 00:30:14'),(45,1,58,'2020-11-13 09:43:03','2020-11-13 09:43:03'),(46,1,59,'2020-11-13 09:43:04','2020-11-13 09:43:04'),(47,1,48,'2020-11-14 02:54:09','2020-11-14 02:54:09'),(48,1,54,'2020-11-14 02:57:58','2020-11-14 02:57:58'),(49,1,53,'2020-11-14 02:58:00','2020-11-14 02:58:00'),(50,1,52,'2020-11-14 02:58:01','2020-11-14 02:58:01'),(51,1,51,'2020-11-14 02:58:02','2020-11-14 02:58:02'),(52,1,50,'2020-11-14 02:58:03','2020-11-14 02:58:03'),(53,1,49,'2020-11-14 02:58:03','2020-11-14 02:58:03'),(54,1,47,'2020-11-14 02:58:05','2020-11-14 02:58:05');
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `availability_id` bigint(20) DEFAULT NULL,
  `pioneer_id` bigint(20) DEFAULT NULL,
  `partner_status` varchar(255) DEFAULT NULL,
  `pioneer_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_meetings_on_availability_id` (`availability_id`),
  KEY `index_meetings_on_pioneer_id` (`pioneer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES (3,32,6,'unpublish','published'),(4,33,6,'unpublish','published'),(5,34,6,'published','published'),(6,35,6,'published','published'),(7,36,6,'published','unpublish'),(8,37,NULL,'published',NULL),(9,38,NULL,'published',NULL),(10,39,NULL,'published',NULL),(11,40,NULL,'published',NULL),(12,41,NULL,'published',NULL),(13,42,NULL,'published',NULL),(14,43,NULL,'published',NULL),(15,44,6,'unpublish','published'),(16,45,NULL,'published',NULL),(17,46,NULL,'published',NULL),(18,47,6,'published','unpublish'),(19,48,6,'unpublish','unpublish'),(20,49,NULL,'unpublish',NULL),(21,50,NULL,'unpublish',NULL),(22,51,NULL,'unpublish',NULL),(23,52,NULL,'unpublish',NULL),(24,53,6,'published','unpublish'),(25,54,6,'published','unpublish');
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20201107051349'),('20201107081938'),('20201107084517'),('20201110024314'),('20201110033450'),('20201111033048'),('20201112020846'),('20201112043122'),('20201113092702');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `auth_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nick','nick@yc.com','18710568496','partner','583331','2020-11-09 05:20:21','2020-11-11 03:54:19','$2a$12$AiVCA9cL2Tv/3G/wPTJodu2IuMEe70wAh1EF6uC0DlKT3.Z.k49by'),(2,'Jone','jone@yc.com','18710568583','partner','904780','2020-11-09 05:20:21','2020-11-11 03:54:19','$2a$12$1epivqfBHcGmecsVBfdhl.QixtnSPiW.Jx976kO8CyNKiLKZUt.MK'),(3,'Yoyo','yoyo@yc.com','18710569628','partner','703981','2020-11-09 05:20:21','2020-11-11 03:54:19','$2a$12$5RSF1uDw.AKDWu1Tb0jHce3ch1ya0V0dTF5HBaQKi1x.lJquO18/i'),(4,'Ada','ada@yc.com','18710563019','pioneer','196871','2020-11-09 05:20:21','2020-11-11 03:54:20','$2a$12$GYZcl..bSscQr.S3SBOfUOe/pGUX1vn1PfKU3exNO/m0bCgNTZDsu'),(6,'test','test@example.com','18710563019','pioneer','196871','2020-11-10 03:42:42','2020-11-11 03:54:20','$2a$12$yzHcEHjwAJ2ObPahRATNR.GkkSchy4dbBkdyStN.8EYoHAxoxPjK.');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-14 16:29:06