-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `opening_hours` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `owner_name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `description` text,
  `rating` decimal(2,1) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `shops_chk_1` CHECK (((`rating` >= 1.0) and (`rating` <= 5.0)))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (1,'Kanchan Sarees','Abids, Hyderabad','040-27291432','11:00 AM - 10:00 PM','2024-08-03 17:20:44','Ravi Kumar','http://www.kanchansarees.com','Specializes in sarees, bridal wear, and ethnic clothing.',4.7),(3,'Sri Ramachandra & Co.','Siddiamber Bazaar, Hyderabad','040-23412345','10:00 AM - 9:00 PM','2024-08-03 15:18:18','Madhava Rao','http://sriramachandra.co.in','Wholesaler of textiles, fabrics, and ready-made garments.',4.5),(4,'Poddar Pigments','Begum Bazaar, Hyderabad','040-12345678','10:00 AM - 7:00 PM','2024-08-03 06:59:35','Ajay Poddar','http://poddarpigments.com','Wholesale of dyes and pigments for industrial use.',4.3),(5,'Bharat Electricals','Secunderabad, Hyderabad','040-34567891','10:00 AM - 8:00 PM','2024-08-03 06:59:35','Anil Kumar','http://bharatelectricals.com','Wholesale and retail of electrical goods and appliances.',4.5),(6,'M. Ali Fruits','Gaddiannaram, Hyderabad','040-56789123','6:00 AM - 9:00 PM','2024-08-03 06:59:35','Mohammed Ali','http://malifruits.com','Wholesale supplier of fresh fruits and vegetables.',4.0),(7,'Shiva Tools & Hardware','Abids, Hyderabad','040-67891234','10:00 AM - 8:00 PM','2024-08-03 06:59:35','Shiva Prasad','http://shivatools.com','Wholesale and retail of tools and hardware equipment.',4.3),(8,'Krishna Dairy Products','Ameerpet, Hyderabad','040-78912345','6:00 AM - 8:00 PM','2024-08-03 06:59:35','Krishna Reddy','http://krishnadairy.com','Wholesale supplier of dairy products including milk, cheese, and butter.',4.6),(10,'Swarna Jewellery','Ranganathan Street, Hyderabad','040-23894756','10 AM - 8 PM','2024-08-03 17:14:45','Swarna Jewellers','http://swarna.jewelry','Retail shop specializing in traditional and modern jewelry.',4.6),(11,'Swarna Jewellery','Ranganathan Street, Hyderabad','040-23894756','10 AM - 8 PM','2024-08-03 17:24:11','Swarna Jewellers','http://swarna.jewelry','Retail shop specializing in traditional and modern jewelry.',4.6);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-11  0:58:13
