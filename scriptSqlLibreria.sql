-- Progettazione Web 
DROP DATABASE if exists libreria; 
CREATE DATABASE libreria; 
USE libreria; 
-- MySQL dump 10.13  Distrib 5.6.20, for Win32 (x86)
--
-- Host: localhost    Database: libreria
-- ------------------------------------------------------
-- Server version	5.6.21

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
-- Table structure for table `libri`
--

DROP TABLE IF EXISTS `libri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titolo` varchar(45) NOT NULL,
  `autore` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `copertina` varchar(45) DEFAULT NULL,
  `pdf` varchar(127) DEFAULT NULL,
  `visualizzazioni` int(11) DEFAULT NULL,
  `genere` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libri`
--

LOCK TABLES `libri` WRITE;
/*!40000 ALTER TABLE `libri` DISABLE KEYS */;
INSERT INTO `libri` VALUES (1,'Reti Combinatorie','Giovanni Stea','2017-12-10','retiCombinatorie.png','./pdf/RetiCombinatorie.pdf',53,'Ingegneria'),(2,'Aritmetica','Giovanni Stea','2017-12-26','Aritmetica.png','./pdf/Aritmetica.pdf',6,'Ingegneria'),(4,'Reti Sequenziali Asincrone','Giovanni Stea','2010-01-16','RetiSeqAs.png','./pdf/RetiSequenzialiAsincrone.pdf',8,'Ingegneria'),(5,'Reti Sequenziali Sincronizzate','Giovanni Stea','2013-06-17','RetiSeqSinc.png','./pdf/RetiSequenzialiSincronizzate.pdf',5,'Ingegneria'),(6,'Programmare in Java vol1','Graziano Frosini','2017-12-26','java1.png','./pdf/ProgrammareJava1.pdf',6,'Programmazione'),(7,'Programmare in Java vol2','Graziano Frosini','2014-11-11','java2.png','./pdf/ProgrammareJava2.pdf',5,'Programmazione'),(8,'Dispensa Ingegneria del Software','Andrea Domenici','2009-09-07','IngSw.png','./pdf/DispensaIngegneriaSoftware.pdf',9,'Software');
/*!40000 ALTER TABLE `libri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libri_users`
--

DROP TABLE IF EXISTS `libri_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libri_users` (
  `libri` int(11) NOT NULL,
  `user` varchar(45) NOT NULL,
  PRIMARY KEY (`libri`,`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libri_users`
--

LOCK TABLES `libri_users` WRITE;
/*!40000 ALTER TABLE `libri_users` DISABLE KEYS */;
INSERT INTO `libri_users` VALUES (1,'1'),(1,'2'),(2,'1'),(4,'1'),(4,'2'),(5,'1'),(5,'2'),(6,'1'),(7,'1'),(7,'2'),(8,'1');
/*!40000 ALTER TABLE `libri_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'test'),(2,'prova'),(3,'prg');
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

-- Dump completed on 2018-02-06 22:33:32
