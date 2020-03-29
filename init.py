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
INSERT INTO `Address` VALUES (1,8778,'862 Herman Course Apt. 780','7450 Joseph Inlet Apt. 682','East Matthewmouth','16834','Hawaii','Antigua and Barbuda'),(2,9266,'9827 Snow Junctions Apt. 208','91834 Booth Plains','Amberbury','96124','Colorado','Germany'),(3,36192,'5299 Wallace Unions Suite 017','5419 Franklin Trail','New Kenneth','40991','New Hampshire','Zambia'),(4,83538,'500 Collins Fall Suite 268','335 Ingram Crossing Suite 574','East Rebeccatown','24453','Georgia','Switzerland'),(5,3207,'29152 Shelly Overpass Apt. 243','0050 Richard Rapid Apt. 766','Lake Brookeberg','87420','Florida','Holy See (Vatican City State)'),(6,76430,'30446 Kathy Hills','16012 Hubbard Plaza','Tanyastad','73001','South Carolina','Kiribati'),(7,84581,'0652 Lyons Forks Apt. 012','991 Ramirez Mountain','South Barbaraburgh','13386','Massachusetts','Andorra'),(8,8752,'2383 Jason Gateway','703 Debra Club Apt. 847','Briannaville','01982','Oklahoma','Syrian Arab Republic'),(9,71935,'8112 David Parkway','10678 Barbara Expressway','New Hannah','49355','Michigan','Brunei Darussalam'),(10,402,'50827 Fleming Stream','80664 Watson Landing','New Patrick','27736','Louisiana','Jordan'),(11,1005,'3151 Jeffrey Isle Apt. 999','600 Wilson Point','North Lawrencetown','14890','Colorado','Oman'),(12,4905,'092 Rivera Drive Apt. 317','21751 Brown Well','East Kristintown','87098','Vermont','Palau'),(13,869,'5411 Jonathan Ridges Apt. 237','8157 Amy Forges Suite 246','East Annettechester','88881','Massachusetts','Turkmenistan'),(14,36771,'0239 Alice Falls Apt. 647','743 Bonilla Overpass Suite 389','North Derek','03159','Alabama','Moldova'),(15,15949,'73135 Smith Knoll Suite 986','421 Lam Lodge Suite 422','Kaiserstad','24709','Maryland','Venezuela'),(16,43323,'1994 Wilson Viaduct Suite 826','46979 Wendy Expressway Suite 772','North Tracy','74177','Oklahoma','Marshall Islands'),(17,2247,'63014 Davis Parkway Apt. 294','0243 Paul Alley Apt. 986','Rebeccaport','39319','Rhode Island','Gabon'),(18,843,'6090 Reyes Park','2539 Doris Expressway Suite 082','Stevenview','57916','Connecticut','Colombia'),(19,5761,'107 James Plain','952 Butler Canyon','Paulville','08764','Alabama','Mauritania'),(20,45509,'474 Bradford Stream','70599 Richard Path','Christinastad','79618','Maryland','Sweden');
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
INSERT INTO `Article` VALUES (1,'North Sydneyport','6149 Simon Place'),(2,'Nicolehaven','25566 Bell Village Apt. 103'),(3,'Kristinefurt','845 Sparks Streets'),(4,'New Carl','14298 Bryan Ridge'),(5,'South Roy','63978 Michael Avenue'),(6,'Gutierrezshire','97294 Marshall Club'),(7,'Grayland','4982 Jordan Corners Apt. 265'),(8,'South Robert','24730 Joshua Light'),(9,'Bakerland','375 Baker Fall Apt. 724'),(10,'South Steventon','3610 Hector Hill Apt. 434'),(11,'East Jenniferport','14086 Sean Field'),(12,'East Jason','621 Gordon Fork'),(13,'Port Amyside','630 Nancy Village'),(14,'Kristinaburgh','8636 Kennedy Mill'),(15,'East Kevin','4470 Fletcher Crest'),(16,'North Ericberg','9266 Sarah Lake Suite 749'),(17,'East Stephanietown','8685 Tonya Creek'),(18,'Lake Catherine','0746 Mathews Ranch Apt. 488'),(19,'New Natashaport','86925 Allen Isle Suite 402'),(20,'Shannonbury','00891 Michael Walk Suite 658'),(21,'Johnstonfort','151 Jason Groves'),(22,'Michaelberg','987 Williams Springs'),(23,'Jenniferchester','114 Rebecca Greens'),(24,'Kevinfurt','6879 Jordan Brook Apt. 996'),(25,'North Jason','223 Rick Key');
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
INSERT INTO `Composition` VALUES (1,12,203.000,0),(1,4,131.000,0),(1,8,215.000,0),(1,12,393.000,0),(1,6,119.000,0),(1,2,373.000,0),(1,1,427.000,0),(1,11,145.000,0),(1,8,366.000,0),(1,12,358.000,0),(2,4,362.000,0),(2,2,244.000,0),(2,11,198.000,0),(2,11,497.000,0),(2,8,490.000,0),(2,12,167.000,0),(2,4,340.000,0),(2,10,257.000,0),(2,6,188.000,0),(2,3,447.000,0),(3,12,308.000,0),(3,5,272.000,0),(3,4,216.000,0),(3,6,226.000,0),(3,2,469.000,0),(3,1,391.000,0),(3,11,413.000,0),(3,6,450.000,0),(3,5,181.000,0),(3,2,306.000,0),(4,12,169.000,0),(4,8,290.000,0),(4,2,265.000,0),(4,1,222.000,0),(4,12,311.000,0),(4,10,476.000,0),(4,9,472.000,0),(4,2,347.000,0),(4,4,120.000,0),(4,2,318.000,0),(5,9,356.000,0),(5,9,294.000,0),(5,6,183.000,0),(5,4,385.000,0),(5,10,165.000,0),(5,11,405.000,0),(5,3,427.000,0),(5,9,212.000,0),(5,2,422.000,0),(5,4,436.000,0),(6,3,310.000,0),(6,5,365.000,0),(6,10,310.000,0),(6,10,449.000,0),(6,7,199.000,0),(6,2,306.000,0),(6,6,213.000,0),(6,11,140.000,0),(6,5,142.000,0),(6,1,197.000,0),(7,6,333.000,0),(7,10,255.000,0),(7,6,449.000,0),(7,1,105.000,0),(7,10,411.000,0),(7,8,116.000,0),(7,6,238.000,0),(7,5,396.000,0),(7,1,306.000,0),(7,6,239.000,0),(8,9,371.000,0),(8,11,410.000,0),(8,9,352.000,0),(8,5,303.000,0),(8,9,217.000,0),(8,4,254.000,0),(8,2,203.000,0),(8,7,184.000,0),(8,6,164.000,0),(8,7,375.000,0),(9,9,320.000,0),(9,7,176.000,0),(9,5,253.000,0),(9,1,416.000,0),(9,7,247.000,0),(9,11,354.000,0),(9,4,245.000,0),(9,8,295.000,0),(9,3,304.000,0),(9,10,303.000,0),(10,3,494.000,0),(10,2,439.000,0),(10,6,446.000,0),(10,2,107.000,0),(10,7,428.000,0),(10,10,488.000,0),(10,4,112.000,0),(10,5,127.000,0),(10,5,208.000,0),(10,4,486.000,0),(11,7,300.000,0),(11,8,383.000,0),(11,2,196.000,0),(11,7,350.000,0),(11,7,463.000,0),(11,2,247.000,0),(11,6,410.000,0),(11,9,470.000,0),(11,12,177.000,0),(11,4,249.000,0),(12,6,144.000,0),(12,2,176.000,0),(12,4,338.000,0),(12,5,330.000,0),(12,7,145.000,0),(12,3,325.000,0),(12,1,319.000,0),(12,10,334.000,0),(12,7,243.000,0),(12,1,273.000,0),(13,12,315.000,0),(13,10,403.000,0),(13,11,202.000,0),(13,8,113.000,0),(13,11,341.000,0),(13,8,498.000,0),(13,3,456.000,0),(13,6,155.000,0),(13,7,233.000,0),(13,3,389.000,0),(14,7,411.000,0),(14,7,272.000,0),(14,12,337.000,0),(14,1,219.000,0),(14,12,224.000,0),(14,9,345.000,0),(14,4,491.000,0),(14,9,372.000,0),(14,11,284.000,0),(14,10,294.000,0),(15,2,292.000,0),(15,3,388.000,0),(15,12,326.000,0),(15,2,127.000,0),(15,5,214.000,0),(15,11,182.000,0),(15,2,269.000,0),(15,8,323.000,0),(15,9,220.000,0),(15,3,488.000,0),(16,3,447.000,0),(16,7,111.000,0),(16,10,331.000,0),(16,11,224.000,0),(16,10,364.000,0),(16,1,430.000,0),(16,4,453.000,0),(16,3,208.000,0),(16,6,173.000,0),(16,12,144.000,0),(17,4,102.000,0),(17,7,121.000,0),(17,2,480.000,0),(17,3,336.000,0),(17,6,310.000,0),(17,9,497.000,0),(17,10,310.000,0),(17,5,320.000,0),(17,7,244.000,0),(17,11,212.000,0),(18,2,442.000,0),(18,9,335.000,0),(18,6,324.000,0),(18,3,434.000,0),(18,8,475.000,0),(18,6,343.000,0),(18,6,137.000,0),(18,10,144.000,0),(18,11,496.000,0),(18,6,157.000,0),(19,9,347.000,0),(19,11,181.000,0),(19,11,409.000,0),(19,1,392.000,0),(19,11,168.000,0),(19,12,483.000,0),(19,10,479.000,0),(19,3,228.000,0),(19,6,316.000,0),(19,6,325.000,0),(20,4,329.000,0),(20,11,294.000,0),(20,2,147.000,0),(20,11,379.000,0),(20,6,205.000,0),(20,8,494.000,0),(20,1,410.000,0),(20,12,376.000,0),(20,12,339.000,0),(20,11,478.000,0),(21,11,367.000,0),(21,10,381.000,0),(21,5,160.000,0),(21,9,126.000,0),(21,5,119.000,0),(21,10,164.000,0),(21,11,306.000,0),(21,4,444.000,0),(21,9,174.000,0),(21,1,145.000,0),(22,4,248.000,0),(22,6,500.000,0),(22,4,458.000,0),(22,12,240.000,0),(22,8,164.000,0),(22,7,179.000,0),(22,11,166.000,0),(22,9,360.000,0),(22,6,428.000,0),(22,7,450.000,0),(23,11,170.000,0),(23,9,317.000,0),(23,8,220.000,0),(23,9,295.000,0),(23,3,425.000,0),(23,3,151.000,0),(23,3,197.000,0),(23,8,284.000,0),(23,5,304.000,0),(23,11,201.000,0),(24,12,168.000,0),(24,10,155.000,0),(24,6,396.000,0),(24,5,429.000,0),(24,9,463.000,0),(24,11,300.000,0),(24,12,339.000,0),(24,4,259.000,0),(24,11,287.000,0),(24,6,382.000,0),(25,5,419.000,0),(25,3,184.000,0),(25,5,365.000,0),(25,8,157.000,0),(25,5,322.000,0),(25,10,331.000,0),(25,5,143.000,0),(25,5,160.000,0),(25,8,248.000,0),(25,12,116.000,0);
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
INSERT INTO `Ingredient` VALUES (1,'DarkOrchid'),(2,'MediumVioletRed'),(3,'GreenYellow'),(4,'MidnightBlue'),(5,'Gainsboro'),(6,'SlateBlue'),(7,'Yellow'),(8,'DarkGreen'),(9,'BlueViolet'),(10,'CornflowerBlue'),(11,'AntiqueWhite'),(12,'DarkCyan');
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
INSERT INTO `Order_line` VALUES (12,1,1.000),(14,2,1.000),(20,3,1.000),(22,4,1.000),(2,5,1.000),(18,6,1.000),(25,7,1.000),(13,8,1.000),(2,9,1.000),(8,10,1.000),(10,11,1.000),(18,12,1.000),(19,13,1.000),(12,14,1.000),(12,15,1.000),(24,16,1.000),(5,17,1.000),(6,18,1.000),(12,19,1.000),(13,20,1.000);
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
  `payment` char(5) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `delivery_method` varchar(50) DEFAULT NULL,
  `order_status_id` int(11) NOT NULL,
  `shop_id` smallint(6) NOT NULL,
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
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
INSERT INTO `Order_main` VALUES (1,'1982-12-10 12:41:05','y','card','delivered',4,4,3,9),(2,'2017-10-06 07:51:04','n','check','delivered',3,2,1,14),(3,'2000-06-11 01:32:24','y','check','on_the_spot',2,5,15,1),(4,'1970-09-13 18:11:02','n','check','on_the_spot',3,4,16,18),(5,'1995-01-04 20:21:12','n','cash','delivered',1,5,7,13),(6,'1992-03-06 10:55:30','n','check','to_take_away',2,5,14,8),(7,'1981-06-06 10:22:50','y','card','to_take_away',4,3,16,11),(8,'1982-01-05 02:26:38','y','card','on_the_spot',4,2,8,19),(9,'1976-05-02 06:33:07','n','cash','on_the_spot',3,3,19,1),(10,'2014-11-28 13:10:53','n','card','delivered',4,1,13,17),(11,'1978-10-26 21:29:01','n','card','on_the_spot',1,2,6,8),(12,'1998-06-14 08:59:39','n','cash','to_take_away',2,4,14,6),(13,'1970-03-31 02:25:22','n','check','on_the_spot',2,1,15,8),(14,'1984-09-04 21:24:25','y','cash','to_take_away',4,4,5,16),(15,'2017-06-06 19:44:57','y','cash','on_the_spot',2,3,2,2),(16,'1980-07-17 04:10:08','n','check','delivered',1,1,6,12),(17,'2017-04-15 07:46:03','n','cash','delivered',3,2,10,3),(18,'1982-11-24 04:17:05','y','card','delivered',1,1,13,6),(19,'2014-10-08 09:28:53','n','cash','delivered',2,2,6,3),(20,'1970-03-20 18:56:35','y','check','on_the_spot',1,2,16,2);
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
INSERT INTO `Order_preparation` VALUES (15,1),(4,2),(4,3),(4,4),(2,5),(16,6),(4,7),(12,8),(7,9),(1,10),(1,11),(10,12),(2,13),(2,14),(9,15),(20,16),(4,17),(2,18),(17,19),(5,20);
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
INSERT INTO `Price` VALUES (1,1,20.00),(1,2,23.00),(1,3,27.00),(1,4,30.00),(1,5,25.00),(1,6,23.00),(1,7,15.00),(1,8,16.00),(1,9,29.00),(1,10,11.00),(1,11,20.00),(1,12,19.00),(2,1,14.00),(2,2,27.00),(2,3,13.00),(2,4,15.00),(2,5,24.00),(2,6,25.00),(2,7,23.00),(2,8,26.00),(2,9,16.00),(2,10,29.00),(2,11,19.00),(2,12,18.00),(3,1,24.00),(3,2,15.00),(3,3,14.00),(3,4,22.00),(3,5,23.00),(3,6,22.00),(3,7,20.00),(3,8,12.00),(3,9,15.00),(3,10,22.00),(3,11,17.00),(3,12,10.00),(4,1,18.00),(4,2,13.00),(4,3,16.00),(4,4,22.00),(4,5,19.00),(4,6,22.00),(4,7,29.00),(4,8,29.00),(4,9,16.00),(4,10,28.00),(4,11,24.00),(4,12,13.00),(5,1,10.00),(5,2,21.00),(5,3,17.00),(5,4,30.00),(5,5,30.00),(5,6,10.00),(5,7,21.00),(5,8,22.00),(5,9,10.00),(5,10,26.00),(5,11,19.00),(5,12,29.00);
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
INSERT INTO `Shop` VALUES (1,382,'5684 Joseph Points Apt. 466','36895 Jennifer Plaza Suite 958','Ryanfurt','74855','North Dakota','Cyprus'),(2,7803,'575 Justin Haven','724 Jenny Crest Suite 707','Joestad','17885','Mississippi','British Virgin Islands'),(3,4466,'676 Ronald Knolls','977 Kenneth Haven','East Andreaberg','24216','Ohio','Grenada'),(4,40,'88093 Reed Courts Suite 559','9315 Brown Curve','South Lisa','95450','North Dakota','Tanzania'),(5,8713,'4185 Carlos Tunnel Apt. 021','104 Freeman Meadows','North Deborah','87828','North Dakota','Andorra');
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
INSERT INTO `Stock` VALUES (1,935.000,1),(2,633.000,1),(3,838.000,1),(4,841.000,1),(5,327.000,1),(6,491.000,1),(7,89.000,1),(8,926.000,1),(9,445.000,1),(10,323.000,1),(11,464.000,1),(12,653.000,1),(1,784.000,2),(2,148.000,2),(3,734.000,2),(4,658.000,2),(5,771.000,2),(6,911.000,2),(7,797.000,2),(8,205.000,2),(9,352.000,2),(10,442.000,2),(11,156.000,2),(12,189.000,2),(1,374.000,3),(2,189.000,3),(3,986.000,3),(4,645.000,3),(5,641.000,3),(6,159.000,3),(7,86.000,3),(8,246.000,3),(9,980.000,3),(10,588.000,3),(11,172.000,3),(12,29.000,3),(1,654.000,4),(2,650.000,4),(3,842.000,4),(4,373.000,4),(5,492.000,4),(6,159.000,4),(7,0.000,4),(8,784.000,4),(9,256.000,4),(10,570.000,4),(11,253.000,4),(12,216.000,4),(1,327.000,5),(2,434.000,5),(3,735.000,5),(4,276.000,5),(5,223.000,5),(6,154.000,5),(7,953.000,5),(8,754.000,5),(9,325.000,5),(10,857.000,5),(11,488.000,5),(12,185.000,5);
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
INSERT INTO `User` VALUES (1,'Carter','Research scientist (physical sciences)','Randy','Hamilton','elizabethjohnson@gmail.com','+1-124-476-0967','1988-03-14 12:04:06',1),(2,'Gross','Clinical cytogeneticist','Bryan','White','jacobcollins@leblanc.info','764-276-4525x4584','2013-01-16 14:44:23',2),(3,'Wheeler','Armed forces training and education officer','Adam','Brown','pamelaprince@gmail.com','001-429-563-1749x03513','1971-07-03 21:34:51',2),(4,'Stewart','Art therapist','Benjamin','Davis','mark29@hodges.org','637-076-1644x17518','2019-08-07 03:17:23',3),(5,'Logan','Air cabin crew','Sandra','Woodard','annevazquez@yahoo.com','+1-038-342-0360x4291','2008-02-08 21:50:46',4),(6,'Smith','Engineer, energy','Amber','Curry','carriehensley@yahoo.com','101-504-3852','1998-10-29 09:21:43',2),(7,'Johns','Lawyer','Shane','Garcia','rduncan@yahoo.com','(437)333-6861','2011-10-31 11:05:04',2),(8,'Fisher','Musician','Kevin','Hicks','cavery@ford-quinn.com','796.775.5099x85636','1996-09-12 12:49:55',2),(9,'Little','Rural practice surveyor','Bryan','Russell','hjoyce@anderson.com','(705)446-3972x400','2004-10-29 10:43:25',1),(10,'Carpenter','Geographical information systems officer','Jasmine','Smith','katiedavis@gmail.com','612.933.2189','1976-01-28 21:53:25',3),(11,'Miller','Medical technical officer','Brian','Trevino','lmatthews@gmail.com','+1-279-477-3838x59384','1977-09-02 01:50:26',4),(12,'Williams','Claims inspector/assessor','Todd','Brown','twilson@yahoo.com','4195352997','1978-10-31 08:28:57',4),(13,'Griffith','Editor, magazine features','John','Butler','jonesjerome@hotmail.com','+1-529-560-9408','1971-08-18 22:29:03',4),(14,'Morris','Human resources officer','Kaitlyn','Ortiz','lunaangela@gmail.com','020.428.3449x2902','2013-03-17 06:34:51',3),(15,'Greene','Armed forces training and education officer','Jonathan','Franklin','laura87@white.com','001-275-819-7575x265','1994-06-26 13:29:33',2),(16,'Jones','Insurance risk surveyor','Adam','Durham','jennifertaylor@gmail.com','+1-547-202-3139','1973-03-25 16:05:23',4),(17,'Rhodes','Food technologist','Laurie','Schultz','michele11@perkins.com','572.431.5314','1989-08-08 06:36:44',3),(18,'Nolan','Social worker','Daniel','Schneider','campbellmichael@ford.com','001-692-641-6304x07669','1988-09-13 09:49:45',3),(19,'Hernandez','Teacher, early years/pre','Joan','Burton','coxgeorge@yahoo.com','733-619-5147','1979-08-12 02:33:50',1),(20,'Daniels','Chemist, analytical','Steven','Meyer','garciaarthur@parker.com','+1-738-134-8338x8321','1996-11-04 07:07:01',1);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-29 15:02:09
