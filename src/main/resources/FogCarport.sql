CREATE DATABASE  IF NOT EXISTS `fogprojekt` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fogprojekt`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 167.172.100.50    Database: fogprojekt
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

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
-- Table structure for table `inventar`
--

DROP TABLE IF EXISTS `inventar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventar` (
  `inventarid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `unit` varchar(45) NOT NULL,
  `priceprunit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventarid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventar`
--

LOCK TABLES `inventar` WRITE;
/*!40000 ALTER TABLE `inventar` DISABLE KEYS */;
INSERT INTO `inventar` VALUES (1,'25x200 mm. trykimp. Brædt ','Stk',0),(2,'25x125mm. trykimp. Brædt','Stk',0),(3,'38x73 mm. Lægte ubh.','Stk',0),(4,'45x95 mm. Reglar ub.','Stk',0),(5,'45x195 mm. spærtræ ubh.','Stk',0),(6,'97x97 mm. trykimp. Stolpe','Stk',0),(7,'19x100 mm. trykimp. Brædt','Stk',0),(8,'Plastmo Ecolite blåtonet','Stk',0),(9,'plastmo bundskruer 200 stk.','Pakke ',0),(10,'hulbånd 1x20 mm. 10 mtr.','Pakke ',0),(11,'universal 190 mm højre','Stk',0),(12,'universal 190 mm venstre','Stk',0),(13,'4,5 x 60 mm. skruer 200 stk. ','Pakke ',0),(14,'4,0 x 50 mm. beslagskruer 250','Pakke ',0),(15,'bræddebolt 10 x 120 mm.','Stk',0),(16,'firkantskiver 40x40x11mm','Stk',0),(17,'4,5 x 70 mm. Skruer 400 stk.','Pakke ',0),(18,'4,5 x 50 mm. Skruer 300 stk.','Pakke ',0),(19,'stalddørsgreb 50x75','Sæt',0),(20,'t hængsel 390 mm','Stk',0),(21,'vinkelbeslag 35','Stk',0);
/*!40000 ALTER TABLE `inventar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemline`
--

DROP TABLE IF EXISTS `itemline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemline` (
  `iditemline` int NOT NULL AUTO_INCREMENT,
  `idorder` int NOT NULL,
  `inventarid` int DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `length` int NOT NULL,
  `quantity` int NOT NULL,
  `unit` varchar(45) NOT NULL,
  `des` varchar(45) NOT NULL,
  PRIMARY KEY (`iditemline`),
  KEY `fk_itemline_inventar1_idx` (`name`) /*!80000 INVISIBLE */,
  KEY `fk_itemline_orders1_idx` (`idorder`),
  KEY `fk_itemline_inventar2_idx` (`unit`),
  KEY `fk_itemline_inventar1_idx1` (`inventarid`),
  CONSTRAINT `fk_itemline_idorder` FOREIGN KEY (`idorder`) REFERENCES `orders` (`idorders`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_itemline_inventar1` FOREIGN KEY (`inventarid`) REFERENCES `inventar` (`inventarid`)
) ENGINE=InnoDB AUTO_INCREMENT=1334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemline`
--

LOCK TABLES `itemline` WRITE;
/*!40000 ALTER TABLE `itemline` DISABLE KEYS */;
INSERT INTO `itemline` VALUES (1284,150,1,'25x200 mm. trykimp. Brædt',570,2,'stk','understernbrædder til for & bag ende'),(1285,150,1,'25x200 mm. trykimp. Brædt',600,2,'stk','understernbrædder	til	siderne'),(1286,150,2,'25x125 mm. trykimp. Brædt',570,2,'stk','oversternbrædder	til	forenden'),(1287,150,2,'25x125 mm. trykimp. Brædt',600,2,'stk','oversternbrædder	til	siderne'),(1288,150,5,'45x195 mm. spærtræ ubh.',600,2,'stk','Remme	i	sider,	sadles	ned	i	stolper'),(1289,150,5,'45x195 mm. spærtræ ubh.',570,11,'stk','Spær,	monteres	på	rem	'),(1290,150,6,'97x97 mm. trykimp. Stolpe',300,5,'stk','Stolper	nedgraves	90	cm.	i	jord'),(1291,150,7,'19x100 mm. trykimp. Brædt',600,4,'stk','vandbrædt	på	stern	i	sider'),(1292,150,7,'19x100 mm. trykimp. Brædt',570,2,'stk','vandbrædt	på	stern	i	forende'),(1293,150,8,'Plastmo Ecolite blåtonet',600,6,'stk','tagplader	monteres	på	spær	'),(1294,150,9,'plastmo bundskruer 200 stk.',0,3,'pakke','Skruer	til	tagplader'),(1295,150,10,'hulbånd 1x20 mm. 10 mtr.',0,2,'rulle','Til	vindkryds	på	spær'),(1296,150,11,'universal 190 mm højre',0,5,'stk','Til	montering	af	spær	på	rem'),(1297,150,12,'universal 190 mm venstre',0,5,'stk','Til	montering	af	spær	på	rem'),(1298,150,13,'4,5 x 60 mm. skruer 200 stk. ',0,1,'pakke','Til	montering	af	stern&vandbrædt'),(1299,150,14,'4,0 x 50 mm. beslagskruer 250',0,3,'pakke','Til	montering	af	universalbeslag	+	hulbånd'),(1300,150,15,'bræddebolt 10 x 120 mm.',0,15,'stk','Til	montering	af	rem	på	stolper'),(1301,150,16,'firkantskiver 40x40x11mm',0,10,'stk','Til montering	af	rem	på	stolper'),(1302,150,17,'4,5 x 70 mm. Skruer 400 stk.',0,2,'pakke','til	montering	af	yderste	beklædning'),(1303,150,18,'4,5 x 50 mm. Skruer 300 stk.',0,2,'pakke','til	montering	af	inderste	beklædning'),(1304,150,3,'38x73 mm. Lægte ubh.',300,2,'stk','til	z	på	bagside	af	dør	'),(1305,150,4,'45x95 mm. Reglar ub.',300,2,'stk','løsholter	til	skur	gavle'),(1306,150,19,'stalddørsgreb 50x75',0,1,'sæt','Til	lås	på	dør	i	skur'),(1307,150,20,'t hængsel 390 mm',0,2,'stk','Til	skurdør'),(1308,150,21,'vinkelbeslag 35',0,15,'stk','Til	montering	af	løsholter	i	skur'),(1309,151,1,'25x200 mm. trykimp. Brædt',480,2,'stk','understernbrædder til for & bag ende'),(1310,151,1,'25x200 mm. trykimp. Brædt',510,2,'stk','understernbrædder	til	siderne'),(1311,151,2,'25x125 mm. trykimp. Brædt',480,2,'stk','oversternbrædder	til	forenden'),(1312,151,2,'25x125 mm. trykimp. Brædt',510,2,'stk','oversternbrædder	til	siderne'),(1313,151,5,'45x195 mm. spærtræ ubh.',510,2,'stk','Remme	i	sider,	sadles	ned	i	stolper'),(1314,151,5,'45x195 mm. spærtræ ubh.',480,10,'stk','Spær,	monteres	på	rem	'),(1315,151,6,'97x97 mm. trykimp. Stolpe',300,5,'stk','Stolper	nedgraves	90	cm.	i	jord'),(1316,151,7,'19x100 mm. trykimp. Brædt',510,4,'stk','vandbrædt	på	stern	i	sider'),(1317,151,7,'19x100 mm. trykimp. Brædt',480,2,'stk','vandbrædt	på	stern	i	forende'),(1318,151,8,'Plastmo Ecolite blåtonet',510,6,'stk','tagplader	monteres	på	spær	'),(1319,151,9,'plastmo bundskruer 200 stk.',0,3,'pakke','Skruer	til	tagplader'),(1320,151,10,'hulbånd 1x20 mm. 10 mtr.',0,2,'rulle','Til	vindkryds	på	spær'),(1321,151,11,'universal 190 mm højre',0,5,'stk','Til	montering	af	spær	på	rem'),(1322,151,12,'universal 190 mm venstre',0,5,'stk','Til	montering	af	spær	på	rem'),(1323,151,13,'4,5 x 60 mm. skruer 200 stk. ',0,1,'pakke','Til	montering	af	stern&vandbrædt'),(1324,151,14,'4,0 x 50 mm. beslagskruer 250',0,3,'pakke','Til	montering	af	universalbeslag	+	hulbånd'),(1325,151,15,'bræddebolt 10 x 120 mm.',0,15,'stk','Til	montering	af	rem	på	stolper'),(1326,151,16,'firkantskiver 40x40x11mm',0,10,'stk','Til montering	af	rem	på	stolper'),(1327,151,17,'4,5 x 70 mm. Skruer 400 stk.',0,2,'pakke','til	montering	af	yderste	beklædning'),(1328,151,18,'4,5 x 50 mm. Skruer 300 stk.',0,2,'pakke','til	montering	af	inderste	beklædning'),(1329,151,3,'38x73 mm. Lægte ubh.',210,2,'stk','til	z	på	bagside	af	dør	'),(1330,151,4,'45x95 mm. Reglar ub.',300,2,'stk','løsholter	til	skur	gavle'),(1331,151,19,'stalddørsgreb 50x75',0,1,'sæt','Til	lås	på	dør	i	skur'),(1332,151,20,'t hængsel 390 mm',0,2,'stk','Til	skurdør'),(1333,151,21,'vinkelbeslag 35',0,15,'stk','Til	montering	af	løsholter	i	skur');
/*!40000 ALTER TABLE `itemline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lengths`
--

DROP TABLE IF EXISTS `lengths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lengths` (
  `lengthsid` int NOT NULL AUTO_INCREMENT,
  `length` int NOT NULL,
  `width` int NOT NULL,
  `shedlength` int NOT NULL,
  `shedwidth` int NOT NULL,
  PRIMARY KEY (`lengthsid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lengths`
--

LOCK TABLES `lengths` WRITE;
/*!40000 ALTER TABLE `lengths` DISABLE KEYS */;
INSERT INTO `lengths` VALUES (1,240,240,150,210),(2,270,270,180,240),(3,300,300,210,270),(4,330,330,240,300),(5,360,360,270,330),(6,390,390,300,360),(7,420,420,330,390),(8,450,450,360,420),(9,480,480,390,450),(10,510,510,420,480),(11,540,540,450,510),(12,570,570,480,540),(13,600,600,510,570),(14,630,0,540,600),(15,660,0,570,630),(16,690,0,600,660),(17,720,0,630,690),(18,750,0,660,720),(19,780,0,690,0);
/*!40000 ALTER TABLE `lengths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderline`
--

DROP TABLE IF EXISTS `orderline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderline` (
  `idorderline` int NOT NULL AUTO_INCREMENT,
  `idorder` int NOT NULL,
  `length` int NOT NULL,
  `width` int NOT NULL,
  `shedlength` int NOT NULL,
  `shedwidth` int NOT NULL,
  PRIMARY KEY (`idorderline`),
  KEY `fk_orderline_lengths_idx` (`length`),
  KEY `fk_orderline_lengths1_idx` (`width`),
  KEY `fk_orderline_lengths2_idx` (`shedlength`),
  KEY `fk_orderline_lengths3_idx` (`shedwidth`),
  KEY `fk_orderline_orders1_idx` (`idorder`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_orderline_idorder` FOREIGN KEY (`idorder`) REFERENCES `orders` (`idorders`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderline`
--

LOCK TABLES `orderline` WRITE;
/*!40000 ALTER TABLE `orderline` DISABLE KEYS */;
INSERT INTO `orderline` VALUES (140,150,600,570,300,300),(141,151,510,480,210,300);
/*!40000 ALTER TABLE `orderline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `idorders` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idorders`),
  KEY `fk_orders_user1_idx` (`username`),
  CONSTRAINT `fk_orders_username` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (150,'user','2023-01-03 11:53:03'),(151,'user','2023-01-03 11:57:58');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','1234','admin'),('john','1234','user'),('user','1234','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-03 21:51:41
