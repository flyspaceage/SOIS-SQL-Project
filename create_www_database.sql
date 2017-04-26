CREATE DATABASE  IF NOT EXISTS `www` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `www`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: www
-- ------------------------------------------------------
-- Server version	5.7.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `can_guide`
--

DROP TABLE IF EXISTS `can_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `can_guide` (
  `trip_type_code` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  PRIMARY KEY (`trip_type_code`,`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `can_guide`
--

LOCK TABLES `can_guide` WRITE;
INSERT INTO `can_guide` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,4),(2,7);
UNLOCK TABLES;

--
-- Table structure for table `destination`
--

DROP TABLE IF EXISTS `destination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destination` (
  `destination_code` int(11) NOT NULL AUTO_INCREMENT,
  `destination_name` varchar(45) NOT NULL,
  PRIMARY KEY (`destination_code`),
  UNIQUE KEY `destination_code_UNIQUE` (`destination_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destination`
--

LOCK TABLES `destination` WRITE;
INSERT INTO `destination` VALUES (1,'Lower Wisconsin River'),(2,'Upper Wisconsin River'),(3,'Wolf River');
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `nick_name` varchar(45) NOT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  `home_phone` varchar(20) DEFAULT NULL,
  `availability_notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `nick_name_UNIQUE` (`nick_name`),
  UNIQUE KEY `employee_id_UNIQUE` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
INSERT INTO `employees` VALUES (1,'Wilma','Carson','Wilma','414-555-1234','414-555-9876','Year round, full-time'),(2,'Walter','Carson','Bud','414-555-1235','414-555-9876','Year round, full-time, except for hunting season'),(3,'Anne','Schultz','Annie','414-555-1266','414-555-2121','Year round, full-time, except August vacation'),(4,'Joshua','Green','Josh','414-555-1268',NULL,'Summers, full-time'),(5,'William','Wagner','Billy','414-555-1271','414-555-3259','Summers, full-time, returns to school on August 19th'),(6,'Constance','Simms','Summer','414-555-1288',NULL,'Year round, part-time, as needed'),(7,'Blair','McArthur','Blinky','414-555-1289','414-555-2121','Year round, full-time, except for May vacation');
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `exp_code` int(11) NOT NULL AUTO_INCREMENT,
  `exp_name` varchar(45) NOT NULL,
  PRIMARY KEY (`exp_code`),
  UNIQUE KEY `experience_code_UNIQUE` (`exp_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
INSERT INTO `experience` VALUES (1,'None'),(2,'Novice'),(3,'Intermediate'),(4,'Expert');
UNLOCK TABLES;

--
-- Table structure for table `gathering_point`
--

DROP TABLE IF EXISTS `gathering_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gathering_point` (
  `gathering_point_id` int(11) NOT NULL AUTO_INCREMENT,
  `gathering_point_description` varchar(180) NOT NULL,
  PRIMARY KEY (`gathering_point_id`),
  UNIQUE KEY `gathering_point_id_UNIQUE` (`gathering_point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gathering_point`
--

LOCK TABLES `gathering_point` WRITE;
INSERT INTO `gathering_point` VALUES (1,'River Valley High School (Parking Lot), 660 Varsity Blvd, Spring Green, WI 53588'),(2,'Plum Lake (parking lot), south side of lake, access off County Highway N, in town of Boulder Junction'),(3,'Hollister Boat Launch located 5 miles north of Langlade on Highway 55, just past Ninemile Creek, W. Hollister Road leads to the river at Burnt Point Rapids');
UNLOCK TABLES;

--
-- Table structure for table `guests`
--

DROP TABLE IF EXISTS `guests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guests` (
  `guest_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `exp_code` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `swimmer` varchar(20) DEFAULT NULL,
  `mobile_phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`guest_id`),
  UNIQUE KEY `guest_id_UNIQUE` (`guest_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guests`
--

LOCK TABLES `guests` WRITE;
INSERT INTO `guests` VALUES (1,'Margie','Samuels','2',31,130,'Yes','847-555-5201'),(2,'Bart','Samuels','2',44,195,'Yes',NULL),(3,'Lilly','Samuels','2',18,101,'Yes',NULL),(4,'Bart','Samuels Jr.','1',6,60,'No',NULL),(5,'George','Fogerty','4',28,160,'Yes','414-555-7654'),(6,'Bruce','Simmons','4',5,150,'Yes',NULL),(7,'Marion','Glaston','2',61,135,'Yes','414-555-4453'),(8,'Marie','Glaston','2',61,135,'Yes',NULL),(9,'Lamar','Lincoln','1',25,175,NULL,'414-555-9988'),(10,'Jamal','Clark','4',18,150,'Yes','414-444-8234'),(11,'Isaiah','Smith','3',23,160,'Yes','414-666-1234'),(12,'Isaac','Jones','4',56,180,'Yes','414-221-9900'),(13,'Frank','Saco','3',45,190,'Yes',NULL),(14,'Barb','Saco','4',46,110,'Yes','414-223-4343'),(15,'Tammy','Garbanzo','4',34,110,'Yes',NULL),(16,'Geoff','Garbanzo','4',35,145,'Yes','414-697-0098'),(17,'Thor','von Hammer','3',69,260,'Yes','414-999-9988'),(18,'Barbie','von Hammer','4',68,120,'Yes',NULL),(19,'Sadie','Class','4',23,110,'Yes','414-909-0009'),(20,'Buster','Class','4',22,140,'Yes',NULL),(21,'Carmine','Ianelli','3',27,150,'No','414-323-9999'),(22,'Carmello','Ianelli','4',28,150,'Yes',NULL),(23,'Giovani','Ianelli','3',29,150,'Yes',NULL),(24,'Giuseppe','Ianelli','2',20,135,'No',NULL),(25,'Anastasia','Rodkovich','4',21,105,'Yes','414-888-0057'),(26,'Lucy','di Pepo','4',21,105,'Yes','414-888-0284'),(27,'Grant','Thornton','3',88,240,'Yes','414-213-2354'),(28,'Barb','Thornton','3',67,160,'Yes',NULL),(29,'Lucifer','Hitachi','4',18,140,'Yes','414-221-2132'),(30,'Cran','Thistle','3',19,110,'Yes','414-666-4545'),(31,'Carl','Bad','1',19,170,'No','414-909-9898'),(32,'Mo','Syke','2',43,180,'Yes','414-898-9898'),(33,'Guy','Ferrari','3',57,180,'Yes','414-999-1123'),(34,'Mary Jane','Meunier','4',55,100,'Yes','414-343-0098'),(35,'Charlie','Bop','4',44,150,'Yes','414-555-0090'),(36,'Sadie','Allgood','3',23,190,'Yes','414-989-6644'),(37,'John','Lombardi','4',68,180,'Yes','414-909-1234'),(38,'Peter','McAvoy','3',55,190,'Yes','414-808-7766'),(39,'Krishna','Manjel','4',39,150,'Yes','414-202-9898'),(40,'Valentino','Carmine','4',40,200,'Yes','414-876-9876'),(41,'Catalina','Carmine','3',41,100,'Yes','414-876-9876'),(42,'Catarina','Carmine','2',7,60,'No',NULL),(43,'Joe','Soup','4',18,165,'Yes','414-313-9876'),(44,'Vivian','Summer','3',18,125,'Yes','414-912-3453');
UNLOCK TABLES;

--
-- Table structure for table `plays_role`
--

DROP TABLE IF EXISTS `plays_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plays_role` (
  `employee_id` int(11) NOT NULL,
  `role_code` int(11) NOT NULL,
  PRIMARY KEY (`employee_id`,`role_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plays_role`
--

LOCK TABLES `plays_role` WRITE;
INSERT INTO `plays_role` VALUES (1,1),(1,2),(1,3),(2,2),(2,3),(3,1),(3,2),(3,3),(4,2),(4,3),(5,3),(6,1),(6,2),(7,2),(7,3);
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation` (
  `trip_number` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  PRIMARY KEY (`trip_number`,`guest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
INSERT INTO `reservation` VALUES (561,10),(561,11),(561,12),(561,13),(561,14),(561,15),(561,16),(561,17),(561,18),(561,19),(562,1),(562,2),(562,3),(562,4),(562,5),(562,6),(562,7),(562,8),(562,9),(563,20),(563,21),(563,22),(563,23),(563,24),(563,25),(563,26),(563,27),(564,28),(564,29),(564,30),(564,31),(564,32),(564,33),(565,34),(565,35),(565,36),(565,37),(565,38),(565,39),(566,40),(566,41),(566,42),(566,43),(567,1),(567,44),(569,2),(569,3),(569,4),(569,5),(570,6),(571,20),(571,21),(571,22),(571,23),(571,24),(571,25),(571,26),(572,34),(572,35),(572,36),(572,37),(572,38),(572,39),(572,40),(573,1),(573,2),(573,3),(574,30),(574,31),(575,32),(575,33),(576,27),(576,28),(576,29),(576,30),(576,31),(576,32),(576,33),(576,34),(577,35),(577,36),(577,37),(577,38),(577,39),(577,40),(577,41),(577,42),(577,43),(577,44),(578,1),(578,2),(578,3),(578,4),(578,5),(578,6),(579,7),(579,8),(579,9),(579,10),(579,11),(579,12),(579,13),(579,14),(579,15),(580,16),(580,17),(581,18),(581,19),(581,20),(581,21),(581,22),(582,23),(582,24),(582,25),(582,26),(582,27),(582,28),(583,29),(583,33),(583,34),(583,35),(583,36),(583,37),(583,38),(584,1);
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_code` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(45) NOT NULL,
  PRIMARY KEY (`role_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
INSERT INTO `role` VALUES (1,'Reservations'),(2,'Guide'),(3,'Gear');
UNLOCK TABLES;

--
-- Table structure for table `trip_type`
--

DROP TABLE IF EXISTS `trip_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trip_type` (
  `trip_type_code` int(11) NOT NULL AUTO_INCREMENT,
  `trip_type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`trip_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip_type`
--

LOCK TABLES `trip_type` WRITE;
INSERT INTO `trip_type` VALUES (1,'Kayak'),(2,'Canoe'),(3,'Raft');
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `trip_number` int(11) NOT NULL AUTO_INCREMENT,
  `destination_code` int(11) NOT NULL,
  `trip_type_code` int(11) NOT NULL,
  `trip_date` date NOT NULL,
  `trip_capacity` int(11) NOT NULL,
  `guide_employee_id` int(11) NOT NULL,
  `gear_employee_id` int(11) DEFAULT NULL,
  `late_arrival` time(2) NOT NULL,
  `departure_time` time(2) NOT NULL,
  `return_eta` time(2) NOT NULL,
  `gathering_point_id` int(11) NOT NULL,
  PRIMARY KEY (`trip_number`),
  UNIQUE KEY `trip_number_UNIQUE` (`trip_number`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
INSERT INTO `trips` VALUES (561,1,2,'2014-08-02',10,4,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(562,1,1,'2014-08-02',10,3,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(563,1,2,'2014-08-09',10,4,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(564,1,1,'2014-08-09',10,3,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(565,1,2,'2014-08-16',10,4,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(566,1,1,'2014-08-16',10,3,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(567,1,2,'2014-08-23',10,4,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(568,1,1,'2014-08-23',10,3,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(569,1,2,'2014-08-30',10,4,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(570,1,1,'2014-08-30',10,3,NULL,'07:30:00.00','08:15:00.00','04:00:00.00',1),(571,2,1,'2014-08-02',7,2,NULL,'07:45:00.00','08:30:00.00','04:30:00.00',2),(572,2,1,'2014-08-09',7,2,NULL,'07:45:00.00','08:30:00.00','04:30:00.00',2),(573,2,1,'2014-08-16',7,2,NULL,'07:45:00.00','08:30:00.00','04:30:00.00',2),(574,2,1,'2014-08-23',7,2,NULL,'07:45:00.00','08:30:00.00','04:30:00.00',2),(575,2,1,'2014-08-30',7,2,NULL,'07:45:00.00','08:30:00.00','04:30:00.00',2),(576,3,1,'2014-08-02',10,1,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(577,3,2,'2014-08-02',10,7,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(578,3,1,'2014-08-16',10,1,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(579,3,2,'2014-08-16',10,7,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(580,3,1,'2014-08-09',10,1,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(581,3,2,'2014-08-09',10,7,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(582,3,1,'2014-08-23',10,1,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(583,3,2,'2014-08-23',10,7,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(584,3,1,'2014-08-30',10,1,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3),(585,3,2,'2014-08-30',10,7,NULL,'06:45:00.00','07:30:00.00','03:30:00.00',3);
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
