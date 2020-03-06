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
  `number` int(10) unsigned DEFAULT NULL,
  `address_line1` varchar(50) DEFAULT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `town_city` varchar(50) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `region_state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
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
  `date` datetime DEFAULT NULL,
  `payment` char(5) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `delivery_method` varchar(50) DEFAULT NULL,
  `order_status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` smallint(6) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shop_id` (`shop_id`),
  KEY `fk_order_status_id` (`order_status_id`),
  KEY `user_id` (`user_id`),
  KEY `fk_address_id` (`address_id`),
  CONSTRAINT `fk_address_id` FOREIGN KEY (`address_id`) REFERENCES `Address` (`id`),
  CONSTRAINT `fk_order_status_id` FOREIGN KEY (`order_status_id`) REFERENCES `Order_status` (`id`),
  CONSTRAINT `fk_shop_id` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `Order_status` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_main`
--

LOCK TABLES `Order_main` WRITE;
/*!40000 ALTER TABLE `Order_main` DISABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_status`
--

LOCK TABLES `Order_status` WRITE;
/*!40000 ALTER TABLE `Order_status` DISABLE KEYS */;
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
  CONSTRAINT `fk_shop_id_a` FOREIGN KEY (`shop_id`) REFERENCES `Shop` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Price`
--

LOCK TABLES `Price` WRITE;
/*!40000 ALTER TABLE `Price` DISABLE KEYS */;
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
  `number` int(11) DEFAULT NULL,
  `address_line1` varchar(50) DEFAULT NULL,
  `address_line2` varchar(50) DEFAULT NULL,
  `town_city` varchar(50) DEFAULT NULL,
  `postcode` varchar(15) DEFAULT NULL,
  `region_state` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shop`
--

LOCK TABLES `Shop` WRITE;
/*!40000 ALTER TABLE `Shop` DISABLE KEYS */;
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
  `login` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `e_mail` varchar(30) DEFAULT NULL,
  `tel` varchar(25) DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `Role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
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

-- Dump completed on 2020-02-08 19:12:29
