-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: oc_pizza_2
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `road_number` int(10) unsigned DEFAULT NULL,
  `address_line1` varchar(50) DEFAULT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `town_city` varchar(50) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `region_state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,14652,'808 Butler Mall Apt. 643','527 King Way Suite 283','Williamsview','34101','Kansas','Pitcairn Islands'),(2,99087,'9201 Moon Alley Apt. 174','772 William Port','Lake Brandonstad','66224','Maryland','Norway'),(3,458,'79908 Hill Hill','0333 Fowler Pine','Vincentton','94504','Utah','Turkmenistan'),(4,2531,'3693 Jones Glen Suite 596','1558 Brown Trail','West Jamie','69393','Wyoming','Gambia'),(5,807,'13623 Gary Mountains Apt. 421','797 Dakota Lock','West Nancychester','71756','South Dakota','Cyprus'),(6,333,'03309 Jennifer Circle','6194 Carolyn Highway','Kevintown','89094','California','Barbados'),(7,46009,'108 Ariana Center','19175 Jimenez Meadows Suite 729','North Gloria','08004','Colorado','Morocco'),(8,50991,'52586 Patterson Flat','661 White Coves Apt. 567','West Jamesfort','47730','Vermont','Ethiopia'),(9,2390,'3949 Campos Mount','166 Sandra Pine','Christopherview','75203','Montana','Portugal'),(10,1762,'9056 Thompson Cape Suite 824','9744 Vaughan Common Apt. 407','Port Kathleenhaven','43508','Oregon','Kenya'),(11,3370,'46470 Gary Ville Suite 947','396 Smith Parkway','Port Deborah','52090','Colorado','Tuvalu'),(12,33341,'1200 Emily Glens','643 Linda Ports','New Jason','30616','Massachusetts','Qatar'),(13,5114,'29614 Kenneth Run','799 Garza Walk Suite 810','North Tammy','51291','Colorado','Romania'),(14,34,'34840 Jackson Plaza','598 Henry Circles Apt. 282','Millerchester','55450','Rhode Island','Palestinian Territory'),(15,5778,'12097 Stacey Walks Apt. 810','48809 Henry Parkway Suite 338','West Paulberg','97345','Alaska','Turks and Caicos Islands'),(16,83927,'3622 Boyd Creek Suite 062','19994 Kara Road Suite 132','North Brianborough','40386','Ohio','Benin'),(17,105,'51219 Stephen Canyon Apt. 070','50555 Mills Drive','Lake Kellychester','20650','Minnesota','Eritrea'),(18,179,'00075 Veronica Avenue','909 Cruz Street','New Sarah','91962','Ohio','Botswana'),(19,699,'487 Miller Course','98779 Rojas Inlet','Lake Stacyfort','28395','New Mexico','Sudan'),(20,762,'857 Sarah Roads Apt. 545','4216 Erica Skyway Suite 919','North Ericview','64212','Kentucky','Brazil');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Article`
--

