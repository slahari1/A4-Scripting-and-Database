-- MySQL dump 10.13  Distrib 5.5.55, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: musicsurvey
-- ------------------------------------------------------
-- Server version	5.5.55-0ubuntu0.14.04.1

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
-- Table structure for table `tblSurveyQuestions`
--

DROP TABLE IF EXISTS `tblSurveyQuestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblSurveyQuestions` (
  `ID` varchar(255) NOT NULL DEFAULT '',
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FavMusicGenre` varchar(255) DEFAULT NULL,
  `FavArtist` varchar(255) DEFAULT NULL,
  `FavSong` varchar(255) DEFAULT NULL,
  `FavStreamSer` varchar(255) DEFAULT NULL,
  `PurchaseMusic` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblSurveyQuestions`
--

LOCK TABLES `tblSurveyQuestions` WRITE;
/*!40000 ALTER TABLE `tblSurveyQuestions` DISABLE KEYS */;
INSERT INTO `tblSurveyQuestions` VALUES ('9#vcbaXKz(','2017-07-26 03:47:06','Alternative','Alt-J','Breezeblocks','Spotify',1),('A^%C&cC`fH','2017-07-26 02:13:06','Classic Rock','Guns N\' Roses','November Rain','Spotify',2),('eDh!(1kJdu','2017-07-26 03:46:11','Country','Carrie Underwood','Before He Cheats','Soundcloud',3),('jk`_35Ri!@','2017-07-26 03:51:45','Pop','Rihanna','Disturbia','Youtube',1),('M^kVEa*V%T','2017-07-26 03:52:37','Hip-hop','Kendrick Lamar','Humble','Spotify',2),('taQTcGX18I','2017-07-26 04:17:20','Classical','M.S Subbalakshmi','Baga Govinda','Youtube',1),('W9*PdRjcJw','2017-07-26 03:59:52','Country','Carrie Underwood','Before He Cheats','spotify',4);
/*!40000 ALTER TABLE `tblSurveyQuestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-26  0:17:20
