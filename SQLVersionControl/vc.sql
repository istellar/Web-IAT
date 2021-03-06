-- MySQL dump 10.13  Distrib 5.5.10, for osx10.6 (i386)
--
-- Host: localhost    Database: testIAT
-- ------------------------------------------------------
-- Server version	5.5.10

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
-- Table structure for table `blockComponents`
--

DROP TABLE IF EXISTS `blockComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockComponents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `block` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockComponents`
--

LOCK TABLES `blockComponents` WRITE;
/*!40000 ALTER TABLE `blockComponents` DISABLE KEYS */;
INSERT INTO `blockComponents` VALUES (320,106,81,1),(321,106,82,2),(322,107,83,1),(323,107,84,2),(324,108,81,1),(325,108,82,2),(326,108,83,3),(327,108,84,4),(328,109,81,1),(329,109,82,2),(330,109,83,3),(331,109,84,4),(332,110,82,1),(333,110,81,2),(334,111,82,1),(335,111,81,2),(336,111,83,3),(337,111,84,4),(338,112,82,1),(339,112,81,2),(340,112,83,3),(341,112,84,4);
/*!40000 ALTER TABLE `blockComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blockStyles`
--

DROP TABLE IF EXISTS `blockStyles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockStyles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `filePath` text,
  `positions` int(11) DEFAULT NULL,
  `prefix` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blockStyles`
--

LOCK TABLES `blockStyles` WRITE;
/*!40000 ALTER TABLE `blockStyles` DISABLE KEYS */;
INSERT INTO `blockStyles` VALUES (1,'Greenwald Stimulus','GreenwaldStimulus',5,'GreenwaldStimulus');
/*!40000 ALTER TABLE `blockStyles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blocks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `trials` int(11) DEFAULT NULL,
  `description` text,
  `experiment` int(11) NOT NULL,
  `blockStyle` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
INSERT INTO `blocks` VALUES (106,1,'Block 1, Practice',21,1),(107,1,'Block 2, Practice',21,1),(108,1,'Block 3, Practice',21,1),(109,1,'Block 4, Test',21,1),(110,1,'Block 5, Practice',21,1),(111,1,'Block 6, Practice',21,1),(112,1,'Block 7, Test',21,1);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryPairs`
--

DROP TABLE IF EXISTS `categoryPairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoryPairs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `positiveCategory` int(11) DEFAULT NULL,
  `negativeCategory` int(11) DEFAULT NULL,
  `associatedPair` int(11) DEFAULT NULL,
  `experiment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `positiveCategory` (`positiveCategory`),
  UNIQUE KEY `negativeCateogry` (`negativeCategory`),
  UNIQUE KEY `associatedPair` (`associatedPair`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryPairs`
--

LOCK TABLES `categoryPairs` WRITE;
/*!40000 ALTER TABLE `categoryPairs` DISABLE KEYS */;
INSERT INTO `categoryPairs` VALUES (41,81,82,42,21),(42,83,84,41,21);
/*!40000 ALTER TABLE `categoryPairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiments`
--

DROP TABLE IF EXISTS `experiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL DEFAULT b'0',
  `name` text,
  `endUrl` text,
  `hash` text,
  `secondEndUrl` text,
  `checkAnswers` tinyint(1) NOT NULL DEFAULT '0',
  `errorNotifications` tinyint(1) NOT NULL DEFAULT '0',
  `autoBalance` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiments`
--

LOCK TABLES `experiments` WRITE;
/*!40000 ALTER TABLE `experiments` DISABLE KEYS */;
INSERT INTO `experiments` VALUES (21,'\0','New Experiment','','z8gkl','',1,1,0);
/*!40000 ALTER TABLE `experiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responses` (
  `response_id` int(11) NOT NULL AUTO_INCREMENT,
  `subj` int(11) NOT NULL,
  `stimulus` int(11) DEFAULT NULL,
  `response` text,
  `response_time` int(11) DEFAULT NULL,
  `timeShown` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
INSERT INTO `responses` VALUES (1,1,6,'39',-2147483648,'0000-00-00 00:00:00'),(2,1,4,'39',-2147483648,'0000-00-00 00:00:00'),(3,1,8,'39',-2147483648,'0000-00-00 00:00:00'),(4,1,6,'39',-2147483648,'0000-00-00 00:00:00'),(5,1,2,'37',-2147483648,'0000-00-00 00:00:00'),(6,1,2,'37',-2147483648,'0000-00-00 00:00:00'),(7,1,1,'39',-2147483648,'0000-00-00 00:00:00'),(8,2,5,'37',-2147483648,'0000-00-00 00:00:00'),(9,2,8,'39',-2147483648,'0000-00-00 00:00:00'),(10,2,2,'39',-2147483648,'0000-00-00 00:00:00'),(11,2,7,'37',-2147483648,'0000-00-00 00:00:00'),(12,2,2,'37',-2147483648,'0000-00-00 00:00:00'),(13,2,8,'39',-2147483648,'0000-00-00 00:00:00'),(14,2,8,'39',-2147483648,'0000-00-00 00:00:00'),(15,3,2,'39',-2147483648,'0000-00-00 00:00:00'),(16,3,7,'37',-2147483648,'0000-00-00 00:00:00'),(17,3,5,'37',-2147483648,'0000-00-00 00:00:00'),(18,3,7,'37',-2147483648,'0000-00-00 00:00:00'),(19,3,5,'39',-2147483648,'0000-00-00 00:00:00'),(20,3,2,'37',-2147483648,'0000-00-00 00:00:00'),(21,3,8,'39',-2147483648,'0000-00-00 00:00:00'),(22,4,1,'37',6654,'0000-00-00 00:00:00'),(23,4,7,'37',2486,'0000-00-00 00:00:00'),(24,4,2,'39',718,'0000-00-00 00:00:00'),(25,4,2,'39',374,'0000-00-00 00:00:00'),(26,4,5,'39',846,'0000-00-00 00:00:00'),(27,4,8,'39',1639,'0000-00-00 00:00:00'),(28,4,3,'37',614,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stimuli`
--

DROP TABLE IF EXISTS `stimuli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stimuli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `experiment` int(11) NOT NULL,
  `word` text,
  `stimulusCategory` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stimuli`
--

LOCK TABLES `stimuli` WRITE;
/*!40000 ALTER TABLE `stimuli` DISABLE KEYS */;
INSERT INTO `stimuli` VALUES (1,21,'Wonderful',81),(2,21,'Horrible',82),(3,21,'That thing',83),(4,21,'That other thing',84),(5,21,'Terrific',81),(6,21,'Crappy',82),(7,21,'This one',83),(8,21,'This other one',84);
/*!40000 ALTER TABLE `stimuli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stimulusCategories`
--

DROP TABLE IF EXISTS `stimulusCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stimulusCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `experiment` int(11) DEFAULT NULL,
  `inPair` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stimulusCategories`
--

LOCK TABLES `stimulusCategories` WRITE;
/*!40000 ALTER TABLE `stimulusCategories` DISABLE KEYS */;
INSERT INTO `stimulusCategories` VALUES (81,'Good',21,44),(82,'Bad',21,44),(83,'One thing',21,44),(84,'Other thing',21,44);
/*!40000 ALTER TABLE `stimulusCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `beginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `qualtrics_id` text,
  `score` double DEFAULT NULL,
  `experiment` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'0000-00-00 00:00:00',NULL,NULL,21),(2,'0000-00-00 00:00:00',NULL,NULL,21),(3,'0000-00-00 00:00:00',NULL,NULL,21),(4,'0000-00-00 00:00:00',NULL,NULL,21);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` text NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passwordHash` text,
  `owner` tinyint(1) NOT NULL DEFAULT '0',
  `userAdministration` tinyint(11) NOT NULL DEFAULT '0',
  `email` text NOT NULL,
  `active` tinyint(11) NOT NULL DEFAULT '0',
  `originalActivation` tinyint(11) NOT NULL DEFAULT '0',
  `emailConfirmed` tinyint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('stephen',1,'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8',1,1,'stephen.searles@gmail.com',1,0,0),('test',2,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'',0,0,0),('testuser',3,'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8',0,0,'stephens2424@gmail.com',0,0,0),('anothertest',4,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'stephens2424@gmail.com',0,0,0),('newTestUser',5,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'stephens2424@gmail.com',0,0,0),('newTestUser2',6,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'stephens2424@gmail.com',0,0,0),('newTestUser3',7,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'stephen.searles@ucla.edu',0,0,0),('testUser2',8,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'stephens2424@gmail.com',0,0,0),('testUser3',9,'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3',0,0,'stephens2424@gmail.com',0,0,0);
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

-- Dump completed on 2011-11-22 17:37:56