DROP TABLE IF EXISTS `Article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Article` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Article`
--

LOCK TABLES `Article` WRITE;
/*!40000 ALTER TABLE `Article` DISABLE KEYS */;
INSERT INTO `Article` VALUES (1,'Orozcostad','6595 Eric Glen'),(2,'Jessestad','22343 Watson Burg'),(3,'Mariamouth','82626 Carroll Vista'),(4,'New Kaitlynshire','604 Scott Highway'),(5,'South Scottview','5456 Jason Mill Suite 307'),(6,'Sarahland','507 Pena Way Apt. 109'),(7,'Lake Mary','504 Stephanie Points Apt. 972'),(8,'Colonmouth','8594 Montes Falls Suite 813'),(9,'Louismouth','93138 Nicole Lane Apt. 809'),(10,'West Nicolemouth','95776 Shawn Cliff Apt. 877'),(11,'Tylerland','95742 Dave Islands Suite 131'),(12,'West Jesseland','52452 Williams Squares'),(13,'Anthonyhaven','19841 Kelly Station'),(14,'West Joseph','973 Christopher Centers'),(15,'Bishopmouth','2484 Benjamin Fords'),(16,'Abigailville','999 Young Brook'),(17,'Gomezside','385 Anderson Locks'),(18,'Rollinstown','090 Sharp Route'),(19,'Port Tiffany','688 Jack Spur'),(20,'Lyonsberg','3202 Brown Villages Apt. 884'),(21,'New Greg','30344 Jacob Trafficway Suite 713'),(22,'Berrymouth','4353 Wells Walk'),(23,'Birdburgh','134 Brown Roads Apt. 874'),(24,'Janiceberg','6695 Miller Overpass Apt. 167'),(25,'Davisville','726 Herman Isle');
/*!40000 ALTER TABLE `Article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Composition`
--

DROP TABLE IF EXISTS `Composition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Composition` (
  `article_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  `unity` int(11) DEFAULT NULL,
  KEY `fk_Composition_article_id` (`article_id`),
  KEY `fk_Composition_ingredient_id` (`ingredient_id`),
  CONSTRAINT `fk_Composition_article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  CONSTRAINT `fk_Composition_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredient` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Composition`
--

