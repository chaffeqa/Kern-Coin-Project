-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kern_coin_production
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admins_on_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'chaffeqa@gmail.com','$2a$10$MU2gj1aOieD4EqFjx.jniegNb9SwINDKx4KIQlRzNw/vclpRGRZcq','$2a$10$MU2gj1aOieD4EqFjx.jnie','2011-01-12 15:30:48','2011-01-12 15:30:48');
INSERT INTO `admins` VALUES (2,'clay@inventure.com','$2a$10$L2wDHyUHPbomDeKiJkfprOIndLE5r9qnun3QMnom4DVBUbcUG/DM6','$2a$10$L2wDHyUHPbomDeKiJkfprO','2011-01-12 15:39:26','2011-01-12 15:39:26');
INSERT INTO `admins` VALUES (3,'test@inventure.com','$2a$10$vtp8AoDhks.RkRMy9sp2v.ZStt6E2zviCW1rc9jGQNWn0gRscllZW','$2a$10$vtp8AoDhks.RkRMy9sp2v.','2011-01-12 15:40:33','2011-01-12 15:40:33');
INSERT INTO `admins` VALUES (4,'macklin@inventure.com','$2a$10$212nWLchhfNjIoZBWWmZ3uf7OQyGT3XM2uLPDf9pi.p20FpmMIL82','$2a$10$212nWLchhfNjIoZBWWmZ3u','2011-01-12 20:06:47','2011-01-12 20:06:47');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_elem_links`
--

DROP TABLE IF EXISTS `blog_elem_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_elem_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `blog_elem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_elem_links`
--

LOCK TABLES `blog_elem_links` WRITE;
/*!40000 ALTER TABLE `blog_elem_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_elem_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_elems`
--

DROP TABLE IF EXISTS `blog_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count_limit` int(11) DEFAULT NULL,
  `past_limit` date DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_elems`
--

LOCK TABLES `blog_elems` WRITE;
/*!40000 ALTER TABLE `blog_elems` DISABLE KEYS */;
INSERT INTO `blog_elems` VALUES (8,NULL,NULL,'List with Body','2010-12-14 17:58:04','2010-12-14 17:58:59');
/*!40000 ALTER TABLE `blog_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `blog_elem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (6,'Coinworld Articles',NULL,'2010-12-14 17:58:04','2010-12-14 17:58:04',8);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendar_elems`
--

DROP TABLE IF EXISTS `calendar_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `display_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `max_events_shown` int(11) DEFAULT NULL,
  `max_days_in_past` int(11) DEFAULT NULL,
  `max_days_in_future` int(11) DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendar_elems`
--

LOCK TABLES `calendar_elems` WRITE;
/*!40000 ALTER TABLE `calendar_elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` text COLLATE utf8_unicode_ci,
  `event_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendars`
--

LOCK TABLES `calendars` WRITE;
/*!40000 ALTER TABLE `calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `item_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Inventory','Test Text',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2011-03-17 18:52:05',340);
INSERT INTO `categories` VALUES (2,'Special Offers','','SPECIALS-2.jpg','image/jpeg',275729,'2011-01-27 14:58:35','2010-10-30 03:30:30','2011-03-16 15:46:53',1);
INSERT INTO `categories` VALUES (3,'Ancient Coinage','Alexander the Great gold stater, certified gem Uncirculated! We sell coins from the Biblical period, as well as ancient Roman and Greek coins.','DARIC CH AU OBV sm size.jpg','image/jpeg',71277,'2010-12-23 21:32:28','2010-10-30 03:30:30','2011-03-17 18:45:26',120);
INSERT INTO `categories` VALUES (4,'Error Coins','','1995 1C DDO P-67 OBV.jpg','image/jpeg',147036,'2011-01-24 22:11:08','2010-10-30 03:30:30','2011-01-25 17:37:29',1);
INSERT INTO `categories` VALUES (5,'Foreign Coins','Generally these coins will be dated in the 1500s to the current date.','1853 GERM DUCAT OBV.jpg','image/jpeg',76485,'2010-12-23 21:31:21','2010-10-30 03:30:30','2011-03-17 18:52:04',137);
INSERT INTO `categories` VALUES (6,'Bullion Related Items','We usually have US gold American eagles at $80 over spot or Canadian maple leafs or Philharmonics at $60. over spot and Krugerrands at $35 over spot. Call to confirm 859-269-1614. US or foreign coins, bars, ingots, chains, scrap, miscellaneous gold, silver, sterling, platinum, etc. bullion related bought and sold.','1931top.jpg','image/jpeg',93130,'2010-12-03 16:54:59','2010-10-30 03:30:30','2011-01-27 20:33:59',0);
INSERT INTO `categories` VALUES (7,'Coin Jewelry','Hundreds of other possibilities in other ancient, foreign, and US categories.','chinaobv.jpg','image/jpeg',222164,'2010-12-03 16:55:31','2010-10-30 03:30:30','2011-01-05 18:23:21',5);
INSERT INTO `categories` VALUES (8,'Medieval Coinage','','con8obv.jpg','image/jpeg',9157,'2010-12-03 16:56:11','2010-10-30 03:30:30','2011-03-17 18:27:29',10);
INSERT INTO `categories` VALUES (9,'Shipwreck & Artifacts','','Luiginosshipwrecklot.jpg','image/jpeg',69393,'2010-12-03 16:49:59','2010-10-30 03:30:30','2011-01-15 15:43:47',2);
INSERT INTO `categories` VALUES (11,'U.S. Coinage','','1795 50C N-62 OBV.jpg','image/jpeg',79318,'2010-12-23 21:28:50','2010-10-30 03:30:30','2011-03-17 17:51:41',57);
INSERT INTO `categories` VALUES (12,'U.S. Proof and Mint Sets','','51_pr_set_f.jpg','image/jpeg',95257,'2010-12-02 19:03:59','2010-10-30 03:30:30','2011-01-05 18:23:22',1);
INSERT INTO `categories` VALUES (13,'U.S. Territorial Gold','','1853 $20 REV.jpg','image/jpeg',51414,'2011-01-20 15:29:26','2010-10-30 03:30:30','2011-01-20 15:29:26',1);
INSERT INTO `categories` VALUES (14,'U.S. Tokens','','rolledobv.jpg','image/jpeg',12420,'2010-12-02 18:41:15','2010-10-30 03:30:30','2011-03-16 16:03:25',2);
INSERT INTO `categories` VALUES (15,'U.S. Treasures','','1715barobv.jpg','image/jpeg',3265,'2010-12-02 18:22:15','2010-10-30 03:30:30','2011-01-05 18:23:22',1);
INSERT INTO `categories` VALUES (16,'U.S. Medals and Awards','This category will contain one of a kind treasures such as the huge silver bowl presented by Cambodia to Henry Kissinger in 1970.','kissinger.jpg','image/jpeg',344303,'2010-12-02 18:19:26','2010-10-30 03:30:30','2011-03-16 20:34:47',2);
INSERT INTO `categories` VALUES (17,'Biblical','','ab0001obv.jpg','image/jpeg',89879,'2010-12-03 14:29:52','2010-10-30 03:30:30','2011-02-16 21:58:28',19);
INSERT INTO `categories` VALUES (18,'Byzantine','','MAURICE_TIBERIUS_OBV.jpg','image/jpeg',129299,'2010-12-03 14:30:19','2010-10-30 03:30:30','2011-01-05 18:23:18',3);
INSERT INTO `categories` VALUES (19,'Greek','Amazing Numismatic Artwork','Syrgoldobv300.jpg','image/jpeg',50365,'2010-12-03 14:30:40','2010-10-30 03:30:30','2011-02-28 18:45:37',37);
INSERT INTO `categories` VALUES (20,'Jewish Coinage','Generally these coins will be dated in the 1500s to the current date.','shekelobv.jpg','image/jpeg',41053,'2010-12-03 14:31:44','2010-10-30 03:30:30','2011-01-05 18:23:18',1);
INSERT INTO `categories` VALUES (21,'Parthia','','parthamaspatesobv.jpg','image/jpeg',66196,'2010-12-03 14:32:03','2010-10-30 03:30:30','2011-03-17 18:45:26',0);
INSERT INTO `categories` VALUES (22,'Roman Imperatoral','From the deterioration of the Republic to the battle of Actium.','caesar11700obv.jpg','image/jpeg',33550,'2010-12-03 14:32:25','2010-10-30 03:30:30','2011-01-05 18:23:18',7);
INSERT INTO `categories` VALUES (23,'Roman Imperial','Commonly encoutered titles include Caesar, originated with Julius Caesar, and Augustus, originated with Octavian, also known as Augustus. In later years the title Augustus meant the supreme ruler of the Roman Empire, and the title Caesar meant heir to the throne. ','DivoAugSobv.jpg','image/jpeg',118850,'2010-12-03 14:32:43','2010-10-30 03:30:30','2011-03-17 18:43:49',46);
INSERT INTO `categories` VALUES (24,'Roman Republic','Rome and its territories from about 280 to 41 BC','wolfrev.jpg','image/jpeg',35971,'2010-12-03 14:33:03','2010-10-30 03:30:30','2011-03-17 18:43:01',7);
INSERT INTO `categories` VALUES (25,'Afghanistan','Afghanistan','abbasirev.jpg','image/jpeg',38205,'2010-12-03 14:36:15','2010-10-30 03:30:30','2011-03-17 18:52:03',4);
INSERT INTO `categories` VALUES (26,'Argentina','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (27,'Australia','','1866sovobv.jpg','image/jpeg',46300,'2010-12-03 14:38:56','2010-10-30 03:30:30','2011-01-27 22:03:16',3);
INSERT INTO `categories` VALUES (28,'Austro-Hungarian Lands and Cities','also known as Holy Roman Empire. City coinages include secular and ecclesiastical issues. See also Austria, Hungary, Czechoslovakia, Bulgaria, Serbia and others for more recent coinages.','Maximilian_1502_obv.jpg','image/jpeg',184820,'2010-12-03 14:41:20','2010-10-30 03:30:30','2011-03-17 17:09:26',1);
INSERT INTO `categories` VALUES (29,'Belgium','','25frobv.jpg','image/jpeg',42895,'2010-12-03 14:45:28','2010-10-30 03:30:30','2011-01-04 00:27:12',1);
INSERT INTO `categories` VALUES (30,'Brazil','','1821Robv.jpg','image/jpeg',58668,'2010-12-03 14:48:41','2010-10-30 03:30:30','2011-01-05 18:23:19',2);
INSERT INTO `categories` VALUES (31,'Canada','','1936_canada_$_Avf_obv.jpg','image/jpeg',75368,'2010-12-03 14:55:44','2010-10-30 03:30:30','2011-03-17 16:18:40',2);
INSERT INTO `categories` VALUES (32,'China-Empire','','1332obv.jpg','image/jpeg',86070,'2010-12-03 14:56:08','2010-10-30 03:30:30','2010-12-03 14:56:08',0);
INSERT INTO `categories` VALUES (33,'Colombia','Colombia has long history of largely gold and emerald production from ancient to modern times.','maravillasobv.jpg','image/jpeg',41469,'2010-12-03 14:56:25','2010-10-30 03:30:30','2010-12-03 14:56:26',0);
INSERT INTO `categories` VALUES (34,'Cuba','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (35,'Denmark','House of Oldenburg plaque','denmk.jpg','image/jpeg',15149,'2010-12-06 13:46:44','2010-10-30 03:30:30','2011-03-17 17:23:27',2);
INSERT INTO `categories` VALUES (36,'Dominican Republic','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (37,'East Africa','','eastafricaobv.jpg','image/jpeg',71387,'2010-12-06 13:52:02','2010-10-30 03:30:30','2010-12-06 13:52:03',0);
INSERT INTO `categories` VALUES (38,'Egypt','','faroukobv.jpg','image/jpeg',61388,'2010-12-06 13:53:34','2010-10-30 03:30:30','2011-02-01 15:33:56',6);
INSERT INTO `categories` VALUES (39,'Estonia','','kroonobv.jpg','image/jpeg',54367,'2010-12-06 14:03:01','2010-10-30 03:30:30','2010-12-06 14:03:01',0);
INSERT INTO `categories` VALUES (40,'France','The angel inscribing a tablet with the constition is perhaps one of the most admired images from French coinages.','angobv.jpg','image/jpeg',83484,'2010-12-06 14:06:00','2010-10-30 03:30:30','2011-03-17 17:31:45',1);
INSERT INTO `categories` VALUES (41,'French Indo-China','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (42,'Germany','','1911rev.jpg','image/jpeg',173539,'2010-12-06 14:43:57','2010-10-30 03:30:30','2011-02-25 22:39:42',27);
INSERT INTO `categories` VALUES (43,'Great Britain','','1660obv.jpg','image/jpeg',94177,'2010-12-06 15:31:59','2010-10-30 03:30:30','2011-03-17 18:18:54',5);
INSERT INTO `categories` VALUES (44,'Greece-Modern','','1984obv.jpg','image/jpeg',45529,'2010-12-06 15:37:26','2010-10-30 03:30:30','2010-12-06 15:37:27',0);
INSERT INTO `categories` VALUES (45,'Guatemala','','5qobv.jpg','image/jpeg',41984,'2010-12-06 15:37:50','2010-10-30 03:30:30','2011-03-17 18:29:21',0);
INSERT INTO `categories` VALUES (46,'Haiti','An incredibly poor Caribbean nation with an incredibly rich history.','haitiobv.jpg','image/jpeg',164421,'2010-12-06 15:38:20','2010-10-30 03:30:30','2010-12-06 15:38:20',0);
INSERT INTO `categories` VALUES (47,'Honduras','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (48,'Hungary','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (49,'India','','india.jpg','image/jpeg',19151,'2010-12-06 15:40:26','2010-10-30 03:30:30','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (50,'Iran-Persia','Many dynasties and kingdoms, and now an Islamic Republic have overlain, or included the area now known as modern Iran. Kingdoms previous to 1500s AD will be under Medieval or Ancient categories.','5shahiobv.jpg','image/jpeg',54323,'2010-12-06 15:41:48','2010-10-30 03:30:30','2011-01-05 18:23:20',15);
INSERT INTO `categories` VALUES (51,'Ireland','','ireland_norse.jpg','image/jpeg',68547,'2010-12-06 16:18:37','2010-10-30 03:30:30','2011-01-05 18:23:20',3);
INSERT INTO `categories` VALUES (52,'Israel','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (53,'Italy','','1931IXrev.jpg','image/jpeg',38744,'2010-12-06 16:31:19','2010-10-30 03:30:30','2011-01-05 18:23:20',11);
INSERT INTO `categories` VALUES (54,'Japan','','2buchoprev.jpg','image/jpeg',36306,'2010-12-06 16:52:37','2010-10-30 03:30:30','2011-01-05 18:23:20',5);
INSERT INTO `categories` VALUES (55,'Liberia','','1862_liberia.jpg','image/jpeg',45781,'2010-12-06 16:59:32','2010-10-30 03:30:30','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (56,'Malaya','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30',0);
INSERT INTO `categories` VALUES (57,'Mexico','Incredible strike with full scales on the snake!','1838rev.jpg','image/jpeg',60306,'2010-12-06 16:59:57','2010-10-30 03:30:30','2011-03-07 20:41:24',7);
INSERT INTO `categories` VALUES (58,'Netherlands','','1597obv.jpg','image/jpeg',45013,'2010-12-06 17:10:21','2010-10-30 03:30:30','2011-02-25 22:41:43',3);
INSERT INTO `categories` VALUES (59,'Norway','','Vikinggoldobv.jpg','image/jpeg',60311,'2010-12-06 17:12:22','2010-10-30 03:30:31','2010-12-06 17:12:22',0);
INSERT INTO `categories` VALUES (60,'Ottoman Empire','Silver akce of Bayezid II, 1481-1512 AD, about 11 mm, $37. \r\n(see also Egypt, etc for specific Ottoman local coinages)','bayezid2obv.jpg','image/jpeg',30038,'2010-12-06 17:12:55','2010-10-30 03:30:31','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (61,'Panama','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (62,'Peru','Peru has been a massive store of mineral wealth over the centuries. Pre-Columbian temples glittered with gold. The Spaniards included Bolivia and Chile in the old Viceroyalty of Peru, administered by the capital Lima.','1770obv.jpg','image/jpeg',62328,'2010-12-06 17:14:17','2010-10-30 03:30:31','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (63,'Portugal and Colonies','Portugal lead explorers claimed lands around the world for the home country during the age of colonialism.','1812rev.jpg','image/jpeg',70785,'2010-12-06 17:16:30','2010-10-30 03:30:31','2011-01-05 18:23:20',5);
INSERT INTO `categories` VALUES (64,'Puerto Rico','','1896_PR_40C_XF-40_OBV.jpg','image/jpeg',59728,'2010-12-06 17:26:42','2010-10-30 03:30:31','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (65,'Romania','','2baniobv.jpg','image/jpeg',35937,'2010-12-06 17:28:56','2010-10-30 03:30:31','2010-12-06 17:28:56',0);
INSERT INTO `categories` VALUES (66,'Russia','','5robv.jpg','image/jpeg',36328,'2010-12-06 17:29:29','2010-10-30 03:30:31','2010-12-06 17:29:29',0);
INSERT INTO `categories` VALUES (67,'Sarawak','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (68,'Saudi Arabia','','girshqobv.jpg','image/jpeg',34135,'2010-12-06 17:31:49','2010-10-30 03:30:31','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (69,'South Africa','','Screen shot 2010-12-06 at 12.31.48 PM.png','image/png',589249,'2010-12-06 17:32:31','2010-10-30 03:30:31','2010-12-06 17:32:31',0);
INSERT INTO `categories` VALUES (70,'Spain, the Homeland','Middle Ages to now. See also Spanish colonies in the New World, and Colonial Period USA coinages.','178079obv.bmp','image/bmp',117654,'2010-12-06 17:33:02','2010-10-30 03:30:31','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (71,'Straits Settlements','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (72,'Sweden','','2-3obv.jpg','image/jpeg',52043,'2010-12-06 17:35:47','2010-10-30 03:30:31','2011-01-20 15:43:37',10);
INSERT INTO `categories` VALUES (73,'Switzerland','','churobv.jpg','image/jpeg',58169,'2010-12-06 18:17:56','2010-10-30 03:30:31','2011-01-05 18:23:20',10);
INSERT INTO `categories` VALUES (74,'Medieval England','','gr_brit_penny_Nau58_obv.jpg','image/jpeg',66472,'2010-12-03 22:49:53','2010-10-30 03:30:31','2011-03-17 18:27:29',2);
INSERT INTO `categories` VALUES (75,'Medieval Ireland','','HibNorseobv.jpg','image/jpeg',41360,'2010-12-03 22:50:20','2010-10-30 03:30:31','2011-01-05 18:23:21',1);
INSERT INTO `categories` VALUES (76,'Medieval Scotland',NULL,NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (77,'Medieval Anglo-Gallic',NULL,NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (78,'California','','1853_$20_OBV.jpg','image/jpeg',52292,'2010-12-02 18:44:13','2010-10-30 03:30:31','2011-01-05 18:23:22',1);
INSERT INTO `categories` VALUES (80,'Alexander the Great and Family','Alexander the Great, and the Macedonian Kingdom','AlexGemrev.jpg','image/jpeg',35587,'2010-12-03 14:30:59','2010-10-30 03:30:31','2011-01-05 18:23:18',11);
INSERT INTO `categories` VALUES (81,'Egypt of the Greek Ptolemies','Ptolemy I, boyhood friend and general of Alexander the Great, inherited Egypt as his share of the world. He founded the dynasty which ended with Cleopatra VII.','pentaobvlg.jpg','image/jpeg',47654,'2010-12-03 14:31:17','2010-10-30 03:30:31','2011-01-05 18:23:18',3);
INSERT INTO `categories` VALUES (82,'Salzburg','','SALZBURG_OBV.jpg','image/jpeg',92262,'2010-12-03 14:42:00','2010-10-30 03:30:31','2011-01-05 18:23:19',2);
INSERT INTO `categories` VALUES (83,'French Colonies','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (84,'Augsburg','','image_full_size.gif','image/gif',75631,'2010-12-06 15:21:13','2010-10-30 03:30:31','2011-02-23 15:38:28',0);
INSERT INTO `categories` VALUES (85,'Bavaria','','image_full_size-1.gif','image/gif',100985,'2010-12-06 15:21:51','2010-10-30 03:30:31','2011-01-05 18:23:19',4);
INSERT INTO `categories` VALUES (86,'Brandenburg-Bayreuth','','1753_brand-bay.jpg','image/jpeg',67538,'2010-12-06 14:50:53','2010-10-30 03:30:31','2010-12-06 14:50:53',0);
INSERT INTO `categories` VALUES (87,'Bruns/Lune/Calen/Hann','','image_full_size.gif','image/gif',103091,'2010-12-06 15:22:32','2010-10-30 03:30:31','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (88,'Brunswick Wolfenbuttel','','Screen shot 2010-12-06 at 9.51.58 AM.png','image/png',24088,'2010-12-06 14:52:31','2010-10-30 03:30:31','2011-01-05 18:23:19',2);
INSERT INTO `categories` VALUES (89,'Brunswick-Luneburg','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (90,'Frankfurt','','image_full_size.gif','image/gif',108353,'2010-12-06 15:23:20','2010-10-30 03:30:31','2011-02-25 22:39:42',3);
INSERT INTO `categories` VALUES (91,'Hamburg','','image_full_size-1.gif','image/gif',107255,'2010-12-06 15:23:49','2010-10-30 03:30:31','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (92,'Hesse-Cassel','','1731_hesse_gold.jpg','image/jpeg',87077,'2010-12-06 14:59:48','2010-10-30 03:30:31','2011-01-20 15:43:35',1);
INSERT INTO `categories` VALUES (93,'Hesse-Homburg','','1838_germ_guld.jpg','image/jpeg',52710,'2010-12-06 15:02:15','2010-10-30 03:30:31','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (94,'Jever','','1764_jever.jpg','image/jpeg',79286,'2010-12-06 15:04:25','2010-10-30 03:30:31','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (95,'Julich-Berg','','1783_julich.jpg','image/jpeg',65043,'2010-12-06 15:05:45','2010-10-30 03:30:31','2010-12-06 15:05:46',0);
INSERT INTO `categories` VALUES (96,'Montfort','','1732_montfort.jpg','image/jpeg',71188,'2010-12-06 15:06:18','2010-10-30 03:30:31','2010-12-06 15:06:18',0);
INSERT INTO `categories` VALUES (97,'Nurnberg','','NURNBERG_OBV.jpg','image/jpeg',144754,'2010-12-06 15:09:04','2010-10-30 03:30:31','2010-12-06 15:09:04',0);
INSERT INTO `categories` VALUES (98,'Prussia','','saxonobv.jpg','image/jpeg',40373,'2010-12-06 15:10:21','2010-10-30 03:30:31','2011-01-05 18:23:19',4);
INSERT INTO `categories` VALUES (99,'Regensburg','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (100,'Saxe-Meiningen','','1831_germ_guld.jpg','image/jpeg',61545,'2010-12-06 15:16:34','2010-10-30 03:30:31','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (101,'Saxony','','1909_3m.jpg','image/jpeg',66170,'2010-12-06 15:17:58','2010-10-30 03:30:31','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (102,'Westphalia','','jerryobv.jpg','image/jpeg',41072,'2010-12-06 15:19:40','2010-10-30 03:30:31','2010-12-06 15:19:41',0);
INSERT INTO `categories` VALUES (103,'Wurttemberg','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (104,'Florence','The charm of this Italian city is legendary.','florinrev.jpg','image/jpeg',34539,'2010-12-06 16:44:26','2010-10-30 03:30:31','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (105,'Fosdinovo','','Fosd64obv.jpg','image/jpeg',52086,'2010-12-06 16:45:59','2010-10-30 03:30:31','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (106,'Papal States','','1764_ITALY_1ZEC_REV.jpg','image/jpeg',69596,'2010-12-06 16:48:24','2010-10-30 03:30:31','2011-01-05 18:23:20',2);
INSERT INTO `categories` VALUES (107,'Sardinia','','1834liraobv.jpg','image/jpeg',64994,'2010-12-06 16:50:50','2010-10-30 03:30:31','2010-12-06 16:50:50',0);
INSERT INTO `categories` VALUES (108,'Venice','','landoobv.jpg','image/jpeg',89984,'2010-12-06 16:51:19','2010-10-30 03:30:31','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (109,'Angola','',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (110,'Cape Verde Islands','Out in the Atlantic Ocean, the Cape Verde Islands have been an important stopover for shipping supplies. It has recently become a popular vacation spot for Europeans.',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (111,'Macao','A Portuguese trading and banking enclave on the coast of China. It was in a bank here in Macao recently that the dangerous North Korean counterfeit $100 bills were first detected.',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (112,'Mozambique','A long standing Portuguese colony on the Eastern coast of Africa. After independence, a long bloody civil war left the fields littered with live land mines. Hero rats, as they are known, are giant African pouched rats trained to sniff out unexploded mines here in Mozambique.',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (113,'Portugal, the Homeland','','1898_port_100r.jpg','image/jpeg',57967,'2010-12-06 17:17:26','2010-10-30 03:30:31','2011-01-05 18:23:20',3);
INSERT INTO `categories` VALUES (114,'Portuguese Guinea','Old Portuguese colony on the Gold Coast of West Africa.',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (115,'Portuguese India','Also known as Goa, a European enclave on the west coast of India.','1952_1-4r.jpg','image/jpeg',72719,'2010-12-06 17:23:45','2010-10-30 03:30:31','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (116,'Saint Thomas and Prince Islands','S. Tome and Principe islands are in the Atlantic just off the west coast of Africa, opposite Equatorial Guinea.','1948_stthom_esc.jpg','image/jpeg',57162,'2010-12-06 17:24:50','2010-10-30 03:30:31','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (117,'Timor','Timor was the western half of the island of New Guinea, administered by the Portuguese. After the colonial period ended, these lands were seized by invading Indonesian forces.',NULL,NULL,NULL,NULL,'2010-10-30 03:30:31','2010-10-30 03:30:31',0);
INSERT INTO `categories` VALUES (118,'East India Company','','1845_1-4c.jpg','image/jpeg',60243,'2010-12-06 17:37:25','2010-10-30 03:30:32','2011-01-05 18:23:20',1);
INSERT INTO `categories` VALUES (119,'Bolivia','','BOLIVIA_4R_OBV.jpg','image/jpeg',61775,'2010-12-03 14:47:31','2010-12-03 14:47:32','2011-03-17 17:15:12',1);
INSERT INTO `categories` VALUES (120,'Finland','','1882_FIN_10M_REV.jpg','image/jpeg',57988,'2010-12-06 14:03:48','2010-12-06 14:03:49','2011-03-17 17:31:00',0);
INSERT INTO `categories` VALUES (121,'Nassau','','1815_GERM_NASS_TALER_OBV-1.jpg','image/jpeg',66706,'2010-12-06 15:07:42','2010-12-06 15:07:42','2011-01-05 18:23:19',1);
INSERT INTO `categories` VALUES (122,'Half Cents','',NULL,NULL,NULL,NULL,'2011-01-04 16:52:56','2011-01-04 16:52:56',0);
INSERT INTO `categories` VALUES (123,'Small Cents','','1927 1C N-65RD OBV.jpg','image/jpeg',46157,'2011-01-20 15:31:31','2011-01-04 16:53:51','2011-01-26 20:25:00',0);
INSERT INTO `categories` VALUES (124,'Large Cents','',NULL,NULL,NULL,NULL,'2011-01-04 16:55:16','2011-03-16 15:37:39',1);
INSERT INTO `categories` VALUES (125,'Two Cents','',NULL,NULL,NULL,NULL,'2011-01-04 16:55:33','2011-01-04 16:55:33',0);
INSERT INTO `categories` VALUES (126,'Three Cents','',NULL,NULL,NULL,NULL,'2011-01-04 16:56:09','2011-01-04 16:56:09',0);
INSERT INTO `categories` VALUES (127,'Half Dimes','',NULL,NULL,NULL,NULL,'2011-01-04 16:56:31','2011-01-04 16:56:31',0);
INSERT INTO `categories` VALUES (128,'Nickels','','1942_5C_OBV.jpg','image/jpeg',110020,'2011-01-04 16:57:30','2011-01-04 16:57:30','2011-01-17 18:25:43',1);
INSERT INTO `categories` VALUES (129,'Dimes','','1829_10C_OBV.jpg','image/jpeg',112603,'2011-01-04 16:58:16','2011-01-04 16:58:17','2011-01-05 18:23:22',2);
INSERT INTO `categories` VALUES (130,'Quarters','','35_25c_p65.jpg','image/jpeg',65179,'2011-01-04 16:59:50','2011-01-04 16:59:52','2011-01-26 18:14:40',2);
INSERT INTO `categories` VALUES (131,'Half Dollars','','39_50C_PR65_OBV.jpg','image/jpeg',127299,'2011-01-04 17:02:20','2011-01-04 17:02:21','2011-01-05 18:23:22',7);
INSERT INTO `categories` VALUES (132,'Silver Dollars','','1799 $ NGC B-6 OBV.jpg','image/jpeg',44236,'2011-01-20 15:24:57','2011-01-04 17:05:43','2011-02-10 16:49:49',10);
INSERT INTO `categories` VALUES (133,'Gold Dollars','','1854g$.jpg','image/jpeg',61552,'2011-01-04 17:09:06','2011-01-04 17:09:07','2011-01-05 18:23:22',1);
INSERT INTO `categories` VALUES (134,'Gold Three Dollars','',NULL,NULL,NULL,NULL,'2011-01-04 17:09:45','2011-01-04 17:09:45',0);
INSERT INTO `categories` VALUES (135,'Quarter Eagles','','1839-C REV.jpg','image/jpeg',54892,'2011-01-20 15:26:13','2011-01-04 17:10:07','2011-01-20 15:26:13',0);
INSERT INTO `categories` VALUES (136,'Four Dollar Stellas','',NULL,NULL,NULL,NULL,'2011-01-04 17:10:18','2011-01-04 17:10:18',0);
INSERT INTO `categories` VALUES (137,'Half Eagles','','1913 $5 ANACS OBV.jpg','image/jpeg',49427,'2011-01-20 15:26:42','2011-01-04 17:10:55','2011-01-20 15:26:43',0);
INSERT INTO `categories` VALUES (138,'Eagles','',NULL,NULL,NULL,NULL,'2011-01-04 17:11:03','2011-01-04 17:11:03',0);
INSERT INTO `categories` VALUES (139,'Double Eagles','','HIGH_RELIEF_OBV.jpg','image/jpeg',100517,'2011-01-04 17:11:44','2011-01-04 17:11:45','2011-01-26 18:14:13',1);
INSERT INTO `categories` VALUES (140,'Commems 1892-1954','','jeffobv.jpg','image/jpeg',34354,'2011-01-04 17:12:44','2011-01-04 17:12:44','2011-02-28 18:48:00',16);
INSERT INTO `categories` VALUES (142,'Modern Commems 1982 on','','TORCH_RUNNER_OBV.jpg','image/jpeg',79546,'2011-01-04 17:14:56','2011-01-04 17:14:57','2011-01-26 18:17:22',1);
INSERT INTO `categories` VALUES (143,'Colonial Period','The early colonists of the Americas generally suffered from a lack of coinage for everyday commerce. Any coins from around the world were pressed into service in order to make transactions easier than barter. Since the Spaniards controlled most of the vast silver and gold production of Central and South America, the reales,escudos, and maravedis from their New and Old World mints dominated the American trading scene. Following closely in importance were the joes and reis coinages of Brazil and Portugal, as well as the guineas, crowns, and shillings of Great Britain and its possessions. French louis d’or and ecus deniers circulated widely from Arcadia to New Orleans. Arab sequins,sultanis,aspers and rials were carried in by trading ships from the Levant. Northern European traders and immigrants brought thalers,guldens, ducats, rixdollars, kroner, ore, groschens, hellers, pfennigs,roubles,poltins, and kopeks. Italian merchants brought zecchinos, more ducats, denaros and granos. Rupees, pice, anas, fanams, taels, mace,candareens, cash, mon, bus, shus and kobans arrived sometimes from the far East. If anything had metal content it was pressed into service.','1787obv.jpg','image/jpeg',69983,'2011-01-04 17:16:37','2011-01-04 17:16:38','2011-03-17 17:51:41',13);
INSERT INTO `categories` VALUES (144,'Twenty-Cent','','1875-CC_20C_OBV.jpg','image/jpeg',71738,'2011-01-04 17:18:05','2011-01-04 17:18:05','2011-01-05 18:23:22',1);
INSERT INTO `categories` VALUES (145,'Pattern Coinage','','1879_$_J-1618_OBV.jpg','image/jpeg',137435,'2011-01-04 17:19:07','2011-01-04 17:19:07','2011-01-05 18:23:22',1);
INSERT INTO `categories` VALUES (146,'Chile','','CHILE 1870 50C REV.jpg','image/jpeg',110710,'2011-03-18 16:30:28','2011-03-18 16:30:30','2011-03-18 16:30:30',0);
INSERT INTO `categories` VALUES (147,'Costa Rica','','COSTA RICA 1900 G2C REV.jpg','image/jpeg',124923,'2011-03-18 16:33:57','2011-03-18 16:34:00','2011-03-18 16:34:00',0);
INSERT INTO `categories` VALUES (148,'El Savador','','EL SAV 1925 COLON REV.jpg','image/jpeg',100619,'2011-03-18 16:34:46','2011-03-18 16:34:47','2011-03-18 16:34:47',0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ckeditor_assets`
--

DROP TABLE IF EXISTS `ckeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guid` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` tinyint(4) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `fk_assetable` (`assetable_type`,`assetable_id`),
  KEY `fk_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ckeditor_assets`
--

LOCK TABLES `ckeditor_assets` WRITE;
/*!40000 ALTER TABLE `ckeditor_assets` DISABLE KEYS */;
INSERT INTO `ckeditor_assets` VALUES (1,'view-store.png','image/png',9414,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `ckeditor_assets` VALUES (2,'view-auctions.png','image/png',9609,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `ckeditor_assets` VALUES (3,'view-offers.png','image/png',3946,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `ckeditor_assets` VALUES (4,'learn-more.png','image/png',7729,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `ckeditor_assets` VALUES (5,'view-archive.png','image/png',8415,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `ckeditor_assets` VALUES (6,'archive-thumb.jpg','image/jpeg',32227,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-12-06 23:59:15','2010-12-06 23:59:15');
INSERT INTO `ckeditor_assets` VALUES (7,'2007_may21_usa.pdf','application/pdf',2005266,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-07 15:27:48','2010-12-07 15:27:48');
INSERT INTO `ckeditor_assets` VALUES (8,'GrapeExperienceLogo.pdf','application/pdf',94697,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-07 15:42:01','2010-12-07 15:42:01');
INSERT INTO `ckeditor_assets` VALUES (9,'2006_april06.pdf','application/pdf',5531216,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-14 18:01:19','2010-12-14 18:01:19');
INSERT INTO `ckeditor_assets` VALUES (10,'2006_april06.pdf','application/pdf',5531216,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-14 18:15:38','2010-12-14 18:15:38');
INSERT INTO `ckeditor_assets` VALUES (11,'2007_may14_certified.pdf','application/pdf',2378836,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:02:57','2010-12-15 14:02:57');
INSERT INTO `ckeditor_assets` VALUES (12,'2007_may07_ancients.pdf','application/pdf',4227211,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:05:52','2010-12-15 14:05:52');
INSERT INTO `ckeditor_assets` VALUES (13,'2007_april30_certified.pdf','application/pdf',2494232,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:09:00','2010-12-15 14:09:00');
INSERT INTO `ckeditor_assets` VALUES (14,'2007_april09_antiquities.pdf','application/pdf',4858298,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:11:36','2010-12-15 14:11:36');
INSERT INTO `ckeditor_assets` VALUES (15,'2007_march26_usa.pdf','application/pdf',3308891,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:13:24','2010-12-15 14:13:24');
INSERT INTO `ckeditor_assets` VALUES (16,'2007_march19_certified.pdf','application/pdf',2386311,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:16:16','2010-12-15 14:16:16');
INSERT INTO `ckeditor_assets` VALUES (17,'2006_germanic.pdf','application/pdf',2545469,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:18:25','2010-12-15 14:18:25');
INSERT INTO `ckeditor_assets` VALUES (18,'2006_certified.pdf','application/pdf',10605462,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:22:32','2010-12-15 14:22:32');
INSERT INTO `ckeditor_assets` VALUES (19,'2006_usa.pdf','application/pdf',12534710,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:26:49','2010-12-15 14:26:49');
INSERT INTO `ckeditor_assets` VALUES (20,'2006_may29_pg1.pdf','application/pdf',9623957,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:30:50','2010-12-15 14:30:50');
INSERT INTO `ckeditor_assets` VALUES (21,'2006_may29_pg2.pdf','application/pdf',9623975,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:34:37','2010-12-15 14:34:37');
INSERT INTO `ckeditor_assets` VALUES (22,'2006_may29_pg3.pdf','application/pdf',9623977,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:40:10','2010-12-15 14:40:10');
INSERT INTO `ckeditor_assets` VALUES (23,'2006_may22_pg1.pdf','application/pdf',7309517,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:46:00','2010-12-15 14:46:00');
INSERT INTO `ckeditor_assets` VALUES (24,'2006_may22_pg2.pdf','application/pdf',5285229,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2010-12-15 14:53:07','2010-12-15 14:53:07');
INSERT INTO `ckeditor_assets` VALUES (25,'1_pic1.jpg','image/jpeg',32227,NULL,NULL,'Ckeditor::Picture',NULL,0,NULL,'2010-12-15 22:08:12','2010-12-15 22:08:12');
INSERT INTO `ckeditor_assets` VALUES (26,'COIN WORLD FEB, 2011 PG1.pdf','application/pdf',2106363,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-01-27 17:39:44','2011-01-27 17:39:44');
INSERT INTO `ckeditor_assets` VALUES (27,'COIN WORLD FEB, 2011 PG2.pdf','application/pdf',1797664,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-02-10 17:45:56','2011-02-10 17:45:56');
INSERT INTO `ckeditor_assets` VALUES (28,'COIN WORLD FEB, 2011 PG3.pdf','application/pdf',2852897,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-01 17:35:11','2011-03-01 17:35:11');
INSERT INTO `ckeditor_assets` VALUES (29,'COIN WORLD FEB, 2011 PG4.pdf','application/pdf',2382348,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-10 19:40:14','2011-03-10 19:40:14');
INSERT INTO `ckeditor_assets` VALUES (30,'COIN WORLD FEB, 2011 PG4.pdf','application/pdf',2382348,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-10 19:41:16','2011-03-10 19:41:16');
INSERT INTO `ckeditor_assets` VALUES (31,'COIN WORLD FEB, 2011 PG5.pdf','application/pdf',2262322,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-10 19:41:55','2011-03-10 19:41:55');
INSERT INTO `ckeditor_assets` VALUES (32,'COIN WORLD FEB, 2011 PG4.pdf','application/pdf',2382348,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-10 19:45:45','2011-03-10 19:45:45');
INSERT INTO `ckeditor_assets` VALUES (33,'COIN WORLD FEB, 2011 PG5.pdf','application/pdf',2262322,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-10 19:46:29','2011-03-10 19:46:29');
INSERT INTO `ckeditor_assets` VALUES (34,'COIN WORLD MARCH 2011.pdf','application/pdf',4545868,NULL,NULL,'Ckeditor::AttachmentFile',NULL,0,NULL,'2011-03-10 19:47:48','2011-03-10 19:47:48');
/*!40000 ALTER TABLE `ckeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_pages`
--

DROP TABLE IF EXISTS `dynamic_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_pages`
--

LOCK TABLES `dynamic_pages` WRITE;
/*!40000 ALTER TABLE `dynamic_pages` DISABLE KEYS */;
INSERT INTO `dynamic_pages` VALUES (1,'Home','2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `dynamic_pages` VALUES (3,'Inside','2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `dynamic_pages` VALUES (4,'Inside','2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `dynamic_pages` VALUES (5,'Inside','2010-12-09 18:06:39','2010-12-09 18:06:39');
INSERT INTO `dynamic_pages` VALUES (6,'Inside','2010-12-20 14:25:29','2010-12-20 14:25:29');
/*!40000 ALTER TABLE `dynamic_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elements`
--

DROP TABLE IF EXISTS `elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `elem_id` int(11) DEFAULT NULL,
  `elem_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_area` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_title` tinyint(1) DEFAULT '1',
  `html_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elements`
--

LOCK TABLES `elements` WRITE;
/*!40000 ALTER TABLE `elements` DISABLE KEYS */;
INSERT INTO `elements` VALUES (4,1,1,4,'TextElem',5,'Welcome',1,'welcome','2010-10-30 03:30:30','2010-12-15 21:07:35');
INSERT INTO `elements` VALUES (5,4,1,5,'TextElem',1,'About Kern Coin',1,'about-kern-coin','2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `elements` VALUES (8,5,1,7,'TextElem',1,'Auctions Coming Soon!',1,'auctions-coming-soon','2010-10-30 04:04:10','2010-10-30 04:24:17');
INSERT INTO `elements` VALUES (16,1,1,11,'TextElem',2,'Buy',1,'buy','2010-11-26 21:03:58','2010-12-15 21:07:35');
INSERT INTO `elements` VALUES (19,3,1,14,'TextElem',1,'Coinworld Article Archives',1,'coinworld-article-archives','2010-12-07 00:00:39','2010-12-07 00:00:50');
INSERT INTO `elements` VALUES (32,3,1,8,'BlogElem',1,'Coinworld Articles',1,'coinworld-articles','2010-12-14 17:58:04','2010-12-14 17:58:04');
INSERT INTO `elements` VALUES (33,1,1,16,'TextElem',3,'Special Offers',0,'special-offers','2010-12-15 20:57:48','2010-12-17 15:30:06');
INSERT INTO `elements` VALUES (35,1,1,18,'TextElem',4,'Sidebar',0,'sidebar','2010-12-15 22:08:18','2011-01-06 03:30:40');
INSERT INTO `elements` VALUES (36,6,1,19,'TextElem',1,'A Bachelor of Arts in Numismatics?',1,'a-bachelor-of-arts-in-numismatics','2010-12-20 14:27:06','2010-12-20 14:27:06');
INSERT INTO `elements` VALUES (40,1,1,22,'TextElem',6,'New Coin World Ad',1,'new-coin-world-ad','2011-02-10 17:42:31','2011-02-10 17:51:45');
INSERT INTO `elements` VALUES (42,1,1,24,'TextElem',3,'',1,'element-42','2011-02-23 19:32:33','2011-02-23 19:32:33');
INSERT INTO `elements` VALUES (43,1,1,25,'TextElem',6,'',1,'element-43','2011-02-25 20:17:56','2011-03-10 19:42:48');
/*!40000 ALTER TABLE `elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `all_day` tinyint(1) DEFAULT '0',
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `calendar_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_elems`
--

DROP TABLE IF EXISTS `item_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_elems`
--

LOCK TABLES `item_elems` WRITE;
/*!40000 ALTER TABLE `item_elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_list_elems`
--

DROP TABLE IF EXISTS `item_list_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_list_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `min_price` decimal(8,2) DEFAULT '0.00',
  `max_price` decimal(8,2) DEFAULT '0.00',
  `display_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_list_elems`
--

LOCK TABLES `item_list_elems` WRITE;
/*!40000 ALTER TABLE `item_list_elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_list_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT '0.00',
  `details` text COLLATE utf8_unicode_ci,
  `item_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `for_sale` tinyint(1) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1505 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (5,'1921 gold ducat','187.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (6,'-49 bc silver denarius of julius caesar','1977.00','Obv: elephant trampling a serpent. Rev: ladle, sprinkler that looks like a whisk, axe, and pointy priest\'s cap with under the chin ties. ','ANACS AU 55',1,1,'2010-11-01 20:27:19','2010-12-01 19:40:02',NULL);
INSERT INTO `items` VALUES (7,'283-246 bc gold pentadrachm of ptolemy ii','12700.00','The Ptolemaic Dynasty was founded by Ptolemy I, Macedonian general and boyhood friend of Alexander the Great. Ptolemy\'s inheritance from Alexander\'s kingdom were the ancient lands of the Pharoahs. The capital was Alexandria, a seaport on the delta of the Nile, which had been founded by Alexander. The tomb of Alexander was located there, and Alexander was revered after death as a manifestation on Ammon, and is depicted with the horn of this Egyptian god. Most of the Egyptian silver and gold depict the image of Ptolemy I. The last of the Ptolemies was Cleopatra 7th, lover of Julius Caesar and Mark Anthony. Ptolemy II, issuer of this large gold pentadrachm was most famous for building the venerable library of Alexandria, which became the most important center of learning in the ancient world. He also ordered the 70 scholars to translate the Old Testament from Hebrew into Greek. ','ANACS AU 58',1,1,'2010-11-01 20:27:19','2010-12-01 19:47:55',NULL);
INSERT INTO `items` VALUES (8,'1189-1199 silver denier \"the lion hearted\"','227.00','Struck for his lands in Aquitaine, inherited from his mother Eleanor. Richard never issued any coins in England with his name on them, and only spent 6 months of his reign in his homeland. He led the Third Crusade with some success by capturing the island of Cyprus and the fortress of Acre. Saladin repelled his attempts to recapture Jerusalem. There are no coins with Richard’s portrait, but these deniers, found at Civrac, France, have his name on them.<br />\r\n<br />\r\nDate: 1189-1199 AD<br />\r\nGrade: VF<br />\r\nDimensions: 18mm<br />\r\n<br />\r\nObverse: Cross above RICARDVS, omega below<br />\r\n<br />\r\nReverse: AQVITIN around cross\r\n\r\n\r\n','VF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (9,'1899 silver 1000 reis','227.00','','NGC MS 61',1,1,'2010-11-01 20:27:19','2010-12-06 17:19:56',NULL);
INSERT INTO `items` VALUES (10,'1189-1199 silver denier \"the lion hearted\"','147.00','Struck for his lands in Aquitaine, inherited from his mother Eleanor. Richard never issued any coins in England with his name on them, and only spent 6 months of his reign in his homeland. He led the Third Crusade with some success by capturing the island of Cyprus and the fortress of Acre. Saladin repelled his attempts to recapture Jerusalem. There are no coins with Richard’s portrait, but these deniers, found at Civrac, France, have his name on them.<br />\r\n<br />\r\nDate: 1189-1199 AD<br />\r\nGrade: F<br />\r\nDimensions: 18mm<br />\r\n<br />\r\nObverse: Cross above RICARDVS, omega below<br />\r\n<br />\r\nReverse: AQVITIN around cross\r\n','F',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (11,'1953 copper nickel 2 1/2 escudos','57.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (12,'1953 copper escudo','57.00','','NGC MS 66 red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (13,'1952 copper 10 avos','24.00','','NGC MS 65 RB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (14,'1952 silver pataca','77.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (15,'1950 copper nickel 50 centavos','37.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (16,'1952 silver 20 escudo','87.00','','NGC MS 67',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (17,'1952 silver 20 escudos','47.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (18,'1952 silver 20 escudos','47.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (19,'1952 silver 10 escudos','57.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (20,'1941-1942 Set of 20 Colored Glass Portrait, Frosted Intaglios','577.00','War Winter Help Society 1941-42 Set of 20 colored glass, portrait frosted intaglios of famous Germans, pierced to hang (from a Xmas tree?) Kant, Mozart, Mendel, Goethe, Bismarck, and more are pictured and named. Hitler is the only one in clear white glass. These were either awards for donations, or were sold to help care for the Nazi soldier\'s families. Set mounted in modern plush box, 2 notgeld from the society also included. Stunning glass work!<br />\r\n<br />\r\nDate: 1941-1942<br />\r\nDimensions: 36mm- long axis\r\n','No ID',1,1,'2010-11-01 20:27:19','2010-12-06 15:19:04',NULL);
INSERT INTO `items` VALUES (21,'1884 cent pattern judd-1721 struck in copper nickel with hole in center','2977.00','Very pleasing<br />\r\n<br />\r\nDate: 1884<br />\r\nGrade: PCGS PF64<br />\r\nDimensions: 17mm','PCGS PF64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (22,'1861 type 3 silver three cents','1077.00','Mostly white with some delicate toning.<br />\r\n<br />\r\nDate: 1861<br />\r\nMint: Philadelphia<br />\r\nGrade: NGC MS65<br />\r\nDimensions: 13.5mm','NGC MS65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (23,'1795 flowing hair half dollar, overton 130, r-4, possibly finest known','70000.00','Possibly finest known for this variety. Great strike with full hair detail and nearly full breast feathers on the eagle. Fields are mark free and intensely lustrous, with only a few microscopic adjustment lines. Even, very light gray toning.<br />\r\n<br />\r\nDate: 1795<br />\r\nGrade: NGC MS-62<br />\r\nDimensions: 32mm<br />\r\n\r\n','NGC (MS-62)',0,0,'2010-11-01 20:27:19','2010-12-21 19:41:50',NULL);
INSERT INTO `items` VALUES (24,'1836 gobrecht dollar  \"medal turn\"','19700.00','Original. This die orientation was used to strike 600 coins at the inauguration ceremony of the new steam press at the US mint in early 1837. Pleasing problem free coin with light toning.<br />\r\n<br />\r\nDate: 1836<br />\r\nGrade: PCGS PF55<br />\r\nDimensions: 38mm<br />\r\n','PCGS PR-55',0,0,'2010-11-01 20:27:19','2010-12-03 17:12:55',NULL);
INSERT INTO `items` VALUES (25,'1878-p gold three dollars','1597.00','Date: 1878<br />\r\nMint: Philadelphia<br />\r\nGrade: NGC AU58<br />\r\nDimensions: 20mm','NGC AU58',0,0,'2010-11-01 20:27:19','2010-12-04 01:59:11',NULL);
INSERT INTO `items` VALUES (26,'1826 silver erie canal completion medal (original box included)','12700.00','Presented to William Ireland, original box included.  This medal attracted a lot of attention at a major coin show, and I was offered two others in trade towards this one. One was a raw nice Abt unc at $6000, and the other was a light field graffiti raw Proof 60 at $9000. Mine is for the quality and pedigree buyer.<br />\r\n<br />\r\nDate: 1826<br />\r\nGrade: NGC PF64<br />\r\nDimensions: 43mm<br />\r\n<br />\r\nObverse: Posiedon and Satyr (Pan)<br />\r\n<br />\r\nReverse: Eagle over shield and canal panorama.\r\n','NGC PF64',1,1,'2010-11-01 20:27:19','2010-12-01 20:07:30',NULL);
INSERT INTO `items` VALUES (27,'1986 silver eagle one troy oz.','47.00','Date: 1986\r\nGrade: NGC MS69','NGC MS69',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (28,'2000 gold one oz. eagle','1047.00','Date: 2000<br />\r\nGrade: PCGS MS69<br />\r\nDimensions: 32mm','PCGS MS69',1,1,'2010-11-01 20:27:19','2010-12-01 20:08:30',NULL);
INSERT INTO `items` VALUES (29,'2003 silver eagle one troy oz.','37.00','Date: 2003<br />\r\nGrade: NGC MS69<br />\r\nDimensions: 40mm','NGC MS69',1,1,'2010-11-01 20:27:19','2010-12-01 20:09:25',NULL);
INSERT INTO `items` VALUES (30,'2006-w gold buffalos','1027.00','Nice Proof in mint capsule only<br />\r\n<br />\r\nDate: 2006<br />\r\nMint: West Point<br />\r\nGrade: PF<br />\r\nDimensions: 32mm','PF',1,1,'2010-11-01 20:27:19','2010-12-01 20:10:19',NULL);
INSERT INTO `items` VALUES (31,'1852 augustus humbert, united states assayer of gold, california ten dollars','6700.00','Recovered from the SS Central America, and sealed in the gold label holder by PCGS, also with fancy presentation box.<br />\r\n<br />\r\nDate: 1852<br />\r\nGrade: PCGS VF35<br />\r\nDimensions: 27mm','PCGS VF35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (32,'1852 augustus humbert, united states assayer of gold, california ten dollars','6700.00','Recovered from the SS Central America, and sealed in the gold label holder by PCGS, also with fancy presentation box.<br />\r\n<br />\r\nDate: 1852<br />\r\nGrade: PCGS VF35<br />\r\nDimensions: 27mm','PCGS VF35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (33,'1953 copper nickel 2 1/2 escudos','97.00','','NGC MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (34,'1949 copper nickel escudo','27.00','','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-01 20:15:26',NULL);
INSERT INTO `items` VALUES (35,'41-54 ad claudius silver cistophorus','1977.00','Of all the members of the family of Augustus, the future emperor Claudius seemed to be the most unlikely to attain that office. Physically crippled since childhood by perhaps polio, cerebreal palsy or multiple sclerosis ; he was regarded by his family as an embarassment. As the son of Drusus, brother of the emperor Tiberius, and Antonia, daughter of Mark Anthony and niece of Augustus; his parentage pointed towards high office. But his infirmities led Augustus and Tiberius to bypass him completely. His nephew, the emperor Caligula, did make him a figurehead co-consul in 37 AD, but Caligula mostly kept Claudius as a victim for cruel jokes.\r\n     When the Praetorian guard murdered Caligula in 41 AD, the terrified Claudius hid behind a curtain in the palace. Upon finding the cowering Claudius, the guardsmen sought the opportunity to set up their own puppet emperor. Claudius was taken to the Praetorian camp and proclaimed emperor, and soon after ratified by the Senate.\r\n     As the author of historical works on the Etruscans and the Carthaginians, Claudius had a fine mind, though trapped in a feeble body. As emperor he showed genuine administrative ability. By using talented freemen to help with state affairs, he did arouse resentment in the Senate. An abortive rebellion by a provincial governor with senatorial ties had to be quelled in 42 AD. His subsequent decision to invade and occupy Britain may have been intended to focus public attention away from the failed coup.\r\n     Claudius\' undoing was his choice of wives. His third wife, Messalina, and her lover, Gaius Silius, plotted to overthrow the emperor. Before they could act, the pair was arrested and executed. Claudius then married his niece, Agrippina the Younger. She persuaded Claudius to adopt Nero, her son by a previous marriage. Some scholars believe Nero was the biological son of Claudius anyway. Nero\'s seniority over the young Britannicus,the son of Claudius and  Messalina, placed him as heir to the throne. As Britannicus reached 13, and Claudius was preparing to desiginate him heir, Claudius died suddenly. Agrippina has been accused many times of poisoning him. As Nero consolidated his power with the help of his mother and the Praetorians, Britannicus also died, probably also poisoned.','ICG VF 30',1,1,'2010-11-01 20:27:19','2010-12-01 20:16:13',NULL);
INSERT INTO `items` VALUES (36,'Gold bar recovered from the 1715 fleet shipwrecks off the coast of florida','3700.00','Almost 88 grams, broken in two, unassayed or regulated after payment of the King’s \"quinto\" or fifth. Smuggled bars are relatively common from these shipwrecks. Broken, perhaps not by accident. Maybe the smuggler, if confronted, was planning on insisting that the broken portion was the royal tax (although a little short of 20%) and he was going to pay it as soon as possible? The unknown history: priceless. This gold bar: $3700. Visa, MC or AX are just fine. With photo certificate of authenticity.<br />\r\n<br />\r\nDimensions: 57mm long section\r\n\r\n','',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (37,'1898 silver 100 reis','197.00','','NGC MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 17:18:37',NULL);
INSERT INTO `items` VALUES (38,'1948 silver 10 escudo','377.00','','NGC MS 63',0,0,'2010-11-01 20:27:19','2010-12-01 20:18:33',NULL);
INSERT INTO `items` VALUES (39,'1946 copper escudo','37.00','','NGC MS 64 RB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (40,'1946 copper 50 centavos','57.00','','NGC MS 64 RB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (41,'1959 copper 10 centavos','37.00','','NGC MS 65 RB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (42,'1948 copper nickel escudo','477.00','','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-06 17:25:50',NULL);
INSERT INTO `items` VALUES (43,'1951 silver 10 escudos','77.00','','NGC MS 66',1,1,'2010-11-01 20:27:19','2010-12-01 20:20:43',NULL);
INSERT INTO `items` VALUES (44,'1962 copper escudo','47.00','','NGC MS 64 RB',1,1,'2010-11-01 20:27:19','2010-12-01 20:21:39',NULL);
INSERT INTO `items` VALUES (45,'1958 silver 6 escudos','37.00','','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-01 20:22:37',NULL);
INSERT INTO `items` VALUES (46,'1958 silver 3 escudos','37.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (47,'1958 copper nickel escudo','97.00','','NGC MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (48,'1958 copper 30 centavos','47.00','','NGC MS 65 RD',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (49,'1958 copper nickel 60 centavos','57.00','','NGC MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (50,'1944-denver overmintmark d/s','397.00','Will take 90% US silver in trade for this at 12.5 x face!','PCGS MS 64 RD',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (51,'1965 lincoln struck on clad 10c planchet','877.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (52,'1865 indian head cent','277.00','','NGC MS 64 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (53,'1936-d/d buffalo nickel','177.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (55,'1940-san francisco','57.00','','PCGS MS 65 Full Steps',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (56,'1943-denver','57.00','','PCGS MS 65 Full Steps',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (57,'1948-d (denver)  roosevelt dime','87.00','','PCGS (MS 66) FULL BANDS',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (58,'1950 roosevelt dime','477.00','','NGC PROOF-67 CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (59,'1964-d roosevelt dime  \"double die reverse\"','97.00','Will take US 90% silver in trade at 12.5 x face. ','NGC (AU 55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (60,'1950-philadelphia proof','77.00','','PCGS Proof 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (61,'1964-p washington 25c   rev:proof dies','77.00','Easily identified by the very bold Eagle tailfeathers.','NGC (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (62,'1964-denver  kennedy \"tripled die obverse\"','125.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (63,'1971-denver kennedy  \"double die obverse\"','177.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (64,'New rochelle 1938 50c commem \"proof-like\"','387.00','','NGC (MS-62PL)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (65,'Columbian exposition 1893 silver half dollar','67.00','These sold for $1.00 each at the Columbian World\'s Fair in Chicago. After the fair closed the managers dumped the remaining halves into circulation, and these are the most common circulated commems.','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (66,'Vespasian silver denarius (69-79 a.d.)','297.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (67,'Gratian gold solidus (367-375 a.d.)','1977.00','','ANACS (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (68,'1878 7/8tf  silver dollar','367.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (69,'Alexander the great silver drachm (334-323 b.c.)','477.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (70,'Athena \"owl\" silver tetradrachm (c.440-404 b.c.)','977.00','','NGC (CH. VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (71,'1871-g  california round 25c gold','347.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (72,'1859 california gold token  round 25c','277.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (73,'1958 centavo','9.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (74,'1946 five centavos','37.00','','NGC MS63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (75,'1946 five centavos','11.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (76,'1953 silver 25 centavos','37.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (77,'1953 silver 25 centavos','9.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (78,'1953 copper centavo','67.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (79,'1920 copper nickel centavo','177.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (80,'1960 copper nickel five centavos','57.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (81,'1916 copper nickel two centavos','177.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (82,'1948 silver twenty centavos','37.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (83,'1954 brass 2 1/2 pesetas','27.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (84,'1947(53)  brass peseta','97.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (85,'1952 brass peseta','57.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (86,'1947(52)  brass peseta','97.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (87,'323 to 315 bc','3477.00','Obv: Athena wearing crested helmet. Rev: Nike advancing holding laurel wreath and mast of galley. About 17.5 mm diameter, About 8.5 gms of near pure gold.','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (88,'311-305 bc gold stater','2977.00','Alexander made Babylon his capital, and this is where he died suddenly at a young age. The posthumous issues of Alexander from Babylon are struck in the best consistently good style. ','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (89,'-325-320 bc gold stater','3977.00','Side mint in southern Asia Minor. Possibly a lifetime issue. ','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (90,'-497 bc gold (electrum) hecte','1977.00','Electrum is a naturally occuring whitish gold alloy found in this part of the world. The incuse design lingers from its heyday of the late Archaic period. ','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (91,'285-246 bc gold tetradrachm','5977.00','13.75 gms, 19m diameter Ptolemy II is famous for building the library at Alexandria and commissioning 70 scholars to translate the Old Testament from Hebrew to Greek. ','ANACS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (92,'1857 copper 1/2 ore','97.00','','NGC MS 63 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (93,'1906 silver 2 kroner','177.00','','NGC AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (94,'1906 eb silver krona','227.00','','NGC AU 58',1,1,'2010-11-01 20:27:19','2010-12-06 18:16:28',NULL);
INSERT INTO `items` VALUES (95,'1933 copper 5 ore','67.00','','NGC AU 55 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (96,'1944 p silver gulden','47.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (97,'68-69 ad silver shekel','2977.00','From year 3 of the first Jewish uprising against Rome. Struck by the Zealots in Judaea, presumably Jerusalem, these magnificent artifacts of the early Christian period are among the most copied ancient coins. Replicas of these have been used in the Masonic rights for centuries. Third party certified and holdered by ICG as about uncirculated 50.<br />\r\n<br />\r\nDate:  68-69 AD<br />\r\nGrade: ICG AU50<br />\r\nDimensions: 22mm<br />\r\n<br />\r\nObverse: Hebrew letters reading \"shekel of Israel\" around and \"year 3\" above the Omer cup, used in the temple.<br />\r\n<br />\r\nReverse: Three pomegranates on stem \"Jerusalem the holy\" around in Hebrew.\r\n','ICG AU50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (98,'908-932 ad gold dinar of the abbasid caliphate, ruler al-muqtadir','577.00','Struck in 320 AH at the Tustar min al-Ahwasz mint (now is southeast Iran).<br />\r\n<br />\r\nDate: 908-932 AD<br />\r\nMint: Tustar min al-Ahwasz<br />\r\nGrade: ICG EF45<br />\r\nDimensions: 24mm<br />\r\n<br />\r\nObverse: Islamic script praising Allah<br />\r\n<br />\r\nReverse: Islamic script praising Allah\r\n','ICG EF45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (99,'1861-p','977.00','Popular Civil War Year. Delicate natural tone over spot free  surfaces.','NGC AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (100,'1904-p  $20 gold liberty','3477.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (101,'1859-p','187.00','Near white surfaces. Common date for type III silver three cent piece.','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (102,'1862-p','177.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (103,'1787 massachusetts half cent','1775.00','','NGC AU 53 Brown',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (104,'1797 english countermark on spanish 8 reales','6700.00','England was suffering a severe shortage of silver coinage for circulation, and resorted to counterstamping the head of George III on Spanish silver 8 reales so they could circulate in English lands and territories. This coin is excessively rare in mint state, and is probably one of the finest known','NGC MS 61',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (105,'1775 silver boliva 4 reales','377.00','Spanish silver was the staple of Colonial American commerce, and these 4 reales traded for a US half dollar until demonetized in 1857. Their use actually continued even later, especially in the South and West.','ANACS EF 40',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (106,'1780/79 gold 4 escudos','1177.00','Crowned M is the mintmark for Madrid, Spain. P.J. Assayer. This overdate is apparently unlisted in all the standard references, but is relatively cheap since very few foreign collectors attempt collections by die varieties.','NGC AU 55',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (107,'1794 silver 8 reales, or \"silver dollar\"','177.00','This coin is a popular substitute in many US silver dollar sets to avoid paying $200,000 for the Philadelphia product. Pleasing original toning.','NGC XF 45',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (108,'-370bc gold hecte from lesbos','775.00','This gold alloy is known as electrum, which occurs naturally in this part of the world. It is basically a 10 to 18 karat gold alloy with silver, giving it a light yellow to whitish look. Most of our rings today are alloyed with copper to keep the gold look reddish. Obv: Greek hero wearing broad brimmed hat Rev: lion walking. ','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (109,'1861/0 philadelphia liberty seated half dime','377.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (110,'1867 philadelphia silver half dime','877.00','','NGC Proof 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (111,'1969 gold 50 soles','1277.00','','ANACS old holder MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 17:16:05',NULL);
INSERT INTO `items` VALUES (112,'1973 gold 200 gourdes','97.00','','ANACS old holder Proof 67',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (113,'1968-b(ogota) gold 300 pesos','477.00','','ANACS old holder Proof 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (114,'1953  copper nickel 2 1/2 escudos of angola','37.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (115,'1956 copper escudo of angola','37.00','','NGC MS 65 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (116,'1812 silver 960 reis of brazil','127.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (117,'1821-Rio Silver 960 REIS','277.00','Deep original surfaces.','NGC AU 55',1,1,'2010-11-01 20:27:19','2011-03-17 16:12:31','');
INSERT INTO `items` VALUES (118,'1930 copper 5 centavos','37.00','','NGC MS 65 RB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (119,'1930 copper 10 centavos','47.00','','NGC MS 65 RB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (120,'1949 copper nickel 50 centavos','19.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (121,'1948 silver 2 shilling','177.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (122,'1948 silver shilling','127.00','','NGC Proof 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (123,'1927 h silver 20 cents','127.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (124,'1948 copper nickel shilling','37.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (125,'1906 silver leu commem','57.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (126,'1940 silver 250 lei','127.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (127,'1949 d brass 5-pfennig','227.00','','NGC Proof 64',1,1,'2010-11-01 20:27:19','2011-02-02 17:34:21','German germany deutch');
INSERT INTO `items` VALUES (128,'1949 f brass 10-pfennig','247.00','','NGC Proof 64',1,1,'2010-11-01 20:27:19','2010-12-06 14:43:40',NULL);
INSERT INTO `items` VALUES (129,'1908 b copper rappen','97.00','','NGC MS 65 Red',1,1,'2010-11-01 20:27:19','2010-12-06 18:25:03',NULL);
INSERT INTO `items` VALUES (130,'1911 b copper rappen','77.00','','NGC MS 64 Red',1,1,'2010-11-01 20:27:19','2010-12-06 18:27:27',NULL);
INSERT INTO `items` VALUES (131,'1909 b copper rappen','187.00','','NGC MS 66 Red',1,1,'2010-11-01 20:27:19','2010-12-06 18:26:21',NULL);
INSERT INTO `items` VALUES (132,'1912 b copper rappen','47.00','','NGC MS 65 Red & Brown',1,1,'2010-11-01 20:27:19','2010-12-06 18:28:26',NULL);
INSERT INTO `items` VALUES (133,'1590 geneva copper 12 sols','777.00','','NGC AU 58 Brown',1,1,'2010-11-01 20:27:19','2010-12-06 18:21:42',NULL);
INSERT INTO `items` VALUES (134,'1564 silver 1/4 dicken of st. gall','277.00','','NGC XF 40',1,1,'2010-11-01 20:27:19','2010-12-06 18:19:17',NULL);
INSERT INTO `items` VALUES (135,'1790 silver thaler of zurich','1477.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (136,'1794 silver 10 batzen of solothurn','577.00','','NGC MS 64 PL',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (137,'1814/3 copper 2 franc pattern of neuchatel','4700.00','Prince Louis Alexander Berthier was a Grand Marshall and chief communications expert for Napoleon Bonaparte. Napoleon addressed him in at least one letter as \"Cousin\". In his younger days Alexander fought under Marquis de Lafayette in the American Revolutionary War. This pattern in copper in unpriced in KM.','NGC Proof 63 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (138,'-46 bc silver denarius of julius caesar','1377.00','These denarii paid Caesar\'s legions after the battle of Thapsus in North Africa, where the Pompeian and Republican forces were defeated.\r\nCaesar proclaimed his third consulship, and his title of dictator on this design.','ANACS AU 50',1,0,'2010-11-01 20:27:19','2011-03-01 19:10:14','');
INSERT INTO `items` VALUES (139,'1934 h copper nickel 10 cents','57.00','','NGC MS 65 all 3 same grad',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (140,'1898 copper pice of east africa','77.00','','NGC AU 58 BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (141,'1880-p morgan silver dollar','57.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (142,'1932-denver washington','225.00','','NGC AU/whizzed',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (143,'2001-p silver dollar','197.00','','ICG Proof 70 Deep Cameo',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (144,'1894-o barber 50c  \"key date\"','127.00','','NGC F-12',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (145,'705 to 711 ad gold solidus of justinian ii','4977.00','Obv: curly haired, short bearded image of Christ holding book of Gospels and right hand in benediction. Rev: Justinian II and his young son holding a cross between them.','ANACS MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (146,'323-315 bc gold stater in the name of philip ii','3950.00','Philip II, the father of Alexander the Great, reigned from 359-336 BC. Many of his coin designs were issued posthoumusly. Very possibly the name Philip which appears here is simply Philip III, the half brother of Alexander. He was not competent, and his short reign from 323-315 BC was largely a regency, with the generals jousting for power while still paying nominal homage to the empire of Alexander.','ANACS (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-03 13:16:32',NULL);
INSERT INTO `items` VALUES (147,'153-154 ad gold aureus of antoninus pius','9500.00','Obv: laureate bust of Antoninus Pius in fine style high relief portraiture. Rev: Pius togate, standing, and holding globe. 7.22 gms about nickel diameter, 19 mm diameter, but thicker.\r\nRIC III-233b, Cohen-312, Calico-1527-S2 (this coin) ex: NAC 34, 11/06, lot 164','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (148,'1916 gold 2 pesos','477.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (149,'1071-1078 ad gold scyphate nomisma of michael vii','750.00','Constantinople mint. Scyphate is a Greek word meaning cup shaped, as all of these are. Michael was forced to debase the gold coinage by 25%, so he was known in the streets of Constantinople as Michael \"minus the fourth\".','NGC extremely fine',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (150,'1071-1078 ad gold scyphate nomisma of michael vii','977.00','','NGC about uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (151,'1042 to 1055 ad gold nomisma of constantine ix','977.00','Cup shaped, as all are. From a massive hoard of 30 years ago.','ICG AU 58',1,1,'2010-11-01 20:27:19','2010-12-02 18:57:33',NULL);
INSERT INTO `items` VALUES (152,'474 to 491 ad gold solidus of zeno','775.00','','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (153,'367 to 375 ad gold solidus of valentianian i','1775.00','','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (154,'364 to 367 ad gold solidus of valentinian i','3775.00','','ANACS AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (155,'164 to 165 ad gold aureus of lucius verus','9775.00','','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (156,'474 to 491 ad gold solidus of zeno','477.00','','ANACS EF 40 details (dent',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (157,'1907 copper 2 ore','57.00','','NGC AU 55 brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (158,'1884  copper ore','17.00','','NGC VF 30 brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (159,'1866 silver 1000 reis of brazil','97.00','','NGC MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (160,'1875 hc cs silver 2 kroner','97.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (161,'1775 ol  silver riksdaler of gustav iii','377.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (162,'1960 silver 5 escudo','19.00','','NGC MS 63',1,1,'2010-11-01 20:27:19','2010-12-06 17:23:17',NULL);
INSERT INTO `items` VALUES (163,'1960  silver 10 escudos','39.00','','NGC MS 63',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (164,'1960 silver 10 escudos','47.00','','NGC MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (165,'1883 copper nickel 20 rappen','77.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (166,'1815 silver thaler  of maximilian joseph','177.00','','NGC VF 25 PQ',1,1,'2010-11-01 20:27:19','2010-12-06 14:48:23',NULL);
INSERT INTO `items` VALUES (167,'1783  iec silver thaler of friedrich augustus','397.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (168,'1798 iec silver mining thaler of friedrich augustus','527.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (169,'1872 b silver double thaler','197.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (170,'1795  mc silver species thaler','247.00','','NGC AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (171,'1812 c silver 2/3 thaler','277.00','','NGC  AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (172,'1861 silver 2 thaler','157.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (173,'1839 a silver double thaler','277.00','','NGC VF 30 PQ',1,1,'2010-11-01 20:27:19','2010-12-06 15:14:18',NULL);
INSERT INTO `items` VALUES (174,'1855 a silver double thaler','247.00','','NGC AU 50',0,0,'2010-11-01 20:27:19','2010-12-27 20:00:18',NULL);
INSERT INTO `items` VALUES (175,'1954 r aluminum 10 lire','17.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (176,'Vespasian copper as (69-79 a.d.)  rome mint','1277.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (177,'1856 charlotte gold half eagle','3277.00','This coin is probably sea salvage from one of two shipwrecks. The Peterhoff sank near Abaco Island in the Bahamas on May 17, 1856. She was enroute from Charleston to Havana. The proximity of this port to Charlotte would be supported by the mint sharpness of this coin. \r\nThe second possibility is the wreck of the Lizzie Lord, which sank in the Bahamas on Sept. 24 of 1856. She was enroute from Savannah to New Orleans, and again the mint sharpness supports a Southern departure port.','Uncertified',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (178,'1895-philadelphia proof king of the morgans','34777.00','','NGC Proof 53',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (179,'1907 roman numeral high relief flat rim','7700.00','','NCS XF Details, scratched',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (180,'44 bc siver denarius of julius caesar','1977.00','Obverse: veiled head of Julius Caesar Reverse: Venus standing Rome mint. One of the most important ancient coins for any type set.','ICG VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (181,'1915 gold 5 pesos','577.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (182,'1744 silver thaler of augsburg','1277.00','','NGC XF 45',0,0,'2010-11-01 20:27:19','2011-02-23 15:38:28','');
INSERT INTO `items` VALUES (183,'1641 silver 8 reales cob of madrid','1977.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (184,'1931 year ix gold 50 lire','677.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (185,'69-79 ad gold aureus of vespasian','8700.00','About penny diameter, much thicker, high relief portrait, 7.339 grams of near pure gold','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (186,'367-375 ad  gold solidus of valens','2377.00','','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (187,'610-641 ad gold solidus of heraclius','577.00','','ICG VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (188,'297-281 bc silver tetradrachm of lysimachus','2477.00','Wonderful style, razor sharp detail, relief so high it is slightly cracking holder. Many collectors would immediately break this coin out, (save the ICG tag and Jonathan K Kern Co invoice) and savor holding this jewel in their hands. ','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (189,'465-425 bc silver tetradrachm of syracuse','1775.00','Syracuse was a major Greek colony on the island of Sicily, and her numismatic art set artistic standards to be challenged for millenia.','ICG VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (190,'123-88 bc silver tetradrachm of mithradates ii','877.00','','ICG VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (191,'1896 silver 40-centavos','1177.00','','NGC (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-06 17:28:25',NULL);
INSERT INTO `items` VALUES (192,'1895-p','0.00','','',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (193,'1927 nickel bronze 5 centavos','39.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (194,'1935 Aluminum Bronze 500-REIS','137.00','DIEGO ANTONIO FEIJO. about 23 mm diameter','NGC MS 65 PQ!',1,1,'2010-11-01 20:27:19','2011-03-17 16:14:38','');
INSERT INTO `items` VALUES (195,'1924-r  nickel lira','197.00','','NGC MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 16:42:58',NULL);
INSERT INTO `items` VALUES (196,'1924 silver rouble','287.00','','NGC MS 62',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (197,'1878 silver 5-pesetas','197.00','','NGC AU 55',1,1,'2010-11-01 20:27:19','2010-12-06 17:33:58',NULL);
INSERT INTO `items` VALUES (198,'1803 gold 1/3 guinea','477.00','about 17 mm diameter','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (199,'1823 silver schilling','67.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (200,'Pair of widow\'s mites','39.00','','Jonathan K Kern Co guaran',1,1,'2010-11-01 20:27:19','2010-12-02 18:46:28',NULL);
INSERT INTO `items` VALUES (202,'Nero brass dupondius (54-68 a.d.)','1277.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (203,'1907 low relief arabic date saint gaudens','2377.00','','PCGS MS 64 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (204,'1849-p  ten dollar liberty gold','677.00','','NGC VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (205,'1851-p  $20 gold liberty','1977.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (206,'117-118 ad hadrian gold aureus','17700.00','7.209 grams','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (207,'Early 44 bc silver portrait denarius of julius caesar','9700.00','Some historians feel this coinage issue with the portrait of Julius Caesar pushed the Republicans over the edge, and the final decision to assassinate Julius was made.','ICG AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (208,'Lapel or scarf pin with two gold love tokens','677.00','','Guranteed genuine US gold',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (209,'123 ad roman gold aureus of hadrian','9700.00','7.253 grams Reverse: Roma seated on cuirass, shield and  helmet at her side. She holds a spear and a small figure of Victory.','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (210,'350-300 bc silver stater of thyrrheium','677.00','Obverse: helmeted head of the goddess Athena, wearing Corinthian helmet tipped back on her head.','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (211,'1921-p peace dollar','487.00','','NGC MS 63',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (212,'1922-p peace dollar','127.00','','NGC (MS-65)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (213,'1922-d peace dollar','97.00','','NGC MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (214,'1922-s peace dollar  pq!!!!','257.00','','PCGS (MS-64)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (215,'1923-p peace silver dollar','57.00','','PCGS MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (216,'1923-d peace dollar','287.00','','PCGS MS 64 RD',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (217,'1923-s peace dollar','337.00','','PCGS MS 64 PQ',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (218,'1924-p peace silver dollar','47.00','','NGC  (MS-64)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (219,'1924-s peace dollar','497.00','','NGC MS 63',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (220,'1925-p peace dollar','597.00','','PCGS MS 66',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (221,'1925-s peace dollar','197.00','','PCGS MS 63',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (222,'1926-p peace dollar','117.00','','PCGS MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (223,'1926-s peace dollar  \"green label\"','247.00','','PCGS (MS 64)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (224,'1927-p peace dollar','107.00','','PCGS MS 62',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (225,'1927-d peace dollar','337.00','','PCGS (MS 63)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (226,'1928-s peace dollar','477.00','','PCGS MS 63',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (227,'1934-p peace dollar','387.00','','NGC MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (228,'1934-d peace dollar','87.00','','PCGS (AU-58)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (229,'1935-p peace silver dollar','247.00','','NGC (MS-64)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (230,'1935-s peace dollar  pq!!!!','497.00','','PCGS MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (231,'685-695 gold half solidus of justinian ii','3700.00','The half solidus is also known by its Greek name of semissis. Reverse depicts Justinian II standing, holding long cross. ','ANACS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (232,'685-695 ad gold half solidus of justinian ii','2700.00','The half solidus was also known as a semissis. The reverse depicts Justinian II standing, holding a long cross.','ANACS VF 30',1,1,'2010-11-01 20:27:19','2010-12-02 19:02:01',NULL);
INSERT INTO `items` VALUES (233,'1042-1055 ad gold nomisma','775.00','The emperor Constantin IX robed, and holding globus cruciger and labarum. NGC holder also labelled \"Money of the Bible\" since this coin is referenced in the book by Ken Bressett of the same name.','NGC Extremely Fine',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (234,'947-977 AD Gold Dinar of the Buwayid Dynasty','477.00','Rukn al-Dawla was the sultan of the Buwyid dynasty ruling in Iran and Iraq. This gold dinar was struck at the al-Muhammadiya mint.<br /><br />\r\n\r\nAbout 21 mm diameter','ICG AU 53',1,1,'2010-11-01 20:27:19','2010-12-04 01:51:43',NULL);
INSERT INTO `items` VALUES (235,'385-333 bc silver stater of aspendos in pamphylia','577.00','Two nude wrestlers grappling. Reverse depicts a slinger in action, with a triskeles in the field.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (236,'1640 gold 8 escudo doubloon','10700.00','','NGC VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (237,'1815 gold 20 francs of the \"100 days\" of napoleon bonaparte','775.00','','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (238,'737-758 AD Silver Sceat of Eadberht of Northumbria','3977.00','Joint issue of king Eadberht of Northumbria with archbishop Ecgberht of York. About 14 mm diameter. Nice light gray toning over uncirculated surfaces. S-852 Perhaps the finest known of this type.\r\n\r\n<br/> <br />\r\nObverse: Archbishop Ecgberht standing with long cross. Reverse: Eadberht\'s name around small cross. ','NGC MS 64',1,1,'2010-11-01 20:27:19','2010-12-03 23:08:07',NULL);
INSERT INTO `items` VALUES (239,'1042-1066 Silver Penny of Edward the Confessor','977.00','About 19.5 mm diameter. Obverse: helmeted bust of Edward the Confessor, who was very pious, and was cannonized after his death. London mint. Moneyer\'s name around expanding cross.','NGC AU 50',0,0,'2010-11-01 20:27:19','2011-03-17 18:24:52','');
INSERT INTO `items` VALUES (240,'1526-1544 ad silver groat of henry 8th','877.00','The silver groat equals 4 silver pence.','NGC AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (241,'209-211 ad silver denarius of geta as augustus','277.00','','ICG EF 45',1,1,'2010-11-01 20:27:19','2010-12-03 13:36:44',NULL);
INSERT INTO `items` VALUES (242,'217-218 ad silver denarius of macrinus','577.00','','NGC (AU)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (243,'218-222 ad silver denarius of elagabalus','1277.00','','ICG MS 63 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (244,'491-518 ad gold half solidus of anastasius','977.00','An angel inscribing a shield. Christogram in front.','NGC About Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (245,'565-578 ad gold solidus of justin ii','1077.00','City goddess Constantinopolis enthroned.','NGC Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (246,'610-641 ad gold solidus of heraclius','1775.00','The True Cross as mounted on steps in the Church of the Holy Sepulchre in Jerusalem.','NGC choice uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (247,'1852 gold $50 octagonal \"slug\"','28700.00','The reverse die was made by the same machines used to decorated watch cases.','NGC VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (248,'1852 gold $10 united states assay office','3977.00','Also struck in San Francisco.','NGC VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (249,'1922 no d strong reverse','7000.00','In high grades this is the rarest major variety Lincoln cent.','NGC AU 53 BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (250,'1035-1060 AD Silver Ireland Penny','4775.00','Penny of the Vikings. S-6132 about 17 mm diameter Superb mint surfaces with old collection toning. Struck at the Dublin mint by the Viking rulers.','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-03 22:53:02',NULL);
INSERT INTO `items` VALUES (251,'351-355 ad gold solidus of constantius ii','1277.00','Constantius ruled from 337-361 AD','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 13:42:25',NULL);
INSERT INTO `items` VALUES (252,'1853 gold $20 united states assay office','9700.00','Curtis, Perry and Ward were partners in their continuing contract with the United States to run the San Francisco Gold Assay Office. This coin shows the fineness of 900 Thous(andths) above the eagle. Deep original toning frequently seen on territorial gold.','NGC AU 58',1,1,'2010-11-01 20:27:19','2010-12-02 18:59:35',NULL);
INSERT INTO `items` VALUES (253,'1752-1762 gold ducat of venice','977.00','This zecchino was issued by the Doge Francesco Loredan, who ruled 1752-1762. Obverse features the doge kneeling before St. Mark, while holding a long staff topped with a cross. The reverse features Jesus surrounded by the stars of Heaven.','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (254,'898-915 Ad Silver Penny of Siefred the Viking','3700.00','S-985 about 19.5 mm The Vikings held York, England at this time and struck this coin there. Superb strike and original old collection toning.','NGC MS 62',0,0,'2010-11-01 20:27:19','2011-03-17 18:26:07','');
INSERT INTO `items` VALUES (255,'1836 Original Gobrecht Silver Dollar','17700.00','Andrew Jackson took a great interest in the design and original production of Gobrecht silver dollars. Only 1000 of these were struck in late 1836. I once owned one engraved in the field \"A. Jackson to J.W. McGrath\" McGrath was a federal judge of the period. Pleasing light gray surfaces.','PCGS Proof 40',1,1,'2010-11-01 20:27:19','2010-12-02 20:27:43',NULL);
INSERT INTO `items` VALUES (256,'1872 zs gold peso','337.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (257,'1951 aluminum 10 lire','19.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (258,'1953 silver 20 escudos','27.00','','NGC MS 63',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (259,'1952 copper nickel 50 centavos','49.00','','NGC MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (260,'1730 copper halfpenny of george ii','137.00','','NGC XF 40 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (262,'1866-pi  silver peso of maximilian (scarce)','677.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (263,'1909-1911 silver 50 cents of yunnan','59.00','','NGC VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (264,'1969 silver 50 escudos vasco de gama','177.00','','NGC Proof 63 Matte',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (265,'1714 gold 1/4 ducat','977.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (266,'1814 a silver 1/6 thaler','277.00','','NGC MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 15:13:19',NULL);
INSERT INTO `items` VALUES (267,'1883/72 mo gold peso','577.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (268,'1887 copper nickel essai sapeque','877.00','','NGC Proof 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (269,'1804 b silver 20 kreuzer','197.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (270,'1720 x silver 1/3 ecu of louis xv','577.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (271,'1179 gold zeri mahbub','377.00','','NGC AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (272,'1793 brass piece de essai','577.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (273,'1826 ra p silver 8 reales','1077.00','','NGC VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (274,'1936 silver peso','775.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (275,'1842 fk copper 2 rigsbankskilling','277.00','','NGC MS 62 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (276,'1644 a silver 1/4 ecu of louis 14th','1277.00','26.5 mm diameter. NGC holder mislabelled 1/2 E','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (277,'1720 a silver 1/3 ecu of louis xv','577.00','27.5 mm diameter','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (278,'218-222 ad silver denarius of  elagabalus','477.00','Salus feeding snake. 18 mm diameter','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (279,'491-518 ad gold solidus of anastasius','877.00','','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (280,'1826 copper farthing of george iv','377.00','','NGC MS 65 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (281,'1783 circa gold zeri mahbub of abdul hamid i','977.00','','NGC MS 63',1,1,'2010-11-01 20:27:19','2011-02-10 16:37:21','');
INSERT INTO `items` VALUES (282,'26-36 ad bronze prutah of pontius pilate','97.00','about 16 mm diameter, NGC holder designates \"Money of the Bible\"','NGC  Genuine',1,1,'2010-11-01 20:27:19','2010-12-02 18:29:34',NULL);
INSERT INTO `items` VALUES (283,'1732 silver 30 kreuzer','177.00','','NGC AU 55',1,1,'2010-11-01 20:27:19','2010-12-06 14:47:21',NULL);
INSERT INTO `items` VALUES (284,'1809 c silver 1/2 thaler','477.00','','NGC XF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (285,'1925 gold ducat','177.00','20 mm diameter, ducats always have 3.5 grams of near pure gold','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (286,'1756 a silver 1/6 th  thaler of frederick the great','377.00','','NGC AU 50',1,1,'2010-11-01 20:27:19','2010-12-06 15:11:16',NULL);
INSERT INTO `items` VALUES (287,'1673 qvinto silver crown of charles ii','247.00','','NGC (FINE-12)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (289,'1926 gold 5-quetzals','677.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (290,'1344 ah  year 2 copper half girsh for hejaz & nejd','477.00','','NGC MS 64 Brown',1,1,'2010-11-01 20:27:19','2010-12-06 17:31:38',NULL);
INSERT INTO `items` VALUES (291,'1791 a silver 30 sols of louis 16th','397.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (292,'1944 silver 50 centavos','247.00','','PCGS MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (293,'1853 philadelphia gold dollar','277.00','','PCGS  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (294,'1855-p  \"type 2\" gold dollar','997.00','','NGC AU 58 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (295,'1862-p gold dollar','1377.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (296,'1893 philadelphia','497.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (297,'1926-p  gold $2.50 indian','1397.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (298,'1878 philadelphia','2577.00','','NGC AU 58 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (299,'1905 philadelphia','297.00','','NGC AU 58 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (300,'1915  $5 gold indian','347.00','','NGC AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (301,'1901 philadelphia','557.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (302,'1907-p $2.50 gold liberty  (repunched 7)','1177.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (303,'1898 philadelphia','1275.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (304,'1907 philadelphia liberty wearing coronet','1227.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (305,'1924-p $20 gold st. gaudens','2477.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (306,'1951 proof set','775.00','Half PF 66, Quarter PF 65, Dime PF 66, Nickel PF 65, Cent PF 65RD A choice original undipped set, light toning if any at all. In separate NGC slabs. Whole set for $775.','NGC (PR65-66)',1,1,'2010-11-01 20:27:19','2010-12-02 19:06:19',NULL);
INSERT INTO `items` VALUES (307,'1807 sgh silver thaler of friedrick augustus','197.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (308,'1842 copper 8 maravedis','57.00','','NGC VF 35 BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (309,'1806 copper farthing','227.00','','NGC MS 65 BN',1,1,'2010-11-01 20:27:19','2010-12-06 17:45:02',NULL);
INSERT INTO `items` VALUES (310,'1764/3 mm copper 5 kopeks','577.00','Overdate not listed in Krause, and the Russians I meet cannot show me this in their books. In a more mature Russian market this may become much more valuable if it\'s apparent rarity holds up.','NGC XF 40 Brown',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (311,'1797 copper 5 centimes','777.00','','NGC MS 63 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (312,'1814/3 copper 2 francs pattern of neuchatel','4700.00','','NGC Proof 63 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (313,'1895 philadelphia','177.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (314,'1943 Denver Half','1775.00','Beautiful mostly white surfaces. Breen 5205 where he feels this may be a 3/2. More likely a boldly offset 3/3. Variety not mentioned on NGC holder. Rare whichever it is.','NGC MS 67',1,1,'2010-11-01 20:27:19','2010-12-02 20:20:56',NULL);
INSERT INTO `items` VALUES (315,'1861  copper nickel indian cent','277.00','','NGC (MS-62) PQ!!',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (316,'1830 silver half dollar o-113','317.00','','ANACS AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (317,'1925-p peace dollar','157.00','','NGC MS 65',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (318,'1937 philadelphia','1577.00','','PCGS Proof 64 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (319,'1927-p lincoln cent','87.00','','NGC MS-65 RED',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (320,'1938 denver buffalo nickel','57.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (321,'1938 denver buffalo nickel','57.00','','PCGS MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (322,'1952 philadelphia','37.00','','NGC Proof 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (323,'1939 mercury silver dime','287.00','','PCGS (PROOF-65)  Rattler',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (324,'1939 philadelphia','26.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (325,'1942 philadelphia','25.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (326,'1943-d (denver)  mercury dime','117.00','','NGC (MS-67) FULL BANDS',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (327,'1944 philadelphia','25.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (328,'1945-s mercury dime','197.00','','NGC (MS-67) MICRO-S',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (329,'1964-p washington 25c  rev: proof dies','17.00','','NGC (XF 45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (330,'1960 philadelphia','157.00','','NGC Proof 67 Ultra Cameo',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (331,'1879 san francisco','77.00','','PCGS MS 64 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (332,'1880 san francisco morgan','67.00','','PCGS MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (333,'1884 philadelphia','87.00','','PCGS MS 64 PQ',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (334,'1885 philadelphia','87.00','','PCGS MS 64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (335,'1921 philadelphia wide reeds','77.00','','NGC AU 58 BN',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (336,'1976-s  silver eisenhower dollar  \"type-1\"','37.00','','NGC (MS-69) CAMEO',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (337,'1941 walking liberty half','677.00','','PCGS Proof 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (338,'1976 philadelphia type ii copper nickel ike dollar','197.00','','NGC MS 66',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (339,'1898-o new orleans morgan dollar','77.00','','NGC MS 64 PQ',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (340,'1999 silver eagle','27.00','','PCGS MS 68',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (341,'1996 american silver one oz eagle','77.00','','NGC (MS-69)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (342,'2005 us american silver eagle  \"first strike\"','47.00','','NGC (MS-69)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (343,'1987 us silver eagle one oz','27.00','','PCGS MS 69',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (344,'2004 us gold eagle $50 face one troy oz net gold','1050.00','','PCGS MS 69',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (345,'2005 us gold $25 eagle 1/2 oz troy net gold','447.00','','PCGS MS 69',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (346,'1857 flying eagle copper nickel cent','577.00','','NGC MS 63 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (347,'1943 philadlephia zinc plated steel cent','79.00','','NGC MS 67',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (348,'1943-d zinc plated steel cent','32.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (349,'1943 san francisco zinc plated steel cent','117.00','','NGC MS 67',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (350,'1943 san francisco zinc plated steel cent','49.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (351,'1956 philadelphia franklin  type-2','57.00','','NGC Proof 66 CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (352,'1957 franklin half','37.00','','NGC Proof 67',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (353,'1958 franklin half  pq!! eye appeal','177.00','','NGC  (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (354,'1959 franklin','177.00','','NGC Proof 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (355,'1878  shield nickel \"proof\"','2177.00','','PCGS (PR-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (356,'1872-p  liberty seated silver dollar','297.00','','NGC Good 6',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (357,'1861/0  liberty seated half dime','347.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (358,'1914/3-p  buffalo nickel  \"key date\"','277.00','','ANACS VG 10',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (359,'1936-p \"philadelphia\"  washington 25c','87.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (360,'1869 california gold octagonal dollar','557.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (361,'1797 gold escudo','297.00','','ANACS VF 30',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (362,'1792 silver 8 reales','277.00','','NGC AU 53',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (363,'1999 w gold $10 1/4 oz american eagle business strike','770.00','','ICG MS 69',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (364,'1793 wreath cent s-10 vine & bars edge','9700.00','','PCGS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (365,'1920 silver wilson \"dollar\"','577.00','','ANACS MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (366,'1851 fifty dollars gold \"slug\"','34700.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (367,'1849 moffat & co $10 gold  s.s. central america','9750.00','','PCGS (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (368,'954-961AD Gold Dinar of Abd Al Malik (Sultan)','277.00','AH 348, about 22 mm in diameter. The Saminid dynasty ruled in what is now Afghanistan. This was struck at the Herat mint.','ICG VF 30',1,1,'2010-11-01 20:27:19','2011-03-17 18:52:03','');
INSERT INTO `items` VALUES (369,'913-959 ad gold solidus of constantine 7th','977.00','','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (370,'393-423 ad gold solidus of honorius','977.00','','ICG AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (371,'829-842 ad gold solidus of theophilus','977.00','','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (372,'1850 philadelphia large date','1677.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (373,'1893 san francisco','1177.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (374,'1849 philadelphia','700.00','','NGC AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (375,'1848 philadelphia','877.00','','NGC AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (376,'1926 philadelphia','1277.00','','PCGS MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (377,'1839-c  $2.5 quarter eagle  \"recut 39\"','0.00','','PCGS (Genuine)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (378,'1861 philadelphia','11700.00','','PCGS MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (379,'69 ad silver denarius of vitellius','1775.00','','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (380,'510-490 bc silver stater from thasos','377.00','','ICG VF 25',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (381,'641-668 ad gold solidus of constans ii','1477.00','','ICG MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (382,'1883 silver quarter of the hawaiian kingdom','777.00','','PCGS MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (383,'1883 silver half dollar of the hawaiian kingdom','697.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (384,'1847 copper cent of the hawaiian kingdom','977.00','','NGC AU 58 Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (385,'1883 silver quarter of the hawaiian kingdom','297.00','','PCGS MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (386,'1883 silver quarter of the hawaiian kingdom','157.00','','PCGS AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (387,'1829 Capped Bust Dime','1877.00','About 18 mm diameter, as are all 1829 bust dimes through 1837. JR 7 is also the small 10 C variety. Mostly frosty white surfaces with some light colorful toning. PQ eye appeal for a mere MS 61. (jr-7)','NGC (MS 61)',1,1,'2010-11-01 20:27:19','2010-12-02 19:45:41',NULL);
INSERT INTO `items` VALUES (388,'1869 octagonal gold dollar bg 1106','477.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (389,'1786-t gold louis d\'or of louis 16th','3177.00','','NGC MS 65',0,0,'2010-11-01 20:27:19','2011-03-17 17:31:45','');
INSERT INTO `items` VALUES (390,'14-37AD Silver \"Tribute Penny\"','1177.00','14-37AD Silver \"Tribute Penny\" of the Bible, Tiberius. Tiberius is also highly collected as the 3rd of the Twelve Caesars. Reverse: Livia, the mother of Tiberius, enthroned.','ANACS EF 45',1,1,'2010-11-01 20:27:19','2010-11-17 18:37:59',NULL);
INSERT INTO `items` VALUES (391,'2 bc to 14 ad silver denarius of augustus caesar','577.00','This type of Augustus denarius shows his laureate bust on the obverse and his two sons Gaius and Lucius Caesars on the reverse. These were struck 2 BC to 14 AD.','ANACS VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (392,'1943 denver steel cent','32.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (393,'1943 san francisco zinc plated steel cent','47.00','','NGC MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (394,'1946 san francisco  lincoln wheat cent','47.00','','NGC MS 66 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (395,'1950 philadelphia','47.00','','NGC MS 66 red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (396,'1951 philadelphia','39.00','','NGC MS 66 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (397,'1955 san francisco','22.00','','NGC MS 66 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (398,'1956 philadelphia lincoln','57.00','','NGC MS 66 red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (399,'1956 denver','14.00','','MS 66 red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (400,'1957 philadelphia','47.00','','NGC MS  66 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (401,'1957 denver','17.00','','NGC MS 66 red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (402,'1958 philadelphia','17.00','','NGC MS 66 RED',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (403,'1958 denver','9.00','','NGC MS 66 Red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (404,'1956-p  \"philadelphia\"  washington 25c','127.00','','PCGS (MS-67)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (405,'1953-s \"san francisco\"  washington 25c','97.00','','PCGS (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (406,'1951-s  \"san francisco\" washington 25c','57.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (407,'1947 denver','47.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (408,'1935-p  Washington 25c','117.00','Pleasing, delicate light gray toning. Nice luster. CV trends 150, sell for 117.','PCGS (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-02 19:53:21',NULL);
INSERT INTO `items` VALUES (409,'1887 philadelphia  (887/887)','197.00','','NGC MS 65',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (410,'1884-o Morgan Dollar','127.00','Lustrous white.','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-02 23:35:42',NULL);
INSERT INTO `items` VALUES (411,'1904-o  morgan silver dollar','117.00','','NGC MS 65',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (412,'1883 carson city','775.00','','PCGS MS 65 Proof Like',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (413,'Italy, syracuse in sicily, gold 100-litra','19750.00','','ANACS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (414,'1368 - 1414 ad silver solidino of venice','97.00','These frequently circulated in medieval England as a halfpence, and were nicknamed \"Galley Halfpence\" after the Venetian ships which brought the merchants. By 1412 they actually outweighed the local English halfpence. We also have Fine coins for $47. each.','VF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (415,'1368-1400 silver solidino','97.00','These frequently circulated in medieval England as a halfpence, and were nicknamed \"Galley Halfpence\" after the Venetian ships which brought the merchants. By 1412 they actually outweighed the local English halfpence. We also have Fine coins for $47. each.','VF',1,1,'2010-11-01 20:27:19','2010-12-06 16:52:12',NULL);
INSERT INTO `items` VALUES (416,'1889-p morgan dollar','977.00','','PCGS (MS-65) PROOF-LIKE',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (417,'582-602 ad gold solidus of maurice tiberius','397.00','','ICG VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (418,'14-37 ad silver \"tribute penny\" of the bible','477.00','','ANACS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (419,'2 bc to 14 ad silver denarius of augustus caesar','447.00','','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (420,'96-98 ad silver denarius of nerva','577.00','','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (421,'81-96 ad silver denarius of domitian','147.00','','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (422,'79-81 ad silver denarius of titus','377.00','Obverse legend: T(itus) Caesar around his laureate bust. Reverse: Pax enthroned, holding olive branch.','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (423,'72-73 ad silver denarius of vespasian','147.00','','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (424,'65-66 ad silver denarius of nero','677.00','','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (425,'69 ad silver denarius of vitellius','1277.00','','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (426,'430-440 ad gold solidus of theodosius ii','977.00','','ICG AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (427,'705-711 ad gold solidus of justinian ii second reign','4700.00','Obverse: dramatic portrait of Christ. Reverse: half figure busts of Justinian and his son Tiberius holding long cross.\r\n\r\nSee also: Byzantine for related coins.','NGC Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (428,'1361 ad gold noble of  edward iii','8500.00','Gold nobles of this type were very important to the trade, especially wool, from Engand to the continent and back. The type was imitated (as a form of flattery) by the Low Countries for several centuries thereafter.','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (429,'37-41 ad brass sestertius of caligula','1477.00','Reverse: SPQR OB CIVES SERVATOS, honorific titles which was nosense propaganda for Caligula.','ICG VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (430,'1143-1180 ad gold hyperpyron of manuel i','677.00','','ICG AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (431,'171-145 bc silver tetradrachm of eukratides i','3977.00','The Indo Greek kingdom, also known as Bactria, was a direct result of Alexander the Great\'s foray to the East. Some coins of this series feature both Greek and Karosthi legends. Some of the Hellenistic portraiture is as fine as from anywhere in the ancient world. ','ICG MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (432,'69 ad silver denarius of otho','1477.00','','ICG VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (433,'180 ad silver denarius of crispina, wife of commodus','177.00','','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (434,'177-192 ad silver denarius of commodus','277.00','','ANACS 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (435,'Pertinax 193ad, silver denarius','3700.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 14:03:11',NULL);
INSERT INTO `items` VALUES (436,'44 bc silver portrait  denarius of julius caesar','775.00','','Fine/VG , JKKern guarante',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (437,'41-54 ad brass sestertius of claudius','277.00','','Heavily retooled',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (438,'1773 virginia copper halfpenny','1277.00','','PCGS MS 63 Brown',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (439,'1773 virginia copper halfpenny','1775.00','','PCGS MS 63 Red Brown',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (440,'482-472 bc silver didrachm from akragas','977.00','Reverse: sea eagle. Akragas, later named Agrigentum by the Romans, and Agrigento now, has a wonderful array of Greek temples in very nice state of preservation. It is a must see stop on a visit to Sicily.','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (441,'160-145 bc silver drachm of menander','277.00','','ICG AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (442,'160-145 bc silver drachm of menander','197.00','','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (443,'276-282 ad silvered (billon) antoninianus of probus','297.00','','ICG MS 63',1,1,'2010-11-01 20:27:19','2010-12-03 13:39:55',NULL);
INSERT INTO `items` VALUES (444,'270-275 ad silvered (billon) antoninianus of aurelian','347.00','','ICG MS 62',1,1,'2010-11-01 20:27:19','2010-12-03 13:39:13',NULL);
INSERT INTO `items` VALUES (445,'163-130 bc silver drachm of ariarathes v of cappadocia','377.00','','NGC About Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (446,'307-337 ad billon (silvered) follis of constantine i the great','147.00','','NGC (ABT. UNC.)',1,1,'2010-11-01 20:27:19','2010-12-03 13:41:36',NULL);
INSERT INTO `items` VALUES (447,'1838 gobrecht silver dollar','29700.00','I can take 90 % US coins in trade on this coin at a rate of 9.8 x times face. Call to discuss.','NCS proof, obv scr, clnd',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (448,'73-72 bc silver tetradrachm of ptolemy 12th','377.00','Razor sharp detail, nice style, superb old collection toning.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (449,'Poseidonia silver stater (480-400bc)','577.00','Paestum is the modern name of this ancient Greek colony in southern Italy. It has the finest, best preserved Archic period Greek temples in the world. Wonderful site.','NGC (FINE)',1,1,'2010-11-01 20:27:19','2010-12-03 13:10:27',NULL);
INSERT INTO `items` VALUES (450,'323-315 bc silver tetradrachm in the name of philip ii','577.00','The reverse design possibly depicts the famous story of Alexander the Great taming the rambunctious stallion Bucephalus.','ICG VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (451,'2 bc to 14 ad silver denarius of augustus caesar','775.00','','ANACS VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (452,'18-16 bc silver denarius of augustus','477.00','Reverse: Capricorn (birth sign of Augustus) holding globe, cornucopiae above. Mint of Colonia Patricia ( I believe in Spain ) S-1592','ANACS VF 25',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (453,'13-14 ad silver denarius of augustus and livia','977.00','','ANACS VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (454,'14-37 ad silver tiberius denarius \"tribute penny\" of the bible','1277.00','','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (455,'460-404 bc silver tetradrachm of athens','977.00','Before coin removal.','ANACS EF 45 removed from',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (456,'350-281 silver didrachm from velia in lucania','577.00','','ANACS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (457,'483-472 bc silver didrachm from himera','1277.00',' ','NGC (AU)',1,1,'2010-11-01 20:27:19','2010-12-02 19:09:38',NULL);
INSERT INTO `items` VALUES (458,'133-134 ad silver sela of the bar kochba revolt','3977.00','','NGC Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (459,'1854  gold $3','1297.00','','PCGS (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (460,'Grant 1922 silver 50c commem','377.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (461,'Columbia south carolina 1936-d 50c commem','277.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (462,'Columbia south carolina 1936-s 50c commem','277.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (463,'Columbia south carolina1936-p 50c commem','277.00','','PCGS MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (464,'Spanish trail 1935 half dollar','1977.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (465,'1935-p  mercury dime  \"full bands\"','100.00','','PCGS (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (466,'1935 Hudson 50c Commen ','1477.00','NEW PRICE!! Original undipped toning.','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-03 00:32:23',NULL);
INSERT INTO `items` VALUES (467,'Lincoln-illinois 1918 commem 50c','427.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (468,'1936-p buffalo nickel \"blazing p/l areas\"','97.00','','NGC (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (469,'Monroe 1923-s commemhalf','997.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (470,'Oregon trail 1936-p commem 50c','297.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (471,'Hadrian (117-138ad) gold aureus','5700.00','','ICG (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (472,'Oregon 1936-s commem 50c','427.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (473,'Oregon trail 1937-d commem 50c','247.00','','NGC MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (474,'1938-p Oregon Trail 50c Commem','347.00','Original undipped near white.','NGC MS 66',1,1,'2010-11-01 20:27:19','2010-12-03 00:40:58',NULL);
INSERT INTO `items` VALUES (475,'Oregon trail 1938-d commem 50c','377.00','','PCGS MS 66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (476,'336 bc silver tetradrachm of alexander the great','1577.00','Reverse: Zeus enthroned, holding eagle. Prow of galley in field. The vast majority of Alexander tetradrachms are not lifetime, and certainly not this early. Some luster on lightly toned, uncleaned surfaces.','EF-AU',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (477,'1799 gold escudo madrid','1977.00','This denomination was legal tender for $2. US until 1857.','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (478,'1621-1665 gold 2 escudo cob seville','1977.00','This denomination traded in the Colonial and early USA until 1857 for usually $4.','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (479,'1949-s franklin','147.00','','PCGS MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (480,'89-88 bc  thirty pieces of silver','877.00','Obverse: laureate head of Melquarth, the Phoenecian version of Hercules. Reverse: eagle on prow of galley (Tyre was a major seaport). Ancient coins could easily circulate for 200 years, so this coins usable life overlaps with the lifetime of Christ.','ICG EF 45',1,1,'2010-11-01 20:27:19','2010-12-02 18:34:04',NULL);
INSERT INTO `items` VALUES (481,'35-36 ad silver thirty pieces of silver','725.00','Obverse: laureate head of Melquarth, the Phoenecian version of Hercules. Reverse: eagle on prow of galley (Tyre was a major seaport). \r\nAfter 20 BC the mintage of these coins moved from Tyre to Jerusalem, since they were so critical for temple taxation. This is a classic, beautifully centered and struck Jerusalem mint example.','ICG EF 45',1,1,'2010-11-01 20:27:19','2010-12-02 18:31:58',NULL);
INSERT INTO `items` VALUES (482,'46-16 bc silver tetradrachm of antioch','347.00','These coins of Antioch circulated heavily throughout the Levant. Antioch is the first city where followers of Christ called themselves Christians.','NGC Extremely Fine',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (483,'40-37 bc bronze prutah of m. antigonus of judaea','247.00','Mattathias Antigonus, son of Aristobulus II, was king of Judaea from 40-37 BC. He sought the aid of the great Persian king Orodes II, allegedly with gift of 500 Jewish women. With the help of this Parthian army he was able to occupy Jerusalem. At least one historian accuses Mattathias of gnawing off his uncle Hycarnus\' ears. Since a disfigured high priest was not allowed, Mattathias claimed the vacant office for himself. Herod (later the Great) of the converted (to Judaism) Idumaean dynasty, and governor of Galilee, fled to Rome to enlist support, and where he was officially designated King of Judaea. Herod and the Roman legions besieged Jerusalem, and captured it in 37 BC. Mattathias was executed, which ended the Hasmonean dynasty.','NGC  Genuine',1,1,'2010-11-01 20:27:19','2010-12-02 18:32:51',NULL);
INSERT INTO `items` VALUES (484,'1940 copper 1/2 cent','77.00','','NGC MS 64 red brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (485,'1931-d mercury dime','497.00','','PCGS (MS 66) Full Bands',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (486,'1818  capped bust half  pq!!','177.00','','NGC (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (487,'1834 o-121 bust half dollar','297.00','','NGC about uncirculated 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (488,'1789 ad silver rupee of tipu sultan/mysore','377.00','Patan mint, KM-126 Nice lustrous, lightly toned surfaces.','NGC MS 63',1,1,'2010-11-01 20:27:19','2010-12-06 15:39:29',NULL);
INSERT INTO `items` VALUES (489,'1917 philadelphia walking liberty','137.00','','NGC About Uncirculated 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (490,'1937 philadelphia liberty walking','97.00','','NGC MS 64 way PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (491,'1938  bp copper filler','37.00','','NGC MS 65 red',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (492,'1804 silver bank dollar','347.00','Officially a token, the Bank of England coinages filled a huge empty spot in British day to day commerce. These were struck over other countries silver dollars, usually Spanish 8 reales and Brazil 960 reis, though other undertypes are possible. Very popular as a US collection substitute for the multi million 1804 USA dollar.','ICG very fine 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (493,'1804 gold half guinea of george iii','377.00','About 20 mm diameter','NGC VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (494,'1861 gold sovereign (or pound sterling) of queen victoria from the douro shipwreck','497.00','','NGC',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (495,'Christoper bechtler gold dollar, circa 1837-1842','3977.00','Bechtler gold was readily accepted in day to day commerce. The estate of a Lexington, KY judge in 1844 described his gold coins, of which fully 10% were Carolina and Georgia Bechtler gold.','PCGS about uncirculated 5',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (496,'1870 round liberty gold dollar bg 1203','4977.00','The key of the basic 8 coin California gold type set.','NGC MS 61 Proof Like',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (497,'1872 english gold sovereign from the douro','477.00','Reverse: shield back, die # 96. Obverse: young head Queen Victoria','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (498,'1943 philadelphia walker','97.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (499,'1935-p  walking liberty 50c  pq!!','87.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (500,'1896 philadelphia  morgan dollar','117.00','','PCGS MS 65',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (501,'1834 plain 4 classic head no motto gold $5','1877.00','These were nicknamed \"yellowjackets\" during the Banking turmoil of the 1830s.','PCGS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (502,'1897 san francisco gold $10','1077.00','','NGC MS 61 Bass pedigree',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (503,'1916-d (denver) mercury dime  \"key date\"','41700.00','A prize of anyone\'s collection.','NGC (MS 65) FULL BANDS',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (504,'1593 silver double (2) thaler','2700.00','The reverse tower pounded by stormy winds is an allegory for the Christian bulwarks of eastern Europe, such as the archbishopric of Salzburg, resisting the spread of Islam led by the Ottoman Turks.','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (505,'1861 California Civil War Patriotic','1275.00','Reverse: \"UNION NOW AND FOREVER  ONE AND INSEPERABLE 1861\" inscribed within wreath. About 3 mm thick. ex: Fauver c 1861-10, 218A/441A, Fauver wrote the reference on these patriotics. This is pedigreed to his collection where he called it a rarity 9. I don\'t know what rarity scale he used.','JKKern Co guarantee',1,1,'2010-11-01 20:27:19','2010-12-02 18:16:25',NULL);
INSERT INTO `items` VALUES (506,'67-68 ad first revolt shekel','1977.00','Reverse: pomegranate branch. This is one of the most widely recognized coins from the Holy Land. It is certainly the most relevant coin to the fall of Jerusalem in 70 AD by Titus and the destruction of the temple. Imitative versions of this coin have been used in the Masonic rites for hundreds of years.','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (507,'138-126 bc temple dues','377.00','Obverse: diademed head of Greek Seleucid king Antiochus VII. Reverse: eagle on prow of galley (Tyre was a very important seaport), club of Hercules to left. Hercules, locally worshipped as Melquarth, was the patron god of Tyre. About 19 mm diameter. About 7.1 grams.','NGC Very Fine',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (508,'69-79 ad brass sestertius judaea capta','477.00','Reverse: Possibly Vespasian (or Titus) standing to left of palm tree, holding spear and parazonium. Captive Jewess mourning, seated to right of palm tree. IVDAEA CAPTA around. H-775. Photo certificate on request.','JKKern Co guarantee',1,1,'2010-11-01 20:27:19','2010-12-02 18:33:40',NULL);
INSERT INTO `items` VALUES (509,'1928 gold ducat','167.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (510,'1928 gold ducat','187.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (511,'1672 klippe silver siege coin','1977.00','Siege pieces like these were usually emergency coinages to pay the troops, oftentimes mercenaries, who would desert if not paid. Wealthy local inhabitants, and sometimes the churches, would have their silver plates cut up into uniform weights of coins, and struck with dies. To paraphrase David Hall \"Only real men collect siege coins\". By this I mean it is a daunting task, and I don\'t think anyone has ever completed such a collection.','NGC MS 63',1,1,'2010-11-01 20:27:19','2010-12-06 17:11:11',NULL);
INSERT INTO `items` VALUES (512,'1686 silver 30 stuivers of west friesland','377.00','','NGC VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (514,'1900 mo  silver 20 centavos','77.00','','NGC AU 58',1,1,'2010-11-01 20:27:19','2010-12-06 17:04:52',NULL);
INSERT INTO `items` VALUES (516,'1920 mo copper 20 centavos','577.00','','ANACS old holder MS 64 Br',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (517,'1910 gold 5 soles','297.00','','NGC MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 17:15:08',NULL);
INSERT INTO `items` VALUES (518,'1277AH (1865) year 4 Copper 4-PARA','97.00','Beautiful calligraphy','NGC MS 64 RED',1,1,'2010-11-01 20:27:19','2011-03-17 17:27:20','');
INSERT INTO `items` VALUES (519,'1277ah year 4 bronze 20 para','57.00','beautiful calligraphy','NGC MS 63 red brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (520,'1917 h copper nickel 1 millieme','57.00','','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (521,'1917 h silver 20 piastres','277.00','Well struck Heaton mint product, choice original lightly toned surfaces','NGC AU 55',1,1,'2010-11-01 20:27:19','2010-12-06 13:55:55',NULL);
INSERT INTO `items` VALUES (522,'1923 silver 10 piastres of fuad i','277.00','AH 1341 choice original undipped, lightly toned surfaces','NGC MS 63',1,1,'2010-11-01 20:27:19','2010-12-06 13:57:14',NULL);
INSERT INTO `items` VALUES (523,'AH-1356 (1937) Silver 10-piastres of FAROUK','127.00','Farouk was one of the world\'s most famous coin collectors.','NGC MS 63',1,1,'2010-11-01 20:27:19','2011-03-17 17:28:38','');
INSERT INTO `items` VALUES (524,'AH1358 (1939) Silver 20- Piastres of FAROUK','197.00','Farouk was one of the world\'s most famous coin collectors. ','NGC AU 58',1,1,'2010-11-01 20:27:19','2011-03-17 17:29:57','');
INSERT INTO `items` VALUES (525,'45 to 46 ad \"thirty pieces of silver\"','797.00','High quality silver, fresh, hard surfaces from a hoard deposited about 52 AD. ','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (526,'90 bc silver of calpurnius piso','277.00','Reverse: rider on racing horse. Roman republic moneyers changed every year and hundreds of varieties exist.','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (527,'75 bc silver denarius of l.f. mensor','227.00','Reverse: Roma, assisting togate figure into chariot, whose horses are rearing nervously.  This may be a reference to the Roman law passed in 90 BC granting citizenship to all Italians. FARSULEI in exergue.','ICG VF 25',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (528,'1976 gold medal of valor','2277.00','The Scotia mine disaster long stood as one of the worst in US mining history. Richard Sammons was part of the  team entering the mine on the second day in an effort to rescue miners trapped after the first collapse. I grade it about uncirculated, gently polished.','Jonathan K Kern Co guaran',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (529,'31 to 32 ad \"thirty pieces of silver\"','675.00','','Very Fine,  JKKern Co gua',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (530,'44 bc early julius caesar portrait','7700.00','Reverse: standing figure of the goddess Venus, from whom the Julia clan claimed descent. Moneyer\'s name: P. Sepullius Macer around. Centered and fully struck at edges, with this fine style, I would pay $25,000. for this quality of surfaces. ','ICG AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (531,'Brutus silver denarius (42 bc) asia minor','2477.00','Reverse: sacrificial tripod between axe and simpulum (ladle). The axe was used to slay the sacrificial bull and the ladle would be used to pour the blood into the burning coals held by the tripod. ','ICG (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (532,'307-337 ad follis of saint helena','297.00','Reverse: the goddess Security holding branch. These folles were about 5% silver, with a white look only when new.','NGC EF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (533,'477-388 bc electrum hecte from phokaia','497.00','Reverse: quadriparte punch. Phokaia was a Greek colony of western Asia Minor. Bodenstadt 87','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (534,'323-317 bc gold stater','3277.00','Reverse: Nike advancing left, holding laurel wreath and mast of a galley. Very attractive style. ','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (535,'270 bc gold octodrachm of arsinoe ii','14700.00','Reverse: double cornucopiae, tied with fillet. These huge gold octodrachms of ancient Egypt were the largest circulating gold coins until the Spanish 8 escudos of the 1600s AD. Ancient Egypt had acess to gold mines to the south, and further in Nubia. Egypt also sold large quanities of grain to the rest of the world, and was geographically blesse with crossing trade routes of 3 continents.','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (536,'270-265 bc silver didrachm','6700.00','Reverse: she wolf suckling Romulus and Remus, ROMANO in exergue. These early Republican silver didrachms basically went with the normal silver denominations of the surrounding Greek colonies in Italy. This particular design is perhaps the most famous of all Roman coinages, with the she wolf and twins. It is alos the most desireable because of its relative large size compared to most Roman silver.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (537,'211 to 206 bc silver victoriatus','877.00','Reverse: Victory erecting a trophy (scarecrow like figure) of captured arms and armour. VB monogram between, and ROMA in exergue.','ANACS AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (538,'325-241 bc silver didrachm of neapolis','877.00','Reverse: man headed bull being crowned by flying Nike , YM monogram beneath bull, \"Neapolis\" in exergue','ANACS VF 35',0,0,'2010-11-01 20:27:19','2010-12-02 19:05:13',NULL);
INSERT INTO `items` VALUES (539,'146-32 bc bronze of sparta','277.00','Reverse: eagle\r\nAbout 19 mm diameter.','ANACS Fine 15',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (540,'457-474 ad gold solidus of leo i','877.00','Reverse: Angel holding long cross','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (541,'685-695 ad gold solidus of justinian ii','9700.00','Reverese: Justinian II standing, holding cross.','ANACS MS 61',1,1,'2010-11-01 20:27:19','2010-12-02 19:03:20',NULL);
INSERT INTO `items` VALUES (542,'145-142 bc silver drachm of antiochus vi','977.00','Reverse: Apollo seated. Presumably the unusual radiate diadem worn by Antiochus the Sixth identifies him with the Sun god.','NGC About Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (543,'375AD Gold Barbaric Solidus','977.00','About 21 mm diameter, 4.10 grams gross weight( usual Roman standard of about 4.45 grams) Obv: laureate and draped bust of Constantius II in very passable style. Lettering style slightly off. Of uncertain origins, these things are usually found on the frontiers of the old Roman empire, possibly of Germanic, Dacian or Sarmatian origins.<br /> <br />\r\n\r\nRoma and Constantinopolis holding inscribed shield between them, again style slightly off. Lettering slightly crude. Most obvious deviance in mintmark, where A becomes lambda. Apparently the prototype was one of the prolific Antioch mint solidi of Constantius.','ANACS EF 45',1,1,'2010-11-01 20:27:19','2010-12-04 01:46:49',NULL);
INSERT INTO `items` VALUES (544,'1252-1422 a.d. gold florin','1477.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-06 16:45:44',NULL);
INSERT INTO `items` VALUES (545,'179-171 bc silver perseus','3477.00','Reverse: eagle on thunderbolt, all within wreath of (?oak) leaves. 16.93 grams','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (546,'450-457 ad gold solidus of marcian','1677.00','Reverse: angel holding long jewelled cross, Constantinople mint','NGC Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (547,'336-323 bc gold stater of alexander','37000.00','Reverse: Nike (Greek goddess of Victory) standing, holding laurel wreath and mast of ship. Two handled cantharos in left field.','NGC Choice Uncirculated',1,1,'2010-11-01 20:27:19','2010-12-03 13:18:01',NULL);
INSERT INTO `items` VALUES (548,'976-1025 ad gold basil ii \"bulgaroktonos\"','1775.00','Reverse: Robed and jewelled half length figures of Basil II and his brother, the future Constantine VIII. Basil was one of the most effective and important Byzantine emperors in its entire history. His nickname came from utterly crushing the Bulgarian threat in the Balkans.','ANACS AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (549,'197 ad silver denarius of caracalla caesar','775.00','Reverse: superbly detailed standing figure of goddess Felicitas (Happiness)','ANACS AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (550,'221-222 ad silver denarius of elagabalus','577.00','Reverse: standing figure of Elagabalus sacrificing at altar.','ANACS AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (551,'131 ad brass sestertius of sabina','577.00','Reverse: enthroned figure of Vesta, holding patera and sceptre.','ANACS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (552,'213 ad silver denarius of julia domna','277.00','Reverse: standing figure of Vesta, holding sceptre and Palladium.','ANACS AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (553,'232 ad brass sestertius of severus alexander','277.00','Reverse: standing figure of Spes holding hem of gown and flower.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (554,'244-249 ad silver of philip i \"the arab\"','577.00','Reverse: standing figure of Aequitas, holding scales and cornucopiae.','ICG MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (555,'582-602 ad gold solidus of maurice tiberius \"flip-over dbl. struck\"','677.00','Reverse: standing angel, holding globus cruciger and cross topped with rho. CONOB in exergue.','ICG (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (556,'325-241bc silver didrachm of neapolis','477.00','Reverse: Nike crowning man headed bull.','ANACS VF 30',0,0,'2010-11-01 20:27:19','2010-12-02 19:08:03',NULL);
INSERT INTO `items` VALUES (557,'220-221 ad silver denarius of elagabalus','577.00','Reverse: Victory flying between two shields, holding wreath with two hands, comet behind.','ANACS AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (558,'77-78 ad gold aureus of domitian','9700.00','Reverse: kneeling barbarian (?German) presenting standard with vexillum. Domitian was an emperor who campaigned personally on the northern frontiers.','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (559,'244-249 ad silver of philip i \"the arab\"','227.00','Reverse: standing figure of Annona, goddess of grain and the harvest, holding wheat sheafs hanging down, and upright grain stalks, basket of grain at feet.','NGC Choice About Uncircul',1,1,'2010-11-01 20:27:19','2010-12-03 13:37:37',NULL);
INSERT INTO `items` VALUES (560,'1874 philadelphia','1397.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (561,'1859 philadelphia','1775.00','','PCGS XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (562,'1857 san francisco','2700.00','','NGC XF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (563,'1854 philadelphia','1247.00','','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (564,'1878 san francisco','377.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (565,'1888-s gold $5 liberty','577.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (566,'1895 philadelphia','327.00','','PCGS AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (567,'1927 philadelphia','447.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (568,'1909 denver','787.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (569,'1876 san francisco','1477.00','','PCGS AU 58 old green labe',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (570,'1904 philadelphia','1457.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (571,'1910 philadelphia','1397.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (572,'1922 r  nickel lira','47.00','','NGC AU 58',1,1,'2010-11-01 20:27:19','2010-12-06 16:38:05',NULL);
INSERT INTO `items` VALUES (573,'1931 f silver  2 marks','227.00','Classic Weimar Art Work\r\n','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (574,'AH-1313 (c.1934) Silver RUPEE','297.00','Gorgeous color.KM-813. 23.5mm','NGC MS 63',1,1,'2010-11-01 20:27:19','2011-03-17 16:40:31','');
INSERT INTO `items` VALUES (575,'AH-1313 (c.1934) Silver HALF RUPEE','177.00','Untoned surfaces. KM-812. 18.5mm','NGC MS 62',1,1,'2010-11-01 20:27:19','2011-03-17 16:37:14','');
INSERT INTO `items` VALUES (576,'AH-1313 (c.1934)  Silver ABBASI','227.00','Sharp features. KM-810. 15.5mm','NGC MS 65',1,1,'2010-11-01 20:27:19','2011-03-17 16:38:42','');
INSERT INTO `items` VALUES (577,'1635 to 1668 silver 1/4 ducat medal of hamburg','297.00','Reverse: Annunciation scene\r\nTraces of old gilding and cleaning, probably worn as jewelry.','VF, remnats of old gildin',1,1,'2010-11-01 20:27:19','2010-12-02 18:27:48',NULL);
INSERT INTO `items` VALUES (578,'14-37 ad silver tiberius denarius \"tribute penny\" of the bible','1277.00','Reverse: Livia, mother of Tiberius, enthroned','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (579,'485-400 bc silver persian siglos','397.00','Reverse: irregular punch mark About 5.3 grams. \r\nSilver to rebuild the 2nd Temple in Jerusalem was sent with the Jews released from captivity.','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (580,'1724 gold 1/4 ducat','377.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (581,'1974 gold piefort of new hebrides','3977.00','KM-PE 11, The French mint has a long history of striking pieforts for special presentations and collectors. Pieforts have multiple thickness of the standard issue, and can be in normal or alternate medals. In this case, a huge chunk of gold. The mintage is a mere 119 pieces. ','NGC Proof 67 Ultra Cameo',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (582,'1945 gold 4 sovereign aramco ingot','1677.00','This larger version is based on a weight standard of 4 English gold sovereigns, a more popular trade coin in the Middle East than US twentys.','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (583,'1947 gold aramco sovereign','1577.00','This is technically an ingot, struck at the US Philadelphia mint to expedite gold payments to Saudi Arabia by the Aramco oil company.','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (584,'1866 gold sovereign','1775.00','This year became common with a large hoard of early Aussie gold, but in this condition the type is still quite rare. Low populaions in report.','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (585,'1888 gold peso','1775.00','','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (586,'1834 gold 100 lira','1977.00','','NGC About Uncirculated 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (587,'1751 gold doubloon from the luz','5977.00','This gold doubloon is a machine struck gold 8 escudos from the Santiago (Chile) mint. Assayer J. ','PCGS MS 63 PQ',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (588,'46-45 bc silver denarius of julius caesar','1577.00','Reverse: war trophy of captured Gaulish arms and armour, two captured Gauls seated beneath. The bound male to the right resembles the Gaulish chieftain Vercingetorix.','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (589,'69-71 ad judaea silver denarius of vespasian','677.00','Reverse: captured Jewess seated next to trophy of captured arms and armour, IVDAEA in exergue.','ICG VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (590,'449-413 bc silver owl of athens','1977.00','Reverse: Athena\'s pet owl. Fortunately this coin is struck hard and broadly enough to be thin enough for a third party grading holder. Most of these are just too thick for the holders.','ICG AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (591,'46 bc silver denarius of cordius rufus','477.00','Reverse: cupid riding on dolphin. Nice old collection toning. Rome mint. 3.82 grams','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (592,'161 ad sestertius of marcus aurelius','297.00','Reverse: Marcus Aurelius shaking hands with Lucius Verus (his co-emperor)','NGC choice VF, slight smo',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (593,'186 ad sestertius of commodus','1177.00','Reverse: Commodus standing on platform, haranguing three soldiers, holding shields and legionary standards. Rare reverse type. NGC: XF, smoothing, strike 4 of 5, surfaces 2 of 5.','NGCXFsmoothing',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (594,'367-378 ad silver of gratian','297.00','Reverse: facing enthroned figure of city personification Roma, holding spear and Palladium.','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (595,'1850 gold 25 francs of leopold i','4700.00','','NGC MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (596,'1835 gold 100 lira','1977.00','','NGC AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (597,'147 ad sestertius of faustina senior','297.00','Reverse: Aeternitas enthroned, holding sceptre and globe surmounted with phoenix. NGC: Ch VF, strike 4 of 5, surfaces 4 of 5','NGC  ch VF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (598,'235-238 ad sestertius of maximus','677.00','Reverse: lituus, knife, jug, patera, and simpulum, all implements of the high priest.','NGC ch XF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (599,'1701 billon 1 kreuzer','87.00','Salzburg is a very picturesque Germanic city and archbishopric now in Austria.','NGC MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (600,'4th-3rd century bc pegasus stater','577.00','Reverse: Athena, wearing a Corinthian helmet tipped back on her head. Thyrreium mint in Greek region of Arcanania. Old envelope toning.','NGC CH XF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (601,'244-249 ad silver of philip i \"the arab\"','197.00','Reverse: Aequitas standing, holding scales and cornucopiae.','NGC Ch Abt Unc',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (602,'340-170 bc silver tetrobol of histiaia','197.00','Reverse: the nymph Histiaia seated on stern on galley.','NGC About Uncirculated 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (603,'57-38 bc silver drachm of orodes ii','157.00','Reverse: enthroned archer holding bow. Orodes II also intervened in a Jewish Civil War on the behalf of Mattathias Antigonus, whom he helped to capture Jerusalem and the Temple Mount. He was allegedly rewarded with a gift of 500 Jewish women.','NGC Very Fine',0,0,'2010-11-01 20:27:19','2011-03-17 18:45:26','');
INSERT INTO `items` VALUES (604,'284-295 ad billon of diocletian','97.00','Reverse: Diocletian receiving globe from Jupiter. Nominally a double denarius, frequently called an antoninianus.','NGC genuine holder',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (605,'295-305 ad silver argentus of diocletian','577.00','Reverse: Tetrarchs (two co ruling Augusti, and two co ruling Caesars) swearing oath of allegiance over tripod in front of camp gate.','NGC (ABT. UNC.)',1,1,'2010-11-01 20:27:19','2010-12-03 13:40:51',NULL);
INSERT INTO `items` VALUES (606,'222-235 ad silver denarius of severus alexander','277.00','Reverse: Spes walking left, holding flower (lily?) and the hem of her dress.','NGC about Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (607,'286-305 ad billon of maximianus','297.00','Reverse: Genius of the Roman People, pouring wine from a patera and holding cornucopiae.','NGC Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (608,'317-337 ad billon of constantine ii','377.00','Reverse: view of palisaded legionary camp, showing gate and watchtowers. Rare grade and eye appeal for this emperor. Struck while he was Caesar.','NGC Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (609,'67 bc silver denarius of cestianus','877.00','Reverse: eagle on thunderbolt (attribute of Jupiter). Perfect centering.','NGC about Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (610,'1878 copper 1 ore','487.00','','NGC MS 63 Brown',1,1,'2010-11-01 20:27:19','2010-12-06 13:49:17',NULL);
INSERT INTO `items` VALUES (611,'1884 copper 5 ore','297.00','','NGC AU 58 Brown',1,1,'2010-11-01 20:27:19','2010-12-06 13:50:28',NULL);
INSERT INTO `items` VALUES (612,'610-641 ad gold solidus','1277.00','Reverse: True Cross as mounted on steps in the church of the Holy Sepulchre in Jerusalem. Nice portions of previous brockage show well. Constantinople mint. About 4.4 grams near pure gold.','ANACS AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (613,'430-400 bc silver owl of athens','1277.00','Reverse: Athena\'s pet owl, crescent moon and olive branch behind. NGC: about uncirculated, strike 4 out of 5, surface 2 out of 5, scratches (microscopic, and already factored into 2 rating for surfaces).','NGC AU Photo Certificate',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (614,'1888-p liberty seated dime','67.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (615,'1787-fm mexico silver dollar (8-reales)','1077.00','Reverse: coat of arms of Spain, including the Pillars of Hercules.','NGC MS 61',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (616,'1526-1532 Henry 8th Two Pence','477.00','About 20 mm diameter, silver twopence of Canterbury mint by Archbishop Warham. S-2343. Obverse: crowned bust of Henry the Eighth, one of the world\'s most infamous monarchs.<br /><br />\r\n\r\nReverse: coat of arms superimposed over cross, initials W and A (for Warham) in fields.','NGC AU 55',0,0,'2010-11-01 20:27:19','2011-03-17 18:25:31','');
INSERT INTO `items` VALUES (617,'134-135 ce silver bar kochba zuz','775.00','Reverse: fluted jug, palm branch to right. Part of the undertype portrait is still visible.','NGC About Uncirculated',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (618,'1757 george ii sixpence','187.00','','NGC AU 55',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (619,'1704 a silver half ecu of louis 14th','397.00','','NGC XF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (620,'Tiberius, 17-37 a.d.  silver denarius  \"tribute penny\"','1177.00','Tiberius was the 3rd of the Twelve Caesars. Reverse: his mother Livia enthroned. Lugdunum Mint.','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 14:05:47',NULL);
INSERT INTO `items` VALUES (621,'450-457 ad gold solidus of marcian','1477.00','Reverse: razor sharp strike on angel, (actually double struck which brought up the design) Constantinople mint. ','ICG MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (622,'1808 mexico bust dollar','297.00','','NGC AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (623,'42 bc aureus of vibius varus','11700.00','Reverse: mostly nude Venus standing next to column, facing away from viewer. C. Vibius Varus moneyer 42 BC. Holder says \"encrustation deposits\". Extremely rare late Republic gold.','NGC CH XF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (624,'317-289 bc gold syracuse','877.00','Reverse: tripod lebes ( charcoal burner for sacrifices) NGC says: removed from jewellry, in light of some very faint edge filing.','Very Fine',1,0,'2010-11-01 20:27:19','2011-03-18 18:19:46','');
INSERT INTO `items` VALUES (625,'1995 us proof set in 1994!','377.00','This proof set was delivered to a collector, and published in accompanying Coin World article in the fall of 1994. I tried to get the lawyers working on the 1933 double eagle lawsuit to use this as evidence, but I guess they thought it not relevant. I paid $1,000. for this in my excitement, but given today\'s economy I will take my loss and sell for $377.','US mint original packagin',1,1,'2010-11-01 20:27:19','2011-01-25 17:37:29',NULL);
INSERT INTO `items` VALUES (626,'1729 gold vliegenhart ducat','677.00','Basically the second most affordable shipwreck gold coin, and the most common of the 1700s. ','Abt Unc display box',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (627,'359-336 bc gold philip ii macedonia','1477.00','VG + Reverse: chariot in high action. Philip in exergue.','NGC genuine certificate',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (628,'1813 gold doubloon colombia 8 escudos','1877.00','Reverse: Spanish coat of arms','NGC XF 40',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (629,'1805 gold 8 escudos from lima','2177.00','Lima mint, assayers JP. Scarcer mint for these popular doubloons. ','NGC VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (630,'1903 b silver franc','247.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (631,'1906 copper 10 cash hupeh','197.00','','NGC AU 53 BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (632,'1932 silver tartu u 2 kroon','97.00','','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (633,'1984 olympic gold','497.00','.2315 net tr oz gold content','NGC PRF 69 ultra cameo',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (634,'1888-o new orleans morgan dollar (vam 9) top-100','97.00','','NGC (MS-62)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (635,'1995 Lincoln Cent \"Double Die\"','47.00','','PCGS (MS-66) RED',0,0,'2010-11-01 20:27:19','2011-01-26 20:25:00',NULL);
INSERT INTO `items` VALUES (636,'1883 silver quarter','777.00','','PCGS MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (637,'1911 philadelphia','775.00','','NGC MS 61',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (638,'1667 silver luigino','677.00','Recovered from the Gela shipwreck. A few of these luiginos in the middle of the clumps exhibited their pristine lustrous surfaces. Sea water oxidation coins with EF to Abt Unc sharpness, but lightly corrodded are available raw for $77. each.','NGC MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 16:47:02',NULL);
INSERT INTO `items` VALUES (639,'336-323 bc silver drachm','197.00','Reverse: Zeus enthroned, fly (or bee or wasp) mintmark to left.','ANACS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (640,'325-323 bc silver tetradrachm','677.00','Reverse: Zeus enthroned, legs not crossed.','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (641,'198-217 ad silver denarius of caracalla','377.00','Reverse: Annona, goddess of grain, enthroned, holding cornucopiae and ears of grain, modius (grain basket) at feet. Older small white ANACS holder.','ANACS MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (642,'249-251 ad silver antoninianus of trajan decius','377.00','Reverse: standing twin goddesses of the Roman province of Pannonia. PANNONIAE','ANACS MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (643,'1412-1420AD Silver Denar of Ludwig II','177.00','About 17 mm diameter Obverse: Mary seated, holding the Christ child. From Ludwig\'s city of Aquilea in northern Italy, as part of the Holy Roman Empire with its German emperors.<br /><br />\r\n\r\nReverse: shield with coat of arms of Bavaria','NGC XF 45',0,0,'2010-11-01 20:27:19','2011-03-17 18:50:23','');
INSERT INTO `items` VALUES (644,'1892 silver yen meiji 25','127.00','Original undipped.','NGC AU 55',1,1,'2010-11-01 20:27:19','2010-12-06 16:56:51',NULL);
INSERT INTO `items` VALUES (645,'1894 new orleans','700.00','','NGC AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (646,'California 1925-s 50-cent commemorative','877.00','','PCGS MS65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (647,'1667 silver luigino from fosdinovo italy','277.00','About 21 mm diameter Obverse: baroque bust of Maria Maddalena Centurioni Malaspina of the lordship and castle of Fosdinovo near Florence in northern Italy. It is still owned by the Malaspina family. This castle sheltered Dante Aligheri, the writer, while he was in exile.\r\n\r\nReverse: coat of arms of the Malaspina family. The ship carrying these luiginos sank about 1667 about 12 from Gela Sicily. This denomination was popular with the Arab nations, so the ship was probably headed east. \r\n\r\nWe also have raw (guaranteed by Jonathan K Kern Co, but not third party certified and holdered) in sea water corrodded EF for $77. each.','NGC AU 55',1,1,'2010-11-01 20:27:19','2010-12-03 16:50:08',NULL);
INSERT INTO `items` VALUES (648,'1667 Silver Luiginos of Fosdinovo, Italy','77.00','About 20.5 mm diameter each, about 2 grams each. Sell for only $77. each plus $5. shipping priority mail.','EF seawater oxidation',1,1,'2010-11-01 20:27:19','2010-12-03 16:51:50',NULL);
INSERT INTO `items` VALUES (649,'138-161 ad bronze as antoninus and aurelius','977.00','Reverse: bare headed, draped bust of Marcus Aurelius as Caesar under Pius. Original uncleaned with stable green encrustation not affecting major design elements.','NGC XF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (650,'1871 silver 5 sen','157.00','','NGC XF 40',1,1,'2010-11-01 20:27:19','2010-12-06 16:54:09',NULL);
INSERT INTO `items` VALUES (651,'1873 bronze sen','87.00','','NGC AU 55 BN',1,1,'2010-11-01 20:27:19','2010-12-06 16:54:55',NULL);
INSERT INTO `items` VALUES (652,'1873 silver 5 sen','67.00','','NGC AU 55',1,1,'2010-11-01 20:27:19','2010-12-06 16:55:58',NULL);
INSERT INTO `items` VALUES (653,'600 bc electrum 1/24 stater','297.00','Reverse: four part incused swaztika like pattern','VF crude',1,1,'2010-11-01 20:27:19','2010-12-02 19:10:35',NULL);
INSERT INTO `items` VALUES (654,'600-550 bc electrum twelfth stater','775.00','Reverse: 5 dots in quatrefoil incuse. The electrum used to strike most all the coins of this period was generally about 10 karat gold, and being alloyed with silver rather than copper, has a whitish appearance.','VF JKKern Co guarantee',1,1,'2010-11-01 20:27:19','2010-12-02 19:12:06',NULL);
INSERT INTO `items` VALUES (655,'1652 pine tree shilling , large planchet','7900.00','','PCGS (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (656,'1937-d buffalo nickel  \"3-legged\"','977.00','','SEGS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (657,'1825  classic head half cent','197.00','','NGC (XF-45 BN)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (658,'1828  classic head half cent  (12-stars)','347.00','','NGC (XF-45 BN)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (659,'1832  classic head half cent','167.00','','NGC (XF-40 BN)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (660,'1866  indian head cent  \"rim cud\"','177.00','','NGC  (XF-40 BN)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (661,'1902  indian head cent  (pq!!!!)','297.00','','(NGC MS-65) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (662,'1886-p  liberty seated  dime','247.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (663,'1892-p  barber half dollar','1477.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (664,'1807 draped bust half dollar  (o-102)','567.00','','NGC (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (665,'1963-p washington 25c  \"double die obverse\"','137.00','','NGC (MS-66) VP-001',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (666,'1952 washington 25c  \"super bird\"','277.00','','NGC (PROOF-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (667,'1938-p  washington quarter','237.00','','NGC (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (668,'1800 draped bust dollar  \"americai\"','2477.00','','NGC (VF-20)  BB-192',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (669,'1881-cc  \"carson city\"  morgan dollar','577.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (670,'1884-cc \"carson city\" morgan dollar','217.00','','PCGS MS-64',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (671,'1886-p morgan dollar','127.00','','PCGS MS-65 (GREEN LABEL)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (672,'1885-o  morgan silver dollar','147.00','','NGC  (MS-65)  PQ!!!!!!!',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (673,'1903-o  morgan dollar  \"tough date\"','407.00','','PCGS  (MS-63)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (674,'1900-p  morgan dollar','77.00','','NGC (MS-64)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (675,'297-281 BC Face of Alexander the Great','2477.00','About 31 mm total diameter, not including suspension loop. Silver tetradrachm (17.2 grams standard) of Lysimachus, treasurer and general of Alexander the Great. Struck in Thrace, his Greek kingdom, 297-281 BC. Obverse: deified head of Alexander the Great, wearin diadem and horn of Ammon. Fine Hellenistic style, high relief.\r\n<br /><br />\r\nThese coins are the first no-question portrait of Alexander the Great, struck from dies engraved by artists who could have rendered his image from life. Reverse: Athena enthroned.','22 karat gold custom beze',1,1,'2010-11-01 20:27:19','2010-12-03 17:03:16',NULL);
INSERT INTO `items` VALUES (676,'641-668 AD Constans II Solidus','977.00','About 23 mm total diameter, not including suspension loop. Obverse: Constans II, Byzantine emperor 641-668 AD, Constantinople mint.\r\n<br /> <br />\r\nReverse: The True Cross, as mounted on the steps in the Church of the Holy Sepulchre in Jerusalem.','18 karat gold custom beze',1,1,'2010-11-01 20:27:19','2010-12-03 17:05:16',NULL);
INSERT INTO `items` VALUES (677,'Modern Engraved Bloodstone Helios','577.00','Bloodstone, a form of jasper, is also known as heliotrope. There are many red flecks in a dark olive green matrix. It was much rarer and highly valued in ancient times. This modern sculpture, signed by the artist Chavdar, depicts a facing head of Helios, the sun god, who appeared on several ancient coins.\r\n<br /> <br />\r\n\r\nMounted in beautiful custom made 22 karat gold bezel. Width about 24 mm. Plain reverse. From a jewellry store distress sale, previously $1495 retail.','Custom 22 karat gold beze',1,1,'2010-11-01 20:27:19','2010-12-03 17:08:46',NULL);
INSERT INTO `items` VALUES (678,'196-27 bc silver zeus pendant','1977.00','Reverse: Athena advancing with spear and shield','22 karat custom modern be',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (679,'336-323 bc gold alexander the great','3977.00','Reverse: Nike standing, holding wreath. Thunderbolt in field. Coin guaranteed authentic by Jonathan K Kern Co. Also comes with jeweler\'s certificate of authenticity dated 1993.','Modern 18 karat gold beze',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (680,'1733 Gold Carolin of Wurttemberg','1977.00','Coin about 27 mm diameter, Obverse: Eberhard Louis, Duke of Wurttemberg 1732-1751\r\n<br />\r\nReverse: shield bearing his coat of arms, surrounded by order of the Golden Eagle. Coins grades about uncirculated, gently rouged for jewelry brightness. Nice loops attached.','Jonathan K Kern Co guaran',1,1,'2010-11-01 20:27:19','2010-12-03 16:59:03',NULL);
INSERT INTO `items` VALUES (681,'221-205 bc gold octodrachm','17750.00','Obverse: Radiate bust of the deceased Ptolemy III, wearing aegis, trident over shoulder. The radiate bust evokes the image of Helios, the sun god. The trident evokes Poseidon, and the aegis is a symbol of the protection on Athena. Reverse: Radiate cornucopiae bound with royal diadem.','ICG AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (682,'218-222 ad elagabalus denarius','317.00','','ICG AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (683,'218-222 ad elagabalus denarius','227.00','','ICG Abt Unc 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (684,'217-218 ad diadumenian denarius','487.00','Reverse: goddess Spes standing, holding flower and hem of dress. Light gray toning over silver surfaces.','NGC EF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (685,'Valerian i, silver double-denarius (253-260ad)','137.00','','NGC (CHOICE VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (686,'Valerian billon antoninianus (253-260ad)','277.00','','ANACS (AU-53)',1,1,'2010-11-01 20:27:19','2010-12-03 14:10:29',NULL);
INSERT INTO `items` VALUES (687,'Carinus gold aureus (283-285ad)','19700.00','','NGC (CHOICE AU/hairlines)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (688,'253-246 bc gold octodrachm','12700.00','Reverse: double cornucopiae bound with royal diadem. The gamma in obverse field may represent a year, but this is not certain. Similar issues honored Arsinoe II later, but they are not the fine style of this period.','ANACS EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (689,'270-272 ad vabalathus & aurelian','377.00','Reverse: Radiate and armoured bust of Aurelian as Augustus. Vabalathus claimed the supreme rule of the Roman empire briefly in 272 AD before being defeated by Aurelian.','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (690,'1939 silver laupen 5 francs','437.00','','NGC MS 65',1,1,'2010-11-01 20:27:19','2010-12-06 18:29:28',NULL);
INSERT INTO `items` VALUES (691,'1878-s \"san francisco\"  morgan dollar','97.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (692,'1934-b silver fribourg 5 francs','177.00','','PCGS MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (693,'1884-cc  \"carson city\" morgan dollar','237.00','CC over CC. Mostly pure white surfaces.','ICG (MS-63)  VAM-5 CC/CC',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (694,'1886-p  morgan silver dollar','57.00','','NGC (MS-64)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (695,'1884-o morgan dollar  \"hot-50 vam-10, 0/0\"','147.00','','PCGS  (MS-65) RATTLER',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (696,'1884-cc \"carson city\"  morgan dollar','247.00','','ICG (MS-64)  VAM-6',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (697,'1882-cc  \"carson city\" morgan dollar','197.00','','ICG  (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (698,'1882-p  morgan dollar  pq!!!! color','97.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (699,'1880-s  morgan dollar \"8/7 vam-10, r-6\"','777.00','','PCGS (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (700,'1871  liberty seated dollar  (very original)','597.00','','ANACS  (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (701,'1800  draped bust silver dollar','3700.00','','NGC (XF-40)  BOLENDER 16',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (702,'Oregon trail 1938-p commem 50c','197.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (703,'1879-cc  \"carson city\" morgan dollar','487.00','','(Raw) XF-45+  Clnd',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (704,'1887-p  morgan silver dollar','127.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (705,'1898-s  double eagle liberty','1477.00','','PCGS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (706,'1900-p  liberty ten dollar gold','697.00','','PCGS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (707,'1912-s  $5 gold indian','477.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (708,'1913-p  $5 indian gold  \"rev struck thru','547.00','','ANACS (NET MS-60)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (709,'1854 \"Type-2\" Gold Dollar','670.00','Better type. Light marks on both sides. Weak struck \"8\".','NGC (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-02 23:46:16',NULL);
INSERT INTO `items` VALUES (710,'1878  $2.5 gold quarter eagle','267.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (711,'1897-s \"san francisco\"  morgan dollar','477.00','','NGC (MS-65) Better Date',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (712,'1797 draped bust silver dollar','7497.00','','ICG (EF-40) 10x6',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (713,'1799 draped bust dollar (b-10)','1775.00','','NGC (VF/details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (714,'1799 draped bust dollar (b-6)','1277.00','','NGC (VF/details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (715,'1799 draped bust dollar (b-8)','1277.00','','NGC (VF/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (716,'1798 draped bust dollar (heraldic eagle)','1577.00','','SEGS  (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (717,'1801  draped bust silver dollar','4477.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (718,'1803 (lrg.3)  draped bust dollar','1377.00','','Uncertified (FINE/VF-15+)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (720,'1979 gold quarter pahlevi','477.00','This year\'s mintage was cut short by the Islamic Revolution which deposed the Shah, last of the Pahlevi dynasty. In short order the new Republic became a bitter enemy to the Western World, and Christianity in general by taking the United States embassy employees hostage.  This was a medieval breach of world political decorum, and cast the new Iranian regime as an outcast from any reasonable behavior.','ICG MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 16:14:05',NULL);
INSERT INTO `items` VALUES (721,'1944 gold half pahlevi','187.00','Gold flowed strongly into Iran in payment for its war critical oil production, which kept the British and allies fighting the Nazis.','ICG MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 15:52:01',NULL);
INSERT INTO `items` VALUES (722,'Russian icon on wood \"image of christ\"','477.00','','',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (723,'1923 gold toman of ahmad shah','197.00','','ICG AU 58',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (724,'1915 gold toman of ahmad shah','197.00','','ICG (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-06 15:50:05',NULL);
INSERT INTO `items` VALUES (725,'1918 gold 5000 dinars of ahmad shah','297.00','','ICG MS 62',1,1,'2010-11-01 20:27:19','2010-12-06 15:51:07',NULL);
INSERT INTO `items` VALUES (726,'1995 gold azadi of the islamic republic','297.00','Reverse: bank','ICG MS 63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (727,'1991 gold fourth azadi of islamic republic','247.00','Reverse: hexagonal design','ICG MS 60',1,1,'2010-11-01 20:27:19','2010-12-06 16:15:07',NULL);
INSERT INTO `items` VALUES (728,'Elgin 1936 commem 50c','227.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (729,'Columbian expo. 1893 commem 50c','397.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (730,'1836 classic head $5 gold','1797.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (731,'Columbia 1936-s  50c commem','297.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (732,'1856 california gold octagonal 25c  s.s. central america','11700.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (733,'York 1936 commem 50c','197.00','','PCGS  (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (734,'Vermont 1927 commem half dollar','1077.00','','PCGS (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (735,'1949 silver freiburg university medal','297.00','Reverse: Latin inscription','NGC Medal MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (736,'1790 c. silver bern school medal','297.00','Reverse: student winding up a trail towards the top of a steep mountain, with the light of knowledge at the summit, represented by columned building surmounted with ?masonic triangle.','NGC Medal AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (737,'1949 b chur shooting fest medal','297.00','Reverse: coat of arms of canton of Chur','NGC Medal MS 67',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (738,'1944 Denver Silver Dollar','57.00','About 38 mm, This 2 and a half gulden was struck at the Denver mint for the Dutch allies of the US. It is the only silver dollar size coin issuing from a US mint from 1935 until 1971. Obverse: Queen Wilhelmina of the Netherlands (in exile in London)','NGC MS 63',1,1,'2010-11-01 20:27:19','2010-12-02 23:42:04',NULL);
INSERT INTO `items` VALUES (739,'1819 dated silver zwingli medal','287.00','From Winterthur, Switzerland, for the 300th anniversary of the Reformation. Reverse: altar decorated with Chi Rho, Bible on top.','NGC Medal AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (740,'1965  gold half pahlevi','287.00','','ICG MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (741,'1950 gold pahlevi','727.00','','ANACS MS 62',1,1,'2010-11-01 20:27:19','2010-12-06 15:52:56',NULL);
INSERT INTO `items` VALUES (742,'1977 gold 5 pahlevi','1977.00','SH 2536 = 1977 AD','NGC MS 65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (743,'1915 gold 2000 dinars','127.00','','ICG AU 58',1,1,'2010-11-01 20:27:19','2010-12-06 15:48:53',NULL);
INSERT INTO `items` VALUES (744,'Oregon trail 1926-s 50c commem','177.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (745,'1936 Robinson 50c Commem','217.00','Near pure white surfaces. Great eye appeal. Mounds of luster.','NGC  (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-03 00:53:28',NULL);
INSERT INTO `items` VALUES (746,'1924 gold 5000 dinars','277.00','','ICG MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (747,'1914/24 gold 5000 dinars','577.00','','ICG MS 62',1,1,'2010-11-01 20:27:19','2010-12-06 15:47:58',NULL);
INSERT INTO `items` VALUES (748,'1965 gold 1/4 pahlevi','127.00','','ICG MS 64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (749,'1955 gold 1/2 pahlevi','287.00','','ICG MS 61',1,1,'2010-11-01 20:27:19','2010-12-06 15:54:46',NULL);
INSERT INTO `items` VALUES (750,'1979 gold pahlevi','1577.00','','ICG MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 16:12:36',NULL);
INSERT INTO `items` VALUES (751,'1979 gold half pahlevi','1577.00','','ICG MS 64',1,1,'2010-11-01 20:27:19','2010-12-06 16:10:31',NULL);
INSERT INTO `items` VALUES (752,'68 ad bronze as of galba','3700.00','Reverse: LIBERTAS PVBLICA, standing figure of Libertas holding liberty cap and sceptre.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (753,'128-123 bc silver zebina','377.00','Reverse: Zeus enthroned','ICG VF 25',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (754,'114-117 ad trajan sestertius','977.00','Reverse: Fortuna enthroned, holding rudder and cornucopiae.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (755,'166-84 bc silver drachm of kibyra','377.00','Reverse: galloping soldier wielding spear, shield over shoulder.','ICG VF 35',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (756,'180 ad death denarius of marcus aurelius','377.00','Reverse: CONSECRATIO, eagle standing with wings open.','ICG EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (757,'345-314 bc silver pegasus stater','877.00','Reverse: Pegasus, the flying horse. ANA monogram below.','ICG EF 45',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (758,'54-68 ad sestertius of nero','775.00','Reverse: Roma seated on armour, next to shield, holding parazonium and Victory.','ANACS VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (759,'246-221 bc gold octodrachm','15700.00','Reverse: radiate cornucopiae tied with royal diadem. Queen Arsinoe III, wife of Ptolemy III, in addressing the troops before the battle of Raphia , promised each of the soldiers two of these huge octodrachms, or mnaieion, if they defeated the enemy.','NGC ch VF polished',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (760,'290-292 ad carausius bronze','577.00','Reverse: Pax, the goddess of peace, standing, holding olive branch and sceptre.','ANACS AU 50',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (761,'1382-1400 ad gold zecchino antonio vernier','877.00','Reverse: Christ in the heavens, surrounded by stars. ','NGC MS 62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (762,'364-367 ad gold solidus of valens','1277.00','Antioch mint, the first city where the people named themselves \"Christians\". Reverse: Valens standing, holding labarum with cross at top, and small figure of Victory. ','ANACS EF 40, bent',1,1,'2010-11-01 20:27:19','2010-12-03 13:43:00',NULL);
INSERT INTO `items` VALUES (763,'364-367 ad gold solidus of valentinian i','977.00','Reverse: Valentinian I standing, holding small figure of Victory, and a labarum decorated with a Chi Rho at the top. During this reign, and that of his co-ruler Valens, the Christian symbols of the cross, and the Greek letters Chi-Rho monogram became standard. Antioch mint, where worshippers first called themselves Christians. ','ANACS VF 35 bent',1,1,'2010-11-01 20:27:19','2010-12-03 13:43:44',NULL);
INSERT INTO `items` VALUES (764,'97 ad brass sestertius of nerva','1277.00','Reverse: Fortuna standing, holding patera and cornucopiae.','ANACS VF 20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (765,'25 bc bronze as of augustus','377.00','Reverse: AVGVSTVS in wreath.','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (766,'579 ad gold solidus of tiberius ii','977.00','Reverse: The first? use of the depiction of the True Cross, as mounted on steps in the Church of the Holy Sepulchre in Jerusalem. ','ICG AU 55',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (767,'69 ad silver denarius of vitellius','977.00','Reverse: Victory flying, holding shield inscribed SPQR.','ANACS VF 30',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (768,'69 ad silver denarius of otho','2775.00','Reverse: Securitas standing, holding laurel wreath and sceptre. ','ANACS EF 40',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (769,'69 ad silver denarius of vitellius','2977.00','Reverse: tripod lebes (looks like Weber grill) a charcoal brazier for sacrificing. Raven beneath, and dolphin above.','ANACS AU 53',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (770,'Ah1171 (1757) \"gold\" zeri mahbub','297.00','','NGC  (XF45)',0,0,'2010-11-01 20:27:19','2011-02-01 15:33:56','');
INSERT INTO `items` VALUES (771,'1874-gs  silver 10-ore','67.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (772,'1890-cs  bronze 5-ore','277.00','','ANACS  (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (773,'1855  silver 1/2 rigsdaler  (pq!! color)','377.00','','ANACS  (MS-63)',0,0,'2010-11-01 20:27:19','2011-03-17 17:23:27','');
INSERT INTO `items` VALUES (774,'1842 copper 1/5 rigsbankskilling','67.00','','ANACS  (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (775,'1967 c s 10-kroner \"princess margrethe wedding\"','97.00','','NGC  (MS-67)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (776,'1944-d (denver) silver 2-1/2 gulden','277.00','','NGC  (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (777,'1642-a silver 1/12 ecu (10-sols)','377.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (778,'1803 1-pfennig','47.00','','NGC (XF-40 BN)',0,0,'2010-11-01 20:27:19','2010-12-06 14:46:04',NULL);
INSERT INTO `items` VALUES (779,'1824 silver taler (sm. bust & arms)','1677.00','','NGC (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-06 14:49:31',NULL);
INSERT INTO `items` VALUES (780,'1914-d  3-mark','67.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (781,'1815 fr  1-pfenning','47.00','','NGC (VF-30 BN)',1,1,'2010-11-01 20:27:19','2010-12-06 14:54:42',NULL);
INSERT INTO `items` VALUES (782,'1819 copper heller','37.00','','NGC (AU-55 BN)',1,1,'2010-11-01 20:27:19','2010-12-06 14:55:45',NULL);
INSERT INTO `items` VALUES (783,'1835  1/3 farthing','147.00','','NGC  (AU-58) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 15:34:51',NULL);
INSERT INTO `items` VALUES (784,'1672  farthing','277.00','','ANACS  (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (785,'1821  farthing  \"pq!!quality\"','775.00','','ANACS  (MS-66) Brown',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (786,'1853  1-penny  (plain trident)','147.00','','NGC  (AU-58) Brown',1,1,'2010-11-01 20:27:19','2010-12-06 15:35:55',NULL);
INSERT INTO `items` VALUES (787,'1729  silver 2-pence','87.00','','NGC  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (788,'1897  silver 6-pence','167.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (789,'1937  \"brass\"  3-pence','37.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (790,'1927  one shilling  (original reverse)','57.00','','NGC (PROOF 61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (791,'1708  1/2 crown  (esc-578 plumes','277.00','','NGC  (VF-20)',0,0,'2010-11-01 20:27:19','2011-03-17 18:16:05','');
INSERT INTO `items` VALUES (792,'1882-r  2-lire','47.00','','ICG  (VF-20)',1,1,'2010-11-01 20:27:19','2010-12-06 16:36:17',NULL);
INSERT INTO `items` VALUES (793,'1824  copper quattrino','77.00','','NGC  (AU-55) Brown',1,1,'2010-11-01 20:27:19','2010-12-06 16:50:34',NULL);
INSERT INTO `items` VALUES (794,'1907-r  lira','257.00','','NGC  (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (795,'1813-mo jj  silver 1/2 real','277.00','','NGC  (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-06 17:03:05',NULL);
INSERT INTO `items` VALUES (796,'1808-mo th  silver 8-reales','297.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (797,'1869-o ae  silver 8-reales (oaxaca)','137.00','','NGC (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (798,'1923-mo  1-centavos','27.00','','NGC  (MS-63) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (799,'1906-mo  2-centavos','97.00','','NGC  (MS-63) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (800,'1864-m  silver 5-centavos','97.00','','NGC  (AU/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (801,'1905-m  5-centavos','127.00','','NGC  (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-06 17:07:58',NULL);
INSERT INTO `items` VALUES (802,'1918-mo  5-centavos','97.00','','NGC  (VF-25) Brown',1,1,'2010-11-01 20:27:19','2010-12-06 17:08:55',NULL);
INSERT INTO `items` VALUES (803,'1927-mo  5-centavos','217.00','','ANACS  (MS-63) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (804,'1932  silver 1/2 balboa','127.00','','ANACS  (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (805,'1753 clr  silver 1-kreuzer','87.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (806,'1751 clr silver 1-kreuzer','47.00','','NGC (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (807,'1743  albus','197.00','','NGC (MS-63)',1,1,'2010-11-01 20:27:19','2010-12-06 15:01:55',NULL);
INSERT INTO `items` VALUES (808,'1764  silver 12-groot','177.00','','NGC (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-06 15:05:24',NULL);
INSERT INTO `items` VALUES (809,'1783 pm  1/2 stuber','37.00','','NGC (VF-20 BN)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (810,'1732  1/2 kreuzer','147.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (811,'1893-a  gold 10-mark','247.00','','NGC  (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (812,'1909-e  silver 3-mark  \"nice color\"','97.00','','NGC (MS-61)',1,1,'2010-11-01 20:27:19','2010-12-06 15:18:50',NULL);
INSERT INTO `items` VALUES (813,'1927-f 3-mark  \"tubingen university\"','697.00','','NGC (MS-63)',1,1,'2010-11-01 20:27:19','2010-12-06 14:39:49',NULL);
INSERT INTO `items` VALUES (814,'1908-f  silver 3-mark','157.00','','NGC  (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (815,'1911-f 3-mark  \"anniversary\"','137.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (816,'1929-a  3-mark  \"waldeck-prussia\"','477.00','','NGC  (Proof 61)',1,1,'2010-11-01 20:27:19','2010-12-06 15:16:03',NULL);
INSERT INTO `items` VALUES (817,'1924-f  silver 3-mark','227.00','','NGC  (MS-63)',1,1,'2010-11-01 20:27:19','2011-02-01 23:11:09','German Germany Deutch');
INSERT INTO `items` VALUES (818,'1923-f  500-mark','77.00','','NGC  (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (819,'1876-d 20-pfennig','77.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (820,'1877-c  50-pfennig  (with wreaths)','127.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (821,'1903-a  50-pfennig','977.00','','NGC (MS-65)',1,1,'2010-11-01 20:27:19','2011-02-01 23:09:42','Germany German Deutch');
INSERT INTO `items` VALUES (822,'1731  gold 1/2 ducat friedrich i','2700.00','','NGC  (AU-58)',0,0,'2010-11-01 20:27:19','2011-01-06 15:13:45',NULL);
INSERT INTO `items` VALUES (823,'1782 gcb  silver 1/2 thaler','2775.00','','NGC  (MS-63) PROOF-LIKE',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (824,'1641 silver thaler  (dav-7612)','377.00','','NGC   (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (825,'1732  silver 1/2 crown  (george ii)','977.00','','ANACS  (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (826,'1804 5-shilling struck over 1801-mo 8-real','497.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (827,'1509-1547  silver groat  (henry viii)','377.00','','ICG  (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (828,'1855 1-penny  (plain trident)','147.00','','NGC  (AU-55) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 15:36:45',NULL);
INSERT INTO `items` VALUES (829,'1843-d \"dahlonega\" $5 liberty (medium d)','1177.00','','PCGS (Genuine)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (830,'1913//34  silver rupee/jaipur','277.00','','NGC  (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (831,'1845 copper 1/4 cents','127.00','','NGC  (AU-58) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 17:38:10',NULL);
INSERT INTO `items` VALUES (832,'1952 1/4 rupia','57.00','','NGC  (MS-63)',1,1,'2010-11-01 20:27:19','2010-12-06 17:24:27',NULL);
INSERT INTO `items` VALUES (833,'(1035-60)  penny  \"hiberno-norse\"','4775.00','','NGC  (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-06 16:22:17',NULL);
INSERT INTO `items` VALUES (834,'1689 6-pence  james ii  \"gun money\"','1977.00','','NGC  (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-06 16:23:13',NULL);
INSERT INTO `items` VALUES (835,'1972 lincoln 1c  \"doubled die obverse\"','437.00','','NGC  (MS-63) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (836,'1950-d/s washington 25c','147.00','','NGC  (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (837,'1795 draped bust dollar  (small eagle)','3977.00','','NGC  (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (838,'Marius, saec felicitas, antoninianus, cologne','775.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 14:00:34',NULL);
INSERT INTO `items` VALUES (839,'1909-d gold $5 indian','1747.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (840,'1874 gold dollar','297.00','','PCGS  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (841,'1940 bronze 1/2 penny','177.00','','NGC  (MS-62) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 16:24:09',NULL);
INSERT INTO `items` VALUES (842,'1949 250-prutah (without pearl)','47.00','','NGC  (MS-67)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (843,'1949-h  silver 250-prutah','37.00','','NGC  (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (844,'1960 gold 20-lirot  \"theodor herzl\"','277.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (845,'1915-r  copper centesimo','47.00','','NGC  (MS-62) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 16:37:20',NULL);
INSERT INTO `items` VALUES (846,'1862  copper cent','177.00','','NGC  (MS-61) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 16:58:56',NULL);
INSERT INTO `items` VALUES (847,'1838-go pj  silver 2-reales  \"full scales\"','2700.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (848,'1863-zs mo  silver 4-reales','577.00','','NGC (AU-53)',1,1,'2010-11-01 20:27:19','2010-12-06 17:04:00',NULL);
INSERT INTO `items` VALUES (849,'1942 10,25,50-ore  (set)','2700.00','','NGC  (MS-64,65,65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (850,'1873-p  $5 liberty  \"closed 3\"','497.00','','NGC  (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (851,'1909  $5 gold indian','317.00','','NGC  (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (852,'1908  $5 gold indian','397.00','','ngc  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (853,'1852-p  gold dollar','257.00','','NGC  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (854,'1853-p  gold dollar','277.00','','NGC  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (855,'1850-p  gold dollar','277.00','','NGC  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (856,'1852  u.s. assay 887 $50 gold','32700.00','','NGC  (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (857,'1864 st  silver 4-riksdaler','477.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (858,'Lafayette 1900 silver dollar commem','377.00','','ANACS (AU-58 details/clnd',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (859,'Isabella 1893 silver commem 25c','337.00','','NGC (AU-58 details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (860,'1884 \"proof\" seated liberty 25c','677.00','','ANACS  (PF-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (861,'1853 arrows/rays seated liberty 50c','397.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (862,'1917-p \"type-1\" standing liberty 25c','397.00','','NGC (MS-63)',0,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (863,'1757  silver 1-kreuzer','187.00','','NGC  (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-03 14:45:02',NULL);
INSERT INTO `items` VALUES (864,'Ah1223/30 gold cedid mahmudiye','387.00','','NGC  (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (865,'1754 Great Britain 1/2 Penny','137.00','Deep chocolate brown surfaces.','NGC  (XF-40) BROWN',1,1,'2010-11-01 20:27:19','2011-03-17 18:19:42','');
INSERT INTO `items` VALUES (866,'1730 Great Britain 1/2 Penny','137.00','George II. Very original surfaces. Even chocolate brown color.','NGC  (XF-40) BROWN',0,0,'2010-11-01 20:27:19','2011-03-17 18:21:23','');
INSERT INTO `items` VALUES (867,'1696 Great Britain Crown \"First Bust\"','377.00','Golden/grey surfaces. ESC-89','NGC  (VF-20)',0,0,'2010-11-01 20:27:19','2011-03-17 17:51:40','');
INSERT INTO `items` VALUES (868,'1838  silver gulden','297.00','','NGC  (VF-35)',1,1,'2010-11-01 20:27:19','2010-12-06 15:03:36',NULL);
INSERT INTO `items` VALUES (869,'1831-l  silver gulden','74.00','','NGC  (FINE-15)',1,1,'2010-11-01 20:27:19','2010-12-06 15:17:30',NULL);
INSERT INTO `items` VALUES (870,'1913-a  silver 3-mark  \"silver jubilee\"','77.00','','NGC  (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (871,'1863  silver 2000-reis  \"pq!! eye appeal\"','87.00','','NGC  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (872,'Monroe 1923-s silver commem 50c','147.00','','NGC  (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (873,'1964 silver kennedy 50c  \"accented hair\"','47.00','','NGC  (PROOF 66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (874,'Victorinus, pax aug ae antoninianus, cologne','227.00','','ANACS  (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 14:13:10',NULL);
INSERT INTO `items` VALUES (875,'Victorinus (269-270 ad) ae antoninianus pax aug','147.00','','ANACS  (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 14:12:46',NULL);
INSERT INTO `items` VALUES (876,'Jovian (363-364 ad) gold solidus \"antioch mint\"','1477.00','','ANACS  (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (877,'Byblos/phoenicia (pre-333 bc) silver dishekel bull-lion','977.00','','ANACS  (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (878,'Alexander the great \"lifetime\" silver tetradrachm','377.00','','NGC  (GENUINE)',1,1,'2010-11-01 20:27:19','2010-12-03 13:21:32',NULL);
INSERT INTO `items` VALUES (879,'Alexander the great ar tetradrachm \"money of the bible\"','297.00','','NGC  (GENUINE)',0,0,'2010-11-01 20:27:19','2011-02-16 21:58:28','');
INSERT INTO `items` VALUES (880,'Alexander the great (336-23 bc) silver tetradrachm','377.00','','NGC (CHOICE VERY FINE)',1,1,'2010-11-01 20:27:19','2010-12-03 13:22:07',NULL);
INSERT INTO `items` VALUES (881,'Alexander the great silver tetradrachm \"money of the bible\"','247.00','','NGC  (GENUINE)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (882,'Alexander the great silver tetradrachm (336-323 b.c.)','577.00','','NGC  (CHOICE VERY FINE)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (883,'France (1285-1314) gros turnois  philip iv','377.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (884,'(1285-1314) silver gros turnois \"philip iv\"','377.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (885,'1806  copper 1/4 skilling','107.00','','NGC  (MS-62) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (886,'1723 gz  silver ore','127.00','','NGC  (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-06 17:43:26',NULL);
INSERT INTO `items` VALUES (887,'1719-km  ore  (lozenged edge)','70.00','','NGC  (VF-30) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 17:42:21',NULL);
INSERT INTO `items` VALUES (888,'1873 la.  bronze ore','47.00','','NGC  (XF-45) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 17:48:07',NULL);
INSERT INTO `items` VALUES (889,'1857 \"sm. la./curved top 5\"  bronze 5-ore  (rare!!)','347.00','','NGC  (MS-62) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 17:46:59',NULL);
INSERT INTO `items` VALUES (890,'1853 ag  1/32 silver riksdaler  (lrg. ag)','57.00','','NGC  (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (891,'1820 1-skilling  \"oblique reeding\"','87.00','','NGC  (VF-35) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 17:45:57',NULL);
INSERT INTO `items` VALUES (892,'1802  copper 1/4 skilling','47.00','','NGC  (XF-40) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (893,'1966 u silver 5-kronor  \"constitution centennial\"','27.00','','NGC  (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (894,'1959 ts 5-kronor  \"constitution sesquicentennial\"','27.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (895,'1901-eb  silver krona','477.00','','NGC  (MS-63)',0,0,'2010-11-01 20:27:19','2011-01-06 15:11:01',NULL);
INSERT INTO `items` VALUES (896,'1932-g  silver 2-kronor  \"gustav ii adolf\"','37.00','','NGC  (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (897,'1859  silver (florin) 2-shillings  \"pq!! toning\"','197.00','','NGC  (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (898,'1889(89)  2-pesetas  \"rare baby head\"','447.00','','NGC  (XF-40)',1,1,'2010-11-01 20:27:19','2010-12-06 17:34:54',NULL);
INSERT INTO `items` VALUES (899,'Sh1313(1934)  silver 5-rials','97.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (900,'Sh1312(1933)  silver 5-rials','97.00','','NGC  (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (901,'Lucilla (164-169 a.d.)  silver denarius','227.00','','ANACS  (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (902,'Marius 269 ad, saec felicitas antoninianus, cologne','775.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (903,'269 ad marius, victoria aug, antoninianus maniz-trier','577.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 13:38:33',NULL);
INSERT INTO `items` VALUES (904,'Helena (327-329 ad) c.248-330 ad  heraclea mint','377.00','','ANACS (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (905,'Julia mamaea, 222-231 ad  silver denarius','277.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (906,'Philip i \"the arab\" (244-49 ad) ar antoninianus','177.00','','ANACS (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (907,'Lucilla, pudicita (166-169 ad) silver denarius','277.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:59:30',NULL);
INSERT INTO `items` VALUES (908,'Geta as augustus, 209-211ad  silver denarius','377.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:55:13',NULL);
INSERT INTO `items` VALUES (909,'Gordian iii, 238-44ad egypt ae tetradrachm, alexandria','97.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (910,'Caracalla,198-217ad  silver denarius','577.00','','ANACS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (911,'Caracalla, virt augg, silver denarius  pq!! bust','977.00','','ANACS (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (912,'Caracalla, 198-217ad  silver denarius','477.00','','ANACS (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-03 13:50:10',NULL);
INSERT INTO `items` VALUES (913,'Claudia, 110-109bc, t.man./q.urb (ar) denarius','277.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (914,'Antiochus vii, 138-129bc (euergetes)  silver tetradrachm','677.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-02 21:47:00',NULL);
INSERT INTO `items` VALUES (915,'1866 \"rays\" shield nickel','3377.00','','PCGS (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (916,'1867 \"no rays\" shield nickel','2977.00','','PCGS (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (917,'1868 shield nickel  \"double date\"','1477.00','','PCGS (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (918,'1872 shield nickel  \"double obverse\"','877.00','','NGC (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (919,'1873 \"closed 3\" shield nickel','977.00','','PCGS (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (920,'1876  shield nickel','877.00','','NGC (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (921,'1879/8  shield nickel  pq!!','977.00','','NGC (PR-65*) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (922,'1879 shield nickel','977.00','','NGC (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (923,'1880 shield nickel  \"richmond collection\"','977.00','','NGC (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (924,'1881 shield nickel','977.00','','PCGS (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (925,'1882  shield nickel','877.00','','NGC (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (926,'1883 shield nickel  \"recut 83\"','697.00','','PCGS (PR-65) CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (927,'1847-c \"charlotte mint\" $5 gold','5700.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (928,'Tiberius bronze as (15-16 a.d.)','1477.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (929,'1912 Barber Dime ','2377.00','Rich reddish color. PQ eye appeal!!','NGC (PR-66) CAC sticker',1,1,'2010-11-01 20:27:19','2010-12-02 19:47:30',NULL);
INSERT INTO `items` VALUES (930,'1887  seated liberty 10c','977.00','','PCGS PROOF-64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (931,'1859  copper-nickle cent  (pq!!)','2647.00','','PCGS PROOF-64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (932,'1879  liberty seated 10c','977.00','','PCGS PROOF-64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (933,'1866  liberty seated 25c \"motto\"','2977.00','','NGC PROOF-65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (934,'1865  liberty seated 50c  \"cameo\"','1677.00','','PCGS PROOF-63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (935,'1865 liberty seated 25c  \"cameo\"','2677.00','','NGC PROOF-65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (936,'1880 liberty seated 50c','977.00','','PCGS PROOF-62',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (937,'1912  barber half  pq!!!','1077.00','','NGC PROOF-63',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (938,'1895 barber half  \"gorgeous color\"','1677.00','','NGC PROOF-64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (939,'1936 silver 50c','147.00','','ANACS VF-20',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (940,'1949  silver dollar  \"great color\"','97.00','','NGC (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (941,'1949 silver dollar','37.00','','ANACS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (942,'1951 silver dollar  \"proof-like\"','29.00','','PCI (MS-60)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (943,'1813-a  gold 20-francs','977.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (944,'1700  silver 2-mariengroschen','67.00','','NGC (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-06 14:52:07',NULL);
INSERT INTO `items` VALUES (945,'(1758-90) jeton hanovarian mines-harz','877.00','','NGC MS-64RB Token',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (946,'1901-s  barber quarter  key date!!','3847.00','','NGC (AG-3)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (947,'1878-s morgam silver dollar','69.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (948,'1880-o morgan dollar  (vam-7, o/o)','87.00','','ANACS (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (949,'1042-66 Silver Penny \"Edward the Confessor\"','1477.00','\"Edward the Confessor\" Lewes. About 19.5 mm diameter. Obverse: helmeted bust of Edward the Confessor, who was very pious, and was cannonized after his death. Hammer cross type.','NGC (AU-58)',0,0,'2010-11-01 20:27:19','2011-03-17 18:25:12','');
INSERT INTO `items` VALUES (950,'810-814 Silver Sceat Vilheah-Eanred','297.00','Deep rich charcoal grey surfaces. (s-860)','NGC (AU-50)',1,1,'2010-11-01 20:27:19','2011-03-17 18:27:29','');
INSERT INTO `items` VALUES (951,'C.710-760 Silver Sceat  (Kent, s-797)','2177.00','Obv: Bust facing right with cross. Rev: Wolf-headed serpent.','NGC (AU-55)',0,0,'2010-11-01 20:27:19','2011-03-17 18:26:25','');
INSERT INTO `items` VALUES (952,'C.710-760 Silver Sceat \"Secondary Sceattas\"','1877.00','Type 48 INE.\r\nObv. Whorl of 3 wolf heads. Rev: Round shield with bosses.','NGC (AU-58)',0,0,'2010-11-01 20:27:19','2011-03-17 18:26:43','');
INSERT INTO `items` VALUES (953,'Ah444 gold dinar \"fatimids nicol-684\"','1250.00','Even gold color.','NGC (MS-63)',1,1,'2010-11-01 20:27:19','2011-03-17 17:24:44','');
INSERT INTO `items` VALUES (954,'1871-r  silver peso','97.00','','NGC (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (955,'Sh1315(1936) 1/4 silver rials','27.00','','NGC (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-06 16:17:42',NULL);
INSERT INTO `items` VALUES (956,'Sh1312(1933) silver rial','77.00','','NGC (MS-63)',1,1,'2010-11-01 20:27:19','2010-12-06 16:16:29',NULL);
INSERT INTO `items` VALUES (957,'Ah1320(1902) silver 5000-dinars (5 kran)','47.00','','NGC (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (958,'M45(1912) silver yen  lusterous!!','177.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (959,'1783-mo silver 1/2 reale  \"el cazador\"','117.00','','ANACS (PRIME SELECT)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (960,'Mexico 1739/6-mo silver dollar (8-reales)','900.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (961,'1849-go 1/2 real  (great color!)','277.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (962,'1849-go silver 1/2 real  pq1!! eye appeal','177.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (963,'1849-go pf silver 1/2 real  (great color!!)','67.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (964,'1966 silver 20-soles  \"naval battle centennial\"','47.00','','NGC (MS-67)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (965,'Ah1343 copper 1/2 ghirsh  \"nejd\"','227.00','','NGC (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-06 17:30:51',NULL);
INSERT INTO `items` VALUES (966,'1877 bronze 5-ore','197.00','','NGC (AU-50) BN',1,1,'2010-11-01 20:27:19','2010-12-06 17:49:31',NULL);
INSERT INTO `items` VALUES (967,'1912-w  silver 50-ore','47.00','','NGC (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-06 18:17:34',NULL);
INSERT INTO `items` VALUES (968,'1919-w  silver 25-ore','47.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (969,'1886  bronze 5-ore','75.00','','NGC (XF-45) BN',1,1,'2010-11-01 20:27:19','2010-12-06 17:50:44',NULL);
INSERT INTO `items` VALUES (970,'1891  bronze 5-ore','39.00','','NGC (AU-50) BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (971,'1907  bronze 5-ore','19.00','','NGC (AU-58) BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (972,'1919  bronze 5-ore','77.00','','NGC (MS-64) BN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (973,'(1726) bern-school prize medal  (haller-889)','277.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (974,'(ah433-443) kakwayhid gold dinar isbahan/faramurz','1677.00','','NGC (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-06 15:46:56',NULL);
INSERT INTO `items` VALUES (975,'(ah433-443) gold dinar kakwayhid-isbahan-faramurz','775.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (976,'Hadrian 119-122 a.d. gold aureus-genius','3700.00','','ICG (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (977,'Greek silver tetradrachm(shekel) 92-91 b.c. tyre in phoenicia','1177.00','','ICG (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-02 18:41:04',NULL);
INSERT INTO `items` VALUES (978,'Persia-sardeis in lydia gold daric (c.450 b.c.)','3700.00','','NGC (Abt.UNC.)',1,1,'2010-11-01 20:27:19','2010-12-02 18:47:51',NULL);
INSERT INTO `items` VALUES (979,'Gold daric (c.450 bc) persia-sardeis in lydia','5700.00','','NGC (UNC.)',1,1,'2010-11-01 20:27:19','2010-12-02 18:39:14',NULL);
INSERT INTO `items` VALUES (980,'Tiberius gold aureus (17-37a.d.) lugdunum mint','4277.00','','ICG (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-02 18:54:28',NULL);
INSERT INTO `items` VALUES (981,'Jerusalem-first revolt silver shekel','3477.00','','NGC (Abt.UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (982,'Jerusalem-first revolt silver shekel (68-69 a.d.)','6700.00','','NGC (UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (983,'Jerusalem/first revolt silver 1/2 shekel (66-67 a.d.)','6700.00','','NGC (Abt.UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (984,'Jerusalem/bar kochba  silver sela  (134-135 a.d.)','4700.00','','NGC (Abt.UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (985,'1879-s  morgan silver dollar','127.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (986,'1881-s morgan dollar','49.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (987,'1878 7/8tf morgan dollar  \"double liberty\"','177.00','','NGC (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (988,'1891-cc morgan dollar  (pq! color)','1277.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (989,'1880-s Morgan Silver Dollar','237.00','Lusterous white surfaces.','NGC (MS-66)',1,1,'2010-11-01 20:27:19','2010-12-02 23:31:06',NULL);
INSERT INTO `items` VALUES (990,'1882-s  morgan dollar  \"proof-like appearance\"','39.00','','PCGS (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (991,'1883-o  morgan dollar','47.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (992,'1885-o morgan dollar  \"deep proof like\"','197.00','','NGC (MS-64) DPL',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (993,'1900-o  morgan dollar','87.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (994,'1880 shield nickel  \"proof\"','767.00','','NGC (PF-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (995,'1885  liberty nickel  \"proof\"','1187.00','','PCGS (PR-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (996,'1939  mercury dime  \"proof\"','297.00','','PCGS (PR-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (997,'1936-s  walking liberty 50c  pq!!','675.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (998,'1926-d peace dollar  \"d\" tilted right','347.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (999,'1934-s peace dollar  \"better date\"','157.00','','NGC (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1000,'1973-d  eisenhower dollar  (pq!!)','27.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1001,'1891-cc gold $10 liberty  \"ex-bass\"','2177.00','','NGC (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1002,'1875-s  gold $20 liberty','1577.00','','PCGS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1003,'1908 \"no motto\"  gold $20 saint gaudens','1597.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1004,'Oregon 1936-s commem 50c','327.00','','PCGS (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1005,'Oregon 1937-d commem 50c','277.00','','PCGS (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1006,'Oregon 1937-d commem 50c','227.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1007,'1938-p Oregon 50c Commem','375.00','Lustrous faintly toned surfaces.','PCGS (MS-66)',1,1,'2010-11-01 20:27:19','2010-12-03 00:39:11',NULL);
INSERT INTO `items` VALUES (1008,'Sesquicentennial 50c commem','117.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1011,'1913 \"type-2\" buffalo nickel  \"reduced price\"','2377.00','','NGC PROOF-66',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1012,'1937-d buffalo nickel  \"3-legs\"  rare!!','2077.00','','NGC (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1013,'1939  lincoln cent','287.00','','NGC PROOF-66 RED',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1014,'1939-d mercury dime  \"full bands\"','67.00','','PCGS (MS-66) FB',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1015,'Mckinley 1917 $1 gold commem','775.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1016,'1899  $5 gold liberty','387.00','','ANACS (MS-60)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1017,'1889  $2 1/2 gold liberty','287.00','','ANACS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1018,'1837 classic head $5 gold','3177.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1019,'Tyre in phoenicia (28-29 ad) silver 1/2 shekel (didrachm)','1477.00','','ICG VF-35',1,1,'2010-11-01 20:27:19','2010-12-02 18:56:36',NULL);
INSERT INTO `items` VALUES (1020,'Tyre (138-126 b.c.) temple dues silver 1/2 shekel','377.00','','NGC (VF)',1,1,'2010-11-01 20:27:19','2010-12-02 18:55:29',NULL);
INSERT INTO `items` VALUES (1021,'Seleukid, antiochus vii 138-129 b.c., ar tetradrachm euergetes','677.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:11:15',NULL);
INSERT INTO `items` VALUES (1022,'Palestine (135-104 b.c.) john hyrcanus i, ae prutah','227.00','','ICG (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1023,'Julius caesar gold aureus  (c.46 b.c.)','12700.00','','ICG (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1024,'Julius caesar (44 b.c.) silver denarius','3277.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1025,'Julius caesar (42 b.c.) silver denarius','8700.00','','ICG (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:30:26',NULL);
INSERT INTO `items` VALUES (1026,'Indo-greek  menander 160-145 b.c.','377.00','','ICG (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-03 13:00:31',NULL);
INSERT INTO `items` VALUES (1027,'Mithradates vi 88-86 b.c., gold stater (thrace pontic kings)','977.00','','ICG (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1028,'Nerva (96 a.d.) silver denarius','297.00','','ICG (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1029,'Otho, provincial syria, 69 a.d. silver tetradrachm, antioch','977.00','','ANACS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1030,'Trajan (98-117 a.d.) silver deanarius','977.00','','ICG (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-03 14:06:33',NULL);
INSERT INTO `items` VALUES (1031,'Vitellius (69ad)  silver denarius','1277.00','','ANACS (VF-35))',1,1,'2010-11-01 20:27:19','2010-12-03 14:14:26',NULL);
INSERT INTO `items` VALUES (1032,'Taras in tarentum silver stater, 272-235 bc, horse/dolphin-rider','577.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1033,'Vespasian gold aureus (ad 69-79) posthumous issue','6700.00','','NGC (FINE)',1,1,'2010-11-01 20:27:19','2010-12-03 14:11:09',NULL);
INSERT INTO `items` VALUES (1034,'Nerva, fortuna gold aureus (97 a.d.)','12700.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1035,'Isl. of euboea, histiaea silver tetrobol (c. 3-2b.c.)','277.00','','NGC (CH.XF)',0,0,'2010-11-01 20:27:19','2010-12-03 13:04:17',NULL);
INSERT INTO `items` VALUES (1036,'Isl. of euboea, histiaea silver tetrobol (3-2 cent. b.c.)','377.00','','NGC (AU)',1,1,'2010-11-01 20:27:19','2010-12-03 13:02:34',NULL);
INSERT INTO `items` VALUES (1037,'Farsuleius mensor silver denarius','227.00','','ICG (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1038,'Constans ii, (659-667 a.d.) byzantine gold solidus','1477.00','','ANACS (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1039,'1909-s \"v.d.b.\"  lincoln cent  (rare!!)','1277.00','','PCGS (Genuine)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1040,'1894-p  gold $20 liberty','847.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1041,'1990 gold $25 eagle   (rare year)','1177.00','','NGC (MS-69)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1042,'1913  gold $2.5 indian  (better date)','847.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1043,'1895-s  morgan dollar  \"scarce year\"','2977.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1044,'Lysimachus, 215-195 b.c.  gold stater','4700.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:05:57',NULL);
INSERT INTO `items` VALUES (1045,'Domitian, cos iiii (76 a.d.) gold aureus','4700.00','','NGC (VF-25)',1,1,'2010-11-01 20:27:19','2010-12-03 13:53:28',NULL);
INSERT INTO `items` VALUES (1046,'Marc antony (d.30b.c.)  silver denarius','1297.00','','NGC (CH.VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1047,'Vitellius, concordia (69 a.d.)  gold aureus','17700.00','','ANACS VF-30',1,1,'2010-11-01 20:27:19','2010-12-03 14:15:14',NULL);
INSERT INTO `items` VALUES (1048,'Faustina senior, 141-161 a.d.  silver denarius','277.00','','ICG (AU-53)',0,0,'2010-11-01 20:27:19','2011-03-14 20:07:44','');
INSERT INTO `items` VALUES (1049,'Marcus aurelius, 161-180 a.d.  silver denarius','475.00','','ICG (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1050,'Antoninus pius, 138-161 a.d. silver denarius','377.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1051,'Hadrian, 117-138 a.d. silver denarius','377.00','','ICG (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:57:01',NULL);
INSERT INTO `items` VALUES (1052,'Tiberius iii, 698-705 a.d.  gold solidus  \"scarce ruler\"','1977.00','','ANACS (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1053,'(1042-66)  silver penny  \"edward the confessor\"','1477.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1054,'Vetranio, 350 a.d.  bronze centenionalis','775.00','','ICG (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 14:11:55',NULL);
INSERT INTO `items` VALUES (1055,'Aelia eudoxia, 400-404 a.d.  ae 18mm','177.00','','ICG (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 13:44:37',NULL);
INSERT INTO `items` VALUES (1056,'323-319 b.c. alexander the great gold stater','3177.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:17:16',NULL);
INSERT INTO `items` VALUES (1057,'Lysimachus, 323-281 b.c.  gold stater','9700.00','','ANACS (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-03 13:06:42',NULL);
INSERT INTO `items` VALUES (1058,'Trajan & father (98-117 a.d.)  gold aureus','4700.00','','ANACS (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1059,'Julia domna, 193-217 a.d.  gold aureus','5700.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1060,'Constantine ii, as caesar (324 a.d.)  gold solidus, cyzicus','5700.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1061,'Michael vii, 1071-1078 a.d., el stamenon nomisma','577.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1062,'1042-1055 b.c.  constantine ix, gold stamenon nomisma','877.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1063,'Lucania in thurium. 350-281 b.c.  silver distater','4277.00','','ICG (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1064,'Eukratides i, 171-145 b.c.  silver tetradrachm','5977.00','','ICG (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 12:59:23',NULL);
INSERT INTO `items` VALUES (1065,'Arsinoe ii, gold octadrachm, 253-246 b.c., ptolemaic kings','12700.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:26:20',NULL);
INSERT INTO `items` VALUES (1066,'Arsinoe ii, gold octadrachm, 270/68 b.c., ptolemaic kingdom','14700.00','','NGC (AU)',1,1,'2010-11-01 20:27:19','2010-12-03 13:27:02',NULL);
INSERT INTO `items` VALUES (1067,'Alexander the great silver tetradrachm (4dr)','297.00','','NGC (VERY FINE)',0,0,'2010-11-01 20:27:19','2011-02-16 21:58:04','');
INSERT INTO `items` VALUES (1068,'Alexander iii, silver drachm, 336-323 b.c., posthumous issue','487.00','','NGC (CH.AU)',1,1,'2010-11-01 20:27:19','2010-12-03 13:20:45',NULL);
INSERT INTO `items` VALUES (1069,'Alexander iii, 336-323 b.c., silver drachm','377.00','','NGC (CH.XF)',1,1,'2010-11-01 20:27:19','2010-12-03 13:19:59',NULL);
INSERT INTO `items` VALUES (1070,'Alexander iii (336-323 b.c.) silver drachm, posthumous issue','197.00','','NGC (CH.VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1071,'Alexander iii, silver drachm, posthumous issue. (336-323 b.c.)','877.00','','NGC (MINT STATE)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1072,'Sicily, syracuse gold 50 litrae (c405-395 b.c.)','7700.00','','NGC (CH.VF)',1,1,'2010-11-01 20:27:19','2010-12-03 13:12:51',NULL);
INSERT INTO `items` VALUES (1073,'Ionia, geometric, el 1/6 stater  (625-600 b.c.)','1700.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1074,'Neapolis in campania silver didrachm (325-241 b.c.)','477.00','','ANACS (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-03 13:07:38',NULL);
INSERT INTO `items` VALUES (1075,'Neapolis/campania silver didrachm (4th-3rd cent. b.c.)','977.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1076,'Attica, athens silver tetradrachm (2-1st cent. b.c.)','977.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1077,'Alexander the great gold stater (333-305 b.c.)','3977.00','','ANACS (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-03 13:22:57',NULL);
INSERT INTO `items` VALUES (1078,'(1343-54)  gold ducat','677.00','','NGC (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1079,'Hadrian gold aureus (117-138 a.d.)','14700.00','','ANACS (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1080,'Constans ii, gold solidus, constantinople (659-667 a.d.)','1477.00','','ANACS (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1081,'Brutus silver denarius (d.42b.c.) legate pedanius costa','2977.00','','NGC (CH.XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1082,'Marcus aurelius silver denarius (161-180 a.d.)','677.00','','NGC (Mint State)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1083,'Shekel of tyre (126bc-55ad)  pnh=12/13 a.d.','1477.00','','NGC (UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1084,'Shekel of tyre  \"pne 29/30\"','1750.00','','Raw',1,1,'2010-11-01 20:27:19','2010-12-02 18:51:15',NULL);
INSERT INTO `items` VALUES (1085,'Shekel of tyre  \"pnb 26/27\"  over-date','1477.00','','Raw',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1086,'Shekel of tyre  \"pnh 32/33\"  overdate','1750.00','','Raw',1,1,'2010-11-01 20:27:19','2010-12-02 18:52:49',NULL);
INSERT INTO `items` VALUES (1087,'Shekel of tyre  \"overdate 27/28\"','1477.00','','Raw',1,1,'2010-11-01 20:27:19','2010-12-02 18:49:59',NULL);
INSERT INTO `items` VALUES (1088,'Shekel of tyre  \"over-date 24/5\"','1277.00','','Raw',1,1,'2010-11-01 20:27:19','2010-12-02 18:48:58',NULL);
INSERT INTO `items` VALUES (1089,'Maximinus i, 235-238 a.d. silver denarius','177.00','','ICG (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1090,'Gordian iii, silver antoninianus (238-244 a.d.)','147.00','','ANACS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1091,'Elagabalus silver denarius (218-222 a.d.)','447.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1092,'Julia domna silver denarius (193-211 a.d.)','387.00','','ICG (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1093,'Septimius severus, silver denarius (193-211 a.d.)','247.00','','ICG (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 14:04:55',NULL);
INSERT INTO `items` VALUES (1094,'Trajan silver denarius (102-103 a.d.)','277.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 14:09:34',NULL);
INSERT INTO `items` VALUES (1095,'Vespasian, judaea, yr2  \"first jewish revolt\",  ae prutah','147.00','Jewish Coin.','ANACS (VF-30)',1,1,'2010-11-01 20:27:19','2011-01-03 21:28:05',NULL);
INSERT INTO `items` VALUES (1096,'Augustus, silver denarius (27b.c.-14a.d.)','775.00','','NGC (CH.VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1097,'Severius alexander gold aureus, 222-235 a.d.','14700.00','','NGC (MINT STATE)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1098,'Ionia, teos silver stater (c.520-475 b.c.)','1977.00','','NGC (CH.VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1099,'Athena \"owl\" silver tetradrachm (c.440-404 b.c.)','0.00','','',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1100,'New style \"owl\" silver tetradrachm (1st-2nd cent. b.c.)','877.00','','NGC (CH.VF)',1,1,'2010-11-01 20:27:19','2010-12-03 13:08:48',NULL);
INSERT INTO `items` VALUES (1101,'1864 \"bronze\" indian cent','227.00','','NGC (MS-64) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1102,'1937-d buffalo nickel  \"3-leg\"','1077.00','','NGC (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1103,'1878-p  gold dollar  \"better date\"','577.00','','PCGS (Genuine)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1104,'1880-p gold $10 liberty','727.00','','NGC (MS-60)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1105,'1936-s Oregon 50c Commem','347.00','NEW PRICE!! Traces of golden accents.','NGC (MS-66)',1,1,'2010-11-01 20:27:19','2010-12-03 00:37:31',NULL);
INSERT INTO `items` VALUES (1106,'1925-p peace dollar  \"vam-1b, r-6) die gouges','47.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1107,'1935-p peace dollar  (vam-1a, r-5) rev. die gouge','79.00','','PCGS (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1108,'1926-p  gold $10 indian  \"pq!!\"','1197.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1109,'1976-p \"type-2\" eisenhower dollar  thin rev. letters','67.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1110,'1838 capped bust half dollar reeded edge','327.00','','NGC (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1111,'1900-o morgan dollar \"paramount\" holder & graded','77.00','','MS-65',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1112,'1947 mint set (original package)  great color!!','1377.00','','MINT STATE',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1113,'1995-w olympic stadium ($5 gold)','1877.00','','NGC MS-69',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1114,'1952 proof set  includes \"superbird\" quarter','387.00','','PROOF',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1115,'1995-w $5 gold torch runner','977.00','','NGC (MS-70)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1116,'1816 matron large cent  \"randall hoard\"','1077.00','','PCGS (MS-63) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1117,'1811 classic head half cent  \"close date\"','2177.00','','PCGS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1118,'1872 three-cent nickel  (green label)','227.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1119,'1851 887 humbert $50 (reeded edge)','19700.00','','PCGS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1120,'Love Tokens Seated Liberty Dimes as Pin Bar','377.00','Very unusual wearable seated dime LOVE TOKENS Pin Bar. Some examples: DEC 25; 1890; FR; WM; ES; MM. The bar measures about 3 1/2 inches with vine/leave engraving. (16-coins)','No ID',1,1,'2010-11-01 20:27:19','2010-12-03 17:07:24',NULL);
INSERT INTO `items` VALUES (1121,'1944-d silver 2.5 gulden','97.00','','NGC (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-06 17:12:06',NULL);
INSERT INTO `items` VALUES (1122,'1827 capped bust 50c  \"square 2\"','227.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1123,'1795 flowing hair 50c','1775.00','','NGC (FINE details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1124,'1916-s $5 gold indian  \"better date\"','477.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1125,'1882-o  $10 gold liberty  \"scarce\"','977.00','','NGC (XF-45) PQ!',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1126,'1897-s  $20 gold liberty','1700.00','','NGC (MS-61)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1127,'1889-s  $20 gold liberty','1277.00','','NGC (AU details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1128,'1895-s  gold $20 liberty','1477.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1129,'1856-p  $20 gold liberty','1477.00','','NGC (AU details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1130,'1851 \"humbert\" 887 $50 assayer gold \"no 50 on reverse\"','12700.00','','NCS (VF details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1131,'1882-cc  gsa silver dollar (box & cert.)','187.00','','UNC.',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1132,'1883-cc  gsa silver dollar (box & cert.)','187.00','','UNC.',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1133,'1836 capped bust 50c  \"reeded edge\"','3977.00','','ANACS (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1134,'1858-s seated liberty 50c  \"chopmarked\"','377.00','','ANACS (AU-50/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1135,'1846 Liberty Seated Dollar','9700.00','Heavily repunched date. Only seen on Proofs. Maybe only 40 struck with 30 available.','PCGS (PROOF-58)',1,1,'2010-11-01 20:27:19','2010-12-02 20:30:11',NULL);
INSERT INTO `items` VALUES (1136,'1875-CC Twenty-Cent Piece','1677.00','Great eye appeal. Very lightly cleaned.','ANACS (AU-50/details)',1,1,'2010-11-01 20:27:19','2010-12-03 16:42:13',NULL);
INSERT INTO `items` VALUES (1137,'1871-p liberty seated dollar','377.00','','ANACS (VF-35/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1138,'1840-p  liberty seated dollar','577.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1139,'1843-p  liberty seated dollar','477.00','','ANACS (AU-50/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1140,'1860-o Liberty Seated Dollar','1497.00','Very nice eye appeal. PQ!!','ANACS (AU-55/details)',1,1,'2010-11-01 20:27:19','2010-12-02 23:28:07',NULL);
INSERT INTO `items` VALUES (1141,'1842-52  a. bechtler carolina gold dollar','1677.00','','ANACS (AU-50/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1142,'1766/5-mo mf silver 8-reales','597.00','','PCGS (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1143,'1762-mo mm silver 8-reales','487.00','','PCGS (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1144,'1787 new jersey copper','577.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1145,'1787 new jersey copper colonial','197.00','','ANACS (VF-35/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1146,'C.1700-1800 gold 2-shu  \"province of koshu','677.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-06 16:57:47',NULL);
INSERT INTO `items` VALUES (1147,'C.1700-1800 gold 2-shu (province of koshu)','847.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1148,'Arsinoe ii, d.270/68bc  gold octodrachm  \"rare tyre mint\"','22700.00','','NGC (AU)',1,1,'2010-11-01 20:27:19','2010-12-03 13:25:29',NULL);
INSERT INTO `items` VALUES (1149,'1876-j  silver 2-mark','277.00','','NGC (AU-53)',1,1,'2010-11-01 20:27:19','2010-12-06 14:58:15',NULL);
INSERT INTO `items` VALUES (1150,'1956 25-schilling  \"wolfgang a. mozart\"','37.00','','NGC (MS-67)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1151,'1913 austria heller','27.00','','NGC (MS-63) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1152,'1954 silver 50-francs  (french)','37.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1153,'1954 silver 20-francs  (french)','117.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1154,'(1365-68) silver solidino (venice marco cornari)','277.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1155,'1921 ONE PENNY  \"common wealth of australia\"','477.00','Deep chocolate brown.','NGC (MS-63) BROWN',1,1,'2010-11-01 20:27:19','2011-03-17 16:41:58','');
INSERT INTO `items` VALUES (1156,'1670 silver 2-thaler  (graz dav-a3232)','4700.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1157,'1671 silver thaler (dav-6557)  \"wildman\"','2775.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1158,'1614 silver 2-thaler (klippe dav-7582)','1377.00','','NGC (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1159,'1882-cc \"GSA\" Morgan','430.00','Lustrous white surfaces. (box & paper)','MS-65',1,1,'2010-11-01 20:27:19','2010-12-02 23:33:41',NULL);
INSERT INTO `items` VALUES (1160,'1884-cc \"gsa\" morgan dollar  (box & paper)','217.00','','MS-64',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1161,'Kyme in aiolis silver tetradrachm 2nd cent. bc','1477.00','','ICG (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:05:16',NULL);
INSERT INTO `items` VALUES (1162,'Aspendos in pamphylia silver stater 4th cen. bc','0.00','','',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1163,'Ariarathes v-cappadocia silver drachm (163-130 bc)','377.00','','NGC (Abt. UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1164,'L. antestius (c.136 bc) silver denarius','137.00','','ICG (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1165,'Julius caesar (46 bc) silver denarius-ceres/pontifex maximus','1277.00','','ICG (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1166,'Maximinus i, 235-238 ad, silver denarius','197.00','','ANACS (AU-53)',1,1,'2010-11-01 20:27:19','2010-12-03 14:01:31',NULL);
INSERT INTO `items` VALUES (1167,'Julius caesar (46-45 bc) silver denarius/spanish mint','1477.00','','ICG (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 14:19:40',NULL);
INSERT INTO `items` VALUES (1168,'Paulina (235-238 ad) silver denarius','977.00','','NGC (EXTREMELY FINE)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1169,'India, kidarite kings gold stater kidara kushani (late 4th cent. ad)','977.00','','ANACS (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1170,'1910-p  indian $2.50 gold','297.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1171,'1910-d saint gaudens $20 gold','1677.00','','NGC (UNC. details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1172,'2006 buffalo $50 gold (.9999 fine) 1oz','1277.00','','NGC (MS-69)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1173,'1882 three-cent nickel','377.00','','NGC (PROOF 62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1174,'1915-s buffao nickel  \"pq!! eye appeal\"','477.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1175,'1867 indian head cent  \"key date\"','1477.00','','NGC (MS-65) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1176,'1908-s indian head cent','337.00','','NGC (MS-63) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1177,'1869 indian head cent (better date)','577.00','','NGC (MS-61) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1178,'Lysimachus 297-281 bc, king of thrace gold stater','3977.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1179,'Gallienus, 253-268 ad, gold aureus, rome mint','7700.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1180,'Septimius severus 202-210 ad, gold aureus','12700.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1181,'Trajan decius, 249-151 a.d. gold aureus','4700.00','','ANACS (VF-25)',1,1,'2010-11-01 20:27:19','2010-12-03 14:08:46',NULL);
INSERT INTO `items` VALUES (1182,'Akragas in sicily, 482-472 b.c., silver didrachm','877.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-02 19:13:17',NULL);
INSERT INTO `items` VALUES (1183,'Alexander the great, 332-323 bc, gold stater','3477.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:23:47',NULL);
INSERT INTO `items` VALUES (1184,'Q. titius/pegasus (90 b.c.) silver denarius','277.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1185,'Sabinus (89 b.c.) silver denarius \"rape of sabines\"','477.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 14:26:10',NULL);
INSERT INTO `items` VALUES (1186,'Calenus & scaevola (70 b.c.) silver denarius','197.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1187,'(marcus brutus) q.s. caepio brustus, 54b.c., silver denarius','477.00','','ANACS (FINE 15)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1188,'(marcus brutus) q.s. caepio brutus, 54 b.c., silver denarius','677.00','','ANACS (VF-20)',1,1,'2010-11-01 20:27:19','2010-12-03 14:16:49',NULL);
INSERT INTO `items` VALUES (1189,'(marcus brutus) q.s. caepo brutus, 54b.c., silver denarius','1677.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1190,'(marcus brutus) q.s. caepio brutus, 58 b.c., silver denarius','977.00','','ANACS (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-03 14:17:57',NULL);
INSERT INTO `items` VALUES (1191,'Mn. fonteius (85 b.c.) silver denarius','775.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 14:23:28',NULL);
INSERT INTO `items` VALUES (1192,'L. calpurnius piso, 90 b.c., silver denarius','775.00','','ANACS (AU-53)',1,1,'2010-11-01 20:27:19','2010-12-03 14:22:46',NULL);
INSERT INTO `items` VALUES (1193,'1625-26 charles i, gold unite','2977.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1194,'1796-nr jj gold 8-escudo, spanish colonial','1877.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1195,'1916-s $20 saint gaudens','1977.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1196,'1910-s $20 gold saint gaudens','1637.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1197,'1912-p $20 saint gaudens','1775.00','','PCGS (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1198,'1914-s $20 saint gaudens  (rattler holder)','1637.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1199,'1909-s/s  gold $20 saint gaudens','1637.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1200,'1927 $20 gold saint gaudens','1877.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1201,'1923-d  $20 saint gaudens','1877.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1202,'1922  $20 gold saint gaudens','1877.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1203,'1915-s  $20 gold saint gaudens','1637.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1204,'1916-d walking liberty 50c  (pq!!)','427.00','','PCGS (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1205,'1912-d liberty \"v\" nickel  only \"d\" mintmark','677.00','','PCGS (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1206,'1940-p Walking Liberty 50c','227.00','Pleasing white surfaces.','PCGS (MS-66)',1,1,'2010-11-01 20:27:19','2010-12-02 20:14:16',NULL);
INSERT INTO `items` VALUES (1207,'Nero as emperor (54-58ad) gold aureus','3775.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1208,'Constantine ix, 1042-1055 gold stamenon nomisma','877.00','','ANACS (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1209,'Constantine ix, 1042-1055 gold stamenon nomisma','977.00','','ANACS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1210,'Alexander the great, 330-320 b.c. gold di-stater \"amphipolis\"','19700.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1211,'Carthage in zeugitania (electrum stater) 350-270 b.c. \"north africa\"','2977.00','','ICG (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1212,'Mithradates vi, 88-86 b.c. gold stater  \"double struck\"','1477.00','','ICG (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1213,'786-809AD Gold Dinar','977.00','Gold Dinar of Abbasid Caliph, Harun Al-Rashid.<br /> <br />\r\n\r\n1000 and 1 Arabian Nights tale. Harun Al-Rashid would find a virgin and after being with her kill her. One girl started to tell a story to save her life. Each night she would never end it so Harun would want to hear more the next night or 1000 and 1 nights. Abbasids held Iraq and Egypt also.','ANACS (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-04 01:56:05',NULL);
INSERT INTO `items` VALUES (1214,'1704 silver taler \"wildman\" struck over another coin','1700.00','','NGC (XF-45)',1,1,'2010-11-01 20:27:19','2010-12-06 14:53:30',NULL);
INSERT INTO `items` VALUES (1215,'1921-d morgan dollar','67.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1216,'1921-d morgan dollar','37.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1217,'1922-p peace dollar','47.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1218,'1883-o morgan dollar','47.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1219,'1941-s Walking Liberty 50c','187.00','Pure white.','NGC (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-02 20:18:18',NULL);
INSERT INTO `items` VALUES (1220,'1714 1/4 Penny Great Britain','977.00','Deep chocolate brown. The lines in the photo are from the holder. P-741','NGC (VF-25) Brown',1,1,'2010-11-01 20:27:19','2011-03-17 18:18:54','');
INSERT INTO `items` VALUES (1221,'Arkansas 1936-d half','137.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1222,'Arkansas 1936-s 50c','137.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1223,'Arkansas 1937-p 50c','127.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1224,'Arkansas 1937-d 50c','157.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1225,'Arkansas  1937-s 50c','117.00','','NGC ( MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1226,'Arkansas  1938-p 50c','197.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1227,'Arkansas  1938-d 50c','227.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1228,'Arkansas  1938-s 50c','227.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1229,'Cleveland 1936 50c','127.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1230,'1935 Robinson 50c','187.00','White lusterous surfaces.','NGC (MS-63)',1,1,'2010-11-01 20:27:19','2010-12-03 00:51:56',NULL);
INSERT INTO `items` VALUES (1231,'Bridgeport 1936 50c','177.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1232,'Albany 1936 50c','277.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1233,'Boone 1936-s 50c','147.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1234,'Boone 1937-p 50c','127.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1235,'Boone  1935-d 50c','147.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1236,'Boone  1935/1934 50c commem','147.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1237,'Connecticut  1935 50c','217.00','','NGC (UNC./details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1238,'San diego  1935-d 50c','107.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1239,'Huguenot  1924 50c','187.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1240,'Texas  1934-p 50c','127.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1241,'Vermont  1927 50c','185.00','','NGC (UNC./detail/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1242,'1936 Lynchburg 50c','227.00','Pleasing white surfaces.','NGC (UNC./details/clnd)',1,1,'2010-11-01 20:27:19','2010-12-03 00:35:42',NULL);
INSERT INTO `items` VALUES (1243,'Cincinnati  1936-p 50c','220.00','','NGC (UNC./details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1244,'1936-p Rhode Island 50c','277.00','PURE white.','NGC (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-03 00:49:11',NULL);
INSERT INTO `items` VALUES (1245,'Rhode island  1936-s 50c','147.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1246,'Pilgrim  1921 50c','147.00','','NGC (UNC./details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1247,'1925 Stone Mountain 50c','277.00','Bright white surfaces.','NGC (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-03 00:56:08',NULL);
INSERT INTO `items` VALUES (1248,'1936 Wisconsin 50c','377.00','Lustrous white surfaces.','NGC (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-03 00:58:40',NULL);
INSERT INTO `items` VALUES (1249,'Texas  1935-s commem 50c','137.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1251,'Oregon trail  1937-d 50c','177.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1252,'Calabria, taras, c.480-450 b.c. silver didrachm','1277.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1253,'Anthemius, 467-472 a.d. gold solidus \"western roman empire\"','3977.00','','NGC (FINE/clipped)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1254,'Calabria, taras c.281 b.c. silver didrachm','977.00','','NGC (CH. VF/scrs)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1255,'Sicily, himera, c.483-472 b.c., silver didrachm','1277.00','','NGC (AU)',1,1,'2010-11-01 20:27:19','2010-12-03 13:12:03',NULL);
INSERT INTO `items` VALUES (1256,'Lucania, heraclea, c. after 281 b.c., silver stater','775.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1257,'Thracian cherronesos, 4th cent. bc, silver hemidrachm','377.00','','NGC (CH.XF)',0,0,'2010-11-01 20:27:19','2011-03-17 18:42:21','');
INSERT INTO `items` VALUES (1258,'Thracian cherronesos, 4th cent. b.c., silver hemidrachm','577.00','','NGC (MINT STATE)',1,1,'2010-11-01 20:27:19','2010-12-03 13:13:39',NULL);
INSERT INTO `items` VALUES (1259,'Antiochus vii, 138-129 b.c., silver tetradrachm','677.00','','NGC (CHOICE XF)',1,1,'2010-11-01 20:27:19','2010-12-02 21:45:18',NULL);
INSERT INTO `items` VALUES (1260,'L. censorinus, c.82 b..c., silver denarius','277.00','','NGC (CHOICE VF)',0,0,'2010-11-01 20:27:19','2011-03-17 18:43:01','');
INSERT INTO `items` VALUES (1261,'L. sempronius pitio, c.148 b.c., silver denarius','377.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1262,'Q. pompeius rufus, c.54 b.c., silver denarius','277.00','','NGC (CHOICE VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1263,'Brutus, d.42 b.c., silver denarius','1477.00','','NGC (FINE)',1,1,'2010-11-01 20:27:19','2010-12-03 13:29:44',NULL);
INSERT INTO `items` VALUES (1264,'Romanus iii, 1028-1034 a.d., gold histamenon nomismsa','977.00','','NGC (AU)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1265,'Constantine ix, 1042-1055 a.d., gold hist. nomisma','977.00','','NGC (CHOICE AU)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1266,'1937 walking liberty 50c','547.00','','PCGS (PROOF-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1267,'1909 liberty \"v\" nickel  pq!!','677.00','','PCGS (PROOF 65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1268,'1956 \"type-2\" franklin half  \"ultra cameo\"','117.00','','NGC (PROOF 67)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1269,'1922-p peace dollar  \"unusual wire edge reverse\"','97.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1270,'Texas  1937-d 50c commem','397.00','','NGC (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1271,'1937-p Boone Commem 50c ','377.00','Bright white surfaces.','NGC (MS-66)',1,1,'2010-11-01 20:27:19','2010-12-03 00:29:59',NULL);
INSERT INTO `items` VALUES (1272,'1937 Roanoke 50c Commem','377.00','Nice flashy white surfaces.','NGC (MS-66)',1,1,'2010-11-01 20:27:19','2010-12-03 00:50:20',NULL);
INSERT INTO `items` VALUES (1273,'California 1925-s commem 50c','367.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1274,'Maryland 1934 commem 50c','377.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1275,'Fort vancouver 1925 commem 50c','477.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1276,'1930-p standing liberty 25c','447.00','','NGC (MS-64) FULL HEAD',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1277,'1924-d  standing liberty 25c','377.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1278,'1923-p  standing liberty 25c','147.00','','NGC (AU/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1279,'1917-s \"type-2\" standing liberty 25c','337.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1280,'1921-p standing liberty 25c  \"scarce date\"','577.00','','NGC (VF/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1281,'1884-s morgan silver dollar','47.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1282,'1894-s morgan dollar','87.00','','NGC (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1283,'1890-cc  morgan dollar','137.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1284,'1899-s  morgan dollar','97.00','','NGC (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1285,'Eukratides I, (171-145 BC) Silver Tetradrachm','2877.00','(Indo-Grekk). Nice high-relief obverse. Obv: Bust of Eukratides I. Rev: Castor and Pollux (twins) on horseback. Also know as Dioscuri meaning \"Pair of Them\". ','NGC (ABT. UNC.)',1,1,'2010-11-01 20:27:19','2010-12-02 23:24:32',NULL);
INSERT INTO `items` VALUES (1286,'Kyme in aiolis, 2ndcent.bc, silver tetradrachm','1477.00','','NGC (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1287,'Thrace, maroneia, c.400-350 bc, silver stater','5700.00','','NGC (CHOICE XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1288,'Trajan & father, 98-117 a.d.,  gold aureus','8700.00','','ANACS (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1289,'Julius caesar, c.46 bc, gold aureus','10500.00','','ICG (AU-58)',0,0,'2010-11-01 20:27:19','2011-03-09 22:15:44','');
INSERT INTO `items` VALUES (1290,'Alexander the great, 330-320 b.c., gold di-stater \"amphipolis\"','19700.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1291,'1897-p morgan silver dollar','227.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1292,'1876-p seated liberty twenty-cent piece','577.00','','NGC (AU/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1293,'1885 seated liberty 25c','1477.00','','PCGS (PROOF 64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1294,'1930 Standing Liberty 25c','347.00','Lusterous surfaces. Some toning.','NGC (MS-64) FULL HEAD',1,1,'2010-11-01 20:27:19','2010-12-02 19:51:23',NULL);
INSERT INTO `items` VALUES (1295,'1881 morgan proof dollar','2577.00','','NGC (PR-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1296,'1849-c  gold dollar  \"closed, wreath\"','1077.00','','NGC (XF/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1297,'1861-p gold dollar (type-3)','297.00','','NGC (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1298,'1914-d  $2.50 gold indian','477.00','','NGC (UNC./details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1299,'1907 High Relief Saint Gaudens $20','14700.00','A true RARITY. Mintage of only 12,367. AU-58 details, altered surfaces.','ANACS (AU-58/details)',1,1,'2010-11-01 20:27:19','2010-12-02 23:49:41',NULL);
INSERT INTO `items` VALUES (1300,'1995-w Gold $5 Olympic Torch Runner','977.00','Perfect gold surfaces.','NGC (MS-70)',1,1,'2010-11-01 20:27:19','2010-12-03 01:01:05',NULL);
INSERT INTO `items` VALUES (1301,'1940-d  mercury dime  \"rattler holder\"','57.00','','PCGS (MS-65) FULL BANDS',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1302,'1941-s  mercury dime','57.00','','NGC (MS-65) FULL BANDS',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1303,'1980-s  susan b. anthony dollar','17.00','','PCGS (PR-69) DEEP CAMEO',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1304,'Gnaeus pompey, 67-36 b.c. silver denarius','2700.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1305,'Julius caesar, 47-46 b.c., silver denarius, aeneas','1977.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:35:20',NULL);
INSERT INTO `items` VALUES (1306,'Julius caesar, 42 b.c., silver denarius, l. mussidius','5700.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 13:34:30',NULL);
INSERT INTO `items` VALUES (1307,'Mark antony & octavian 41 b.c., silver denarius','1977.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1308,'Lepidus & octavian, 42 b.c., silver denarius','1877.00','','ANACS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1309,'Ahenobarbus 41-40 b.c., silver denarius','977.00','','ANACS (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1310,'Sextus pompey 42 b.c., silver denarius, neptune','2700.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1311,'Caligula for germanicus, 37-38 a.d., silver denarius','2977.00','','ANACS (FINE-15)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1312,'Nero 54-68 a.d., silver denarius','677.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1313,'Galba, late 68 a.d., silver denarius','1177.00','','ANACS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1314,'Gaius caesar 20bc-4ad, silver denarius','3700.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1315,'Tiberius 14-37 a.d., silver denarius, lugdunum, obv. c/m','477.00','','ANACS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1316,'1901 indian cent  \"chin whiskers\"','197.00','','PCGS (MS-64) RED',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1317,'1913-p  \"type-1\" buffalo nickel','227.00','','NGC (MS-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1318,'1914 buffalo nickel  pq!! eye appeal','2577.00','','NGC (PROOF-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1319,'1913 \"type-2\" buffalo nickel','1977.00','','PCGS (PROOF-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1320,'1913  \"type-1\" buffalo nickel','3700.00','','PCGS (Proof-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1321,'1916 buffalo nickel','3250.00','','PCGS (PROOF-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1322,'1937 buffalo nickel','1477.00','','NGC (PROOF-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1323,'1930-p buffalo nickel','67.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1324,'1936 buffalo nickel  \"brilliant\"','2775.00','','PCGS (PROOF-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1325,'1939 washington quarter','247.00','','PCGS (PROOF-66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1326,'1939  Walking Liberty 50c','877.00','VERY flashy. A wisp of golden color. \"cac\" sticker.','PCGS (PROOF-65)',1,1,'2010-11-01 20:27:19','2010-12-02 20:11:28',NULL);
INSERT INTO `items` VALUES (1327,'1884-s  morgan dollar  (better date)','257.00','','NGC (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1328,'1885-o  morgan dollar (green label)','119.00','','PCGS (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1329,'1900-o  morgan dollar  pq!!','77.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1330,'1903-p  morgan dollar','77.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1331,'1851-o Gold Dollar','337.00','Lustrous.','NGC (AU-58)',0,0,'2010-11-01 20:27:19','2010-12-23 21:27:14',NULL);
INSERT INTO `items` VALUES (1332,'1851-p  gold dollar','277.00','','NGC (UNC. details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1333,'1854-p  \"type-1\" gold dollar','277.00','','NGC (AU details/clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1334,'1853-c \"charlotte\" gold dollar','775.00','','NCS (XF details/ clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1335,'1849-p  \"moffat\" $10 liberty \"s.s. central america\"','8750.00','','PCGS (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1336,'1879 Silver Metric Dollar (j-1618)','2977.00','Obv: Head of LIBERTY by William Barber. E. PLURIBUS UNUM, 13 stars. Rev: deo est gloria, united states of america, one dollar. Brilliant white surfaces.','PCGS (PROOF-61)',1,1,'2010-11-01 20:27:19','2010-12-03 16:43:53',NULL);
INSERT INTO `items` VALUES (1337,'1855-c gold dollar  \"charlotte\"','977.00','','NGC (XF det./clnd)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1338,'1924-p Peace Silver Dollar','2977.00','Beautiful creamy white surfaces with rustic color along the rim. Selling below Grey Sheet bid of $5700.','NGC (MS-67)',1,1,'2010-11-01 20:27:19','2010-12-02 23:40:22',NULL);
INSERT INTO `items` VALUES (1339,'1941 mercury dime','197.00','','NGC (PROOF 66)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1340,'1942 Jefferson Nickel','377.00','WAR TIME SILVER NICKEL. Brilliant surfaces. Full steps/type-2.','PCGS (MS-66FS)',0,1,'2010-11-01 20:27:19','2011-01-17 18:25:43',NULL);
INSERT INTO `items` VALUES (1341,'1761 silver 1/2 thaler  \"zurich\"','1177.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1342,'1795-w  silver 6-florins  geneva\"','1177.00','','NGC (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-06 18:23:57',NULL);
INSERT INTO `items` VALUES (1343,'M.cipius m.f.  silver denarius, 115-114 b.c.','117.00','','ICG (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1344,'Q.s. caepio brutus (m. junius brutus) silver denarius (54.b.c)','1277.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 14:25:27',NULL);
INSERT INTO `items` VALUES (1345,'Julius caesar (49-86 b.c.) silver denarius','1877.00','','NGC (ABT. UNC.)',1,1,'2010-11-01 20:27:19','2010-12-03 13:31:10',NULL);
INSERT INTO `items` VALUES (1346,'Julius caesar silver denarius (49-44 b.c.)','977.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 13:31:56',NULL);
INSERT INTO `items` VALUES (1347,'Gnaeus pompey junior silver denarius (46-45 b.c.)','1077.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1348,'Isl. of euboea, histiaea  silver tetrobol c.3-2 b.c.','137.00','','NGC (XF)',0,0,'2010-11-01 20:27:19','2011-02-01 15:35:02','');
INSERT INTO `items` VALUES (1349,'Tiberius, 14-37 a.d., gold aureus','2977.00','','ANACS (FINE-15)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1350,'Octavian 44-27 b.c., silver denarius','775.00','','ANACS (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1351,'Marc antony d.30bc, silver denarius  (pq!!)','1277.00','','NGC (CH.VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1352,'Nerva, 97 a.d., gold aureus  \"very rare\"','4700.00','','ANACS (VF-25) damaged',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1353,'Macedonia, philip iii, 323-317 b.c., gold stater','9700.00','','NGC (Mint State)',1,1,'2010-11-01 20:27:19','2010-12-03 13:24:31',NULL);
INSERT INTO `items` VALUES (1354,'Alexander the great 317-311 b.c., macedonia gold stater','2977.00','','ANACS (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1355,'Alexander iii, 336-323 b.c., gold stater','7700.00','','NGC (MS)',1,1,'2010-11-01 20:27:19','2010-12-03 13:19:13',NULL);
INSERT INTO `items` VALUES (1356,'Moesia, callatis gold stater, c.250 b.c., alexander iii type','3700.00','','NGC (AU/scr.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1358,'Spanish trail 1935 commem 50c','1477.00','Nice white surfaces.','NGC (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-03 00:55:10',NULL);
INSERT INTO `items` VALUES (1359,'1896-p  morgan silver dollar','127.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1360,'Mckinley 1916 gold commem dollar','770.00','','NGC (MS-64)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1361,'Nero-emperor ad 54-68 gold aureus','7700.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 14:02:23',NULL);
INSERT INTO `items` VALUES (1362,'Nero 54-68 a.d., silver denarius','677.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1363,'Trajan 98-117 a.d., gold aureus','2977.00','','ANACS (FINE-15)',1,1,'2010-11-01 20:27:19','2010-12-03 14:08:09',NULL);
INSERT INTO `items` VALUES (1364,'Sextus pompey, neptune 42 b.c., silver denarius','2700.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1365,'Gnaeus pompey 67-36 b.c., silver denarius','2700.00','','ANACS (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1366,'Ahenobarbus 41-40 b.c., silver denarius','977.00','','ANACS (VF-25)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1367,'Bunker Hill Silver co. (5-.999)','177.00','Minted at The Metal Arts Co., Rochester, NY. from silver from the BUNKER HILL COMPANY. The themes are NOAH KELLOGG and JACKASS, KELLOGG TUNNEL, LEAD SMELTER, ELECTROLYTIC ZINC PLANT and ELECTROLYTIC SILVER REFINERY. ','KELLOGG, IADAHO',1,1,'2010-11-01 20:27:19','2010-12-03 16:46:49',NULL);
INSERT INTO `items` VALUES (1368,'Gettysburg 1936-p commem 50c','457.00','','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1369,'Mckinley 1916 gold commem dollar','1277.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1370,'Pan-pacific  1915-s gold $2.50 commem','577.00','','NGC (XF details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1371,'1944 Silver 50-FRANCS  \"Belgian-Congo\"','477.00','Walking elephant.','NGC (MS-63)',1,0,'2010-11-01 20:27:19','2011-03-17 17:13:32','');
INSERT INTO `items` VALUES (1372,'1867-cnb copper 3-kopeks','77.00','','NGC (XF/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1373,'1932  copper-nickel 20-kopeks (ussr)','47.00','','NGC (MS-65)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1374,'1933 2-kopeks (better date)  ussr','37.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1375,'1895-cnb copper 1/2 kopek (denga)','15.00','','NGC (AU-58BN)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1376,'1891-cc $10 gold liberty  \"carson city\"','875.00','','NGC (AU-53)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1377,'1903-o barber half dollar','1377.00','','PCGS (MS-63)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1378,'Lucania, heraclea silver stater (after c.281 b.c.)','775.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1379,'Calabria, taras silver didrachm (after c.281 b.c.)','775.00','','NGC (CH.VF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1380,'Maine 1920 commem 50c','147.00','','NGC (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1381,'North India, kidarites vinayaditya,, el stater','247.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-06 15:45:06',NULL);
INSERT INTO `items` VALUES (1382,'N. India-Kidarites Vinayaditya-el Stater','187.00','Kidarites, Vinayaditya of Kashmir. Late 5th Century AD. King standing, in degenerated style. Ardoshko seated facing, also in degenerated style.','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-04 01:58:28',NULL);
INSERT INTO `items` VALUES (1383,'Marcus aurelius gold aureus (163-164ad)','2775.00','','ANACS (VF-20) ex-jewelry',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1384,'Jerusalem-bar kochba, silver zuz (134-135ad)','1277.00','','NGC (CHOICE UNC.)',1,1,'2010-11-01 20:27:19','2010-12-02 18:42:29',NULL);
INSERT INTO `items` VALUES (1385,'Trajan (98-117ad), silver denarius','137.00','','NGC (VERY FINE)',0,0,'2010-11-01 20:27:19','2011-03-17 18:43:49','');
INSERT INTO `items` VALUES (1386,'Hadrian (117-138ad) silver denarius','275.00','','ICG (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:56:19',NULL);
INSERT INTO `items` VALUES (1387,'Tiberius-pontif maxim (14-37ad) gold aureus/lugdunum mint','6700.00','','ICG (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:36:01',NULL);
INSERT INTO `items` VALUES (1388,'Augustus (2bc-14ad) gold aureus, lugdunum mint','7700.00','','ANACS (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-03 13:46:20',NULL);
INSERT INTO `items` VALUES (1389,'Pescennius niger, syria, denarius \"goddess of health\" (193ad)','1977.00','','ANACS (FINE-15)',1,1,'2010-11-01 20:27:19','2010-12-03 14:03:56',NULL);
INSERT INTO `items` VALUES (1390,'Bosporus-sauromates ii-commodus stater','2700.00','','ICG (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1391,'Bosphorus, rheskuporis ii/severus alexander, el stater','977.00','','ANACS (VF-35)',1,1,'2010-11-01 20:27:19','2010-12-03 13:48:41',NULL);
INSERT INTO `items` VALUES (1392,'Gordian i, silver denarius (238ad)','1277.00','','ANACS (FINE-15)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1393,'Gordian ii, silver denarius (ad238)','3477.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1394,'Carausius, pax, ae antoninianus (286-293ad)','777.00','','ANACS (AU-50)',1,1,'2010-11-01 20:27:19','2010-12-03 13:51:56',NULL);
INSERT INTO `items` VALUES (1395,'Carausius, ae antoninianus (286-293ad)','400.00','','ANACS (EF45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:50:58',NULL);
INSERT INTO `items` VALUES (1396,'Constans gold solidus (340-350ad)','4977.00','','ANACS (AU-50)',0,0,'2010-11-01 20:27:19','2011-02-17 19:27:52','');
INSERT INTO `items` VALUES (1397,'Honorius gold solidus (404-408ad)','1277.00','','ANACS (AU-55)',1,1,'2010-11-01 20:27:19','2010-12-03 13:57:54',NULL);
INSERT INTO `items` VALUES (1398,'Marcian gold solidus (450-457ad)','2477.00','','NGC (CHOICE UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1399,'Marcian (450-457ad) gold solidus','1477.00','','NGC (UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1400,'Philip iii of macedonia, gold stater (323-316bc)','3300.00','','ANACS (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1401,'Akragas in sicily, silver didrachm (510-480bc)','977.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-02 19:18:38',NULL);
INSERT INTO `items` VALUES (1402,'Metapontum in lucania (330-300bc) silver stater','877.00','','ICG (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1403,'Claudius-antonia , billon tetradrachm, (41-42ad)','377.00','','ANACS (FINE-15)',0,0,'2010-11-01 20:27:19','2011-01-10 20:58:14',NULL);
INSERT INTO `items` VALUES (1404,'Domitian-augusta (82-96ad) gold aureus','29700.00','','ANACS (EF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1405,'Julia titi (79-81ad) silver denarius','277.00','','ANACS (VG-8)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1406,'Crispina (177-183ad) gold aureus','17700.00','','ANACS (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1407,'Orbiana (225-227ad) silver denarius','775.00','','ANACS (EF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1408,'1865 (ah1277 yr4) copper 4-para','67.00','','NGC (MS64) RED & BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1409,'1765 sr silver taler (dav-2494)','377.00','','NGC (XF-40)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1410,'1979 1/4 gold pahlevi','277.00','','ICG (MS-63)',1,1,'2010-11-01 20:27:19','2010-12-06 16:08:49',NULL);
INSERT INTO `items` VALUES (1411,'1979 gold 1/4 pahlevi','197.00','','ICG (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1412,'(1412-20) silver denar (aquileia)','177.00','','NGC (XF-45)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1413,'1667-a silver luigin','347.00','','NGC (MS-62)',1,1,'2010-11-01 20:27:19','2011-02-25 21:25:39','');
INSERT INTO `items` VALUES (1414,'1928-r lira (good date)','77.00','','NGC (XF-45)',1,1,'2010-11-01 20:27:19','2010-12-06 16:44:06',NULL);
INSERT INTO `items` VALUES (1415,'Marcian (450-457ad) gold tremissis','477.00','','NGC (CH VF/scr.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1416,'Leo i, 457-474 ad, gold tremissis','477.00','','NGC (CH VF/wrinkled)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1417,'Zeno (474-491ad) gold tremissis','477.00','','NGC (VF/wrinkled)',1,1,'2010-11-01 20:27:19','2010-12-03 14:15:58',NULL);
INSERT INTO `items` VALUES (1418,'Balbinus silver denarius (april-june 238ad)','877.00','','ANACS (EF-45)',1,1,'2010-11-01 20:27:19','2010-12-03 13:47:55',NULL);
INSERT INTO `items` VALUES (1419,'Pupienus (june 238ad) silver antoninianus','877.00','','ANACS (VF-35)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1420,'Persia-sardeis in lydia (5th cent. bc) gold daric','3477.00','','NGC (CHOICE ABT. UNC.)',1,1,'2010-11-01 20:27:19','2010-12-03 13:09:36',NULL);
INSERT INTO `items` VALUES (1421,'Philip ii gold stater (359-336bc) lifetime','3377.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1422,'Aemilian (253ad) ar antoninianus','477.00','','ANACS (EF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 13:45:33',NULL);
INSERT INTO `items` VALUES (1423,'Helena (307-337ad) reduced follis','677.00','','NGC (UNC.)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1424,'Licinius i, 308-324ad, ae follis','67.00','','ICG (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-03 13:58:46',NULL);
INSERT INTO `items` VALUES (1425,'1895-s Morgan Dollar','11977.00','Very pleasing monster coin. Flashy white surfaces with a hint of yellow/gold color along the rim.','NGC (MS-63) DEEP PROOF-LI',1,1,'2010-11-01 20:27:19','2010-12-02 23:37:37',NULL);
INSERT INTO `items` VALUES (1426,'Julius caesar gold aureus (46bc)','10700.00','','ANACS (EF-45)',0,0,'2010-11-01 20:27:19','2011-03-09 22:15:16','');
INSERT INTO `items` VALUES (1427,'Julius caesar silver denarius (c.48/7 b.c.)','1700.00','','ICG (AU-50)',0,0,'2010-11-01 20:27:19','2011-02-12 15:07:30','');
INSERT INTO `items` VALUES (1428,'Aurelian 270-275ad, ae antoninianus','277.00','','ICG MS-61',1,1,'2010-11-01 20:27:19','2010-12-03 13:47:06',NULL);
INSERT INTO `items` VALUES (1429,'1783-MO FF 8-Reales  \"El Cazador\" shipwreck','167.00',' The first silver dollar. The EL CAZADOR (The Hunter) was a spanish brig of war ship loaded with newly minted treasure headed for the New World.','ANACS (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-03 16:36:10',NULL);
INSERT INTO `items` VALUES (1430,'1778-MO FF 8-Reales  \"El Cazador\"','175.00','EL CAZADOR (the hunter) sank with newly minted treasure heading for the New World.','NGC (Genuine)',1,1,'2010-11-01 20:27:19','2010-12-03 16:32:45',NULL);
INSERT INTO `items` VALUES (1431,'1782-MO FF Mexico Silver 2-Real','177.00','Pleasing surfaces with a hint of rustic accents.','NGC (XF-40)',1,1,'2010-11-01 20:27:19','2010-12-03 16:34:21',NULL);
INSERT INTO `items` VALUES (1433,'1836 r & w robinson-hard times token','47.00','','ICG (VF-20)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1434,'Shekel of tyre (126bc-55ad)','977.00','','NGC (XF)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1435,'Shekel of tyre (126bc-55ad)','877.00','','NGC (Very Fine)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1436,'1916 standing liberty 25c  (rare!!)','9177.00','','PCGS (Genuine)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1437,'1937 Antietam 50c Commem','797.00','Choice rustic accents with plenty of luster.','ANACS (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-03 01:01:51',NULL);
INSERT INTO `items` VALUES (1438,'1946 australia penny','377.00','','NGC (AU-58) BROWN',1,1,'2010-11-01 20:27:19','2010-12-03 14:40:49',NULL);
INSERT INTO `items` VALUES (1439,'1833 Capped Bust Half','3177.00','Overton-109. Lusterous golden/grey color.','PCGS (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-02 19:55:12',NULL);
INSERT INTO `items` VALUES (1440,'1966 SMS Kennedy 50c','237.00','Strong doubling. Gem surfaces.','NGC (MS-67)',1,1,'2010-11-01 20:27:19','2010-12-02 20:22:45',NULL);
INSERT INTO `items` VALUES (1441,'1848 Silver 2.5 FRANC  \"Small Head\"','1477.00','Lusterous mostly white surfaces.','NGC (MS-64)',1,1,'2010-11-01 20:27:19','2011-03-17 17:12:24','');
INSERT INTO `items` VALUES (1442,'1707 silver 1/2 thaler','1477.00','','PCGS (MS-64)',1,1,'2010-11-01 20:27:19','2010-12-03 14:43:41',NULL);
INSERT INTO `items` VALUES (1443,'Ah1347 silver 1/2 rupee  \"gorgeous color\"','137.00','','PCGS (MS-62)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1444,'1808-pts pj silver 4-reales','127.00','','NGC (FINE-15)',1,1,'2010-11-01 20:27:19','2011-03-16 14:45:38','');
INSERT INTO `items` VALUES (1445,'(1596-1605) 4-reales  \"cob style\"','397.00','','NGC (VF-35)',0,0,'2010-11-01 20:27:19','2011-03-17 17:15:12','');
INSERT INTO `items` VALUES (1446,'1934/3 silver three pence','187.00','','NGC (VF/details)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1447,'1931 australia 1/2 penny','177.00','','NGC (AU-55) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1448,'1939 1/2 penny  \"kangaroo reverse\"','177.00','','NGC (AU-50) BROWN',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1449,'1885 austria silver florin','47.00','','NGC (MS-64)',0,0,'2010-11-01 20:27:19','2011-03-17 17:09:26','');
INSERT INTO `items` VALUES (1450,'1882-s finland gold 10-markkaa','497.00','','NGC (MS-65)',0,0,'2010-11-01 20:27:19','2011-03-17 17:31:00','');
INSERT INTO `items` VALUES (1451,'1553m  silver teston  \"henry ii\"','877.00','','NGC (VF-20)',1,1,'2010-11-01 20:27:19','2010-12-06 14:07:27',NULL);
INSERT INTO `items` VALUES (1452,'1844  bavaria silver gulden','57.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1453,'1871 bavaria silver thaler','97.00','','NGC (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-06 14:50:33',NULL);
INSERT INTO `items` VALUES (1454,'1845 nassau silver gulden','97.00','','NGC (AU-50)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1455,'1815-ct  nassau-usingen silver taler','1200.00','','NGC (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-06 15:08:17',NULL);
INSERT INTO `items` VALUES (1456,'1818-a prussia silver taler','87.00','','NGC (VF-30)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1457,'1773 (1/24) 24-einen thaler','97.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1458,'1853 gold ducat','1597.00','','NGC (AU-58)',1,1,'2010-11-01 20:27:19','2010-12-06 14:56:40',NULL);
INSERT INTO `items` VALUES (1459,'1912 10-lepta','47.00','','NGC (AU-58)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1460,'1764 vii gold zecchino','1977.00','','NGC (MS-62)',1,1,'2010-11-01 20:27:19','2010-12-06 16:49:26',NULL);
INSERT INTO `items` VALUES (1461,'(1368-82) gold ducat','477.00','','NGC (AU-55)',1,0,'2010-11-01 20:27:19','2010-11-01 20:27:19',NULL);
INSERT INTO `items` VALUES (1462,'1900-mo m  gold peso','377.00','','NGC (MS-65)',1,1,'2010-11-01 20:27:19','2010-12-06 17:05:54',NULL);
INSERT INTO `items` VALUES (1463,'1769-mo mf  silver 4-reales','1347.00','','NGC (VF-30)',1,1,'2010-11-01 20:27:19','2010-12-06 17:01:06',NULL);
INSERT INTO `items` VALUES (1464,'1896 pgv silver 420-centavos','977.00','','NGC (XF-40)',1,1,'2010-11-01 20:27:19','2010-12-06 17:27:30',NULL);
INSERT INTO `items` VALUES (1465,'1513-1521 Gold Zecch','3700.00','Rhodes, Knights of St. John of Jerusalem. Ruler kneeling before St. John. Christ standing. FABRIZIO DEL CARRETO','ICG (AU-53)',1,1,'2010-11-01 20:27:19','2010-12-04 01:50:15',NULL);
INSERT INTO `items` VALUES (1466,'1590 12-sol  geneva','377.00','','NGC (AU-58) BROWN',1,1,'2010-11-01 20:27:19','2010-12-06 18:20:25',NULL);
INSERT INTO `items` VALUES (1467,'1612 silver dicken  \"zug\"','477.00','','NGC (XF-40)',1,1,'2010-11-01 20:27:19','2010-12-06 18:22:41',NULL);
INSERT INTO `items` VALUES (1468,'1842 audubon \"woodchuck\" print','6500.00','','Some ID',1,1,'2010-11-01 20:27:19','2010-12-02 18:34:36',NULL);
INSERT INTO `items` VALUES (1470,'1876-P Liberty Seated 50c','5577.00','Superb iridescent color. Rustic blue, red, gold color.','NGC (MS-65)',1,1,'2010-12-02 19:58:31','2010-12-02 19:58:31',NULL);
INSERT INTO `items` VALUES (1471,'1925 Lexington 50c Commem','577.00','Lustrous surfaces.','PCGS (MS-65)',1,1,'2010-12-03 00:34:22','2010-12-03 00:34:22',NULL);
INSERT INTO `items` VALUES (1472,'1920 Pilgrim 50c Commem','337.00','Older green PCGS label. Pleasing white surfaces.','PCGS (MS-65)',1,1,'2010-12-03 00:43:31','2010-12-03 00:43:31',NULL);
INSERT INTO `items` VALUES (1474,'1793NR JJ COLOMBIA Gold 8-Escudo','1877.00','Even yellow/gold surfaces.','NGC (XF-45)',1,1,'2010-12-03 16:37:44','2011-03-08 17:30:47','');
INSERT INTO `items` VALUES (1475,'1790-PTS PR Bolivia GOLD 8-Escudo','1977.00','Lustrous. Scratch along the neck line.','NGC (XF-45) ',0,0,'2010-12-03 16:40:56','2011-03-08 17:32:17','');
INSERT INTO `items` VALUES (1485,'1913 Silver 2-SHILLINGS (NGC XF details)','877.00','XF details, surface hairlines. Florin or Two Shillings.','Item ID',1,1,'2011-01-27 22:03:15','2011-03-17 16:02:19','');
INSERT INTO `items` VALUES (1486,'1882-O/S Morgan Dollar (PCGS AU-53) ','197.00','Vam-4 O/S, recessed. TOP-100. Light grey surfaces.','Item ID',1,1,'2011-02-10 16:45:50','2011-02-10 16:45:50','');
INSERT INTO `items` VALUES (1487,'1770G P Silver 8-Reales NGC VF-35','1177.00','Great looking surfaces.','Item ID',0,0,'2011-02-25 21:37:57','2011-03-17 18:29:21','');
INSERT INTO `items` VALUES (1488,'1861 Silver GULDEN (NGC MS62)','147.00','Very lusterous surfaces.','Item ID',1,1,'2011-02-25 22:39:42','2011-02-25 22:39:42','');
INSERT INTO `items` VALUES (1489,'1594 Gold 1-DUCAT (NGC AU-50)','697.00','Even gold surfaces.','Item ID',1,1,'2011-02-25 22:41:42','2011-02-25 22:41:42','');
INSERT INTO `items` VALUES (1490,'1778-PJ  Gold 1/2 ESCUDO Spain','227.00','Yellow/gold surfaces. ','ICG (VF-20)',1,1,'2011-03-16 13:48:53','2011-03-16 13:48:53','');
INSERT INTO `items` VALUES (1491,'1787-Mo FM  1/2 REAL Mexico','87.00','Deep sharp details.','NGC (VF-30)',1,1,'2011-03-16 14:24:10','2011-03-16 14:42:01','');
INSERT INTO `items` VALUES (1492,'1793-NG M Silver 2-REAL GUATEMALA','67.00','Pleasing surfaces. Struck off-center.','NGC (VG-8)',1,1,'2011-03-16 14:26:27','2011-03-16 14:26:27','');
INSERT INTO `items` VALUES (1493,'1796-NG M Silver REAL Guatemala','87.00','Mix of lighter to darker surface areas. Struck off-center.','NGC (VF-20)',1,1,'2011-03-16 14:31:18','2011-03-16 14:37:23','');
INSERT INTO `items` VALUES (1494,'1807-Mo TH Silver 1/2 REAL  Mexico','47.00','Even silver/grey surfaces.','NGC (VF-25)',1,1,'2011-03-16 14:33:45','2011-03-16 14:33:45','');
INSERT INTO `items` VALUES (1496,'1808 Classic Head LARGE CENT','57.00','Deep chestnut color. Reverse die cracks. Planchet defect on bust.','ICG (GOOD-6)',1,1,'2011-03-16 15:36:47','2011-03-16 15:36:47','');
INSERT INTO `items` VALUES (1497,'2004 LEWIS & CLARK Bank Set','3.75','CENT, PEACE & KEELBOAT NICKEL, DIME, HALF DOLLAR, SACAGAWEA DOLLAR. The half and dollar bid higher than double by themselves.','UNCIRCULATED',1,1,'2011-03-16 15:46:35','2011-03-16 15:46:35','');
INSERT INTO `items` VALUES (1498,'c.1807 GEORGE WASHINGTON Medal by Sansom','1477.00','Made of Bronze. One of the prettiest medals of this era. B-71A AE. 40mm','NGC (MS-62) BROWN',1,1,'2011-03-16 15:58:53','2011-03-16 15:58:53','');
INSERT INTO `items` VALUES (1499,'c.1825-1860 WASHINGTON SUCCESS Silvered Token','6700.00','Undated. Large plain edge with perfect full silvering. Very original surfaces. 24.5mm','NGC (MS-61)',1,1,'2011-03-16 16:03:18','2011-03-16 16:06:21','');
INSERT INTO `items` VALUES (1500,'c.1807 GEORGE WASHINGTON Medal by Sansom','1477.00','Made of Bronze. One of the prettiest medals of this era. B-71A AE. 40mm','NGC (MS-62) BROWN',1,1,'2011-03-16 20:34:16','2011-03-16 20:34:16','');
INSERT INTO `items` VALUES (1501,'1866-A Silver TALER','147.00','Lusterous white surfaces.','NGC (AU-58)',1,1,'2011-03-17 16:05:04','2011-03-17 16:05:04','');
INSERT INTO `items` VALUES (1502,'1832-PTS JL Silver 8-SOLES','97.00','Pleasing rich original surfaces. Reeded edge. ','NGC (VF-35)',1,1,'2011-03-17 16:10:01','2011-03-17 16:10:01','');
INSERT INTO `items` VALUES (1503,'1921 Silver Quarter 25c','297.00','Bright untoned surfaces.','NGC (XF-45)',1,1,'2011-03-17 16:16:49','2011-03-17 16:16:49','');
INSERT INTO `items` VALUES (1504,'1929 Silver DIME 10c','97.00','Lusterous white surfaces.','NGC (MS-63)',1,1,'2011-03-17 16:18:40','2011-03-17 16:18:40','');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_elems`
--

DROP TABLE IF EXISTS `link_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_id` int(11) DEFAULT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `img_src` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_image` tinyint(1) DEFAULT NULL,
  `image_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_file_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_file_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_file_file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `link_list_elem_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_elems`
--

LOCK TABLES `link_elems` WRITE;
/*!40000 ALTER TABLE `link_elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_list_elems`
--

DROP TABLE IF EXISTS `link_list_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_list_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_list_elems`
--

LOCK TABLES `link_list_elems` WRITE;
/*!40000 ALTER TABLE `link_list_elems` DISABLE KEYS */;
/*!40000 ALTER TABLE `link_list_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodes`
--

DROP TABLE IF EXISTS `nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shortcut` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `displayed` tinyint(1) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `page_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodes`
--

LOCK TABLES `nodes` WRITE;
/*!40000 ALTER TABLE `nodes` DISABLE KEYS */;
INSERT INTO `nodes` VALUES (1,'Home','Home','Home',NULL,1,1,'DynamicPage',NULL,NULL,0,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `nodes` VALUES (2,'Blogs','Blogs','Blogs',1,0,NULL,NULL,NULL,NULL,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `nodes` VALUES (3,'Calendars','Calendars','Calendars',1,0,NULL,NULL,NULL,NULL,NULL,'2010-10-30 03:30:29','2010-10-30 03:30:29');
INSERT INTO `nodes` VALUES (5,'Archives','Archives','Archives',1,1,3,'DynamicPage',NULL,NULL,1,'2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `nodes` VALUES (6,'Contact Us','Contact Us','Contact-Us',1,1,NULL,NULL,'questions','new',485,'2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `nodes` VALUES (7,'About Us','About Us','About-Us',1,1,4,'DynamicPage',NULL,NULL,2,'2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `nodes` VALUES (9,'Administrative','Administrative','admin',1,0,NULL,NULL,NULL,NULL,NULL,'2010-10-30 03:30:30','2010-10-30 03:30:30');
INSERT INTO `nodes` VALUES (10,'Inventory','Inventory','inventory',1,1,1,'Category',NULL,NULL,4,'2010-10-30 03:30:30','2010-12-24 02:05:48');
INSERT INTO `nodes` VALUES (11,'Special Offers','Special Offers','special-offers',10,1,2,'Category',NULL,NULL,5,'2010-10-30 03:30:30','2010-12-15 22:01:45');
INSERT INTO `nodes` VALUES (12,'Ancient Coinage','Ancient Coinage','ancient-coinage',10,1,3,'Category',NULL,NULL,7,'2010-10-30 03:30:30','2010-12-15 16:01:57');
INSERT INTO `nodes` VALUES (13,'Error Coins','Error Coins','error-coins',10,1,4,'Category',NULL,NULL,476,'2010-10-30 03:30:30','2010-12-15 16:01:13');
INSERT INTO `nodes` VALUES (14,'Foreign Coins','Foreign Coins','foreign-coins',10,1,5,'Category',NULL,NULL,150,'2010-10-30 03:30:30','2010-12-14 19:46:36');
INSERT INTO `nodes` VALUES (15,'Bullion Related Items','Bullion Related Items','bullion-related-items',10,1,6,'Category',NULL,NULL,484,'2010-10-30 03:30:30','2010-12-14 19:55:19');
INSERT INTO `nodes` VALUES (16,'Coin Jewelry','Coin Jewelry','coin-jewelry',10,1,7,'Category',NULL,NULL,478,'2010-10-30 03:30:30','2010-12-14 19:48:57');
INSERT INTO `nodes` VALUES (17,'Medieval Coinage','Medieval Coinage','medieval-coinage',10,1,8,'Category',NULL,NULL,137,'2010-10-30 03:30:30','2010-12-15 16:00:44');
INSERT INTO `nodes` VALUES (18,'Shipwreck & Artifacts','Shipwreck & Artifacts','shipwreck-artifacts',10,1,9,'Category',NULL,NULL,473,'2010-10-30 03:30:30','2011-01-15 15:43:47');
INSERT INTO `nodes` VALUES (20,'U.S. Coinage','U.S. Coinage','u-s-coinage',10,1,11,'Category',NULL,NULL,382,'2010-10-30 03:30:30','2010-12-02 19:09:08');
INSERT INTO `nodes` VALUES (21,'U.S. Proof and Mint Sets','U.S. Proof and Mint Sets','u-s-proof-and-mint-sets',10,1,12,'Category',NULL,NULL,471,'2010-10-30 03:30:30','2010-12-02 19:04:01');
INSERT INTO `nodes` VALUES (22,'U.S. Territorial Gold','U.S. Territorial Gold','u-s-territorial-gold',10,1,13,'Category',NULL,NULL,460,'2010-10-30 03:30:30','2010-12-02 18:43:15');
INSERT INTO `nodes` VALUES (23,'U.S. Tokens','U.S. Tokens','u-s-tokens',10,1,14,'Category',NULL,NULL,465,'2010-10-30 03:30:30','2010-12-02 18:41:18');
INSERT INTO `nodes` VALUES (24,'U.S. Treasures','U.S. Treasures','u-s-treasures',10,1,15,'Category',NULL,NULL,463,'2010-10-30 03:30:30','2010-12-02 18:22:20');
INSERT INTO `nodes` VALUES (25,'U.S. Medals and Awards','U.S. Medals and Awards','u-s-medals-and-awards',10,1,16,'Category',NULL,NULL,468,'2010-10-30 03:30:30','2010-12-02 18:19:29');
INSERT INTO `nodes` VALUES (26,'Biblical','Biblical','biblical',12,1,17,'Category',NULL,NULL,8,'2010-10-30 03:30:30','2010-12-03 14:29:53');
INSERT INTO `nodes` VALUES (27,'Byzantine','Byzantine','byzantine',12,1,18,'Category',NULL,NULL,28,'2010-10-30 03:30:30','2010-12-03 14:30:19');
INSERT INTO `nodes` VALUES (28,'Greek','Greek','greek',12,1,19,'Category',NULL,NULL,32,'2010-10-30 03:30:30','2010-12-03 14:30:40');
INSERT INTO `nodes` VALUES (29,'Jewish Coinage','Jewish Coinage','jewish-coinage',12,1,20,'Category',NULL,NULL,71,'2010-10-30 03:30:30','2010-12-03 14:31:45');
INSERT INTO `nodes` VALUES (30,'Parthia','Parthia','parthia',12,1,21,'Category',NULL,NULL,73,'2010-10-30 03:30:30','2010-12-03 14:32:03');
INSERT INTO `nodes` VALUES (31,'Roman Imperatoral','Roman Imperatoral','roman-imperatoral',12,1,22,'Category',NULL,NULL,74,'2010-10-30 03:30:30','2010-12-03 14:32:25');
INSERT INTO `nodes` VALUES (32,'Roman Imperial','Roman Imperial','roman-imperial',12,1,23,'Category',NULL,NULL,82,'2010-10-30 03:30:30','2010-12-03 14:32:43');
INSERT INTO `nodes` VALUES (33,'Roman Republic','Roman Republic','roman-republic',12,1,24,'Category',NULL,NULL,129,'2010-10-30 03:30:30','2010-12-03 14:33:03');
INSERT INTO `nodes` VALUES (34,'Afghanistan','Afghanistan','afghanistan',14,1,25,'Category',NULL,NULL,151,'2010-10-30 03:30:30','2010-11-09 17:07:51');
INSERT INTO `nodes` VALUES (35,'Argentina','Argentina','argentina',14,1,26,'Category',NULL,NULL,156,'2010-10-30 03:30:30','2011-01-03 19:38:58');
INSERT INTO `nodes` VALUES (36,'Australia','Australia','australia',14,1,27,'Category',NULL,NULL,157,'2010-10-30 03:30:30','2010-12-03 14:38:57');
INSERT INTO `nodes` VALUES (37,'Austro-Hungarian Lands and Cities','Austro-Hungarian Lands and Cities','austro-hungarian-lands-and-cities',14,1,28,'Category',NULL,NULL,161,'2010-10-30 03:30:30','2010-12-03 14:41:20');
INSERT INTO `nodes` VALUES (38,'Belgium','Belgium','belgium',14,1,29,'Category',NULL,NULL,166,'2010-10-30 03:30:30','2010-12-03 14:45:29');
INSERT INTO `nodes` VALUES (39,'Brazil','Brazil','brazil',14,1,30,'Category',NULL,NULL,170,'2010-10-30 03:30:30','2010-12-03 14:48:42');
INSERT INTO `nodes` VALUES (40,'Canada','Canada','canada',14,1,31,'Category',NULL,NULL,173,'2010-10-30 03:30:30','2010-12-03 14:55:44');
INSERT INTO `nodes` VALUES (41,'China-Empire','China-Empire','china-empire',14,1,32,'Category',NULL,NULL,177,'2010-10-30 03:30:30','2010-12-03 14:56:08');
INSERT INTO `nodes` VALUES (42,'Colombia','Colombia','colombia',14,1,33,'Category',NULL,NULL,178,'2010-10-30 03:30:30','2010-12-03 14:56:26');
INSERT INTO `nodes` VALUES (43,'Cuba','Cuba','cuba',14,1,34,'Category',NULL,NULL,179,'2010-10-30 03:30:30','2011-01-03 19:39:09');
INSERT INTO `nodes` VALUES (44,'Denmark','Denmark','denmark',14,1,35,'Category',NULL,NULL,180,'2010-10-30 03:30:30','2010-12-06 13:46:45');
INSERT INTO `nodes` VALUES (45,'Dominican Republic','Dominican Republic','dominican-republic',14,1,36,'Category',NULL,NULL,183,'2010-10-30 03:30:30','2011-01-03 19:39:13');
INSERT INTO `nodes` VALUES (46,'East Africa','East Africa','east-africa',14,1,37,'Category',NULL,NULL,184,'2010-10-30 03:30:30','2010-12-06 13:52:03');
INSERT INTO `nodes` VALUES (47,'Egypt','Egypt','egypt',14,1,38,'Category',NULL,NULL,185,'2010-10-30 03:30:30','2010-12-06 13:53:35');
INSERT INTO `nodes` VALUES (48,'Estonia','Estonia','estonia',14,1,39,'Category',NULL,NULL,192,'2010-10-30 03:30:30','2010-12-06 14:03:01');
INSERT INTO `nodes` VALUES (49,'France','France','france',14,1,40,'Category',NULL,NULL,194,'2010-10-30 03:30:30','2010-12-06 14:06:01');
INSERT INTO `nodes` VALUES (50,'French Indo-China','French Indo-China','french-indo-china',14,1,41,'Category',NULL,NULL,197,'2010-10-30 03:30:30','2011-01-03 19:39:20');
INSERT INTO `nodes` VALUES (51,'Germany','Germany','germany',14,1,42,'Category',NULL,NULL,198,'2010-10-30 03:30:30','2010-12-06 14:43:58');
INSERT INTO `nodes` VALUES (52,'Great Britain','Great Britain','great-britain',14,1,43,'Category',NULL,NULL,247,'2010-10-30 03:30:30','2010-12-06 15:31:59');
INSERT INTO `nodes` VALUES (53,'Greece-Modern','Greece-Modern','greece-modern',14,1,44,'Category',NULL,NULL,253,'2010-10-30 03:30:30','2010-12-06 15:37:27');
INSERT INTO `nodes` VALUES (54,'Guatemala','Guatemala','guatemala',14,1,45,'Category',NULL,NULL,254,'2010-10-30 03:30:30','2010-12-06 15:37:51');
INSERT INTO `nodes` VALUES (55,'Haiti','Haiti','haiti',14,1,46,'Category',NULL,NULL,255,'2010-10-30 03:30:30','2010-12-06 15:38:20');
INSERT INTO `nodes` VALUES (56,'Honduras','Honduras','honduras',14,1,47,'Category',NULL,NULL,256,'2010-10-30 03:30:30','2011-01-03 19:39:29');
INSERT INTO `nodes` VALUES (57,'Hungary','Hungary','hungary',14,1,48,'Category',NULL,NULL,257,'2010-10-30 03:30:30','2011-01-03 19:39:32');
INSERT INTO `nodes` VALUES (58,'India','India','india',14,1,49,'Category',NULL,NULL,258,'2010-10-30 03:30:30','2010-12-06 15:40:26');
INSERT INTO `nodes` VALUES (59,'Iran-Persia','Iran-Persia','iran-persia',14,1,50,'Category',NULL,NULL,261,'2010-10-30 03:30:30','2010-12-06 15:41:48');
INSERT INTO `nodes` VALUES (60,'Ireland','Ireland','ireland',14,1,51,'Category',NULL,NULL,277,'2010-10-30 03:30:30','2010-12-06 16:18:37');
INSERT INTO `nodes` VALUES (61,'Israel','Israel','israel',14,1,52,'Category',NULL,NULL,281,'2010-10-30 03:30:30','2011-01-03 19:39:40');
INSERT INTO `nodes` VALUES (62,'Italy','Italy','italy',14,1,53,'Category',NULL,NULL,282,'2010-10-30 03:30:30','2010-12-06 16:31:20');
INSERT INTO `nodes` VALUES (63,'Japan','Japan','japan',14,1,54,'Category',NULL,NULL,299,'2010-10-30 03:30:30','2010-12-06 16:52:37');
INSERT INTO `nodes` VALUES (64,'Liberia','Liberia','liberia',14,1,55,'Category',NULL,NULL,305,'2010-10-30 03:30:30','2010-12-06 16:59:33');
INSERT INTO `nodes` VALUES (65,'Malaya','Malaya','malaya',14,1,56,'Category',NULL,NULL,307,'2010-10-30 03:30:30','2011-01-03 19:39:47');
INSERT INTO `nodes` VALUES (66,'Mexico','Mexico','mexico',14,1,57,'Category',NULL,NULL,308,'2010-10-30 03:30:30','2010-12-06 16:59:58');
INSERT INTO `nodes` VALUES (67,'Netherlands','Netherlands','netherlands',14,1,58,'Category',NULL,NULL,316,'2010-10-30 03:30:31','2010-12-06 17:10:21');
INSERT INTO `nodes` VALUES (68,'Norway','Norway','norway',14,1,59,'Category',NULL,NULL,320,'2010-10-30 03:30:31','2010-12-06 17:12:22');
INSERT INTO `nodes` VALUES (69,'Ottoman Empire','Ottoman Empire','ottoman-empire',14,1,60,'Category',NULL,NULL,321,'2010-10-30 03:30:31','2010-12-06 17:12:55');
INSERT INTO `nodes` VALUES (70,'Panama','Panama','panama',14,1,61,'Category',NULL,NULL,323,'2010-10-30 03:30:31','2011-01-03 19:39:58');
INSERT INTO `nodes` VALUES (71,'Peru','Peru','peru',14,1,62,'Category',NULL,NULL,324,'2010-10-30 03:30:31','2010-12-06 17:14:17');
INSERT INTO `nodes` VALUES (72,'Portugal and Colonies','Portugal and Colonies','portugal-and-colonies',14,1,63,'Category',NULL,NULL,327,'2010-10-30 03:30:31','2010-12-06 17:16:30');
INSERT INTO `nodes` VALUES (73,'Puerto Rico','Puerto Rico','puerto-rico',14,1,64,'Category',NULL,NULL,342,'2010-10-30 03:30:31','2010-12-06 17:26:42');
INSERT INTO `nodes` VALUES (74,'Romania','Romania','romania',14,1,65,'Category',NULL,NULL,345,'2010-10-30 03:30:31','2010-12-06 17:28:56');
INSERT INTO `nodes` VALUES (75,'Russia','Russia','russia',14,1,66,'Category',NULL,NULL,346,'2010-10-30 03:30:31','2010-12-06 17:29:29');
INSERT INTO `nodes` VALUES (76,'Sarawak','Sarawak','sarawak',14,1,67,'Category',NULL,NULL,347,'2010-10-30 03:30:31','2011-01-03 19:40:10');
INSERT INTO `nodes` VALUES (77,'Saudi Arabia','Saudi Arabia','saudi-arabia',14,1,68,'Category',NULL,NULL,348,'2010-10-30 03:30:31','2010-12-06 17:30:08');
INSERT INTO `nodes` VALUES (78,'South Africa','South Africa','south-africa',14,1,69,'Category',NULL,NULL,351,'2010-10-30 03:30:31','2010-12-06 17:32:31');
INSERT INTO `nodes` VALUES (79,'Spain, the Homeland','Spain, the Homeland','spain-the-homeland',14,1,70,'Category',NULL,NULL,352,'2010-10-30 03:30:31','2010-12-06 17:33:02');
INSERT INTO `nodes` VALUES (80,'Straits Settlements','Straits Settlements','straits-settlements',14,1,71,'Category',NULL,NULL,355,'2010-10-30 03:30:31','2011-01-03 20:40:51');
INSERT INTO `nodes` VALUES (81,'Sweden','Sweden','sweden',14,1,72,'Category',NULL,NULL,358,'2010-10-30 03:30:31','2010-12-06 17:35:47');
INSERT INTO `nodes` VALUES (82,'Switzerland','Switzerland','switzerland',14,1,73,'Category',NULL,NULL,369,'2010-10-30 03:30:31','2010-12-06 18:17:56');
INSERT INTO `nodes` VALUES (83,'Medieval England','Medieval England','medieval-england',17,1,74,'Category',NULL,NULL,138,'2010-10-30 03:30:31','2010-12-03 22:49:54');
INSERT INTO `nodes` VALUES (84,'Medieval Ireland','Medieval Ireland','medieval-ireland',17,1,75,'Category',NULL,NULL,141,'2010-10-30 03:30:31','2010-12-03 22:50:20');
INSERT INTO `nodes` VALUES (85,'Medieval Scotland','Medieval Scotland','medieval-scotland',17,1,76,'Category',NULL,NULL,143,'2010-10-30 03:30:31','2011-01-03 19:40:28');
INSERT INTO `nodes` VALUES (86,'Medieval Anglo-Gallic','Medieval Anglo-Gallic','medieval-anglo-gallic',17,1,77,'Category',NULL,NULL,144,'2010-10-30 03:30:31','2011-01-03 19:40:30');
INSERT INTO `nodes` VALUES (87,'California','California','california',22,1,78,'Category',NULL,NULL,461,'2010-10-30 03:30:31','2010-12-02 18:44:15');
INSERT INTO `nodes` VALUES (89,'Alexander the Great and Family','Alexander the Great and Family','alexander-the-great-and-family',28,1,80,'Category',NULL,NULL,33,'2010-10-30 03:30:31','2010-12-03 14:30:59');
INSERT INTO `nodes` VALUES (90,'Egypt of the Greek Ptolemies','Egypt of the Greek Ptolemies','egypt-of-the-greek-ptolemies',28,1,81,'Category',NULL,NULL,45,'2010-10-30 03:30:31','2010-10-30 03:30:31');
INSERT INTO `nodes` VALUES (91,'Salzburg','Salzburg','salzburg',37,1,82,'Category',NULL,NULL,162,'2010-10-30 03:30:31','2010-12-03 14:42:00');
INSERT INTO `nodes` VALUES (92,'French Colonies','French Colonies','french-colonies',49,1,83,'Category',NULL,NULL,195,'2010-10-30 03:30:31','2011-01-03 19:40:41');
INSERT INTO `nodes` VALUES (93,'Augsburg','Augsburg','augsburg',51,1,84,'Category',NULL,NULL,199,'2010-10-30 03:30:31','2010-12-06 15:21:13');
INSERT INTO `nodes` VALUES (94,'Bavaria','Bavaria','bavaria',51,1,85,'Category',NULL,NULL,200,'2010-10-30 03:30:31','2010-12-06 15:21:51');
INSERT INTO `nodes` VALUES (95,'Brandenburg-Bayreuth','Brandenburg-Bayreuth','brandenburg-bayreuth',51,1,86,'Category',NULL,NULL,205,'2010-10-30 03:30:31','2010-12-06 14:50:53');
INSERT INTO `nodes` VALUES (96,'Bruns/Lune/Calen/Hann','Bruns/Lune/Calen/Hann','bruns-lune-calen-hann',51,1,87,'Category',NULL,NULL,206,'2010-10-30 03:30:31','2010-12-06 15:22:32');
INSERT INTO `nodes` VALUES (97,'Brunswick Wolfenbuttel','Brunswick Wolfenbuttel','brunswick-wolfenbuttel',51,1,88,'Category',NULL,NULL,208,'2010-10-30 03:30:31','2010-12-06 14:52:32');
INSERT INTO `nodes` VALUES (98,'Brunswick-Luneburg','Brunswick-Luneburg','brunswick-luneburg',51,1,89,'Category',NULL,NULL,211,'2010-10-30 03:30:31','2011-01-03 19:40:58');
INSERT INTO `nodes` VALUES (99,'Frankfurt','Frankfurt','frankfurt',51,1,90,'Category',NULL,NULL,212,'2010-10-30 03:30:31','2010-12-06 15:23:20');
INSERT INTO `nodes` VALUES (100,'Hamburg','Hamburg','hamburg',51,1,91,'Category',NULL,NULL,216,'2010-10-30 03:30:31','2010-12-06 15:23:49');
INSERT INTO `nodes` VALUES (101,'Hesse-Cassel','Hesse-Cassel','hesse-cassel',51,1,92,'Category',NULL,NULL,218,'2010-10-30 03:30:31','2010-12-06 14:59:49');
INSERT INTO `nodes` VALUES (102,'Hesse-Homburg','Hesse-Homburg','hesse-homburg',51,1,93,'Category',NULL,NULL,220,'2010-10-30 03:30:31','2010-12-06 15:02:15');
INSERT INTO `nodes` VALUES (103,'Jever','Jever','jever',51,1,94,'Category',NULL,NULL,222,'2010-10-30 03:30:31','2010-12-06 15:04:25');
INSERT INTO `nodes` VALUES (104,'Julich-Berg','Julich-Berg','julich-berg',51,1,95,'Category',NULL,NULL,224,'2010-10-30 03:30:31','2010-12-06 15:05:46');
INSERT INTO `nodes` VALUES (105,'Montfort','Montfort','montfort',51,1,96,'Category',NULL,NULL,225,'2010-10-30 03:30:31','2010-12-06 15:06:18');
INSERT INTO `nodes` VALUES (106,'Nurnberg','Nurnberg','nurnberg',51,1,97,'Category',NULL,NULL,228,'2010-10-30 03:30:31','2010-12-06 15:06:48');
INSERT INTO `nodes` VALUES (107,'Prussia','Prussia','prussia',51,1,98,'Category',NULL,NULL,229,'2010-10-30 03:30:31','2010-12-06 15:10:21');
INSERT INTO `nodes` VALUES (108,'Regensburg','Regensburg','regensburg',51,1,99,'Category',NULL,NULL,234,'2010-10-30 03:30:31','2011-01-03 19:41:31');
INSERT INTO `nodes` VALUES (109,'Saxe-Meiningen','Saxe-Meiningen','saxe-meiningen',51,1,100,'Category',NULL,NULL,235,'2010-10-30 03:30:31','2010-12-06 15:16:34');
INSERT INTO `nodes` VALUES (110,'Saxony','Saxony','saxony',51,1,101,'Category',NULL,NULL,237,'2010-10-30 03:30:31','2010-12-06 15:17:58');
INSERT INTO `nodes` VALUES (111,'Westphalia','Westphalia','westphalia',51,1,102,'Category',NULL,NULL,239,'2010-10-30 03:30:31','2010-12-06 15:19:41');
INSERT INTO `nodes` VALUES (112,'Wurttemberg','Wurttemberg','wurttemberg',51,1,103,'Category',NULL,NULL,240,'2010-10-30 03:30:31','2011-01-03 19:41:44');
INSERT INTO `nodes` VALUES (113,'Florence','Florence','florence',62,1,104,'Category',NULL,NULL,283,'2010-10-30 03:30:31','2010-12-06 16:44:27');
INSERT INTO `nodes` VALUES (114,'Fosdinovo','Fosdinovo','fosdinovo',62,1,105,'Category',NULL,NULL,285,'2010-10-30 03:30:31','2010-12-06 16:45:59');
INSERT INTO `nodes` VALUES (115,'Papal States','Papal States','papal-states',62,1,106,'Category',NULL,NULL,288,'2010-10-30 03:30:31','2010-12-06 16:48:25');
INSERT INTO `nodes` VALUES (116,'Sardinia','Sardinia','sardinia',62,1,107,'Category',NULL,NULL,291,'2010-10-30 03:30:31','2010-12-06 16:50:50');
INSERT INTO `nodes` VALUES (117,'Venice','Venice','venice',62,1,108,'Category',NULL,NULL,292,'2010-10-30 03:30:31','2010-12-06 16:51:20');
INSERT INTO `nodes` VALUES (118,'Angola','Angola','angola',72,1,109,'Category',NULL,NULL,328,'2010-10-30 03:30:31','2011-01-03 19:52:36');
INSERT INTO `nodes` VALUES (119,'Cape Verde Islands','Cape Verde Islands','cape-verde-islands',72,1,110,'Category',NULL,NULL,329,'2010-10-30 03:30:31','2011-01-03 19:58:35');
INSERT INTO `nodes` VALUES (120,'Macao','Macao','macao',72,1,111,'Category',NULL,NULL,330,'2010-10-30 03:30:31','2011-01-03 20:03:01');
INSERT INTO `nodes` VALUES (121,'Mozambique','Mozambique','mozambique',72,1,112,'Category',NULL,NULL,331,'2010-10-30 03:30:31','2011-01-03 20:07:26');
INSERT INTO `nodes` VALUES (122,'Portugal, the Homeland','Portugal, the Homeland','portugal-the-homeland',72,1,113,'Category',NULL,NULL,332,'2010-10-30 03:30:31','2010-12-06 17:17:27');
INSERT INTO `nodes` VALUES (123,'Portuguese Guinea','Portuguese Guinea','portuguese-guinea',72,1,114,'Category',NULL,NULL,336,'2010-10-30 03:30:31','2011-01-03 20:16:07');
INSERT INTO `nodes` VALUES (124,'Portuguese India','Portuguese India','portuguese-india',72,1,115,'Category',NULL,NULL,337,'2010-10-30 03:30:31','2010-12-06 17:23:45');
INSERT INTO `nodes` VALUES (125,'Saint Thomas and Prince Islands','Saint Thomas and Prince Islands','saint-thomas-and-prince-islands',72,1,116,'Category',NULL,NULL,339,'2010-10-30 03:30:31','2010-12-06 17:24:51');
INSERT INTO `nodes` VALUES (126,'Timor','Timor','timor',72,1,117,'Category',NULL,NULL,341,'2010-10-30 03:30:31','2010-10-30 03:30:32');
INSERT INTO `nodes` VALUES (127,'East India Company','East India Company','east-india-company',80,1,118,'Category',NULL,NULL,356,'2010-10-30 03:30:32','2010-12-06 17:37:26');
INSERT INTO `nodes` VALUES (140,'14-37AD Silver \"Tribute Penny\"','14-37AD Silver \"Tribute Penny\"','14-37ad-silver-tribute-penny',26,1,390,'Item',NULL,NULL,10,'2010-11-02 13:21:05','2011-01-03 21:27:07');
INSERT INTO `nodes` VALUES (144,'1795 flowing hair half dollar, overton 130, r-4, possibly finest known','1795 flowing hair half dollar, overton 130, r-4, possibly finest known','1795-flowing-hair-half-dollar-overton-130-r-4-possibly-finest-known-0',11,0,23,'Item',NULL,NULL,NULL,'2010-11-16 15:02:07','2010-12-21 19:41:50');
INSERT INTO `nodes` VALUES (173,'-49 bc silver denarius of julius caesar','-49 bc silver denarius of julius caesar','49-bc-silver-denarius-of-julius-caesar-0',32,1,6,'Item',NULL,NULL,83,'2010-12-01 19:38:59','2010-12-01 19:40:02');
INSERT INTO `nodes` VALUES (188,'1861 California Civil War Patriotic','1861 California Civil War Patriotic','1861-california-civil-war-patriotic-0',23,1,505,'Item',NULL,NULL,466,'2010-12-02 18:14:05','2010-12-02 18:16:25');
INSERT INTO `nodes` VALUES (189,'1635 to 1668 silver 1/4 ducat medal of hamburg','1635 to 1668 silver 1/4 ducat medal of hamburg','1635-to-1668-silver-1-4-ducat-medal-of-hamburg-0',26,1,577,'Item',NULL,NULL,11,'2010-12-02 18:27:48','2010-12-02 18:27:48');
INSERT INTO `nodes` VALUES (190,'26-36 ad bronze prutah of pontius pilate','26-36 ad bronze prutah of pontius pilate','26-36-ad-bronze-prutah-of-pontius-pilate-0',26,1,282,'Item',NULL,NULL,12,'2010-12-02 18:29:35','2010-12-02 18:29:35');
INSERT INTO `nodes` VALUES (191,'31 to 32 ad \"thirty pieces of silver\"','31 to 32 ad \"thirty pieces of silver\"','31-to-32-ad-thirty-pieces-of-silver-0',26,0,529,'Item',NULL,NULL,NULL,'2010-12-02 18:30:43','2010-12-02 18:30:43');
INSERT INTO `nodes` VALUES (192,'35-36 ad silver thirty pieces of silver','35-36 ad silver thirty pieces of silver','35-36-ad-silver-thirty-pieces-of-silver-0',26,1,481,'Item',NULL,NULL,13,'2010-12-02 18:31:59','2010-12-02 18:31:59');
INSERT INTO `nodes` VALUES (193,'40-37 bc bronze prutah of m. antigonus of judaea','40-37 bc bronze prutah of m. antigonus of judaea','40-37-bc-bronze-prutah-of-m-antigonus-of-judaea-0',26,1,483,'Item',NULL,NULL,14,'2010-12-02 18:32:55','2010-12-02 18:32:55');
INSERT INTO `nodes` VALUES (194,'69-79 ad brass sestertius judaea capta','69-79 ad brass sestertius judaea capta','69-79-ad-brass-sestertius-judaea-capta-0',26,1,508,'Item',NULL,NULL,15,'2010-12-02 18:33:41','2010-12-02 18:33:41');
INSERT INTO `nodes` VALUES (195,'89-88 bc  thirty pieces of silver','89-88 bc  thirty pieces of silver','89-88-bc-thirty-pieces-of-silver-0',26,1,480,'Item',NULL,NULL,16,'2010-12-02 18:34:04','2010-12-02 18:34:04');
INSERT INTO `nodes` VALUES (196,'1842 audubon \"woodchuck\" print','1842 audubon \"woodchuck\" print','1842-audubon-woodchuck-print-0',24,1,1468,'Item',NULL,NULL,464,'2010-12-02 18:34:38','2010-12-02 18:34:38');
INSERT INTO `nodes` VALUES (197,'Alexander the great ar tetradrachm \"money of the bible\"','Alexander the great ar tetradrachm \"money of the bible\"','alexander-the-great-ar-tetradrachm-money-of-the-bible',26,0,879,'Item',NULL,NULL,NULL,'2010-12-02 18:36:00','2011-02-16 21:58:28');
INSERT INTO `nodes` VALUES (198,'Alexander the great silver tetradrachm (4dr)','Alexander the great silver tetradrachm (4dr)','alexander-the-great-silver-tetradrachm-4dr',26,0,1067,'Item',NULL,NULL,NULL,'2010-12-02 18:38:04','2011-02-16 21:58:04');
INSERT INTO `nodes` VALUES (199,'Gold daric (c.450 bc) persia-sardeis in lydia','Gold daric (c.450 bc) persia-sardeis in lydia','gold-daric-c-450-bc-persia-sardeis-in-lydia-0',26,1,979,'Item',NULL,NULL,17,'2010-12-02 18:39:14','2010-12-02 18:39:14');
INSERT INTO `nodes` VALUES (200,'Greek silver tetradrachm(shekel) 92-91 b.c. tyre in phoenicia','Greek silver tetradrachm(shekel) 92-91 b.c. tyre in phoenicia','greek-silver-tetradrachm-shekel-92-91-b-c-tyre-in-phoenicia-0',26,1,977,'Item',NULL,NULL,18,'2010-12-02 18:41:04','2010-12-02 18:41:04');
INSERT INTO `nodes` VALUES (201,'Jerusalem-bar kochba, silver zuz (134-135ad)','Jerusalem-bar kochba, silver zuz (134-135ad)','jerusalem-bar-kochba-silver-zuz-134-135ad-0',26,1,1384,'Item',NULL,NULL,19,'2010-12-02 18:42:31','2010-12-02 18:42:31');
INSERT INTO `nodes` VALUES (202,'Pair of widow\'s mites','Pair of widow\'s mites','pair-of-widow-s-mites-0',26,1,200,'Item',NULL,NULL,20,'2010-12-02 18:46:29','2010-12-02 18:46:29');
INSERT INTO `nodes` VALUES (203,'Persia-sardeis in lydia gold daric (c.450 b.c.)','Persia-sardeis in lydia gold daric (c.450 b.c.)','persia-sardeis-in-lydia-gold-daric-c-450-b-c-0',26,1,978,'Item',NULL,NULL,21,'2010-12-02 18:47:52','2010-12-02 18:47:52');
INSERT INTO `nodes` VALUES (205,'Shekel of tyre  \"over-date 24/5\"','Shekel of tyre  \"over-date 24/5\"','shekel-of-tyre-over-date-24-5-0',26,1,1088,'Item',NULL,NULL,22,'2010-12-02 18:48:58','2010-12-02 18:48:58');
INSERT INTO `nodes` VALUES (206,'Shekel of tyre  \"overdate 27/28\"','Shekel of tyre  \"overdate 27/28\"','shekel-of-tyre-overdate-27-28-0',26,1,1087,'Item',NULL,NULL,23,'2010-12-02 18:49:59','2010-12-02 18:49:59');
INSERT INTO `nodes` VALUES (207,'Shekel of tyre  \"pne 29/30\"','Shekel of tyre  \"pne 29/30\"','shekel-of-tyre-pne-29-30-0',26,1,1084,'Item',NULL,NULL,24,'2010-12-02 18:51:18','2010-12-02 18:51:18');
INSERT INTO `nodes` VALUES (208,'Shekel of tyre  \"pnh 32/33\"  overdate','Shekel of tyre  \"pnh 32/33\"  overdate','shekel-of-tyre-pnh-32-33-overdate-0',26,1,1086,'Item',NULL,NULL,25,'2010-12-02 18:52:56','2010-12-02 18:52:56');
INSERT INTO `nodes` VALUES (209,'Tiberius gold aureus (17-37a.d.) lugdunum mint','Tiberius gold aureus (17-37a.d.) lugdunum mint','tiberius-gold-aureus-17-37a-d-lugdunum-mint-0',26,1,980,'Item',NULL,NULL,9,'2010-12-02 18:54:29','2010-12-02 18:54:29');
INSERT INTO `nodes` VALUES (210,'Tyre (138-126 b.c.) temple dues silver 1/2 shekel','Tyre (138-126 b.c.) temple dues silver 1/2 shekel','tyre-138-126-b-c-temple-dues-silver-1-2-shekel-0',26,1,1020,'Item',NULL,NULL,26,'2010-12-02 18:55:30','2010-12-02 18:55:30');
INSERT INTO `nodes` VALUES (211,'Tyre in phoenicia (28-29 ad) silver 1/2 shekel (didrachm)','Tyre in phoenicia (28-29 ad) silver 1/2 shekel (didrachm)','tyre-in-phoenicia-28-29-ad-silver-1-2-shekel-didrachm-0',26,1,1019,'Item',NULL,NULL,27,'2010-12-02 18:56:37','2010-12-02 18:56:37');
INSERT INTO `nodes` VALUES (212,'1042 to 1055 ad gold nomisma of constantine ix','1042 to 1055 ad gold nomisma of constantine ix','1042-to-1055-ad-gold-nomisma-of-constantine-ix-0',27,1,151,'Item',NULL,NULL,29,'2010-12-02 18:57:33','2010-12-02 18:57:33');
INSERT INTO `nodes` VALUES (213,'1853 gold $20 united states assay office','1853 gold $20 united states assay office','1853-gold-20-united-states-assay-office-0',87,1,252,'Item',NULL,NULL,462,'2010-12-02 18:59:44','2010-12-02 18:59:44');
INSERT INTO `nodes` VALUES (214,'582-602 ad gold solidus of maurice tiberius \"flip-over dbl. struck\"','582-602 ad gold solidus of maurice tiberius \"flip-over dbl. struck\"','582-602-ad-gold-solidus-of-maurice-tiberius-flip-over-dbl-struck-0',27,0,555,'Item',NULL,NULL,NULL,'2010-12-02 19:00:09','2010-12-02 19:00:09');
INSERT INTO `nodes` VALUES (215,'685-695 ad gold half solidus of justinian ii','685-695 ad gold half solidus of justinian ii','685-695-ad-gold-half-solidus-of-justinian-ii',27,1,232,'Item',NULL,NULL,30,'2010-12-02 19:02:04','2011-01-25 17:29:20');
INSERT INTO `nodes` VALUES (216,'685-695 ad gold solidus of justinian ii','685-695 ad gold solidus of justinian ii','685-695-ad-gold-solidus-of-justinian-ii-0',27,1,541,'Item',NULL,NULL,31,'2010-12-02 19:03:23','2010-12-02 19:03:23');
INSERT INTO `nodes` VALUES (217,'325-241 bc silver didrachm of neapolis','325-241 bc silver didrachm of neapolis','325-241-bc-silver-didrachm-of-neapolis-0',28,0,538,'Item',NULL,NULL,NULL,'2010-12-02 19:05:14','2010-12-09 19:01:36');
INSERT INTO `nodes` VALUES (218,'1951 proof set','1951 proof set','1951-proof-set-0',21,1,306,'Item',NULL,NULL,472,'2010-12-02 19:06:20','2010-12-02 19:06:20');
INSERT INTO `nodes` VALUES (220,'483-472 bc silver didrachm from himera','483-472 bc silver didrachm from himera','483-472-bc-silver-didrachm-from-himera-0',28,1,457,'Item',NULL,NULL,49,'2010-12-02 19:09:39','2010-12-02 19:09:39');
INSERT INTO `nodes` VALUES (221,'600 bc electrum 1/24 stater','600 bc electrum 1/24 stater','600-bc-electrum-1-24-stater-0',28,1,653,'Item',NULL,NULL,50,'2010-12-02 19:10:38','2010-12-02 19:10:38');
INSERT INTO `nodes` VALUES (222,'600-550 bc electrum twelfth stater','600-550 bc electrum twelfth stater','600-550-bc-electrum-twelfth-stater-0',28,1,654,'Item',NULL,NULL,51,'2010-12-02 19:12:08','2010-12-02 19:12:08');
INSERT INTO `nodes` VALUES (223,'Akragas in sicily, 482-472 b.c., silver didrachm','Akragas in sicily, 482-472 b.c., silver didrachm','akragas-in-sicily-482-472-b-c-silver-didrachm-0',28,1,1182,'Item',NULL,NULL,52,'2010-12-02 19:13:17','2010-12-02 19:13:17');
INSERT INTO `nodes` VALUES (224,'1995 Lincoln Cent \"Double Die\"','1995 Lincoln Cent \"Double Die\"','1995-lincoln-cent-double-die',586,0,635,'Item',NULL,NULL,NULL,'2010-12-02 19:14:04','2011-01-26 20:25:00');
INSERT INTO `nodes` VALUES (225,'Akragas in sicily, silver didrachm (510-480bc)','Akragas in sicily, silver didrachm (510-480bc)','akragas-in-sicily-silver-didrachm-510-480bc-0',28,1,1401,'Item',NULL,NULL,53,'2010-12-02 19:18:48','2010-12-02 19:18:48');
INSERT INTO `nodes` VALUES (226,'1942 Jefferson Nickel','1942 Jefferson Nickel','1942-jefferson-nickel',591,1,1340,'Item',NULL,NULL,402,'2010-12-02 19:41:32','2011-01-17 18:25:43');
INSERT INTO `nodes` VALUES (227,'1829 Capped Bust Dime','1829 Capped Bust Dime','1829-capped-bust-dime',592,1,387,'Item',NULL,NULL,404,'2010-12-02 19:45:42','2011-01-04 16:59:25');
INSERT INTO `nodes` VALUES (228,'1912 Barber Dime ','1912 Barber Dime ','1912-barber-dime',592,1,929,'Item',NULL,NULL,405,'2010-12-02 19:47:30','2011-01-04 16:59:02');
INSERT INTO `nodes` VALUES (229,'1930 Standing Liberty 25c','1930 Standing Liberty 25c','1930-standing-liberty-25c',593,1,1294,'Item',NULL,NULL,410,'2010-12-02 19:51:23','2011-01-26 18:14:40');
INSERT INTO `nodes` VALUES (230,'1935-p  Washington 25c','1935-p  Washington 25c','1935-p-washington-25c',593,1,408,'Item',NULL,NULL,409,'2010-12-02 19:53:21','2011-01-04 17:01:24');
INSERT INTO `nodes` VALUES (231,'1833 Capped Bust Half','1833 Capped Bust Half','1833-capped-bust-half',594,1,1439,'Item',NULL,NULL,412,'2010-12-02 19:55:12','2011-01-04 17:03:26');
INSERT INTO `nodes` VALUES (232,'1876-P Liberty Seated 50c','1876-P Liberty Seated 50c','1876-p-liberty-seated-50c',594,1,1470,'Item',NULL,NULL,413,'2010-12-02 19:58:31','2011-01-04 17:03:20');
INSERT INTO `nodes` VALUES (233,'1939  Walking Liberty 50c','1939  Walking Liberty 50c','1939-walking-liberty-50c',594,1,1326,'Item',NULL,NULL,414,'2010-12-02 20:11:28','2011-01-04 17:03:14');
INSERT INTO `nodes` VALUES (234,'1940-p Walking Liberty 50c','1940-p Walking Liberty 50c','1940-p-walking-liberty-50c',594,1,1206,'Item',NULL,NULL,415,'2010-12-02 20:14:16','2011-01-04 17:04:07');
INSERT INTO `nodes` VALUES (235,'1941-s Walking Liberty 50c','1941-s Walking Liberty 50c','1941-s-walking-liberty-50c',594,1,1219,'Item',NULL,NULL,416,'2010-12-02 20:18:18','2011-01-04 17:04:49');
INSERT INTO `nodes` VALUES (236,'1943 Denver Half','1943 Denver Half','1943-denver-half',594,1,314,'Item',NULL,NULL,417,'2010-12-02 20:20:56','2011-01-04 17:04:55');
INSERT INTO `nodes` VALUES (237,'1966 SMS Kennedy 50c','1966 SMS Kennedy 50c','1966-sms-kennedy-50c',594,1,1440,'Item',NULL,NULL,418,'2010-12-02 20:22:45','2011-01-04 17:05:04');
INSERT INTO `nodes` VALUES (238,'1836 Original Gobrecht Silver Dollar','1836 Original Gobrecht Silver Dollar','1836-original-gobrecht-silver-dollar',595,1,255,'Item',NULL,NULL,420,'2010-12-02 20:26:22','2011-01-04 17:06:38');
INSERT INTO `nodes` VALUES (239,'1846 Liberty Seated Dollar','1846 Liberty Seated Dollar','1846-liberty-seated-dollar',595,1,1135,'Item',NULL,NULL,421,'2010-12-02 20:30:12','2011-01-04 17:06:43');
INSERT INTO `nodes` VALUES (240,'Antiochus vii, 138-129 b.c., silver tetradrachm','Antiochus vii, 138-129 b.c., silver tetradrachm','antiochus-vii-138-129-b-c-silver-tetradrachm-0',28,1,1259,'Item',NULL,NULL,54,'2010-12-02 21:45:18','2010-12-02 21:45:18');
INSERT INTO `nodes` VALUES (241,'Antiochus vii, 138-129bc (euergetes)  silver tetradrachm','Antiochus vii, 138-129bc (euergetes)  silver tetradrachm','antiochus-vii-138-129bc-euergetes-silver-tetradrachm-0',28,1,914,'Item',NULL,NULL,55,'2010-12-02 21:47:00','2010-12-02 21:47:00');
INSERT INTO `nodes` VALUES (242,'Eukratides I, (171-145 BC) Silver Tetradrachm','Eukratides I, (171-145 BC) Silver Tetradrachm','eukratides-i-171-145-bc-silver-tetradrachm-0',28,1,1285,'Item',NULL,NULL,56,'2010-12-02 23:24:32','2010-12-02 23:24:32');
INSERT INTO `nodes` VALUES (243,'1860-o Liberty Seated Dollar','1860-o Liberty Seated Dollar','1860-o-liberty-seated-dollar',595,1,1140,'Item',NULL,NULL,422,'2010-12-02 23:28:07','2011-01-04 17:06:49');
INSERT INTO `nodes` VALUES (244,'1880-s Morgan Silver Dollar','1880-s Morgan Silver Dollar','1880-s-morgan-silver-dollar',595,1,989,'Item',NULL,NULL,423,'2010-12-02 23:31:06','2011-01-04 17:06:55');
INSERT INTO `nodes` VALUES (245,'1882-cc \"GSA\" Morgan','1882-cc \"GSA\" Morgan','1882-cc-gsa-morgan',595,1,1159,'Item',NULL,NULL,424,'2010-12-02 23:33:41','2011-01-04 17:08:07');
INSERT INTO `nodes` VALUES (246,'1884-o Morgan Dollar','1884-o Morgan Dollar','1884-o-morgan-dollar',595,1,410,'Item',NULL,NULL,429,'2010-12-02 23:35:42','2011-01-26 18:13:51');
INSERT INTO `nodes` VALUES (247,'1895-s Morgan Dollar','1895-s Morgan Dollar','1895-s-morgan-dollar',595,1,1425,'Item',NULL,NULL,426,'2010-12-02 23:37:37','2011-01-04 17:08:13');
INSERT INTO `nodes` VALUES (248,'1924-p Peace Silver Dollar','1924-p Peace Silver Dollar','1924-p-peace-silver-dollar',595,1,1338,'Item',NULL,NULL,427,'2010-12-02 23:40:22','2011-01-04 17:08:19');
INSERT INTO `nodes` VALUES (249,'1944 Denver Silver Dollar','1944 Denver Silver Dollar','1944-denver-silver-dollar',595,1,738,'Item',NULL,NULL,428,'2010-12-02 23:42:04','2011-01-04 17:08:25');
INSERT INTO `nodes` VALUES (250,'1851-o Gold Dollar','1851-o Gold Dollar','1851-o-gold-dollar',596,0,1331,'Item',NULL,NULL,NULL,'2010-12-02 23:44:19','2011-01-26 18:13:28');
INSERT INTO `nodes` VALUES (251,'1854 \"Type-2\" Gold Dollar','1854 \"Type-2\" Gold Dollar','1854-type-2-gold-dollar',596,1,709,'Item',NULL,NULL,431,'2010-12-02 23:46:16','2011-01-04 17:10:41');
INSERT INTO `nodes` VALUES (252,'1907 High Relief Saint Gaudens $20','1907 High Relief Saint Gaudens $20','1907-high-relief-saint-gaudens-20',602,1,1299,'Item',NULL,NULL,438,'2010-12-02 23:49:41','2011-01-26 18:14:13');
INSERT INTO `nodes` VALUES (253,'1937 Antietam 50c Commem','1937 Antietam 50c Commem','1937-antietam-50c-commem',603,1,1437,'Item',NULL,NULL,440,'2010-12-03 00:27:15','2011-01-04 17:29:29');
INSERT INTO `nodes` VALUES (254,'1937-p Boone Commem 50c ','1937-p Boone Commem 50c ','1937-p-boone-commem-50c',603,1,1271,'Item',NULL,NULL,441,'2010-12-03 00:29:59','2011-01-04 17:29:43');
INSERT INTO `nodes` VALUES (255,'1935 Hudson 50c Commen ','1935 Hudson 50c Commen ','1935-hudson-50c-commen',603,1,466,'Item',NULL,NULL,442,'2010-12-03 00:32:23','2011-01-04 17:27:31');
INSERT INTO `nodes` VALUES (256,'1925 Lexington 50c Commem','1925 Lexington 50c Commem','1925-lexington-50c-commem',603,1,1471,'Item',NULL,NULL,443,'2010-12-03 00:34:22','2011-01-04 17:27:14');
INSERT INTO `nodes` VALUES (257,'1936 Lynchburg 50c','1936 Lynchburg 50c','1936-lynchburg-50c',603,1,1242,'Item',NULL,NULL,444,'2010-12-03 00:35:42','2011-01-04 17:28:01');
INSERT INTO `nodes` VALUES (258,'1936-s Oregon 50c Commem','1936-s Oregon 50c Commem','1936-s-oregon-50c-commem',603,1,1105,'Item',NULL,NULL,445,'2010-12-03 00:37:31','2011-01-04 17:29:08');
INSERT INTO `nodes` VALUES (259,'1938-p Oregon 50c Commem','1938-p Oregon 50c Commem','1938-p-oregon-50c-commem',603,1,1007,'Item',NULL,NULL,446,'2010-12-03 00:39:11','2011-01-04 17:29:58');
INSERT INTO `nodes` VALUES (260,'1938-p Oregon Trail 50c Commem','1938-p Oregon Trail 50c Commem','1938-p-oregon-trail-50c-commem',603,1,474,'Item',NULL,NULL,447,'2010-12-03 00:40:58','2011-01-04 17:30:03');
INSERT INTO `nodes` VALUES (261,'1920 Pilgrim 50c Commem','1920 Pilgrim 50c Commem','1920-pilgrim-50c-commem',603,1,1472,'Item',NULL,NULL,448,'2010-12-03 00:43:31','2011-01-04 17:27:02');
INSERT INTO `nodes` VALUES (263,'1936-p Rhode Island 50c','1936-p Rhode Island 50c','1936-p-rhode-island-50c',603,1,1244,'Item',NULL,NULL,449,'2010-12-03 00:49:11','2011-01-04 17:29:03');
INSERT INTO `nodes` VALUES (264,'1937 Roanoke 50c Commem','1937 Roanoke 50c Commem','1937-roanoke-50c-commem',603,1,1272,'Item',NULL,NULL,450,'2010-12-03 00:50:20','2011-01-04 17:29:34');
INSERT INTO `nodes` VALUES (265,'1935 Robinson 50c','1935 Robinson 50c','1935-robinson-50c',603,1,1230,'Item',NULL,NULL,451,'2010-12-03 00:51:56','2011-01-04 17:27:57');
INSERT INTO `nodes` VALUES (266,'1936 Robinson 50c Commem','1936 Robinson 50c Commem','1936-robinson-50c-commem',603,1,745,'Item',NULL,NULL,452,'2010-12-03 00:53:28','2011-01-04 17:28:06');
INSERT INTO `nodes` VALUES (267,'Spanish trail 1935 commem 50c','Spanish trail 1935 commem 50c','spanish-trail-1935-commem-50c',603,1,1358,'Item',NULL,NULL,453,'2010-12-03 00:55:10','2011-01-04 17:30:09');
INSERT INTO `nodes` VALUES (268,'1925 Stone Mountain 50c','1925 Stone Mountain 50c','1925-stone-mountain-50c',603,1,1247,'Item',NULL,NULL,454,'2010-12-03 00:56:08','2011-01-04 17:27:20');
INSERT INTO `nodes` VALUES (270,'1936 Wisconsin 50c','1936 Wisconsin 50c','1936-wisconsin-50c',603,1,1248,'Item',NULL,NULL,455,'2010-12-03 00:58:40','2011-01-04 17:28:36');
INSERT INTO `nodes` VALUES (271,'1995-w Gold $5 Olympic Torch Runner','1995-w Gold $5 Olympic Torch Runner','1995-w-gold-5-olympic-torch-runner',605,1,1300,'Item',NULL,NULL,457,'2010-12-03 01:01:05','2011-01-04 17:15:30');
INSERT INTO `nodes` VALUES (272,'1696 Great Britain Crown \"First Bust\"','1696 Great Britain Crown \"First Bust\"','1696-great-britain-crown-first-bust',606,0,867,'Item',NULL,NULL,NULL,'2010-12-03 01:06:46','2011-03-17 17:51:40');
INSERT INTO `nodes` VALUES (273,'1714 1/4 Penny Great Britain','1714 1/4 Penny Great Britain','1714-1-4-penny-great-britain',52,1,1220,'Item',NULL,NULL,252,'2010-12-03 01:38:23','2011-03-17 18:18:54');
INSERT INTO `nodes` VALUES (274,'Eukratides i, 171-145 b.c.  silver tetradrachm','Eukratides i, 171-145 b.c.  silver tetradrachm','eukratides-i-171-145-b-c-silver-tetradrachm-0',28,1,1064,'Item',NULL,NULL,57,'2010-12-03 12:59:23','2010-12-03 12:59:23');
INSERT INTO `nodes` VALUES (275,'Indo-greek  menander 160-145 b.c.','Indo-greek  menander 160-145 b.c.','indo-greek-menander-160-145-b-c-0',28,1,1026,'Item',NULL,NULL,58,'2010-12-03 13:00:31','2010-12-03 13:00:31');
INSERT INTO `nodes` VALUES (276,'Isl. of euboea, histiaea  silver tetrobol c.3-2 b.c.','Isl. of euboea, histiaea  silver tetrobol c.3-2 b.c.','isl-of-euboea-histiaea-silver-tetrobol-c-3-2-b-c',28,0,1348,'Item',NULL,NULL,NULL,'2010-12-03 13:01:36','2011-02-01 15:35:02');
INSERT INTO `nodes` VALUES (277,'Isl. of euboea, histiaea silver tetrobol (3-2 cent. b.c.)','Isl. of euboea, histiaea silver tetrobol (3-2 cent. b.c.)','isl-of-euboea-histiaea-silver-tetrobol-3-2-cent-b-c-0',28,1,1036,'Item',NULL,NULL,59,'2010-12-03 13:02:34','2010-12-03 13:02:34');
INSERT INTO `nodes` VALUES (279,'Kyme in aiolis silver tetradrachm 2nd cent. bc','Kyme in aiolis silver tetradrachm 2nd cent. bc','kyme-in-aiolis-silver-tetradrachm-2nd-cent-bc-0',28,1,1161,'Item',NULL,NULL,60,'2010-12-03 13:05:16','2010-12-03 13:05:16');
INSERT INTO `nodes` VALUES (280,'Lysimachus, 215-195 b.c.  gold stater','Lysimachus, 215-195 b.c.  gold stater','lysimachus-215-195-b-c-gold-stater-0',28,1,1044,'Item',NULL,NULL,61,'2010-12-03 13:05:57','2010-12-03 13:05:57');
INSERT INTO `nodes` VALUES (281,'Lysimachus, 323-281 b.c.  gold stater','Lysimachus, 323-281 b.c.  gold stater','lysimachus-323-281-b-c-gold-stater-0',28,1,1057,'Item',NULL,NULL,62,'2010-12-03 13:06:42','2010-12-03 13:06:42');
INSERT INTO `nodes` VALUES (282,'Neapolis in campania silver didrachm (325-241 b.c.)','Neapolis in campania silver didrachm (325-241 b.c.)','neapolis-in-campania-silver-didrachm-325-241-b-c-0',28,1,1074,'Item',NULL,NULL,63,'2010-12-03 13:07:38','2010-12-03 13:07:38');
INSERT INTO `nodes` VALUES (283,'New style \"owl\" silver tetradrachm (1st-2nd cent. b.c.)','New style \"owl\" silver tetradrachm (1st-2nd cent. b.c.)','new-style-owl-silver-tetradrachm-1st-2nd-cent-b-c-0',28,1,1100,'Item',NULL,NULL,64,'2010-12-03 13:08:48','2010-12-03 13:08:48');
INSERT INTO `nodes` VALUES (284,'Persia-sardeis in lydia (5th cent. bc) gold daric','Persia-sardeis in lydia (5th cent. bc) gold daric','persia-sardeis-in-lydia-5th-cent-bc-gold-daric-0',28,1,1420,'Item',NULL,NULL,65,'2010-12-03 13:09:36','2010-12-03 13:09:36');
INSERT INTO `nodes` VALUES (285,'Poseidonia silver stater (480-400bc)','Poseidonia silver stater (480-400bc)','poseidonia-silver-stater-480-400bc-0',28,1,449,'Item',NULL,NULL,66,'2010-12-03 13:10:27','2010-12-03 13:10:27');
INSERT INTO `nodes` VALUES (286,'Seleukid, antiochus vii 138-129 b.c., ar tetradrachm euergetes','Seleukid, antiochus vii 138-129 b.c., ar tetradrachm euergetes','seleukid-antiochus-vii-138-129-b-c-ar-tetradrachm-euergetes-0',28,1,1021,'Item',NULL,NULL,67,'2010-12-03 13:11:15','2010-12-03 13:11:15');
INSERT INTO `nodes` VALUES (287,'Sicily, himera, c.483-472 b.c., silver didrachm','Sicily, himera, c.483-472 b.c., silver didrachm','sicily-himera-c-483-472-b-c-silver-didrachm-0',28,1,1255,'Item',NULL,NULL,68,'2010-12-03 13:12:03','2010-12-03 13:12:03');
INSERT INTO `nodes` VALUES (288,'Sicily, syracuse gold 50 litrae (c405-395 b.c.)','Sicily, syracuse gold 50 litrae (c405-395 b.c.)','sicily-syracuse-gold-50-litrae-c405-395-b-c-0',28,1,1072,'Item',NULL,NULL,69,'2010-12-03 13:12:51','2010-12-03 13:12:51');
INSERT INTO `nodes` VALUES (289,'Thracian cherronesos, 4th cent. b.c., silver hemidrachm','Thracian cherronesos, 4th cent. b.c., silver hemidrachm','thracian-cherronesos-4th-cent-b-c-silver-hemidrachm-0',28,1,1258,'Item',NULL,NULL,70,'2010-12-03 13:13:39','2010-12-03 13:13:39');
INSERT INTO `nodes` VALUES (290,'Thracian cherronesos, 4th cent. bc, silver hemidrachm','Thracian cherronesos, 4th cent. bc, silver hemidrachm','thracian-cherronesos-4th-cent-bc-silver-hemidrachm',28,0,1257,'Item',NULL,NULL,NULL,'2010-12-03 13:15:14','2011-03-17 18:42:21');
INSERT INTO `nodes` VALUES (291,'323-315 bc gold stater in the name of philip ii','323-315 bc gold stater in the name of philip ii','323-315-bc-gold-stater-in-the-name-of-philip-ii-0',89,1,146,'Item',NULL,NULL,34,'2010-12-03 13:16:32','2010-12-03 13:16:32');
INSERT INTO `nodes` VALUES (292,'323-319 b.c. alexander the great gold stater','323-319 b.c. alexander the great gold stater','323-319-b-c-alexander-the-great-gold-stater-0',89,1,1056,'Item',NULL,NULL,35,'2010-12-03 13:17:16','2010-12-03 13:17:16');
INSERT INTO `nodes` VALUES (293,'336-323 bc gold stater of alexander','336-323 bc gold stater of alexander','336-323-bc-gold-stater-of-alexander-0',89,1,547,'Item',NULL,NULL,36,'2010-12-03 13:18:01','2010-12-03 13:18:01');
INSERT INTO `nodes` VALUES (294,'Alexander iii, 336-323 b.c., gold stater','Alexander iii, 336-323 b.c., gold stater','alexander-iii-336-323-b-c-gold-stater-0',89,1,1355,'Item',NULL,NULL,37,'2010-12-03 13:19:13','2010-12-03 13:19:13');
INSERT INTO `nodes` VALUES (295,'Alexander iii, 336-323 b.c., silver drachm','Alexander iii, 336-323 b.c., silver drachm','alexander-iii-336-323-b-c-silver-drachm-0',89,1,1069,'Item',NULL,NULL,38,'2010-12-03 13:19:59','2010-12-03 13:19:59');
INSERT INTO `nodes` VALUES (296,'Alexander iii, silver drachm, 336-323 b.c., posthumous issue','Alexander iii, silver drachm, 336-323 b.c., posthumous issue','alexander-iii-silver-drachm-336-323-b-c-posthumous-issue-0',89,1,1068,'Item',NULL,NULL,39,'2010-12-03 13:20:45','2010-12-03 13:20:45');
INSERT INTO `nodes` VALUES (297,'Alexander the great \"lifetime\" silver tetradrachm','Alexander the great \"lifetime\" silver tetradrachm','alexander-the-great-lifetime-silver-tetradrachm-0',89,1,878,'Item',NULL,NULL,40,'2010-12-03 13:21:32','2010-12-03 13:21:32');
INSERT INTO `nodes` VALUES (298,'Alexander the great (336-23 bc) silver tetradrachm','Alexander the great (336-23 bc) silver tetradrachm','alexander-the-great-336-23-bc-silver-tetradrachm-0',89,1,880,'Item',NULL,NULL,41,'2010-12-03 13:22:07','2010-12-03 13:22:07');
INSERT INTO `nodes` VALUES (299,'Alexander the great gold stater (333-305 b.c.)','Alexander the great gold stater (333-305 b.c.)','alexander-the-great-gold-stater-333-305-b-c-0',89,1,1077,'Item',NULL,NULL,42,'2010-12-03 13:22:57','2010-12-03 13:22:57');
INSERT INTO `nodes` VALUES (300,'Alexander the great, 332-323 bc, gold stater','Alexander the great, 332-323 bc, gold stater','alexander-the-great-332-323-bc-gold-stater-0',89,1,1183,'Item',NULL,NULL,43,'2010-12-03 13:23:47','2010-12-03 13:23:47');
INSERT INTO `nodes` VALUES (301,'Macedonia, philip iii, 323-317 b.c., gold stater','Macedonia, philip iii, 323-317 b.c., gold stater','macedonia-philip-iii-323-317-b-c-gold-stater-0',89,1,1353,'Item',NULL,NULL,44,'2010-12-03 13:24:31','2010-12-03 13:24:31');
INSERT INTO `nodes` VALUES (302,'Arsinoe ii, d.270/68bc  gold octodrachm  \"rare tyre mint\"','Arsinoe ii, d.270/68bc  gold octodrachm  \"rare tyre mint\"','arsinoe-ii-d-270-68bc-gold-octodrachm-rare-tyre-mint-0',90,1,1148,'Item',NULL,NULL,46,'2010-12-03 13:25:29','2010-12-03 13:25:29');
INSERT INTO `nodes` VALUES (303,'Arsinoe ii, gold octadrachm, 253-246 b.c., ptolemaic kings','Arsinoe ii, gold octadrachm, 253-246 b.c., ptolemaic kings','arsinoe-ii-gold-octadrachm-253-246-b-c-ptolemaic-kings-0',90,1,1065,'Item',NULL,NULL,47,'2010-12-03 13:26:20','2010-12-03 13:26:20');
INSERT INTO `nodes` VALUES (304,'Arsinoe ii, gold octadrachm, 270/68 b.c., ptolemaic kingdom','Arsinoe ii, gold octadrachm, 270/68 b.c., ptolemaic kingdom','arsinoe-ii-gold-octadrachm-270-68-b-c-ptolemaic-kingdom-0',90,1,1066,'Item',NULL,NULL,48,'2010-12-03 13:27:02','2010-12-03 13:27:02');
INSERT INTO `nodes` VALUES (305,'Vespasian, judaea, yr2  \"first jewish revolt\",  ae prutah','Vespasian, judaea, yr2  \"first jewish revolt\",  ae prutah','vespasian-judaea-yr2-first-jewish-revolt-ae-prutah',29,1,1095,'Item',NULL,NULL,72,'2010-12-03 13:28:03','2011-01-03 21:28:05');
INSERT INTO `nodes` VALUES (306,'57-38 bc silver drachm of orodes ii','57-38 bc silver drachm of orodes ii','57-38-bc-silver-drachm-of-orodes-ii',30,0,603,'Item',NULL,NULL,NULL,'2010-12-03 13:28:54','2011-03-17 18:45:26');
INSERT INTO `nodes` VALUES (307,'Brutus, d.42 b.c., silver denarius','Brutus, d.42 b.c., silver denarius','brutus-d-42-b-c-silver-denarius',31,1,1263,'Item',NULL,NULL,75,'2010-12-03 13:29:44','2011-01-25 23:55:53');
INSERT INTO `nodes` VALUES (308,'Julius caesar (42 b.c.) silver denarius','Julius caesar (42 b.c.) silver denarius','julius-caesar-42-b-c-silver-denarius-0',31,1,1025,'Item',NULL,NULL,76,'2010-12-03 13:30:26','2010-12-03 13:30:26');
INSERT INTO `nodes` VALUES (309,'Julius caesar (49-86 b.c.) silver denarius','Julius caesar (49-86 b.c.) silver denarius','julius-caesar-49-86-b-c-silver-denarius-0',31,1,1345,'Item',NULL,NULL,77,'2010-12-03 13:31:10','2010-12-03 13:31:10');
INSERT INTO `nodes` VALUES (310,'Julius caesar silver denarius (49-44 b.c.)','Julius caesar silver denarius (49-44 b.c.)','julius-caesar-silver-denarius-49-44-b-c-0',31,1,1346,'Item',NULL,NULL,78,'2010-12-03 13:31:56','2010-12-03 13:31:56');
INSERT INTO `nodes` VALUES (311,'Julius caesar, 42 b.c., silver denarius, l. mussidius','Julius caesar, 42 b.c., silver denarius, l. mussidius','julius-caesar-42-b-c-silver-denarius-l-mussidius-0',31,1,1306,'Item',NULL,NULL,79,'2010-12-03 13:34:30','2010-12-03 13:34:30');
INSERT INTO `nodes` VALUES (312,'Julius caesar, 47-46 b.c., silver denarius, aeneas','Julius caesar, 47-46 b.c., silver denarius, aeneas','julius-caesar-47-46-b-c-silver-denarius-aeneas-0',31,1,1305,'Item',NULL,NULL,80,'2010-12-03 13:35:20','2010-12-03 13:35:20');
INSERT INTO `nodes` VALUES (313,'Tiberius-pontif maxim (14-37ad) gold aureus/lugdunum mint','Tiberius-pontif maxim (14-37ad) gold aureus/lugdunum mint','tiberius-pontif-maxim-14-37ad-gold-aureus-lugdunum-mint-0',31,1,1387,'Item',NULL,NULL,81,'2010-12-03 13:36:01','2010-12-03 13:36:01');
INSERT INTO `nodes` VALUES (314,'209-211 ad silver denarius of geta as augustus','209-211 ad silver denarius of geta as augustus','209-211-ad-silver-denarius-of-geta-as-augustus-0',32,1,241,'Item',NULL,NULL,84,'2010-12-03 13:36:44','2010-12-03 13:36:44');
INSERT INTO `nodes` VALUES (315,'244-249 ad silver of philip i \"the arab\"','244-249 ad silver of philip i \"the arab\"','244-249-ad-silver-of-philip-i-the-arab-0',32,1,559,'Item',NULL,NULL,85,'2010-12-03 13:37:37','2010-12-03 13:37:37');
INSERT INTO `nodes` VALUES (316,'269 ad marius, victoria aug, antoninianus maniz-trier','269 ad marius, victoria aug, antoninianus maniz-trier','269-ad-marius-victoria-aug-antoninianus-maniz-trier-0',32,1,903,'Item',NULL,NULL,86,'2010-12-03 13:38:33','2010-12-03 13:38:33');
INSERT INTO `nodes` VALUES (317,'270-275 ad silvered (billon) antoninianus of aurelian','270-275 ad silvered (billon) antoninianus of aurelian','270-275-ad-silvered-billon-antoninianus-of-aurelian-0',32,1,444,'Item',NULL,NULL,87,'2010-12-03 13:39:14','2010-12-03 13:39:14');
INSERT INTO `nodes` VALUES (318,'276-282 ad silvered (billon) antoninianus of probus','276-282 ad silvered (billon) antoninianus of probus','276-282-ad-silvered-billon-antoninianus-of-probus-0',32,1,443,'Item',NULL,NULL,88,'2010-12-03 13:39:55','2010-12-03 13:39:55');
INSERT INTO `nodes` VALUES (319,'295-305 ad silver argentus of diocletian','295-305 ad silver argentus of diocletian','295-305-ad-silver-argentus-of-diocletian-0',32,1,605,'Item',NULL,NULL,89,'2010-12-03 13:40:51','2010-12-03 13:40:51');
INSERT INTO `nodes` VALUES (320,'307-337 ad billon (silvered) follis of constantine i the great','307-337 ad billon (silvered) follis of constantine i the great','307-337-ad-billon-silvered-follis-of-constantine-i-the-great-0',32,1,446,'Item',NULL,NULL,90,'2010-12-03 13:41:37','2010-12-03 13:41:37');
INSERT INTO `nodes` VALUES (321,'351-355 ad gold solidus of constantius ii','351-355 ad gold solidus of constantius ii','351-355-ad-gold-solidus-of-constantius-ii-0',32,1,251,'Item',NULL,NULL,91,'2010-12-03 13:42:26','2010-12-03 13:42:26');
INSERT INTO `nodes` VALUES (322,'364-367 ad gold solidus of valens','364-367 ad gold solidus of valens','364-367-ad-gold-solidus-of-valens-0',32,1,762,'Item',NULL,NULL,92,'2010-12-03 13:43:00','2010-12-03 13:43:00');
INSERT INTO `nodes` VALUES (323,'364-367 ad gold solidus of valentinian i','364-367 ad gold solidus of valentinian i','364-367-ad-gold-solidus-of-valentinian-i-0',32,1,763,'Item',NULL,NULL,93,'2010-12-03 13:43:44','2010-12-03 13:43:44');
INSERT INTO `nodes` VALUES (324,'Aelia eudoxia, 400-404 a.d.  ae 18mm','Aelia eudoxia, 400-404 a.d.  ae 18mm','aelia-eudoxia-400-404-a-d-ae-18mm-0',32,1,1055,'Item',NULL,NULL,94,'2010-12-03 13:44:37','2010-12-03 13:44:37');
INSERT INTO `nodes` VALUES (325,'Aemilian (253ad) ar antoninianus','Aemilian (253ad) ar antoninianus','aemilian-253ad-ar-antoninianus-0',32,1,1422,'Item',NULL,NULL,95,'2010-12-03 13:45:34','2010-12-03 13:45:34');
INSERT INTO `nodes` VALUES (326,'Augustus (2bc-14ad) gold aureus, lugdunum mint','Augustus (2bc-14ad) gold aureus, lugdunum mint','augustus-2bc-14ad-gold-aureus-lugdunum-mint-0',32,1,1388,'Item',NULL,NULL,96,'2010-12-03 13:46:20','2010-12-03 13:46:20');
INSERT INTO `nodes` VALUES (327,'Aurelian 270-275ad, ae antoninianus','Aurelian 270-275ad, ae antoninianus','aurelian-270-275ad-ae-antoninianus-0',32,1,1428,'Item',NULL,NULL,97,'2010-12-03 13:47:06','2010-12-03 13:47:06');
INSERT INTO `nodes` VALUES (328,'Balbinus silver denarius (april-june 238ad)','Balbinus silver denarius (april-june 238ad)','balbinus-silver-denarius-april-june-238ad-0',32,1,1418,'Item',NULL,NULL,98,'2010-12-03 13:47:55','2010-12-03 13:47:55');
INSERT INTO `nodes` VALUES (329,'Bosphorus, rheskuporis ii/severus alexander, el stater','Bosphorus, rheskuporis ii/severus alexander, el stater','bosphorus-rheskuporis-ii-severus-alexander-el-stater-0',32,1,1391,'Item',NULL,NULL,99,'2010-12-03 13:48:41','2010-12-03 13:48:41');
INSERT INTO `nodes` VALUES (330,'Caracalla, 198-217ad  silver denarius','Caracalla, 198-217ad  silver denarius','caracalla-198-217ad-silver-denarius-0',32,1,912,'Item',NULL,NULL,100,'2010-12-03 13:50:10','2010-12-03 13:50:10');
INSERT INTO `nodes` VALUES (331,'Carausius, ae antoninianus (286-293ad)','Carausius, ae antoninianus (286-293ad)','carausius-ae-antoninianus-286-293ad-0',32,1,1395,'Item',NULL,NULL,101,'2010-12-03 13:50:58','2010-12-03 13:50:58');
INSERT INTO `nodes` VALUES (332,'Carausius, pax, ae antoninianus (286-293ad)','Carausius, pax, ae antoninianus (286-293ad)','carausius-pax-ae-antoninianus-286-293ad-0',32,1,1394,'Item',NULL,NULL,102,'2010-12-03 13:51:56','2010-12-03 13:51:56');
INSERT INTO `nodes` VALUES (333,'Constans gold solidus (340-350ad)','Constans gold solidus (340-350ad)','constans-gold-solidus-340-350ad',32,0,1396,'Item',NULL,NULL,NULL,'2010-12-03 13:52:51','2011-02-17 19:27:52');
INSERT INTO `nodes` VALUES (334,'Domitian, cos iiii (76 a.d.) gold aureus','Domitian, cos iiii (76 a.d.) gold aureus','domitian-cos-iiii-76-a-d-gold-aureus-0',32,1,1045,'Item',NULL,NULL,103,'2010-12-03 13:53:28','2010-12-03 13:53:28');
INSERT INTO `nodes` VALUES (335,'Faustina senior, 141-161 a.d.  silver denarius','Faustina senior, 141-161 a.d.  silver denarius','faustina-senior-141-161-a-d-silver-denarius',32,0,1048,'Item',NULL,NULL,NULL,'2010-12-03 13:54:24','2011-03-14 20:07:45');
INSERT INTO `nodes` VALUES (336,'Geta as augustus, 209-211ad  silver denarius','Geta as augustus, 209-211ad  silver denarius','geta-as-augustus-209-211ad-silver-denarius-0',32,1,908,'Item',NULL,NULL,104,'2010-12-03 13:55:13','2010-12-03 13:55:13');
INSERT INTO `nodes` VALUES (337,'Hadrian (117-138ad) silver denarius','Hadrian (117-138ad) silver denarius','hadrian-117-138ad-silver-denarius-0',32,1,1386,'Item',NULL,NULL,105,'2010-12-03 13:56:19','2010-12-03 13:56:19');
INSERT INTO `nodes` VALUES (338,'Hadrian, 117-138 a.d. silver denarius','Hadrian, 117-138 a.d. silver denarius','hadrian-117-138-a-d-silver-denarius-0',32,1,1051,'Item',NULL,NULL,106,'2010-12-03 13:57:01','2010-12-03 13:57:01');
INSERT INTO `nodes` VALUES (339,'Honorius gold solidus (404-408ad)','Honorius gold solidus (404-408ad)','honorius-gold-solidus-404-408ad-0',32,1,1397,'Item',NULL,NULL,107,'2010-12-03 13:57:54','2010-12-03 13:57:54');
INSERT INTO `nodes` VALUES (340,'Licinius i, 308-324ad, ae follis','Licinius i, 308-324ad, ae follis','licinius-i-308-324ad-ae-follis-0',32,1,1424,'Item',NULL,NULL,108,'2010-12-03 13:58:46','2010-12-03 13:58:46');
INSERT INTO `nodes` VALUES (341,'Lucilla, pudicita (166-169 ad) silver denarius','Lucilla, pudicita (166-169 ad) silver denarius','lucilla-pudicita-166-169-ad-silver-denarius-0',32,1,907,'Item',NULL,NULL,109,'2010-12-03 13:59:30','2010-12-03 13:59:30');
INSERT INTO `nodes` VALUES (342,'Marius, saec felicitas, antoninianus, cologne','Marius, saec felicitas, antoninianus, cologne','marius-saec-felicitas-antoninianus-cologne-0',32,1,838,'Item',NULL,NULL,110,'2010-12-03 14:00:34','2010-12-03 14:00:34');
INSERT INTO `nodes` VALUES (343,'Maximinus i, 235-238 ad, silver denarius','Maximinus i, 235-238 ad, silver denarius','maximinus-i-235-238-ad-silver-denarius-0',32,1,1166,'Item',NULL,NULL,111,'2010-12-03 14:01:31','2010-12-03 14:01:31');
INSERT INTO `nodes` VALUES (344,'Nero-emperor ad 54-68 gold aureus','Nero-emperor ad 54-68 gold aureus','nero-emperor-ad-54-68-gold-aureus-0',32,1,1361,'Item',NULL,NULL,112,'2010-12-03 14:02:23','2010-12-03 14:02:23');
INSERT INTO `nodes` VALUES (345,'Pertinax 193ad, silver denarius','Pertinax 193ad, silver denarius','pertinax-193ad-silver-denarius-0',32,1,435,'Item',NULL,NULL,113,'2010-12-03 14:03:11','2010-12-03 14:03:11');
INSERT INTO `nodes` VALUES (346,'Pescennius niger, syria, denarius \"goddess of health\" (193ad)','Pescennius niger, syria, denarius \"goddess of health\" (193ad)','pescennius-niger-syria-denarius-goddess-of-health-193ad-0',32,1,1389,'Item',NULL,NULL,114,'2010-12-03 14:03:56','2010-12-03 14:03:56');
INSERT INTO `nodes` VALUES (347,'Septimius severus, silver denarius (193-211 a.d.)','Septimius severus, silver denarius (193-211 a.d.)','septimius-severus-silver-denarius-193-211-a-d-0',32,1,1093,'Item',NULL,NULL,115,'2010-12-03 14:04:55','2010-12-03 14:04:55');
INSERT INTO `nodes` VALUES (348,'Tiberius, 17-37 a.d.  silver denarius  \"tribute penny\"','Tiberius, 17-37 a.d.  silver denarius  \"tribute penny\"','tiberius-17-37-a-d-silver-denarius-tribute-penny-0',32,1,620,'Item',NULL,NULL,116,'2010-12-03 14:05:47','2010-12-03 14:05:47');
INSERT INTO `nodes` VALUES (349,'Trajan (98-117 a.d.) silver deanarius','Trajan (98-117 a.d.) silver deanarius','trajan-98-117-a-d-silver-deanarius-0',32,1,1030,'Item',NULL,NULL,117,'2010-12-03 14:06:33','2010-12-03 14:06:33');
INSERT INTO `nodes` VALUES (350,'Trajan (98-117ad), silver denarius','Trajan (98-117ad), silver denarius','trajan-98-117ad-silver-denarius',32,0,1385,'Item',NULL,NULL,NULL,'2010-12-03 14:07:18','2011-03-17 18:43:49');
INSERT INTO `nodes` VALUES (351,'Trajan 98-117 a.d., gold aureus','Trajan 98-117 a.d., gold aureus','trajan-98-117-a-d-gold-aureus-0',32,1,1363,'Item',NULL,NULL,118,'2010-12-03 14:08:09','2010-12-03 14:08:09');
INSERT INTO `nodes` VALUES (352,'Trajan decius, 249-151 a.d. gold aureus','Trajan decius, 249-151 a.d. gold aureus','trajan-decius-249-151-a-d-gold-aureus-0',32,1,1181,'Item',NULL,NULL,119,'2010-12-03 14:08:46','2010-12-03 14:08:46');
INSERT INTO `nodes` VALUES (353,'Trajan silver denarius (102-103 a.d.)','Trajan silver denarius (102-103 a.d.)','trajan-silver-denarius-102-103-a-d-0',32,1,1094,'Item',NULL,NULL,120,'2010-12-03 14:09:34','2010-12-03 14:09:34');
INSERT INTO `nodes` VALUES (354,'Valerian billon antoninianus (253-260ad)','Valerian billon antoninianus (253-260ad)','valerian-billon-antoninianus-253-260ad-0',32,1,686,'Item',NULL,NULL,121,'2010-12-03 14:10:29','2010-12-03 14:10:29');
INSERT INTO `nodes` VALUES (355,'1730 Great Britain 1/2 Penny','1730 Great Britain 1/2 Penny','1730-great-britain-1-2-penny',52,0,866,'Item',NULL,NULL,NULL,'2010-12-03 14:10:38','2011-03-17 18:21:23');
INSERT INTO `nodes` VALUES (356,'Vespasian gold aureus (ad 69-79) posthumous issue','Vespasian gold aureus (ad 69-79) posthumous issue','vespasian-gold-aureus-ad-69-79-posthumous-issue-0',32,1,1033,'Item',NULL,NULL,122,'2010-12-03 14:11:09','2010-12-03 14:11:09');
INSERT INTO `nodes` VALUES (357,'Vetranio, 350 a.d.  bronze centenionalis','Vetranio, 350 a.d.  bronze centenionalis','vetranio-350-a-d-bronze-centenionalis-0',32,1,1054,'Item',NULL,NULL,123,'2010-12-03 14:11:55','2010-12-03 14:11:55');
INSERT INTO `nodes` VALUES (358,'Victorinus (269-270 ad) ae antoninianus pax aug','Victorinus (269-270 ad) ae antoninianus pax aug','victorinus-269-270-ad-ae-antoninianus-pax-aug-0',32,1,875,'Item',NULL,NULL,124,'2010-12-03 14:12:46','2010-12-03 14:12:46');
INSERT INTO `nodes` VALUES (359,'Victorinus, pax aug ae antoninianus, cologne','Victorinus, pax aug ae antoninianus, cologne','victorinus-pax-aug-ae-antoninianus-cologne-0',32,1,874,'Item',NULL,NULL,125,'2010-12-03 14:13:10','2010-12-03 14:13:10');
INSERT INTO `nodes` VALUES (360,'Vitellius (69ad)  silver denarius','Vitellius (69ad)  silver denarius','vitellius-69ad-silver-denarius-0',32,1,1031,'Item',NULL,NULL,126,'2010-12-03 14:14:26','2010-12-03 14:14:26');
INSERT INTO `nodes` VALUES (361,'Vitellius, concordia (69 a.d.)  gold aureus','Vitellius, concordia (69 a.d.)  gold aureus','vitellius-concordia-69-a-d-gold-aureus-0',32,1,1047,'Item',NULL,NULL,127,'2010-12-03 14:15:14','2010-12-03 14:15:14');
INSERT INTO `nodes` VALUES (362,'Zeno (474-491ad) gold tremissis','Zeno (474-491ad) gold tremissis','zeno-474-491ad-gold-tremissis-0',32,1,1417,'Item',NULL,NULL,128,'2010-12-03 14:15:58','2010-12-03 14:15:58');
INSERT INTO `nodes` VALUES (363,'(marcus brutus) q.s. caepio brutus, 54 b.c., silver denarius','(marcus brutus) q.s. caepio brutus, 54 b.c., silver denarius','marcus-brutus-q-s-caepio-brutus-54-b-c-silver-denarius-0',33,1,1188,'Item',NULL,NULL,130,'2010-12-03 14:16:49','2010-12-03 14:16:49');
INSERT INTO `nodes` VALUES (364,'(marcus brutus) q.s. caepio brutus, 58 b.c., silver denarius','(marcus brutus) q.s. caepio brutus, 58 b.c., silver denarius','marcus-brutus-q-s-caepio-brutus-58-b-c-silver-denarius-0',33,1,1190,'Item',NULL,NULL,131,'2010-12-03 14:17:57','2010-12-03 14:17:57');
INSERT INTO `nodes` VALUES (365,'Claudius-antonia , billon tetradrachm, (41-42ad)','Claudius-antonia , billon tetradrachm, (41-42ad)','claudius-antonia-billon-tetradrachm-41-42ad',33,0,1403,'Item',NULL,NULL,NULL,'2010-12-03 14:18:52','2011-01-10 20:58:14');
INSERT INTO `nodes` VALUES (366,'Julius caesar (46-45 bc) silver denarius/spanish mint','Julius caesar (46-45 bc) silver denarius/spanish mint','julius-caesar-46-45-bc-silver-denarius-spanish-mint-0',33,1,1167,'Item',NULL,NULL,132,'2010-12-03 14:19:40','2010-12-03 14:19:40');
INSERT INTO `nodes` VALUES (367,'Julius caesar gold aureus (46bc)','Julius caesar gold aureus (46bc)','julius-caesar-gold-aureus-46bc',33,0,1426,'Item',NULL,NULL,NULL,'2010-12-03 14:20:32','2011-03-09 22:15:16');
INSERT INTO `nodes` VALUES (368,'Julius caesar silver denarius (c.48/7 b.c.)','Julius caesar silver denarius (c.48/7 b.c.)','julius-caesar-silver-denarius-c-48-7-b-c',33,0,1427,'Item',NULL,NULL,NULL,'2010-12-03 14:20:56','2011-02-12 15:07:30');
INSERT INTO `nodes` VALUES (369,'Julius caesar, c.46 bc, gold aureus','Julius caesar, c.46 bc, gold aureus','julius-caesar-c-46-bc-gold-aureus',33,0,1289,'Item',NULL,NULL,NULL,'2010-12-03 14:21:47','2011-03-09 22:15:44');
INSERT INTO `nodes` VALUES (370,'L. calpurnius piso, 90 b.c., silver denarius','L. calpurnius piso, 90 b.c., silver denarius','l-calpurnius-piso-90-b-c-silver-denarius-0',33,1,1192,'Item',NULL,NULL,133,'2010-12-03 14:22:46','2010-12-03 14:22:46');
INSERT INTO `nodes` VALUES (371,'Mn. fonteius (85 b.c.) silver denarius','Mn. fonteius (85 b.c.) silver denarius','mn-fonteius-85-b-c-silver-denarius-0',33,1,1191,'Item',NULL,NULL,134,'2010-12-03 14:23:28','2010-12-03 14:23:28');
INSERT INTO `nodes` VALUES (372,'L. censorinus, c.82 b..c., silver denarius','L. censorinus, c.82 b..c., silver denarius','l-censorinus-c-82-b-c-silver-denarius',33,0,1260,'Item',NULL,NULL,NULL,'2010-12-03 14:24:45','2011-03-17 18:43:01');
INSERT INTO `nodes` VALUES (373,'Q.s. caepio brutus (m. junius brutus) silver denarius (54.b.c)','Q.s. caepio brutus (m. junius brutus) silver denarius (54.b.c)','q-s-caepio-brutus-m-junius-brutus-silver-denarius-54-b-c-0',33,1,1344,'Item',NULL,NULL,135,'2010-12-03 14:25:27','2010-12-03 14:25:27');
INSERT INTO `nodes` VALUES (374,'Sabinus (89 b.c.) silver denarius \"rape of sabines\"','Sabinus (89 b.c.) silver denarius \"rape of sabines\"','sabinus-89-b-c-silver-denarius-rape-of-sabines-0',33,1,1185,'Item',NULL,NULL,136,'2010-12-03 14:26:10','2010-12-03 14:26:10');
INSERT INTO `nodes` VALUES (375,'1995 us proof set in 1994!','1995 us proof set in 1994!','1995-us-proof-set-in-1994',13,1,625,'Item',NULL,NULL,477,'2010-12-03 14:27:28','2011-01-25 17:37:29');
INSERT INTO `nodes` VALUES (376,'AH-1313 (c.1934)  Silver ABBASI','AH-1313 (c.1934)  Silver ABBASI','ah-1313-c-1934-silver-abbasi',34,1,576,'Item',NULL,NULL,153,'2010-12-03 14:37:05','2011-03-17 16:38:42');
INSERT INTO `nodes` VALUES (377,'AH-1313 (c.1934) Silver HALF RUPEE','AH-1313 (c.1934) Silver HALF RUPEE','ah-1313-c-1934-silver-half-rupee',34,1,575,'Item',NULL,NULL,154,'2010-12-03 14:37:40','2011-03-17 16:37:14');
INSERT INTO `nodes` VALUES (378,'AH-1313 (c.1934) Silver RUPEE','AH-1313 (c.1934) Silver RUPEE','ah-1313-c-1934-silver-rupee',34,1,574,'Item',NULL,NULL,155,'2010-12-03 14:38:29','2011-03-17 16:40:31');
INSERT INTO `nodes` VALUES (379,'1921 ONE PENNY  \"common wealth of australia\"','1921 ONE PENNY  \"common wealth of australia\"','1921-one-penny-common-wealth-of-australia',36,1,1155,'Item',NULL,NULL,158,'2010-12-03 14:40:03','2011-03-17 16:41:58');
INSERT INTO `nodes` VALUES (380,'1946 australia penny','1946 australia penny','1946-australia-penny-0',36,1,1438,'Item',NULL,NULL,159,'2010-12-03 14:40:49','2010-12-03 14:40:49');
INSERT INTO `nodes` VALUES (381,'1885 austria silver florin','1885 austria silver florin','1885-austria-silver-florin',37,0,1449,'Item',NULL,NULL,NULL,'2010-12-03 14:42:48','2011-03-17 17:09:26');
INSERT INTO `nodes` VALUES (382,'1707 silver 1/2 thaler','1707 silver 1/2 thaler','1707-silver-1-2-thaler-0',91,1,1442,'Item',NULL,NULL,163,'2010-12-03 14:43:41','2010-12-03 14:43:41');
INSERT INTO `nodes` VALUES (383,'1757  silver 1-kreuzer','1757  silver 1-kreuzer','1757-silver-1-kreuzer-0',91,1,863,'Item',NULL,NULL,164,'2010-12-03 14:45:02','2010-12-03 14:45:02');
INSERT INTO `nodes` VALUES (384,'1848 Silver 2.5 FRANC  \"Small Head\"','1848 Silver 2.5 FRANC  \"Small Head\"','1848-silver-2-5-franc-small-head',38,1,1441,'Item',NULL,NULL,167,'2010-12-03 14:46:15','2011-03-17 17:12:24');
INSERT INTO `nodes` VALUES (385,'1944 Silver 50-FRANCS  \"Belgian-Congo\"','1944 Silver 50-FRANCS  \"Belgian-Congo\"','1944-silver-50-francs-belgian-congo',38,0,1371,'Item',NULL,NULL,NULL,'2010-12-03 14:46:59','2011-03-17 17:13:32');
INSERT INTO `nodes` VALUES (386,'Bolivia','Bolivia','bolivia',14,1,119,'Category',NULL,NULL,168,'2010-12-03 14:47:32','2010-12-03 14:47:32');
INSERT INTO `nodes` VALUES (387,'1821-Rio Silver 960 REIS','1821-Rio Silver 960 REIS','1821-rio-silver-960-reis',39,1,117,'Item',NULL,NULL,171,'2010-12-03 14:49:25','2011-03-17 16:12:31');
INSERT INTO `nodes` VALUES (388,'1935 Aluminum Bronze 500-REIS','1935 Aluminum Bronze 500-REIS','1935-aluminum-bronze-500-reis',39,1,194,'Item',NULL,NULL,172,'2010-12-03 14:50:03','2011-03-17 16:14:38');
INSERT INTO `nodes` VALUES (389,'(1596-1605) 4-reales  \"cob style\"','(1596-1605) 4-reales  \"cob style\"','1596-1605-4-reales-cob-style',386,0,1445,'Item',NULL,NULL,NULL,'2010-12-03 14:51:15','2011-03-17 17:15:12');
INSERT INTO `nodes` VALUES (390,'1808-pts pj silver 4-reales','1808-pts pj silver 4-reales','1808-pts-pj-silver-4-reales',606,1,1444,'Item',NULL,NULL,384,'2010-12-03 14:52:01','2011-03-16 14:45:38');
INSERT INTO `nodes` VALUES (393,'1778-MO FF 8-Reales  \"El Cazador\"','1778-MO FF 8-Reales  \"El Cazador\"','1778-mo-ff-8-reales-el-cazador',606,1,1430,'Item',NULL,NULL,385,'2010-12-03 16:32:46','2011-01-04 17:22:41');
INSERT INTO `nodes` VALUES (394,'1782-MO FF Mexico Silver 2-Real','1782-MO FF Mexico Silver 2-Real','1782-mo-ff-mexico-silver-2-real',606,1,1431,'Item',NULL,NULL,386,'2010-12-03 16:34:21','2011-01-04 17:22:49');
INSERT INTO `nodes` VALUES (395,'1783-MO FF 8-Reales  \"El Cazador\" shipwreck','1783-MO FF 8-Reales  \"El Cazador\" shipwreck','1783-mo-ff-8-reales-el-cazador-shipwreck',606,1,1429,'Item',NULL,NULL,387,'2010-12-03 16:36:10','2011-01-04 17:21:21');
INSERT INTO `nodes` VALUES (396,'1793NR JJ COLOMBIA Gold 8-Escudo','1793NR JJ COLOMBIA Gold 8-Escudo','1793nr-jj-colombia-gold-8-escudo',606,1,1474,'Item',NULL,NULL,388,'2010-12-03 16:37:44','2011-03-08 17:30:47');
INSERT INTO `nodes` VALUES (397,'1790-PTS PR Bolivia GOLD 8-Escudo','1790-PTS PR Bolivia GOLD 8-Escudo','1790-pts-pr-bolivia-gold-8-escudo',606,0,1475,'Item',NULL,NULL,NULL,'2010-12-03 16:40:56','2011-03-08 17:32:17');
INSERT INTO `nodes` VALUES (398,'1875-CC Twenty-Cent Piece','1875-CC Twenty-Cent Piece','1875-cc-twenty-cent-piece',607,1,1136,'Item',NULL,NULL,407,'2010-12-03 16:42:13','2011-01-04 17:19:22');
INSERT INTO `nodes` VALUES (399,'1879 Silver Metric Dollar (j-1618)','1879 Silver Metric Dollar (j-1618)','1879-silver-metric-dollar-j-1618',608,1,1336,'Item',NULL,NULL,459,'2010-12-03 16:43:53','2011-01-04 17:19:31');
INSERT INTO `nodes` VALUES (401,'1667 silver luigino from fosdinovo italy','1667 silver luigino from fosdinovo italy','1667-silver-luigino-from-fosdinovo-italy-0',18,1,647,'Item',NULL,NULL,474,'2010-12-03 16:50:08','2010-12-03 16:52:51');
INSERT INTO `nodes` VALUES (402,'1667 Silver Luiginos of Fosdinovo, Italy','1667 Silver Luiginos of Fosdinovo, Italy','1667-silver-luiginos-of-fosdinovo-italy-0',18,1,648,'Item',NULL,NULL,475,'2010-12-03 16:51:50','2010-12-03 16:52:27');
INSERT INTO `nodes` VALUES (403,'1733 Gold Carolin of Wurttemberg','1733 Gold Carolin of Wurttemberg','1733-gold-carolin-of-wurttemberg',16,1,680,'Item',NULL,NULL,479,'2010-12-03 16:59:03','2011-01-25 02:33:52');
INSERT INTO `nodes` VALUES (404,'297-281 BC Face of Alexander the Great','297-281 BC Face of Alexander the Great','297-281-bc-face-of-alexander-the-great',16,1,675,'Item',NULL,NULL,480,'2010-12-03 17:03:16','2011-01-25 02:41:45');
INSERT INTO `nodes` VALUES (405,'641-668 AD Constans II Solidus','641-668 AD Constans II Solidus','641-668-ad-constans-ii-solidus',16,1,676,'Item',NULL,NULL,481,'2010-12-03 17:05:16','2011-01-25 02:40:11');
INSERT INTO `nodes` VALUES (406,'Love Tokens Seated Liberty Dimes as Pin Bar','Love Tokens Seated Liberty Dimes as Pin Bar','love-tokens-seated-liberty-dimes-as-pin-bar',16,1,1120,'Item',NULL,NULL,482,'2010-12-03 17:07:24','2011-01-25 02:29:45');
INSERT INTO `nodes` VALUES (407,'Modern Engraved Bloodstone Helios','Modern Engraved Bloodstone Helios','modern-engraved-bloodstone-helios',16,1,677,'Item',NULL,NULL,483,'2010-12-03 17:08:46','2011-01-25 02:43:44');
INSERT INTO `nodes` VALUES (408,'1035-1060 AD Silver Ireland Penny','1035-1060 AD Silver Ireland Penny','1035-1060-ad-silver-ireland-penny-0',84,1,250,'Item',NULL,NULL,142,'2010-12-03 22:53:03','2010-12-03 22:53:03');
INSERT INTO `nodes` VALUES (409,'1042-1066 Silver Penny of Edward the Confessor','1042-1066 Silver Penny of Edward the Confessor','1042-1066-silver-penny-of-edward-the-confessor',83,0,239,'Item',NULL,NULL,NULL,'2010-12-03 22:55:21','2011-03-17 18:24:52');
INSERT INTO `nodes` VALUES (410,'1042-66 Silver Penny \"Edward the Confessor\"','1042-66 Silver Penny \"Edward the Confessor\"','1-1042-66-silver-penny-edward-the-confessor',83,0,949,'Item',NULL,NULL,NULL,'2010-12-03 22:56:58','2011-03-17 18:25:12');
INSERT INTO `nodes` VALUES (411,'1526-1532 Henry 8th Two Pence','1526-1532 Henry 8th Two Pence','1526-1532-henry-8th-two-pence',83,0,616,'Item',NULL,NULL,NULL,'2010-12-03 23:01:17','2011-03-17 18:25:31');
INSERT INTO `nodes` VALUES (412,'737-758 AD Silver Sceat of Eadberht of Northumbria','737-758 AD Silver Sceat of Eadberht of Northumbria','737-758-ad-silver-sceat-of-eadberht-of-northumbria-0',83,1,238,'Item',NULL,NULL,139,'2010-12-03 23:04:40','2010-12-03 23:08:07');
INSERT INTO `nodes` VALUES (413,'810-814 Silver Sceat Vilheah-Eanred','810-814 Silver Sceat Vilheah-Eanred','810-814-silver-sceat-vilheah-eanred',83,1,950,'Item',NULL,NULL,140,'2010-12-03 23:10:18','2011-03-17 18:27:29');
INSERT INTO `nodes` VALUES (414,'898-915 Ad Silver Penny of Siefred the Viking','898-915 Ad Silver Penny of Siefred the Viking','898-915-ad-silver-penny-of-siefred-the-viking',83,0,254,'Item',NULL,NULL,NULL,'2010-12-03 23:11:49','2011-03-17 18:26:07');
INSERT INTO `nodes` VALUES (415,'C.710-760 Silver Sceat  (Kent, s-797)','C.710-760 Silver Sceat  (Kent, s-797)','c-710-760-silver-sceat-kent-s-797',83,0,951,'Item',NULL,NULL,NULL,'2010-12-03 23:13:59','2011-03-17 18:26:25');
INSERT INTO `nodes` VALUES (416,'C.710-760 Silver Sceat \"Secondary Sceattas\"','C.710-760 Silver Sceat \"Secondary Sceattas\"','c-710-760-silver-sceat-secondary-sceattas',83,0,952,'Item',NULL,NULL,NULL,'2010-12-03 23:17:13','2011-03-17 18:26:43');
INSERT INTO `nodes` VALUES (417,'375AD Gold Barbaric Solidus','375AD Gold Barbaric Solidus','375ad-gold-barbaric-solidus-0',17,1,543,'Item',NULL,NULL,145,'2010-12-04 01:46:49','2010-12-04 01:46:49');
INSERT INTO `nodes` VALUES (418,'1412-1420AD Silver Denar of Ludwig II','1412-1420AD Silver Denar of Ludwig II','1412-1420ad-silver-denar-of-ludwig-ii',17,0,643,'Item',NULL,NULL,NULL,'2010-12-04 01:48:36','2011-03-17 18:50:23');
INSERT INTO `nodes` VALUES (419,'1513-1521 Gold Zecch','1513-1521 Gold Zecch','1513-1521-gold-zecch-0',17,1,1465,'Item',NULL,NULL,146,'2010-12-04 01:50:15','2010-12-04 01:50:15');
INSERT INTO `nodes` VALUES (420,'947-977 AD Gold Dinar of the Buwayid Dynasty','947-977 AD Gold Dinar of the Buwayid Dynasty','947-977-ad-gold-dinar-of-the-buwayid-dynasty-0',17,1,234,'Item',NULL,NULL,147,'2010-12-04 01:51:43','2010-12-04 01:51:43');
INSERT INTO `nodes` VALUES (421,'954-961AD Gold Dinar of Abd Al Malik (Sultan)','954-961AD Gold Dinar of Abd Al Malik (Sultan)','954-961ad-gold-dinar-of-abd-al-malik-sultan',34,1,368,'Item',NULL,NULL,152,'2010-12-04 01:53:46','2011-03-17 18:52:03');
INSERT INTO `nodes` VALUES (422,'786-809AD Gold Dinar','786-809AD Gold Dinar','786-809ad-gold-dinar-0',17,1,1213,'Item',NULL,NULL,148,'2010-12-04 01:56:05','2010-12-04 01:56:05');
INSERT INTO `nodes` VALUES (423,'N. India-Kidarites Vinayaditya-el Stater','N. India-Kidarites Vinayaditya-el Stater','n-india-kidarites-vinayaditya-el-stater-0',17,1,1382,'Item',NULL,NULL,149,'2010-12-04 01:58:28','2010-12-04 01:58:28');
INSERT INTO `nodes` VALUES (424,'1855  silver 1/2 rigsdaler  (pq!! color)','1855  silver 1/2 rigsdaler  (pq!! color)','1855-silver-1-2-rigsdaler-pq-color',44,0,773,'Item',NULL,NULL,NULL,'2010-12-06 13:48:00','2011-03-17 17:23:27');
INSERT INTO `nodes` VALUES (425,'1878 copper 1 ore','1878 copper 1 ore','1878-copper-1-ore-0',44,1,610,'Item',NULL,NULL,181,'2010-12-06 13:49:17','2010-12-06 13:49:17');
INSERT INTO `nodes` VALUES (426,'1884 copper 5 ore','1884 copper 5 ore','1884-copper-5-ore-0',44,1,611,'Item',NULL,NULL,182,'2010-12-06 13:50:28','2010-12-06 13:50:28');
INSERT INTO `nodes` VALUES (427,'1277AH (1865) year 4 Copper 4-PARA','1277AH (1865) year 4 Copper 4-PARA','1277ah-1865-year-4-copper-4-para',47,1,518,'Item',NULL,NULL,186,'2010-12-06 13:54:51','2011-03-17 17:27:20');
INSERT INTO `nodes` VALUES (428,'1917 h silver 20 piastres','1917 h silver 20 piastres','1917-h-silver-20-piastres-0',47,1,521,'Item',NULL,NULL,187,'2010-12-06 13:55:55','2010-12-06 13:55:55');
INSERT INTO `nodes` VALUES (429,'1923 silver 10 piastres of fuad i','1923 silver 10 piastres of fuad i','1923-silver-10-piastres-of-fuad-i-0',47,1,522,'Item',NULL,NULL,188,'2010-12-06 13:57:14','2010-12-06 13:57:14');
INSERT INTO `nodes` VALUES (430,'AH-1356 (1937) Silver 10-piastres of FAROUK','AH-1356 (1937) Silver 10-piastres of FAROUK','ah-1356-1937-silver-10-piastres-of-farouk',47,1,523,'Item',NULL,NULL,189,'2010-12-06 13:58:27','2011-03-17 17:28:38');
INSERT INTO `nodes` VALUES (431,'AH1358 (1939) Silver 20- Piastres of FAROUK','AH1358 (1939) Silver 20- Piastres of FAROUK','ah1358-1939-silver-20-piastres-of-farouk',47,1,524,'Item',NULL,NULL,190,'2010-12-06 13:59:38','2011-03-17 17:29:57');
INSERT INTO `nodes` VALUES (432,'Ah1171 (1757) \"gold\" zeri mahbub','Ah1171 (1757) \"gold\" zeri mahbub','ah1171-1757-gold-zeri-mahbub',47,0,770,'Item',NULL,NULL,NULL,'2010-12-06 14:01:06','2011-02-01 15:33:56');
INSERT INTO `nodes` VALUES (433,'Ah444 gold dinar \"fatimids nicol-684\"','Ah444 gold dinar \"fatimids nicol-684\"','ah444-gold-dinar-fatimids-nicol-684',47,1,953,'Item',NULL,NULL,191,'2010-12-06 14:02:16','2011-03-17 17:24:44');
INSERT INTO `nodes` VALUES (434,'Finland','Finland','finland',14,1,120,'Category',NULL,NULL,193,'2010-12-06 14:03:49','2010-12-15 21:27:12');
INSERT INTO `nodes` VALUES (435,'1882-s finland gold 10-markkaa','1882-s finland gold 10-markkaa','1882-s-finland-gold-10-markkaa',434,0,1450,'Item',NULL,NULL,NULL,'2010-12-06 14:05:27','2011-03-17 17:31:00');
INSERT INTO `nodes` VALUES (436,'1553m  silver teston  \"henry ii\"','1553m  silver teston  \"henry ii\"','1553m-silver-teston-henry-ii-0',49,1,1451,'Item',NULL,NULL,196,'2010-12-06 14:07:27','2010-12-06 14:07:27');
INSERT INTO `nodes` VALUES (437,'1786-t gold louis d\'or of louis 16th','1786-t gold louis d\'or of louis 16th','1786-t-gold-louis-d-or-of-louis-16th',49,0,389,'Item',NULL,NULL,NULL,'2010-12-06 14:08:34','2011-03-17 17:31:45');
INSERT INTO `nodes` VALUES (438,'1903-a  50-pfennig','1903-a  50-pfennig','1903-a-50-pfennig',51,1,821,'Item',NULL,NULL,241,'2010-12-06 14:37:43','2011-02-01 23:09:42');
INSERT INTO `nodes` VALUES (439,'1924-f  silver 3-mark','1924-f  silver 3-mark','1924-f-silver-3-mark',51,1,817,'Item',NULL,NULL,242,'2010-12-06 14:38:53','2011-02-01 23:11:09');
INSERT INTO `nodes` VALUES (440,'1927-f 3-mark  \"tubingen university\"','1927-f 3-mark  \"tubingen university\"','1927-f-3-mark-tubingen-university-0',51,1,813,'Item',NULL,NULL,243,'2010-12-06 14:39:49','2010-12-06 14:39:49');
INSERT INTO `nodes` VALUES (441,'1949 d brass 5-pfennig','1949 d brass 5-pfennig','1949-d-brass-5-pfennig',51,1,127,'Item',NULL,NULL,244,'2010-12-06 14:42:24','2011-02-01 23:12:33');
INSERT INTO `nodes` VALUES (442,'1949 f brass 10-pfennig','1949 f brass 10-pfennig','1949-f-brass-10-pfennig-0',51,1,128,'Item',NULL,NULL,245,'2010-12-06 14:43:40','2010-12-06 14:43:40');
INSERT INTO `nodes` VALUES (443,'1744 silver thaler of augsburg','1744 silver thaler of augsburg','1744-silver-thaler-of-augsburg',93,0,182,'Item',NULL,NULL,NULL,'2010-12-06 14:44:49','2011-02-23 15:38:28');
INSERT INTO `nodes` VALUES (444,'1803 1-pfennig','1803 1-pfennig','1803-1-pfennig-0',93,0,778,'Item',NULL,NULL,NULL,'2010-12-06 14:46:04','2010-12-09 19:04:19');
INSERT INTO `nodes` VALUES (445,'1732 silver 30 kreuzer','1732 silver 30 kreuzer','1732-silver-30-kreuzer-0',94,1,283,'Item',NULL,NULL,201,'2010-12-06 14:47:21','2010-12-06 14:47:21');
INSERT INTO `nodes` VALUES (446,'1815 silver thaler  of maximilian joseph','1815 silver thaler  of maximilian joseph','1815-silver-thaler-of-maximilian-joseph-0',94,1,166,'Item',NULL,NULL,202,'2010-12-06 14:48:23','2010-12-06 14:48:23');
INSERT INTO `nodes` VALUES (447,'1824 silver taler (sm. bust & arms)','1824 silver taler (sm. bust & arms)','1824-silver-taler-sm-bust-arms-0',94,1,779,'Item',NULL,NULL,203,'2010-12-06 14:49:31','2010-12-06 14:49:31');
INSERT INTO `nodes` VALUES (448,'1871 bavaria silver thaler','1871 bavaria silver thaler','1871-bavaria-silver-thaler-0',94,1,1453,'Item',NULL,NULL,204,'2010-12-06 14:50:33','2010-12-06 14:50:33');
INSERT INTO `nodes` VALUES (449,'1700  silver 2-mariengroschen','1700  silver 2-mariengroschen','1700-silver-2-mariengroschen-0',96,1,944,'Item',NULL,NULL,207,'2010-12-06 14:52:07','2010-12-06 14:52:07');
INSERT INTO `nodes` VALUES (450,'1704 silver taler \"wildman\" struck over another coin','1704 silver taler \"wildman\" struck over another coin','1704-silver-taler-wildman-struck-over-another-coin-0',97,1,1214,'Item',NULL,NULL,209,'2010-12-06 14:53:30','2010-12-06 14:53:30');
INSERT INTO `nodes` VALUES (451,'1815 fr  1-pfenning','1815 fr  1-pfenning','1815-fr-1-pfenning-0',97,1,781,'Item',NULL,NULL,210,'2010-12-06 14:54:42','2010-12-06 14:54:42');
INSERT INTO `nodes` VALUES (452,'1819 copper heller','1819 copper heller','1819-copper-heller-0',99,1,782,'Item',NULL,NULL,213,'2010-12-06 14:55:45','2010-12-06 14:55:45');
INSERT INTO `nodes` VALUES (453,'1853 gold ducat','1853 gold ducat','1853-gold-ducat-0',99,1,1458,'Item',NULL,NULL,214,'2010-12-06 14:56:40','2010-12-06 14:56:40');
INSERT INTO `nodes` VALUES (454,'1876-j  silver 2-mark','1876-j  silver 2-mark','1876-j-silver-2-mark-0',100,1,1149,'Item',NULL,NULL,217,'2010-12-06 14:58:15','2010-12-06 14:58:15');
INSERT INTO `nodes` VALUES (455,'1731  gold 1/2 ducat friedrich i','1731  gold 1/2 ducat friedrich i','1731-gold-1-2-ducat-friedrich-i',101,0,822,'Item',NULL,NULL,NULL,'2010-12-06 15:00:41','2011-01-06 15:13:45');
INSERT INTO `nodes` VALUES (456,'1743  albus','1743  albus','1743-albus-0',101,1,807,'Item',NULL,NULL,219,'2010-12-06 15:01:55','2010-12-06 15:01:55');
INSERT INTO `nodes` VALUES (457,'1838  silver gulden','1838  silver gulden','1838-silver-gulden-0',102,1,868,'Item',NULL,NULL,221,'2010-12-06 15:03:36','2010-12-06 15:03:36');
INSERT INTO `nodes` VALUES (458,'1764  silver 12-groot','1764  silver 12-groot','1764-silver-12-groot-0',103,1,808,'Item',NULL,NULL,223,'2010-12-06 15:05:24','2010-12-06 15:05:24');
INSERT INTO `nodes` VALUES (459,'Nassau','Nassau','nassau',51,1,121,'Category',NULL,NULL,226,'2010-12-06 15:07:42','2010-12-06 15:07:42');
INSERT INTO `nodes` VALUES (460,'1815-ct  nassau-usingen silver taler','1815-ct  nassau-usingen silver taler','1815-ct-nassau-usingen-silver-taler-0',459,1,1455,'Item',NULL,NULL,227,'2010-12-06 15:08:17','2010-12-06 15:08:17');
INSERT INTO `nodes` VALUES (461,'1756 a silver 1/6 th  thaler of frederick the great','1756 a silver 1/6 th  thaler of frederick the great','1756-a-silver-1-6-th-thaler-of-frederick-the-great-0',107,1,286,'Item',NULL,NULL,230,'2010-12-06 15:11:16','2010-12-06 15:11:16');
INSERT INTO `nodes` VALUES (462,'1814 a silver 1/6 thaler','1814 a silver 1/6 thaler','1814-a-silver-1-6-thaler-0',107,1,266,'Item',NULL,NULL,231,'2010-12-06 15:13:20','2010-12-06 15:13:20');
INSERT INTO `nodes` VALUES (463,'1839 a silver double thaler','1839 a silver double thaler','1839-a-silver-double-thaler-0',107,1,173,'Item',NULL,NULL,232,'2010-12-06 15:14:19','2010-12-06 15:14:19');
INSERT INTO `nodes` VALUES (464,'1855 a silver double thaler','1855 a silver double thaler','1855-a-silver-double-thaler-0',107,0,174,'Item',NULL,NULL,NULL,'2010-12-06 15:15:09','2010-12-27 20:00:18');
INSERT INTO `nodes` VALUES (465,'1929-a  3-mark  \"waldeck-prussia\"','1929-a  3-mark  \"waldeck-prussia\"','1929-a-3-mark-waldeck-prussia-0',107,1,816,'Item',NULL,NULL,233,'2010-12-06 15:16:03','2010-12-06 15:16:03');
INSERT INTO `nodes` VALUES (466,'1831-l  silver gulden','1831-l  silver gulden','1831-l-silver-gulden-0',109,1,869,'Item',NULL,NULL,236,'2010-12-06 15:17:30','2010-12-06 15:17:30');
INSERT INTO `nodes` VALUES (467,'1909-e  silver 3-mark  \"nice color\"','1909-e  silver 3-mark  \"nice color\"','1909-e-silver-3-mark-nice-color-0',110,1,812,'Item',NULL,NULL,238,'2010-12-06 15:18:51','2010-12-06 15:18:51');
INSERT INTO `nodes` VALUES (468,'1941-1942 Set of 20 Colored Glass Portrait, Frosted Intaglios','1941-1942 Set of 20 Colored Glass Portrait, Frosted Intaglios','1941-1942-set-of-20-colored-glass-portrait-frosted-intaglios-0',51,1,20,'Item',NULL,NULL,246,'2010-12-06 15:19:04','2010-12-06 15:19:04');
INSERT INTO `nodes` VALUES (469,'1708  1/2 crown  (esc-578 plumes','1708  1/2 crown  (esc-578 plumes','1708-1-2-crown-esc-578-plumes',52,0,791,'Item',NULL,NULL,NULL,'2010-12-06 15:32:50','2011-03-17 18:16:05');
INSERT INTO `nodes` VALUES (470,'1754 Great Britain 1/2 Penny','1754 Great Britain 1/2 Penny','1-1754-great-britain-1-2-penny',52,1,865,'Item',NULL,NULL,248,'2010-12-06 15:33:47','2011-01-04 17:22:02');
INSERT INTO `nodes` VALUES (471,'1835  1/3 farthing','1835  1/3 farthing','1835-1-3-farthing-0',52,1,783,'Item',NULL,NULL,249,'2010-12-06 15:34:51','2010-12-06 15:34:51');
INSERT INTO `nodes` VALUES (472,'1853  1-penny  (plain trident)','1853  1-penny  (plain trident)','1853-1-penny-plain-trident-0',52,1,786,'Item',NULL,NULL,250,'2010-12-06 15:35:55','2010-12-06 15:35:55');
INSERT INTO `nodes` VALUES (473,'1855 1-penny  (plain trident)','1855 1-penny  (plain trident)','1855-1-penny-plain-trident-0',52,1,828,'Item',NULL,NULL,251,'2010-12-06 15:36:45','2010-12-06 15:36:45');
INSERT INTO `nodes` VALUES (474,'1789 ad silver rupee of tipu sultan/mysore','1789 ad silver rupee of tipu sultan/mysore','1789-ad-silver-rupee-of-tipu-sultan-mysore-0',58,1,488,'Item',NULL,NULL,259,'2010-12-06 15:39:30','2010-12-06 15:39:30');
INSERT INTO `nodes` VALUES (475,'North India, kidarites vinayaditya,, el stater','North India, kidarites vinayaditya,, el stater','north-india-kidarites-vinayaditya-el-stater-0',58,1,1381,'Item',NULL,NULL,260,'2010-12-06 15:45:06','2010-12-06 15:45:06');
INSERT INTO `nodes` VALUES (476,'(ah433-443) kakwayhid gold dinar isbahan/faramurz','(ah433-443) kakwayhid gold dinar isbahan/faramurz','ah433-443-kakwayhid-gold-dinar-isbahan-faramurz-0',59,1,974,'Item',NULL,NULL,262,'2010-12-06 15:46:56','2010-12-06 15:46:56');
INSERT INTO `nodes` VALUES (477,'1914/24 gold 5000 dinars','1914/24 gold 5000 dinars','1914-24-gold-5000-dinars-0',59,1,747,'Item',NULL,NULL,263,'2010-12-06 15:47:58','2010-12-06 15:47:58');
INSERT INTO `nodes` VALUES (478,'1915 gold 2000 dinars','1915 gold 2000 dinars','1915-gold-2000-dinars-0',59,1,743,'Item',NULL,NULL,264,'2010-12-06 15:48:53','2010-12-06 15:48:53');
INSERT INTO `nodes` VALUES (479,'1915 gold toman of ahmad shah','1915 gold toman of ahmad shah','1915-gold-toman-of-ahmad-shah-0',59,1,724,'Item',NULL,NULL,265,'2010-12-06 15:50:05','2010-12-06 15:50:05');
INSERT INTO `nodes` VALUES (480,'1918 gold 5000 dinars of ahmad shah','1918 gold 5000 dinars of ahmad shah','1918-gold-5000-dinars-of-ahmad-shah-0',59,1,725,'Item',NULL,NULL,266,'2010-12-06 15:51:07','2010-12-06 15:51:07');
INSERT INTO `nodes` VALUES (481,'1944 gold half pahlevi','1944 gold half pahlevi','1944-gold-half-pahlevi-0',59,1,721,'Item',NULL,NULL,267,'2010-12-06 15:52:01','2010-12-06 15:52:01');
INSERT INTO `nodes` VALUES (482,'1950 gold pahlevi','1950 gold pahlevi','1950-gold-pahlevi-0',59,1,741,'Item',NULL,NULL,268,'2010-12-06 15:52:56','2010-12-06 15:52:56');
INSERT INTO `nodes` VALUES (483,'1955 gold 1/2 pahlevi','1955 gold 1/2 pahlevi','1955-gold-1-2-pahlevi-0',59,1,749,'Item',NULL,NULL,269,'2010-12-06 15:54:46','2010-12-06 15:54:46');
INSERT INTO `nodes` VALUES (484,'1979 1/4 gold pahlevi','1979 1/4 gold pahlevi','1979-1-4-gold-pahlevi-0',59,1,1410,'Item',NULL,NULL,270,'2010-12-06 16:08:49','2010-12-06 16:08:49');
INSERT INTO `nodes` VALUES (485,'1979 gold half pahlevi','1979 gold half pahlevi','1979-gold-half-pahlevi-0',59,1,751,'Item',NULL,NULL,271,'2010-12-06 16:10:31','2010-12-06 16:10:31');
INSERT INTO `nodes` VALUES (486,'1979 gold pahlevi','1979 gold pahlevi','1979-gold-pahlevi-0',59,1,750,'Item',NULL,NULL,272,'2010-12-06 16:12:36','2010-12-06 16:12:36');
INSERT INTO `nodes` VALUES (487,'1979 gold quarter pahlevi','1979 gold quarter pahlevi','1979-gold-quarter-pahlevi-0',59,1,720,'Item',NULL,NULL,273,'2010-12-06 16:14:05','2010-12-06 16:14:05');
INSERT INTO `nodes` VALUES (488,'1991 gold fourth azadi of islamic republic','1991 gold fourth azadi of islamic republic','1991-gold-fourth-azadi-of-islamic-republic-0',59,1,727,'Item',NULL,NULL,274,'2010-12-06 16:15:07','2010-12-06 16:15:07');
INSERT INTO `nodes` VALUES (489,'Sh1312(1933) silver rial','Sh1312(1933) silver rial','sh1312-1933-silver-rial-0',59,1,956,'Item',NULL,NULL,275,'2010-12-06 16:16:30','2010-12-06 16:16:30');
INSERT INTO `nodes` VALUES (490,'Sh1315(1936) 1/4 silver rials','Sh1315(1936) 1/4 silver rials','sh1315-1936-1-4-silver-rials-0',59,1,955,'Item',NULL,NULL,276,'2010-12-06 16:17:42','2010-12-06 16:17:42');
INSERT INTO `nodes` VALUES (491,'(1035-60)  penny  \"hiberno-norse\"','(1035-60)  penny  \"hiberno-norse\"','1035-60-penny-hiberno-norse-0',60,1,833,'Item',NULL,NULL,278,'2010-12-06 16:22:17','2010-12-06 16:22:17');
INSERT INTO `nodes` VALUES (492,'1689 6-pence  james ii  \"gun money\"','1689 6-pence  james ii  \"gun money\"','1689-6-pence-james-ii-gun-money-0',60,1,834,'Item',NULL,NULL,279,'2010-12-06 16:23:13','2010-12-06 16:23:13');
INSERT INTO `nodes` VALUES (493,'1940 bronze 1/2 penny','1940 bronze 1/2 penny','1940-bronze-1-2-penny-0',60,1,841,'Item',NULL,NULL,280,'2010-12-06 16:24:09','2010-12-06 16:24:09');
INSERT INTO `nodes` VALUES (494,'1882-r  2-lire','1882-r  2-lire','1882-r-2-lire-0',62,1,792,'Item',NULL,NULL,294,'2010-12-06 16:36:17','2010-12-06 16:36:17');
INSERT INTO `nodes` VALUES (495,'1915-r  copper centesimo','1915-r  copper centesimo','1915-r-copper-centesimo-0',62,1,845,'Item',NULL,NULL,295,'2010-12-06 16:37:21','2010-12-06 16:37:21');
INSERT INTO `nodes` VALUES (496,'1922 r  nickel lira','1922 r  nickel lira','1922-r-nickel-lira-0',62,1,572,'Item',NULL,NULL,296,'2010-12-06 16:38:05','2010-12-06 16:38:05');
INSERT INTO `nodes` VALUES (497,'1924-r  nickel lira','1924-r  nickel lira','1924-r-nickel-lira-0',62,1,195,'Item',NULL,NULL,297,'2010-12-06 16:42:58','2010-12-06 16:42:58');
INSERT INTO `nodes` VALUES (498,'1928-r lira (good date)','1928-r lira (good date)','1928-r-lira-good-date-0',62,1,1414,'Item',NULL,NULL,298,'2010-12-06 16:44:06','2010-12-06 16:44:06');
INSERT INTO `nodes` VALUES (499,'1252-1422 a.d. gold florin','1252-1422 a.d. gold florin','1252-1422-a-d-gold-florin-0',113,1,544,'Item',NULL,NULL,284,'2010-12-06 16:45:45','2010-12-06 16:45:45');
INSERT INTO `nodes` VALUES (500,'1667 silver luigino','1667 silver luigino','1667-silver-luigino-0',114,1,638,'Item',NULL,NULL,286,'2010-12-06 16:47:02','2010-12-06 16:47:02');
INSERT INTO `nodes` VALUES (501,'1667-a silver luigin','1667-a silver luigin','1667-a-silver-luigin',114,1,1413,'Item',NULL,NULL,287,'2010-12-06 16:48:05','2011-02-25 21:24:31');
INSERT INTO `nodes` VALUES (502,'1764 vii gold zecchino','1764 vii gold zecchino','1764-vii-gold-zecchino-0',115,1,1460,'Item',NULL,NULL,289,'2010-12-06 16:49:26','2010-12-06 16:49:26');
INSERT INTO `nodes` VALUES (503,'1824  copper quattrino','1824  copper quattrino','1824-copper-quattrino-0',115,1,793,'Item',NULL,NULL,290,'2010-12-06 16:50:35','2010-12-06 16:50:35');
INSERT INTO `nodes` VALUES (504,'1368-1400 silver solidino','1368-1400 silver solidino','1368-1400-silver-solidino-0',117,1,415,'Item',NULL,NULL,293,'2010-12-06 16:52:12','2010-12-06 16:52:12');
INSERT INTO `nodes` VALUES (505,'1871 silver 5 sen','1871 silver 5 sen','1871-silver-5-sen-0',63,1,650,'Item',NULL,NULL,300,'2010-12-06 16:54:09','2010-12-06 16:54:09');
INSERT INTO `nodes` VALUES (506,'1873 bronze sen','1873 bronze sen','1873-bronze-sen-0',63,1,651,'Item',NULL,NULL,301,'2010-12-06 16:54:55','2010-12-06 16:54:55');
INSERT INTO `nodes` VALUES (507,'1873 silver 5 sen','1873 silver 5 sen','1873-silver-5-sen-0',63,1,652,'Item',NULL,NULL,302,'2010-12-06 16:55:58','2010-12-06 16:55:58');
INSERT INTO `nodes` VALUES (508,'1892 silver yen meiji 25','1892 silver yen meiji 25','1892-silver-yen-meiji-25-0',63,1,644,'Item',NULL,NULL,303,'2010-12-06 16:56:51','2010-12-06 16:56:51');
INSERT INTO `nodes` VALUES (509,'C.1700-1800 gold 2-shu  \"province of koshu','C.1700-1800 gold 2-shu  \"province of koshu','c-1700-1800-gold-2-shu-province-of-koshu-0',63,1,1146,'Item',NULL,NULL,304,'2010-12-06 16:57:47','2010-12-06 16:57:47');
INSERT INTO `nodes` VALUES (510,'1862  copper cent','1862  copper cent','1862-copper-cent-0',64,1,846,'Item',NULL,NULL,306,'2010-12-06 16:58:56','2010-12-06 16:58:56');
INSERT INTO `nodes` VALUES (511,'1769-mo mf  silver 4-reales','1769-mo mf  silver 4-reales','1769-mo-mf-silver-4-reales-0',66,1,1463,'Item',NULL,NULL,309,'2010-12-06 17:01:06','2010-12-06 17:01:06');
INSERT INTO `nodes` VALUES (512,'1813-mo jj  silver 1/2 real','1813-mo jj  silver 1/2 real','1813-mo-jj-silver-1-2-real-0',66,1,795,'Item',NULL,NULL,310,'2010-12-06 17:03:05','2010-12-06 17:03:05');
INSERT INTO `nodes` VALUES (513,'1863-zs mo  silver 4-reales','1863-zs mo  silver 4-reales','1863-zs-mo-silver-4-reales-0',66,1,848,'Item',NULL,NULL,311,'2010-12-06 17:04:00','2010-12-06 17:04:00');
INSERT INTO `nodes` VALUES (514,'1900 mo  silver 20 centavos','1900 mo  silver 20 centavos','1900-mo-silver-20-centavos-0',66,1,514,'Item',NULL,NULL,312,'2010-12-06 17:04:52','2010-12-06 17:04:52');
INSERT INTO `nodes` VALUES (515,'1900-mo m  gold peso','1900-mo m  gold peso','1900-mo-m-gold-peso-0',66,1,1462,'Item',NULL,NULL,313,'2010-12-06 17:05:54','2010-12-06 17:05:54');
INSERT INTO `nodes` VALUES (517,'1905-m  5-centavos','1905-m  5-centavos','1905-m-5-centavos-0',66,1,801,'Item',NULL,NULL,314,'2010-12-06 17:07:58','2010-12-06 17:07:58');
INSERT INTO `nodes` VALUES (518,'1918-mo  5-centavos','1918-mo  5-centavos','1918-mo-5-centavos-0',66,1,802,'Item',NULL,NULL,315,'2010-12-06 17:08:55','2010-12-06 17:08:55');
INSERT INTO `nodes` VALUES (520,'1672 klippe silver siege coin','1672 klippe silver siege coin','1672-klippe-silver-siege-coin-0',67,1,511,'Item',NULL,NULL,317,'2010-12-06 17:11:11','2010-12-06 17:11:11');
INSERT INTO `nodes` VALUES (521,'1944-d silver 2.5 gulden','1944-d silver 2.5 gulden','1944-d-silver-2-5-gulden-0',67,1,1121,'Item',NULL,NULL,318,'2010-12-06 17:12:06','2010-12-06 17:12:06');
INSERT INTO `nodes` VALUES (522,'1783 circa gold zeri mahbub of abdul hamid i','1783 circa gold zeri mahbub of abdul hamid i','1783-circa-gold-zeri-mahbub-of-abdul-hamid-i',69,1,281,'Item',NULL,NULL,322,'2010-12-06 17:13:49','2011-02-10 16:37:21');
INSERT INTO `nodes` VALUES (523,'1910 gold 5 soles','1910 gold 5 soles','1910-gold-5-soles-0',71,1,517,'Item',NULL,NULL,325,'2010-12-06 17:15:08','2010-12-06 17:15:08');
INSERT INTO `nodes` VALUES (524,'1969 gold 50 soles','1969 gold 50 soles','1969-gold-50-soles-0',71,1,111,'Item',NULL,NULL,326,'2010-12-06 17:16:05','2010-12-06 17:16:05');
INSERT INTO `nodes` VALUES (525,'1898 silver 100 reis','1898 silver 100 reis','1898-silver-100-reis-0',122,1,37,'Item',NULL,NULL,333,'2010-12-06 17:18:37','2010-12-06 17:18:37');
INSERT INTO `nodes` VALUES (526,'1899 silver 1000 reis','1899 silver 1000 reis','1899-silver-1000-reis-0',122,1,9,'Item',NULL,NULL,334,'2010-12-06 17:19:57','2010-12-06 17:19:57');
INSERT INTO `nodes` VALUES (527,'1960 silver 10 escudos','1960 silver 10 escudos','1960-silver-10-escudos-0',122,0,164,'Item',NULL,NULL,NULL,'2010-12-06 17:21:04','2010-12-06 17:21:04');
INSERT INTO `nodes` VALUES (528,'1960 silver 5 escudo','1960 silver 5 escudo','1960-silver-5-escudo-0',122,1,162,'Item',NULL,NULL,335,'2010-12-06 17:23:17','2010-12-06 17:23:17');
INSERT INTO `nodes` VALUES (529,'1952 1/4 rupia','1952 1/4 rupia','1952-1-4-rupia-0',124,1,832,'Item',NULL,NULL,338,'2010-12-06 17:24:27','2010-12-06 17:24:27');
INSERT INTO `nodes` VALUES (530,'1948 copper nickel escudo','1948 copper nickel escudo','1948-copper-nickel-escudo-0',125,1,42,'Item',NULL,NULL,340,'2010-12-06 17:25:50','2010-12-06 17:25:50');
INSERT INTO `nodes` VALUES (531,'1896 pgv silver 420-centavos','1896 pgv silver 420-centavos','1896-pgv-silver-420-centavos-0',73,1,1464,'Item',NULL,NULL,343,'2010-12-06 17:27:30','2010-12-06 17:27:30');
INSERT INTO `nodes` VALUES (532,'1896 silver 40-centavos','1896 silver 40-centavos','1896-silver-40-centavos-0',73,1,191,'Item',NULL,NULL,344,'2010-12-06 17:28:25','2010-12-06 17:28:25');
INSERT INTO `nodes` VALUES (533,'Ah1343 copper 1/2 ghirsh  \"nejd\"','Ah1343 copper 1/2 ghirsh  \"nejd\"','ah1343-copper-1-2-ghirsh-nejd-0',77,1,965,'Item',NULL,NULL,349,'2010-12-06 17:30:51','2010-12-06 17:30:51');
INSERT INTO `nodes` VALUES (534,'1344 ah  year 2 copper half girsh for hejaz & nejd','1344 ah  year 2 copper half girsh for hejaz & nejd','1344-ah-year-2-copper-half-girsh-for-hejaz-nejd-0',77,1,290,'Item',NULL,NULL,350,'2010-12-06 17:31:38','2010-12-06 17:31:38');
INSERT INTO `nodes` VALUES (535,'1878 silver 5-pesetas','1878 silver 5-pesetas','1878-silver-5-pesetas-0',79,1,197,'Item',NULL,NULL,353,'2010-12-06 17:33:58','2010-12-06 17:33:58');
INSERT INTO `nodes` VALUES (536,'1889(89)  2-pesetas  \"rare baby head\"','1889(89)  2-pesetas  \"rare baby head\"','1889-89-2-pesetas-rare-baby-head-0',79,1,898,'Item',NULL,NULL,354,'2010-12-06 17:34:54','2010-12-06 17:34:54');
INSERT INTO `nodes` VALUES (537,'1845 copper 1/4 cents','1845 copper 1/4 cents','1845-copper-1-4-cents-0',127,1,831,'Item',NULL,NULL,357,'2010-12-06 17:38:10','2010-12-06 17:38:10');
INSERT INTO `nodes` VALUES (538,'1719-km  ore  (lozenged edge)','1719-km  ore  (lozenged edge)','1719-km-ore-lozenged-edge-0',81,1,887,'Item',NULL,NULL,359,'2010-12-06 17:42:21','2010-12-06 17:42:21');
INSERT INTO `nodes` VALUES (539,'1723 gz  silver ore','1723 gz  silver ore','1723-gz-silver-ore-0',81,1,886,'Item',NULL,NULL,360,'2010-12-06 17:43:26','2010-12-06 17:43:26');
INSERT INTO `nodes` VALUES (540,'1806 copper farthing','1806 copper farthing','1806-copper-farthing-0',81,1,309,'Item',NULL,NULL,361,'2010-12-06 17:45:03','2010-12-06 17:45:03');
INSERT INTO `nodes` VALUES (541,'1820 1-skilling  \"oblique reeding\"','1820 1-skilling  \"oblique reeding\"','1820-1-skilling-oblique-reeding-0',81,1,891,'Item',NULL,NULL,362,'2010-12-06 17:45:57','2010-12-06 17:45:57');
INSERT INTO `nodes` VALUES (542,'1857 \"sm. la./curved top 5\"  bronze 5-ore  (rare!!)','1857 \"sm. la./curved top 5\"  bronze 5-ore  (rare!!)','1857-sm-la-curved-top-5-bronze-5-ore-rare-0',81,1,889,'Item',NULL,NULL,363,'2010-12-06 17:46:59','2010-12-06 17:46:59');
INSERT INTO `nodes` VALUES (543,'1873 la.  bronze ore','1873 la.  bronze ore','1873-la-bronze-ore-0',81,1,888,'Item',NULL,NULL,364,'2010-12-06 17:48:07','2010-12-06 17:48:07');
INSERT INTO `nodes` VALUES (544,'1877 bronze 5-ore','1877 bronze 5-ore','1877-bronze-5-ore-0',81,1,966,'Item',NULL,NULL,365,'2010-12-06 17:49:31','2010-12-06 17:49:31');
INSERT INTO `nodes` VALUES (545,'1886  bronze 5-ore','1886  bronze 5-ore','1886-bronze-5-ore-0',81,1,969,'Item',NULL,NULL,366,'2010-12-06 17:50:44','2010-12-06 17:50:44');
INSERT INTO `nodes` VALUES (546,'1901-eb  silver krona','1901-eb  silver krona','1901-eb-silver-krona',81,0,895,'Item',NULL,NULL,NULL,'2010-12-06 18:15:27','2011-01-06 15:11:01');
INSERT INTO `nodes` VALUES (547,'1906 eb silver krona','1906 eb silver krona','1906-eb-silver-krona-0',81,1,94,'Item',NULL,NULL,367,'2010-12-06 18:16:28','2010-12-06 18:16:28');
INSERT INTO `nodes` VALUES (548,'1912-w  silver 50-ore','1912-w  silver 50-ore','1912-w-silver-50-ore-0',81,1,967,'Item',NULL,NULL,368,'2010-12-06 18:17:34','2010-12-06 18:17:34');
INSERT INTO `nodes` VALUES (549,'1564 silver 1/4 dicken of st. gall','1564 silver 1/4 dicken of st. gall','1564-silver-1-4-dicken-of-st-gall-0',82,1,134,'Item',NULL,NULL,370,'2010-12-06 18:19:17','2010-12-06 18:19:17');
INSERT INTO `nodes` VALUES (550,'1590 12-sol  geneva','1590 12-sol  geneva','1590-12-sol-geneva-0',82,1,1466,'Item',NULL,NULL,371,'2010-12-06 18:20:25','2010-12-06 18:20:25');
INSERT INTO `nodes` VALUES (551,'1590 geneva copper 12 sols','1590 geneva copper 12 sols','1590-geneva-copper-12-sols-0',82,1,133,'Item',NULL,NULL,372,'2010-12-06 18:21:42','2010-12-06 18:21:42');
INSERT INTO `nodes` VALUES (552,'1612 silver dicken  \"zug\"','1612 silver dicken  \"zug\"','1612-silver-dicken-zug-0',82,1,1467,'Item',NULL,NULL,373,'2010-12-06 18:22:41','2010-12-06 18:22:41');
INSERT INTO `nodes` VALUES (553,'1795-w  silver 6-florins  geneva\"','1795-w  silver 6-florins  geneva\"','1795-w-silver-6-florins-geneva-0',82,1,1342,'Item',NULL,NULL,374,'2010-12-06 18:23:57','2010-12-06 18:23:57');
INSERT INTO `nodes` VALUES (554,'1908 b copper rappen','1908 b copper rappen','1908-b-copper-rappen-0',82,1,129,'Item',NULL,NULL,375,'2010-12-06 18:25:03','2010-12-06 18:25:03');
INSERT INTO `nodes` VALUES (555,'1909 b copper rappen','1909 b copper rappen','1909-b-copper-rappen-0',82,1,131,'Item',NULL,NULL,376,'2010-12-06 18:26:21','2010-12-06 18:26:21');
INSERT INTO `nodes` VALUES (556,'1911 b copper rappen','1911 b copper rappen','1911-b-copper-rappen-0',82,1,130,'Item',NULL,NULL,377,'2010-12-06 18:27:27','2010-12-06 18:27:27');
INSERT INTO `nodes` VALUES (557,'1912 b copper rappen','1912 b copper rappen','1912-b-copper-rappen-0',82,1,132,'Item',NULL,NULL,378,'2010-12-06 18:28:26','2010-12-06 18:28:26');
INSERT INTO `nodes` VALUES (558,'1939 silver laupen 5 francs','1939 silver laupen 5 francs','1939-silver-laupen-5-francs-0',82,1,690,'Item',NULL,NULL,379,'2010-12-06 18:29:28','2010-12-06 18:29:28');
INSERT INTO `nodes` VALUES (563,'Auctions','Auctions','auctions',1,0,5,'DynamicPage',NULL,NULL,NULL,'2010-12-09 18:06:39','2011-01-15 15:25:27');
INSERT INTO `nodes` VALUES (566,'Coinworld Articles','Coinworld Articles','coinworld-articles',2,1,6,'Blog',NULL,NULL,NULL,'2010-12-14 17:58:04','2010-12-14 17:58:04');
INSERT INTO `nodes` VALUES (568,'CoinWorld - USA','CoinWorld - USA','coinworld-usa',566,1,5,'Post',NULL,NULL,NULL,'2010-12-15 14:01:04','2010-12-15 14:01:04');
INSERT INTO `nodes` VALUES (569,'CoinWorld - Certified Foreign','CoinWorld - Certified Foreign','coinworld-certified-foreign',566,1,6,'Post',NULL,NULL,NULL,'2010-12-15 14:03:18','2010-12-15 14:03:18');
INSERT INTO `nodes` VALUES (570,'CoinWorld - Ancients and More','CoinWorld - Ancients and More','coinworld-ancients-and-more',566,1,7,'Post',NULL,NULL,NULL,'2010-12-15 14:07:11','2010-12-15 14:07:11');
INSERT INTO `nodes` VALUES (571,'CoinWorld - Certified Ancients','CoinWorld - Certified Ancients','coinworld-certified-ancients',566,1,8,'Post',NULL,NULL,NULL,'2010-12-15 14:09:14','2010-12-15 14:09:14');
INSERT INTO `nodes` VALUES (572,'CoinWorld - Antiquities and Fun Stuff','CoinWorld - Antiquities and Fun Stuff','coinworld-antiquities-and-fun-stuff',566,1,9,'Post',NULL,NULL,NULL,'2010-12-15 14:11:40','2010-12-15 14:11:40');
INSERT INTO `nodes` VALUES (573,'CoinWorld - USA 2','CoinWorld - USA 2','coinworld-usa-2',566,1,10,'Post',NULL,NULL,NULL,'2010-12-15 14:14:41','2010-12-15 14:14:41');
INSERT INTO `nodes` VALUES (574,'CoinWorld - Certified Ancients 2','CoinWorld - Certified Ancients 2','coinworld-certified-ancients-2',566,1,11,'Post',NULL,NULL,NULL,'2010-12-15 14:16:45','2010-12-15 14:16:45');
INSERT INTO `nodes` VALUES (575,'CoinWorld - Germanic','CoinWorld - Germanic','coinworld-germanic',566,1,12,'Post',NULL,NULL,NULL,'2010-12-15 14:18:36','2010-12-15 14:18:36');
INSERT INTO `nodes` VALUES (576,'CoinWorld - The World Certified','CoinWorld - The World Certified','coinworld-the-world-certified',566,1,13,'Post',NULL,NULL,NULL,'2010-12-15 14:22:41','2010-12-15 14:22:41');
INSERT INTO `nodes` VALUES (577,'CoinWorld - USA Fun Stuff','CoinWorld - USA Fun Stuff','coinworld-usa-fun-stuff',566,1,14,'Post',NULL,NULL,NULL,'2010-12-15 14:27:00','2010-12-15 14:27:00');
INSERT INTO `nodes` VALUES (578,'CoinWorld - The Holy Land and Christianity ','CoinWorld - The Holy Land and Christianity ','coinworld-the-holy-land-and-christianity',566,1,15,'Post',NULL,NULL,NULL,'2010-12-15 14:40:58','2010-12-15 14:40:58');
INSERT INTO `nodes` VALUES (579,'CoinWorld - World','CoinWorld - World','coinworld-world',566,1,16,'Post',NULL,NULL,NULL,'2010-12-15 14:54:06','2010-12-15 14:54:06');
INSERT INTO `nodes` VALUES (584,'Bachelor of Arts in Numismatics','Bachelor of Arts in Numismatics','numismatics',7,1,6,'DynamicPage',NULL,NULL,3,'2010-12-20 14:25:29','2010-12-20 14:25:29');
INSERT INTO `nodes` VALUES (585,'Half Cents','Half Cents','half-cents',20,1,122,'Category',NULL,NULL,394,'2011-01-04 16:52:56','2011-01-04 16:52:56');
INSERT INTO `nodes` VALUES (586,'Small Cents','Small Cents','small-cents',20,1,123,'Category',NULL,NULL,395,'2011-01-04 16:53:51','2011-01-04 16:53:51');
INSERT INTO `nodes` VALUES (587,'Large Cents','Large Cents','large-cents',20,1,124,'Category',NULL,NULL,396,'2011-01-04 16:55:16','2011-01-04 16:55:16');
INSERT INTO `nodes` VALUES (588,'Two Cents','Two Cents','two-cents',20,1,125,'Category',NULL,NULL,398,'2011-01-04 16:55:33','2011-01-04 16:55:33');
INSERT INTO `nodes` VALUES (589,'Three Cents','Three Cents','three-cents',20,1,126,'Category',NULL,NULL,399,'2011-01-04 16:56:09','2011-01-04 16:56:09');
INSERT INTO `nodes` VALUES (590,'Half Dimes','Half Dimes','half-dimes',20,1,127,'Category',NULL,NULL,400,'2011-01-04 16:56:31','2011-01-04 16:56:31');
INSERT INTO `nodes` VALUES (591,'Nickels','Nickels','nickels',20,1,128,'Category',NULL,NULL,401,'2011-01-04 16:57:30','2011-01-04 16:57:30');
INSERT INTO `nodes` VALUES (592,'Dimes','Dimes','dimes',20,1,129,'Category',NULL,NULL,403,'2011-01-04 16:58:17','2011-01-04 16:58:17');
INSERT INTO `nodes` VALUES (593,'Quarters','Quarters','quarters',20,1,130,'Category',NULL,NULL,408,'2011-01-04 16:59:52','2011-01-04 16:59:52');
INSERT INTO `nodes` VALUES (594,'Half Dollars','Half Dollars','half-dollars',20,1,131,'Category',NULL,NULL,411,'2011-01-04 17:02:21','2011-01-04 17:02:21');
INSERT INTO `nodes` VALUES (595,'Silver Dollars','Silver Dollars','silver-dollars',20,1,132,'Category',NULL,NULL,419,'2011-01-04 17:05:43','2011-01-04 17:05:43');
INSERT INTO `nodes` VALUES (596,'Gold Dollars','Gold Dollars','gold-dollars',20,1,133,'Category',NULL,NULL,430,'2011-01-04 17:09:07','2011-01-04 17:09:07');
INSERT INTO `nodes` VALUES (597,'Gold Three Dollars','Gold Three Dollars','gold-three-dollars',20,1,134,'Category',NULL,NULL,432,'2011-01-04 17:09:45','2011-01-04 17:09:45');
INSERT INTO `nodes` VALUES (598,'Quarter Eagles','Quarter Eagles','quarter-eagles',20,1,135,'Category',NULL,NULL,433,'2011-01-04 17:10:07','2011-01-04 17:10:07');
INSERT INTO `nodes` VALUES (599,'Four Dollar Stellas','Four Dollar Stellas','four-dollar-stellas',20,1,136,'Category',NULL,NULL,434,'2011-01-04 17:10:18','2011-01-04 17:10:18');
INSERT INTO `nodes` VALUES (600,'Half Eagles','Half Eagles','half-eagles',20,1,137,'Category',NULL,NULL,435,'2011-01-04 17:10:55','2011-01-04 17:10:55');
INSERT INTO `nodes` VALUES (601,'Eagles','Eagles','eagles',20,1,138,'Category',NULL,NULL,436,'2011-01-04 17:11:03','2011-01-04 17:11:03');
INSERT INTO `nodes` VALUES (602,'Double Eagles','Double Eagles','double-eagles',20,1,139,'Category',NULL,NULL,437,'2011-01-04 17:11:45','2011-01-04 17:11:45');
INSERT INTO `nodes` VALUES (603,'Commems 1892-1954','Commems 1892-1954','commems-1892-1954',20,1,140,'Category',NULL,NULL,439,'2011-01-04 17:12:44','2011-01-26 18:16:41');
INSERT INTO `nodes` VALUES (605,'Modern Commems 1982 on','Modern Commems 1982 on','modern-commems-1982-on',20,1,142,'Category',NULL,NULL,456,'2011-01-04 17:14:57','2011-01-26 18:17:22');
INSERT INTO `nodes` VALUES (606,'Colonial Period','Colonial Period','colonial-period',20,1,143,'Category',NULL,NULL,383,'2011-01-04 17:16:38','2011-01-04 17:16:38');
INSERT INTO `nodes` VALUES (607,'Twenty-Cent','Twenty-Cent','twenty-cent',20,1,144,'Category',NULL,NULL,406,'2011-01-04 17:18:05','2011-01-04 17:18:05');
INSERT INTO `nodes` VALUES (608,'Pattern Coinage','Pattern Coinage','pattern-coinage',20,1,145,'Category',NULL,NULL,458,'2011-01-04 17:19:07','2011-01-04 17:19:07');
INSERT INTO `nodes` VALUES (617,'1913 Silver 2-SHILLINGS (NGC XF details)','1913 Silver 2-SHILLINGS (NGC XF details)','1913-silver-2-shillings-ngc-xf-details',36,1,1485,'Item',NULL,NULL,160,'2011-01-27 22:03:16','2011-01-27 22:03:16');
INSERT INTO `nodes` VALUES (619,'1882-O/S Morgan Dollar (PCGS AU-53) ','1882-O/S Morgan Dollar (PCGS AU-53) ','1882-o-s-morgan-dollar-pcgs-au-53',595,1,1486,'Item',NULL,NULL,425,'2011-02-10 16:45:50','2011-02-10 16:49:49');
INSERT INTO `nodes` VALUES (620,'1770G P Silver 8-Reales NGC VF-35','1770G P Silver 8-Reales NGC VF-35','1770g-p-silver-8-reales-ngc-vf-35',54,0,1487,'Item',NULL,NULL,NULL,'2011-02-25 21:37:57','2011-03-17 18:29:21');
INSERT INTO `nodes` VALUES (621,'1861 Silver GULDEN (NGC MS62)','1861 Silver GULDEN (NGC MS62)','1861-silver-gulden-ngc-ms62',99,1,1488,'Item',NULL,NULL,215,'2011-02-25 22:39:42','2011-02-25 22:39:42');
INSERT INTO `nodes` VALUES (622,'1594 Gold 1-DUCAT (NGC AU-50)','1594 Gold 1-DUCAT (NGC AU-50)','1594-gold-1-ducat-ngc-au-50',67,1,1489,'Item',NULL,NULL,319,'2011-02-25 22:41:43','2011-02-25 22:41:43');
INSERT INTO `nodes` VALUES (623,'England (Coinworld Listing)','England (Coinworld Listing)','england-coinworld-listing',NULL,1,4,'Post',NULL,NULL,NULL,'2011-02-28 18:54:48','2011-02-28 18:54:48');
INSERT INTO `nodes` VALUES (624,'-325-320 bc gold stater','-325-320 bc gold stater','325-320-bc-gold-stater',NULL,0,89,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (625,'-370bc gold hecte from lesbos','-370bc gold hecte from lesbos','370bc-gold-hecte-from-lesbos',NULL,0,108,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (626,'-46 bc silver denarius of julius caesar','-46 bc silver denarius of julius caesar','46-bc-silver-denarius-of-julius-caesar',11,0,138,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-03-01 19:10:14');
INSERT INTO `nodes` VALUES (627,'-497 bc gold (electrum) hecte','-497 bc gold (electrum) hecte','497-bc-gold-electrum-hecte',NULL,0,90,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (628,'(1042-66)  silver penny  \"edward the confessor\"','(1042-66)  silver penny  \"edward the confessor\"','1042-66-silver-penny-edward-the-confessor',NULL,0,1053,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (629,'(1285-1314) silver gros turnois \"philip iv\"','(1285-1314) silver gros turnois \"philip iv\"','1285-1314-silver-gros-turnois-philip-iv',NULL,0,884,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (630,'(1343-54)  gold ducat','(1343-54)  gold ducat','1343-54-gold-ducat',NULL,0,1078,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (631,'(1365-68) silver solidino (venice marco cornari)','(1365-68) silver solidino (venice marco cornari)','1365-68-silver-solidino-venice-marco-cornari',NULL,0,1154,'Item',NULL,NULL,NULL,'2011-02-28 20:17:45','2011-02-28 20:17:45');
INSERT INTO `nodes` VALUES (632,'41-54 ad claudius silver cistophorus','41-54 ad claudius silver cistophorus','41-54-ad-claudius-silver-cistophorus',NULL,1,35,'Item',NULL,NULL,NULL,'2011-03-01 02:43:36','2011-03-01 02:43:36');
INSERT INTO `nodes` VALUES (633,'1826 silver erie canal completion medal (original box included)','1826 silver erie canal completion medal (original box included)','1826-silver-erie-canal-completion-medal-original-box-included',NULL,1,26,'Item',NULL,NULL,NULL,'2011-03-01 03:38:07','2011-03-01 03:38:07');
INSERT INTO `nodes` VALUES (634,'283-246 bc gold pentadrachm of ptolemy ii','283-246 bc gold pentadrachm of ptolemy ii','283-246-bc-gold-pentadrachm-of-ptolemy-ii',NULL,1,7,'Item',NULL,NULL,NULL,'2011-03-01 03:38:07','2011-03-01 03:38:07');
INSERT INTO `nodes` VALUES (635,'1949 copper nickel escudo','1949 copper nickel escudo','1949-copper-nickel-escudo',NULL,1,34,'Item',NULL,NULL,NULL,'2011-03-11 03:23:30','2011-03-11 03:23:30');
INSERT INTO `nodes` VALUES (636,'2003 silver eagle one troy oz.','2003 silver eagle one troy oz.','2003-silver-eagle-one-troy-oz',NULL,1,29,'Item',NULL,NULL,NULL,'2011-03-11 03:23:30','2011-03-11 03:23:30');
INSERT INTO `nodes` VALUES (637,'1958 silver 6 escudos','1958 silver 6 escudos','1958-silver-6-escudos',NULL,1,45,'Item',NULL,NULL,NULL,'2011-03-11 03:23:30','2011-03-11 03:23:30');
INSERT INTO `nodes` VALUES (638,'1962 copper escudo','1962 copper escudo','1962-copper-escudo',NULL,1,44,'Item',NULL,NULL,NULL,'2011-03-11 03:23:31','2011-03-11 03:23:31');
INSERT INTO `nodes` VALUES (639,'1951 silver 10 escudos','1951 silver 10 escudos','1951-silver-10-escudos',NULL,1,43,'Item',NULL,NULL,NULL,'2011-03-11 03:23:31','2011-03-11 03:23:31');
INSERT INTO `nodes` VALUES (640,'2006-w gold buffalos','2006-w gold buffalos','2006-w-gold-buffalos',NULL,1,30,'Item',NULL,NULL,NULL,'2011-03-11 03:28:36','2011-03-11 03:28:36');
INSERT INTO `nodes` VALUES (641,'1778-PJ  Gold 1/2 ESCUDO Spain','1778-PJ  Gold 1/2 ESCUDO Spain','1778-pj-gold-1-2-escudo-spain',606,1,1490,'Item',NULL,NULL,389,'2011-03-16 13:48:56','2011-03-16 13:50:09');
INSERT INTO `nodes` VALUES (642,'1787-Mo FM  1/2 REAL Mexico','1787-Mo FM  1/2 REAL Mexico','1787-mo-fm-1-2-real-mexico',606,1,1491,'Item',NULL,NULL,390,'2011-03-16 14:24:10','2011-03-16 14:42:01');
INSERT INTO `nodes` VALUES (643,'1793-NG M Silver 2-REAL GUATEMALA','1793-NG M Silver 2-REAL GUATEMALA','1793-ng-m-silver-2-real-guatemala',606,1,1492,'Item',NULL,NULL,391,'2011-03-16 14:26:27','2011-03-16 14:26:27');
INSERT INTO `nodes` VALUES (644,'1796-NG M Silver REAL Guatemala','1796-NG M Silver REAL Guatemala','1796-ng-m-silver-real-guatemala',606,1,1493,'Item',NULL,NULL,392,'2011-03-16 14:31:18','2011-03-16 14:37:23');
INSERT INTO `nodes` VALUES (645,'1807-Mo TH Silver 1/2 REAL  Mexico','1807-Mo TH Silver 1/2 REAL  Mexico','1807-mo-th-silver-1-2-real-mexico',606,1,1494,'Item',NULL,NULL,393,'2011-03-16 14:33:45','2011-03-16 14:33:45');
INSERT INTO `nodes` VALUES (647,'1808 Classic Head LARGE CENT','1808 Classic Head LARGE CENT','1-1808-classic-head-large-cent',587,1,1496,'Item',NULL,NULL,397,'2011-03-16 15:36:48','2011-03-16 15:36:48');
INSERT INTO `nodes` VALUES (648,'2004 LEWIS & CLARK Bank Set','2004 LEWIS & CLARK Bank Set','2004-lewis-clark-bank-set',11,1,1497,'Item',NULL,NULL,6,'2011-03-16 15:46:45','2011-03-16 15:46:45');
INSERT INTO `nodes` VALUES (649,'c.1807 GEORGE WASHINGTON Medal by Sansom','c.1807 GEORGE WASHINGTON Medal by Sansom','c-1807-george-washington-medal-by-sansom',25,1,1498,'Item',NULL,NULL,469,'2011-03-16 15:58:56','2011-03-16 15:58:56');
INSERT INTO `nodes` VALUES (650,'c.1825-1860 WASHINGTON SUCCESS Silvered Token','c.1825-1860 WASHINGTON SUCCESS Silvered Token','c-1825-1860-washington-success-silvered-token',23,1,1499,'Item',NULL,NULL,467,'2011-03-16 16:03:22','2011-03-16 16:03:22');
INSERT INTO `nodes` VALUES (651,'c.1807 GEORGE WASHINGTON Medal by Sansom','c.1807 GEORGE WASHINGTON Medal by Sansom','1-c-1807-george-washington-medal-by-sansom',25,1,1500,'Item',NULL,NULL,470,'2011-03-16 20:34:36','2011-03-16 20:34:36');
INSERT INTO `nodes` VALUES (652,'1866-A Silver TALER','1866-A Silver TALER','1866-a-silver-taler',37,1,1501,'Item',NULL,NULL,165,'2011-03-17 16:05:04','2011-03-17 16:05:04');
INSERT INTO `nodes` VALUES (653,'1832-PTS JL Silver 8-SOLES','1832-PTS JL Silver 8-SOLES','1832-pts-jl-silver-8-soles',386,1,1502,'Item',NULL,NULL,169,'2011-03-17 16:10:01','2011-03-17 16:10:01');
INSERT INTO `nodes` VALUES (654,'1921 Silver Quarter 25c','1921 Silver Quarter 25c','1921-silver-quarter-25c',40,1,1503,'Item',NULL,NULL,174,'2011-03-17 16:16:49','2011-03-17 16:16:49');
INSERT INTO `nodes` VALUES (655,'1929 Silver DIME 10c','1929 Silver DIME 10c','1929-silver-dime-10c',40,1,1504,'Item',NULL,NULL,175,'2011-03-17 16:18:40','2011-03-17 16:18:40');
INSERT INTO `nodes` VALUES (656,'Chile','Chile','chile',14,1,146,'Category',NULL,NULL,176,'2011-03-18 16:30:30','2011-03-18 16:30:30');
INSERT INTO `nodes` VALUES (657,'Costa Rica','Costa Rica','costa-rica',14,1,147,'Category',NULL,NULL,380,'2011-03-18 16:34:00','2011-03-18 16:34:00');
INSERT INTO `nodes` VALUES (658,'El Savador','El Savador','el-savador',14,1,148,'Category',NULL,NULL,381,'2011-03-18 16:34:47','2011-03-18 16:34:47');
INSERT INTO `nodes` VALUES (660,'465-425 bc silver tetradrachm of syracuse','465-425 bc silver tetradrachm of syracuse','465-425-bc-silver-tetradrachm-of-syracuse',NULL,0,189,'Item',NULL,NULL,NULL,'2011-03-18 18:18:10','2011-03-18 18:18:10');
INSERT INTO `nodes` VALUES (661,'Italy, syracuse in sicily, gold 100-litra','Italy, syracuse in sicily, gold 100-litra','italy-syracuse-in-sicily-gold-100-litra',NULL,0,413,'Item',NULL,NULL,NULL,'2011-03-18 18:18:10','2011-03-18 18:18:10');
INSERT INTO `nodes` VALUES (662,'317-289 bc gold syracuse','317-289 bc gold syracuse','317-289-bc-gold-syracuse',NULL,0,624,'Item',NULL,NULL,NULL,'2011-03-18 18:19:47','2011-03-18 18:19:47');
/*!40000 ALTER TABLE `nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `blog_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `post_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (4,'England (Coinworld Listing)','<p>\r\n	<a class=\"attach_pdf?1292350538\" href=\"/site_assets/files/10/2006_april06.pdf?1292350538\">Coinworld England PDF</a></p>\r\n',6,'2010-12-14 18:17:23','2010-12-14 18:20:22','2006-04-06 00:00:00');
INSERT INTO `posts` VALUES (5,'CoinWorld - USA','<p>\r\n	<a class=\"attach_pdf\" href=\"/site_assets/files/7/2007_may21_usa.pdf\" title=\"May 21, 2007\">Download &nbsp;PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:01:04','2011-02-10 02:50:41','2007-05-27 00:00:00');
INSERT INTO `posts` VALUES (6,'CoinWorld - Certified Foreign','<p>\r\n	<a class=\"attach_pdf?1292421777\" href=\"/site_assets/files/11/2007_may14_certified.pdf?1292421777\" title=\"May 14, 2007\">Download PDF FIle &gt;</a></p>\r\n',6,'2010-12-15 14:03:18','2010-12-15 14:03:18','2007-05-14 00:00:00');
INSERT INTO `posts` VALUES (7,'CoinWorld - Ancients and More','<p>\r\n	<a class=\"attach_pdf?1292421952\" href=\"/site_assets/files/12/2007_may07_ancients.pdf?1292421952\" title=\"2007_may07_ancients.pdf?1292421952\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:07:11','2010-12-15 14:07:11','2007-05-07 00:00:00');
INSERT INTO `posts` VALUES (8,'CoinWorld - Certified Ancients','<p>\r\n	<a class=\"attach_pdf?1292422140\" href=\"/site_assets/files/13/2007_april30_certified.pdf?1292422140\" title=\"2007_april30_certified.pdf?1292422140\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:09:14','2010-12-15 14:09:14','2007-04-30 00:00:00');
INSERT INTO `posts` VALUES (9,'CoinWorld - Antiquities and Fun Stuff','<p>\r\n	<a class=\"attach_pdf?1292422296\" href=\"/site_assets/files/14/2007_april09_antiquities.pdf?1292422296\" title=\"2007_april09_antiquities.pdf?1292422296\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:11:40','2010-12-15 14:11:40','2007-04-09 00:00:00');
INSERT INTO `posts` VALUES (10,'CoinWorld - USA 2','<p>\r\n	<a class=\"attach_pdf?1292422404\" href=\"/site_assets/files/15/2007_march26_usa.pdf?1292422404\" title=\"Download PDF File &gt;\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:14:41','2010-12-15 14:14:41','2007-03-26 00:00:00');
INSERT INTO `posts` VALUES (11,'CoinWorld - Certified Ancients 2','<p>\r\n	<a class=\"attach_pdf?1292422576\" href=\"/site_assets/files/16/2007_march19_certified.pdf?1292422576\" title=\"Download PDF File &gt;\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:16:45','2010-12-15 14:55:00','2007-03-19 00:00:00');
INSERT INTO `posts` VALUES (12,'CoinWorld - Germanic','<p>\r\n	<a class=\"attach_pdf?1292422705\" href=\"/site_assets/files/17/2006_germanic.pdf?1292422705\" title=\"Download PDF File &gt;\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:18:35','2010-12-15 14:18:35','2006-06-26 00:00:00');
INSERT INTO `posts` VALUES (13,'CoinWorld - The World Certified','<p>\r\n	<a class=\"attach_pdf?1292422952\" href=\"/site_assets/files/18/2006_certified.pdf?1292422952\" title=\"Download PDF File &gt;\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:22:41','2010-12-15 14:22:41','2006-06-19 00:00:00');
INSERT INTO `posts` VALUES (14,'CoinWorld - USA Fun Stuff','<p>\r\n	<a class=\"attach_pdf?1292423209\" href=\"/site_assets/files/19/2006_usa.pdf?1292423209\" title=\"Download PDF File &gt;\">Download PDF File &gt;</a></p>\r\n',6,'2010-12-15 14:27:00','2010-12-15 14:27:00','2006-06-05 00:00:00');
INSERT INTO `posts` VALUES (15,'CoinWorld - The Holy Land and Christianity ','<p>\r\n	<a class=\"attach_pdf?1292423450\" href=\"/site_assets/files/20/2006_may29_pg1.pdf?1292423450\" title=\"2006_may29_pg1.pdf?1292423450\">Download PDF File &gt; (Page 1)</a><br />\r\n	<a class=\"attach_pdf?1292423676\" href=\"/site_assets/files/21/2006_may29_pg2.pdf?1292423676\" title=\"2006_may29_pg2.pdf?1292423676\">Download PDF File &gt; (Page 2)</a><br />\r\n	<a class=\"attach_pdf?1292424010\" href=\"/site_assets/files/22/2006_may29_pg3.pdf?1292424010\" title=\"2006_may29_pg3.pdf?1292424010\">Download PDF File &gt; (Page 3)</a></p>\r\n',6,'2010-12-15 14:40:58','2010-12-15 14:55:31','2006-05-29 00:00:00');
INSERT INTO `posts` VALUES (16,'CoinWorld - World','<p>\r\n	<a class=\"attach_pdf?1292424359\" href=\"/site_assets/files/23/2006_may22_pg1.pdf?1292424359\" title=\"2006_may22_pg1.pdf?1292424359\">Download PDF File &gt; (Page 1)</a><br />\r\n	<a class=\"attach_pdf?1292424787\" href=\"/site_assets/files/24/2006_may22_pg2.pdf?1292424787\" title=\"2006_may22_pg2.pdf?1292424787\">Download PDF File &gt; (Page 2)</a></p>\r\n',6,'2010-12-15 14:54:06','2010-12-15 14:54:06','2006-05-22 00:00:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `primary_image` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1197 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_images`
--

LOCK TABLES `product_images` WRITE;
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` VALUES (10,'TIBERIUS_A-45_OBV.jpg','image/jpeg',86580,'2010-11-02 13:20:55',390,1,'2010-11-02 13:21:05','2010-11-02 13:21:05');
INSERT INTO `product_images` VALUES (11,'TIBERIUS_A-45_REV.jpg','image/jpeg',100761,'2010-11-02 13:21:00',390,0,'2010-11-02 13:21:05','2010-11-02 13:21:05');
INSERT INTO `product_images` VALUES (12,'TIBERIUS_A-45.jpg','image/jpeg',76710,'2010-11-02 13:21:01',390,0,'2010-11-02 13:21:05','2010-11-02 13:21:05');
INSERT INTO `product_images` VALUES (15,'Caesar55rev.jpg','image/jpeg',31301,'2010-12-01 15:53:55',6,1,'2010-12-01 15:54:00','2010-12-01 15:54:00');
INSERT INTO `product_images` VALUES (24,'pentaobvlg.jpg','image/jpeg',47654,'2010-12-01 19:47:49',7,1,'2010-12-01 19:47:55','2010-12-01 19:48:51');
INSERT INTO `product_images` VALUES (25,'Pentaobv.jpg','image/jpeg',88625,'2010-12-01 19:48:46',7,0,'2010-12-01 19:48:51','2010-12-01 19:48:51');
INSERT INTO `product_images` VALUES (26,'richard-2obv.jpg','image/jpeg',18807,'2010-12-01 19:49:34',8,0,'2010-12-01 19:49:40','2010-12-01 19:49:40');
INSERT INTO `product_images` VALUES (27,'richard-2rev.jpg','image/jpeg',22847,'2010-12-01 19:50:15',8,0,'2010-12-01 19:50:22','2010-12-01 19:50:22');
INSERT INTO `product_images` VALUES (31,'richard-2obv.jpg','image/jpeg',18807,'2010-12-01 19:53:56',10,0,'2010-12-01 19:54:01','2010-12-01 19:54:01');
INSERT INTO `product_images` VALUES (32,'richard-2rev.jpg','image/jpeg',22847,'2010-12-01 19:55:04',10,0,'2010-12-01 19:55:10','2010-12-01 19:55:10');
INSERT INTO `product_images` VALUES (33,'1953_moz_2.5e_63.jpg','image/jpeg',52537,'2010-12-01 19:56:09',11,0,'2010-12-01 19:56:25','2010-12-01 19:56:25');
INSERT INTO `product_images` VALUES (34,'1953_moz_2.5e_63_r.jpg','image/jpeg',60043,'2010-12-01 19:56:19',11,0,'2010-12-01 19:56:25','2010-12-01 19:56:25');
INSERT INTO `product_images` VALUES (35,'1953_moz_2.5e_63_f.jpg','image/jpeg',39867,'2010-12-01 19:56:22',11,1,'2010-12-01 19:56:25','2010-12-01 19:56:25');
INSERT INTO `product_images` VALUES (36,'1952_moz_20e.jpg','image/jpeg',61837,'2010-12-01 19:57:48',16,0,'2010-12-01 19:58:02','2010-12-01 19:58:02');
INSERT INTO `product_images` VALUES (37,'1952_moz_20e_r.jpg','image/jpeg',55787,'2010-12-01 19:57:56',16,0,'2010-12-01 19:58:05','2010-12-01 19:58:05');
INSERT INTO `product_images` VALUES (38,'1952_moz_20e_f.jpg','image/jpeg',39254,'2010-12-01 19:57:58',16,0,'2010-12-01 19:58:05','2010-12-01 19:58:05');
INSERT INTO `product_images` VALUES (39,'j1721obv.jpg','image/jpeg',4791,'2010-12-01 20:01:35',21,0,'2010-12-01 20:01:39','2010-12-01 20:01:39');
INSERT INTO `product_images` VALUES (40,'j1721rev.jpg','image/jpeg',4660,'2010-12-01 20:01:37',21,0,'2010-12-01 20:01:40','2010-12-01 20:01:40');
INSERT INTO `product_images` VALUES (41,'613csobv.jpg','image/jpeg',3060,'2010-12-01 20:02:16',22,0,'2010-12-01 20:02:21','2010-12-01 20:02:21');
INSERT INTO `product_images` VALUES (42,'613csrev.jpg','image/jpeg',3058,'2010-12-01 20:02:18',22,0,'2010-12-01 20:02:21','2010-12-01 20:02:21');
INSERT INTO `product_images` VALUES (43,'1795_50C_N-62_OBV.jpg','image/jpeg',79318,'2010-12-01 20:03:18',23,1,'2010-12-01 20:03:26','2010-12-09 05:02:09');
INSERT INTO `product_images` VALUES (44,'1795_50C_N-62_REV.jpg','image/jpeg',84861,'2010-12-01 20:03:21',23,0,'2010-12-01 20:03:26','2010-12-01 20:03:26');
INSERT INTO `product_images` VALUES (45,'1795_50C_N-62.jpg','image/jpeg',55012,'2010-12-01 20:03:23',23,0,'2010-12-01 20:03:26','2010-12-01 20:03:26');
INSERT INTO `product_images` VALUES (46,'p55obv.jpg','image/jpeg',28164,'2010-12-01 20:04:12',24,1,'2010-12-01 20:04:33','2010-12-01 20:04:33');
INSERT INTO `product_images` VALUES (47,'p55rev.jpg','image/jpeg',29143,'2010-12-01 20:04:21',24,0,'2010-12-01 20:04:33','2010-12-01 20:04:33');
INSERT INTO `product_images` VALUES (48,'1878_$3.jpg','image/jpeg',71769,'2010-12-01 20:05:28',25,1,'2010-12-01 20:05:39','2010-12-01 20:05:39');
INSERT INTO `product_images` VALUES (49,'1878_$3-r.jpg','image/jpeg',72877,'2010-12-01 20:05:34',25,0,'2010-12-01 20:05:39','2010-12-01 20:05:39');
INSERT INTO `product_images` VALUES (50,'1878_$3-f.jpg','image/jpeg',59486,'2010-12-01 20:05:36',25,0,'2010-12-01 20:05:39','2010-12-01 20:05:39');
INSERT INTO `product_images` VALUES (51,'am0001obv.jpg','image/jpeg',34758,'2010-12-01 20:07:21',26,1,'2010-12-01 20:07:30','2010-12-01 20:07:30');
INSERT INTO `product_images` VALUES (52,'am0001rev.jpg','image/jpeg',31094,'2010-12-01 20:07:26',26,0,'2010-12-01 20:07:31','2010-12-01 20:07:31');
INSERT INTO `product_images` VALUES (53,'auaeozobv.jpg','image/jpeg',26048,'2010-12-01 20:08:22',28,1,'2010-12-01 20:08:30','2010-12-01 20:08:30');
INSERT INTO `product_images` VALUES (54,'auaeozrev.jpg','image/jpeg',27749,'2010-12-01 20:08:27',28,0,'2010-12-01 20:08:30','2010-12-01 20:08:30');
INSERT INTO `product_images` VALUES (55,'arozobv.jpg','image/jpeg',29193,'2010-12-01 20:09:16',29,1,'2010-12-01 20:09:25','2010-12-01 20:09:25');
INSERT INTO `product_images` VALUES (56,'arozrev.jpg','image/jpeg',30321,'2010-12-01 20:09:22',29,0,'2010-12-01 20:09:26','2010-12-01 20:09:26');
INSERT INTO `product_images` VALUES (57,'2006-2obv.jpg','image/jpeg',28007,'2010-12-01 20:10:08',30,1,'2010-12-01 20:10:19','2010-12-01 20:10:19');
INSERT INTO `product_images` VALUES (58,'2006-2rev.jpg','image/jpeg',27602,'2010-12-01 20:10:16',30,0,'2010-12-01 20:10:20','2010-12-01 20:10:20');
INSERT INTO `product_images` VALUES (59,'1852rev.jpg','image/jpeg',19068,'2010-12-01 20:12:29',31,0,'2010-12-01 20:12:36','2010-12-01 20:12:36');
INSERT INTO `product_images` VALUES (60,'1953_moz_2.5e.jpg','image/jpeg',60599,'2010-12-01 20:14:09',33,1,'2010-12-01 20:14:20','2010-12-01 20:14:20');
INSERT INTO `product_images` VALUES (61,'1953_moz_2.5e_r.jpg','image/jpeg',61556,'2010-12-01 20:14:16',33,0,'2010-12-01 20:14:21','2010-12-01 20:14:21');
INSERT INTO `product_images` VALUES (62,'1953_moz_2.5e_f.jpg','image/jpeg',37988,'2010-12-01 20:14:18',33,0,'2010-12-01 20:14:21','2010-12-01 20:14:21');
INSERT INTO `product_images` VALUES (63,'cape_escudo_f.jpg','image/jpeg',61952,'2010-12-01 20:15:14',34,1,'2010-12-01 20:15:27','2010-12-01 20:15:27');
INSERT INTO `product_images` VALUES (64,'cape_escudo.jpg','image/jpeg',73934,'2010-12-01 20:15:21',34,0,'2010-12-01 20:15:27','2010-12-01 20:15:27');
INSERT INTO `product_images` VALUES (65,'cape_escudo_r.jpg','image/jpeg',69604,'2010-12-01 20:15:23',34,0,'2010-12-01 20:15:27','2010-12-01 20:15:27');
INSERT INTO `product_images` VALUES (66,'Claudius1977obv.jpg','image/jpeg',34789,'2010-12-01 20:16:04',35,1,'2010-12-01 20:16:13','2010-12-01 20:16:13');
INSERT INTO `product_images` VALUES (67,'Claudius1977rev.jpg','image/jpeg',33389,'2010-12-01 20:16:10',35,0,'2010-12-01 20:16:15','2010-12-01 20:16:15');
INSERT INTO `product_images` VALUES (68,'1948_port_10e.jpg','image/jpeg',60415,'2010-12-01 20:18:24',38,1,'2010-12-01 20:18:34','2010-12-01 20:18:34');
INSERT INTO `product_images` VALUES (69,'1948_port_10e_r.jpg','image/jpeg',58121,'2010-12-01 20:18:29',38,0,'2010-12-01 20:18:35','2010-12-01 20:18:35');
INSERT INTO `product_images` VALUES (70,'1948_port_10e_f.jpg','image/jpeg',45101,'2010-12-01 20:18:31',38,0,'2010-12-01 20:18:35','2010-12-01 20:18:35');
INSERT INTO `product_images` VALUES (71,'1951_stthom_10e.jpg','image/jpeg',56981,'2010-12-01 20:20:32',43,1,'2010-12-01 20:20:43','2010-12-01 20:20:43');
INSERT INTO `product_images` VALUES (72,'1951_stthom_10e_r.jpg','image/jpeg',57776,'2010-12-01 20:20:37',43,0,'2010-12-01 20:20:43','2010-12-01 20:20:43');
INSERT INTO `product_images` VALUES (73,'1951_stthom_10e_f.jpg','image/jpeg',47233,'2010-12-01 20:20:40',43,0,'2010-12-01 20:20:43','2010-12-01 20:20:43');
INSERT INTO `product_images` VALUES (74,'1962_stthom_esc.jpg','image/jpeg',60568,'2010-12-01 20:21:29',44,1,'2010-12-01 20:21:39','2010-12-01 20:21:39');
INSERT INTO `product_images` VALUES (75,'1962_stthom_esc_r.jpg','image/jpeg',52928,'2010-12-01 20:21:35',44,0,'2010-12-01 20:21:39','2010-12-01 20:21:39');
INSERT INTO `product_images` VALUES (76,'1962_stthom_esc_f.jpg','image/jpeg',43229,'2010-12-01 20:21:37',44,0,'2010-12-01 20:21:39','2010-12-01 20:21:39');
INSERT INTO `product_images` VALUES (77,'1958_port_6e.jpg','image/jpeg',60033,'2010-12-01 20:22:27',45,1,'2010-12-01 20:22:37','2010-12-01 20:22:37');
INSERT INTO `product_images` VALUES (78,'1958_port_6e_r.jpg','image/jpeg',59078,'2010-12-01 20:22:32',45,0,'2010-12-01 20:22:37','2010-12-01 20:22:37');
INSERT INTO `product_images` VALUES (79,'1958_port_6e_f.jpg','image/jpeg',41875,'2010-12-01 20:22:34',45,0,'2010-12-01 20:22:37','2010-12-01 20:22:37');
INSERT INTO `product_images` VALUES (80,'Fauverobv.jpg','image/jpeg',44653,'2010-12-02 18:12:30',505,1,'2010-12-02 18:12:37','2010-12-02 18:12:37');
INSERT INTO `product_images` VALUES (81,'Fauverrev.jpg','image/jpeg',49165,'2010-12-02 18:13:44',505,0,'2010-12-02 18:13:49','2010-12-02 18:13:49');
INSERT INTO `product_images` VALUES (82,'Nativityobv.jpg','image/jpeg',64057,'2010-12-02 18:27:42',577,1,'2010-12-02 18:27:48','2010-12-02 18:27:48');
INSERT INTO `product_images` VALUES (83,'Nativityrev.jpg','image/jpeg',76756,'2010-12-02 18:27:46',577,0,'2010-12-02 18:27:48','2010-12-02 18:27:48');
INSERT INTO `product_images` VALUES (84,'prutah.jpg','image/jpeg',63495,'2010-12-02 18:29:27',282,1,'2010-12-02 18:29:34','2010-12-02 18:29:34');
INSERT INTO `product_images` VALUES (85,'prutah-r.jpg','image/jpeg',62375,'2010-12-02 18:29:32',282,0,'2010-12-02 18:29:35','2010-12-02 18:29:35');
INSERT INTO `product_images` VALUES (86,'31ADobv.jpg','image/jpeg',40522,'2010-12-02 18:30:34',529,1,'2010-12-02 18:30:43','2010-12-02 18:30:43');
INSERT INTO `product_images` VALUES (87,'31ADrev.jpg','image/jpeg',42636,'2010-12-02 18:30:39',529,0,'2010-12-02 18:30:43','2010-12-02 18:30:43');
INSERT INTO `product_images` VALUES (88,'30-725obv.jpg','image/jpeg',43653,'2010-12-02 18:31:48',481,1,'2010-12-02 18:31:58','2010-12-02 18:31:58');
INSERT INTO `product_images` VALUES (89,'30-725rev.jpg','image/jpeg',47271,'2010-12-02 18:31:55',481,0,'2010-12-02 18:31:59','2010-12-02 18:31:59');
INSERT INTO `product_images` VALUES (90,'MAntobv.jpg','image/jpeg',29005,'2010-12-02 18:32:38',483,1,'2010-12-02 18:32:51','2010-12-02 18:32:51');
INSERT INTO `product_images` VALUES (91,'MAntrev.jpg','image/jpeg',28314,'2010-12-02 18:32:48',483,0,'2010-12-02 18:32:52','2010-12-02 18:32:52');
INSERT INTO `product_images` VALUES (92,'captaobv.jpg','image/jpeg',55308,'2010-12-02 18:33:33',508,1,'2010-12-02 18:33:40','2010-12-02 18:33:40');
INSERT INTO `product_images` VALUES (93,'captarev.jpg','image/jpeg',45311,'2010-12-02 18:33:38',508,0,'2010-12-02 18:33:41','2010-12-02 18:33:41');
INSERT INTO `product_images` VALUES (94,'OBV_sm_size.jpg','image/jpeg',59885,'2010-12-02 18:34:25',1468,1,'2010-12-02 18:34:36','2010-12-02 18:34:36');
INSERT INTO `product_images` VALUES (95,'1_sm_size.jpg','image/jpeg',38940,'2010-12-02 18:34:29',1468,0,'2010-12-02 18:34:37','2010-12-02 18:34:37');
INSERT INTO `product_images` VALUES (96,'2_sm_size.jpg','image/jpeg',33135,'2010-12-02 18:34:31',1468,0,'2010-12-02 18:34:37','2010-12-02 18:34:37');
INSERT INTO `product_images` VALUES (97,'30-875obv.jpg','image/jpeg',47774,'2010-12-02 18:34:40',480,1,'2010-12-02 18:34:55','2010-12-02 18:34:55');
INSERT INTO `product_images` VALUES (98,'30-875rev.jpg','image/jpeg',44107,'2010-12-02 18:34:47',480,0,'2010-12-02 18:34:56','2010-12-02 18:34:56');
INSERT INTO `product_images` VALUES (99,'shekel_ngc_297.jpg','image/jpeg',54872,'2010-12-02 18:35:51',879,1,'2010-12-02 18:36:00','2010-12-02 18:36:00');
INSERT INTO `product_images` VALUES (100,'shekel_ngc_297_r.jpg','image/jpeg',52704,'2010-12-02 18:35:56',879,0,'2010-12-02 18:36:00','2010-12-02 18:36:00');
INSERT INTO `product_images` VALUES (101,'ALEX_GREAT_TETRA_N-VF_OBV.jpg','image/jpeg',68721,'2010-12-02 18:37:45',1067,1,'2010-12-02 18:38:03','2010-12-02 18:38:03');
INSERT INTO `product_images` VALUES (102,'ALEX_GREAT_TETRA_N-VF_REV.jpg','image/jpeg',67960,'2010-12-02 18:37:55',1067,0,'2010-12-02 18:38:04','2010-12-02 18:38:04');
INSERT INTO `product_images` VALUES (103,'ALEX_GREAT_TETRA_N-VF.jpg','image/jpeg',83291,'2010-12-02 18:37:57',1067,0,'2010-12-02 18:38:04','2010-12-02 18:38:04');
INSERT INTO `product_images` VALUES (104,'LYDIA_GOLD_N-UNC_OBV.jpg','image/jpeg',66427,'2010-12-02 18:39:05',979,1,'2010-12-02 18:39:14','2010-12-02 18:39:14');
INSERT INTO `product_images` VALUES (105,'LYDIA_GOLD_N-UNC_REV.jpg','image/jpeg',61861,'2010-12-02 18:39:10',979,0,'2010-12-02 18:39:14','2010-12-02 18:39:14');
INSERT INTO `product_images` VALUES (106,'LYDIA_GOLD_N-UNC.jpg','image/jpeg',55035,'2010-12-02 18:39:12',979,0,'2010-12-02 18:39:14','2010-12-02 18:39:14');
INSERT INTO `product_images` VALUES (107,'SHEKEL_ICG_AU55_OBV.jpg','image/jpeg',72058,'2010-12-02 18:40:53',977,1,'2010-12-02 18:41:04','2010-12-02 18:41:04');
INSERT INTO `product_images` VALUES (108,'SHEKEL_ICG_AU55_REV.jpg','image/jpeg',79541,'2010-12-02 18:40:58',977,0,'2010-12-02 18:41:04','2010-12-02 18:41:04');
INSERT INTO `product_images` VALUES (109,'SHEKEL_ICG_AU55.jpg','image/jpeg',70027,'2010-12-02 18:41:00',977,0,'2010-12-02 18:41:04','2010-12-02 18:41:04');
INSERT INTO `product_images` VALUES (110,'BAR_KOCHBA_CHUNC_OBV.jpg','image/jpeg',133914,'2010-12-02 18:42:17',1384,1,'2010-12-02 18:42:29','2010-12-02 18:42:29');
INSERT INTO `product_images` VALUES (111,'BAR_KOCHBA_CHUNC_REV.jpg','image/jpeg',132407,'2010-12-02 18:42:22',1384,0,'2010-12-02 18:42:31','2010-12-02 18:42:31');
INSERT INTO `product_images` VALUES (112,'BAR_KOCHBA_CHUNC.jpg','image/jpeg',116107,'2010-12-02 18:42:24',1384,0,'2010-12-02 18:42:31','2010-12-02 18:42:31');
INSERT INTO `product_images` VALUES (113,'WMfolder39.jpg','image/jpeg',1040782,'2010-12-02 18:46:22',200,1,'2010-12-02 18:46:28','2010-12-02 18:46:28');
INSERT INTO `product_images` VALUES (114,'LYDIA_GOLD_N-AUNC_OBV.jpg','image/jpeg',69047,'2010-12-02 18:47:40',978,1,'2010-12-02 18:47:51','2010-12-02 18:47:51');
INSERT INTO `product_images` VALUES (115,'LYDIA_GOLD_N-AUNC_REV.jpg','image/jpeg',61198,'2010-12-02 18:47:46',978,0,'2010-12-02 18:47:51','2010-12-02 18:47:51');
INSERT INTO `product_images` VALUES (116,'LYDIA_GOLD_N-AUNC.jpg','image/jpeg',58756,'2010-12-02 18:47:48',978,0,'2010-12-02 18:47:51','2010-12-02 18:47:51');
INSERT INTO `product_images` VALUES (118,'shek_24-25_obv.jpg','image/jpeg',72140,'2010-12-02 18:48:49',1088,1,'2010-12-02 18:48:58','2010-12-06 15:31:12');
INSERT INTO `product_images` VALUES (119,'shek_24-25_rev.jpg','image/jpeg',81963,'2010-12-02 18:48:53',1088,0,'2010-12-02 18:48:58','2010-12-02 18:48:58');
INSERT INTO `product_images` VALUES (120,'shek_24-25.jpg','image/jpeg',94464,'2010-12-02 18:48:55',1088,0,'2010-12-02 18:48:58','2010-12-02 18:48:58');
INSERT INTO `product_images` VALUES (121,'shek_27-28_obv.jpg','image/jpeg',75869,'2010-12-02 18:49:50',1087,1,'2010-12-02 18:49:59','2010-12-02 18:49:59');
INSERT INTO `product_images` VALUES (122,'shek_27-28_rev.jpg','image/jpeg',79951,'2010-12-02 18:49:54',1087,0,'2010-12-02 18:49:59','2010-12-02 18:49:59');
INSERT INTO `product_images` VALUES (123,'shek_27-28.jpg','image/jpeg',97715,'2010-12-02 18:49:56',1087,0,'2010-12-02 18:49:59','2010-12-02 18:49:59');
INSERT INTO `product_images` VALUES (124,'shek_29-30_obv.jpg','image/jpeg',76485,'2010-12-02 18:51:02',1084,1,'2010-12-02 18:51:17','2010-12-02 18:51:17');
INSERT INTO `product_images` VALUES (125,'shek_29-30_rev.jpg','image/jpeg',83527,'2010-12-02 18:51:08',1084,0,'2010-12-02 18:51:18','2010-12-02 18:51:18');
INSERT INTO `product_images` VALUES (126,'shek_29-30.jpg','image/jpeg',88701,'2010-12-02 18:51:11',1084,0,'2010-12-02 18:51:18','2010-12-02 18:51:18');
INSERT INTO `product_images` VALUES (127,'shek_32-33_obv.jpg','image/jpeg',74812,'2010-12-02 18:52:04',1086,1,'2010-12-02 18:52:50','2010-12-02 18:52:50');
INSERT INTO `product_images` VALUES (128,'shek_32-33_rev.jpg','image/jpeg',82870,'2010-12-02 18:52:22',1086,0,'2010-12-02 18:52:55','2010-12-02 18:52:55');
INSERT INTO `product_images` VALUES (129,'shek_32-33.jpg','image/jpeg',97343,'2010-12-02 18:52:28',1086,0,'2010-12-02 18:52:55','2010-12-02 18:52:55');
INSERT INTO `product_images` VALUES (130,'TIBERIUS_GOLD_ICGVF_OBV.jpg','image/jpeg',74188,'2010-12-02 18:54:02',980,1,'2010-12-02 18:54:28','2010-12-02 18:54:28');
INSERT INTO `product_images` VALUES (131,'TIBERIUS_GOLD_ICGVF_REV.jpg','image/jpeg',73790,'2010-12-02 18:54:16',980,0,'2010-12-02 18:54:29','2010-12-02 18:54:29');
INSERT INTO `product_images` VALUES (132,'TIBERIUS_GOLD_ICGVF.jpg','image/jpeg',60443,'2010-12-02 18:54:19',980,0,'2010-12-02 18:54:29','2010-12-02 18:54:29');
INSERT INTO `product_images` VALUES (133,'1-2_shekel_Nvf_obv.jpg','image/jpeg',64349,'2010-12-02 18:55:18',1020,1,'2010-12-02 18:55:29','2010-12-02 18:55:29');
INSERT INTO `product_images` VALUES (134,'1-2_shekel_Nvf_rev.jpg','image/jpeg',72238,'2010-12-02 18:55:23',1020,0,'2010-12-02 18:55:30','2010-12-02 18:55:30');
INSERT INTO `product_images` VALUES (135,'1-2_shekel_Nvf.jpg','image/jpeg',62359,'2010-12-02 18:55:25',1020,0,'2010-12-02 18:55:30','2010-12-02 18:55:30');
INSERT INTO `product_images` VALUES (136,'1-2_shekel_ICGvf_obv.jpg','image/jpeg',81786,'2010-12-02 18:56:21',1019,1,'2010-12-02 18:56:36','2010-12-02 18:56:36');
INSERT INTO `product_images` VALUES (137,'1-2_shekel_ICGvf_rev.jpg','image/jpeg',75472,'2010-12-02 18:56:30',1019,0,'2010-12-02 18:56:37','2010-12-02 18:56:37');
INSERT INTO `product_images` VALUES (138,'1-2_shekel_ICGvf.jpg','image/jpeg',71879,'2010-12-02 18:56:32',1019,0,'2010-12-02 18:56:37','2010-12-02 18:56:37');
INSERT INTO `product_images` VALUES (139,'Con9obv.jpg','image/jpeg',37774,'2010-12-02 18:57:27',151,1,'2010-12-02 18:57:33','2010-12-02 18:57:33');
INSERT INTO `product_images` VALUES (140,'con9rev.jpg','image/jpeg',39212,'2010-12-02 18:57:31',151,0,'2010-12-02 18:57:33','2010-12-02 18:57:33');
INSERT INTO `product_images` VALUES (141,'MAURICE_TIBERIUS_OBV.jpg','image/jpeg',129299,'2010-12-02 18:58:53',555,1,'2010-12-02 18:59:07','2010-12-02 18:59:07');
INSERT INTO `product_images` VALUES (142,'MAURICE_TIBERIUS_REV.jpg','image/jpeg',133297,'2010-12-02 18:58:59',555,0,'2010-12-02 18:59:10','2010-12-02 18:59:10');
INSERT INTO `product_images` VALUES (143,'MAURICE_TIBERIUS.jpg','image/jpeg',95249,'2010-12-02 18:59:02',555,0,'2010-12-02 18:59:11','2010-12-02 18:59:11');
INSERT INTO `product_images` VALUES (144,'1853_$20_OBV.jpg','image/jpeg',52292,'2010-12-02 18:59:13',252,1,'2010-12-02 18:59:36','2010-12-02 18:59:36');
INSERT INTO `product_images` VALUES (145,'1853_$20_REV.jpg','image/jpeg',51414,'2010-12-02 18:59:22',252,0,'2010-12-02 18:59:41','2010-12-02 18:59:41');
INSERT INTO `product_images` VALUES (146,'1853_$20.jpg','image/jpeg',44888,'2010-12-02 18:59:26',252,0,'2010-12-02 18:59:43','2010-12-02 18:59:43');
INSERT INTO `product_images` VALUES (147,'JChalfobv.jpg','image/jpeg',32112,'2010-12-02 19:01:38',232,1,'2010-12-02 19:02:02','2010-12-02 19:02:02');
INSERT INTO `product_images` VALUES (148,'JChalfrev.jpg','image/jpeg',31470,'2010-12-02 19:01:53',232,0,'2010-12-02 19:02:04','2010-12-02 19:02:04');
INSERT INTO `product_images` VALUES (149,'Christ9700obv.jpg','image/jpeg',34524,'2010-12-02 19:02:59',541,1,'2010-12-02 19:03:20','2010-12-02 19:03:20');
INSERT INTO `product_images` VALUES (150,'Christ9700rev.jpg','image/jpeg',34253,'2010-12-02 19:03:12',541,0,'2010-12-02 19:03:22','2010-12-02 19:03:22');
INSERT INTO `product_images` VALUES (151,'Neapolis877obv.jpg','image/jpeg',30847,'2010-12-02 19:05:01',538,1,'2010-12-02 19:05:13','2010-12-02 19:05:13');
INSERT INTO `product_images` VALUES (152,'Neapolis877rev.jpg','image/jpeg',32137,'2010-12-02 19:05:08',538,0,'2010-12-02 19:05:13','2010-12-02 19:05:13');
INSERT INTO `product_images` VALUES (153,'51_pr_set_f.jpg','image/jpeg',95257,'2010-12-02 19:06:08',306,1,'2010-12-02 19:06:19','2010-12-02 19:06:19');
INSERT INTO `product_images` VALUES (154,'51_pr_set_r.jpg','image/jpeg',97862,'2010-12-02 19:06:13',306,0,'2010-12-02 19:06:20','2010-12-02 19:06:20');
INSERT INTO `product_images` VALUES (155,'Neapolis577obv.jpg','image/jpeg',32339,'2010-12-02 19:07:52',556,1,'2010-12-02 19:08:04','2010-12-02 19:08:04');
INSERT INTO `product_images` VALUES (156,'Neapolis577rev.jpg','image/jpeg',34396,'2010-12-02 19:08:01',556,0,'2010-12-02 19:08:04','2010-12-02 19:08:04');
INSERT INTO `product_images` VALUES (157,'HIMERA_OBV.jpg','image/jpeg',118601,'2010-12-02 19:09:23',457,1,'2010-12-02 19:09:38','2010-12-02 19:09:38');
INSERT INTO `product_images` VALUES (158,'HIMERA_REV.jpg','image/jpeg',130980,'2010-12-02 19:09:28',457,0,'2010-12-02 19:09:39','2010-12-02 19:09:39');
INSERT INTO `product_images` VALUES (159,'HIMERA.jpg','image/jpeg',119948,'2010-12-02 19:09:30',457,0,'2010-12-02 19:09:39','2010-12-02 19:09:39');
INSERT INTO `product_images` VALUES (160,'Twentyfourthobv.jpg','image/jpeg',24910,'2010-12-02 19:10:21',653,1,'2010-12-02 19:10:35','2010-12-02 19:10:35');
INSERT INTO `product_images` VALUES (161,'Twentyfourthrev.jpg','image/jpeg',24969,'2010-12-02 19:10:29',653,0,'2010-12-02 19:10:37','2010-12-02 19:10:37');
INSERT INTO `product_images` VALUES (162,'Twelfthobv.jpg','image/jpeg',25351,'2010-12-02 19:11:53',654,1,'2010-12-02 19:12:07','2010-12-02 19:12:07');
INSERT INTO `product_images` VALUES (163,'Twelfthrev.jpg','image/jpeg',25618,'2010-12-02 19:12:01',654,0,'2010-12-02 19:12:08','2010-12-02 19:12:08');
INSERT INTO `product_images` VALUES (164,'akragas_obv.jpg','image/jpeg',98293,'2010-12-02 19:13:06',1182,1,'2010-12-02 19:13:17','2010-12-02 19:13:17');
INSERT INTO `product_images` VALUES (165,'akragas_rev.jpg','image/jpeg',102646,'2010-12-02 19:13:12',1182,0,'2010-12-02 19:13:17','2010-12-02 19:13:17');
INSERT INTO `product_images` VALUES (166,'akragas.jpg','image/jpeg',59550,'2010-12-02 19:13:14',1182,0,'2010-12-02 19:13:17','2010-12-02 19:13:17');
INSERT INTO `product_images` VALUES (167,'1995_1C_DDO_P-67_OBV.jpg','image/jpeg',83773,'2010-12-02 19:13:45',635,1,'2010-12-02 19:13:57','2010-12-02 19:13:57');
INSERT INTO `product_images` VALUES (168,'1995_1C_DDO_P-67_REV.jpg','image/jpeg',97308,'2010-12-02 19:13:50',635,0,'2010-12-02 19:13:58','2010-12-02 19:13:58');
INSERT INTO `product_images` VALUES (169,'1995_1C_DDO_P-66.jpg','image/jpeg',83057,'2010-12-02 19:13:53',635,0,'2010-12-02 19:14:04','2010-12-02 19:14:04');
INSERT INTO `product_images` VALUES (170,'AKRAGAS_OBV.jpg','image/jpeg',107974,'2010-12-02 19:17:36',1401,1,'2010-12-02 19:18:40','2010-12-02 19:18:40');
INSERT INTO `product_images` VALUES (171,'AKRAGAS_REV.jpg','image/jpeg',130933,'2010-12-02 19:17:57',1401,0,'2010-12-02 19:18:44','2010-12-02 19:18:44');
INSERT INTO `product_images` VALUES (172,'AKRAGAS.jpg','image/jpeg',173715,'2010-12-02 19:18:01',1401,0,'2010-12-02 19:18:46','2010-12-02 19:18:46');
INSERT INTO `product_images` VALUES (173,'1942_5C_OBV.jpg','image/jpeg',110020,'2010-12-02 19:41:27',1340,0,'2010-12-02 19:41:32','2011-01-15 15:20:14');
INSERT INTO `product_images` VALUES (174,'1942_5C_REV.jpg','image/jpeg',126076,'2010-12-02 19:41:29',1340,1,'2010-12-02 19:41:32','2011-01-15 15:20:14');
INSERT INTO `product_images` VALUES (175,'1942_5C.jpg','image/jpeg',107107,'2010-12-02 19:41:30',1340,0,'2010-12-02 19:41:32','2010-12-02 19:41:32');
INSERT INTO `product_images` VALUES (176,'1829_10C_OBV.jpg','image/jpeg',112603,'2010-12-02 19:45:37',387,1,'2010-12-02 19:45:41','2010-12-02 19:45:41');
INSERT INTO `product_images` VALUES (177,'1829_10C_REV.jpg','image/jpeg',135067,'2010-12-02 19:45:39',387,0,'2010-12-02 19:45:41','2010-12-02 19:45:41');
INSERT INTO `product_images` VALUES (178,'1829_10C.jpg','image/jpeg',77233,'2010-12-02 19:45:40',387,0,'2010-12-02 19:45:41','2010-12-02 19:45:41');
INSERT INTO `product_images` VALUES (179,'1912_10C_P66_OBV.jpg','image/jpeg',75056,'2010-12-02 19:47:26',929,1,'2010-12-02 19:47:30','2010-12-02 19:47:46');
INSERT INTO `product_images` VALUES (180,'1912_10C_P66_REV.jpg','image/jpeg',78603,'2010-12-02 19:47:28',929,0,'2010-12-02 19:47:30','2010-12-02 19:47:30');
INSERT INTO `product_images` VALUES (181,'1912_10C_P66.jpg','image/jpeg',52725,'2010-12-02 19:47:29',929,0,'2010-12-02 19:47:30','2010-12-02 19:47:30');
INSERT INTO `product_images` VALUES (182,'1930_25C_N64_OBV.jpg','image/jpeg',64714,'2010-12-02 19:51:19',1294,1,'2010-12-02 19:51:23','2010-12-02 19:51:23');
INSERT INTO `product_images` VALUES (184,'1930_25C_N64.jpg','image/jpeg',40429,'2010-12-02 19:51:22',1294,0,'2010-12-02 19:51:23','2010-12-02 19:51:23');
INSERT INTO `product_images` VALUES (185,'35_25c_p65_f.jpg','image/jpeg',54880,'2010-12-02 19:53:18',408,0,'2010-12-02 19:53:21','2010-12-02 19:58:58');
INSERT INTO `product_images` VALUES (186,'35_25c_p65_r.jpg','image/jpeg',71752,'2010-12-02 19:53:19',408,0,'2010-12-02 19:53:21','2010-12-02 19:53:21');
INSERT INTO `product_images` VALUES (187,'35_25c_p65.jpg','image/jpeg',65179,'2010-12-02 19:53:20',408,1,'2010-12-02 19:53:21','2010-12-02 19:58:58');
INSERT INTO `product_images` VALUES (188,'1833_50C_P64_OBV.jpg','image/jpeg',62303,'2010-12-02 19:55:08',1439,1,'2010-12-02 19:55:12','2010-12-02 19:55:12');
INSERT INTO `product_images` VALUES (189,'1833_50C_P64_REV.jpg','image/jpeg',65083,'2010-12-02 19:55:10',1439,0,'2010-12-02 19:55:12','2010-12-02 19:55:12');
INSERT INTO `product_images` VALUES (190,'1833_50C_P64.jpg','image/jpeg',87026,'2010-12-02 19:55:11',1439,0,'2010-12-02 19:55:12','2010-12-02 19:55:12');
INSERT INTO `product_images` VALUES (191,'1876_50C_NGC_OBV.jpg','image/jpeg',48892,'2010-12-02 19:58:27',1470,1,'2010-12-02 19:58:31','2010-12-02 19:58:31');
INSERT INTO `product_images` VALUES (192,'1876_20C_REV.jpg','image/jpeg',74125,'2010-12-02 19:58:28',1470,0,'2010-12-02 19:58:31','2010-12-02 19:58:31');
INSERT INTO `product_images` VALUES (193,'1876_20C.jpg','image/jpeg',59964,'2010-12-02 19:58:29',1470,0,'2010-12-02 19:58:31','2010-12-02 19:58:31');
INSERT INTO `product_images` VALUES (194,'39_50C_PR65_OBV.jpg','image/jpeg',127299,'2010-12-02 20:11:24',1326,1,'2010-12-02 20:11:28','2010-12-02 20:11:28');
INSERT INTO `product_images` VALUES (195,'39-38_5C_PR65_REV.jpg','image/jpeg',84842,'2010-12-02 20:11:25',1326,0,'2010-12-02 20:11:28','2010-12-02 20:11:28');
INSERT INTO `product_images` VALUES (196,'39-38_5C_PR65.jpg','image/jpeg',77300,'2010-12-02 20:11:26',1326,0,'2010-12-02 20:11:28','2010-12-02 20:11:28');
INSERT INTO `product_images` VALUES (197,'1940_50C_P-66_OBV.jpg','image/jpeg',56629,'2010-12-02 20:14:12',1206,1,'2010-12-02 20:14:16','2010-12-02 20:14:16');
INSERT INTO `product_images` VALUES (198,'1940_50C_P-66_REV.jpg','image/jpeg',58434,'2010-12-02 20:14:13',1206,0,'2010-12-02 20:14:16','2010-12-02 20:14:16');
INSERT INTO `product_images` VALUES (199,'1940_50C_P-66.jpg','image/jpeg',56342,'2010-12-02 20:14:14',1206,0,'2010-12-02 20:14:16','2010-12-02 20:14:16');
INSERT INTO `product_images` VALUES (200,'1941-S_50C_N-64_OBV.jpg','image/jpeg',58593,'2010-12-02 20:18:15',1219,1,'2010-12-02 20:18:18','2010-12-02 20:18:18');
INSERT INTO `product_images` VALUES (201,'1941-S_50C_N-64_REV.jpg','image/jpeg',59037,'2010-12-02 20:18:16',1219,0,'2010-12-02 20:18:18','2010-12-02 20:18:18');
INSERT INTO `product_images` VALUES (202,'1941-S_50C_N-64.jpg','image/jpeg',66307,'2010-12-02 20:18:17',1219,0,'2010-12-02 20:18:18','2010-12-02 20:18:18');
INSERT INTO `product_images` VALUES (203,'5917obv.jpg','image/jpeg',102087,'2010-12-02 20:20:52',314,1,'2010-12-02 20:20:56','2010-12-02 20:20:56');
INSERT INTO `product_images` VALUES (204,'5917rev.jpg','image/jpeg',109110,'2010-12-02 20:20:53',314,0,'2010-12-02 20:20:56','2010-12-02 20:20:56');
INSERT INTO `product_images` VALUES (205,'5917.jpg','image/jpeg',110872,'2010-12-02 20:20:54',314,0,'2010-12-02 20:20:56','2010-12-02 20:20:56');
INSERT INTO `product_images` VALUES (206,'1966_50C_DDO_OBV.jpg','image/jpeg',88689,'2010-12-02 20:22:41',1440,1,'2010-12-02 20:22:45','2010-12-02 20:22:45');
INSERT INTO `product_images` VALUES (207,'1966_50C_DDO_REV.jpg','image/jpeg',80666,'2010-12-02 20:22:43',1440,0,'2010-12-02 20:22:45','2010-12-02 20:22:45');
INSERT INTO `product_images` VALUES (208,'1966_50C_DDO.jpg','image/jpeg',42093,'2010-12-02 20:22:44',1440,0,'2010-12-02 20:22:45','2010-12-02 20:22:45');
INSERT INTO `product_images` VALUES (209,'Gob40obv.jpg','image/jpeg',131326,'2010-12-02 20:26:20',255,1,'2010-12-02 20:26:22','2010-12-02 20:26:22');
INSERT INTO `product_images` VALUES (210,'Gob40rev.jpg','image/jpeg',128160,'2010-12-02 20:26:21',255,0,'2010-12-02 20:26:22','2010-12-02 20:26:22');
INSERT INTO `product_images` VALUES (211,'1846-46_$_P58.jpg','image/jpeg',66862,'2010-12-02 20:30:08',1135,1,'2010-12-02 20:30:12','2010-12-02 20:30:12');
INSERT INTO `product_images` VALUES (212,'1846-46_$_P58_REV.jpg','image/jpeg',77353,'2010-12-02 20:30:09',1135,0,'2010-12-02 20:30:12','2010-12-02 20:30:12');
INSERT INTO `product_images` VALUES (213,'Untitled-8.jpg','image/jpeg',35743,'2010-12-02 20:30:10',1135,0,'2010-12-02 20:30:12','2010-12-02 20:30:12');
INSERT INTO `product_images` VALUES (214,'ANTIOCHUS_VII_OBV.jpg','image/jpeg',117721,'2010-12-02 21:45:11',1259,1,'2010-12-02 21:45:18','2010-12-02 21:45:18');
INSERT INTO `product_images` VALUES (215,'ANTIOCHUS_VII_REV.jpg','image/jpeg',128878,'2010-12-02 21:45:15',1259,0,'2010-12-02 21:45:18','2010-12-02 21:45:18');
INSERT INTO `product_images` VALUES (216,'ANTIOCHUS_VII.jpg','image/jpeg',174373,'2010-12-02 21:45:16',1259,0,'2010-12-02 21:45:18','2010-12-02 21:45:18');
INSERT INTO `product_images` VALUES (217,'ANTIOCHUS_VII_OBV.jpg','image/jpeg',117721,'2010-12-02 21:46:56',914,1,'2010-12-02 21:47:00','2010-12-02 21:47:00');
INSERT INTO `product_images` VALUES (218,'ANTIOCHUS_VII_REV.jpg','image/jpeg',128878,'2010-12-02 21:46:57',914,0,'2010-12-02 21:47:00','2010-12-02 21:47:00');
INSERT INTO `product_images` VALUES (219,'ANTIOCHUS_VII.jpg','image/jpeg',174373,'2010-12-02 21:46:59',914,0,'2010-12-02 21:47:00','2010-12-02 21:47:00');
INSERT INTO `product_images` VALUES (220,'EUKRA_OBV.jpg','image/jpeg',68744,'2010-12-02 23:24:28',1285,1,'2010-12-02 23:24:32','2010-12-02 23:24:32');
INSERT INTO `product_images` VALUES (221,'EUKRA_REV.jpg','image/jpeg',73192,'2010-12-02 23:24:30',1285,0,'2010-12-02 23:24:32','2010-12-02 23:24:32');
INSERT INTO `product_images` VALUES (222,'EUKRA.jpg','image/jpeg',70443,'2010-12-02 23:24:31',1285,0,'2010-12-02 23:24:32','2010-12-02 23:24:32');
INSERT INTO `product_images` VALUES (223,'1860-O_$_A55_OBV.jpg','image/jpeg',77745,'2010-12-02 23:28:03',1140,1,'2010-12-02 23:28:07','2010-12-02 23:28:07');
INSERT INTO `product_images` VALUES (224,'1860-O_$_A55_REV.jpg','image/jpeg',78055,'2010-12-02 23:28:04',1140,0,'2010-12-02 23:28:07','2010-12-02 23:28:07');
INSERT INTO `product_images` VALUES (225,'1860-O_$_A55.jpg','image/jpeg',59984,'2010-12-02 23:28:05',1140,0,'2010-12-02 23:28:07','2010-12-02 23:28:07');
INSERT INTO `product_images` VALUES (226,'82-cc_gsa_$_obv.jpg','image/jpeg',138316,'2010-12-02 23:33:37',1159,1,'2010-12-02 23:33:41','2010-12-02 23:33:41');
INSERT INTO `product_images` VALUES (227,'82-cc_gsa_$_rev.jpg','image/jpeg',147383,'2010-12-02 23:33:39',1159,0,'2010-12-02 23:33:41','2010-12-02 23:33:41');
INSERT INTO `product_images` VALUES (228,'82-cc_gsa_$.jpg','image/jpeg',135335,'2010-12-02 23:33:40',1159,0,'2010-12-02 23:33:41','2010-12-02 23:33:41');
INSERT INTO `product_images` VALUES (229,'1884-O_$_N-65_OBV.jpg','image/jpeg',52440,'2010-12-02 23:35:38',410,1,'2010-12-02 23:35:42','2010-12-02 23:35:42');
INSERT INTO `product_images` VALUES (230,'1884-O_$_N-65_REV.jpg','image/jpeg',50132,'2010-12-02 23:35:39',410,0,'2010-12-02 23:35:42','2010-12-02 23:35:42');
INSERT INTO `product_images` VALUES (231,'1884-O_$_N-65.jpg','image/jpeg',48542,'2010-12-02 23:35:41',410,0,'2010-12-02 23:35:42','2010-12-02 23:35:42');
INSERT INTO `product_images` VALUES (232,'1895-S_$_N-63DPL_OBV.jpg','image/jpeg',58222,'2010-12-02 23:37:34',1425,1,'2010-12-02 23:37:37','2010-12-02 23:37:37');
INSERT INTO `product_images` VALUES (233,'1895-S_$_N-63DPL_REV.jpg','image/jpeg',60148,'2010-12-02 23:37:35',1425,0,'2010-12-02 23:37:37','2010-12-02 23:37:37');
INSERT INTO `product_images` VALUES (234,'1895-S_$_N-63DPL.jpg','image/jpeg',46298,'2010-12-02 23:37:36',1425,0,'2010-12-02 23:37:37','2010-12-02 23:37:37');
INSERT INTO `product_images` VALUES (235,'1924_$_N-67_OBV.jpg','image/jpeg',101001,'2010-12-02 23:40:18',1338,1,'2010-12-02 23:40:22','2010-12-02 23:40:22');
INSERT INTO `product_images` VALUES (236,'1924_$_N-67_REV.jpg','image/jpeg',101050,'2010-12-02 23:40:20',1338,0,'2010-12-02 23:40:22','2010-12-02 23:40:22');
INSERT INTO `product_images` VALUES (237,'1924_$_N-67.jpg','image/jpeg',93860,'2010-12-02 23:40:21',1338,0,'2010-12-02 23:40:22','2010-12-02 23:40:22');
INSERT INTO `product_images` VALUES (238,'1944Dobv.jpg','image/jpeg',66326,'2010-12-02 23:42:02',738,1,'2010-12-02 23:42:04','2010-12-02 23:42:24');
INSERT INTO `product_images` VALUES (239,'1944Drev.jpg','image/jpeg',66025,'2010-12-02 23:42:03',738,0,'2010-12-02 23:42:04','2010-12-02 23:42:04');
INSERT INTO `product_images` VALUES (240,'1851-O_$G_OBV.jpg','image/jpeg',133617,'2010-12-02 23:44:14',1331,1,'2010-12-02 23:44:19','2010-12-02 23:44:19');
INSERT INTO `product_images` VALUES (241,'1851-O_$G_REV.jpg','image/jpeg',121820,'2010-12-02 23:44:16',1331,0,'2010-12-02 23:44:19','2010-12-02 23:44:19');
INSERT INTO `product_images` VALUES (242,'1851-O_$G.jpg','image/jpeg',55042,'2010-12-02 23:44:18',1331,0,'2010-12-02 23:44:19','2010-12-02 23:44:19');
INSERT INTO `product_images` VALUES (243,'1854g$.jpg','image/jpeg',61552,'2010-12-02 23:46:12',709,1,'2010-12-02 23:46:16','2010-12-02 23:46:16');
INSERT INTO `product_images` VALUES (244,'1854g$-r.jpg','image/jpeg',62527,'2010-12-02 23:46:13',709,0,'2010-12-02 23:46:16','2010-12-02 23:46:16');
INSERT INTO `product_images` VALUES (245,'1854g$.jpg','image/jpeg',61552,'2010-12-02 23:46:14',709,0,'2010-12-02 23:46:16','2010-12-02 23:46:16');
INSERT INTO `product_images` VALUES (246,'HIGH_RELIEF_OBV.jpg','image/jpeg',100517,'2010-12-02 23:49:37',1299,1,'2010-12-02 23:49:41','2010-12-02 23:49:41');
INSERT INTO `product_images` VALUES (247,'HIGH_RELIEF_REV.jpg','image/jpeg',85839,'2010-12-02 23:49:38',1299,0,'2010-12-02 23:49:41','2010-12-02 23:49:41');
INSERT INTO `product_images` VALUES (248,'HIGH_RELIEF.jpg','image/jpeg',74262,'2010-12-02 23:49:39',1299,0,'2010-12-02 23:49:41','2010-12-02 23:49:41');
INSERT INTO `product_images` VALUES (249,'ANTIETAM_A-65_OBV.jpg','image/jpeg',54846,'2010-12-03 00:27:11',1437,1,'2010-12-03 00:27:15','2010-12-03 00:27:15');
INSERT INTO `product_images` VALUES (250,'ANTIETAM_A-65_OBV_REV.jpg','image/jpeg',56723,'2010-12-03 00:27:12',1437,0,'2010-12-03 00:27:15','2010-12-03 00:27:15');
INSERT INTO `product_images` VALUES (251,'ANTIETAM_A-65.jpg','image/jpeg',44493,'2010-12-03 00:27:13',1437,0,'2010-12-03 00:27:15','2010-12-03 00:27:15');
INSERT INTO `product_images` VALUES (252,'37_BOONE_OBV.jpg','image/jpeg',86771,'2010-12-03 00:29:55',1271,1,'2010-12-03 00:29:59','2010-12-03 00:29:59');
INSERT INTO `product_images` VALUES (253,'37_BOONE_REV.jpg','image/jpeg',108578,'2010-12-03 00:29:56',1271,0,'2010-12-03 00:29:59','2010-12-03 00:29:59');
INSERT INTO `product_images` VALUES (254,'37_BOONE.jpg','image/jpeg',72274,'2010-12-03 00:29:57',1271,0,'2010-12-03 00:29:59','2010-12-03 00:29:59');
INSERT INTO `product_images` VALUES (255,'HUDSON_OBV.jpg','image/jpeg',108895,'2010-12-03 00:32:18',466,1,'2010-12-03 00:32:23','2010-12-03 00:32:23');
INSERT INTO `product_images` VALUES (256,'HUDSON_REV.jpg','image/jpeg',112929,'2010-12-03 00:32:20',466,0,'2010-12-03 00:32:23','2010-12-03 00:32:23');
INSERT INTO `product_images` VALUES (257,'HUDSON.jpg','image/jpeg',86778,'2010-12-03 00:32:21',466,0,'2010-12-03 00:32:23','2010-12-03 00:32:23');
INSERT INTO `product_images` VALUES (258,'LEXINGTON_P65_OBV.jpg','image/jpeg',50123,'2010-12-03 00:34:19',1471,1,'2010-12-03 00:34:22','2010-12-03 00:34:22');
INSERT INTO `product_images` VALUES (259,'LEXINGTON_P65_REV.jpg','image/jpeg',51381,'2010-12-03 00:34:20',1471,0,'2010-12-03 00:34:22','2010-12-03 00:34:22');
INSERT INTO `product_images` VALUES (260,'LEXINGTON_P65.jpg','image/jpeg',54547,'2010-12-03 00:34:21',1471,0,'2010-12-03 00:34:22','2010-12-03 00:34:22');
INSERT INTO `product_images` VALUES (261,'LYNCH_OBV.jpg','image/jpeg',98459,'2010-12-03 00:35:38',1242,1,'2010-12-03 00:35:42','2010-12-03 00:35:42');
INSERT INTO `product_images` VALUES (262,'LYNCH_REV.jpg','image/jpeg',105163,'2010-12-03 00:35:40',1242,0,'2010-12-03 00:35:42','2010-12-03 00:35:42');
INSERT INTO `product_images` VALUES (263,'LYNCH.jpg','image/jpeg',82737,'2010-12-03 00:35:41',1242,0,'2010-12-03 00:35:42','2010-12-03 00:35:42');
INSERT INTO `product_images` VALUES (264,'36-S_OR_N66_OBV.jpg','image/jpeg',80402,'2010-12-03 00:37:28',1105,1,'2010-12-03 00:37:31','2010-12-03 00:37:31');
INSERT INTO `product_images` VALUES (265,'36-S_OR_N66_REV.jpg','image/jpeg',83672,'2010-12-03 00:37:29',1105,0,'2010-12-03 00:37:31','2010-12-03 00:37:31');
INSERT INTO `product_images` VALUES (266,'36-S_OR_N66.jpg','image/jpeg',115207,'2010-12-03 00:37:30',1105,0,'2010-12-03 00:37:31','2010-12-03 00:37:31');
INSERT INTO `product_images` VALUES (267,'38_50c_OR_P66_obv.jpg','image/jpeg',82101,'2010-12-03 00:39:07',1007,1,'2010-12-03 00:39:11','2010-12-03 00:39:11');
INSERT INTO `product_images` VALUES (268,'38_50c_OR_P66_rev.jpg','image/jpeg',78324,'2010-12-03 00:39:08',1007,0,'2010-12-03 00:39:11','2010-12-03 00:39:11');
INSERT INTO `product_images` VALUES (269,'38_50c_OR_P66.jpg','image/jpeg',74792,'2010-12-03 00:39:10',1007,0,'2010-12-03 00:39:11','2010-12-03 00:39:11');
INSERT INTO `product_images` VALUES (270,'38_oregon.jpg','image/jpeg',70464,'2010-12-03 00:40:54',474,1,'2010-12-03 00:40:58','2010-12-03 00:40:58');
INSERT INTO `product_images` VALUES (271,'38_oregon_r.jpg','image/jpeg',79241,'2010-12-03 00:40:55',474,0,'2010-12-03 00:40:58','2010-12-03 00:40:58');
INSERT INTO `product_images` VALUES (272,'38_oregon_f.jpg','image/jpeg',63880,'2010-12-03 00:40:56',474,0,'2010-12-03 00:40:58','2010-12-03 00:40:58');
INSERT INTO `product_images` VALUES (273,'1920_PILGRIM_P65_OBV.jpg','image/jpeg',58683,'2010-12-03 00:43:28',1472,1,'2010-12-03 00:43:31','2010-12-03 00:43:31');
INSERT INTO `product_images` VALUES (274,'1920_PILGRIM_P65_REV.jpg','image/jpeg',59780,'2010-12-03 00:43:29',1472,0,'2010-12-03 00:43:31','2010-12-03 00:43:31');
INSERT INTO `product_images` VALUES (275,'1920_PILGRIM_P65.jpg','image/jpeg',52171,'2010-12-03 00:43:30',1472,0,'2010-12-03 00:43:31','2010-12-03 00:43:31');
INSERT INTO `product_images` VALUES (279,'36_RHOD_ISL_OBV.jpg','image/jpeg',123877,'2010-12-03 00:49:07',1244,1,'2010-12-03 00:49:11','2010-12-03 00:49:11');
INSERT INTO `product_images` VALUES (280,'36_RHOD_ISL_REV.jpg','image/jpeg',117862,'2010-12-03 00:49:08',1244,0,'2010-12-03 00:49:11','2010-12-03 00:49:11');
INSERT INTO `product_images` VALUES (281,'36_RHOD_ISL.jpg','image/jpeg',84832,'2010-12-03 00:49:10',1244,0,'2010-12-03 00:49:11','2010-12-03 00:49:11');
INSERT INTO `product_images` VALUES (282,'ROANOKE_OBV.jpg','image/jpeg',118658,'2010-12-03 00:50:16',1272,1,'2010-12-03 00:50:20','2010-12-03 00:50:20');
INSERT INTO `product_images` VALUES (283,'ROANOKE_REV.jpg','image/jpeg',112250,'2010-12-03 00:50:18',1272,0,'2010-12-03 00:50:20','2010-12-03 00:50:20');
INSERT INTO `product_images` VALUES (284,'ROANOKE.jpg','image/jpeg',86885,'2010-12-03 00:50:19',1272,0,'2010-12-03 00:50:20','2010-12-03 00:50:20');
INSERT INTO `product_images` VALUES (285,'ROBIN_OBV.jpg','image/jpeg',101869,'2010-12-03 00:51:52',1230,1,'2010-12-03 00:51:56','2010-12-03 00:51:56');
INSERT INTO `product_images` VALUES (286,'ROBIN_REV.jpg','image/jpeg',107510,'2010-12-03 00:51:53',1230,0,'2010-12-03 00:51:56','2010-12-03 00:51:56');
INSERT INTO `product_images` VALUES (287,'ROBIN.jpg','image/jpeg',86886,'2010-12-03 00:51:54',1230,0,'2010-12-03 00:51:56','2010-12-03 00:51:56');
INSERT INTO `product_images` VALUES (288,'robinson-64.jpg','image/jpeg',70329,'2010-12-03 00:53:24',745,1,'2010-12-03 00:53:28','2010-12-03 00:53:28');
INSERT INTO `product_images` VALUES (289,'robinson-64_r.jpg','image/jpeg',76523,'2010-12-03 00:53:25',745,0,'2010-12-03 00:53:28','2010-12-03 00:53:28');
INSERT INTO `product_images` VALUES (290,'robinson-64_f.jpg','image/jpeg',64237,'2010-12-03 00:53:27',745,0,'2010-12-03 00:53:28','2010-12-03 00:53:28');
INSERT INTO `product_images` VALUES (291,'SP_TRAIL_OBV.jpg','image/jpeg',135868,'2010-12-03 00:55:00',1358,1,'2010-12-03 00:55:10','2010-12-03 00:55:10');
INSERT INTO `product_images` VALUES (292,'SP_TRAIL_REV.jpg','image/jpeg',130516,'2010-12-03 00:55:08',1358,0,'2010-12-03 00:55:10','2010-12-03 00:55:10');
INSERT INTO `product_images` VALUES (293,'sp_trail.jpg','image/jpeg',86492,'2010-12-03 00:55:09',1358,0,'2010-12-03 00:55:10','2010-12-03 00:55:10');
INSERT INTO `product_images` VALUES (294,'STN_MTN_65_OBV.jpg','image/jpeg',131574,'2010-12-03 00:56:04',1247,1,'2010-12-03 00:56:08','2010-12-03 00:56:08');
INSERT INTO `product_images` VALUES (295,'STN_MTN_65_REV.jpg','image/jpeg',137867,'2010-12-03 00:56:05',1247,0,'2010-12-03 00:56:08','2010-12-03 00:56:08');
INSERT INTO `product_images` VALUES (296,'STN_MTN_65.jpg','image/jpeg',99594,'2010-12-03 00:56:07',1247,0,'2010-12-03 00:56:08','2010-12-03 00:56:08');
INSERT INTO `product_images` VALUES (300,'WISCON_65_OBV.jpg','image/jpeg',126126,'2010-12-03 00:58:36',1248,1,'2010-12-03 00:58:40','2010-12-03 00:58:40');
INSERT INTO `product_images` VALUES (301,'WISCON_65_REV.jpg','image/jpeg',115447,'2010-12-03 00:58:38',1248,0,'2010-12-03 00:58:40','2010-12-03 00:58:40');
INSERT INTO `product_images` VALUES (302,'WISCON_65.jpg','image/jpeg',87059,'2010-12-03 00:58:39',1248,0,'2010-12-03 00:58:40','2010-12-03 00:58:40');
INSERT INTO `product_images` VALUES (303,'TORCH_RUNNER_OBV.jpg','image/jpeg',79546,'2010-12-03 01:00:58',1300,1,'2010-12-03 01:01:05','2010-12-03 01:01:05');
INSERT INTO `product_images` VALUES (304,'TORCH_RUNNER_REV.jpg','image/jpeg',82700,'2010-12-03 01:01:00',1300,0,'2010-12-03 01:01:05','2010-12-03 01:01:05');
INSERT INTO `product_images` VALUES (305,'TORCH_RUNNER.jpg','image/jpeg',63476,'2010-12-03 01:01:01',1300,0,'2010-12-03 01:01:05','2010-12-03 01:01:05');
INSERT INTO `product_images` VALUES (306,'1696_grbrit_cr.jpg','image/jpeg',45076,'2010-12-03 01:06:42',867,1,'2010-12-03 01:06:46','2010-12-03 01:06:46');
INSERT INTO `product_images` VALUES (307,'1696_grbrit_cr_r.jpg','image/jpeg',51425,'2010-12-03 01:06:43',867,0,'2010-12-03 01:06:46','2010-12-03 01:06:46');
INSERT INTO `product_images` VALUES (308,'1696_grbrit_cr_f.jpg','image/jpeg',47350,'2010-12-03 01:06:45',867,0,'2010-12-03 01:06:46','2010-12-03 01:06:46');
INSERT INTO `product_images` VALUES (309,'1714_1-4P_GR_BRIT_NVF_OBV.jpg','image/jpeg',41431,'2010-12-03 01:38:19',1220,1,'2010-12-03 01:38:23','2010-12-03 01:38:23');
INSERT INTO `product_images` VALUES (310,'1714_1-4P_GR_BRIT_NVF_REV.jpg','image/jpeg',37446,'2010-12-03 01:38:21',1220,0,'2010-12-03 01:38:23','2010-12-03 01:38:23');
INSERT INTO `product_images` VALUES (311,'1714_1-4P_GR_BRIT_NVF.jpg','image/jpeg',36757,'2010-12-03 01:38:22',1220,0,'2010-12-03 01:38:23','2010-12-03 01:38:23');
INSERT INTO `product_images` VALUES (312,'EUKRA_ICGAU_OBV.jpg','image/jpeg',74258,'2010-12-03 12:59:19',1064,1,'2010-12-03 12:59:23','2010-12-03 12:59:23');
INSERT INTO `product_images` VALUES (313,'EUKRA_ICGAU_REV.jpg','image/jpeg',70505,'2010-12-03 12:59:20',1064,0,'2010-12-03 12:59:23','2010-12-03 12:59:23');
INSERT INTO `product_images` VALUES (314,'EUKRA_ICGAU.jpg','image/jpeg',73461,'2010-12-03 12:59:21',1064,0,'2010-12-03 12:59:23','2010-12-03 12:59:23');
INSERT INTO `product_images` VALUES (315,'menander_ICG62_obv.jpg','image/jpeg',87876,'2010-12-03 13:00:27',1026,1,'2010-12-03 13:00:31','2010-12-03 13:00:31');
INSERT INTO `product_images` VALUES (316,'menander_ICG62_rev.jpg','image/jpeg',75158,'2010-12-03 13:00:29',1026,0,'2010-12-03 13:00:31','2010-12-03 13:00:31');
INSERT INTO `product_images` VALUES (317,'menander_ICG62.jpg','image/jpeg',70132,'2010-12-03 13:00:30',1026,0,'2010-12-03 13:00:31','2010-12-03 13:00:31');
INSERT INTO `product_images` VALUES (318,'HISTIAEA_N-XF_OBV.jpg','image/jpeg',77649,'2010-12-03 13:01:32',1348,1,'2010-12-03 13:01:36','2010-12-03 13:01:36');
INSERT INTO `product_images` VALUES (319,'HISTIAEA_N-XF_REV.jpg','image/jpeg',96512,'2010-12-03 13:01:33',1348,0,'2010-12-03 13:01:36','2010-12-03 13:01:36');
INSERT INTO `product_images` VALUES (320,'HISTIAEA_N-XF.jpg','image/jpeg',78729,'2010-12-03 13:01:35',1348,0,'2010-12-03 13:01:36','2010-12-03 13:01:36');
INSERT INTO `product_images` VALUES (321,'histiaea_Nau_obv.jpg','image/jpeg',67125,'2010-12-03 13:02:30',1036,1,'2010-12-03 13:02:34','2010-12-03 13:02:34');
INSERT INTO `product_images` VALUES (322,'histiaea_Nau_rev.jpg','image/jpeg',72842,'2010-12-03 13:02:31',1036,0,'2010-12-03 13:02:34','2010-12-03 13:02:34');
INSERT INTO `product_images` VALUES (323,'histiaea_Nau.jpg','image/jpeg',55975,'2010-12-03 13:02:32',1036,0,'2010-12-03 13:02:34','2010-12-03 13:02:34');
INSERT INTO `product_images` VALUES (324,'histiaea_Nxf_obv.jpg','image/jpeg',72285,'2010-12-03 13:04:13',1035,1,'2010-12-03 13:04:17','2010-12-03 13:04:17');
INSERT INTO `product_images` VALUES (325,'histiaea_Nxf_rev.jpg','image/jpeg',78625,'2010-12-03 13:04:14',1035,0,'2010-12-03 13:04:17','2010-12-03 13:04:17');
INSERT INTO `product_images` VALUES (326,'histiaea_Nxf.jpg','image/jpeg',55140,'2010-12-03 13:04:15',1035,0,'2010-12-03 13:04:17','2010-12-03 13:04:17');
INSERT INTO `product_images` VALUES (327,'kyme_obv.jpg','image/jpeg',109878,'2010-12-03 13:05:12',1161,1,'2010-12-03 13:05:16','2010-12-03 13:05:16');
INSERT INTO `product_images` VALUES (328,'kyme_rev.jpg','image/jpeg',119882,'2010-12-03 13:05:14',1161,0,'2010-12-03 13:05:16','2010-12-03 13:05:16');
INSERT INTO `product_images` VALUES (329,'kyme.jpg','image/jpeg',80164,'2010-12-03 13:05:15',1161,0,'2010-12-03 13:05:16','2010-12-03 13:05:16');
INSERT INTO `product_images` VALUES (330,'lysimachus_Aef_obv.jpg','image/jpeg',84175,'2010-12-03 13:05:53',1044,1,'2010-12-03 13:05:57','2010-12-03 13:05:57');
INSERT INTO `product_images` VALUES (331,'lysimachus_Aef_rev.jpg','image/jpeg',87230,'2010-12-03 13:05:54',1044,0,'2010-12-03 13:05:57','2010-12-03 13:05:57');
INSERT INTO `product_images` VALUES (332,'lysimachus_Aef.jpg','image/jpeg',70165,'2010-12-03 13:05:56',1044,0,'2010-12-03 13:05:57','2010-12-03 13:05:57');
INSERT INTO `product_images` VALUES (333,'LYSIM_A55_OBV.jpg','image/jpeg',71225,'2010-12-03 13:06:38',1057,1,'2010-12-03 13:06:42','2010-12-03 13:06:42');
INSERT INTO `product_images` VALUES (334,'LYSIM_A55_REV.jpg','image/jpeg',71098,'2010-12-03 13:06:39',1057,0,'2010-12-03 13:06:42','2010-12-03 13:06:42');
INSERT INTO `product_images` VALUES (335,'LYSIM_A55.jpg','image/jpeg',63137,'2010-12-03 13:06:40',1057,0,'2010-12-03 13:06:42','2010-12-03 13:06:42');
INSERT INTO `product_images` VALUES (336,'CAMPANIA_AVF30_OBV.jpg','image/jpeg',65823,'2010-12-03 13:07:34',1074,1,'2010-12-03 13:07:38','2010-12-03 13:07:38');
INSERT INTO `product_images` VALUES (337,'CAMPANIA_AVF30_REV.jpg','image/jpeg',72101,'2010-12-03 13:07:35',1074,0,'2010-12-03 13:07:38','2010-12-03 13:07:38');
INSERT INTO `product_images` VALUES (338,'CAMPANIA_AVF30.jpg','image/jpeg',62488,'2010-12-03 13:07:37',1074,0,'2010-12-03 13:07:38','2010-12-03 13:07:38');
INSERT INTO `product_images` VALUES (339,'OWL_NEW_NVF_OBV.jpg','image/jpeg',72419,'2010-12-03 13:08:45',1100,1,'2010-12-03 13:08:48','2010-12-03 13:08:48');
INSERT INTO `product_images` VALUES (340,'OWL_NEW_NVF_REV.jpg','image/jpeg',85448,'2010-12-03 13:08:46',1100,0,'2010-12-03 13:08:48','2010-12-03 13:08:48');
INSERT INTO `product_images` VALUES (341,'OWL_NEW_NVF.jpg','image/jpeg',70258,'2010-12-03 13:08:47',1100,0,'2010-12-03 13:08:48','2010-12-03 13:08:48');
INSERT INTO `product_images` VALUES (342,'DARIC_CH_AU_OBV_sm_size.jpg','image/jpeg',71277,'2010-12-03 13:09:31',1420,1,'2010-12-03 13:09:36','2010-12-03 13:09:36');
INSERT INTO `product_images` VALUES (343,'DARIC_CH_AU_REV_sm_size.jpg','image/jpeg',59121,'2010-12-03 13:09:33',1420,0,'2010-12-03 13:09:36','2010-12-03 13:09:36');
INSERT INTO `product_images` VALUES (344,'DARIC_CH_AU_sm_size.jpg','image/jpeg',49474,'2010-12-03 13:09:34',1420,0,'2010-12-03 13:09:36','2010-12-03 13:09:36');
INSERT INTO `product_images` VALUES (345,'POSEIDONIA_OBV.jpg','image/jpeg',112681,'2010-12-03 13:10:23',449,1,'2010-12-03 13:10:27','2010-12-03 13:10:27');
INSERT INTO `product_images` VALUES (346,'POSEIDONOA_REV.jpg','image/jpeg',108559,'2010-12-03 13:10:25',449,0,'2010-12-03 13:10:27','2010-12-03 13:10:27');
INSERT INTO `product_images` VALUES (347,'POSEIDONIA.jpg','image/jpeg',167679,'2010-12-03 13:10:26',449,0,'2010-12-03 13:10:27','2010-12-03 13:10:27');
INSERT INTO `product_images` VALUES (348,'ant_vii_tet_Aau_obv.jpg','image/jpeg',80602,'2010-12-03 13:11:11',1021,1,'2010-12-03 13:11:15','2010-12-03 13:11:15');
INSERT INTO `product_images` VALUES (349,'ant_vii_tet_Aau_rev.jpg','image/jpeg',83736,'2010-12-03 13:11:12',1021,0,'2010-12-03 13:11:15','2010-12-03 13:11:15');
INSERT INTO `product_images` VALUES (350,'ant_vii_tet_Aau.jpg','image/jpeg',68813,'2010-12-03 13:11:13',1021,0,'2010-12-03 13:11:15','2010-12-03 13:11:15');
INSERT INTO `product_images` VALUES (351,'HIMERA_OBV.jpg','image/jpeg',118601,'2010-12-03 13:12:00',1255,1,'2010-12-03 13:12:03','2010-12-03 13:12:03');
INSERT INTO `product_images` VALUES (352,'HIMERA_REV.jpg','image/jpeg',130980,'2010-12-03 13:12:01',1255,0,'2010-12-03 13:12:03','2010-12-03 13:12:03');
INSERT INTO `product_images` VALUES (353,'HIMERA.jpg','image/jpeg',119948,'2010-12-03 13:12:02',1255,0,'2010-12-03 13:12:03','2010-12-03 13:12:03');
INSERT INTO `product_images` VALUES (354,'SYRACUSE_NVF_OBV.jpg','image/jpeg',70262,'2010-12-03 13:12:47',1072,1,'2010-12-03 13:12:51','2010-12-03 13:12:51');
INSERT INTO `product_images` VALUES (355,'SYRACUSE_NVF_REV.jpg','image/jpeg',63240,'2010-12-03 13:12:48',1072,0,'2010-12-03 13:12:51','2010-12-03 13:12:51');
INSERT INTO `product_images` VALUES (356,'SYRACUSE_NVF.jpg','image/jpeg',58810,'2010-12-03 13:12:49',1072,0,'2010-12-03 13:12:51','2010-12-03 13:12:51');
INSERT INTO `product_images` VALUES (357,'CHERR_HEMI_MS_OBV.jpg','image/jpeg',125705,'2010-12-03 13:13:35',1258,1,'2010-12-03 13:13:39','2010-12-03 13:13:39');
INSERT INTO `product_images` VALUES (358,'CHERR_HEMI_MS_REV.jpg','image/jpeg',121859,'2010-12-03 13:13:37',1258,0,'2010-12-03 13:13:39','2010-12-03 13:13:39');
INSERT INTO `product_images` VALUES (359,'CHERR_HEMI_MS.jpg','image/jpeg',142954,'2010-12-03 13:13:38',1258,0,'2010-12-03 13:13:39','2010-12-03 13:13:39');
INSERT INTO `product_images` VALUES (360,'CHERR_HEMI_XF_OBV.jpg','image/jpeg',118830,'2010-12-03 13:15:10',1257,1,'2010-12-03 13:15:14','2010-12-03 13:15:14');
INSERT INTO `product_images` VALUES (361,'CHERR_HEMI_XF_REV.jpg','image/jpeg',115302,'2010-12-03 13:15:11',1257,0,'2010-12-03 13:15:14','2010-12-03 13:15:14');
INSERT INTO `product_images` VALUES (362,'CHERR_HEMI_XF.jpg','image/jpeg',158470,'2010-12-03 13:15:12',1257,0,'2010-12-03 13:15:14','2010-12-03 13:15:14');
INSERT INTO `product_images` VALUES (363,'PHILIP_II_STATER_AU58_OBV.jpg','image/jpeg',151853,'2010-12-03 13:16:28',146,1,'2010-12-03 13:16:32','2010-12-03 13:16:32');
INSERT INTO `product_images` VALUES (364,'PHILIP_II_STATER_AU58_REV.jpg','image/jpeg',147409,'2010-12-03 13:16:29',146,0,'2010-12-03 13:16:32','2010-12-03 13:16:32');
INSERT INTO `product_images` VALUES (365,'PHILIP_II_STATER_AU58.jpg','image/jpeg',178611,'2010-12-03 13:16:30',146,0,'2010-12-03 13:16:32','2010-12-03 13:16:32');
INSERT INTO `product_images` VALUES (366,'ALEX_STATER_A45_OBV.jpg','image/jpeg',66728,'2010-12-03 13:17:11',1056,1,'2010-12-03 13:17:16','2010-12-03 13:17:16');
INSERT INTO `product_images` VALUES (367,'ALEX_STATER_A45_REV.jpg','image/jpeg',75249,'2010-12-03 13:17:12',1056,0,'2010-12-03 13:17:16','2010-12-03 13:17:16');
INSERT INTO `product_images` VALUES (368,'ALEX_STATER_AEF45.jpg','image/jpeg',65581,'2010-12-03 13:17:15',1056,0,'2010-12-03 13:17:16','2010-12-03 13:17:16');
INSERT INTO `product_images` VALUES (369,'AlexGemobv.jpg','image/jpeg',35561,'2010-12-03 13:17:59',547,1,'2010-12-03 13:18:01','2010-12-03 13:18:01');
INSERT INTO `product_images` VALUES (370,'AlexGemrev.jpg','image/jpeg',35587,'2010-12-03 13:18:00',547,0,'2010-12-03 13:18:01','2010-12-03 13:18:01');
INSERT INTO `product_images` VALUES (371,'ALEX_III_N-MS_OBV.jpg','image/jpeg',113707,'2010-12-03 13:19:09',1355,1,'2010-12-03 13:19:13','2010-12-03 13:19:13');
INSERT INTO `product_images` VALUES (372,'ALEX_III_N-MS_REV.jpg','image/jpeg',123956,'2010-12-03 13:19:10',1355,0,'2010-12-03 13:19:13','2010-12-03 13:19:13');
INSERT INTO `product_images` VALUES (373,'ALEX_III_N-MS.jpg','image/jpeg',85831,'2010-12-03 13:19:11',1355,0,'2010-12-03 13:19:13','2010-12-03 13:19:13');
INSERT INTO `product_images` VALUES (374,'ALEX_III_NXF_OBV.jpg','image/jpeg',67171,'2010-12-03 13:19:55',1069,1,'2010-12-03 13:19:59','2010-12-03 13:19:59');
INSERT INTO `product_images` VALUES (375,'ALEX_III_NXF_REV.jpg','image/jpeg',65861,'2010-12-03 13:19:56',1069,0,'2010-12-03 13:19:59','2010-12-03 13:19:59');
INSERT INTO `product_images` VALUES (376,'ALEX_III_NXF.jpg','image/jpeg',63514,'2010-12-03 13:19:57',1069,0,'2010-12-03 13:19:59','2010-12-03 13:19:59');
INSERT INTO `product_images` VALUES (377,'ALEX_III_NAU_OBV.jpg','image/jpeg',73250,'2010-12-03 13:20:41',1068,1,'2010-12-03 13:20:45','2010-12-03 13:20:45');
INSERT INTO `product_images` VALUES (378,'ALEX_III_NAU_REV.jpg','image/jpeg',67956,'2010-12-03 13:20:42',1068,0,'2010-12-03 13:20:45','2010-12-03 13:20:45');
INSERT INTO `product_images` VALUES (379,'ALEX_III_NAU.jpg','image/jpeg',57574,'2010-12-03 13:20:44',1068,0,'2010-12-03 13:20:45','2010-12-03 13:20:45');
INSERT INTO `product_images` VALUES (380,'shekel_ngc_life.jpg','image/jpeg',54069,'2010-12-03 13:21:28',878,1,'2010-12-03 13:21:32','2010-12-03 13:21:32');
INSERT INTO `product_images` VALUES (381,'shekel_ngc_life_r.jpg','image/jpeg',56952,'2010-12-03 13:21:29',878,0,'2010-12-03 13:21:32','2010-12-03 13:21:32');
INSERT INTO `product_images` VALUES (382,'shekel_ngc_life_f.jpg','image/jpeg',44926,'2010-12-03 13:21:31',878,0,'2010-12-03 13:21:32','2010-12-03 13:21:32');
INSERT INTO `product_images` VALUES (383,'ALEX_GREAT_TETRA_N-CH_VF.jpg','image/jpeg',88217,'2010-12-03 13:22:06',880,1,'2010-12-03 13:22:07','2010-12-03 13:22:07');
INSERT INTO `product_images` VALUES (384,'ALEX_STATER_A55_OBV.jpg','image/jpeg',86072,'2010-12-03 13:22:53',1077,1,'2010-12-03 13:22:57','2010-12-03 13:22:57');
INSERT INTO `product_images` VALUES (385,'ALEX_STATER_A55_REV.jpg','image/jpeg',78508,'2010-12-03 13:22:54',1077,0,'2010-12-03 13:22:57','2010-12-03 13:22:57');
INSERT INTO `product_images` VALUES (386,'ALEX_STATER_A55.jpg','image/jpeg',63413,'2010-12-03 13:22:55',1077,0,'2010-12-03 13:22:57','2010-12-03 13:22:57');
INSERT INTO `product_images` VALUES (387,'alex_great_A45_obv.jpg','image/jpeg',99974,'2010-12-03 13:23:41',1183,1,'2010-12-03 13:23:47','2010-12-03 13:23:47');
INSERT INTO `product_images` VALUES (388,'alex_great_A45_rev.jpg','image/jpeg',102330,'2010-12-03 13:23:44',1183,0,'2010-12-03 13:23:47','2010-12-03 13:23:47');
INSERT INTO `product_images` VALUES (389,'alex_great_A45.jpg','image/jpeg',61247,'2010-12-03 13:23:45',1183,0,'2010-12-03 13:23:47','2010-12-03 13:23:47');
INSERT INTO `product_images` VALUES (390,'PHILIP_III_STATER_MS_OBV.jpg','image/jpeg',141062,'2010-12-03 13:24:26',1353,1,'2010-12-03 13:24:31','2010-12-03 13:24:31');
INSERT INTO `product_images` VALUES (391,'PHILIP_III_STATER_MS_REV.jpg','image/jpeg',136238,'2010-12-03 13:24:28',1353,0,'2010-12-03 13:24:31','2010-12-03 13:24:31');
INSERT INTO `product_images` VALUES (392,'PHILIP_III_STATER_MS.jpg','image/jpeg',161864,'2010-12-03 13:24:29',1353,0,'2010-12-03 13:24:31','2010-12-03 13:24:31');
INSERT INTO `product_images` VALUES (393,'ptol_gold_au_obv.jpg','image/jpeg',72242,'2010-12-03 13:25:24',1148,1,'2010-12-03 13:25:29','2010-12-03 13:25:29');
INSERT INTO `product_images` VALUES (394,'ptol_gold_au_rev.jpg','image/jpeg',71809,'2010-12-03 13:25:26',1148,0,'2010-12-03 13:25:29','2010-12-03 13:25:29');
INSERT INTO `product_images` VALUES (395,'ptol_gold_au.jpg','image/jpeg',71310,'2010-12-03 13:25:27',1148,0,'2010-12-03 13:25:29','2010-12-03 13:25:29');
INSERT INTO `product_images` VALUES (396,'ARSINOE_A45_OBV.jpg','image/jpeg',79123,'2010-12-03 13:26:16',1065,1,'2010-12-03 13:26:20','2010-12-03 13:26:20');
INSERT INTO `product_images` VALUES (397,'ARSINOE_A45_REV.jpg','image/jpeg',88959,'2010-12-03 13:26:17',1065,0,'2010-12-03 13:26:20','2010-12-03 13:26:20');
INSERT INTO `product_images` VALUES (398,'ARSINOE_A45.jpg','image/jpeg',74836,'2010-12-03 13:26:19',1065,0,'2010-12-03 13:26:20','2010-12-03 13:26:20');
INSERT INTO `product_images` VALUES (399,'ARSINOE_NAU_OBV.jpg','image/jpeg',79566,'2010-12-03 13:26:58',1066,1,'2010-12-03 13:27:02','2010-12-03 13:27:02');
INSERT INTO `product_images` VALUES (400,'ARSINOE_NAU_REV.jpg','image/jpeg',70869,'2010-12-03 13:26:59',1066,0,'2010-12-03 13:27:02','2010-12-03 13:27:02');
INSERT INTO `product_images` VALUES (401,'ARSINOE_NAU.jpg','image/jpeg',67985,'2010-12-03 13:27:00',1066,0,'2010-12-03 13:27:02','2010-12-03 13:27:02');
INSERT INTO `product_images` VALUES (402,'vesp_pru_Avf_obv.jpg','image/jpeg',68710,'2010-12-03 13:27:58',1095,1,'2010-12-03 13:28:02','2010-12-03 13:28:02');
INSERT INTO `product_images` VALUES (403,'vesp_pru_Avf_rev.jpg','image/jpeg',68490,'2010-12-03 13:28:00',1095,0,'2010-12-03 13:28:02','2010-12-03 13:28:02');
INSERT INTO `product_images` VALUES (404,'vesp_pru_Avf.jpg','image/jpeg',62575,'2010-12-03 13:28:01',1095,0,'2010-12-03 13:28:03','2010-12-03 13:28:03');
INSERT INTO `product_images` VALUES (405,'PARTHIA_NGC_VF_OBV.jpg','image/jpeg',57242,'2010-12-03 13:28:50',603,1,'2010-12-03 13:28:54','2010-12-03 13:28:54');
INSERT INTO `product_images` VALUES (406,'PARTHIA_NGC_VF_REV.jpg','image/jpeg',61462,'2010-12-03 13:28:52',603,0,'2010-12-03 13:28:54','2010-12-03 13:28:54');
INSERT INTO `product_images` VALUES (407,'PARTHIA_NGC_VF.jpg','image/jpeg',74726,'2010-12-03 13:28:53',603,0,'2010-12-03 13:28:54','2010-12-03 13:28:54');
INSERT INTO `product_images` VALUES (408,'BRUTUS_N-FINE_OBV.jpg','image/jpeg',79898,'2010-12-03 13:29:40',1263,1,'2010-12-03 13:29:44','2010-12-03 13:29:44');
INSERT INTO `product_images` VALUES (409,'BRUTUS_N-FINE_REV.jpg','image/jpeg',82030,'2010-12-03 13:29:41',1263,0,'2010-12-03 13:29:44','2010-12-03 13:29:44');
INSERT INTO `product_images` VALUES (410,'BRUTUS_N-FINE.jpg','image/jpeg',76571,'2010-12-03 13:29:42',1263,0,'2010-12-03 13:29:44','2010-12-03 13:29:44');
INSERT INTO `product_images` VALUES (411,'julius_den_ICGau_obv.jpg','image/jpeg',66170,'2010-12-03 13:30:22',1025,1,'2010-12-03 13:30:26','2010-12-03 13:30:26');
INSERT INTO `product_images` VALUES (412,'julius_den_ICGau_rev.jpg','image/jpeg',70164,'2010-12-03 13:30:23',1025,0,'2010-12-03 13:30:26','2010-12-03 13:30:26');
INSERT INTO `product_images` VALUES (413,'julius_den_ICGau.jpg','image/jpeg',70116,'2010-12-03 13:30:24',1025,0,'2010-12-03 13:30:26','2010-12-03 13:30:26');
INSERT INTO `product_images` VALUES (414,'JUL_CAESAR_N-AU_OBV.jpg','image/jpeg',97030,'2010-12-03 13:31:06',1345,1,'2010-12-03 13:31:10','2010-12-03 13:31:10');
INSERT INTO `product_images` VALUES (415,'JUL_CAESAR_N-AU_REV.jpg','image/jpeg',97296,'2010-12-03 13:31:07',1345,0,'2010-12-03 13:31:10','2010-12-03 13:31:10');
INSERT INTO `product_images` VALUES (416,'JUL_CAESAR_N-AU.jpg','image/jpeg',84308,'2010-12-03 13:31:08',1345,0,'2010-12-03 13:31:10','2010-12-03 13:31:10');
INSERT INTO `product_images` VALUES (417,'JUL_CAESAR_A-XF40_OBV.jpg','image/jpeg',84327,'2010-12-03 13:31:52',1346,1,'2010-12-03 13:31:56','2010-12-03 13:31:56');
INSERT INTO `product_images` VALUES (418,'JUL_CAESAR_A-XF40_REV.jpg','image/jpeg',92872,'2010-12-03 13:31:53',1346,0,'2010-12-03 13:31:56','2010-12-03 13:31:56');
INSERT INTO `product_images` VALUES (419,'JUL_CAESAR_A-XF40.jpg','image/jpeg',82286,'2010-12-03 13:31:54',1346,0,'2010-12-03 13:31:56','2010-12-03 13:31:56');
INSERT INTO `product_images` VALUES (420,'JC_MUSSIDIUS_OBV.jpg','image/jpeg',84286,'2010-12-03 13:34:26',1306,1,'2010-12-03 13:34:30','2010-12-03 13:34:30');
INSERT INTO `product_images` VALUES (421,'JC_MUSSIDIUS_REV.jpg','image/jpeg',90307,'2010-12-03 13:34:27',1306,0,'2010-12-03 13:34:30','2010-12-03 13:34:30');
INSERT INTO `product_images` VALUES (422,'JC_MUSSIDIUS.jpg','image/jpeg',61605,'2010-12-03 13:34:28',1306,0,'2010-12-03 13:34:30','2010-12-03 13:34:30');
INSERT INTO `product_images` VALUES (423,'JC_AENEAS_DEN_OBV.jpg','image/jpeg',97034,'2010-12-03 13:35:15',1305,1,'2010-12-03 13:35:20','2010-12-03 13:35:20');
INSERT INTO `product_images` VALUES (424,'JC_AENEAS_DEN_REV.jpg','image/jpeg',106660,'2010-12-03 13:35:17',1305,0,'2010-12-03 13:35:20','2010-12-03 13:35:20');
INSERT INTO `product_images` VALUES (425,'JC_AENEAS_DEN.jpg','image/jpeg',59843,'2010-12-03 13:35:18',1305,0,'2010-12-03 13:35:20','2010-12-03 13:35:20');
INSERT INTO `product_images` VALUES (426,'TIBERIUS_AUREUS_OBV.jpg','image/jpeg',146571,'2010-12-03 13:35:57',1387,1,'2010-12-03 13:36:01','2010-12-03 13:36:01');
INSERT INTO `product_images` VALUES (427,'TIBERIUS_AUREUS_REV.jpg','image/jpeg',144404,'2010-12-03 13:35:58',1387,0,'2010-12-03 13:36:01','2010-12-03 13:36:01');
INSERT INTO `product_images` VALUES (428,'TIBERIUS_AUREUS.jpg','image/jpeg',196405,'2010-12-03 13:35:59',1387,0,'2010-12-03 13:36:01','2010-12-03 13:36:01');
INSERT INTO `product_images` VALUES (429,'Getaaugobv.jpg','image/jpeg',57071,'2010-12-03 13:36:42',241,1,'2010-12-03 13:36:44','2010-12-03 13:36:44');
INSERT INTO `product_images` VALUES (430,'Getaaugrev.jpg','image/jpeg',54359,'2010-12-03 13:36:43',241,0,'2010-12-03 13:36:44','2010-12-03 13:36:44');
INSERT INTO `product_images` VALUES (431,'Philip227obv.jpg','image/jpeg',39667,'2010-12-03 13:37:34',559,1,'2010-12-03 13:37:37','2010-12-03 13:37:37');
INSERT INTO `product_images` VALUES (432,'philip227rev.jpg','image/jpeg',40199,'2010-12-03 13:37:36',559,0,'2010-12-03 13:37:37','2010-12-03 13:37:37');
INSERT INTO `product_images` VALUES (433,'marius_ef40.jpg','image/jpeg',42904,'2010-12-03 13:38:30',903,1,'2010-12-03 13:38:33','2010-12-03 13:38:33');
INSERT INTO `product_images` VALUES (434,'marius_r_ef40.jpg','image/jpeg',41090,'2010-12-03 13:38:31',903,0,'2010-12-03 13:38:33','2010-12-03 13:38:33');
INSERT INTO `product_images` VALUES (435,'marius_f_ef40.jpg','image/jpeg',33392,'2010-12-03 13:38:32',903,0,'2010-12-03 13:38:33','2010-12-03 13:38:33');
INSERT INTO `product_images` VALUES (436,'Aurelian62obv.jpg','image/jpeg',43763,'2010-12-03 13:39:11',444,1,'2010-12-03 13:39:13','2010-12-03 13:39:13');
INSERT INTO `product_images` VALUES (437,'Aurelian62rev.jpg','image/jpeg',43241,'2010-12-03 13:39:12',444,0,'2010-12-03 13:39:13','2010-12-03 13:39:13');
INSERT INTO `product_images` VALUES (438,'probus63obv.jpg','image/jpeg',44741,'2010-12-03 13:39:53',443,1,'2010-12-03 13:39:55','2010-12-03 13:39:55');
INSERT INTO `product_images` VALUES (439,'Probus63rev.jpg','image/jpeg',42037,'2010-12-03 13:39:54',443,0,'2010-12-03 13:39:55','2010-12-03 13:39:55');
INSERT INTO `product_images` VALUES (440,'DIOCLETIAN_OBV.jpg','image/jpeg',122755,'2010-12-03 13:40:47',605,1,'2010-12-03 13:40:51','2010-12-03 13:40:51');
INSERT INTO `product_images` VALUES (441,'DIOCLETIAN_REV.jpg','image/jpeg',136199,'2010-12-03 13:40:49',605,0,'2010-12-03 13:40:51','2010-12-03 13:40:51');
INSERT INTO `product_images` VALUES (442,'DIOCLETIAN.jpg','image/jpeg',141999,'2010-12-03 13:40:50',605,0,'2010-12-03 13:40:51','2010-12-03 13:40:51');
INSERT INTO `product_images` VALUES (443,'CONSTAN_GREAT_AU_OBV.jpg','image/jpeg',115137,'2010-12-03 13:41:33',446,1,'2010-12-03 13:41:36','2010-12-03 13:41:36');
INSERT INTO `product_images` VALUES (444,'CONSTAN_GREAT_AU_REV.jpg','image/jpeg',112468,'2010-12-03 13:41:34',446,0,'2010-12-03 13:41:36','2010-12-03 13:41:36');
INSERT INTO `product_images` VALUES (445,'CONSTAN_GREAT_AU.jpg','image/jpeg',138894,'2010-12-03 13:41:35',446,0,'2010-12-03 13:41:36','2010-12-03 13:41:36');
INSERT INTO `product_images` VALUES (446,'CONSTANTIUS_II_OBV.jpg','image/jpeg',156938,'2010-12-03 13:42:21',251,1,'2010-12-03 13:42:25','2010-12-03 13:42:25');
INSERT INTO `product_images` VALUES (447,'CONSTANTIUS_II_REV.jpg','image/jpeg',195501,'2010-12-03 13:42:23',251,0,'2010-12-03 13:42:25','2010-12-03 13:42:25');
INSERT INTO `product_images` VALUES (448,'CONSTANTIUS_II.jpg','image/jpeg',137125,'2010-12-03 13:42:24',251,0,'2010-12-03 13:42:25','2010-12-03 13:42:25');
INSERT INTO `product_images` VALUES (449,'Valensobv.jpg','image/jpeg',47207,'2010-12-03 13:42:58',762,1,'2010-12-03 13:43:00','2010-12-03 13:43:00');
INSERT INTO `product_images` VALUES (450,'valensrev.jpg','image/jpeg',44633,'2010-12-03 13:42:59',762,0,'2010-12-03 13:43:00','2010-12-03 13:43:00');
INSERT INTO `product_images` VALUES (451,'Valentinianobv.jpg','image/jpeg',43101,'2010-12-03 13:43:42',763,1,'2010-12-03 13:43:44','2010-12-03 13:43:44');
INSERT INTO `product_images` VALUES (452,'Valentinianrev.jpg','image/jpeg',40836,'2010-12-03 13:43:43',763,0,'2010-12-03 13:43:44','2010-12-03 13:43:44');
INSERT INTO `product_images` VALUES (453,'AELIA_ICG_EF40_OBV.jpg','image/jpeg',148507,'2010-12-03 13:44:33',1055,1,'2010-12-03 13:44:37','2010-12-03 13:44:37');
INSERT INTO `product_images` VALUES (454,'AELIA_ICG_EF40_REV.jpg','image/jpeg',138595,'2010-12-03 13:44:34',1055,0,'2010-12-03 13:44:37','2010-12-03 13:44:37');
INSERT INTO `product_images` VALUES (455,'AELIA_ICG_EF40.jpg','image/jpeg',161842,'2010-12-03 13:44:36',1055,0,'2010-12-03 13:44:37','2010-12-03 13:44:37');
INSERT INTO `product_images` VALUES (456,'AEMILIAN_OBV.jpg','image/jpeg',128842,'2010-12-03 13:45:30',1422,1,'2010-12-03 13:45:33','2010-12-03 13:45:33');
INSERT INTO `product_images` VALUES (457,'AEMILIAN_REV.jpg','image/jpeg',125680,'2010-12-03 13:45:31',1422,0,'2010-12-03 13:45:34','2010-12-03 13:45:34');
INSERT INTO `product_images` VALUES (458,'AEMILIAN.jpg','image/jpeg',172007,'2010-12-03 13:45:32',1422,0,'2010-12-03 13:45:34','2010-12-03 13:45:34');
INSERT INTO `product_images` VALUES (459,'AUG-LUG_OBV.jpg','image/jpeg',134894,'2010-12-03 13:46:15',1388,1,'2010-12-03 13:46:20','2010-12-03 13:46:20');
INSERT INTO `product_images` VALUES (460,'AUG-LUG_REV.jpg','image/jpeg',146221,'2010-12-03 13:46:17',1388,0,'2010-12-03 13:46:20','2010-12-03 13:46:20');
INSERT INTO `product_images` VALUES (461,'AUG-LUG.jpg','image/jpeg',170633,'2010-12-03 13:46:18',1388,0,'2010-12-03 13:46:20','2010-12-03 13:46:20');
INSERT INTO `product_images` VALUES (462,'AURELIAN_ANT_ICG-61_OBV.jpg','image/jpeg',50915,'2010-12-03 13:47:02',1428,1,'2010-12-03 13:47:06','2010-12-03 13:47:06');
INSERT INTO `product_images` VALUES (463,'AURELIAN_ANT_ICG-61_REV.jpg','image/jpeg',47664,'2010-12-03 13:47:03',1428,0,'2010-12-03 13:47:06','2010-12-03 13:47:06');
INSERT INTO `product_images` VALUES (464,'AURELIAN_ANT_ICG-61.jpg','image/jpeg',70883,'2010-12-03 13:47:05',1428,0,'2010-12-03 13:47:06','2010-12-03 13:47:06');
INSERT INTO `product_images` VALUES (465,'BALBINUS_OBV.jpg','image/jpeg',131714,'2010-12-03 13:47:51',1418,1,'2010-12-03 13:47:55','2010-12-03 13:47:55');
INSERT INTO `product_images` VALUES (466,'BALBINUS_REV.jpg','image/jpeg',121143,'2010-12-03 13:47:52',1418,0,'2010-12-03 13:47:55','2010-12-03 13:47:55');
INSERT INTO `product_images` VALUES (467,'BALBINUS.jpg','image/jpeg',162265,'2010-12-03 13:47:54',1418,0,'2010-12-03 13:47:55','2010-12-03 13:47:55');
INSERT INTO `product_images` VALUES (468,'RHESKUPORIS_OBV.jpg','image/jpeg',139458,'2010-12-03 13:48:36',1391,1,'2010-12-03 13:48:41','2010-12-03 13:48:41');
INSERT INTO `product_images` VALUES (469,'RHESKUPORIS_REV.jpg','image/jpeg',149293,'2010-12-03 13:48:38',1391,0,'2010-12-03 13:48:41','2010-12-03 13:48:41');
INSERT INTO `product_images` VALUES (470,'RHESKUPORIS.jpg','image/jpeg',173569,'2010-12-03 13:48:39',1391,0,'2010-12-03 13:48:41','2010-12-03 13:48:41');
INSERT INTO `product_images` VALUES (471,'cara_den_A55_obv.jpg','image/jpeg',82458,'2010-12-03 13:50:06',912,1,'2010-12-03 13:50:10','2010-12-03 13:50:10');
INSERT INTO `product_images` VALUES (472,'cara_den_A55_rev.jpg','image/jpeg',75703,'2010-12-03 13:50:07',912,0,'2010-12-03 13:50:10','2010-12-03 13:50:10');
INSERT INTO `product_images` VALUES (473,'cara_den_A55.jpg','image/jpeg',66787,'2010-12-03 13:50:09',912,0,'2010-12-03 13:50:10','2010-12-03 13:50:10');
INSERT INTO `product_images` VALUES (474,'cara_den_A55_obv.jpg','image/jpeg',82458,'2010-12-03 13:50:54',1395,1,'2010-12-03 13:50:58','2010-12-03 13:50:58');
INSERT INTO `product_images` VALUES (475,'cara_den_A55_rev.jpg','image/jpeg',75703,'2010-12-03 13:50:55',1395,0,'2010-12-03 13:50:58','2010-12-03 13:50:58');
INSERT INTO `product_images` VALUES (476,'cara_den_A55.jpg','image/jpeg',66787,'2010-12-03 13:50:57',1395,0,'2010-12-03 13:50:58','2010-12-03 13:50:58');
INSERT INTO `product_images` VALUES (477,'CARAUSIUS__A50_OBV.jpg','image/jpeg',130382,'2010-12-03 13:51:52',1394,1,'2010-12-03 13:51:56','2010-12-03 13:51:56');
INSERT INTO `product_images` VALUES (478,'CARAUSIUS__A50_REV.jpg','image/jpeg',125156,'2010-12-03 13:51:53',1394,0,'2010-12-03 13:51:56','2010-12-03 13:51:56');
INSERT INTO `product_images` VALUES (479,'CARAUSIUS_A50.jpg','image/jpeg',127252,'2010-12-03 13:51:54',1394,0,'2010-12-03 13:51:56','2010-12-03 13:51:56');
INSERT INTO `product_images` VALUES (480,'CONSTANS_SOLIDUS_OBV.jpg','image/jpeg',157047,'2010-12-03 13:52:47',1396,1,'2010-12-03 13:52:51','2010-12-03 13:52:51');
INSERT INTO `product_images` VALUES (481,'CONSTANS_SOLIDUS_REV.jpg','image/jpeg',170373,'2010-12-03 13:52:48',1396,0,'2010-12-03 13:52:51','2010-12-03 13:52:51');
INSERT INTO `product_images` VALUES (482,'CONSTANS_SOLIDUS.jpg','image/jpeg',134005,'2010-12-03 13:52:50',1396,0,'2010-12-03 13:52:51','2010-12-03 13:52:51');
INSERT INTO `product_images` VALUES (483,'domitian_AV_Avf_obv.jpg','image/jpeg',75346,'2010-12-03 13:53:23',1045,1,'2010-12-03 13:53:28','2010-12-03 13:53:28');
INSERT INTO `product_images` VALUES (484,'domitian_AV_Avf_rev.jpg','image/jpeg',68057,'2010-12-03 13:53:24',1045,0,'2010-12-03 13:53:28','2010-12-03 13:53:28');
INSERT INTO `product_images` VALUES (485,'domitian_AV_Avf.jpg','image/jpeg',62964,'2010-12-03 13:53:26',1045,0,'2010-12-03 13:53:28','2010-12-03 13:53:28');
INSERT INTO `product_images` VALUES (486,'FAUS_SR_ICGAU_OBV.jpg','image/jpeg',74959,'2010-12-03 13:54:20',1048,1,'2010-12-03 13:54:24','2010-12-03 13:54:24');
INSERT INTO `product_images` VALUES (487,'FAUS_SR_ICGAU_REV.jpg','image/jpeg',82278,'2010-12-03 13:54:21',1048,0,'2010-12-03 13:54:24','2010-12-03 13:54:24');
INSERT INTO `product_images` VALUES (488,'FAUS_SR_ICGAU.jpg','image/jpeg',65831,'2010-12-03 13:54:23',1048,0,'2010-12-03 13:54:24','2010-12-03 13:54:24');
INSERT INTO `product_images` VALUES (489,'geta.jpg','image/jpeg',45124,'2010-12-03 13:55:09',908,1,'2010-12-03 13:55:13','2010-12-03 13:55:13');
INSERT INTO `product_images` VALUES (490,'geta_r.jpg','image/jpeg',41150,'2010-12-03 13:55:10',908,0,'2010-12-03 13:55:13','2010-12-03 13:55:13');
INSERT INTO `product_images` VALUES (491,'geta_f.jpg','image/jpeg',34772,'2010-12-03 13:55:12',908,0,'2010-12-03 13:55:13','2010-12-03 13:55:13');
INSERT INTO `product_images` VALUES (492,'HADRIAN_DEN_EF45_OBV.jpg','image/jpeg',125611,'2010-12-03 13:56:15',1386,1,'2010-12-03 13:56:19','2010-12-03 13:56:19');
INSERT INTO `product_images` VALUES (493,'HADRIAN_DEN_EF45_REV.jpg','image/jpeg',121522,'2010-12-03 13:56:17',1386,0,'2010-12-03 13:56:19','2010-12-03 13:56:19');
INSERT INTO `product_images` VALUES (494,'HADRIAN_DEN_EF45.jpg','image/jpeg',190999,'2010-12-03 13:56:18',1386,0,'2010-12-03 13:56:19','2010-12-03 13:56:19');
INSERT INTO `product_images` VALUES (495,'HADRIAN_ICG50_OBV.jpg','image/jpeg',83035,'2010-12-03 13:56:57',1051,1,'2010-12-03 13:57:01','2010-12-03 13:57:01');
INSERT INTO `product_images` VALUES (496,'HADRIAN_ICG50_REV.jpg','image/jpeg',75847,'2010-12-03 13:56:58',1051,0,'2010-12-03 13:57:01','2010-12-03 13:57:01');
INSERT INTO `product_images` VALUES (497,'HADRIAN_ICG50.jpg','image/jpeg',77383,'2010-12-03 13:56:59',1051,0,'2010-12-03 13:57:01','2010-12-03 13:57:01');
INSERT INTO `product_images` VALUES (498,'HONORIUS_OBV.jpg','image/jpeg',171836,'2010-12-03 13:57:50',1397,1,'2010-12-03 13:57:54','2010-12-03 13:57:54');
INSERT INTO `product_images` VALUES (499,'HONORIUS_REV.jpg','image/jpeg',179406,'2010-12-03 13:57:51',1397,0,'2010-12-03 13:57:54','2010-12-03 13:57:54');
INSERT INTO `product_images` VALUES (500,'HONORIUS.jpg','image/jpeg',185005,'2010-12-03 13:57:53',1397,0,'2010-12-03 13:57:54','2010-12-03 13:57:54');
INSERT INTO `product_images` VALUES (501,'LICINIUS_I_OBV.jpg','image/jpeg',122489,'2010-12-03 13:58:42',1424,1,'2010-12-03 13:58:46','2010-12-03 13:58:46');
INSERT INTO `product_images` VALUES (502,'LICINIUS_I_REV.jpg','image/jpeg',121675,'2010-12-03 13:58:43',1424,0,'2010-12-03 13:58:46','2010-12-03 13:58:46');
INSERT INTO `product_images` VALUES (503,'LICINIUS_I.jpg','image/jpeg',137369,'2010-12-03 13:58:45',1424,0,'2010-12-03 13:58:46','2010-12-03 13:58:46');
INSERT INTO `product_images` VALUES (504,'pudicita.jpg','image/jpeg',47708,'2010-12-03 13:59:24',907,1,'2010-12-03 13:59:30','2010-12-03 13:59:30');
INSERT INTO `product_images` VALUES (505,'pudicita_r.jpg','image/jpeg',41540,'2010-12-03 13:59:26',907,0,'2010-12-03 13:59:30','2010-12-03 13:59:30');
INSERT INTO `product_images` VALUES (506,'pudicita_f.jpg','image/jpeg',34791,'2010-12-03 13:59:28',907,0,'2010-12-03 13:59:30','2010-12-03 13:59:30');
INSERT INTO `product_images` VALUES (507,'MARIUS_ANT_A-45_OBV.jpg','image/jpeg',54831,'2010-12-03 14:00:30',838,1,'2010-12-03 14:00:34','2010-12-03 14:00:34');
INSERT INTO `product_images` VALUES (508,'MARIUS_ANT_A-45_REV.jpg','image/jpeg',47455,'2010-12-03 14:00:32',838,0,'2010-12-03 14:00:34','2010-12-03 14:00:34');
INSERT INTO `product_images` VALUES (509,'MARIUS_ANT_A-45.jpg','image/jpeg',45971,'2010-12-03 14:00:33',838,0,'2010-12-03 14:00:34','2010-12-03 14:00:34');
INSERT INTO `product_images` VALUES (510,'MAX_I_DEN_A-53_OBV.jpg','image/jpeg',53833,'2010-12-03 14:01:27',1166,1,'2010-12-03 14:01:31','2010-12-03 14:01:31');
INSERT INTO `product_images` VALUES (511,'MAX_I_DEN_A-53_REV.jpg','image/jpeg',47461,'2010-12-03 14:01:29',1166,0,'2010-12-03 14:01:31','2010-12-03 14:01:31');
INSERT INTO `product_images` VALUES (512,'MAX_I_DEN_A-53.jpg','image/jpeg',67108,'2010-12-03 14:01:30',1166,0,'2010-12-03 14:01:31','2010-12-03 14:01:31');
INSERT INTO `product_images` VALUES (513,'NERO_GOLD_OBV.jpg','image/jpeg',123219,'2010-12-03 14:02:19',1361,1,'2010-12-03 14:02:23','2010-12-03 14:02:23');
INSERT INTO `product_images` VALUES (514,'NERO_GOLD_REV.jpg','image/jpeg',108564,'2010-12-03 14:02:20',1361,0,'2010-12-03 14:02:23','2010-12-03 14:02:23');
INSERT INTO `product_images` VALUES (515,'NERO_GOLD.jpg','image/jpeg',84619,'2010-12-03 14:02:22',1361,0,'2010-12-03 14:02:23','2010-12-03 14:02:23');
INSERT INTO `product_images` VALUES (516,'PERTINAX_OBV.jpg','image/jpeg',120569,'2010-12-03 14:03:07',435,1,'2010-12-03 14:03:11','2010-12-03 14:03:11');
INSERT INTO `product_images` VALUES (517,'PERTINAX_REV.jpg','image/jpeg',111660,'2010-12-03 14:03:09',435,0,'2010-12-03 14:03:11','2010-12-03 14:03:11');
INSERT INTO `product_images` VALUES (518,'PERTINAX.jpg','image/jpeg',122257,'2010-12-03 14:03:10',435,0,'2010-12-03 14:03:11','2010-12-03 14:03:11');
INSERT INTO `product_images` VALUES (519,'PESCEN_NIGER_OBV.jpg','image/jpeg',109226,'2010-12-03 14:03:52',1389,1,'2010-12-03 14:03:56','2010-12-03 14:03:56');
INSERT INTO `product_images` VALUES (520,'PESCEN_NIGER_REV.jpg','image/jpeg',109885,'2010-12-03 14:03:53',1389,0,'2010-12-03 14:03:56','2010-12-03 14:03:56');
INSERT INTO `product_images` VALUES (521,'PESCEN_NIGER.jpg','image/jpeg',168842,'2010-12-03 14:03:55',1389,0,'2010-12-03 14:03:56','2010-12-03 14:03:56');
INSERT INTO `product_images` VALUES (522,'sep_sev_den_ICG50_obv.jpg','image/jpeg',77251,'2010-12-03 14:04:51',1093,1,'2010-12-03 14:04:55','2010-12-03 14:04:55');
INSERT INTO `product_images` VALUES (523,'sep_sev_den_ICG50_rev.jpg','image/jpeg',74599,'2010-12-03 14:04:52',1093,0,'2010-12-03 14:04:55','2010-12-03 14:04:55');
INSERT INTO `product_images` VALUES (524,'sep_sev_den_ICG50.jpg','image/jpeg',69489,'2010-12-03 14:04:54',1093,0,'2010-12-03 14:04:55','2010-12-03 14:04:55');
INSERT INTO `product_images` VALUES (525,'TIBERIUS_A-45_OBV.jpg','image/jpeg',86580,'2010-12-03 14:05:43',620,1,'2010-12-03 14:05:47','2010-12-03 14:05:47');
INSERT INTO `product_images` VALUES (526,'TIBERIUS_A-45_REV.jpg','image/jpeg',100761,'2010-12-03 14:05:45',620,0,'2010-12-03 14:05:47','2010-12-03 14:05:47');
INSERT INTO `product_images` VALUES (527,'TIBERIUS_A-45.jpg','image/jpeg',76710,'2010-12-03 14:05:46',620,0,'2010-12-03 14:05:47','2010-12-03 14:05:47');
INSERT INTO `product_images` VALUES (528,'trajan_den_ICG62_obv.jpg','image/jpeg',86186,'2010-12-03 14:06:29',1030,1,'2010-12-03 14:06:33','2010-12-03 14:06:33');
INSERT INTO `product_images` VALUES (529,'trajan_den_ICG62_rev.jpg','image/jpeg',78455,'2010-12-03 14:06:30',1030,0,'2010-12-03 14:06:33','2010-12-03 14:06:33');
INSERT INTO `product_images` VALUES (530,'trajan_den_ICG62.jpg','image/jpeg',71633,'2010-12-03 14:06:31',1030,0,'2010-12-03 14:06:33','2010-12-03 14:06:33');
INSERT INTO `product_images` VALUES (531,'TRAJAN_DEN_VF_OBV.jpg','image/jpeg',130415,'2010-12-03 14:07:14',1385,1,'2010-12-03 14:07:18','2010-12-03 14:07:18');
INSERT INTO `product_images` VALUES (532,'TRAJAN_DEN_VF_REV.jpg','image/jpeg',131738,'2010-12-03 14:07:15',1385,0,'2010-12-03 14:07:18','2010-12-03 14:07:18');
INSERT INTO `product_images` VALUES (533,'TRAJAN_DEN_VF.jpg','image/jpeg',152607,'2010-12-03 14:07:16',1385,0,'2010-12-03 14:07:18','2010-12-03 14:07:18');
INSERT INTO `product_images` VALUES (534,'TRAJAN_OBV.jpg','image/jpeg',108683,'2010-12-03 14:08:01',1363,1,'2010-12-03 14:08:09','2010-12-03 14:08:09');
INSERT INTO `product_images` VALUES (535,'TRAJAN_GOLD_REV.jpg','image/jpeg',112682,'2010-12-03 14:08:02',1363,0,'2010-12-03 14:08:09','2010-12-03 14:08:09');
INSERT INTO `product_images` VALUES (536,'TRAJAN_GOLD.jpg','image/jpeg',78303,'2010-12-03 14:08:07',1363,0,'2010-12-03 14:08:09','2010-12-03 14:08:09');
INSERT INTO `product_images` VALUES (537,'trajan_dec_aureus_obv.jpg','image/jpeg',75748,'2010-12-03 14:08:42',1181,1,'2010-12-03 14:08:46','2010-12-03 14:08:46');
INSERT INTO `product_images` VALUES (538,'trajan_dec_aureus_rev.jpg','image/jpeg',72372,'2010-12-03 14:08:44',1181,0,'2010-12-03 14:08:46','2010-12-03 14:08:46');
INSERT INTO `product_images` VALUES (539,'trajan_dec_aureus.jpg','image/jpeg',65843,'2010-12-03 14:08:45',1181,0,'2010-12-03 14:08:46','2010-12-03 14:08:46');
INSERT INTO `product_images` VALUES (540,'trajan_den_A50_obv.jpg','image/jpeg',92420,'2010-12-03 14:09:29',1094,1,'2010-12-03 14:09:34','2010-12-03 14:09:34');
INSERT INTO `product_images` VALUES (541,'trajan_den_A50_rev.jpg','image/jpeg',84247,'2010-12-03 14:09:31',1094,0,'2010-12-03 14:09:34','2010-12-03 14:09:34');
INSERT INTO `product_images` VALUES (542,'trajan_den_A50.jpg','image/jpeg',63082,'2010-12-03 14:09:32',1094,0,'2010-12-03 14:09:34','2010-12-03 14:09:34');
INSERT INTO `product_images` VALUES (543,'VALERIAN_ANACS_OBV.jpg','image/jpeg',129503,'2010-12-03 14:10:22',686,1,'2010-12-03 14:10:29','2010-12-03 14:10:29');
INSERT INTO `product_images` VALUES (544,'VALERIAN_ANACS_REV.jpg','image/jpeg',122339,'2010-12-03 14:10:26',686,0,'2010-12-03 14:10:29','2010-12-03 14:10:29');
INSERT INTO `product_images` VALUES (545,'VALERIAN_ANACS.jpg','image/jpeg',170691,'2010-12-03 14:10:27',686,0,'2010-12-03 14:10:29','2010-12-03 14:10:29');
INSERT INTO `product_images` VALUES (546,'1730_grbrit_1-2p.jpg','image/jpeg',48620,'2010-12-03 14:10:34',866,1,'2010-12-03 14:10:38','2010-12-03 14:10:38');
INSERT INTO `product_images` VALUES (547,'1730_grbrit_1-2p_r.jpg','image/jpeg',48972,'2010-12-03 14:10:35',866,0,'2010-12-03 14:10:38','2010-12-03 14:10:38');
INSERT INTO `product_images` VALUES (548,'1730_grbrit_1-2p_f.jpg','image/jpeg',41032,'2010-12-03 14:10:36',866,0,'2010-12-03 14:10:38','2010-12-03 14:10:38');
INSERT INTO `product_images` VALUES (549,'vespasian_AV_Nf_obv.jpg','image/jpeg',91093,'2010-12-03 14:11:05',1033,1,'2010-12-03 14:11:09','2010-12-03 14:11:09');
INSERT INTO `product_images` VALUES (550,'vespasian_AV_Nf_rev.jpg','image/jpeg',80671,'2010-12-03 14:11:06',1033,0,'2010-12-03 14:11:09','2010-12-03 14:11:09');
INSERT INTO `product_images` VALUES (551,'vespasian_AV_Nf.jpg','image/jpeg',64037,'2010-12-03 14:11:08',1033,0,'2010-12-03 14:11:09','2010-12-03 14:11:09');
INSERT INTO `product_images` VALUES (552,'vetranio_ICG_obv.jpg','image/jpeg',73758,'2010-12-03 14:11:52',1054,1,'2010-12-03 14:11:55','2010-12-03 14:11:55');
INSERT INTO `product_images` VALUES (553,'vetranio_ICG_rev.jpg','image/jpeg',78001,'2010-12-03 14:11:53',1054,0,'2010-12-03 14:11:55','2010-12-03 14:11:55');
INSERT INTO `product_images` VALUES (554,'vetranio_ICG.jpg','image/jpeg',67630,'2010-12-03 14:11:54',1054,0,'2010-12-03 14:11:55','2010-12-03 14:11:55');
INSERT INTO `product_images` VALUES (555,'VICTORINUS_A40_OBV.jpg','image/jpeg',158649,'2010-12-03 14:12:41',875,1,'2010-12-03 14:12:46','2010-12-03 14:12:46');
INSERT INTO `product_images` VALUES (556,'VICTORINUS_A40_REV.jpg','image/jpeg',146408,'2010-12-03 14:12:43',875,0,'2010-12-03 14:12:46','2010-12-03 14:12:46');
INSERT INTO `product_images` VALUES (557,'VICTORINUS_A40.jpg','image/jpeg',149007,'2010-12-03 14:12:44',875,0,'2010-12-03 14:12:46','2010-12-03 14:12:46');
INSERT INTO `product_images` VALUES (558,'vic_pax_anacs_f.jpg','image/jpeg',46244,'2010-12-03 14:13:09',874,1,'2010-12-03 14:13:10','2010-12-03 14:13:10');
INSERT INTO `product_images` VALUES (559,'VITELLIUS_OBV.jpg','image/jpeg',115833,'2010-12-03 14:14:21',1031,1,'2010-12-03 14:14:26','2010-12-03 14:14:26');
INSERT INTO `product_images` VALUES (560,'VITELLIUS_REV.jpg','image/jpeg',111141,'2010-12-03 14:14:23',1031,0,'2010-12-03 14:14:26','2010-12-03 14:14:26');
INSERT INTO `product_images` VALUES (561,'VITELLIUS.jpg','image/jpeg',125113,'2010-12-03 14:14:24',1031,0,'2010-12-03 14:14:26','2010-12-03 14:14:26');
INSERT INTO `product_images` VALUES (562,'vitellius_AV_Avf_obv.jpg','image/jpeg',70012,'2010-12-03 14:15:03',1047,1,'2010-12-03 14:15:14','2010-12-03 14:15:14');
INSERT INTO `product_images` VALUES (563,'vitellius_AV_Avf_rev.jpg','image/jpeg',66801,'2010-12-03 14:15:11',1047,0,'2010-12-03 14:15:14','2010-12-03 14:15:14');
INSERT INTO `product_images` VALUES (564,'vitellius_AV_Avf.jpg','image/jpeg',66599,'2010-12-03 14:15:13',1047,0,'2010-12-03 14:15:14','2010-12-03 14:15:14');
INSERT INTO `product_images` VALUES (565,'ZENO_OBV.jpg','image/jpeg',132463,'2010-12-03 14:15:54',1417,1,'2010-12-03 14:15:58','2010-12-03 14:15:58');
INSERT INTO `product_images` VALUES (566,'ZENO_REV.jpg','image/jpeg',145067,'2010-12-03 14:15:55',1417,0,'2010-12-03 14:15:58','2010-12-03 14:15:58');
INSERT INTO `product_images` VALUES (567,'ZENO.jpg','image/jpeg',162948,'2010-12-03 14:15:57',1417,0,'2010-12-03 14:15:58','2010-12-03 14:15:58');
INSERT INTO `product_images` VALUES (568,'caepio_Avf20_obv.jpg','image/jpeg',97843,'2010-12-03 14:16:44',1188,1,'2010-12-03 14:16:49','2010-12-03 14:16:49');
INSERT INTO `product_images` VALUES (569,'caepio_Avf20_rev.jpg','image/jpeg',82445,'2010-12-03 14:16:46',1188,0,'2010-12-03 14:16:49','2010-12-03 14:16:49');
INSERT INTO `product_images` VALUES (570,'caepio_Avf20.jpg','image/jpeg',63173,'2010-12-03 14:16:47',1188,0,'2010-12-03 14:16:49','2010-12-03 14:16:49');
INSERT INTO `product_images` VALUES (571,'caepio_Avf30_obv.jpg','image/jpeg',96441,'2010-12-03 14:17:53',1190,1,'2010-12-03 14:17:57','2010-12-03 14:17:57');
INSERT INTO `product_images` VALUES (572,'caepio_Avf30_rev.jpg','image/jpeg',94413,'2010-12-03 14:17:54',1190,0,'2010-12-03 14:17:57','2010-12-03 14:17:57');
INSERT INTO `product_images` VALUES (573,'caepio_Avf30.jpg','image/jpeg',60609,'2010-12-03 14:17:55',1190,0,'2010-12-03 14:17:57','2010-12-03 14:17:57');
INSERT INTO `product_images` VALUES (574,'CLAUDIUS_TET_OBV.jpg','image/jpeg',132540,'2010-12-03 14:18:48',1403,1,'2010-12-03 14:18:52','2010-12-03 14:18:52');
INSERT INTO `product_images` VALUES (575,'CLAUDIUS_TET_REV.jpg','image/jpeg',126028,'2010-12-03 14:18:49',1403,0,'2010-12-03 14:18:52','2010-12-03 14:18:52');
INSERT INTO `product_images` VALUES (576,'CLAUDIUS_TET.jpg','image/jpeg',131183,'2010-12-03 14:18:51',1403,0,'2010-12-03 14:18:52','2010-12-03 14:18:52');
INSERT INTO `product_images` VALUES (577,'jul_caesar_icg40_obv.jpg','image/jpeg',106120,'2010-12-03 14:19:36',1167,1,'2010-12-03 14:19:40','2010-12-03 14:19:40');
INSERT INTO `product_images` VALUES (578,'jul_caesar_icg40_rev.jpg','image/jpeg',110917,'2010-12-03 14:19:38',1167,0,'2010-12-03 14:19:40','2010-12-03 14:19:40');
INSERT INTO `product_images` VALUES (579,'jul_caesar_icg40.jpg','image/jpeg',68003,'2010-12-03 14:19:39',1167,0,'2010-12-03 14:19:40','2010-12-03 14:19:40');
INSERT INTO `product_images` VALUES (580,'JULIUS_AUREUS_A-45_OBV.jpg','image/jpeg',52994,'2010-12-03 14:20:28',1426,1,'2010-12-03 14:20:32','2010-12-03 14:20:32');
INSERT INTO `product_images` VALUES (581,'JULIUS_AUREUS_A-45_REV.jpg','image/jpeg',53523,'2010-12-03 14:20:29',1426,0,'2010-12-03 14:20:32','2010-12-03 14:20:32');
INSERT INTO `product_images` VALUES (582,'JULIUS_AUREUS_A-45.jpg','image/jpeg',75695,'2010-12-03 14:20:31',1426,0,'2010-12-03 14:20:32','2010-12-03 14:20:32');
INSERT INTO `product_images` VALUES (583,'JULIUS_CAESAR_DEN_ICG-50.jpg','image/jpeg',63294,'2010-12-03 14:20:55',1427,1,'2010-12-03 14:20:56','2010-12-03 14:20:56');
INSERT INTO `product_images` VALUES (584,'JULIUS_AUREUS_ICG58-OBV.jpg','image/jpeg',62412,'2010-12-03 14:21:43',1289,1,'2010-12-03 14:21:47','2010-12-03 14:21:47');
INSERT INTO `product_images` VALUES (585,'JULIUS_AUREUS_ICG58-REV.jpg','image/jpeg',60168,'2010-12-03 14:21:44',1289,0,'2010-12-03 14:21:47','2010-12-03 14:21:47');
INSERT INTO `product_images` VALUES (586,'JULIUS_AUREUS_ICG58.jpg','image/jpeg',107679,'2010-12-03 14:21:46',1289,0,'2010-12-03 14:21:47','2010-12-03 14:21:47');
INSERT INTO `product_images` VALUES (587,'calpurnius_obv.jpg','image/jpeg',96715,'2010-12-03 14:22:42',1192,1,'2010-12-03 14:22:46','2010-12-03 14:22:46');
INSERT INTO `product_images` VALUES (588,'calpurnius_rev.jpg','image/jpeg',100607,'2010-12-03 14:22:43',1192,0,'2010-12-03 14:22:46','2010-12-03 14:22:46');
INSERT INTO `product_images` VALUES (589,'calpurnius.jpg','image/jpeg',62656,'2010-12-03 14:22:45',1192,0,'2010-12-03 14:22:46','2010-12-03 14:22:46');
INSERT INTO `product_images` VALUES (590,'fonteius_obv.jpg','image/jpeg',92085,'2010-12-03 14:23:24',1191,1,'2010-12-03 14:23:28','2010-12-03 14:23:28');
INSERT INTO `product_images` VALUES (591,'fonteius_rev.jpg','image/jpeg',96573,'2010-12-03 14:23:26',1191,0,'2010-12-03 14:23:28','2010-12-03 14:23:28');
INSERT INTO `product_images` VALUES (592,'fonteius.jpg','image/jpeg',61599,'2010-12-03 14:23:27',1191,0,'2010-12-03 14:23:28','2010-12-03 14:23:28');
INSERT INTO `product_images` VALUES (593,'L.CENSOR_N-CHVF_OBV.jpg','image/jpeg',107237,'2010-12-03 14:24:40',1260,1,'2010-12-03 14:24:45','2010-12-03 14:24:45');
INSERT INTO `product_images` VALUES (594,'L.CENSOR_N-CHVF_REV.jpg','image/jpeg',118285,'2010-12-03 14:24:42',1260,0,'2010-12-03 14:24:45','2010-12-03 14:24:45');
INSERT INTO `product_images` VALUES (595,'L.CENSOR_N-CHVF.jpg','image/jpeg',82499,'2010-12-03 14:24:44',1260,0,'2010-12-03 14:24:45','2010-12-03 14:24:45');
INSERT INTO `product_images` VALUES (596,'M.JUNIUS_BRUTUS_OBV.jpg','image/jpeg',78037,'2010-12-03 14:25:23',1344,1,'2010-12-03 14:25:27','2010-12-03 14:25:27');
INSERT INTO `product_images` VALUES (597,'M.JUNIUS_BRUTUS_REV.jpg','image/jpeg',98196,'2010-12-03 14:25:25',1344,0,'2010-12-03 14:25:27','2010-12-03 14:25:27');
INSERT INTO `product_images` VALUES (598,'M.JUNIUS_BRUTUS.jpg','image/jpeg',79735,'2010-12-03 14:25:26',1344,0,'2010-12-03 14:25:27','2010-12-03 14:25:27');
INSERT INTO `product_images` VALUES (599,'sabinus_obv.jpg','image/jpeg',114082,'2010-12-03 14:26:06',1185,1,'2010-12-03 14:26:10','2010-12-03 14:26:10');
INSERT INTO `product_images` VALUES (600,'sabinus_rev.jpg','image/jpeg',100490,'2010-12-03 14:26:07',1185,0,'2010-12-03 14:26:10','2010-12-03 14:26:10');
INSERT INTO `product_images` VALUES (601,'sabinus.jpg','image/jpeg',63635,'2010-12-03 14:26:08',1185,0,'2010-12-03 14:26:10','2010-12-03 14:26:10');
INSERT INTO `product_images` VALUES (602,'1995PSobv.jpg','image/jpeg',193924,'2010-12-03 14:27:25',625,1,'2010-12-03 14:27:28','2011-01-25 17:37:29');
INSERT INTO `product_images` VALUES (603,'1995PSrev.jpg','image/jpeg',180413,'2010-12-03 14:27:26',625,0,'2010-12-03 14:27:28','2010-12-03 14:27:28');
INSERT INTO `product_images` VALUES (604,'abbasiobv.jpg','image/jpeg',38947,'2010-12-03 14:37:01',576,1,'2010-12-03 14:37:05','2010-12-03 14:37:05');
INSERT INTO `product_images` VALUES (605,'abbasirev.jpg','image/jpeg',38205,'2010-12-03 14:37:02',576,0,'2010-12-03 14:37:05','2010-12-03 14:37:05');
INSERT INTO `product_images` VALUES (606,'Halfrupobv.jpg','image/jpeg',42783,'2010-12-03 14:37:37',575,1,'2010-12-03 14:37:40','2010-12-03 14:37:40');
INSERT INTO `product_images` VALUES (607,'halfruprev.jpg','image/jpeg',45576,'2010-12-03 14:37:39',575,0,'2010-12-03 14:37:40','2010-12-03 14:37:40');
INSERT INTO `product_images` VALUES (608,'1313_afghan_rup_N63_obv.jpg','image/jpeg',87991,'2010-12-03 14:38:24',574,1,'2010-12-03 14:38:29','2010-12-03 14:38:29');
INSERT INTO `product_images` VALUES (609,'1313_afghan_rup_N63_rev.jpg','image/jpeg',74376,'2010-12-03 14:38:26',574,0,'2010-12-03 14:38:29','2010-12-03 14:38:29');
INSERT INTO `product_images` VALUES (610,'1313_afghan_rup_N63.jpg','image/jpeg',67369,'2010-12-03 14:38:27',574,0,'2010-12-03 14:38:29','2010-12-03 14:38:29');
INSERT INTO `product_images` VALUES (611,'austrl_1921_penny_obv.jpg','image/jpeg',64205,'2010-12-03 14:39:59',1155,1,'2010-12-03 14:40:03','2010-12-03 14:40:03');
INSERT INTO `product_images` VALUES (612,'austrl_1921_penny_rev.jpg','image/jpeg',64546,'2010-12-03 14:40:00',1155,0,'2010-12-03 14:40:03','2010-12-03 14:40:03');
INSERT INTO `product_images` VALUES (613,'austrl_1921_penny.jpg','image/jpeg',59844,'2010-12-03 14:40:01',1155,0,'2010-12-03 14:40:03','2010-12-03 14:40:03');
INSERT INTO `product_images` VALUES (614,'1946_aussie_1c_OBV.jpg','image/jpeg',52977,'2010-12-03 14:40:45',1438,1,'2010-12-03 14:40:49','2010-12-03 14:40:49');
INSERT INTO `product_images` VALUES (615,'1946_aussie_1c_REV.jpg','image/jpeg',54416,'2010-12-03 14:40:47',1438,0,'2010-12-03 14:40:49','2010-12-03 14:40:49');
INSERT INTO `product_images` VALUES (616,'1946_aussie_1c.jpg','image/jpeg',36019,'2010-12-03 14:40:48',1438,0,'2010-12-03 14:40:49','2010-12-03 14:40:49');
INSERT INTO `product_images` VALUES (617,'1885_AUSTRIA_FLORIN_OBV.jpg','image/jpeg',73179,'2010-12-03 14:42:43',1449,1,'2010-12-03 14:42:48','2010-12-03 14:42:48');
INSERT INTO `product_images` VALUES (618,'1885_AUSTRIA_FLORIN_REV.jpg','image/jpeg',77601,'2010-12-03 14:42:45',1449,0,'2010-12-03 14:42:48','2010-12-03 14:42:48');
INSERT INTO `product_images` VALUES (619,'1885_AUSTRIA_FLORIN.jpg','image/jpeg',45697,'2010-12-03 14:42:46',1449,0,'2010-12-03 14:42:48','2010-12-03 14:42:48');
INSERT INTO `product_images` VALUES (620,'SALZBURG_OBV.jpg','image/jpeg',92262,'2010-12-03 14:43:37',1442,1,'2010-12-03 14:43:41','2010-12-03 14:43:41');
INSERT INTO `product_images` VALUES (621,'SALZBURG_REV.jpg','image/jpeg',82653,'2010-12-03 14:43:38',1442,0,'2010-12-03 14:43:41','2010-12-03 14:43:41');
INSERT INTO `product_images` VALUES (622,'SALZBURG.jpg','image/jpeg',72750,'2010-12-03 14:43:40',1442,0,'2010-12-03 14:43:41','2010-12-03 14:43:41');
INSERT INTO `product_images` VALUES (623,'1757_aust__1k.jpg','image/jpeg',60650,'2010-12-03 14:44:58',863,1,'2010-12-03 14:45:02','2010-12-03 14:45:02');
INSERT INTO `product_images` VALUES (624,'1757_aust_1k_r.jpg','image/jpeg',58092,'2010-12-03 14:44:59',863,0,'2010-12-03 14:45:02','2010-12-03 14:45:02');
INSERT INTO `product_images` VALUES (625,'1757_aust_1k_r.jpg','image/jpeg',58092,'2010-12-03 14:45:00',863,0,'2010-12-03 14:45:02','2010-12-03 14:45:02');
INSERT INTO `product_images` VALUES (626,'1848_BELGIUM_OBV.jpg','image/jpeg',69193,'2010-12-03 14:46:11',1441,1,'2010-12-03 14:46:15','2010-12-03 14:46:15');
INSERT INTO `product_images` VALUES (627,'1848_BELGIUM_REV.jpg','image/jpeg',73536,'2010-12-03 14:46:12',1441,0,'2010-12-03 14:46:15','2010-12-03 14:46:15');
INSERT INTO `product_images` VALUES (628,'1848_BELGIUM.jpg','image/jpeg',53186,'2010-12-03 14:46:14',1441,0,'2010-12-03 14:46:15','2010-12-03 14:46:15');
INSERT INTO `product_images` VALUES (629,'1944_CONGO_OBV.jpg','image/jpeg',106659,'2010-12-03 14:46:55',1371,1,'2010-12-03 14:46:59','2010-12-03 14:46:59');
INSERT INTO `product_images` VALUES (630,'1944_CONGO_REV.jpg','image/jpeg',100808,'2010-12-03 14:46:56',1371,0,'2010-12-03 14:46:59','2010-12-03 14:46:59');
INSERT INTO `product_images` VALUES (631,'1944_CONGO.jpg','image/jpeg',90579,'2010-12-03 14:46:57',1371,0,'2010-12-03 14:46:59','2010-12-03 14:46:59');
INSERT INTO `product_images` VALUES (636,'BOLIVIA_4R_OBV.jpg','image/jpeg',61775,'2010-12-03 14:51:11',1445,1,'2010-12-03 14:51:15','2010-12-03 14:51:15');
INSERT INTO `product_images` VALUES (637,'BOLIVIA_4R_REV.jpg','image/jpeg',62819,'2010-12-03 14:51:13',1445,0,'2010-12-03 14:51:15','2010-12-03 14:51:15');
INSERT INTO `product_images` VALUES (638,'BOLIVIA_4R.jpg','image/jpeg',48569,'2010-12-03 14:51:14',1445,0,'2010-12-03 14:51:15','2010-12-03 14:51:15');
INSERT INTO `product_images` VALUES (639,'1808_BOLIVIA_4R_OBV.jpg','image/jpeg',54159,'2010-12-03 14:51:57',1444,1,'2010-12-03 14:52:01','2010-12-03 14:52:01');
INSERT INTO `product_images` VALUES (640,'1808_BOLIVIA_4R_REV.jpg','image/jpeg',59110,'2010-12-03 14:51:58',1444,0,'2010-12-03 14:52:01','2010-12-03 14:52:01');
INSERT INTO `product_images` VALUES (641,'1808_BOLIVIA_4R.jpg','image/jpeg',43284,'2010-12-03 14:52:00',1444,0,'2010-12-03 14:52:01','2010-12-03 14:52:01');
INSERT INTO `product_images` VALUES (642,'1754_grbrit_1-2p.jpg','image/jpeg',50324,'2010-12-03 16:27:42',865,1,'2010-12-03 16:27:46','2010-12-03 16:27:46');
INSERT INTO `product_images` VALUES (643,'1754_grbrit_1-2p_r.jpg','image/jpeg',47227,'2010-12-03 16:27:44',865,0,'2010-12-03 16:27:46','2010-12-03 16:27:46');
INSERT INTO `product_images` VALUES (644,'1754_grbrit_1-2p_f.jpg','image/jpeg',38844,'2010-12-03 16:27:45',865,0,'2010-12-03 16:27:46','2010-12-03 16:27:46');
INSERT INTO `product_images` VALUES (648,'1778_MEX_8R_NGC_OBV.jpg','image/jpeg',46709,'2010-12-03 16:32:42',1430,1,'2010-12-03 16:32:45','2010-12-03 16:32:45');
INSERT INTO `product_images` VALUES (649,'1778_MEX_8R_NGC_REV.jpg','image/jpeg',50765,'2010-12-03 16:32:43',1430,0,'2010-12-03 16:32:45','2010-12-03 16:32:45');
INSERT INTO `product_images` VALUES (650,'1778_MEX_8R_NGC.jpg','image/jpeg',44968,'2010-12-03 16:32:44',1430,0,'2010-12-03 16:32:46','2010-12-03 16:32:46');
INSERT INTO `product_images` VALUES (651,'1782_2R_MEX_N-XF_OBV.jpg','image/jpeg',51583,'2010-12-03 16:34:17',1431,1,'2010-12-03 16:34:21','2010-12-03 16:34:21');
INSERT INTO `product_images` VALUES (652,'1782_2R_MEX_N-XF_REV.jpg','image/jpeg',54244,'2010-12-03 16:34:19',1431,0,'2010-12-03 16:34:21','2010-12-03 16:34:21');
INSERT INTO `product_images` VALUES (653,'1782_2R_MEX_N-XF.jpg','image/jpeg',44855,'2010-12-03 16:34:20',1431,0,'2010-12-03 16:34:21','2010-12-03 16:34:21');
INSERT INTO `product_images` VALUES (654,'1783_MEX_8R_A-VF_OBV.jpg','image/jpeg',46213,'2010-12-03 16:36:07',1429,1,'2010-12-03 16:36:10','2010-12-03 16:36:10');
INSERT INTO `product_images` VALUES (655,'1783_MEX_8R_A-VF_REV.jpg','image/jpeg',53259,'2010-12-03 16:36:08',1429,0,'2010-12-03 16:36:10','2010-12-03 16:36:10');
INSERT INTO `product_images` VALUES (656,'1783_MEX_8R_A-VF.jpg','image/jpeg',49699,'2010-12-03 16:36:09',1429,0,'2010-12-03 16:36:10','2010-12-03 16:36:10');
INSERT INTO `product_images` VALUES (660,'1790_BOLIVIA_8E_OBV.jpg','image/jpeg',62939,'2010-12-03 16:40:51',1475,1,'2010-12-03 16:40:56','2010-12-03 16:40:56');
INSERT INTO `product_images` VALUES (661,'1790_BOLIVIA_8E_REV.jpg','image/jpeg',58805,'2010-12-03 16:40:53',1475,0,'2010-12-03 16:40:56','2010-12-03 16:40:56');
INSERT INTO `product_images` VALUES (662,'1790_BOLIVIA_8E.jpg','image/jpeg',53261,'2010-12-03 16:40:54',1475,0,'2010-12-03 16:40:56','2010-12-03 16:40:56');
INSERT INTO `product_images` VALUES (663,'1875-CC_20C_OBV.jpg','image/jpeg',71738,'2010-12-03 16:42:09',1136,1,'2010-12-03 16:42:13','2010-12-03 16:42:13');
INSERT INTO `product_images` VALUES (664,'1875-CC_20C_REV.jpg','image/jpeg',74082,'2010-12-03 16:42:11',1136,0,'2010-12-03 16:42:13','2010-12-03 16:42:13');
INSERT INTO `product_images` VALUES (665,'1875-CC_20C.jpg','image/jpeg',62949,'2010-12-03 16:42:12',1136,0,'2010-12-03 16:42:13','2010-12-03 16:42:13');
INSERT INTO `product_images` VALUES (666,'1879_$_J-1618_OBV.jpg','image/jpeg',137435,'2010-12-03 16:43:49',1336,1,'2010-12-03 16:43:53','2010-12-03 16:43:53');
INSERT INTO `product_images` VALUES (667,'1879_$_J-1618_REV.jpg','image/jpeg',137065,'2010-12-03 16:43:50',1336,0,'2010-12-03 16:43:53','2010-12-03 16:43:53');
INSERT INTO `product_images` VALUES (668,'1879_$_J-1618.jpg','image/jpeg',85819,'2010-12-03 16:43:52',1336,0,'2010-12-03 16:43:53','2010-12-03 16:43:53');
INSERT INTO `product_images` VALUES (669,'BUNKER-3.jpg','image/jpeg',105187,'2010-12-03 16:46:45',1367,1,'2010-12-03 16:46:49','2010-12-03 16:46:49');
INSERT INTO `product_images` VALUES (670,'BUNKER-2.jpg','image/jpeg',79747,'2010-12-03 16:46:46',1367,0,'2010-12-03 16:46:49','2010-12-03 16:46:49');
INSERT INTO `product_images` VALUES (671,'BUNKER.jpg','image/jpeg',67568,'2010-12-03 16:46:48',1367,0,'2010-12-03 16:46:49','2010-12-03 16:46:49');
INSERT INTO `product_images` VALUES (672,'Fosd55obv.jpg','image/jpeg',45792,'2010-12-03 16:50:06',647,1,'2010-12-03 16:50:08','2010-12-03 16:50:08');
INSERT INTO `product_images` VALUES (673,'Fosd55rev.jpg','image/jpeg',45309,'2010-12-03 16:50:07',647,0,'2010-12-03 16:50:08','2010-12-03 16:50:08');
INSERT INTO `product_images` VALUES (674,'Luiginosshipwrecklot.jpg','image/jpeg',69393,'2010-12-03 16:51:48',648,1,'2010-12-03 16:51:50','2010-12-03 16:51:50');
INSERT INTO `product_images` VALUES (685,'HibNorseobv.jpg','image/jpeg',41360,'2010-12-03 22:53:00',250,1,'2010-12-03 22:53:02','2010-12-03 22:53:02');
INSERT INTO `product_images` VALUES (686,'HibNorserev.jpg','image/jpeg',40780,'2010-12-03 22:53:01',250,0,'2010-12-03 22:53:03','2010-12-03 22:53:03');
INSERT INTO `product_images` VALUES (687,'EdConfobv.jpg','image/jpeg',35365,'2010-12-03 22:55:18',239,1,'2010-12-03 22:55:21','2010-12-03 22:55:21');
INSERT INTO `product_images` VALUES (688,'EdConfrev.jpg','image/jpeg',33242,'2010-12-03 22:55:20',239,0,'2010-12-03 22:55:21','2010-12-03 22:55:21');
INSERT INTO `product_images` VALUES (689,'gr_brit_penny_Nau58_obv.jpg','image/jpeg',66472,'2010-12-03 22:56:54',949,1,'2010-12-03 22:56:58','2010-12-03 22:56:58');
INSERT INTO `product_images` VALUES (690,'gr_brit_penny_Nau58_rev.jpg','image/jpeg',66757,'2010-12-03 22:56:55',949,0,'2010-12-03 22:56:58','2010-12-03 22:56:58');
INSERT INTO `product_images` VALUES (691,'gr_brit_penny_Nau58.jpg','image/jpeg',52125,'2010-12-03 22:56:56',949,0,'2010-12-03 22:56:58','2010-12-03 22:56:58');
INSERT INTO `product_images` VALUES (692,'henry8obv.jpg','image/jpeg',40329,'2010-12-03 23:01:15',616,1,'2010-12-03 23:01:17','2010-12-03 23:01:17');
INSERT INTO `product_images` VALUES (693,'henry8rev.jpg','image/jpeg',41940,'2010-12-03 23:01:16',616,0,'2010-12-03 23:01:17','2010-12-03 23:01:17');
INSERT INTO `product_images` VALUES (694,'gr_brit_sceat_Nms64_obv.jpg','image/jpeg',67650,'2010-12-03 23:04:36',238,1,'2010-12-03 23:04:40','2010-12-03 23:04:40');
INSERT INTO `product_images` VALUES (695,'gr_brit_sceat_Nms64_rev.jpg','image/jpeg',74911,'2010-12-03 23:04:37',238,0,'2010-12-03 23:04:40','2010-12-03 23:04:40');
INSERT INTO `product_images` VALUES (696,'gr_brit_sceat_Nms64.jpg','image/jpeg',62665,'2010-12-03 23:04:38',238,0,'2010-12-03 23:04:40','2010-12-03 23:04:40');
INSERT INTO `product_images` VALUES (697,'gr_brit_sceat_Nau_obv.jpg','image/jpeg',66279,'2010-12-03 23:10:11',950,1,'2010-12-03 23:10:18','2010-12-03 23:10:18');
INSERT INTO `product_images` VALUES (698,'gr_brit_sceat_Nau_rev.jpg','image/jpeg',70515,'2010-12-03 23:10:15',950,0,'2010-12-03 23:10:18','2010-12-03 23:10:18');
INSERT INTO `product_images` VALUES (699,'gr_brit_sceat_Nau.jpg','image/jpeg',58122,'2010-12-03 23:10:16',950,0,'2010-12-03 23:10:18','2010-12-03 23:10:18');
INSERT INTO `product_images` VALUES (700,'Siefredobv.jpg','image/jpeg',49437,'2010-12-03 23:11:46',254,1,'2010-12-03 23:11:49','2010-12-03 23:11:49');
INSERT INTO `product_images` VALUES (701,'Siefredrev.jpg','image/jpeg',45479,'2010-12-03 23:11:48',254,0,'2010-12-03 23:11:49','2010-12-03 23:11:49');
INSERT INTO `product_images` VALUES (702,'gr_brit_sceat_Nau55_obv.jpg','image/jpeg',65187,'2010-12-03 23:13:55',951,1,'2010-12-03 23:13:59','2010-12-03 23:13:59');
INSERT INTO `product_images` VALUES (703,'gr_brit_sceat_Nau55_rev.jpg','image/jpeg',71376,'2010-12-03 23:13:56',951,0,'2010-12-03 23:13:59','2010-12-03 23:13:59');
INSERT INTO `product_images` VALUES (704,'gr_brit_sceat_Nau55.jpg','image/jpeg',54712,'2010-12-03 23:13:58',951,0,'2010-12-03 23:13:59','2010-12-03 23:13:59');
INSERT INTO `product_images` VALUES (705,'gr_brit_sceat_Nau58_obv.jpg','image/jpeg',59906,'2010-12-03 23:16:07',952,1,'2010-12-03 23:16:12','2010-12-03 23:16:12');
INSERT INTO `product_images` VALUES (706,'gr_brit_sceat_Nau58_rev.jpg','image/jpeg',70282,'2010-12-03 23:16:09',952,0,'2010-12-03 23:16:12','2010-12-03 23:16:12');
INSERT INTO `product_images` VALUES (707,'gr_brit_sceat_Nau58.jpg','image/jpeg',50748,'2010-12-03 23:16:10',952,0,'2010-12-03 23:16:12','2010-12-03 23:16:12');
INSERT INTO `product_images` VALUES (711,'Barbobv.jpg','image/jpeg',48847,'2010-12-04 01:46:46',543,1,'2010-12-04 01:46:49','2010-12-04 01:46:49');
INSERT INTO `product_images` VALUES (712,'barbrev.jpg','image/jpeg',50258,'2010-12-04 01:46:47',543,0,'2010-12-04 01:46:49','2010-12-04 01:46:49');
INSERT INTO `product_images` VALUES (713,'italy_denar_Nxf_obv.jpg','image/jpeg',76077,'2010-12-04 01:48:32',643,1,'2010-12-04 01:48:35','2010-12-04 01:48:35');
INSERT INTO `product_images` VALUES (714,'italy_denar_Nxf_rev.jpg','image/jpeg',71531,'2010-12-04 01:48:33',643,0,'2010-12-04 01:48:36','2010-12-04 01:48:36');
INSERT INTO `product_images` VALUES (715,'italy_denar_Nxf.jpg','image/jpeg',68064,'2010-12-04 01:48:34',643,0,'2010-12-04 01:48:36','2010-12-04 01:48:36');
INSERT INTO `product_images` VALUES (716,'RHODES_ZECCH_OBV.jpg','image/jpeg',87583,'2010-12-04 01:50:10',1465,1,'2010-12-04 01:50:15','2010-12-04 01:50:15');
INSERT INTO `product_images` VALUES (717,'RHODES_ZECCH_REV.jpg','image/jpeg',79268,'2010-12-04 01:50:12',1465,0,'2010-12-04 01:50:15','2010-12-04 01:50:15');
INSERT INTO `product_images` VALUES (718,'RHODES_ZECCH.jpg','image/jpeg',75644,'2010-12-04 01:50:13',1465,0,'2010-12-04 01:50:15','2010-12-04 01:50:15');
INSERT INTO `product_images` VALUES (719,'buwayid_ICG_obv.jpg','image/jpeg',90991,'2010-12-04 01:51:38',234,1,'2010-12-04 01:51:43','2010-12-04 01:51:43');
INSERT INTO `product_images` VALUES (720,'buwayid_ICG_rev.jpg','image/jpeg',95400,'2010-12-04 01:51:40',234,0,'2010-12-04 01:51:43','2010-12-04 01:51:43');
INSERT INTO `product_images` VALUES (721,'buwayid_ICG.jpg','image/jpeg',68646,'2010-12-04 01:51:41',234,0,'2010-12-04 01:51:43','2010-12-04 01:51:43');
INSERT INTO `product_images` VALUES (722,'samanid_ICGvf_obv.jpg','image/jpeg',88881,'2010-12-04 01:53:41',368,1,'2010-12-04 01:53:46','2010-12-04 01:53:46');
INSERT INTO `product_images` VALUES (723,'samanid_ICGvf_rev.jpg','image/jpeg',85400,'2010-12-04 01:53:43',368,0,'2010-12-04 01:53:46','2010-12-04 01:53:46');
INSERT INTO `product_images` VALUES (724,'samanid_ICGvf.jpg','image/jpeg',73721,'2010-12-04 01:53:44',368,0,'2010-12-04 01:53:46','2010-12-04 01:53:46');
INSERT INTO `product_images` VALUES (725,'KIDARITES_OBV.jpg','image/jpeg',117568,'2010-12-04 01:58:24',1382,1,'2010-12-04 01:58:28','2010-12-04 01:58:28');
INSERT INTO `product_images` VALUES (726,'KIDARITES_REV.jpg','image/jpeg',109145,'2010-12-04 01:58:25',1382,0,'2010-12-04 01:58:28','2010-12-04 01:58:28');
INSERT INTO `product_images` VALUES (727,'KIDARITES.jpg','image/jpeg',146313,'2010-12-04 01:58:26',1382,0,'2010-12-04 01:58:28','2010-12-04 01:58:28');
INSERT INTO `product_images` VALUES (728,'1855_denmark_1-2R.jpg','image/jpeg',75905,'2010-12-06 13:47:56',773,1,'2010-12-06 13:48:00','2010-12-06 13:48:00');
INSERT INTO `product_images` VALUES (729,'1855_denmark1-2R_r.jpg','image/jpeg',80040,'2010-12-06 13:47:57',773,0,'2010-12-06 13:48:00','2010-12-06 13:48:00');
INSERT INTO `product_images` VALUES (730,'1855_1-2R_f.jpg','image/jpeg',61686,'2010-12-06 13:47:59',773,0,'2010-12-06 13:48:00','2010-12-06 13:48:00');
INSERT INTO `product_images` VALUES (731,'den_1878_ore_N63_obv.jpg','image/jpeg',71500,'2010-12-06 13:49:13',610,1,'2010-12-06 13:49:17','2010-12-06 13:49:17');
INSERT INTO `product_images` VALUES (732,'den_1878_ore_N63_rev.jpg','image/jpeg',68671,'2010-12-06 13:49:14',610,0,'2010-12-06 13:49:17','2010-12-06 13:49:17');
INSERT INTO `product_images` VALUES (733,'den_1878_ore_N63.jpg','image/jpeg',61522,'2010-12-06 13:49:16',610,0,'2010-12-06 13:49:17','2010-12-06 13:49:17');
INSERT INTO `product_images` VALUES (734,'den_1884_5o_Nau_obv.jpg','image/jpeg',64278,'2010-12-06 13:50:24',611,1,'2010-12-06 13:50:28','2010-12-06 13:50:28');
INSERT INTO `product_images` VALUES (735,'den_1884_5o_Nau_rev.jpg','image/jpeg',64247,'2010-12-06 13:50:26',611,0,'2010-12-06 13:50:28','2010-12-06 13:50:28');
INSERT INTO `product_images` VALUES (736,'den_1884_5o_Nau.jpg','image/jpeg',64759,'2010-12-06 13:50:27',611,0,'2010-12-06 13:50:28','2010-12-06 13:50:28');
INSERT INTO `product_images` VALUES (737,'EGYPT_4P_64RD_OBV.jpg','image/jpeg',152309,'2010-12-06 13:54:46',518,1,'2010-12-06 13:54:51','2010-12-06 13:54:51');
INSERT INTO `product_images` VALUES (738,'EGYPT_4P_64RD_REV.jpg','image/jpeg',147065,'2010-12-06 13:54:48',518,0,'2010-12-06 13:54:51','2010-12-06 13:54:51');
INSERT INTO `product_images` VALUES (739,'EGYPT_4P_64RD.jpg','image/jpeg',123694,'2010-12-06 13:54:49',518,0,'2010-12-06 13:54:51','2010-12-06 13:54:51');
INSERT INTO `product_images` VALUES (740,'1917hobv.jpg','image/jpeg',69129,'2010-12-06 13:55:52',521,1,'2010-12-06 13:55:55','2010-12-06 13:55:55');
INSERT INTO `product_images` VALUES (741,'1917hrev.jpg','image/jpeg',73891,'2010-12-06 13:55:54',521,0,'2010-12-06 13:55:55','2010-12-06 13:55:55');
INSERT INTO `product_images` VALUES (742,'1923obv.jpg','image/jpeg',52629,'2010-12-06 13:57:10',522,1,'2010-12-06 13:57:14','2010-12-06 13:57:14');
INSERT INTO `product_images` VALUES (743,'1923rev.jpg','image/jpeg',56822,'2010-12-06 13:57:13',522,0,'2010-12-06 13:57:14','2010-12-06 13:57:14');
INSERT INTO `product_images` VALUES (744,'1937p10obv.jpg','image/jpeg',54626,'2010-12-06 13:58:24',523,1,'2010-12-06 13:58:27','2010-12-06 13:58:27');
INSERT INTO `product_images` VALUES (745,'1937p10rev.jpg','image/jpeg',59847,'2010-12-06 13:58:26',523,0,'2010-12-06 13:58:27','2010-12-06 13:58:27');
INSERT INTO `product_images` VALUES (746,'1937p20obv.jpg','image/jpeg',67007,'2010-12-06 13:59:36',524,1,'2010-12-06 13:59:38','2010-12-06 13:59:38');
INSERT INTO `product_images` VALUES (747,'1937p20rev.jpg','image/jpeg',65436,'2010-12-06 13:59:37',524,0,'2010-12-06 13:59:38','2010-12-06 13:59:38');
INSERT INTO `product_images` VALUES (748,'egypt_12m_xf45.jpg','image/jpeg',85380,'2010-12-06 14:01:02',770,1,'2010-12-06 14:01:06','2010-12-06 14:01:06');
INSERT INTO `product_images` VALUES (749,'egypt_12m_xf45_r.jpg','image/jpeg',77234,'2010-12-06 14:01:03',770,0,'2010-12-06 14:01:06','2010-12-06 14:01:06');
INSERT INTO `product_images` VALUES (750,'egypt_12m_xf45_f.jpg','image/jpeg',59527,'2010-12-06 14:01:05',770,0,'2010-12-06 14:01:06','2010-12-06 14:01:06');
INSERT INTO `product_images` VALUES (751,'egypt_dinar_N63_obv.jpg','image/jpeg',79908,'2010-12-06 14:02:12',953,1,'2010-12-06 14:02:16','2010-12-06 14:02:16');
INSERT INTO `product_images` VALUES (752,'egypt_dinar_N63_rev.jpg','image/jpeg',82570,'2010-12-06 14:02:14',953,0,'2010-12-06 14:02:16','2010-12-06 14:02:16');
INSERT INTO `product_images` VALUES (753,'egypt_dinar_N63.jpg','image/jpeg',62912,'2010-12-06 14:02:15',953,0,'2010-12-06 14:02:16','2010-12-06 14:02:16');
INSERT INTO `product_images` VALUES (754,'1882_FIN_10M_OBV.jpg','image/jpeg',65297,'2010-12-06 14:05:17',1450,1,'2010-12-06 14:05:27','2010-12-06 14:05:27');
INSERT INTO `product_images` VALUES (755,'1882_FIN_10M_REV.jpg','image/jpeg',57988,'2010-12-06 14:05:24',1450,0,'2010-12-06 14:05:27','2010-12-06 14:05:27');
INSERT INTO `product_images` VALUES (756,'1882_FIN_10M.jpg','image/jpeg',35152,'2010-12-06 14:05:26',1450,0,'2010-12-06 14:05:27','2010-12-06 14:05:27');
INSERT INTO `product_images` VALUES (757,'1553_FRANCE_TESTON_OBV.jpg','image/jpeg',53331,'2010-12-06 14:07:23',1451,1,'2010-12-06 14:07:27','2010-12-06 14:07:27');
INSERT INTO `product_images` VALUES (758,'1553_FRANCE_TESTON_REV.jpg','image/jpeg',63150,'2010-12-06 14:07:25',1451,0,'2010-12-06 14:07:27','2010-12-06 14:07:27');
INSERT INTO `product_images` VALUES (759,'1553_FRANCE_TESTON.jpg','image/jpeg',42780,'2010-12-06 14:07:26',1451,0,'2010-12-06 14:07:27','2010-12-06 14:07:27');
INSERT INTO `product_images` VALUES (760,'1786_france_lor_obv.jpg','image/jpeg',71330,'2010-12-06 14:08:31',389,1,'2010-12-06 14:08:34','2010-12-06 14:08:34');
INSERT INTO `product_images` VALUES (761,'1786_france_lor_rev.jpg','image/jpeg',78256,'2010-12-06 14:08:32',389,0,'2010-12-06 14:08:34','2010-12-06 14:08:34');
INSERT INTO `product_images` VALUES (762,'1786_france_lor.jpg','image/jpeg',58631,'2010-12-06 14:08:33',389,0,'2010-12-06 14:08:34','2010-12-06 14:08:34');
INSERT INTO `product_images` VALUES (763,'1903_50p.jpg','image/jpeg',71554,'2010-12-06 14:37:39',821,1,'2010-12-06 14:37:42','2010-12-06 14:37:42');
INSERT INTO `product_images` VALUES (764,'1903_50p_r.jpg','image/jpeg',80524,'2010-12-06 14:37:40',821,0,'2010-12-06 14:37:42','2010-12-06 14:37:42');
INSERT INTO `product_images` VALUES (765,'1903_50p_f.jpg','image/jpeg',62494,'2010-12-06 14:37:41',821,0,'2010-12-06 14:37:42','2010-12-06 14:37:42');
INSERT INTO `product_images` VALUES (766,'1924_3m.jpg','image/jpeg',71372,'2010-12-06 14:38:49',817,1,'2010-12-06 14:38:53','2010-12-06 14:38:53');
INSERT INTO `product_images` VALUES (767,'1924_3m_r.jpg','image/jpeg',70436,'2010-12-06 14:38:50',817,0,'2010-12-06 14:38:53','2010-12-06 14:38:53');
INSERT INTO `product_images` VALUES (768,'1924_3m_f.jpg','image/jpeg',66622,'2010-12-06 14:38:52',817,0,'2010-12-06 14:38:53','2010-12-06 14:38:53');
INSERT INTO `product_images` VALUES (769,'1927_3m.jpg','image/jpeg',74545,'2010-12-06 14:39:45',813,1,'2010-12-06 14:39:49','2010-12-06 14:39:49');
INSERT INTO `product_images` VALUES (770,'1927_3m_r.jpg','image/jpeg',72375,'2010-12-06 14:39:47',813,0,'2010-12-06 14:39:49','2010-12-06 14:39:49');
INSERT INTO `product_images` VALUES (771,'1927_3m_f.jpg','image/jpeg',63177,'2010-12-06 14:39:48',813,0,'2010-12-06 14:39:49','2010-12-06 14:39:49');
INSERT INTO `product_images` VALUES (772,'1949_5p.jpg','image/jpeg',66111,'2010-12-06 14:42:20',127,1,'2010-12-06 14:42:24','2010-12-06 14:42:24');
INSERT INTO `product_images` VALUES (773,'1949_5p_r.jpg','image/jpeg',65550,'2010-12-06 14:42:21',127,0,'2010-12-06 14:42:24','2010-12-06 14:42:24');
INSERT INTO `product_images` VALUES (774,'1949_5p_f.jpg','image/jpeg',60477,'2010-12-06 14:42:23',127,0,'2010-12-06 14:42:24','2010-12-06 14:42:24');
INSERT INTO `product_images` VALUES (775,'1949_10p.jpg','image/jpeg',63408,'2010-12-06 14:43:36',128,1,'2010-12-06 14:43:40','2010-12-06 14:43:40');
INSERT INTO `product_images` VALUES (776,'1949_10p_r.jpg','image/jpeg',59414,'2010-12-06 14:43:38',128,0,'2010-12-06 14:43:40','2010-12-06 14:43:40');
INSERT INTO `product_images` VALUES (777,'1949_10p_f.jpg','image/jpeg',61666,'2010-12-06 14:43:39',128,0,'2010-12-06 14:43:40','2010-12-06 14:43:40');
INSERT INTO `product_images` VALUES (778,'augobv.jpg','image/jpeg',49083,'2010-12-06 14:44:46',182,1,'2010-12-06 14:44:49','2010-12-06 14:44:49');
INSERT INTO `product_images` VALUES (779,'augrev.jpg','image/jpeg',65054,'2010-12-06 14:44:47',182,0,'2010-12-06 14:44:49','2010-12-06 14:44:49');
INSERT INTO `product_images` VALUES (780,'1803_augsburg.jpg','image/jpeg',56890,'2010-12-06 14:46:00',778,1,'2010-12-06 14:46:04','2010-12-06 14:46:04');
INSERT INTO `product_images` VALUES (781,'1803_augsburg_r.jpg','image/jpeg',59143,'2010-12-06 14:46:02',778,0,'2010-12-06 14:46:04','2010-12-06 14:46:04');
INSERT INTO `product_images` VALUES (782,'1803_augsburg_f.jpg','image/jpeg',52547,'2010-12-06 14:46:03',778,0,'2010-12-06 14:46:04','2010-12-06 14:46:04');
INSERT INTO `product_images` VALUES (783,'1732_bavaria.jpg','image/jpeg',77741,'2010-12-06 14:47:09',283,1,'2010-12-06 14:47:21','2010-12-06 14:47:21');
INSERT INTO `product_images` VALUES (784,'1732_bavaria_r.jpg','image/jpeg',67276,'2010-12-06 14:47:18',283,0,'2010-12-06 14:47:21','2010-12-06 14:47:21');
INSERT INTO `product_images` VALUES (785,'1732_bavaria_f.jpg','image/jpeg',61932,'2010-12-06 14:47:20',283,0,'2010-12-06 14:47:21','2010-12-06 14:47:21');
INSERT INTO `product_images` VALUES (786,'1815_bav.jpg','image/jpeg',74639,'2010-12-06 14:48:19',166,1,'2010-12-06 14:48:23','2010-12-06 14:48:23');
INSERT INTO `product_images` VALUES (787,'1815_bav_r.jpg','image/jpeg',67738,'2010-12-06 14:48:21',166,0,'2010-12-06 14:48:23','2010-12-06 14:48:23');
INSERT INTO `product_images` VALUES (788,'1815_bav_f.jpg','image/jpeg',70259,'2010-12-06 14:48:22',166,0,'2010-12-06 14:48:23','2010-12-06 14:48:23');
INSERT INTO `product_images` VALUES (789,'1824_bavaria.jpg','image/jpeg',74875,'2010-12-06 14:49:28',779,1,'2010-12-06 14:49:31','2010-12-06 14:49:31');
INSERT INTO `product_images` VALUES (790,'1824_bavaria_r.jpg','image/jpeg',77525,'2010-12-06 14:49:29',779,0,'2010-12-06 14:49:31','2010-12-06 14:49:31');
INSERT INTO `product_images` VALUES (791,'1824_bavaria_f.jpg','image/jpeg',70534,'2010-12-06 14:49:30',779,0,'2010-12-06 14:49:31','2010-12-06 14:49:31');
INSERT INTO `product_images` VALUES (792,'1871_GERM_BAV_GULDEN_OBV.jpg','image/jpeg',62806,'2010-12-06 14:50:30',1453,1,'2010-12-06 14:50:33','2010-12-06 14:50:33');
INSERT INTO `product_images` VALUES (793,'1871_GERM_BAV_GULDEN_REV.jpg','image/jpeg',66782,'2010-12-06 14:50:31',1453,0,'2010-12-06 14:50:33','2010-12-06 14:50:33');
INSERT INTO `product_images` VALUES (794,'1871_GERM_BAV_GULDEN.jpg','image/jpeg',44473,'2010-12-06 14:50:32',1453,0,'2010-12-06 14:50:33','2010-12-06 14:50:33');
INSERT INTO `product_images` VALUES (795,'germ_1700_2m_Nvf_obv.jpg','image/jpeg',70388,'2010-12-06 14:52:03',944,1,'2010-12-06 14:52:07','2010-12-06 14:52:07');
INSERT INTO `product_images` VALUES (796,'germ_1700_2m_Nvf_rev.jpg','image/jpeg',71663,'2010-12-06 14:52:05',944,0,'2010-12-06 14:52:07','2010-12-06 14:52:07');
INSERT INTO `product_images` VALUES (797,'germ_1700_2m_Nvf.jpg','image/jpeg',54627,'2010-12-06 14:52:06',944,0,'2010-12-06 14:52:07','2010-12-06 14:52:07');
INSERT INTO `product_images` VALUES (798,'1815_brun-wolf.jpg','image/jpeg',64008,'2010-12-06 14:54:38',781,1,'2010-12-06 14:54:42','2010-12-06 14:54:42');
INSERT INTO `product_images` VALUES (799,'1815_brun-wolf_r.jpg','image/jpeg',63468,'2010-12-06 14:54:39',781,0,'2010-12-06 14:54:42','2010-12-06 14:54:42');
INSERT INTO `product_images` VALUES (800,'1815_brun-wolf_f.jpg','image/jpeg',60562,'2010-12-06 14:54:41',781,0,'2010-12-06 14:54:42','2010-12-06 14:54:42');
INSERT INTO `product_images` VALUES (801,'1819_frank.jpg','image/jpeg',71381,'2010-12-06 14:55:41',782,1,'2010-12-06 14:55:45','2010-12-06 14:55:45');
INSERT INTO `product_images` VALUES (802,'1819_frank_r.jpg','image/jpeg',65062,'2010-12-06 14:55:42',782,0,'2010-12-06 14:55:45','2010-12-06 14:55:45');
INSERT INTO `product_images` VALUES (803,'1819_frank_f.jpg','image/jpeg',58821,'2010-12-06 14:55:44',782,0,'2010-12-06 14:55:45','2010-12-06 14:55:45');
INSERT INTO `product_images` VALUES (804,'1853_GERM_DUCAT_OBV.jpg','image/jpeg',76485,'2010-12-06 14:56:36',1458,1,'2010-12-06 14:56:40','2010-12-06 14:56:40');
INSERT INTO `product_images` VALUES (805,'1853_GERM_DUCAT_REV.jpg','image/jpeg',70812,'2010-12-06 14:56:38',1458,0,'2010-12-06 14:56:40','2010-12-06 14:56:40');
INSERT INTO `product_images` VALUES (806,'1853_GERM_DUCAT.jpg','image/jpeg',43165,'2010-12-06 14:56:39',1458,0,'2010-12-06 14:56:40','2010-12-06 14:56:40');
INSERT INTO `product_images` VALUES (807,'hamburg_1876_2m_obv.jpg','image/jpeg',82956,'2010-12-06 14:58:08',1149,1,'2010-12-06 14:58:15','2010-12-06 14:58:15');
INSERT INTO `product_images` VALUES (808,'hamburg_1876_2m_rev.jpg','image/jpeg',82668,'2010-12-06 14:58:09',1149,0,'2010-12-06 14:58:15','2010-12-06 14:58:15');
INSERT INTO `product_images` VALUES (809,'hamburg_1876_2m.jpg','image/jpeg',63119,'2010-12-06 14:58:14',1149,0,'2010-12-06 14:58:15','2010-12-06 14:58:15');
INSERT INTO `product_images` VALUES (810,'1731_hes-cas.jpg','image/jpeg',78979,'2010-12-06 15:00:37',822,1,'2010-12-06 15:00:41','2010-12-06 15:00:41');
INSERT INTO `product_images` VALUES (811,'1731_hes-cas_r.jpg','image/jpeg',79105,'2010-12-06 15:00:38',822,0,'2010-12-06 15:00:41','2010-12-06 15:00:41');
INSERT INTO `product_images` VALUES (812,'1731_hes-cas_f.jpg','image/jpeg',57794,'2010-12-06 15:00:39',822,0,'2010-12-06 15:00:41','2010-12-06 15:00:41');
INSERT INTO `product_images` VALUES (813,'1743_hesse.jpg','image/jpeg',65720,'2010-12-06 15:01:51',807,1,'2010-12-06 15:01:55','2010-12-06 15:01:55');
INSERT INTO `product_images` VALUES (814,'1743_hesse_r.jpg','image/jpeg',69626,'2010-12-06 15:01:52',807,0,'2010-12-06 15:01:55','2010-12-06 15:01:55');
INSERT INTO `product_images` VALUES (815,'1743_hesse_f.jpg','image/jpeg',61655,'2010-12-06 15:01:54',807,0,'2010-12-06 15:01:55','2010-12-06 15:01:55');
INSERT INTO `product_images` VALUES (816,'1838_germ_guld.jpg','image/jpeg',52710,'2010-12-06 15:03:33',868,1,'2010-12-06 15:03:36','2010-12-06 15:03:36');
INSERT INTO `product_images` VALUES (817,'1838_germ_guld_r.jpg','image/jpeg',58317,'2010-12-06 15:03:34',868,0,'2010-12-06 15:03:36','2010-12-06 15:03:36');
INSERT INTO `product_images` VALUES (818,'1838_germ_guld_f.jpg','image/jpeg',44118,'2010-12-06 15:03:35',868,0,'2010-12-06 15:03:36','2010-12-06 15:03:36');
INSERT INTO `product_images` VALUES (819,'1764_jever.jpg','image/jpeg',79286,'2010-12-06 15:05:20',808,1,'2010-12-06 15:05:24','2010-12-06 15:05:24');
INSERT INTO `product_images` VALUES (820,'1764_jever_r.jpg','image/jpeg',79193,'2010-12-06 15:05:21',808,0,'2010-12-06 15:05:24','2010-12-06 15:05:24');
INSERT INTO `product_images` VALUES (821,'1764_jever_f.jpg','image/jpeg',53195,'2010-12-06 15:05:22',808,0,'2010-12-06 15:05:24','2010-12-06 15:05:24');
INSERT INTO `product_images` VALUES (822,'1815_GERM_NASS_TALER_OBV-1.jpg','image/jpeg',66706,'2010-12-06 15:08:13',1455,1,'2010-12-06 15:08:17','2010-12-06 15:08:17');
INSERT INTO `product_images` VALUES (823,'1815_GERM_NASS_TALER_REV.jpg','image/jpeg',69644,'2010-12-06 15:08:15',1455,0,'2010-12-06 15:08:17','2010-12-06 15:08:17');
INSERT INTO `product_images` VALUES (824,'1815_GERM_NASS_TALER.jpg','image/jpeg',46259,'2010-12-06 15:08:16',1455,0,'2010-12-06 15:08:17','2010-12-06 15:08:17');
INSERT INTO `product_images` VALUES (825,'saxonobv.jpg','image/jpeg',40373,'2010-12-06 15:11:13',286,1,'2010-12-06 15:11:16','2010-12-06 15:11:16');
INSERT INTO `product_images` VALUES (826,'saxonrev.jpg','image/jpeg',34649,'2010-12-06 15:11:15',286,0,'2010-12-06 15:11:16','2010-12-06 15:11:16');
INSERT INTO `product_images` VALUES (827,'1814_1-6t.jpg','image/jpeg',63169,'2010-12-06 15:13:16',266,1,'2010-12-06 15:13:19','2010-12-06 15:13:19');
INSERT INTO `product_images` VALUES (828,'1814_1-6t_r.jpg','image/jpeg',76597,'2010-12-06 15:13:17',266,0,'2010-12-06 15:13:20','2010-12-06 15:13:20');
INSERT INTO `product_images` VALUES (829,'1814_1-6t_f.jpg','image/jpeg',58253,'2010-12-06 15:13:18',266,0,'2010-12-06 15:13:20','2010-12-06 15:13:20');
INSERT INTO `product_images` VALUES (830,'1839_2t.jpg','image/jpeg',66158,'2010-12-06 15:14:15',173,1,'2010-12-06 15:14:18','2010-12-06 15:14:18');
INSERT INTO `product_images` VALUES (831,'1839_2t_r.jpg','image/jpeg',74823,'2010-12-06 15:14:16',173,0,'2010-12-06 15:14:18','2010-12-06 15:14:18');
INSERT INTO `product_images` VALUES (832,'1839_2t_f.jpg','image/jpeg',65481,'2010-12-06 15:14:17',173,0,'2010-12-06 15:14:19','2010-12-06 15:14:19');
INSERT INTO `product_images` VALUES (833,'1855_2t.jpg','image/jpeg',69469,'2010-12-06 15:15:05',174,1,'2010-12-06 15:15:09','2010-12-06 15:15:09');
INSERT INTO `product_images` VALUES (834,'1855_2t_r.jpg','image/jpeg',74155,'2010-12-06 15:15:06',174,0,'2010-12-06 15:15:09','2010-12-06 15:15:09');
INSERT INTO `product_images` VALUES (835,'1855_2t_f.jpg','image/jpeg',59479,'2010-12-06 15:15:08',174,0,'2010-12-06 15:15:09','2010-12-06 15:15:09');
INSERT INTO `product_images` VALUES (836,'1929_3m.jpg','image/jpeg',69845,'2010-12-06 15:15:59',816,1,'2010-12-06 15:16:03','2010-12-06 15:16:03');
INSERT INTO `product_images` VALUES (837,'1929_3m_r.jpg','image/jpeg',74808,'2010-12-06 15:16:01',816,0,'2010-12-06 15:16:03','2010-12-06 15:16:03');
INSERT INTO `product_images` VALUES (838,'1929_3m_f.jpg','image/jpeg',59439,'2010-12-06 15:16:02',816,0,'2010-12-06 15:16:03','2010-12-06 15:16:03');
INSERT INTO `product_images` VALUES (839,'1831_germ_guld.jpg','image/jpeg',61545,'2010-12-06 15:17:26',869,1,'2010-12-06 15:17:30','2010-12-06 15:17:30');
INSERT INTO `product_images` VALUES (840,'1831_germ_guld_r.jpg','image/jpeg',61783,'2010-12-06 15:17:28',869,0,'2010-12-06 15:17:30','2010-12-06 15:17:30');
INSERT INTO `product_images` VALUES (841,'1831_germ_guld_f.jpg','image/jpeg',48229,'2010-12-06 15:17:29',869,0,'2010-12-06 15:17:30','2010-12-06 15:17:30');
INSERT INTO `product_images` VALUES (842,'1909_3m.jpg','image/jpeg',66170,'2010-12-06 15:18:47',812,1,'2010-12-06 15:18:50','2010-12-06 15:18:50');
INSERT INTO `product_images` VALUES (843,'1909_3m_r.jpg','image/jpeg',80711,'2010-12-06 15:18:48',812,0,'2010-12-06 15:18:51','2010-12-06 15:18:51');
INSERT INTO `product_images` VALUES (844,'1909_3m_f.jpg','image/jpeg',65611,'2010-12-06 15:18:49',812,0,'2010-12-06 15:18:51','2010-12-06 15:18:51');
INSERT INTO `product_images` VALUES (845,'glassobv.jpg','image/jpeg',15153,'2010-12-06 15:19:01',20,1,'2010-12-06 15:19:04','2010-12-06 15:19:04');
INSERT INTO `product_images` VALUES (846,'glassrev.jpg','image/jpeg',17367,'2010-12-06 15:19:02',20,0,'2010-12-06 15:19:04','2010-12-06 15:19:04');
INSERT INTO `product_images` VALUES (847,'1708_1-2cr.jpg','image/jpeg',58933,'2010-12-06 15:32:47',791,1,'2010-12-06 15:32:50','2010-12-06 15:32:50');
INSERT INTO `product_images` VALUES (848,'1708_1-2cr_r.jpg','image/jpeg',66019,'2010-12-06 15:32:48',791,0,'2010-12-06 15:32:50','2010-12-06 15:32:50');
INSERT INTO `product_images` VALUES (849,'1708_1-2cr_f.jpg','image/jpeg',56484,'2010-12-06 15:32:49',791,0,'2010-12-06 15:32:50','2010-12-06 15:32:50');
INSERT INTO `product_images` VALUES (850,'1835_1-3f.jpg','image/jpeg',54722,'2010-12-06 15:34:47',783,1,'2010-12-06 15:34:51','2010-12-06 15:34:51');
INSERT INTO `product_images` VALUES (851,'1835_1-3f_r.jpg','image/jpeg',63879,'2010-12-06 15:34:48',783,0,'2010-12-06 15:34:51','2010-12-06 15:34:51');
INSERT INTO `product_images` VALUES (852,'1835_1-3f_f.jpg','image/jpeg',50800,'2010-12-06 15:34:49',783,0,'2010-12-06 15:34:51','2010-12-06 15:34:51');
INSERT INTO `product_images` VALUES (853,'gr_brit_1853_1p_Nau_obv.jpg','image/jpeg',57621,'2010-12-06 15:35:51',786,1,'2010-12-06 15:35:55','2010-12-06 15:35:55');
INSERT INTO `product_images` VALUES (854,'gr_brit_1853_1p_Nau_rev.jpg','image/jpeg',63544,'2010-12-06 15:35:52',786,0,'2010-12-06 15:35:55','2010-12-06 15:35:55');
INSERT INTO `product_images` VALUES (855,'gr_brit_1853_1p_Nau.jpg','image/jpeg',63974,'2010-12-06 15:35:53',786,0,'2010-12-06 15:35:55','2010-12-06 15:35:55');
INSERT INTO `product_images` VALUES (856,'1855_1p.jpg','image/jpeg',65322,'2010-12-06 15:36:41',828,1,'2010-12-06 15:36:45','2010-12-06 15:36:45');
INSERT INTO `product_images` VALUES (857,'1855_1p_r.jpg','image/jpeg',68687,'2010-12-06 15:36:42',828,0,'2010-12-06 15:36:45','2010-12-06 15:36:45');
INSERT INTO `product_images` VALUES (858,'1855_1p_f.jpg','image/jpeg',64487,'2010-12-06 15:36:44',828,0,'2010-12-06 15:36:45','2010-12-06 15:36:45');
INSERT INTO `product_images` VALUES (859,'tipuobv.jpg','image/jpeg',51730,'2010-12-06 15:39:27',488,1,'2010-12-06 15:39:29','2010-12-06 15:39:29');
INSERT INTO `product_images` VALUES (860,'tipurev.jpg','image/jpeg',49071,'2010-12-06 15:39:28',488,0,'2010-12-06 15:39:30','2010-12-06 15:39:30');
INSERT INTO `product_images` VALUES (861,'KIDARITES_OBV.jpg','image/jpeg',117568,'2010-12-06 15:45:02',1381,1,'2010-12-06 15:45:06','2010-12-06 15:45:06');
INSERT INTO `product_images` VALUES (862,'KIDARITES_REV.jpg','image/jpeg',109145,'2010-12-06 15:45:04',1381,0,'2010-12-06 15:45:06','2010-12-06 15:45:06');
INSERT INTO `product_images` VALUES (863,'KIDARITES.jpg','image/jpeg',146313,'2010-12-06 15:45:05',1381,0,'2010-12-06 15:45:06','2010-12-06 15:45:06');
INSERT INTO `product_images` VALUES (864,'iran_dinar_N64_obv.jpg','image/jpeg',80373,'2010-12-06 15:46:52',974,1,'2010-12-06 15:46:56','2010-12-06 15:46:56');
INSERT INTO `product_images` VALUES (865,'iran_dinar_N64_rev.jpg','image/jpeg',90178,'2010-12-06 15:46:53',974,0,'2010-12-06 15:46:56','2010-12-06 15:46:56');
INSERT INTO `product_images` VALUES (866,'iran_dinar_N64.jpg','image/jpeg',64974,'2010-12-06 15:46:54',974,0,'2010-12-06 15:46:56','2010-12-06 15:46:56');
INSERT INTO `product_images` VALUES (867,'1914-24_5000D_OBV.jpg','image/jpeg',52184,'2010-12-06 15:47:54',747,1,'2010-12-06 15:47:58','2010-12-06 15:47:58');
INSERT INTO `product_images` VALUES (868,'1914-24_5000D_REV.jpg','image/jpeg',71516,'2010-12-06 15:47:55',747,0,'2010-12-06 15:47:58','2010-12-06 15:47:58');
INSERT INTO `product_images` VALUES (869,'1914-24_5000D.jpg','image/jpeg',73258,'2010-12-06 15:47:56',747,0,'2010-12-06 15:47:58','2010-12-06 15:47:58');
INSERT INTO `product_images` VALUES (870,'1915_2000D_ICG58_OBV.jpg','image/jpeg',58355,'2010-12-06 15:48:50',743,1,'2010-12-06 15:48:53','2010-12-06 15:48:53');
INSERT INTO `product_images` VALUES (871,'1915_2000D_ICG58_REV.jpg','image/jpeg',72919,'2010-12-06 15:48:51',743,0,'2010-12-06 15:48:53','2010-12-06 15:48:53');
INSERT INTO `product_images` VALUES (872,'1915_2000D_ICG58.jpg','image/jpeg',67834,'2010-12-06 15:48:52',743,0,'2010-12-06 15:48:53','2010-12-06 15:48:53');
INSERT INTO `product_images` VALUES (873,'1915_toman_ICG58_obv.jpg','image/jpeg',64999,'2010-12-06 15:50:00',724,1,'2010-12-06 15:50:05','2010-12-06 15:50:05');
INSERT INTO `product_images` VALUES (874,'1915_toman_ICG58_rev.jpg','image/jpeg',75217,'2010-12-06 15:50:02',724,0,'2010-12-06 15:50:05','2010-12-06 15:50:05');
INSERT INTO `product_images` VALUES (875,'1915_toman_ICG58.jpg','image/jpeg',67903,'2010-12-06 15:50:04',724,0,'2010-12-06 15:50:05','2010-12-06 15:50:05');
INSERT INTO `product_images` VALUES (876,'1918_5000D_OBV.jpg','image/jpeg',60285,'2010-12-06 15:51:03',725,1,'2010-12-06 15:51:07','2010-12-06 15:51:07');
INSERT INTO `product_images` VALUES (877,'1918_5000D_REV.jpg','image/jpeg',69258,'2010-12-06 15:51:04',725,0,'2010-12-06 15:51:07','2010-12-06 15:51:07');
INSERT INTO `product_images` VALUES (878,'1918_5000D.jpg','image/jpeg',71072,'2010-12-06 15:51:05',725,0,'2010-12-06 15:51:07','2010-12-06 15:51:07');
INSERT INTO `product_images` VALUES (879,'1944_1-2P_OBV.jpg','image/jpeg',76401,'2010-12-06 15:51:57',721,1,'2010-12-06 15:52:01','2010-12-06 15:52:01');
INSERT INTO `product_images` VALUES (880,'1944_1-2P_REV.jpg','image/jpeg',72919,'2010-12-06 15:51:58',721,0,'2010-12-06 15:52:01','2010-12-06 15:52:01');
INSERT INTO `product_images` VALUES (881,'1944_1-2P.jpg','image/jpeg',75172,'2010-12-06 15:51:59',721,0,'2010-12-06 15:52:01','2010-12-06 15:52:01');
INSERT INTO `product_images` VALUES (882,'1950_1P_A62_OBV.jpg','image/jpeg',76590,'2010-12-06 15:52:52',741,1,'2010-12-06 15:52:56','2010-12-06 15:52:56');
INSERT INTO `product_images` VALUES (883,'1950_1P_A62_REV.jpg','image/jpeg',75816,'2010-12-06 15:52:54',741,0,'2010-12-06 15:52:56','2010-12-06 15:52:56');
INSERT INTO `product_images` VALUES (884,'1950_1P_A62.jpg','image/jpeg',61708,'2010-12-06 15:52:55',741,0,'2010-12-06 15:52:56','2010-12-06 15:52:56');
INSERT INTO `product_images` VALUES (885,'1955_1-2P_ICG61_REV.jpg','image/jpeg',72322,'2010-12-06 15:54:42',749,1,'2010-12-06 15:54:46','2010-12-06 15:54:46');
INSERT INTO `product_images` VALUES (886,'1955_1-2P_ICG61-1.jpg','image/jpeg',70152,'2010-12-06 15:54:43',749,0,'2010-12-06 15:54:46','2010-12-06 15:54:46');
INSERT INTO `product_images` VALUES (887,'1955_1-2P_ICG61-1.jpg','image/jpeg',70152,'2010-12-06 15:54:45',749,0,'2010-12-06 15:54:46','2010-12-06 15:54:46');
INSERT INTO `product_images` VALUES (888,'IRAN_1-4P_63_OBV.jpg','image/jpeg',161073,'2010-12-06 16:08:45',1410,1,'2010-12-06 16:08:49','2010-12-06 16:08:49');
INSERT INTO `product_images` VALUES (889,'IRAN_1-4P_63_REV.jpg','image/jpeg',178852,'2010-12-06 16:08:46',1410,0,'2010-12-06 16:08:49','2010-12-06 16:08:49');
INSERT INTO `product_images` VALUES (890,'IRAN_1-4P_63.jpg','image/jpeg',158975,'2010-12-06 16:08:47',1410,0,'2010-12-06 16:08:49','2010-12-06 16:08:49');
INSERT INTO `product_images` VALUES (891,'1979_1-2P_ICG64_OBV.jpg','image/jpeg',71914,'2010-12-06 16:10:27',751,1,'2010-12-06 16:10:31','2010-12-06 16:10:31');
INSERT INTO `product_images` VALUES (892,'1979_1-2P_ICG64_REV.jpg','image/jpeg',80080,'2010-12-06 16:10:29',751,0,'2010-12-06 16:10:31','2010-12-06 16:10:31');
INSERT INTO `product_images` VALUES (893,'1979_1-2P_ICG64.jpg','image/jpeg',70054,'2010-12-06 16:10:30',751,0,'2010-12-06 16:10:31','2010-12-06 16:10:31');
INSERT INTO `product_images` VALUES (894,'1979_PAHIAVI_ICG64_OBV.jpg','image/jpeg',84926,'2010-12-06 16:12:31',750,1,'2010-12-06 16:12:36','2010-12-06 16:12:36');
INSERT INTO `product_images` VALUES (895,'1979_PAHIAVI_ICG64_REV.jpg','image/jpeg',75988,'2010-12-06 16:12:33',750,0,'2010-12-06 16:12:36','2010-12-06 16:12:36');
INSERT INTO `product_images` VALUES (896,'1979_PAHIAVI_ICG64.jpg','image/jpeg',76228,'2010-12-06 16:12:35',750,0,'2010-12-06 16:12:36','2010-12-06 16:12:36');
INSERT INTO `product_images` VALUES (897,'1979_1-4P_ICG64_OBV.jpg','image/jpeg',76092,'2010-12-06 16:14:00',720,1,'2010-12-06 16:14:05','2010-12-06 16:14:05');
INSERT INTO `product_images` VALUES (898,'1979_1-4P_ICG64_REV.jpg','image/jpeg',85740,'2010-12-06 16:14:02',720,0,'2010-12-06 16:14:05','2010-12-06 16:14:05');
INSERT INTO `product_images` VALUES (899,'1979_1-4P_ICG64.jpg','image/jpeg',67604,'2010-12-06 16:14:03',720,0,'2010-12-06 16:14:05','2010-12-06 16:14:05');
INSERT INTO `product_images` VALUES (900,'1991_1-4A_ICG60_OBV.jpg','image/jpeg',74478,'2010-12-06 16:15:02',727,1,'2010-12-06 16:15:07','2010-12-06 16:15:07');
INSERT INTO `product_images` VALUES (901,'1991_1-4A_ICG60_REV.jpg','image/jpeg',83583,'2010-12-06 16:15:04',727,0,'2010-12-06 16:15:07','2010-12-06 16:15:07');
INSERT INTO `product_images` VALUES (902,'1991_1-4A_ICG60.jpg','image/jpeg',76501,'2010-12-06 16:15:05',727,0,'2010-12-06 16:15:07','2010-12-06 16:15:07');
INSERT INTO `product_images` VALUES (903,'iran_real_N63_obv.jpg','image/jpeg',80713,'2010-12-06 16:16:26',956,1,'2010-12-06 16:16:29','2010-12-06 16:16:29');
INSERT INTO `product_images` VALUES (904,'iran_real_N63_rev.jpg','image/jpeg',75076,'2010-12-06 16:16:27',956,0,'2010-12-06 16:16:29','2010-12-06 16:16:29');
INSERT INTO `product_images` VALUES (905,'iran_real_N63.jpg','image/jpeg',64436,'2010-12-06 16:16:28',956,0,'2010-12-06 16:16:30','2010-12-06 16:16:30');
INSERT INTO `product_images` VALUES (906,'iran_1-4r_N62_obv.jpg','image/jpeg',68878,'2010-12-06 16:17:38',955,1,'2010-12-06 16:17:42','2010-12-06 16:17:42');
INSERT INTO `product_images` VALUES (907,'iran_1-4r_N62_rev.jpg','image/jpeg',73910,'2010-12-06 16:17:39',955,0,'2010-12-06 16:17:42','2010-12-06 16:17:42');
INSERT INTO `product_images` VALUES (908,'iran_1-4r_N62.jpg','image/jpeg',60024,'2010-12-06 16:17:40',955,0,'2010-12-06 16:17:42','2010-12-06 16:17:42');
INSERT INTO `product_images` VALUES (909,'ireland_norse.jpg','image/jpeg',68547,'2010-12-06 16:22:14',833,1,'2010-12-06 16:22:17','2010-12-06 16:22:17');
INSERT INTO `product_images` VALUES (910,'ireland_norse_r.jpg','image/jpeg',71818,'2010-12-06 16:22:15',833,0,'2010-12-06 16:22:17','2010-12-06 16:22:17');
INSERT INTO `product_images` VALUES (911,'ireland_norse_f.jpg','image/jpeg',58449,'2010-12-06 16:22:16',833,0,'2010-12-06 16:22:17','2010-12-06 16:22:17');
INSERT INTO `product_images` VALUES (912,'ireland_6p.jpg','image/jpeg',68751,'2010-12-06 16:23:09',834,1,'2010-12-06 16:23:13','2010-12-06 16:23:13');
INSERT INTO `product_images` VALUES (913,'ireland_6p_r.jpg','image/jpeg',75172,'2010-12-06 16:23:11',834,0,'2010-12-06 16:23:13','2010-12-06 16:23:13');
INSERT INTO `product_images` VALUES (914,'ireland_6p_f.jpg','image/jpeg',55117,'2010-12-06 16:23:12',834,0,'2010-12-06 16:23:13','2010-12-06 16:23:13');
INSERT INTO `product_images` VALUES (915,'ireland_1-2p.jpg','image/jpeg',62377,'2010-12-06 16:24:05',841,1,'2010-12-06 16:24:09','2010-12-06 16:24:09');
INSERT INTO `product_images` VALUES (916,'ireland_1-2p_r.jpg','image/jpeg',59155,'2010-12-06 16:24:06',841,0,'2010-12-06 16:24:09','2010-12-06 16:24:09');
INSERT INTO `product_images` VALUES (917,'ireland_1-2p_f.jpg','image/jpeg',56150,'2010-12-06 16:24:08',841,0,'2010-12-06 16:24:09','2010-12-06 16:24:09');
INSERT INTO `product_images` VALUES (918,'1882_2L.jpg','image/jpeg',58788,'2010-12-06 16:36:13',792,1,'2010-12-06 16:36:17','2010-12-06 16:36:17');
INSERT INTO `product_images` VALUES (919,'1882_2L_r.jpg','image/jpeg',58352,'2010-12-06 16:36:15',792,0,'2010-12-06 16:36:17','2010-12-06 16:36:17');
INSERT INTO `product_images` VALUES (920,'1882_2L_f.jpg','image/jpeg',51862,'2010-12-06 16:36:16',792,0,'2010-12-06 16:36:17','2010-12-06 16:36:17');
INSERT INTO `product_images` VALUES (921,'italy_1c.jpg','image/jpeg',50897,'2010-12-06 16:37:17',845,1,'2010-12-06 16:37:20','2010-12-06 16:37:20');
INSERT INTO `product_images` VALUES (922,'italy_1c_r.jpg','image/jpeg',50594,'2010-12-06 16:37:18',845,0,'2010-12-06 16:37:20','2010-12-06 16:37:20');
INSERT INTO `product_images` VALUES (923,'italy_1c_f.jpg','image/jpeg',36124,'2010-12-06 16:37:19',845,0,'2010-12-06 16:37:20','2010-12-06 16:37:20');
INSERT INTO `product_images` VALUES (924,'1922obv.jpg','image/jpeg',45104,'2010-12-06 16:38:41',572,1,'2010-12-06 16:38:43','2010-12-06 16:38:43');
INSERT INTO `product_images` VALUES (925,'1922rev.jpg','image/jpeg',51746,'2010-12-06 16:38:42',572,0,'2010-12-06 16:38:43','2010-12-06 16:38:43');
INSERT INTO `product_images` VALUES (926,'1924_lira.jpg','image/jpeg',61101,'2010-12-06 16:42:54',195,1,'2010-12-06 16:42:58','2010-12-06 16:42:58');
INSERT INTO `product_images` VALUES (927,'1924_lira_r.jpg','image/jpeg',57921,'2010-12-06 16:42:56',195,0,'2010-12-06 16:42:58','2010-12-06 16:42:58');
INSERT INTO `product_images` VALUES (928,'1924_lira_f.jpg','image/jpeg',45266,'2010-12-06 16:42:57',195,0,'2010-12-06 16:42:58','2010-12-06 16:42:58');
INSERT INTO `product_images` VALUES (929,'ITALY_LIRA_OBV.jpg','image/jpeg',138344,'2010-12-06 16:44:03',1414,1,'2010-12-06 16:44:06','2010-12-06 16:44:06');
INSERT INTO `product_images` VALUES (930,'ITALY_LIRA_REV.jpg','image/jpeg',144193,'2010-12-06 16:44:04',1414,0,'2010-12-06 16:44:06','2010-12-06 16:44:06');
INSERT INTO `product_images` VALUES (931,'ITALY_LIRA.jpg','image/jpeg',167848,'2010-12-06 16:44:05',1414,0,'2010-12-06 16:44:06','2010-12-06 16:44:06');
INSERT INTO `product_images` VALUES (932,'gold_florin_obv.jpg','image/jpeg',115960,'2010-12-06 16:45:40',544,1,'2010-12-06 16:45:44','2010-12-06 16:45:44');
INSERT INTO `product_images` VALUES (933,'gold_florin_rev.jpg','image/jpeg',114367,'2010-12-06 16:45:42',544,0,'2010-12-06 16:45:45','2010-12-06 16:45:45');
INSERT INTO `product_images` VALUES (934,'gold_florin.jpg','image/jpeg',64744,'2010-12-06 16:45:43',544,0,'2010-12-06 16:45:45','2010-12-06 16:45:45');
INSERT INTO `product_images` VALUES (935,'1667_ITALY_N64_OBV.jpg','image/jpeg',67081,'2010-12-06 16:46:58',638,1,'2010-12-06 16:47:02','2010-12-06 16:47:02');
INSERT INTO `product_images` VALUES (936,'1667_ITALY_N64_REV.jpg','image/jpeg',70545,'2010-12-06 16:47:00',638,0,'2010-12-06 16:47:02','2010-12-06 16:47:02');
INSERT INTO `product_images` VALUES (937,'1667_ITALY_N64.jpg','image/jpeg',59485,'2010-12-06 16:47:01',638,0,'2010-12-06 16:47:02','2010-12-06 16:47:02');
INSERT INTO `product_images` VALUES (941,'1764_ITALY_1ZEC_OBV.jpg','image/jpeg',73568,'2010-12-06 16:49:20',1460,1,'2010-12-06 16:49:26','2010-12-06 16:49:26');
INSERT INTO `product_images` VALUES (942,'1764_ITALY_1ZEC_REV.jpg','image/jpeg',69596,'2010-12-06 16:49:22',1460,0,'2010-12-06 16:49:26','2010-12-06 16:49:26');
INSERT INTO `product_images` VALUES (943,'1764_ITALY_1ZEC.jpg','image/jpeg',44189,'2010-12-06 16:49:23',1460,0,'2010-12-06 16:49:26','2010-12-06 16:49:26');
INSERT INTO `product_images` VALUES (944,'1824_1q.jpg','image/jpeg',49652,'2010-12-06 16:50:30',793,1,'2010-12-06 16:50:34','2010-12-06 16:50:34');
INSERT INTO `product_images` VALUES (945,'1824_1q_r.jpg','image/jpeg',50647,'2010-12-06 16:50:32',793,0,'2010-12-06 16:50:34','2010-12-06 16:50:34');
INSERT INTO `product_images` VALUES (946,'1824_1q_f.jpg','image/jpeg',37790,'2010-12-06 16:50:33',793,0,'2010-12-06 16:50:35','2010-12-06 16:50:35');
INSERT INTO `product_images` VALUES (947,'galleyhalfpenceobv.jpg','image/jpeg',30271,'2010-12-06 16:52:07',415,1,'2010-12-06 16:52:12','2010-12-06 16:52:12');
INSERT INTO `product_images` VALUES (948,'galleyhalfpencerev.jpg','image/jpeg',30669,'2010-12-06 16:52:08',415,0,'2010-12-06 16:52:12','2010-12-06 16:52:12');
INSERT INTO `product_images` VALUES (949,'GalleyHalfpence.jpg','image/jpeg',70977,'2010-12-06 16:52:09',415,0,'2010-12-06 16:52:12','2010-12-06 16:52:12');
INSERT INTO `product_images` VALUES (950,'1871s5obv.jpg','image/jpeg',30066,'2010-12-06 16:54:06',650,1,'2010-12-06 16:54:09','2010-12-06 16:54:09');
INSERT INTO `product_images` VALUES (951,'1871s5rev.jpg','image/jpeg',28135,'2010-12-06 16:54:07',650,0,'2010-12-06 16:54:09','2010-12-06 16:54:09');
INSERT INTO `product_images` VALUES (952,'1873sobv.jpg','image/jpeg',40386,'2010-12-06 16:54:52',651,1,'2010-12-06 16:54:55','2010-12-06 16:54:55');
INSERT INTO `product_images` VALUES (953,'1873srev.jpg','image/jpeg',38842,'2010-12-06 16:54:54',651,0,'2010-12-06 16:54:55','2010-12-06 16:54:55');
INSERT INTO `product_images` VALUES (954,'1873s5obv.jpg','image/jpeg',30384,'2010-12-06 16:55:53',652,1,'2010-12-06 16:55:58','2010-12-06 16:55:58');
INSERT INTO `product_images` VALUES (955,'1873s5rev.jpg','image/jpeg',28888,'2010-12-06 16:55:55',652,0,'2010-12-06 16:55:58','2010-12-06 16:55:58');
INSERT INTO `product_images` VALUES (956,'M25yenobv.jpg','image/jpeg',109595,'2010-12-06 16:56:48',644,1,'2010-12-06 16:56:51','2010-12-06 16:56:51');
INSERT INTO `product_images` VALUES (957,'M25yenrev.jpg','image/jpeg',90947,'2010-12-06 16:56:49',644,0,'2010-12-06 16:56:51','2010-12-06 16:56:51');
INSERT INTO `product_images` VALUES (958,'jap_2-shu_xf_obv.jpg','image/jpeg',58590,'2010-12-06 16:57:43',1146,1,'2010-12-06 16:57:47','2010-12-06 16:57:47');
INSERT INTO `product_images` VALUES (959,'jap_2-shu_xf_rev.jpg','image/jpeg',54025,'2010-12-06 16:57:44',1146,0,'2010-12-06 16:57:47','2010-12-06 16:57:47');
INSERT INTO `product_images` VALUES (960,'jap_2-shu_xf.jpg','image/jpeg',57143,'2010-12-06 16:57:46',1146,0,'2010-12-06 16:57:47','2010-12-06 16:57:47');
INSERT INTO `product_images` VALUES (961,'1862_liberia.jpg','image/jpeg',45781,'2010-12-06 16:58:53',846,1,'2010-12-06 16:58:56','2010-12-06 16:58:56');
INSERT INTO `product_images` VALUES (962,'1862_liberia_r.jpg','image/jpeg',45746,'2010-12-06 16:58:54',846,0,'2010-12-06 16:58:56','2010-12-06 16:58:56');
INSERT INTO `product_images` VALUES (963,'1862_liberia_f.jpg','image/jpeg',42624,'2010-12-06 16:58:55',846,0,'2010-12-06 16:58:56','2010-12-06 16:58:56');
INSERT INTO `product_images` VALUES (964,'1769_MEX_4R_OBV.jpg','image/jpeg',64959,'2010-12-06 17:01:02',1463,1,'2010-12-06 17:01:06','2010-12-06 17:01:06');
INSERT INTO `product_images` VALUES (965,'1769_MEX_4R_REV.jpg','image/jpeg',67318,'2010-12-06 17:01:03',1463,0,'2010-12-06 17:01:06','2010-12-06 17:01:06');
INSERT INTO `product_images` VALUES (966,'1769_MEX_4R.jpg','image/jpeg',41527,'2010-12-06 17:01:05',1463,0,'2010-12-06 17:01:06','2010-12-06 17:01:06');
INSERT INTO `product_images` VALUES (967,'1813_mex_1-2r.jpg','image/jpeg',54665,'2010-12-06 17:03:01',795,1,'2010-12-06 17:03:05','2010-12-06 17:03:05');
INSERT INTO `product_images` VALUES (968,'1813_mex_1-2r_r.jpg','image/jpeg',56308,'2010-12-06 17:03:02',795,0,'2010-12-06 17:03:05','2010-12-06 17:03:05');
INSERT INTO `product_images` VALUES (969,'1813_mex_1-2r_f.jpg','image/jpeg',37662,'2010-12-06 17:03:04',795,0,'2010-12-06 17:03:05','2010-12-06 17:03:05');
INSERT INTO `product_images` VALUES (970,'1863_mex_4r.jpg','image/jpeg',61617,'2010-12-06 17:03:56',848,1,'2010-12-06 17:04:00','2010-12-06 17:04:00');
INSERT INTO `product_images` VALUES (971,'1863_mex_4r_r.jpg','image/jpeg',61620,'2010-12-06 17:03:57',848,0,'2010-12-06 17:04:00','2010-12-06 17:04:00');
INSERT INTO `product_images` VALUES (972,'1863_mex_4r_f.jpg','image/jpeg',44939,'2010-12-06 17:03:59',848,0,'2010-12-06 17:04:00','2010-12-06 17:04:00');
INSERT INTO `product_images` VALUES (973,'1900_mex_20c.jpg','image/jpeg',50454,'2010-12-06 17:04:48',514,1,'2010-12-06 17:04:52','2010-12-06 17:04:52');
INSERT INTO `product_images` VALUES (974,'1900_mex_20c_r.jpg','image/jpeg',50337,'2010-12-06 17:04:49',514,0,'2010-12-06 17:04:52','2010-12-06 17:04:52');
INSERT INTO `product_images` VALUES (975,'1900_mex_20c_f.jpg','image/jpeg',39921,'2010-12-06 17:04:51',514,0,'2010-12-06 17:04:52','2010-12-06 17:04:52');
INSERT INTO `product_images` VALUES (976,'1900_MEX_1P_OBV.jpg','image/jpeg',66494,'2010-12-06 17:05:50',1462,1,'2010-12-06 17:05:54','2010-12-06 17:05:54');
INSERT INTO `product_images` VALUES (977,'1900_MEX_1P_REV.jpg','image/jpeg',55027,'2010-12-06 17:05:51',1462,0,'2010-12-06 17:05:54','2010-12-06 17:05:54');
INSERT INTO `product_images` VALUES (978,'1900_MEX_1P.jpg','image/jpeg',40359,'2010-12-06 17:05:53',1462,0,'2010-12-06 17:05:54','2010-12-06 17:05:54');
INSERT INTO `product_images` VALUES (982,'1905_mex_5c.jpg','image/jpeg',65434,'2010-12-06 17:07:53',801,1,'2010-12-06 17:07:58','2010-12-06 17:07:58');
INSERT INTO `product_images` VALUES (983,'1905_mex_5c_r.jpg','image/jpeg',54737,'2010-12-06 17:07:55',801,0,'2010-12-06 17:07:58','2010-12-06 17:07:58');
INSERT INTO `product_images` VALUES (984,'1905_mex_5c_f.jpg','image/jpeg',40783,'2010-12-06 17:07:56',801,0,'2010-12-06 17:07:58','2010-12-06 17:07:58');
INSERT INTO `product_images` VALUES (985,'1918_mex_5c.jpg','image/jpeg',51370,'2010-12-06 17:08:50',802,1,'2010-12-06 17:08:55','2010-12-06 17:08:55');
INSERT INTO `product_images` VALUES (986,'1918_mex_5c_r.jpg','image/jpeg',50369,'2010-12-06 17:08:52',802,0,'2010-12-06 17:08:55','2010-12-06 17:08:55');
INSERT INTO `product_images` VALUES (987,'1918_mex_5c_f.jpg','image/jpeg',39884,'2010-12-06 17:08:53',802,0,'2010-12-06 17:08:55','2010-12-06 17:08:55');
INSERT INTO `product_images` VALUES (991,'goobv.jpg','image/jpeg',86501,'2010-12-06 17:11:08',511,1,'2010-12-06 17:11:11','2010-12-06 17:11:11');
INSERT INTO `product_images` VALUES (992,'gorev.jpg','image/jpeg',60258,'2010-12-06 17:11:09',511,0,'2010-12-06 17:11:11','2010-12-06 17:11:11');
INSERT INTO `product_images` VALUES (993,'1944d_cur_2.5g_N64_obv.jpg','image/jpeg',75646,'2010-12-06 17:12:01',1121,1,'2010-12-06 17:12:06','2010-12-06 17:12:06');
INSERT INTO `product_images` VALUES (994,'1944d_cur_2.5g_N64_rev.jpg','image/jpeg',71223,'2010-12-06 17:12:03',1121,0,'2010-12-06 17:12:06','2010-12-06 17:12:06');
INSERT INTO `product_images` VALUES (995,'1944d_cur_2.5g_N64.jpg','image/jpeg',73776,'2010-12-06 17:12:04',1121,0,'2010-12-06 17:12:06','2010-12-06 17:12:06');
INSERT INTO `product_images` VALUES (996,'turkey_zeri_N63_obv.jpg','image/jpeg',86168,'2010-12-06 17:13:45',281,1,'2010-12-06 17:13:49','2010-12-06 17:13:49');
INSERT INTO `product_images` VALUES (997,'turkey_zeri_N63_rev.jpg','image/jpeg',83819,'2010-12-06 17:13:46',281,0,'2010-12-06 17:13:49','2010-12-06 17:13:49');
INSERT INTO `product_images` VALUES (998,'turkey_zeri_N63.jpg','image/jpeg',67058,'2010-12-06 17:13:48',281,0,'2010-12-06 17:13:49','2010-12-06 17:13:49');
INSERT INTO `product_images` VALUES (999,'1910_peru_5s.jpg','image/jpeg',64931,'2010-12-06 17:15:04',517,1,'2010-12-06 17:15:08','2010-12-06 17:15:08');
INSERT INTO `product_images` VALUES (1000,'1910_peru_5s_r.jpg','image/jpeg',62955,'2010-12-06 17:15:06',517,0,'2010-12-06 17:15:08','2010-12-06 17:15:08');
INSERT INTO `product_images` VALUES (1001,'1910_peru_5s_f.jpg','image/jpeg',36921,'2010-12-06 17:15:07',517,0,'2010-12-06 17:15:08','2010-12-06 17:15:08');
INSERT INTO `product_images` VALUES (1002,'1969_peru.jpg','image/jpeg',78648,'2010-12-06 17:16:01',111,1,'2010-12-06 17:16:05','2010-12-06 17:16:05');
INSERT INTO `product_images` VALUES (1003,'1969_peru_r.jpg','image/jpeg',69999,'2010-12-06 17:16:02',111,0,'2010-12-06 17:16:05','2010-12-06 17:16:05');
INSERT INTO `product_images` VALUES (1004,'1969_peru_f.jpg','image/jpeg',49450,'2010-12-06 17:16:04',111,0,'2010-12-06 17:16:05','2010-12-06 17:16:05');
INSERT INTO `product_images` VALUES (1005,'1898_port_100r-1.jpg','image/jpeg',57967,'2010-12-06 17:18:32',37,1,'2010-12-06 17:18:37','2010-12-06 17:18:37');
INSERT INTO `product_images` VALUES (1006,'1898_port_100r_r.jpg','image/jpeg',62897,'2010-12-06 17:18:34',37,0,'2010-12-06 17:18:37','2010-12-06 17:18:37');
INSERT INTO `product_images` VALUES (1007,'1898_port_100r_f.jpg','image/jpeg',38149,'2010-12-06 17:18:36',37,0,'2010-12-06 17:18:37','2010-12-06 17:18:37');
INSERT INTO `product_images` VALUES (1008,'1899_port_1000r.jpg','image/jpeg',57606,'2010-12-06 17:19:52',9,1,'2010-12-06 17:19:57','2010-12-06 17:19:57');
INSERT INTO `product_images` VALUES (1009,'1899_port_1000r_r.jpg','image/jpeg',62347,'2010-12-06 17:19:53',9,0,'2010-12-06 17:19:57','2010-12-06 17:19:57');
INSERT INTO `product_images` VALUES (1010,'1899_port_1000r_f.jpg','image/jpeg',48297,'2010-12-06 17:19:55',9,0,'2010-12-06 17:19:57','2010-12-06 17:19:57');
INSERT INTO `product_images` VALUES (1014,'1960_port_10e_63.jpg','image/jpeg',66025,'2010-12-06 17:22:09',164,1,'2010-12-06 17:22:18','2010-12-06 17:22:18');
INSERT INTO `product_images` VALUES (1015,'1960_port_10e_63_r.jpg','image/jpeg',63792,'2010-12-06 17:22:10',164,0,'2010-12-06 17:22:18','2010-12-06 17:22:18');
INSERT INTO `product_images` VALUES (1016,'1960_port_10e_63_f.jpg','image/jpeg',49269,'2010-12-06 17:22:16',164,0,'2010-12-06 17:22:18','2010-12-06 17:22:18');
INSERT INTO `product_images` VALUES (1017,'1960_port_5e.jpg','image/jpeg',60475,'2010-12-06 17:23:07',162,1,'2010-12-06 17:23:17','2010-12-06 17:23:17');
INSERT INTO `product_images` VALUES (1018,'1960_port_5e_r.jpg','image/jpeg',62419,'2010-12-06 17:23:09',162,0,'2010-12-06 17:23:17','2010-12-06 17:23:17');
INSERT INTO `product_images` VALUES (1019,'1960_port_5e_f.jpg','image/jpeg',44383,'2010-12-06 17:23:10',162,0,'2010-12-06 17:23:17','2010-12-06 17:23:17');
INSERT INTO `product_images` VALUES (1020,'1952_1-4r.jpg','image/jpeg',72719,'2010-12-06 17:24:23',832,1,'2010-12-06 17:24:27','2010-12-06 17:24:27');
INSERT INTO `product_images` VALUES (1021,'1952_1-4r_r.jpg','image/jpeg',63948,'2010-12-06 17:24:24',832,0,'2010-12-06 17:24:27','2010-12-06 17:24:27');
INSERT INTO `product_images` VALUES (1022,'1952_1-4r_f.jpg','image/jpeg',55949,'2010-12-06 17:24:25',832,0,'2010-12-06 17:24:27','2010-12-06 17:24:27');
INSERT INTO `product_images` VALUES (1023,'1948_stthom_esc.jpg','image/jpeg',57162,'2010-12-06 17:25:46',42,1,'2010-12-06 17:25:50','2010-12-06 17:25:50');
INSERT INTO `product_images` VALUES (1024,'1948_stthom_esc_r.jpg','image/jpeg',53057,'2010-12-06 17:25:48',42,0,'2010-12-06 17:25:50','2010-12-06 17:25:50');
INSERT INTO `product_images` VALUES (1025,'1948_stthom_esc_f.jpg','image/jpeg',44517,'2010-12-06 17:25:49',42,0,'2010-12-06 17:25:50','2010-12-06 17:25:50');
INSERT INTO `product_images` VALUES (1026,'1896_PR_40C_XF-40_OBV.jpg','image/jpeg',59728,'2010-12-06 17:27:27',1464,1,'2010-12-06 17:27:30','2010-12-06 17:27:30');
INSERT INTO `product_images` VALUES (1027,'1896_PR_40C_XF-40_REV.jpg','image/jpeg',66616,'2010-12-06 17:27:28',1464,0,'2010-12-06 17:27:30','2010-12-06 17:27:30');
INSERT INTO `product_images` VALUES (1028,'1896_PR_40C_XF-40.jpg','image/jpeg',40971,'2010-12-06 17:27:29',1464,0,'2010-12-06 17:27:30','2010-12-06 17:27:30');
INSERT INTO `product_images` VALUES (1029,'1896_PR_40C_OBV.jpg','image/jpeg',56554,'2010-12-06 17:28:22',191,1,'2010-12-06 17:28:25','2010-12-06 17:28:25');
INSERT INTO `product_images` VALUES (1030,'1896_PR_40C_REV.jpg','image/jpeg',57181,'2010-12-06 17:28:23',191,0,'2010-12-06 17:28:25','2010-12-06 17:28:25');
INSERT INTO `product_images` VALUES (1031,'1896_PR_40C.jpg','image/jpeg',41365,'2010-12-06 17:28:24',191,0,'2010-12-06 17:28:25','2010-12-06 17:28:25');
INSERT INTO `product_images` VALUES (1032,'arab_1-2_N58_obv.jpg','image/jpeg',67939,'2010-12-06 17:30:47',965,1,'2010-12-06 17:30:51','2010-12-06 17:30:51');
INSERT INTO `product_images` VALUES (1033,'arab_1-2_N58_rev.jpg','image/jpeg',62073,'2010-12-06 17:30:49',965,0,'2010-12-06 17:30:51','2010-12-06 17:30:51');
INSERT INTO `product_images` VALUES (1034,'arab_1-2_N58.jpg','image/jpeg',55365,'2010-12-06 17:30:50',965,0,'2010-12-06 17:30:51','2010-12-06 17:30:51');
INSERT INTO `product_images` VALUES (1035,'girshqobv.jpg','image/jpeg',34135,'2010-12-06 17:31:35',290,1,'2010-12-06 17:31:38','2010-12-06 17:31:38');
INSERT INTO `product_images` VALUES (1036,'girshqrev.jpg','image/jpeg',38011,'2010-12-06 17:31:37',290,0,'2010-12-06 17:31:38','2010-12-06 17:31:38');
INSERT INTO `product_images` VALUES (1037,'1878_spain_5p.jpg','image/jpeg',59331,'2010-12-06 17:33:54',197,1,'2010-12-06 17:33:58','2010-12-06 17:33:58');
INSERT INTO `product_images` VALUES (1038,'1878_spain_5p_r.jpg','image/jpeg',61553,'2010-12-06 17:33:55',197,0,'2010-12-06 17:33:58','2010-12-06 17:33:58');
INSERT INTO `product_images` VALUES (1039,'1878_spain_5p_f.jpg','image/jpeg',48634,'2010-12-06 17:33:57',197,0,'2010-12-06 17:33:58','2010-12-06 17:33:58');
INSERT INTO `product_images` VALUES (1040,'89_spain_2p.jpg','image/jpeg',54093,'2010-12-06 17:34:51',898,1,'2010-12-06 17:34:54','2010-12-06 17:34:54');
INSERT INTO `product_images` VALUES (1041,'89_spain_2p_r.jpg','image/jpeg',59260,'2010-12-06 17:34:52',898,0,'2010-12-06 17:34:54','2010-12-06 17:34:54');
INSERT INTO `product_images` VALUES (1042,'89_spain_2p_f.jpg','image/jpeg',42481,'2010-12-06 17:34:53',898,0,'2010-12-06 17:34:54','2010-12-06 17:34:54');
INSERT INTO `product_images` VALUES (1043,'1845_1-4c.jpg','image/jpeg',60243,'2010-12-06 17:38:05',831,1,'2010-12-06 17:38:10','2010-12-06 17:38:10');
INSERT INTO `product_images` VALUES (1044,'1845_1-4c_r.jpg','image/jpeg',63917,'2010-12-06 17:38:07',831,0,'2010-12-06 17:38:10','2010-12-06 17:38:10');
INSERT INTO `product_images` VALUES (1045,'1845_1-4c_f.jpg','image/jpeg',54735,'2010-12-06 17:38:08',831,0,'2010-12-06 17:38:10','2010-12-06 17:38:10');
INSERT INTO `product_images` VALUES (1046,'19_swed_ore.jpg','image/jpeg',53487,'2010-12-06 17:42:17',887,1,'2010-12-06 17:42:21','2010-12-06 17:42:21');
INSERT INTO `product_images` VALUES (1047,'19_swed_ore_r.jpg','image/jpeg',53452,'2010-12-06 17:42:18',887,0,'2010-12-06 17:42:21','2010-12-06 17:42:21');
INSERT INTO `product_images` VALUES (1048,'19_swed_ore_f.jpg','image/jpeg',42034,'2010-12-06 17:42:20',887,0,'2010-12-06 17:42:21','2010-12-06 17:42:21');
INSERT INTO `product_images` VALUES (1049,'23_swed_s1o.jpg','image/jpeg',60765,'2010-12-06 17:43:21',886,1,'2010-12-06 17:43:26','2010-12-06 17:43:26');
INSERT INTO `product_images` VALUES (1050,'23_swed_s1o_r.jpg','image/jpeg',58840,'2010-12-06 17:43:23',886,0,'2010-12-06 17:43:26','2010-12-06 17:43:26');
INSERT INTO `product_images` VALUES (1051,'23_swed_s1o_f.jpg','image/jpeg',39821,'2010-12-06 17:43:24',886,0,'2010-12-06 17:43:26','2010-12-06 17:43:26');
INSERT INTO `product_images` VALUES (1052,'06_swed_1-4s.jpg','image/jpeg',56370,'2010-12-06 17:44:54',309,1,'2010-12-06 17:45:03','2010-12-06 17:45:03');
INSERT INTO `product_images` VALUES (1053,'06_swed_1-4s_r.jpg','image/jpeg',57678,'2010-12-06 17:44:59',309,0,'2010-12-06 17:45:03','2010-12-06 17:45:03');
INSERT INTO `product_images` VALUES (1054,'06_swed_1-4s_f.jpg','image/jpeg',43844,'2010-12-06 17:45:00',309,0,'2010-12-06 17:45:03','2010-12-06 17:45:03');
INSERT INTO `product_images` VALUES (1055,'20_swed_1s.jpg','image/jpeg',53866,'2010-12-06 17:45:52',891,1,'2010-12-06 17:45:57','2010-12-06 17:45:57');
INSERT INTO `product_images` VALUES (1056,'20_swed_1s_r.jpg','image/jpeg',52463,'2010-12-06 17:45:54',891,0,'2010-12-06 17:45:57','2010-12-06 17:45:57');
INSERT INTO `product_images` VALUES (1057,'20_swed_1s_f.jpg','image/jpeg',46746,'2010-12-06 17:45:56',891,0,'2010-12-06 17:45:57','2010-12-06 17:45:57');
INSERT INTO `product_images` VALUES (1058,'57_swed_5o.jpg','image/jpeg',53783,'2010-12-06 17:46:54',889,1,'2010-12-06 17:46:59','2010-12-06 17:46:59');
INSERT INTO `product_images` VALUES (1059,'57_swed_5o_r.jpg','image/jpeg',62156,'2010-12-06 17:46:56',889,0,'2010-12-06 17:46:59','2010-12-06 17:46:59');
INSERT INTO `product_images` VALUES (1060,'57_swed_5o_f.jpg','image/jpeg',44643,'2010-12-06 17:46:57',889,0,'2010-12-06 17:46:59','2010-12-06 17:46:59');
INSERT INTO `product_images` VALUES (1061,'73_swed_ore.jpg','image/jpeg',50037,'2010-12-06 17:48:03',888,1,'2010-12-06 17:48:07','2010-12-06 17:48:07');
INSERT INTO `product_images` VALUES (1062,'73_swed_ore_r.jpg','image/jpeg',56306,'2010-12-06 17:48:05',888,0,'2010-12-06 17:48:07','2010-12-06 17:48:07');
INSERT INTO `product_images` VALUES (1063,'73_swed_ore_f.jpg','image/jpeg',37483,'2010-12-06 17:48:06',888,0,'2010-12-06 17:48:07','2010-12-06 17:48:07');
INSERT INTO `product_images` VALUES (1064,'sweden_1877_5o_N50_obv.jpg','image/jpeg',65988,'2010-12-06 17:49:27',966,1,'2010-12-06 17:49:31','2010-12-06 17:49:31');
INSERT INTO `product_images` VALUES (1065,'sweden_1877_5o_N50_rev.jpg','image/jpeg',59196,'2010-12-06 17:49:29',966,0,'2010-12-06 17:49:31','2010-12-06 17:49:31');
INSERT INTO `product_images` VALUES (1066,'sweden_1877_5o_N50.jpg','image/jpeg',58273,'2010-12-06 17:49:30',966,0,'2010-12-06 17:49:31','2010-12-06 17:49:31');
INSERT INTO `product_images` VALUES (1067,'sweden_1886_5o_Nxf_obv.jpg','image/jpeg',64553,'2010-12-06 17:50:40',969,1,'2010-12-06 17:50:44','2010-12-06 17:50:44');
INSERT INTO `product_images` VALUES (1068,'sweden_1886_5o_Nxf_rev.jpg','image/jpeg',63486,'2010-12-06 17:50:41',969,0,'2010-12-06 17:50:44','2010-12-06 17:50:44');
INSERT INTO `product_images` VALUES (1069,'sweden_1886_5o_Nxf.jpg','image/jpeg',53865,'2010-12-06 17:50:42',969,0,'2010-12-06 17:50:44','2010-12-06 17:50:44');
INSERT INTO `product_images` VALUES (1070,'01_swed_kr.jpg','image/jpeg',60596,'2010-12-06 18:15:23',895,1,'2010-12-06 18:15:27','2010-12-06 18:15:27');
INSERT INTO `product_images` VALUES (1071,'01_swed_kr_r.jpg','image/jpeg',65886,'2010-12-06 18:15:24',895,0,'2010-12-06 18:15:27','2010-12-06 18:15:27');
INSERT INTO `product_images` VALUES (1072,'01_swed_kr_f.jpg','image/jpeg',43615,'2010-12-06 18:15:25',895,0,'2010-12-06 18:15:27','2010-12-06 18:15:27');
INSERT INTO `product_images` VALUES (1073,'1906_sweden_kr.jpg','image/jpeg',58625,'2010-12-06 18:16:25',94,1,'2010-12-06 18:16:28','2010-12-06 18:16:28');
INSERT INTO `product_images` VALUES (1074,'1906_sweden_kr_r.jpg','image/jpeg',63972,'2010-12-06 18:16:26',94,0,'2010-12-06 18:16:28','2010-12-06 18:16:28');
INSERT INTO `product_images` VALUES (1075,'1906_sweden_kr_f.jpg','image/jpeg',43228,'2010-12-06 18:16:27',94,0,'2010-12-06 18:16:28','2010-12-06 18:16:28');
INSERT INTO `product_images` VALUES (1076,'sweden_1912_50o_Nau55_obv.jpg','image/jpeg',78450,'2010-12-06 18:17:30',967,1,'2010-12-06 18:17:34','2010-12-06 18:17:34');
INSERT INTO `product_images` VALUES (1077,'sweden_1912_50o_Nau55_rev.jpg','image/jpeg',76356,'2010-12-06 18:17:32',967,0,'2010-12-06 18:17:34','2010-12-06 18:17:34');
INSERT INTO `product_images` VALUES (1078,'sweden_1912_50o_Nau55.jpg','image/jpeg',59536,'2010-12-06 18:17:33',967,0,'2010-12-06 18:17:34','2010-12-06 18:17:34');
INSERT INTO `product_images` VALUES (1079,'stgallobv.jpg','image/jpeg',72929,'2010-12-06 18:19:10',134,1,'2010-12-06 18:19:17','2010-12-06 18:19:17');
INSERT INTO `product_images` VALUES (1080,'stgallrev.jpg','image/jpeg',46083,'2010-12-06 18:19:15',134,0,'2010-12-06 18:19:17','2010-12-06 18:19:17');
INSERT INTO `product_images` VALUES (1081,'1590_SWISS_12SOL_OBV.jpg','image/jpeg',63088,'2010-12-06 18:20:21',1466,1,'2010-12-06 18:20:25','2010-12-06 18:20:25');
INSERT INTO `product_images` VALUES (1082,'1590_SWISS_12SOL_REV.jpg','image/jpeg',65472,'2010-12-06 18:20:22',1466,0,'2010-12-06 18:20:25','2010-12-06 18:20:25');
INSERT INTO `product_images` VALUES (1083,'1590_SWISS_12SOL.jpg','image/jpeg',41327,'2010-12-06 18:20:23',1466,0,'2010-12-06 18:20:25','2010-12-06 18:20:25');
INSERT INTO `product_images` VALUES (1084,'1590_switz.jpg','image/jpeg',55789,'2010-12-06 18:21:39',133,1,'2010-12-06 18:21:42','2010-12-06 18:21:42');
INSERT INTO `product_images` VALUES (1085,'1590_switz_r.jpg','image/jpeg',51002,'2010-12-06 18:21:40',133,0,'2010-12-06 18:21:42','2010-12-06 18:21:42');
INSERT INTO `product_images` VALUES (1086,'1590_switz_f.jpg','image/jpeg',41752,'2010-12-06 18:21:41',133,0,'2010-12-06 18:21:42','2010-12-06 18:21:42');
INSERT INTO `product_images` VALUES (1087,'1612_SWISS_DICKEN_OBV.jpg','image/jpeg',75075,'2010-12-06 18:22:37',1467,1,'2010-12-06 18:22:41','2010-12-06 18:22:41');
INSERT INTO `product_images` VALUES (1088,'1612_SWISS_DICKEN_REV.jpg','image/jpeg',72023,'2010-12-06 18:22:38',1467,0,'2010-12-06 18:22:41','2010-12-06 18:22:41');
INSERT INTO `product_images` VALUES (1089,'1612_SWISS_DICKEN.jpg','image/jpeg',45041,'2010-12-06 18:22:40',1467,0,'2010-12-06 18:22:41','2010-12-06 18:22:41');
INSERT INTO `product_images` VALUES (1090,'SWISS_1795_6F_OBV.jpg','image/jpeg',126559,'2010-12-06 18:23:52',1342,1,'2010-12-06 18:23:57','2010-12-06 18:23:57');
INSERT INTO `product_images` VALUES (1091,'SWISS_1795_6F_REV.jpg','image/jpeg',130828,'2010-12-06 18:23:54',1342,0,'2010-12-06 18:23:57','2010-12-06 18:23:57');
INSERT INTO `product_images` VALUES (1092,'SWISS_1795_6F.jpg','image/jpeg',92200,'2010-12-06 18:23:55',1342,0,'2010-12-06 18:23:57','2010-12-06 18:23:57');
INSERT INTO `product_images` VALUES (1093,'1908_switz_rap_65.jpg','image/jpeg',61765,'2010-12-06 18:24:59',129,1,'2010-12-06 18:25:03','2010-12-06 18:25:03');
INSERT INTO `product_images` VALUES (1094,'1908_switz_rap_65_r.jpg','image/jpeg',57826,'2010-12-06 18:25:00',129,0,'2010-12-06 18:25:03','2010-12-06 18:25:03');
INSERT INTO `product_images` VALUES (1095,'1908_switz_rap_65_f.jpg','image/jpeg',42760,'2010-12-06 18:25:02',129,0,'2010-12-06 18:25:03','2010-12-06 18:25:03');
INSERT INTO `product_images` VALUES (1096,'1909_switz_rap.jpg','image/jpeg',66727,'2010-12-06 18:26:09',131,1,'2010-12-06 18:26:21','2010-12-06 18:26:21');
INSERT INTO `product_images` VALUES (1097,'1909_switz_rap_r.jpg','image/jpeg',62339,'2010-12-06 18:26:10',131,0,'2010-12-06 18:26:21','2010-12-06 18:26:21');
INSERT INTO `product_images` VALUES (1098,'1909_switz_rap_f.jpg','image/jpeg',44893,'2010-12-06 18:26:20',131,0,'2010-12-06 18:26:21','2010-12-06 18:26:21');
INSERT INTO `product_images` VALUES (1099,'1911_switz_rap.jpg','image/jpeg',65992,'2010-12-06 18:27:23',130,1,'2010-12-06 18:27:27','2010-12-06 18:27:27');
INSERT INTO `product_images` VALUES (1100,'1911_switz_rap_r.jpg','image/jpeg',67500,'2010-12-06 18:27:24',130,0,'2010-12-06 18:27:27','2010-12-06 18:27:27');
INSERT INTO `product_images` VALUES (1101,'1911_switz_rap_f.jpg','image/jpeg',43332,'2010-12-06 18:27:25',130,0,'2010-12-06 18:27:27','2010-12-06 18:27:27');
INSERT INTO `product_images` VALUES (1102,'1912_switz_rap.jpg','image/jpeg',61857,'2010-12-06 18:28:22',132,1,'2010-12-06 18:28:26','2010-12-06 18:28:26');
INSERT INTO `product_images` VALUES (1103,'1912_switz_rap_r.jpg','image/jpeg',54631,'2010-12-06 18:28:24',132,0,'2010-12-06 18:28:26','2010-12-06 18:28:26');
INSERT INTO `product_images` VALUES (1104,'1912_switz_rap_f.jpg','image/jpeg',41965,'2010-12-06 18:28:25',132,0,'2010-12-06 18:28:26','2010-12-06 18:28:26');
INSERT INTO `product_images` VALUES (1105,'swiss-laupen.jpg','image/jpeg',73962,'2010-12-06 18:29:24',690,1,'2010-12-06 18:29:28','2010-12-06 18:29:28');
INSERT INTO `product_images` VALUES (1106,'swiss-laupen-r.jpg','image/jpeg',68559,'2010-12-06 18:29:25',690,0,'2010-12-06 18:29:28','2010-12-06 18:29:28');
INSERT INTO `product_images` VALUES (1107,'swiss-laupen-f.jpg','image/jpeg',63553,'2010-12-06 18:29:26',690,0,'2010-12-06 18:29:28','2010-12-06 18:29:28');
INSERT INTO `product_images` VALUES (1109,'LOVE_TOKENS_OBV.jpg','image/jpeg',58719,'2011-01-25 02:29:37',1120,1,'2011-01-25 02:29:44','2011-01-25 02:29:44');
INSERT INTO `product_images` VALUES (1110,'LOVE_TOKENS_REV.jpg','image/jpeg',80862,'2011-01-25 02:29:42',1120,0,'2011-01-25 02:29:44','2011-01-25 02:29:44');
INSERT INTO `product_images` VALUES (1111,'Carolinobv.jpg','image/jpeg',47205,'2011-01-25 02:33:48',680,1,'2011-01-25 02:33:52','2011-01-25 02:33:52');
INSERT INTO `product_images` VALUES (1112,'Carolinrev.jpg','image/jpeg',49493,'2011-01-25 02:33:51',680,0,'2011-01-25 02:33:52','2011-01-25 02:33:52');
INSERT INTO `product_images` VALUES (1113,'Constans2bezelobv.jpg','image/jpeg',36151,'2011-01-25 02:40:08',676,1,'2011-01-25 02:40:11','2011-01-25 02:40:11');
INSERT INTO `product_images` VALUES (1114,'constans2rev.jpg','image/jpeg',4116,'2011-01-25 02:40:10',676,0,'2011-01-25 02:40:11','2011-01-25 02:40:11');
INSERT INTO `product_images` VALUES (1115,'Alexbezelobv.jpg','image/jpeg',44235,'2011-01-25 02:41:39',675,1,'2011-01-25 02:41:45','2011-01-25 02:41:45');
INSERT INTO `product_images` VALUES (1116,'Alexbezelrev.jpg','image/jpeg',42303,'2011-01-25 02:41:43',675,0,'2011-01-25 02:41:45','2011-01-25 02:41:45');
INSERT INTO `product_images` VALUES (1117,'Heliosobv.jpg','image/jpeg',33068,'2011-01-25 02:43:37',677,1,'2011-01-25 02:43:44','2011-01-25 02:43:44');
INSERT INTO `product_images` VALUES (1118,'Heliosrev.jpg','image/jpeg',31286,'2011-01-25 02:43:39',677,0,'2011-01-25 02:43:44','2011-01-25 02:43:44');
INSERT INTO `product_images` VALUES (1127,'1882-O $ VAM-4.jpg','image/jpeg',138573,'2011-02-10 16:49:41',1486,1,'2011-02-10 16:49:49','2011-02-10 16:49:49');
INSERT INTO `product_images` VALUES (1128,'1882-O $ VAM-4 REV-2.jpg','image/jpeg',168740,'2011-02-10 16:49:44',1486,0,'2011-02-10 16:49:49','2011-02-10 16:49:49');
INSERT INTO `product_images` VALUES (1129,'1882-O $ VAM-4 OBV.jpg','image/jpeg',226729,'2011-02-10 16:49:45',1486,0,'2011-02-10 16:49:49','2011-02-10 16:49:49');
INSERT INTO `product_images` VALUES (1130,'1882-O $ VAM-4 REV.jpg','image/jpeg',215849,'2011-02-10 16:49:47',1486,0,'2011-02-10 16:49:49','2011-02-10 16:49:49');
INSERT INTO `product_images` VALUES (1131,'1667 ITALY 1-LUI 62.jpg','image/jpeg',40881,'2011-02-25 21:24:23',1413,1,'2011-02-25 21:24:30','2011-02-25 21:24:30');
INSERT INTO `product_images` VALUES (1132,'1667 ITALY 1-LUI 62 OBV.jpg','image/jpeg',82638,'2011-02-25 21:25:35',1413,0,'2011-02-25 21:25:39','2011-02-25 21:25:39');
INSERT INTO `product_images` VALUES (1133,'1667 ITALY 1-LUI 62 REV.jpg','image/jpeg',85505,'2011-02-25 21:25:38',1413,0,'2011-02-25 21:25:40','2011-02-25 21:25:40');
INSERT INTO `product_images` VALUES (1134,'1770 GUATEM 8R.jpg','image/jpeg',51153,'2011-02-25 21:37:52',1487,1,'2011-02-25 21:37:57','2011-02-25 21:37:57');
INSERT INTO `product_images` VALUES (1135,'1770 GUATEM 8R OBV.jpg','image/jpeg',86159,'2011-02-25 21:37:54',1487,0,'2011-02-25 21:37:57','2011-02-25 21:37:57');
INSERT INTO `product_images` VALUES (1136,'1770 GUATEM 8R REV.jpg','image/jpeg',93055,'2011-02-25 21:37:55',1487,0,'2011-02-25 21:37:57','2011-02-25 21:37:57');
INSERT INTO `product_images` VALUES (1137,'1861 GERM GULDEN.jpg','image/jpeg',48341,'2011-02-25 22:39:38',1488,1,'2011-02-25 22:39:42','2011-02-25 22:39:42');
INSERT INTO `product_images` VALUES (1138,'1861 GERM GULDEN OBV.jpg','image/jpeg',86543,'2011-02-25 22:39:39',1488,0,'2011-02-25 22:39:42','2011-02-25 22:39:42');
INSERT INTO `product_images` VALUES (1139,'1861 GERM GULDEN REV.jpg','image/jpeg',90060,'2011-02-25 22:39:41',1488,0,'2011-02-25 22:39:42','2011-02-25 22:39:42');
INSERT INTO `product_images` VALUES (1140,'1594 NETH 1-DUCAT.jpg','image/jpeg',43529,'2011-02-25 22:41:39',1489,1,'2011-02-25 22:41:42','2011-02-25 22:41:42');
INSERT INTO `product_images` VALUES (1141,'1594 NETH 1-DUCAT OBV.jpg','image/jpeg',81360,'2011-02-25 22:41:40',1489,0,'2011-02-25 22:41:43','2011-02-25 22:41:43');
INSERT INTO `product_images` VALUES (1142,'1594 NETH 1-DUCAT REV.jpg','image/jpeg',84741,'2011-02-25 22:41:41',1489,0,'2011-02-25 22:41:43','2011-02-25 22:41:43');
INSERT INTO `product_images` VALUES (1143,'1778 1-2 ESC.jpg','image/jpeg',53798,'2011-03-16 13:48:52',1490,1,'2011-03-16 13:48:54','2011-03-16 13:48:54');
INSERT INTO `product_images` VALUES (1144,'1778 1-2 ESC OBV.jpg','image/jpeg',95832,'2011-03-16 13:48:52',1490,0,'2011-03-16 13:48:56','2011-03-16 13:48:56');
INSERT INTO `product_images` VALUES (1145,'1778 1-2 ESC REV.jpg','image/jpeg',103831,'2011-03-16 13:48:53',1490,0,'2011-03-16 13:48:56','2011-03-16 13:48:56');
INSERT INTO `product_images` VALUES (1146,'1787-MO 1-2REAL.jpg','image/jpeg',41111,'2011-03-16 14:24:08',1491,0,'2011-03-16 14:24:10','2011-03-16 14:42:01');
INSERT INTO `product_images` VALUES (1147,'1787-MO 1-2REAL OBV.jpg','image/jpeg',94271,'2011-03-16 14:24:09',1491,1,'2011-03-16 14:24:10','2011-03-16 14:42:01');
INSERT INTO `product_images` VALUES (1148,'1787-MO 1-2REAL REV.jpg','image/jpeg',108806,'2011-03-16 14:24:09',1491,0,'2011-03-16 14:24:10','2011-03-16 14:43:05');
INSERT INTO `product_images` VALUES (1149,'1793 2R.jpg','image/jpeg',49354,'2011-03-16 14:26:25',1492,1,'2011-03-16 14:26:27','2011-03-16 14:26:27');
INSERT INTO `product_images` VALUES (1150,'1793 2R OBV.jpg','image/jpeg',97587,'2011-03-16 14:26:26',1492,0,'2011-03-16 14:26:27','2011-03-16 14:26:27');
INSERT INTO `product_images` VALUES (1151,'1793 2R REV.jpg','image/jpeg',99677,'2011-03-16 14:26:26',1492,0,'2011-03-16 14:26:27','2011-03-16 14:26:27');
INSERT INTO `product_images` VALUES (1153,'1793 8-ESC OBV.jpg','image/jpeg',135455,'2011-03-16 14:28:06',1474,0,'2011-03-16 14:28:07','2011-03-16 14:28:07');
INSERT INTO `product_images` VALUES (1154,'1793 8-ESC REV.jpg','image/jpeg',135224,'2011-03-16 14:28:06',1474,0,'2011-03-16 14:28:07','2011-03-16 14:28:07');
INSERT INTO `product_images` VALUES (1155,'1796 REAL.jpg','image/jpeg',48113,'2011-03-16 14:31:16',1493,0,'2011-03-16 14:31:18','2011-03-16 14:37:23');
INSERT INTO `product_images` VALUES (1156,'1796 REAL OBV.jpg','image/jpeg',90550,'2011-03-16 14:31:17',1493,1,'2011-03-16 14:31:18','2011-03-16 14:37:23');
INSERT INTO `product_images` VALUES (1157,'1796 REAL REV.jpg','image/jpeg',96558,'2011-03-16 14:31:17',1493,0,'2011-03-16 14:31:18','2011-03-16 14:31:18');
INSERT INTO `product_images` VALUES (1158,'1807 1-2R.jpg','image/jpeg',47326,'2011-03-16 14:33:43',1494,0,'2011-03-16 14:33:45','2011-03-16 14:37:46');
INSERT INTO `product_images` VALUES (1159,'1807 1-2R OBV.jpg','image/jpeg',82712,'2011-03-16 14:33:44',1494,1,'2011-03-16 14:33:45','2011-03-16 14:37:46');
INSERT INTO `product_images` VALUES (1160,'1807 1-2R REV.jpg','image/jpeg',83590,'2011-03-16 14:33:44',1494,0,'2011-03-16 14:33:45','2011-03-16 14:33:45');
INSERT INTO `product_images` VALUES (1161,'1793 8-ESC.jpg','image/jpeg',78871,'2011-03-16 14:39:45',1474,1,'2011-03-16 14:39:45','2011-03-16 14:39:45');
INSERT INTO `product_images` VALUES (1165,'LEWIS CLARK.jpg','image/jpeg',78097,'2011-03-16 15:46:30',1497,1,'2011-03-16 15:46:36','2011-03-16 15:46:36');
INSERT INTO `product_images` VALUES (1166,'LEWIS CLARK 2.jpg','image/jpeg',72953,'2011-03-16 15:46:32',1497,0,'2011-03-16 15:46:44','2011-03-16 15:46:44');
INSERT INTO `product_images` VALUES (1167,'SANSOM MEDAL OBV.jpg','image/jpeg',78237,'2011-03-16 15:58:46',1498,1,'2011-03-16 15:58:55','2011-03-16 15:58:55');
INSERT INTO `product_images` VALUES (1168,'SANSOM MEDAL REV.jpg','image/jpeg',84788,'2011-03-16 15:58:48',1498,0,'2011-03-16 15:58:56','2011-03-16 15:58:56');
INSERT INTO `product_images` VALUES (1169,'SANSOM MEDAL.jpg','image/jpeg',57007,'2011-03-16 15:58:48',1498,0,'2011-03-16 15:58:56','2011-03-16 15:58:56');
INSERT INTO `product_images` VALUES (1170,'WASH TOKEN OBV.jpg','image/jpeg',82441,'2011-03-16 16:03:09',1499,1,'2011-03-16 16:03:19','2011-03-16 16:03:19');
INSERT INTO `product_images` VALUES (1171,'WASH TOKEN REV.jpg','image/jpeg',94390,'2011-03-16 16:03:11',1499,0,'2011-03-16 16:03:20','2011-03-16 16:03:20');
INSERT INTO `product_images` VALUES (1172,'WASH TOKEN.jpg','image/jpeg',52989,'2011-03-16 16:03:12',1499,0,'2011-03-16 16:03:21','2011-03-16 16:03:21');
INSERT INTO `product_images` VALUES (1173,'SANSOM MEDAL OBV.jpg','image/jpeg',78237,'2011-03-16 20:33:51',1500,1,'2011-03-16 20:34:20','2011-03-16 20:34:20');
INSERT INTO `product_images` VALUES (1174,'SANSOM MEDAL REV.jpg','image/jpeg',84788,'2011-03-16 20:33:59',1500,0,'2011-03-16 20:34:29','2011-03-16 20:34:29');
INSERT INTO `product_images` VALUES (1175,'SANSOM MEDAL.jpg','image/jpeg',57007,'2011-03-16 20:34:02',1500,0,'2011-03-16 20:34:32','2011-03-16 20:34:32');
INSERT INTO `product_images` VALUES (1176,'AUSSIE 1913 2S REV.jpg','image/jpeg',98155,'2011-03-17 16:02:17',1485,1,'2011-03-17 16:02:19','2011-03-17 16:02:19');
INSERT INTO `product_images` VALUES (1177,'AUSSIE 1913 2S OBV.jpg','image/jpeg',95235,'2011-03-17 16:02:18',1485,0,'2011-03-17 16:02:20','2011-03-17 16:02:20');
INSERT INTO `product_images` VALUES (1178,'AUSSIE 1913 2S.jpg','image/jpeg',56934,'2011-03-17 16:02:19',1485,0,'2011-03-17 16:02:20','2011-03-17 16:02:20');
INSERT INTO `product_images` VALUES (1179,'AUSTRIA 1866 TALER REV.jpg','image/jpeg',126704,'2011-03-17 16:05:01',1501,1,'2011-03-17 16:05:04','2011-03-17 16:05:04');
INSERT INTO `product_images` VALUES (1180,'AUSTRIA 1866 TALER OBV.jpg','image/jpeg',102998,'2011-03-17 16:05:01',1501,0,'2011-03-17 16:05:04','2011-03-17 16:05:04');
INSERT INTO `product_images` VALUES (1181,'AUSTRIA 1866 TALER.jpg','image/jpeg',48637,'2011-03-17 16:05:03',1501,0,'2011-03-17 16:05:04','2011-03-17 16:05:04');
INSERT INTO `product_images` VALUES (1182,'BOLIVIA 1832 S8S REV.jpg','image/jpeg',94751,'2011-03-17 16:10:00',1502,1,'2011-03-17 16:10:01','2011-03-17 16:10:01');
INSERT INTO `product_images` VALUES (1183,'BOLIVIA 1832 S8S OBV.jpg','image/jpeg',95501,'2011-03-17 16:10:00',1502,0,'2011-03-17 16:10:01','2011-03-17 16:10:01');
INSERT INTO `product_images` VALUES (1184,'BOLIVIA 1832 S8S.jpg','image/jpeg',53433,'2011-03-17 16:10:01',1502,0,'2011-03-17 16:10:01','2011-03-17 16:10:01');
INSERT INTO `product_images` VALUES (1185,'BRAZIL 1821 960R REV.jpg','image/jpeg',99761,'2011-03-17 16:12:29',117,1,'2011-03-17 16:12:31','2011-03-17 16:12:31');
INSERT INTO `product_images` VALUES (1186,'BRAZIL 1821 960R OBV.jpg','image/jpeg',92269,'2011-03-17 16:12:29',117,0,'2011-03-17 16:12:31','2011-03-17 16:12:31');
INSERT INTO `product_images` VALUES (1187,'BRAZIL 1821 960R.jpg','image/jpeg',60996,'2011-03-17 16:12:30',117,0,'2011-03-17 16:12:31','2011-03-17 16:12:31');
INSERT INTO `product_images` VALUES (1188,'BRAZIL 1935 500R OBV.jpg','image/jpeg',90304,'2011-03-17 16:14:36',194,1,'2011-03-17 16:14:38','2011-03-17 16:14:38');
INSERT INTO `product_images` VALUES (1189,'BRAZIL 1935 500R REV.jpg','image/jpeg',84167,'2011-03-17 16:14:37',194,0,'2011-03-17 16:14:38','2011-03-17 16:14:38');
INSERT INTO `product_images` VALUES (1190,'BRAZIL 1935 500R.jpg','image/jpeg',50821,'2011-03-17 16:14:37',194,0,'2011-03-17 16:14:38','2011-03-17 16:14:38');
INSERT INTO `product_images` VALUES (1191,'CANADA 1921 25C REV.jpg','image/jpeg',102387,'2011-03-17 16:16:48',1503,1,'2011-03-17 16:16:49','2011-03-17 16:16:49');
INSERT INTO `product_images` VALUES (1192,'CANADA 1921 25C OBV.jpg','image/jpeg',95895,'2011-03-17 16:16:48',1503,0,'2011-03-17 16:16:49','2011-03-17 16:16:49');
INSERT INTO `product_images` VALUES (1193,'CANADA 1921 25C.jpg','image/jpeg',50936,'2011-03-17 16:16:49',1503,0,'2011-03-17 16:16:49','2011-03-17 16:16:49');
INSERT INTO `product_images` VALUES (1194,'CANADA 1929 10C REV.jpg','image/jpeg',89984,'2011-03-17 16:18:39',1504,1,'2011-03-17 16:18:40','2011-03-17 16:18:40');
INSERT INTO `product_images` VALUES (1195,'CANADA 1929 10C OBV.jpg','image/jpeg',82360,'2011-03-17 16:18:39',1504,0,'2011-03-17 16:18:40','2011-03-17 16:18:40');
INSERT INTO `product_images` VALUES (1196,'CANADA 1929 10C.jpg','image/jpeg',45333,'2011-03-17 16:18:39',1504,0,'2011-03-17 16:18:40','2011-03-17 16:18:40');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_address_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (5,NULL,'Test','Client','Some Company','404 Reserve Tr','','Chagrin Falls','OH','United States','44022','440-796-7082','','test@test.com','','Testing the system','If you see this, the mailer works',NULL,'2010-12-23 16:04:44','2010-12-23 16:04:44');
INSERT INTO `questions` VALUES (6,NULL,'john','shoemaker','','box 456','21351 evans road','tonganoxie','KS','United States','66086','','','donkeyboy1@sunflower.com','','coins','dear sirs: I have been looking at your ads in coin world. However on your web page I can\'t find morgan dollars, paper money or several other things. Do you not put your coin world ads on your web page? Let me know if I am doing something wrong to find things. Thanks, John',NULL,'2011-02-27 13:39:45','2011-02-27 13:39:45');
INSERT INTO `questions` VALUES (7,NULL,'Robert C.','Lexa','','206 Glenwood Dr..Conway, SC 29526, USA','','Conway','SC','United States','2926','18433470540','','rexa@sc.rr.com','rlexa@sc.rr.com','Rare Gold & Foreign proof cois','I have a collection of rare gold coins as well as Proof Gold & Platinum Foreign coins I am willing to sel',NULL,'2011-02-28 23:43:32','2011-02-28 23:43:32');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20100708114032');
INSERT INTO `schema_migrations` VALUES ('20100708131332');
INSERT INTO `schema_migrations` VALUES ('20100812113314');
INSERT INTO `schema_migrations` VALUES ('20100821130310');
INSERT INTO `schema_migrations` VALUES ('20100901011700');
INSERT INTO `schema_migrations` VALUES ('20100901011745');
INSERT INTO `schema_migrations` VALUES ('20100901011848');
INSERT INTO `schema_migrations` VALUES ('20100901011931');
INSERT INTO `schema_migrations` VALUES ('20100902211047');
INSERT INTO `schema_migrations` VALUES ('20100929171920');
INSERT INTO `schema_migrations` VALUES ('20100930014120');
INSERT INTO `schema_migrations` VALUES ('20101001200537');
INSERT INTO `schema_migrations` VALUES ('20101001200918');
INSERT INTO `schema_migrations` VALUES ('20101001231656');
INSERT INTO `schema_migrations` VALUES ('20101015163033');
INSERT INTO `schema_migrations` VALUES ('20101015165234');
INSERT INTO `schema_migrations` VALUES ('20101015211220');
INSERT INTO `schema_migrations` VALUES ('20101114012430');
INSERT INTO `schema_migrations` VALUES ('20101116144545');
INSERT INTO `schema_migrations` VALUES ('20101208174655');
INSERT INTO `schema_migrations` VALUES ('20101208194530');
INSERT INTO `schema_migrations` VALUES ('20101214152218');
INSERT INTO `schema_migrations` VALUES ('20101228191730');
INSERT INTO `schema_migrations` VALUES ('20110131152453');
INSERT INTO `schema_migrations` VALUES ('20110210010901');
INSERT INTO `schema_migrations` VALUES ('20110210155237');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `text_elems`
--

DROP TABLE IF EXISTS `text_elems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `text_elems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `text_elems`
--

LOCK TABLES `text_elems` WRITE;
/*!40000 ALTER TABLE `text_elems` DISABLE KEYS */;
INSERT INTO `text_elems` VALUES (4,'<p>\r\n	Since 1971 Jonathan Kern has been a knowledgeable dealer and collector in ancient, foreign, and U.S. coinage along with tokens, paper money and antiquities.</p>\r\n<p>\r\n	We take great pride in putting the customer first. Please take a look at our current inventory listing or drop us a line so we may help you with your numismatic need.</p>\r\n<p>\r\n	<a href=\"/about-us\"><img alt=\"Learn More About Us\" src=\"/site_assets/images/4/content_learn-more.png\" style=\"float: right; margin-top: 8px;\" /></a></p>\r\n','2010-10-30 03:30:30','2010-11-14 01:31:15');
INSERT INTO `text_elems` VALUES (5,'<p>\r\n	<span class=\"makeBold\">Jonathan K. Kern</span> was born in 1952, and at the age of 8 started collecting coins of the Netherlands East Indies while in Indonesia. After returning to Lexington, Kentucky in 1962, with the encouragement of his mother, he joined the Bluegrass Coin Club, of which he was later secretary and president. While attending the University of Kentucky in 1969 with a major in geology, he got his first over the counter coin retailing experience working for Larry Goodman&rsquo;s Jewel Box. After three semesters, he dropped out and worked for $35. a week running Paul Stockton&rsquo;s Pioneer Coins while apprenticing in the art of coin restoration and conservation. After being fired from this last job ever, and losing the $1 an hour income, he quickly evaluated his life and got married. Confident that he could live on $2000 a year from flea markets, coin shop rounds, and driving to coin shows, he was happy never working for anyone else again. Attracted back to the University of Kentucky by its Honors Program and topical major options, he graduated in 1973 with a <a href=\"numismatics\">Bachelor of Arts with a major in numismatics</a>. About 25% of all credit hours were topical, and his independent research thesis studied Spanish Colonial coins from the Colombian mint with non-destructive thermal neutron activation analysis.</p>\r\n<p>\r\n	Jonathan Kern opened his first coin shop as Bluegrass Coins and attended hundreds of coin shows in the 1970s including bourse tables in London, Munich and Zurich. In addition to foreign and US coins he started dealing avidly in ancients by the mid 70s. He joined the ANS, became an ANA life member and joined many other state and regional coin organizations.&nbsp; After the boom of&nbsp; 1980 he sold Bluegrass Coins and began regular Coin World advertising as Jonathan K. Kern Company while still attending all major and Midwest regional shows. Jonathan is very grateful for all the opportunities in life brought to him by the rare coin business in the last 35 years, including meeting and sharing our hobby with some of the finest people in the world.</p>\r\n<p>\r\n	&nbsp;</p>\r\n','2010-10-30 03:30:30','2011-01-15 15:32:14');
INSERT INTO `text_elems` VALUES (7,'<p>\r\n	Stay tuned...</p>\r\n','2010-10-30 04:04:10','2010-10-30 04:04:35');
INSERT INTO `text_elems` VALUES (11,'<p>\r\n	We offer an<a href=\"http://184.106.241.188/Inventory\"><span style=\"color: rgb(255, 255, 0);\"> inventory</span></a> that is second-to-none featuring ancient, foreign, medieval, US and numerous other types of coins. Visit our online store, view our inventory, and purchase coins!</p>\r\n<p>\r\n	&nbsp;</p>\r\n','2010-11-26 21:03:58','2010-12-15 22:09:50');
INSERT INTO `text_elems` VALUES (14,'<p>\r\n	<img alt=\"\" src=\"/site_assets/images/6/content_archive-thumb.jpg\" style=\"margin-right: 10px; margin-bottom: 10px; float: left; width: 95px; height: 105px; \" />The following documents are available in Adobe Reader format, Adobe Flashpaper format, or both. Of the two, the flashpaper will load much faster and there are far fewer browser incompatibilities; you need only a Flash player to view them. However, the Adobe Reader (pdf) documents will have sharper images of the coins featured. Choose the document you want to view, and click on the format you wish to view it in.</p>\r\n','2010-12-07 00:00:39','2010-12-07 00:00:39');
INSERT INTO `text_elems` VALUES (16,'<h1>\r\n	<span style=\"color: rgb(240, 255, 240);\">Special Offers</span></h1>\r\n<p>\r\n	Please take a moment to view our current special offers on coins of all sorts!</p>\r\n<p>\r\n	<a href=\"special-offers\"><img alt=\"View Offers\" src=\"/site_assets/images/3/content_view-offers.png\" style=\"margin: 30px -4px 0pt;\" /></a></p>\r\n','2010-12-15 20:57:48','2011-01-19 15:49:52');
INSERT INTO `text_elems` VALUES (18,'<p style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/site_assets/images/25/content_1_pic1.jpg?1292450892\" style=\"width: 95px; height: 105px;\" /></p>\r\n','2010-12-15 22:08:18','2010-12-15 22:08:51');
INSERT INTO `text_elems` VALUES (19,'<p>\r\n	<span class=\"makeBold\">In the early 70&rsquo;s</span> I was attending the University of Kentucky in the honors program as a geology major. Coins were rapidly becoming much more fun than rocks. I dropped out of the second semester of my sophomore year to get married and do coins full time. I apprenticed under the coin repair master Paul Stockton for 3 months. We were mutually compensated since I was running his over the counter Pioneer Coin Shop for $1.00 an hour for his 35 hour week Monday through Friday. By working flea markets and coin shows on weekends I came to the conclusion that I could earn $2,000 a year doing my hobby as a business, and I could survive on this income. Frugal living was acceptable to me if I could be my own boss.</p>\r\n<p>\r\n	The importance of a college degree could still not be overlooked and I probably knew that if I didn&rsquo;t do it soon I might not ever graduate. I am very grateful that academia had entered the &ldquo;Age of Relevancy&rdquo;. The honors program offered tailored majors for a Bachelor&rsquo;s degree if several criteria were met. All the course work for the usual Bachelor of Arts, Science or General Studies degrees must be met.&nbsp; Courses related to the chosen major or independent course work at the junior and senior levels must be taken to meet the major requirements. Any independent work in the chosen major needed a faculty advisor capable of evaluating the quality of the study or research.</p>\r\n<p>\r\n	So I went back for my junior and senior years and got my Bachelor of Arts with a major in Numismatics in June of 1973. The normally offered courses that I took in the College of Arts and Sciences related to numismatics included: art appreciation, economics, ancient, medieval, and modern history, chemistry, physics and radiochemistry. Eighty per cent of my independent study credit hours were devoted to my undergraduate thesis. I analyzed non-destructively a series of silver coins struck at the Spanish colonial mints of Santa Fe de Bogota and Popayan. Silver from these two mints was largely a by product of the gold mining activities, and &frac12; to 8 reales were struck in limited numbers. Refining materials were scarce and contemporary sources mention possible gold impurities in the silver coins. To verify these statements non-destructively I used a high thermal neutron flux generated by a Californium-252 source to make my sample coins radioactive for a short period of time. By identifying and measuring the radiation emitted from the coins, the gold impurities could be quantified. Many of the samples had a 5% gold content, which raised the intrinsic value over the face value. This could easily have contributed to the numismatic scarcity of the silver coins from these mints.</p>\r\n<p>\r\n	My chemistry professor, Dr. Ehmann, evaluated the radiochemistry scholarship, and my history professor and honors advisor, Dr. Scarborough, evaluated by numismatic research. I was fortunate that Dr. Scarborough was interested in the archaeological uses of Numismatics and appreciated research into this specialized field. I do not know if a similar topical major program is offered at any universities today.</p>\r\n','2010-12-20 14:27:06','2010-12-20 14:27:06');
INSERT INTO `text_elems` VALUES (22,'<p>\r\n	<a href=\"/site_assets/files/34/COIN WORLD MARCH 2011.pdf?1299786467\">March 2011</a></p>\r\n<p>\r\n	<a href=\"/site_assets/files/26/COIN WORLD FEB, 2011 PG1.pdf\">February 2011 Page1</a></p>\r\n<p>\r\n	<a href=\"/site_assets/files/27/COIN WORLD FEB, 2011 PG2.pdf?1297359956\">February 2011 Page 2</a></p>\r\n<p>\r\n	<a href=\"/site_assets/files/28/COIN WORLD FEB, 2011 PG3.pdf\">February 2011 Page 3</a></p>\r\n<p>\r\n	<a href=\"/site_assets/files/32/COIN WORLD FEB, 2011 PG4.pdf?1299786345\">February 2011 Page 4</a></p>\r\n<p>\r\n	<a href=\"/site_assets/files/33/COIN WORLD FEB, 2011 PG5.pdf?1299786389\">February 2011 Page 5</a></p>\r\n','2011-02-10 17:42:31','2011-03-10 20:29:32');
INSERT INTO `text_elems` VALUES (24,'','2011-02-23 19:32:33','2011-02-23 19:32:33');
INSERT INTO `text_elems` VALUES (25,'','2011-02-25 20:17:56','2011-03-10 19:44:16');
/*!40000 ALTER TABLE `text_elems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'kern_coin_production'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-03-19 16:15:04
