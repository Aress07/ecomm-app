-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ecommerce-api-db
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ecommerce-api-db`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ecommerce-api-db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `ecommerce-api-db`;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKt8o6pivur7nn124jehx7cygw5` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'Gadget'),(1,'Laptop'),(6,'Networking'),(2,'Phones');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'2025-07-04 17:05:35.000000','Brand New ThinkPad Solid and good for software development','Lenovo ThinkPad',5500.00,30,1,'/uploads/LenovoThinkPad.png\n'),(2,'2025-07-04 17:53:03.000000','Brand new iPhone 15 255 Go','iPhone 15',6000.00,12,2,'/uploads/prodPlaceholder.png'),(4,'2025-01-20 14:15:00.000000','Flagship smartphone with 108MP camera','PixelPhone Z12',567.89,40,2,'/uploads/prodPlaceholder.png'),(5,'2025-02-28 11:45:00.000000','Android phone with 5G and 120Hz display','Galaxy S21 Ultra',1199.00,30,2,'/uploads/SamsungGalaxyS21.png\n'),(6,'2025-03-12 16:00:00.000000','Apple’s latest phone with A16 Bionic chip','iPhone 14 Pro',1099.00,50,2,'/uploads/prodPlaceholder.png'),(7,'2025-01-25 09:10:00.000000','Affordable phone with 6.5\" screen','BudgetPhone A7',199.99,60,2,'/uploads/prodPlaceholder.png'),(8,'2025-03-20 13:30:00.000000','Laptop Suited for heavy work, editing, vfx, software and AI dev','MacBook Pro ',1399.99,12,1,'/uploads/MacBookPro.png\n'),(9,'2025-02-15 10:40:00.000000','Foldable phone with dual-screen display','FlipSmart V2',1499.99,10,2,'/uploads/prodPlaceholder.png'),(10,'2025-03-01 15:25:00.000000','Budget ultrabook perfect for students','LiteBook 13\" Laptop',799.99,20,1,'/uploads/prodPlaceholder.png'),(12,'2025-07-10 21:43:07.000000','brand new iPhone 7 limited edition','iPhone 7',1100.00,5,2,'/uploads/prodPlaceholder.png'),(13,'2025-07-10 22:38:19.000000','Dell thinpad i5 11th gen, 16 ram ddr4, 255ssd','Dell Thinpad',4500.00,5,1,'/uploads/prodPlaceholder.png'),(14,'2025-07-10 22:40:16.000000','it has good isolation, good for gym and running\n','Soundcore i50',700.00,20,3,'/uploads/prodPlaceholder.png'),(15,'2025-07-10 23:33:12.000000','brand new apple airpods','apple airpods',2500.00,40,3,'/uploads/prodPlaceholder.png'),(16,'2025-07-11 12:57:19.000000','Durable and more rigid than plastic. A stronger material is more suited for aggressive weight reduction while retaining maximum build strength.','Razer Viper',2701.42,10,3,'/uploads/16618740-ab9f-415c-aa4f-3b1b83ed8a38.webp'),(17,'2025-07-11 13:38:07.000000','A next-gen palo alto firewall\nClassifies all applications, on all ports, all the time\nEnforces security policies for any user, at any location\nPrevents known and unknown threats','Firewall',3400.00,5,6,'/uploads/c0a64ba6-9c91-4af0-9920-4f4152ef7e91.png');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('ADMIN','USER') NOT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6dotkott2kjsp8vw4d0m25fb7` (`email`),
  UNIQUE KEY `UKr43af9ap4edm43mmtq01oddj6` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (7,'2025-07-04 17:46:02.000000','newuser@domain.com','$2a$10$RZQpOOJh7XuPUNIeDOYmd.YeYEhA7VQvBvRUxn2n2Y49Z/SHN04Yy','USER','2025-07-04 17:46:02.000000','newuser123'),(8,'2025-07-08 18:59:55.000000','tahamahha8@gmail.com','$2a$10$yce8BL6oQk7mWH/ch.PMru4U6QBwCsZAKJhuxuIaaoSzlMG8rMKlm','USER','2025-07-08 18:59:55.000000','taha'),(9,'2025-07-08 19:22:07.000000','admin@domain.com','$2a$10$u5ySA.fgAh1zKaPcHMX88uLscSdqCar9mce/H3PDMUJlmfelIu2r.','ADMIN','2025-07-08 19:22:07.000000','admin'),(10,'2025-07-10 01:22:29.000000','twiher@twiher.com','$2a$10$vEfA5vhz2neuaPRVvRhUguG4/kriCWG1Ia3Nq3ptDunnrV7MVHpZq','USER','2025-07-10 01:22:29.000000','twiher'),(11,'2025-07-10 01:30:52.000000','niinii@gmail.com','$2a$10$rwfBt8PHQyP6edOO69F4COydPvzOVsD5/utAdP2s.5MRJs.hyY/B.','USER','2025-07-10 01:30:52.000000','nii'),(12,'2025-07-10 01:31:56.000000','baller@gmail.com','$2a$10$eRpo9llSHcKYTd6uhKoYlu45THDLoYfNk.nsfNvewb/ZNpqLk5QtG','USER','2025-07-10 01:31:56.000000','baller');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ecommerce-api-db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-15 15:25:44
