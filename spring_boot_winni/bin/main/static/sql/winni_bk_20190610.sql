-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: winni
-- ------------------------------------------------------
-- Server version	5.6.44-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `board` (
  `seq_no` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` text,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `hit` int(11) DEFAULT '0',
  `id` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seq_no`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'title_test','content_test','2019-06-08 01:22:05',0,'id_test','qwert'),(2,'title_test2','content_test2','2019-06-08 22:32:19',0,'id_test2','qwert2'),(3,'title_test3','content_test3','2019-06-08 22:32:29',2,'id_test3','qwert3'),(10,'titl3','content_11111111sdftest3','2019-06-09 04:15:09',1,'idsdf_test3','qwert3'),(22,'222','안녕하세요\n안녕하세요\n안녕하세요안녕하세요\n안녕하세요\n안녕하세요안녕하세요안녕하세요안녕하세요\n안녕하세요안녕하세요\n안녕하세요안녕하세요','2019-06-09 05:41:22',2,'22','222'),(23,'12','인녀ㅑㅇ\n인녀ㅑㅇ인녀ㅑㅇ인녀ㅑㅇ\n인녀ㅑㅇ인녀ㅑㅇ\n인녀ㅑㅇ인녀ㅑㅇ인녀ㅑㅇ\n인녀ㅑㅇ인녀ㅑㅇ인녀ㅑㅇ인녀ㅑㅇ인녀ㅑㅇ\n인녀ㅑㅇ인녀ㅑㅇ인녀ㅑㅇ\n','2019-06-09 05:49:38',1,'12','12'),(25,'ㅁㄴㅇ','ㅁㄴㅇㅁㄴㅁㄴㅇㅁㄴㅇㅁㄴㅁㄴㅇㅁㄴㅇㅁㄴㅁㄴㅇ\nㅁㄴㅇㅁㄴㅁㄴㅇㅁㄴㅇㅁㄴㅁㄴㅇ\nㅁㄴㅇㅁㄴㅁㄴㅇㅁㄴㅇㅁㄴㅁㄴㅇ\nㅁㄴㅇㅁㄴㅁㄴㅇㅁㄴㅇㅁㄴㅁㄴㅇ','2019-06-09 05:53:06',2,'ㅁㄴㅇ','ㅁㄴㅇ'),(27,'ㄴㅇㄹㄴㅇㄹ','ㄹㄴㅇㄴㅇㄹ<br/>ㄴㅇㄹㅇㄹㄴㄴㅇㄴㄹ<br/>ㄴㅇㄹㄹㅇㄴㅇㄹㄴ','2019-06-09 05:59:51',1,'ㅇㄹㄴ','ㄴㅇㄹ'),(32,'ㄴㅇㄹㅇㄴㄹ','ㄴㅇㄹㄴㄹㅇㄹㅇㄴㄹㅇㄴㄴㄹㅇㄴㄹㅇㄴㅇㄹㄹㅇㄴ<br/>ㄴㅇㄹㄴㅇㄹ<br/>ㄹㄴㅇ<br/>ㄴㅇㄹ<br/>ㄹㅇ<br/>ㄹㅇㄴ<br/>ㅇㄴㄹㄴㄹㅇㄹㄴㅇㄹㅇㄴ','2019-06-09 06:11:45',1,'ㄴㅇㄹㄴㅇㄹ','ㄴㅇㄹㄴㅇㄹ'),(35,'ㅇㅎㄹ','ㅇㅎㄹㅇㅀ<br/>ㅇㅀㄹㅇㅎ<br/><br/><br/><br/>ㅇㅀㅇㅀㅇㅀ<br/>ㅇㅀ','2019-06-09 06:17:52',1,'ㅀㅇ','ㅇㅎㄹ'),(36,'122313','<hr />123312323123','2019-06-09 06:21:23',2,'ㅁㄴㅇ','1221'),(37,'zz','zz<br/>zz','2019-06-09 16:32:33',1,'zz','zz'),(38,'aa','aa','2019-06-09 16:33:51',6,'aa','aa');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'winni'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-10  0:34:55
