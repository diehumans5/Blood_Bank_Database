-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: blood_bank
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood` (
  `blood_id` varchar(20) NOT NULL,
  `blood_grp` enum('O+','O-','A+','A-','B+','B-','AB+','AB-') DEFAULT NULL,
  `donor_id` varchar(20) DEFAULT NULL,
  `in_stock` bit(1) DEFAULT (1),
  PRIMARY KEY (`blood_id`),
  KEY `donor_id` (`donor_id`),
  CONSTRAINT `blood_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood`
--

LOCK TABLES `blood` WRITE;
/*!40000 ALTER TABLE `blood` DISABLE KEYS */;
INSERT INTO `blood` VALUES ('B001','B+','N001',_binary ''),('B002','O+','N002',_binary ''),('B003','O+','N003',_binary ''),('B004','B+','N004',_binary ''),('B005','A-','N005',_binary '\0'),('B006','B+','N006',_binary '\0'),('B007','AB-','N007',_binary ''),('B008','A+','N008',_binary ''),('B009','A-','N009',_binary ''),('B010','B+','N010',_binary ''),('B011','B+','N011',_binary '\0'),('B012','AB+','N012',_binary ''),('B013','A-','N013',_binary ''),('B014','AB+','N014',_binary ''),('B015','B-','N015',_binary ''),('B016','AB-','N016',_binary '\0'),('B017','O+','N017',_binary '\0'),('B018','O+','N018',_binary '\0'),('B019','AB-','N019',_binary ''),('B020','B+','N020',_binary ''),('B021','B-','N021',_binary ''),('B022','A-','N022',_binary ''),('B023','B+','N023',_binary ''),('B024','B-','N024',_binary ''),('B025','O-','N025',_binary '\0'),('B026','AB+','N026',_binary ''),('B027','O+','N027',_binary ''),('B028','O+','N028',_binary ''),('B029','A+','N029',_binary ''),('B030','B-','N030',_binary ''),('B031','AB-','N031',_binary '\0'),('B032','A+','N032',_binary '\0'),('B033','AB-','N033',_binary ''),('B034','AB-','N034',_binary ''),('B035','B-','N035',_binary ''),('B036','A-','N036',_binary ''),('B037','B+','N037',_binary ''),('B038','B+','N038',_binary ''),('B039','AB+','N039',_binary ''),('B040','A+','N040',_binary ''),('B041','O-','N041',_binary ''),('B042','B+','N042',_binary ''),('B043','AB-','N043',_binary ''),('B044','B+','N044',_binary ''),('B045','AB-','N045',_binary ''),('B046','B+','N046',_binary ''),('B047','O-','N047',_binary ''),('B048','O+','N048',_binary ''),('B049','B+','N049',_binary ''),('B050','B-','N050',_binary ''),('B051','AB-','N051',_binary ''),('B052','B+','N052',_binary ''),('B053','AB-','N053',_binary ''),('B054','A-','N054',_binary ''),('B055','O+','N055',_binary ''),('B056','A+','N056',_binary ''),('B057','B+','N057',_binary ''),('B058','A-','N058',_binary ''),('B059','O+','N059',_binary ''),('B060','AB+','N060',_binary ''),('B061','A+','N061',_binary ''),('B062','A+','N062',_binary ''),('B063','B+','N063',_binary ''),('B064','A-','N064',_binary ''),('B065','A-','N065',_binary ''),('B066','AB-','N066',_binary ''),('B067','O+','N067',_binary ''),('B068','O-','N068',_binary ''),('B069','B+','N069',_binary ''),('B070','A+','N070',_binary ''),('B071','A-','N071',_binary ''),('B072','AB-','N072',_binary ''),('B073','O+','N073',_binary ''),('B074','A+','N074',_binary ''),('B075','O+','N075',_binary ''),('B076','A+','N076',_binary ''),('B077','B-','N077',_binary ''),('B078','O+','N078',_binary '\0'),('B079','A-','N079',_binary ''),('B080','AB-','N080',_binary ''),('B081','B-','N081',_binary ''),('B082','A+','N082',_binary ''),('B083','AB-','N083',_binary ''),('B084','O+','N084',_binary ''),('B085','AB-','N085',_binary ''),('B086','A+','N086',_binary ''),('B087','B+','N087',_binary ''),('B088','B+','N088',_binary ''),('B089','B+','N089',_binary ''),('B090','B-','N090',_binary ''),('B091','B+','N091',_binary ''),('B092','B+','N092',_binary ''),('B093','O+','N093',_binary ''),('B094','A-','N094',_binary ''),('B095','AB+','N095',_binary ''),('B096','O+','N096',_binary ''),('B097','AB-','N097',_binary ''),('B098','B-','N098',_binary ''),('B099','O+','N099',_binary ''),('B100','O+','N100',_binary ''),('B101','AB-','N101',_binary ''),('B102','B+','N011',_binary '\0');
/*!40000 ALTER TABLE `blood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doct_id` varchar(20) NOT NULL,
  `doct_name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `hosp_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`doct_id`),
  KEY `hosp_id` (`hosp_id`),
  CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`hosp_id`) REFERENCES `hospital` (`hosp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('D001','Drew Helwig',50,'H010'),('D002','Lisa Perkins',37,'H001'),('D003','Florence Duncan',47,'H001'),('D004','David Torres',25,'H010'),('D005','Eddie Kantrowitz',43,'H008'),('D006','John Bliss',59,'H003'),('D007','Mary Fischer',25,'H009'),('D008','James Mccarty',27,'H009'),('D009','Thomas Heckman',26,'H009'),('D010','Patricia Elliott',28,'H009'),('D011','Amanda Desimone',56,'H005'),('D012','Melisa Belka',33,'H003'),('D013','Gene Lehman',53,'H006'),('D014','Clarence Macneil',27,'H002'),('D015','Elaina Barren',30,'H004'),('D016','Lorena Gregory',32,'H004'),('D017','Blossom Humphrey',45,'H008'),('D018','Terry Butterfield',45,'H007'),('D019','James Duke',55,'H002'),('D020','Kristina Henson',26,'H008'),('D021','Jorge Carroll',51,'H008'),('D022','Harold Bernal',43,'H005'),('D023','Amanda Scofield',46,'H005'),('D024','Kevin Babineau',35,'H002'),('D025','Joan Scallon',25,'H008'),('D026','Rafael Buford',37,'H004'),('D027','Nathan Tagliente',47,'H007'),('D028','Melinda Davis',32,'H007'),('D029','Lydia Guerrero',48,'H003'),('D030','Charles Crumedy',34,'H004'),('D031','Dewayne Thompson',27,'H009'),('D032','Dustin Lewis',52,'H005'),('D033','Mark Robinson',41,'H005'),('D034','David Lomax',41,'H001'),('D035','Douglas Holmes',34,'H006'),('D036','Anthony Johnson',36,'H001'),('D037','Carlos Woods',44,'H004'),('D038','Jovan Donovan',51,'H010'),('D039','Marcus Spueler',31,'H002'),('D040','Charles Infante',37,'H007'),('D041','Kimberly Padel',33,'H005'),('D042','Sung Ferree',58,'H010'),('D043','Patricia Fischer',58,'H002'),('D044','David Corbin',59,'H008'),('D045','Sonya Marth',30,'H002'),('D046','Dorothy Feasel',49,'H002'),('D047','Julia James',52,'H008'),('D048','Gary Fishburn',39,'H003'),('D049','Randy Hughes',55,'H008'),('D050','Maria Westfield',25,'H002'),('D051','Melissa Morris',49,'H007'),('D052','Devin Adkins',25,'H008'),('D053','Steven Hackett',37,'H003'),('D054','Gary Perkins',32,'H005'),('D055','Judith Stephens',42,'H006'),('D056','Mary Hughes',45,'H007'),('D057','Jason Benford',44,'H005'),('D058','Sheila Brooks',29,'H004'),('D059','Lona Teig',30,'H006'),('D060','Wallace Ouellette',34,'H004'),('D061','William Keller',28,'H003'),('D062','John Corsi',56,'H008'),('D063','Jay Douds',34,'H006'),('D064','Patricia Tobin',48,'H004'),('D065','Maria Hovey',46,'H009'),('D066','Anthony Weidenbach',34,'H009'),('D067','Valerie Russell',45,'H004'),('D068','Anita Yates',57,'H002'),('D069','Deborah Deleo',58,'H009'),('D070','William Philips',33,'H009'),('D071','Dustin Costa',58,'H007'),('D072','Sarah Woltz',49,'H006'),('D073','Anthony Donner',36,'H008'),('D074','Jose Hernande',58,'H010'),('D075','Hazel Mcgibney',39,'H010'),('D076','Juan Cotton',28,'H008'),('D077','Charles Filmore',31,'H007'),('D078','Kimberly Collazo',46,'H005'),('D079','Clarence Love',45,'H010'),('D080','Anastasia Lewis',49,'H002'),('D081','John Mcnelis',56,'H009'),('D082','Clarence Coker',52,'H002'),('D083','Altha Martinez',43,'H006'),('D084','Nicole Norwood',42,'H009'),('D085','Robert Martinez',55,'H005'),('D086','Blaine Jamison',43,'H008'),('D087','Loren Bloomquist',48,'H002'),('D088','Thomas Glaser',39,'H007'),('D089','Jane Gaudet',33,'H001'),('D090','Vernell Brooks',34,'H005'),('D091','Wanda Lyons',60,'H002'),('D092','James Shaw',34,'H002'),('D093','Jessie Mendoza',55,'H007'),('D094','Ray Kenyon',34,'H002'),('D095','Betty Clark',50,'H004'),('D096','Richard Holtzclaw',32,'H003'),('D097','Patricia Scott',35,'H007'),('D098','Marie Mohler',34,'H010'),('D099','William Armstrong',39,'H010'),('D100','Eric Cartman',25,'H006'),('D101','Andrew Wakefield',56,'H008'),('D102','Wilson Ball',42,'H007'),('D103','Pritam S Gurav',35,'H001');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donation` (
  `blood_id` varchar(20) DEFAULT NULL,
  `donor_id` varchar(20) DEFAULT NULL,
  `org_id` varchar(20) DEFAULT NULL,
  `date_of_donation` date DEFAULT NULL,
  KEY `blood_id` (`blood_id`),
  KEY `donor_id` (`donor_id`),
  CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`blood_id`) REFERENCES `blood` (`blood_id`),
  CONSTRAINT `donation_ibfk_2` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES ('B001','N001','ORG004','2012-01-12'),('B002','N002','ORG003','2012-01-20'),('B003','N003','ORG005','2012-02-04'),('B004','N004','ORG005','2012-02-13'),('B005','N005','ORG003','2012-02-22'),('B006','N006','ORG006','2012-02-02'),('B007','N007','ORG006','2012-02-13'),('B008','N008','ORG006','2012-02-22'),('B009','N009','ORG001','2012-02-02'),('B010','N010','ORG001','2012-02-07'),('B011','N011','ORG004','2012-02-14'),('B012','N012','ORG005','2012-02-24'),('B013','N013','ORG004','2012-03-03'),('B014','N014','ORG005','2012-03-13'),('B015','N015','ORG003','2012-03-21'),('B016','N016','ORG004','2012-03-27'),('B017','N017','ORG001','2012-04-06'),('B018','N018','ORG005','2012-04-11'),('B019','N019','ORG006','2012-04-19'),('B020','N020','ORG002','2012-04-26'),('B021','N021','ORG004','2012-05-06'),('B022','N022','ORG002','2012-05-16'),('B023','N023','ORG005','2012-05-27'),('B024','N024','ORG006','2012-06-11'),('B025','N025','ORG003','2012-06-20'),('B026','N026','ORG001','2012-06-27'),('B027','N027','ORG005','2012-07-10'),('B028','N028','ORG002','2012-07-19'),('B029','N029','ORG005','2012-07-27'),('B030','N030','ORG004','2012-08-10'),('B031','N031','ORG002','2012-08-17'),('B032','N032','ORG006','2012-08-26'),('B033','N033','ORG005','2012-09-05'),('B034','N034','ORG001','2012-09-16'),('B035','N035','ORG004','2012-09-21'),('B036','N036','ORG001','2012-09-01'),('B037','N037','ORG001','2012-09-11'),('B038','N038','ORG001','2012-09-20'),('B039','N039','ORG005','2012-09-25'),('B040','N040','ORG005','2012-10-03'),('B041','N041','ORG001','2012-10-11'),('B042','N042','ORG005','2012-10-22'),('B043','N043','ORG001','2012-10-02'),('B044','N044','ORG002','2012-10-07'),('B045','N045','ORG002','2012-10-18'),('B046','N046','ORG006','2012-10-26'),('B047','N047','ORG005','2012-11-05'),('B048','N048','ORG001','2012-11-11'),('B049','N049','ORG003','2012-11-22'),('B050','N050','ORG006','2012-12-06'),('B051','N051','ORG005','2012-12-14'),('B052','N052','ORG003','2012-12-19'),('B053','N053','ORG003','2012-12-25'),('B054','N054','ORG001','2013-01-09'),('B055','N055','ORG005','2013-01-19'),('B056','N056','ORG005','2013-02-03'),('B057','N057','ORG006','2013-02-10'),('B058','N058','ORG004','2013-02-16'),('B059','N059','ORG003','2013-02-24'),('B060','N060','ORG005','2013-03-05'),('B061','N061','ORG006','2013-03-13'),('B062','N062','ORG006','2013-03-18'),('B063','N063','ORG004','2013-03-25'),('B064','N064','ORG006','2013-04-03'),('B065','N065','ORG002','2013-04-10'),('B066','N066','ORG002','2013-04-21'),('B067','N067','ORG001','2013-05-03'),('B068','N068','ORG004','2013-05-09'),('B069','N069','ORG002','2013-05-19'),('B070','N070','ORG003','2013-05-26'),('B071','N071','ORG006','2013-06-06'),('B072','N072','ORG003','2013-06-16'),('B073','N073','ORG006','2013-06-27'),('B074','N074','ORG002','2013-07-06'),('B075','N075','ORG001','2013-07-15'),('B076','N076','ORG004','2013-07-24'),('B077','N077','ORG001','2013-08-07'),('B078','N078','ORG004','2013-08-12'),('B079','N079','ORG003','2013-08-19'),('B080','N080','ORG001','2013-08-02'),('B081','N081','ORG004','2013-08-11'),('B082','N082','ORG002','2013-08-16'),('B083','N083','ORG006','2013-08-23'),('B084','N084','ORG003','2013-09-07'),('B085','N085','ORG001','2013-09-14'),('B086','N086','ORG003','2013-09-24'),('B087','N087','ORG003','2013-10-05'),('B088','N088','ORG002','2013-10-11'),('B089','N089','ORG005','2013-10-22'),('B090','N090','ORG001','2013-11-06'),('B091','N091','ORG001','2013-11-15'),('B092','N092','ORG001','2013-11-22'),('B093','N093','ORG003','2013-12-03'),('B094','N094','ORG003','2013-12-12'),('B095','N095','ORG004','2013-12-17'),('B096','N096','ORG002','2013-12-27'),('B097','N097','ORG005','2014-01-06'),('B098','N098','ORG001','2014-01-16'),('B099','N099','ORG002','2014-01-24'),('B100','N100','ORG004','2016-03-23'),('B101','N101','ORG003','2016-04-05'),('B102','N011','ORG005','2016-05-18');
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donor` (
  `donor_id` varchar(20) NOT NULL,
  `donor_name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`donor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donor`
--

LOCK TABLES `donor` WRITE;
/*!40000 ALTER TABLE `donor` DISABLE KEYS */;
INSERT INTO `donor` VALUES ('N001','Barbara Rizzo',39),('N002','Leslie Taylor',26),('N003','Emma Turner',21),('N004','Patty Hoffman',19),('N005','Alpha Shafer',21),('N006','Rodrigo Bowman',39),('N007','Martha King',28),('N008','Victor Martinez',38),('N009','Carroll Morris',36),('N010','Donald Brodt',38),('N011','Michael Cyrus',22),('N012','Adam Colson',18),('N013','Reba Stevens',21),('N014','Isabel Warnick',24),('N015','Henry Meza',29),('N016','Cody Wiford',18),('N017','Amy Escalante',35),('N018','Robert Zanes',22),('N019','Ricky Golojuch',32),('N020','Betty Vela',31),('N021','Wallace Thorne',20),('N022','Evelyn Compo',21),('N023','James Bruton',32),('N024','Diane Hebert',31),('N025','John Hart',37),('N026','Mark Bennett',31),('N027','Melissa Carvajal',36),('N028','Ruth Bowie',37),('N029','Kimberly Mendoza',31),('N030','David Kramer',33),('N031','Kenneth Curlee',38),('N032','Janet Adams',18),('N033','Joan Doherty',18),('N034','Linda Williams',22),('N035','William Waterman',22),('N036','Eddie Fairchild',37),('N037','Hazel Lunsford',18),('N038','Marcus Fletcher',29),('N039','Raymond Waldrop',19),('N040','George Porter',26),('N041','Bonnie Mckinley',35),('N042','Ron Furlow',36),('N043','Sandra Womack',24),('N044','Jared Piacente',35),('N045','Herman Maxham',20),('N046','Willie Clark',18),('N047','Seth Wimberly',27),('N048','Katharine Wermers',31),('N049','Suzanne Canon',19),('N050','Nick Decelle',31),('N051','Pauline Meurer',39),('N052','Mary Streeter',27),('N053','Connie Nixon',22),('N054','Rena Harvey',31),('N055','Roland Smith',38),('N056','Richard Hope',35),('N057','Brandon Duncan',23),('N058','Jennifer Hill',21),('N059','Chad Owens',39),('N060','Ken Boyd',40),('N061','Carrie Monk',36),('N062','Sandra Boggio',34),('N063','Sam Brown',40),('N064','Randall Ingraham',32),('N065','Susan Grate',37),('N066','Tony Plotkin',36),('N067','Gregory Ross',31),('N068','Arthur Na',26),('N069','Vanessa Gruska',19),('N070','Matthew Perez',40),('N071','Janet Blanchard',30),('N072','Irvin Petrich',28),('N073','Pauline Anderson',33),('N074','Audrey Busby',27),('N075','Michael Kehew',21),('N076','Michael Musick',37),('N077','Ashley Green',29),('N078','Gilbert Terry',39),('N079','Chrystal Mosher',24),('N080','Elvis Kerr',38),('N081','Kyle Harris',36),('N082','Elmer Bavaro',39),('N083','Ralph Machado',40),('N084','Rose Cooper',23),('N085','Grady Bertsch',38),('N086','Esther Bramlet',39),('N087','Peter Palacios',38),('N088','Patricia Turnage',40),('N089','Michael Fitzwater',40),('N090','Gwen Stegall',30),('N091','Pauline Rodriguez',32),('N092','Andre Garrett',23),('N093','Alfredo Franco',23),('N094','Nancy Pennel',29),('N095','Nora Williamson',19),('N096','Eunice Leyendecker',18),('N097','Thomas Declue',18),('N098','Tom Eusebio',36),('N099','Edward Akers',27),('N100','Doug Jackson',23),('N101','Pannacota Fugo',22);
/*!40000 ALTER TABLE `donor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `foo`
--

DROP TABLE IF EXISTS `foo`;
/*!50001 DROP VIEW IF EXISTS `foo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `foo` AS SELECT 
 1 AS `blood_id`,
 1 AS `blood_grp`,
 1 AS `donor_name`,
 1 AS `in_stock`,
 1 AS `org_name`,
 1 AS `city`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital` (
  `hosp_id` varchar(20) NOT NULL,
  `hosp_name` varchar(20) DEFAULT NULL,
  `no_of_doctors` int DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hosp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('H001','Victoria',6,'Bangalore'),('H002','NIMHANS',15,'Bangalore'),('H003','Fortis',7,'Delhi'),('H004','Aster',10,'Chennai'),('H005','Apollo',11,'Kolkata'),('H006','Healthcare',8,'Mumbai'),('H007','St. Joseph',12,'Thiruvananthapuram'),('H008','AIIMS',14,'Delhi'),('H009','Sagar',11,'Chennai'),('H010','Manipal',9,'Mumbai');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organisation` (
  `org_id` varchar(20) NOT NULL,
  `org_name` varchar(20) DEFAULT NULL,
  `no_of_donations` int DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organisation`
--

LOCK TABLES `organisation` WRITE;
/*!40000 ALTER TABLE `organisation` DISABLE KEYS */;
INSERT INTO `organisation` VALUES ('ORG001','Red Cross',21,'Mumbai'),('ORG002','AABB',14,'Bangalore'),('ORG003','Life Care',17,'Delhi'),('ORG004','Plasma Healing',15,'Chennai'),('ORG005','Ruby Heart',20,'Kolkata'),('ORG006','IMA',15,'Thiruvananthapuram');
/*!40000 ALTER TABLE `organisation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `pat_id` varchar(20) NOT NULL,
  `doct_id` varchar(20) DEFAULT NULL,
  `pat_name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `in_patient` bit(1) DEFAULT (1),
  `blood_grp` enum('O-','O+','A-','A+','B-','B+','AB-','AB+') DEFAULT NULL,
  PRIMARY KEY (`pat_id`),
  KEY `doct_id` (`doct_id`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`doct_id`) REFERENCES `doctor` (`doct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('P001','D083','Sarah Mcadoo',31,_binary '','AB-'),('P002','D092','April Luna',43,_binary '','B+'),('P003','D056','Linda Anders',79,_binary '','AB+'),('P004','D033','Eldon Rovero',57,_binary '\0','A+'),('P005','D067','Fannie Hall',60,_binary '','B+'),('P006','D026','Gloria Randall',49,_binary '','AB-'),('P007','D002','Linda Garcia',64,_binary '','A+'),('P008','D055','David Chaney',65,_binary '','A+'),('P009','D008','Eugene Zachary',78,_binary '\0','B+'),('P010','D038','Monica Rojas',8,_binary '\0','A+'),('P011','D059','John Fineran',80,_binary '\0','B+'),('P012','D029','Monica Smock',65,_binary '','O+'),('P013','D067','Whitney Turner',3,_binary '','AB-'),('P014','D044','Michael Hankinson',3,_binary '\0','O+'),('P015','D003','Robert Weitkamp',50,_binary '\0','AB-'),('P016','D074','Charles Hawkins',52,_binary '','B+'),('P017','D013','David Page',79,_binary '','O+'),('P018','D034','David Ford',47,_binary '','O+'),('P019','D010','Deborah Mayfield',88,_binary '','O-'),('P020','D038','Gerald Henry',72,_binary '','A+'),('P021','D001','Joshua Ross',34,_binary '','A-'),('P022','D095','Harry Collins',3,_binary '','A+'),('P023','D077','Brenda Sera',63,_binary '','A+'),('P024','D098','Rae Fitzpatrick',35,_binary '','AB+'),('P025','D085','Sean Silva',82,_binary '','B-'),('P026','D078','Paul Charley',2,_binary '','B+'),('P027','D022','Sheila Atkins',55,_binary '','O+'),('P028','D053','Rachel Kruse',56,_binary '','O-'),('P029','D061','Kenneth Carey',53,_binary '','B-'),('P030','D021','Lesley Lowe',40,_binary '','A+'),('P031','D044','Susan Paradis',80,_binary '','B-'),('P032','D042','Jolene Love',93,_binary '','A+'),('P033','D064','Janice Fennell',90,_binary '','O-'),('P034','D003','Roger Lopez',84,_binary '','B-'),('P035','D040','Kenneth Okeeffe',26,_binary '','B+'),('P036','D097','Joe Mcquillen',64,_binary '','AB-'),('P037','D029','Roseann Gonzalez',73,_binary '\0','AB+'),('P038','D002','George Baker',93,_binary '','O+'),('P039','D065','Frankie Woodard',70,_binary '\0','AB+'),('P040','D053','Pauline Marthe',65,_binary '','AB+'),('P041','D032','Jo Tamura',25,_binary '\0','O-'),('P042','D048','Anthony Pfifer',82,_binary '','AB-'),('P043','D068','Mary Doane',100,_binary '','AB+'),('P044','D003','Brad Brown',10,_binary '','AB+'),('P045','D082','Joy Wentzloff',35,_binary '','O+'),('P046','D006','Vida Tangerman',26,_binary '','O-'),('P047','D056','Kassandra Douglas',1,_binary '','A+'),('P048','D079','Amber Parris',13,_binary '','AB-'),('P049','D015','James Washington',95,_binary '','AB+'),('P050','D003','Shirley Cannon',99,_binary '','O-'),('P051','D092','Linda Devens',38,_binary '','A-'),('P052','D039','Elyse Russ',44,_binary '','AB-'),('P053','D007','Leslie Maddox',35,_binary '','O-'),('P054','D054','Lisa Williamson',28,_binary '','B+'),('P055','D083','Debra White',69,_binary '','AB-'),('P056','D100','Bill Yancey',26,_binary '','O-'),('P057','D025','Terrence King',20,_binary '','B+'),('P058','D083','Maurice Guadagno',95,_binary '','AB+'),('P059','D075','Robert Hammond',89,_binary '','O-'),('P060','D064','Robert Brown',75,_binary '','AB+'),('P061','D097','Alex Bumbrey',81,_binary '','A-'),('P062','D063','Margaret Chase',6,_binary '','A+'),('P063','D071','Vicky Zavala',35,_binary '','O+'),('P064','D083','Janessa Frazier',25,_binary '','O-'),('P065','D007','Larry Boyles',62,_binary '','B-'),('P066','D060','Carlos Mosher',9,_binary '','A+'),('P067','D045','George Maupin',23,_binary '\0','O-'),('P068','D001','Jesus Bernier',87,_binary '','B+'),('P069','D060','Machelle Nunn',64,_binary '','B+'),('P070','D095','Kevin Crawford',78,_binary '','B+'),('P071','D010','Mac Mcwhorter',16,_binary '','O+'),('P072','D035','Odessa Bell',46,_binary '','AB-'),('P073','D093','Edith Smith',98,_binary '','A-'),('P074','D071','Reynaldo Webb',67,_binary '','A+'),('P075','D046','Roy Marsh',47,_binary '','B+'),('P076','D016','Isaac Molina',91,_binary '','B+'),('P077','D031','Fernando Wells',63,_binary '','B-'),('P078','D093','Kimberly Jackson',22,_binary '','B+'),('P079','D060','Joseph Shady',4,_binary '','O+'),('P080','D037','Alberto Hogan',28,_binary '','O-'),('P081','D018','Patrick Bateman',98,_binary '','A-'),('P082','D066','Vincent Grant',82,_binary '','O+'),('P083','D020','Bonnie Hayes',101,_binary '','A+'),('P084','D098','Debra Cleveland',27,_binary '','AB+'),('P085','D059','Patrick Wells',92,_binary '','B-'),('P086','D029','Charlene Lehman',52,_binary '','AB-'),('P087','D055','Nichole Cepeda',28,_binary '','B-'),('P088','D093','Theresa Hardin',61,_binary '','O-'),('P089','D053','Bill Rothery',94,_binary '','B+'),('P090','D061','Cindy Arimoto',45,_binary '','AB-'),('P091','D071','Margaret Mendoza',91,_binary '\0','AB+'),('P092','D018','Barbara Todd',20,_binary '','B+'),('P093','D055','Osvaldo Dance',30,_binary '','AB-'),('P094','D028','David Dawood',76,_binary '','B+'),('P095','D083','Judith Gillespie',61,_binary '','AB-'),('P096','D032','David Calvin',59,_binary '','A-'),('P097','D082','Mavis Bullock',95,_binary '','B+'),('P098','D026','Beatrice Murphy',89,_binary '','O+'),('P099','D082','Garry Gleim',91,_binary '','A-'),('P100','D008','Leslie Moore',19,_binary '','O+');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfusion`
--

DROP TABLE IF EXISTS `transfusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfusion` (
  `blood_id` varchar(20) DEFAULT NULL,
  `pat_id` varchar(20) DEFAULT NULL,
  `date_of_transfusion` date DEFAULT NULL,
  KEY `blood_id` (`blood_id`),
  KEY `pat_id` (`pat_id`),
  CONSTRAINT `transfusion_ibfk_1` FOREIGN KEY (`blood_id`) REFERENCES `blood` (`blood_id`),
  CONSTRAINT `transfusion_ibfk_2` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`pat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfusion`
--

LOCK TABLES `transfusion` WRITE;
/*!40000 ALTER TABLE `transfusion` DISABLE KEYS */;
INSERT INTO `transfusion` VALUES ('B006','P009','2015-01-17'),('B017','P039','2015-03-02'),('B032','P010','2015-03-05'),('B025','P067','2015-04-09'),('B078','P041','2015-04-21'),('B005','P004','2016-05-03'),('B018','P014','2016-05-06'),('B016','P015','2016-05-19'),('B011','P011','2016-06-02'),('B102','P037','2016-06-05'),('B031','P091','2016-06-06');
/*!40000 ALTER TABLE `transfusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `foo`
--

/*!50001 DROP VIEW IF EXISTS `foo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `foo` AS select `b`.`blood_id` AS `blood_id`,`b`.`blood_grp` AS `blood_grp`,`d`.`donor_name` AS `donor_name`,`b`.`in_stock` AS `in_stock`,`o`.`org_name` AS `org_name`,`o`.`city` AS `city` from (((`blood` `b` join `donor` `d` on(((`b`.`donor_id` = `d`.`donor_id`) and (`b`.`in_stock` = 1)))) join `donation` `dt` on((`dt`.`donor_id` = `d`.`donor_id`))) join `organisation` `o` on((`dt`.`org_id` = `o`.`org_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-25 11:08:27
