-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: bookdb
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `image_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Đắc Nhân Tâm','Dale Carnegie','Đắc nhân tâm (được lòng người) là một cuốn sách nhằm tự giúp bản thân bán chạy nhất từ trước đến nay của Dale Carnegie.',86000,'/images/dacnhantam.png',50,3),(2,'Nhà Giả Kim','Paulo Coelho','Cuốn sách bán chạy chỉ sau Kinh Thánh. Một câu chuyện ngụ ngôn giàu chất thơ về hành trình tìm kiếm vận mệnh bản thân.',79000,'/images/nhagiakim.png',30,1),(3,'Tôi Thấy Hoa Vàng Trên Cỏ Xanh','Nguyễn Nhật Ánh','Cuốn tiểu thuyết đầy cảm xúc của Nguyễn Nhật Ánh về tuổi thơ ở một làng quê nghèo Việt Nam.',125000,'https://images.unsplash.com/photo-1589829085413-56de8ae18c73?w=300&h=400&fit=crop',41,1),(4,'Cha Giàu Cha Nghèo','Robert Kiyosaki','Bộ sách dạy con làm giàu giúp thay đổi tư duy tài chính của hàng triệu người trên thế giới.',99000,'/images/chagiauchangheo.png',25,2),(5,'Clean Code','Robert C. Martin','Sách gối đầu giường của mọi lập trình viên chuyên nghiệp muốn viết code sạch, dễ đọc và dễ bảo trì.',350000,'/images/cleancode.png',15,4),(6,'Thiết Kế Giải Thuật','Steven S. Skiena','Hướng dẫn chi tiết về các giải thuật thông dụng trong khoa học máy tính và lập trình thi đấu.',280000,'/images/thietkegiaithuat.png',20,4),(7,'Quốc Gia Khởi Nghiệp','Dan Senor','Câu chuyện về nền kinh tế thần kỳ của Israel và bài học cho sự phát triển của Việt Nam.',119000,'/images/quocgiakhoinghiep.jpg',35,2),(8,'Dế Mèn Phiêu Lưu Ký','Tô Hoài','Tác phẩm văn học thiếu nhi kinh điển của nhà văn Tô Hoài kể về chuyến phiêu lưu đầy thú vị của chú Dế Mèn.',55000,'/images/demenphieuluuky.png',60,5),(9,'Kính Vạn Hoa','Nguyễn Nhật Ánh','Bộ truyện dài đầy ắp tiếng cười tinh nghịch của lứa tuổi học trò Việt Nam.',145000,'/images/kinhvanhoa.png',10,5),(10,'Tư Duy Nhanh Và Chậm','Daniel Kahneman','Cuốn sách phân tích hai hệ thống tư duy chi phối mọi quyết định và hành vi của con người.',180000,'/images/tuduynhanhvacham.png',4,3),(11,'Doraemon','Fujiko Fujio','Fujio đồng sáng tác từ năm 1969. Nội dung xoay quanh chú mèo máy thông minh đến từ thế kỷ 22. Chú có nhiệm vụ giúp đỡ cậu bé Nobita hậu đậu thay đổi tương lai .',20000,'/images/doraemon.jpg',9,5);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Văn học','Các tác phẩm văn học kinh điển, tiểu thuyết, truyện ngắn Việt Nam và thế giới.'),(2,'Kinh tế','Sách về quản trị kinh doanh, marketing, khởi nghiệp, tài chính và phát triển doanh nghiệp.'),(3,'Kỹ năng','Sách tự phát triển bản thân, kỹ năng sống, giao tiếp và tư duy.'),(4,'Công nghệ','Sách về lập trình, trí tuệ nhân tạo, khoa học máy tính và thiết kế.'),(5,'Thiếu nhi','Truyện tranh, truyện ngụ ngôn và sách giáo dục dành cho trẻ em.'),(6,'Sach truong thanh','aaa'),(7,'Tạp chí ','');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `book_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `book_id` (`book_id`),
  CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,10,3,180000),(2,2,11,2,20000),(3,3,10,1,180000),(4,4,10,1,180000);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` double NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PENDING',
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,3,'2026-06-04 01:50:21',540000,'DELIVERED','Dao Hai Dang','0964723844','dddd'),(2,3,'2026-06-11 19:02:59',40000,'DELIVERED','Dao Hai Dang','0964723844','dddd'),(3,3,'2026-06-11 19:07:01',180000,'PENDING','Dao Hai Dang','0964723844','dddd'),(4,3,'2026-06-11 19:38:25',180000,'PENDING','Dao Hai Dang','0964723844','dddd');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_percent` int NOT NULL DEFAULT '0',
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `min_order_amount` double DEFAULT '0',
  `usage_limit` int DEFAULT '0',
  `used_count` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'SALE20','Giảm 20% cho tất cả đơn hàng',20,'2026-01-01','2026-12-31',1,100000,100,12),(2,'SUMMER26','Khuyến mãi hè 2026 - Giảm 15%',15,'2026-06-01','2026-08-31',1,50000,200,5),(3,'NEWUSER','Ưu đãi khách hàng mới - Giảm 10%',10,'2026-01-01','2026-12-31',1,0,0,30),(4,'BOOK50','Flash Sale - Giảm 50% cho đơn từ 500K',50,'2026-06-10','2026-06-15',1,500000,50,48);
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USER',
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin123','ADMIN','Quản trị viên','admin@bookshop.vn','0987654321','Cầu Giấy, Hà Nội'),(2,'user','user123','USER','Nguyễn Văn Anh','user@gmail.com','0123456789','Từ Liêm, Hà Nội'),(3,'dangdao','dangdao','USER','Dao Hai Dang','dangdao2k5@gmail.com','0964723844','dddd');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-23 13:10:44