LOCK TABLES `Composition` WRITE;
/*!40000 ALTER TABLE `Composition` DISABLE KEYS */;
INSERT INTO `Composition` VALUES (1,8,177.000,0),(1,11,177.000,0),(1,2,247.000,0),(1,4,117.000,0),(1,12,244.000,0),(1,12,241.000,0),(1,4,127.000,0),(1,12,109.000,0),(1,8,167.000,0),(1,5,135.000,0),(2,11,212.000,0),(2,2,212.000,0),(2,5,231.000,0),(2,1,162.000,0),(2,2,242.000,0),(2,2,143.000,0),(2,5,244.000,0),(2,9,136.000,0),(2,3,170.000,0),(2,7,186.000,0),(3,1,159.000,0),(3,1,129.000,0),(3,7,219.000,0),(3,5,122.000,0),(3,9,160.000,0),(3,7,112.000,0),(3,5,183.000,0),(3,3,187.000,0),(3,9,143.000,0),(3,1,106.000,0),(4,11,185.000,0),(4,8,176.000,0),(4,6,175.000,0),(4,2,246.000,0),(4,6,245.000,0),(4,1,105.000,0),(4,3,127.000,0),(4,6,189.000,0),(4,9,123.000,0),(4,10,166.000,0),(5,4,156.000,0),(5,12,227.000,0),(5,4,159.000,0),(5,3,122.000,0),(5,4,221.000,0),(5,1,140.000,0),(5,5,228.000,0),(5,2,108.000,0),(5,4,237.000,0),(5,2,231.000,0),(6,12,250.000,0),(6,10,157.000,0),(6,6,115.000,0),(6,11,245.000,0),(6,4,177.000,0),(6,1,189.000,0),(6,9,224.000,0),(6,1,152.000,0),(6,7,234.000,0),(6,9,204.000,0),(7,7,232.000,0),(7,6,177.000,0),(7,6,130.000,0),(7,4,198.000,0),(7,12,163.000,0),(7,11,166.000,0),(7,2,144.000,0),(7,2,127.000,0),(7,8,169.000,0),(7,9,236.000,0),(8,9,224.000,0),(8,6,187.000,0),(8,5,156.000,0),(8,12,214.000,0),(8,10,127.000,0),(8,8,228.000,0),(8,4,134.000,0),(8,2,167.000,0),(8,3,103.000,0),(8,12,168.000,0),(9,3,232.000,0),(9,1,127.000,0),(9,9,117.000,0),(9,5,200.000,0),(9,11,120.000,0),(9,5,242.000,0),(9,8,173.000,0),(9,2,237.000,0),(9,1,135.000,0),(9,2,118.000,0),(10,8,101.000,0),(10,9,136.000,0),(10,2,129.000,0),(10,11,174.000,0),(10,5,202.000,0),(10,5,196.000,0),(10,3,113.000,0),(10,9,240.000,0),(10,11,141.000,0),(10,8,213.000,0),(11,8,112.000,0),(11,4,231.000,0),(11,1,162.000,0),(11,4,177.000,0),(11,10,190.000,0),(11,2,209.000,0),(11,8,124.000,0),(11,4,106.000,0),(11,7,187.000,0),(11,1,188.000,0),(12,10,123.000,0),(12,5,240.000,0),(12,1,204.000,0),(12,6,236.000,0),(12,1,209.000,0),(12,7,233.000,0),(12,10,171.000,0),(12,9,127.000,0),(12,2,196.000,0),(12,10,128.000,0),(13,7,220.000,0),(13,10,227.000,0),(13,9,117.000,0),(13,3,188.000,0),(13,3,104.000,0),(13,7,134.000,0),(13,12,224.000,0),(13,3,181.000,0),(13,1,117.000,0),(13,9,227.000,0),(14,6,214.000,0),(14,1,172.000,0),(14,12,122.000,0),(14,6,139.000,0),(14,12,173.000,0),(14,2,112.000,0),(14,9,241.000,0),(14,5,122.000,0),(14,5,215.000,0),(14,8,238.000,0),(15,3,240.000,0),(15,5,237.000,0),(15,4,150.000,0),(15,10,147.000,0),(15,1,190.000,0),(15,9,162.000,0),(15,1,124.000,0),(15,8,184.000,0),(15,1,221.000,0),(15,6,148.000,0),(16,8,106.000,0),(16,11,175.000,0),(16,5,128.000,0),(16,2,112.000,0),(16,3,112.000,0),(16,6,167.000,0),(16,4,108.000,0),(16,1,166.000,0),(16,7,239.000,0),(16,12,101.000,0),(17,4,181.000,0),(17,6,226.000,0),(17,9,160.000,0),(17,10,244.000,0),(17,7,147.000,0),(17,3,188.000,0),(17,9,156.000,0),(17,8,147.000,0),(17,8,161.000,0),(17,11,222.000,0),(18,5,208.000,0),(18,8,227.000,0),(18,1,223.000,0),(18,12,181.000,0),(18,4,148.000,0),(18,11,100.000,0),(18,12,245.000,0),(18,7,233.000,0),(18,4,191.000,0),(18,3,210.000,0),(19,8,197.000,0),(19,11,171.000,0),(19,7,111.000,0),(19,5,137.000,0),(19,3,208.000,0),(19,6,210.000,0),(19,11,220.000,0),(19,12,227.000,0),(19,3,135.000,0),(19,10,126.000,0),(20,4,241.000,0),(20,5,189.000,0),(20,9,171.000,0),(20,1,105.000,0),(20,10,212.000,0),(20,11,208.000,0),(20,9,237.000,0),(20,1,236.000,0),(20,10,181.000,0),(20,3,151.000,0),(21,2,123.000,0),(21,1,208.000,0),(21,8,153.000,0),(21,11,221.000,0),(21,12,202.000,0),(21,11,191.000,0),(21,2,223.000,0),(21,12,131.000,0),(21,11,178.000,0),(21,5,162.000,0),(22,12,181.000,0),(22,11,120.000,0),(22,6,216.000,0),(22,2,194.000,0),(22,11,187.000,0),(22,8,106.000,0),(22,4,245.000,0),(22,10,177.000,0),(22,1,226.000,0),(22,6,224.000,0),(23,3,230.000,0),(23,5,229.000,0),(23,1,166.000,0),(23,7,197.000,0),(23,5,142.000,0),(23,7,248.000,0),(23,2,181.000,0),(23,4,188.000,0),(23,2,113.000,0),(23,12,225.000,0),(24,9,192.000,0),(24,7,201.000,0),(24,1,143.000,0),(24,5,235.000,0),(24,9,209.000,0),(24,6,147.000,0),(24,5,145.000,0),(24,8,208.000,0),(24,8,109.000,0),(24,1,221.000,0),(25,6,118.000,0),(25,11,133.000,0),(25,2,188.000,0),(25,10,108.000,0),(25,8,149.000,0),(25,9,134.000,0),(25,4,177.000,0),(25,5,247.000,0),(25,12,168.000,0),(25,10,208.000,0);
/*!40000 ALTER TABLE `Composition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ingredient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
INSERT INTO `Ingredient` VALUES (1,'Magenta'),(2,'MediumPurple'),(3,'Pink'),(4,'LimeGreen'),(5,'DeepPink'),(6,'Gold'),(7,'LawnGreen'),(8,'Orchid'),(9,'LightCoral'),(10,'WhiteSmoke'),(11,'MediumPurple'),(12,'LimeGreen');
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_line`
--

DROP TABLE IF EXISTS `Order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_line` (
  `article_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  KEY `fk_article_id` (`article_id`),
  KEY `fk_order_id_a` (`order_id`),
  CONSTRAINT `fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  CONSTRAINT `fk_order_id_a` FOREIGN KEY (`order_id`) REFERENCES `Order_main` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_line`
--

LOCK TABLES `Order_line` WRITE;
/*!40000 ALTER TABLE `Order_line` DISABLE KEYS */;
INSERT INTO `Order_line` VALUES (9,1,3.000),(15,2,2.000),(11,3,2.000),(22,4,1.000),(9,5,3.000),(18,6,3.000),(10,7,2.000),(17,8,3.000),(17,9,3.000),(19,10,1.000),(10,11,3.000),(13,12,1.000),(17,13,1.000),(25,14,1.000),(6,15,3.000),(9,16,2.000),(17,17,2.000),(8,18,3.000),(12,19,3.000),(4,20,2.000);
/*!40000 ALTER TABLE `Order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_main`
--

DROP TABLE IF EXISTS `Order_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_main` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `payment` tinyint(4) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `delivery_method` varchar(50) DEFAULT NULL,
  `order_status_id` int(11) NOT NULL,
  `shop_id` smallint(6) NOT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shop_id` (`shop_id`),
  KEY `fk_order_status_id` (`order_status_id`),
  KEY `fk_address_id` (`address_id`),
  KEY `fk_fk_user_id` (`user_id`),
  CONSTRAINT `fk_address_id` FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`),
  CONSTRAINT `fk_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  CONSTRAINT `fk_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `Order_status` (`id`),
  CONSTRAINT `fk_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_main`
--

LOCK TABLES `Order_main` WRITE;
/*!40000 ALTER TABLE `Order_main` DISABLE KEYS */;
INSERT INTO `Order_main` VALUES (1,'2004-08-05 22:51:54',1,'cash','delivered',2,5,4,5,40.00),(2,'1992-12-30 07:26:22',0,'cash','to_take_away',2,1,12,1,20.00),(3,'2015-01-21 07:15:35',0,'card','delivered',1,3,20,6,30.00),(4,'1975-02-01 01:24:09',0,'cash','on_the_spot',4,1,4,5,20.00),(5,'2019-11-17 03:14:14',1,'card','delivered',3,4,6,17,20.00),(6,'1976-05-09 16:58:31',0,'cash','on_the_spot',1,3,11,6,30.00),(7,'1985-06-04 22:37:32',1,'check','to_take_away',4,5,12,16,40.00),(8,'2002-01-06 06:56:47',1,'card','to_take_away',4,2,7,7,40.00),(9,'1976-10-07 07:54:32',0,'check','on_the_spot',4,3,10,12,20.00),(10,'1977-08-12 02:39:32',0,'cash','to_take_away',4,3,18,12,30.00),(11,'1982-10-23 05:19:37',0,'card','on_the_spot',1,5,2,11,40.00),(12,'1975-07-25 17:21:54',0,'card','to_take_away',4,2,1,5,30.00),(13,'1974-09-17 00:09:32',0,'card','on_the_spot',3,3,9,6,30.00),(14,'1993-03-06 23:43:33',1,'card','to_take_away',4,4,12,14,20.00),(15,'1974-06-22 07:03:38',1,'card','to_take_away',3,5,6,14,40.00),(16,'2009-06-10 09:31:22',1,'card','on_the_spot',3,5,20,19,20.00),(17,'2006-07-11 22:17:12',1,'check','to_take_away',3,1,9,19,40.00),(18,'1976-07-02 17:39:07',1,'check','to_take_away',2,2,6,7,20.00),(19,'1989-12-27 05:34:57',1,'card','on_the_spot',2,4,3,7,20.00),(20,'1995-07-22 15:06:30',0,'card','on_the_spot',4,5,6,4,30.00);
/*!40000 ALTER TABLE `Order_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_preparation`
--

DROP TABLE IF EXISTS `Order_preparation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_preparation` (
  `user_id` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  KEY `fk_user_id` (`user_id`),
  KEY `fk_order_id` (`ORDER_ID`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`ORDER_ID`) REFERENCES `Order_main` (`id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_preparation`
--

LOCK TABLES `Order_preparation` WRITE;
/*!40000 ALTER TABLE `Order_preparation` DISABLE KEYS */;
INSERT INTO `Order_preparation` VALUES (6,1),(13,1),(11,2),(10,2),(6,3),(12,3),(16,4),(17,4),(11,5),(8,5),(18,6),(6,6),(20,7),(19,7),(1,8),(18,8),(10,9),(13,9),(9,10),(10,10),(10,11),(7,11),(4,12),(18,12),(12,13),(18,13),(2,14),(8,14),(8,15),(8,15),(19,16),(19,16),(16,17),(7,17),(5,18),(7,18),(10,19),(4,19),(20,20),(8,20);
/*!40000 ALTER TABLE `Order_preparation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_status`
--

DROP TABLE IF EXISTS `Order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_status`
--

LOCK TABLES `Order_status` WRITE;
/*!40000 ALTER TABLE `Order_status` DISABLE KEYS */;
INSERT INTO `Order_status` VALUES (1,'cancelled'),(2,'preparation'),(3,'on_delivery'),(4,'delivered');
/*!40000 ALTER TABLE `Order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Price`
--

DROP TABLE IF EXISTS `Price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Price` (
  `shop_id` smallint(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  `pre_tax_price` decimal(10,2) DEFAULT NULL,
  KEY `fk_shop_id_a` (`shop_id`),
  KEY `fk_fk_article_id` (`article_id`),
  CONSTRAINT `fk_fk_article_id` FOREIGN KEY (`article_id`) REFERENCES `Article` (`id`),
  CONSTRAINT `fk_shop_id_a` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Price`
--

LOCK TABLES `Price` WRITE;
/*!40000 ALTER TABLE `Price` DISABLE KEYS */;
INSERT INTO `Price` VALUES (1,1,29.00),(1,2,21.00),(1,3,11.00),(1,4,19.00),(1,5,30.00),(1,6,19.00),(1,7,14.00),(1,8,20.00),(1,9,16.00),(1,10,17.00),(1,11,17.00),(1,12,14.00),(2,1,17.00),(2,2,25.00),(2,3,20.00),(2,4,26.00),(2,5,23.00),(2,6,13.00),(2,7,23.00),(2,8,21.00),(2,9,28.00),(2,10,21.00),(2,11,30.00),(2,12,18.00),(3,1,12.00),(3,2,24.00),(3,3,24.00),(3,4,21.00),(3,5,26.00),(3,6,23.00),(3,7,30.00),(3,8,14.00),(3,9,11.00),(3,10,29.00),(3,11,30.00),(3,12,21.00),(4,1,19.00),(4,2,26.00),(4,3,22.00),(4,4,28.00),(4,5,12.00),(4,6,24.00),(4,7,12.00),(4,8,29.00),(4,9,24.00),(4,10,30.00),(4,11,29.00),(4,12,13.00),(5,1,29.00),(5,2,30.00),(5,3,28.00),(5,4,12.00),(5,5,30.00),(5,6,20.00),(5,7,27.00),(5,8,25.00),(5,9,20.00),(5,10,14.00),(5,11,30.00),(5,12,29.00);
/*!40000 ALTER TABLE `Price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role`
--

DROP TABLE IF EXISTS `Role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role`
--

LOCK TABLES `Role` WRITE;
/*!40000 ALTER TABLE `Role` DISABLE KEYS */;
INSERT INTO `Role` VALUES (1,'admin'),(2,'pizzaiolo'),(3,'delivery_man'),(4,'customer');
/*!40000 ALTER TABLE `Role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shop`
--

DROP TABLE IF EXISTS `Shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shop` (
  `id` smallint(6) NOT NULL,
  `road_number` int(11) DEFAULT NULL,
  `address_line1` varchar(50) DEFAULT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `town_city` varchar(50) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `region_state` varchar(30) DEFAULT NULL,
  `country` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shop`
--

LOCK TABLES `Shop` WRITE;
/*!40000 ALTER TABLE `Shop` DISABLE KEYS */;
INSERT INTO `Shop` VALUES (1,968,'7288 William Crossing Apt. 260','45227 Frank Union Apt. 880','New Xavier','73966','Ohio','Lithuania'),(2,48863,'547 Crawford Square','162 Jones Hollow Apt. 366','Amystad','76117','New Hampshire','Slovakia (Slovak Republic)'),(3,857,'8543 Cassandra Plaza','6049 Laurie Vista','Dickersonmouth','78155','West Virginia','Burundi'),(4,7827,'530 Harrell Locks Suite 874','43270 Natalie Islands','Stanleyton','90795','Washington','Iraq'),(5,555,'21379 Brian Locks','5668 Woodward Stravenue','Lake Terribury','01933','Hawaii','Hong Kong');
/*!40000 ALTER TABLE `Shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stock`
--

DROP TABLE IF EXISTS `Stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stock` (
  `ingredient_id` int(11) NOT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  `shop_id` smallint(6) NOT NULL,
  KEY `fk_ingredient_id` (`ingredient_id`),
  KEY `fk_stock_shop_id` (`shop_id`),
  CONSTRAINT `fk_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `Ingredient` (`id`),
  CONSTRAINT `fk_stock_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stock`
--

LOCK TABLES `Stock` WRITE;
/*!40000 ALTER TABLE `Stock` DISABLE KEYS */;
INSERT INTO `Stock` VALUES (1,777.000,1),(2,220.000,1),(3,164.000,1),(4,40.000,1),(5,587.000,1),(6,86.000,1),(7,767.000,1),(8,132.000,1),(9,681.000,1),(10,569.000,1),(11,309.000,1),(12,827.000,1),(1,261.000,2),(2,593.000,2),(3,6.000,2),(4,614.000,2),(5,989.000,2),(6,987.000,2),(7,920.000,2),(8,287.000,2),(9,211.000,2),(10,589.000,2),(11,170.000,2),(12,636.000,2),(1,415.000,3),(2,454.000,3),(3,799.000,3),(4,516.000,3),(5,135.000,3),(6,367.000,3),(7,645.000,3),(8,145.000,3),(9,428.000,3),(10,449.000,3),(11,204.000,3),(12,9.000,3),(1,491.000,4),(2,858.000,4),(3,889.000,4),(4,327.000,4),(5,626.000,4),(6,767.000,4),(7,734.000,4),(8,499.000,4),(9,780.000,4),(10,179.000,4),(11,932.000,4),(12,837.000,4),(1,267.000,5),(2,552.000,5),(3,81.000,5),(4,938.000,5),(5,854.000,5),(6,676.000,5),(7,406.000,5),(8,989.000,5),(9,685.000,5),(10,704.000,5),(11,584.000,5),(12,490.000,5);
/*!40000 ALTER TABLE `Stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `e_mail` varchar(60) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'Rose','Energy engineer','Cindy','Arias','gina86@page.com','937-460-4152','2002-03-15 13:08:21',2),(2,'Scott','Retail buyer','Anthony','Rose','seanstephenson@gmail.com','(157)308-4483x13763','1999-10-31 16:32:00',3),(3,'Best','Armed forces training and education officer','Bonnie','Hester','michaelwilliams@reed.biz','(887)778-9552x496','2001-09-07 13:24:26',3),(4,'Mckee','Scientist, marine','Emily','Riggs','debra09@gmail.com','215-291-4502x895','2010-08-24 11:05:41',4),(5,'Ryan','Systems developer','Leonard','Norman','ndavis@hotmail.com','001-084-244-1489x6566','1972-08-24 22:51:13',4),(6,'Rocha','Public relations officer','Nathan','Scott','ryanalexandra@hotmail.com','252-023-4455','1984-10-07 11:17:45',3),(7,'Spencer','Writer','Marie','Maynard','fscott@patterson.com','001-743-243-3590x49592','1980-10-13 14:06:16',2),(8,'Howell','Insurance claims handler','Christopher','Sanders','gtrujillo@johnson.com','720.080.4158x9230','1977-12-21 23:08:19',4),(9,'Kramer','Lexicographer','Andrew','Vazquez','nicole61@smith.com','300-836-6220x7855','1996-07-14 14:22:33',4),(10,'Warren','Secretary/administrator','Jason','Adams','robertsjoseph@coleman.com','2638182109','1972-11-06 20:21:36',1),(11,'Fletcher','Probation officer','Bradley','Osborne','smithcharles@gmail.com','+1-367-746-6895x06695','1989-10-05 16:27:04',1),(12,'Smith','Financial manager','Dawn','Ibarra','nguyenjohnny@gmail.com','348-434-6553x30760','2004-05-23 11:06:17',2),(13,'Davis','Insurance claims handler','Kristin','Vargas','christopher07@best-hernandez.com','948.021.3995','1988-04-25 01:55:13',3),(14,'Rocha','Telecommunications researcher','Kelly','Le','danielsmith@yahoo.com','(444)393-4287x617','2019-02-15 22:37:25',3),(15,'Cruz','Training and development officer','Diane','Middleton','julie68@gmail.com','361-312-9435','1989-05-10 14:10:59',3),(16,'Lowe','Bookseller','Ryan','Li','spencermatthew@hotmail.com','324-592-2352x503','1999-10-28 11:41:07',3),(17,'Parks','Maintenance engineer','Bruce','Herrera','christinawatts@castillo-ballard.net','776-998-0390x93616','2008-02-18 17:28:45',1),(18,'Brock','Designer, jewellery','Erik','Harrison','jacobsmindy@yahoo.com','3605228807','2012-05-15 13:27:28',2),(19,'Smith','Product manager','Matthew','Fuller','pamelajackson@yahoo.com','001-776-202-5385x593','2007-08-12 06:41:08',3),(20,'Perry','Programmer, applications','Robert','Miller','moralesphillip@hotmail.com','0829108191','2009-03-11 15:20:57',4);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_address`
--

DROP TABLE IF EXISTS `User_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_address` (
  `user_id` int(10) unsigned NOT NULL,
  `address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_address`
--

LOCK TABLES `User_address` WRITE;
/*!40000 ALTER TABLE `User_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `User_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-06 10:46:45
