CREATE DATABASE  IF NOT EXISTS `textile` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `textile`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: textile
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES (1,'Nike'),(2,'Boss'),(3,'Puma'),(4,'ba&sh '),(5,'Underarmor');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Men Shirts'),(2,'Men Jeans'),(3,'Accessories'),(4,'Ladies Frock'),(5,'Long sleeve shirt');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'None','None',NULL),(2,'UV Store','No 05, Colombo','0322554585');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `loyalty_no` text,
  `points` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Bat Man','0770022558','bat@gmail.com','1658840052256001',0),(2,'Super Man','0755559999','super@gmail.com','1658840154870002',52),(3,'Kavishka Nipun','0785555223','anuradha.studeo@gmail.com','1658877899242003',20),(4,'fdfv','0765545555','34@grn.u.yu','1658878294941004',5);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn`
--

DROP TABLE IF EXISTS `grn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  `unique_id` text,
  PRIMARY KEY (`id`),
  KEY `fk_grn_user1_idx` (`user_id`),
  KEY `fk_grn_supplier1_idx` (`supplier_id`),
  CONSTRAINT `fk_grn_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`),
  CONSTRAINT `fk_grn_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn`
--

LOCK TABLES `grn` WRITE;
/*!40000 ALTER TABLE `grn` DISABLE KEYS */;
INSERT INTO `grn` VALUES (2,'2022-07-23 16:33:19',1,1,'1658574199550-1'),(4,'2022-07-23 17:12:13',1,2,'1658576533158-1'),(5,'2022-07-23 17:37:54',1,1,'1658578074974-1'),(6,'2022-07-23 21:35:13',1,2,'1658592313660-1'),(7,'2022-07-24 21:20:16',1,1,'1658677816530-1'),(8,'2022-07-25 21:26:15',1,2,'1658678175312-1'),(9,'2022-07-26 11:03:13',1,2,'1658813593012-1'),(10,'2022-07-26 23:18:32',1,3,'1658857712726-1'),(11,'2022-07-26 23:25:20',1,3,'1658858120372-1'),(12,'2022-07-30 14:06:13',1,3,'1659170173299-1'),(13,'2022-08-05 23:52:03',1,3,'1659723723451-1'),(14,'2022-08-05 23:59:12',1,2,'1659724152008-1'),(16,'2022-08-06 00:11:00',1,1,'1659724860948-1'),(17,'2022-08-06 00:17:45',1,2,'1659725265873-1'),(18,'2022-08-06 00:28:43',1,1,'1659725923050-1'),(19,'2022-08-06 13:50:13',1,1,'1659774013694-1');
/*!40000 ALTER TABLE `grn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn_item`
--

DROP TABLE IF EXISTS `grn_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qty` int DEFAULT NULL,
  `buying_price` double DEFAULT NULL,
  `grn_id` int NOT NULL,
  `stock_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grn_item_grn1_idx` (`grn_id`),
  KEY `fk_grn_item_stock1_idx` (`stock_id`),
  CONSTRAINT `fk_grn_item_grn1` FOREIGN KEY (`grn_id`) REFERENCES `grn` (`id`),
  CONSTRAINT `fk_grn_item_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_item`
--

LOCK TABLES `grn_item` WRITE;
/*!40000 ALTER TABLE `grn_item` DISABLE KEYS */;
INSERT INTO `grn_item` VALUES (1,10,100,5,1),(2,5,1100,6,2),(3,2,1000,6,3),(4,10,750,6,4),(5,10,850,7,5),(6,10,1500,7,6),(7,2,2000,8,7),(8,10,1500,9,6),(9,10,1350,10,8),(10,23,1100,11,2),(11,10,1750,12,9),(12,5,3200,13,10),(13,10,1100,13,11),(14,10,950,13,12),(15,5,750,14,13),(16,5,1000,14,14),(17,5,900,16,15),(18,5,1000,16,16),(19,5,1100,17,17),(20,5,1500,17,18),(21,5,1500,18,19),(22,5,1300,18,3),(23,10,1000,19,20);
/*!40000 ALTER TABLE `grn_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grn_payment`
--

DROP TABLE IF EXISTS `grn_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grn_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `grn_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grn_payment_grn1_idx` (`grn_id`),
  CONSTRAINT `fk_grn_payment_grn1` FOREIGN KEY (`grn_id`) REFERENCES `grn` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grn_payment`
--

LOCK TABLES `grn_payment` WRITE;
/*!40000 ALTER TABLE `grn_payment` DISABLE KEYS */;
INSERT INTO `grn_payment` VALUES (1,1000,900,4),(2,5000,4000,5),(3,15000,0,6),(4,24000,500,7),(5,5000,1000,8),(6,15000,0,9),(7,13500,0,10),(8,25300,0,11),(9,20000,2500,12),(10,37000,500,13),(11,9000,250,14),(12,9500,0,16),(13,13000,0,17),(14,14000,0,18),(15,10000,0,19);
/*!40000 ALTER TABLE `grn_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `unique_id` text,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_user1_idx` (`user_id`),
  KEY `fk_invoice_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_invoice_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (3,'2022-07-24 02:50:12',1,'1658611212537-1',0),(4,'2022-07-24 15:26:01',1,'1658656561327-1',0),(5,'2022-07-24 15:28:12',1,'1658656692942-1',0),(6,'2022-07-24 16:09:23',1,'1658659163455-1',0),(7,'2022-07-24 16:17:08',1,'1658659628271-1',0),(8,'2022-07-24 16:24:22',1,'1658660062740-1',0),(9,'2022-07-24 16:29:54',1,'1658660394798-1',0),(11,'2022-07-24 16:36:31',1,'1658660791059-1',0),(12,'2022-07-24 16:40:32',1,'1658661032757-1',0),(13,'2022-07-24 16:44:38',1,'1658661278236-1',0),(14,'2022-07-02 16:53:02',1,'1658661782228-1',0),(15,'2022-07-25 17:16:33',1,'1658663193252-1',0),(16,'2022-07-26 03:26:24',1,'1658786184783-1',0),(17,'2022-07-26 10:59:14',1,'1658813354611-1',0),(18,'2022-07-26 12:18:16',1,'1658818096093-1',0),(19,'2022-07-26 12:20:15',1,'1658818215120-1',0),(21,'2022-07-26 19:11:00',1,'1658842860614-1',2),(22,'2022-07-26 19:25:05',1,'1658843705126-1',0),(23,'2022-07-26 19:26:51',1,'1658843811081-1',0),(24,'2022-07-26 19:27:27',1,'1658843847737-1',2),(26,'2022-07-26 23:04:06',1,'1658856845986-1',0),(27,'2022-07-26 23:11:02',1,'1658857262999-1',1),(28,'2022-07-27 22:29:50',1,'1658941190832-1',0),(29,'2022-07-30 14:08:50',1,'1659170330389-1',0),(30,'2022-08-05 23:53:51',1,'1659723831427-1',0),(31,'2022-08-05 23:56:47',1,'1659724007000-1',0),(32,'2022-08-06 00:34:59',1,'1659726299150-1',0),(33,'2022-08-06 13:54:10',1,'1659774250973-1',0);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_item`
--

DROP TABLE IF EXISTS `invoice_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `stock_id` int NOT NULL,
  `qty` int DEFAULT NULL,
  `invoice_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_item_invoice1_idx` (`invoice_id`),
  KEY `fk_invoice_item_stock1_idx` (`stock_id`),
  CONSTRAINT `fk_invoice_item_invoice1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`),
  CONSTRAINT `fk_invoice_item_stock1` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_item`
--

LOCK TABLES `invoice_item` WRITE;
/*!40000 ALTER TABLE `invoice_item` DISABLE KEYS */;
INSERT INTO `invoice_item` VALUES (1,1,1,3),(2,3,1,3),(3,4,10,5),(4,1,1,6),(5,3,1,6),(6,1,1,7),(7,1,1,8),(8,1,1,9),(9,1,1,11),(10,1,1,12),(11,1,1,13),(12,1,1,14),(13,1,1,15),(14,2,2,16),(15,6,2,17),(16,5,1,18),(17,6,1,18),(18,7,1,19),(19,2,1,19),(20,2,1,21),(21,6,1,23),(22,6,1,24),(23,2,1,27),(24,8,1,28),(25,5,5,28),(26,9,6,29),(27,12,5,30),(28,5,1,30),(29,12,1,31),(30,11,1,31),(31,14,1,32),(32,12,1,32),(33,20,5,33);
/*!40000 ALTER TABLE `invoice_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_payment`
--

DROP TABLE IF EXISTS `invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `invoice_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_invoice_payment_invoice1_idx` (`invoice_id`),
  CONSTRAINT `fk_invoice_payment_invoice1` FOREIGN KEY (`invoice_id`) REFERENCES `invoice` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_payment`
--

LOCK TABLES `invoice_payment` WRITE;
/*!40000 ALTER TABLE `invoice_payment` DISABLE KEYS */;
INSERT INTO `invoice_payment` VALUES (1,2000,380,3),(2,10000,0,5),(3,2000,380,6),(4,120,0,7),(5,200,80,8),(6,120,0,9),(7,120,0,11),(8,120,0,12),(9,200,80,13),(10,300,180,14),(11,120,0,15),(12,3000,400,16),(13,4000,100,17),(14,3000,200,18),(15,5000,700,19),(16,1300,0,21),(17,3000,0,22),(18,2000,0,23),(19,2000,0,24),(20,1300,65,26),(21,1300,65,27),(22,7000,1240,28),(23,12000,120,29),(24,8000,750,30),(25,3000,250,31),(26,2500,-50,32),(27,10000,500,33);
/*!40000 ALTER TABLE `invoice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_brand1_idx` (`brand_id`),
  KEY `fk_product_category1_idx` (`category_id`),
  CONSTRAINT `fk_product_brand1` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'cotton / v collar / t-shirt',2,1),(2,'Tite Skirt / Black',4,4),(3,'Casual short / Gray',3,2),(4,'Wet Look / Blue',1,1),(5,'Dri fit / t-shrit',5,1),(6,'Nike t-shirt',1,1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `qty` int DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_stock_product1_idx` (`product_id`),
  CONSTRAINT `fk_stock_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,0,130,1),(2,0,1300,4),(3,0,1500,2),(4,0,1000,3),(5,3,1000,1),(6,5,2000,2),(7,1,3000,3),(8,9,1400,2),(9,4,2200,2),(10,5,3500,3),(11,9,1500,5),(12,3,1250,4),(13,5,1000,2),(14,4,1300,1),(15,5,1000,4),(16,5,1200,2),(17,5,1200,1),(18,5,2000,5),(19,5,1650,3),(20,5,2000,6);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `company_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_supplier_company1_idx` (`company_id`),
  CONSTRAINT `fk_supplier_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'S.K.Kumara','None','0772233652',1),(2,'T.Suresh','suresh@gmail.com','0785599858',2),(3,'Sprider Man','sprider@gmail.com','0788888888',1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `contact_no` varchar(10) DEFAULT NULL,
  `user_type_id` int NOT NULL,
  `user_status_id` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user_user_type_idx` (`user_type_id`),
  KEY `fk_user_user_status1_idx` (`user_status_id`),
  CONSTRAINT `fk_user_user_status1` FOREIGN KEY (`user_status_id`) REFERENCES `user_status` (`id`),
  CONSTRAINT `fk_user_user_type` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nipun','Anuradha','123','0770087558',1,1),(2,'Kavishka','Nipun','123','0788888888',2,1),(3,'Frank','Fdo','321','0725454545',2,2);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_status`
--

DROP TABLE IF EXISTS `user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_status`
--

LOCK TABLES `user_status` WRITE;
/*!40000 ALTER TABLE `user_status` DISABLE KEYS */;
INSERT INTO `user_status` VALUES (1,'Active'),(2,'Inactive');
/*!40000 ALTER TABLE `user_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'Admin'),(2,'Cashire');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-06 21:24:54
