-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: vendor
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `StoreID` varchar(12) NOT NULL,
  `StoreName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Open_Time` varchar(5) DEFAULT NULL,
  `Closing_Time` varchar(5) DEFAULT NULL,
  `Quality` decimal(12,2) DEFAULT NULL,
  `Manner` decimal(12,2) DEFAULT NULL,
  `Pricing` decimal(12,2) DEFAULT NULL,
  `Space` decimal(12,2) DEFAULT NULL,
  `Overall` decimal(65,30) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StoreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES ('STR0001','Phở 360','39 Cửa Bắc, P. Trúc Bạch, Quận Ba Đình, Hà Nội','06:00','18:00',8.90,8.30,8.40,8.50,8.525000000000000000000000000000,'https://media.meete.co/cache/0x0/2017/03/03/a9a0c582-fdc6-4f4e-9a0d-fe3d2021a4b5.jpeg'),('STR0002','Phở Gia Truyền - Bát Đàn','49 Bát Đàn, Quận Hoàn Kiếm, Hà Nội','06:00','10:00',8.10,6.10,6.40,6.80,6.850000000000000000000000000000,'http://i.imgur.com/RMmZq.jpg'),('STR0003','Phở Vui','25 Hàng Giầy, Quận Hoàn Kiếm, Hà Nội','07:00','22:00',8.00,6.80,6.50,6.50,6.950000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0004','Đệ Nhất Bánh Bao','59 Lương Ngọc Quyến, Quận Hoàn Kiếm, Hà Nội','07:00','21:00',8.30,7.30,6.30,6.30,7.050000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0005','Sam Bread','18 Ngõ 84 Võ Thị Sáu, Quận Hai Bà Trưng, Hà Nội','09:00','21:00',7.00,7.30,7.50,5.80,6.900000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0006','Quán Gốc Đa - Bánh Gối & Bánh Rán Mặn','52 Lý Quốc Sư, Quận Hoàn Kiếm, Hà Nội','07:00','19:00',7.40,6.50,7.20,6.20,6.825000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0007','Bánh Tôm Hồ Tây','1 Thanh Niên, P. Yên Phụ, Quận Tây Hồ, Hà Nội','07:00','23:00',6.40,5.90,6.00,7.80,6.525000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0008','Bún Chả Hà Nội - Tô Hiệu','102 B8 Tô Hiệu, Quận Cầu Giấy, Hà Nội','09:00','21:00',8.40,8.10,8.20,7.80,8.125000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0009','Bún Cá Bà Hồng','92 Thành Công, Quận Ba Đình, Hà Nội','07:00','22:00',8.30,7.90,7.80,6.30,7.575000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0010','Bún Riêu Ốc - Huỳnh Thúc Kháng','110 G22, Ngõ 16 Huỳnh Thúc Kháng, Quận Đống Đa, Hà Nội','06:00','10:30',8.30,6.90,7.10,7.30,7.400000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0011','Bún Mọc - Hàng Lược','57 Hàng Lược, Quận Hoàn Kiếm, Hà Nội','09:00','22:00',8.00,7.40,8.00,6.10,7.375000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0012','Miến Lươn Phủ Doãn','2 Phủ Doãn, Quận Hoàn Kiếm, Hà Nội','17:00','23:30',8.00,7.50,7.50,6.50,7.375000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0013','Phở Cuốn Hưng Bền - Ngũ Xã','33 Ngũ Xã, Quận Ba Đình, Hà Nội','07:00','23:00',7.50,6.90,7.20,6.60,7.050000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0014','Bánh Xèo Nem Lụi - Đội Cấn','166B Đội Cấn, Quận Ba Đình, Hà Nội','08:00','22:30',7.80,7.10,7.20,5.90,7.000000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0015','Nộm Hải Sinh','53 Đinh Tiên Hoàng, Quận Hoàn Kiếm, Hà Nội','07:00','22:00',7.70,7.50,6.90,8.10,7.550000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0016','Chân Gà Nướng - Bà Triệu','240 Bà Triệu, Quận Hai Bà Trưng, Hà Nội','18:00','23:00',7.90,6.30,7.20,6.60,7.000000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0017','Nộm Bò Khô, Bánh Bột Lọc & Nem Chua Rán - Hồ Thành Công','111 A5, TT. Bắc Thành Công, Quận Ba Đình, Hà Nội','07:30','18:30',7.50,7.50,7.50,6.50,7.250000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0018','Nem Chua Rán - Ngọc Lâm','407 Ngọc Lâm, Quận Long Biên, Hà Nội','18:00','22:30',7.50,7.50,8.00,7.20,7.550000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0019','Cơm 123 - Phố Huế','55 Phố Huế, Quận Hai Bà Trưng, Hà Nội','09:00','22:30',7.60,6.90,6.40,7.50,7.100000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0020','Quán Gấu - Cơm Văn Phòng','134 Hào Nam, Quận Đống Đa, Hà Nội','09:00','21:00',7.80,7.80,7.80,6.80,7.550000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0021','Vị Quảng - Ẩm Thực Miền Trung - Trần Hưng Đạo','35 Trần Hưng Đạo, Quận Hoàn Kiếm, Hà Nội','09:00','22:00',7.60,7.30,7.20,6.50,7.150000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0022','Xôi Yến - Nguyễn Hữu Huân','35B Nguyễn Hữu Huân, Quận Hoàn Kiếm, Hà Nội','06:00','01:00',7.50,6.40,6.10,6.30,6.575000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0023','Cháo Sườn Ngõ Huyện','43 Ngõ Huyện, Quận Hoàn Kiếm, Hà Nội','12:00','20:00',7.60,6.80,6.80,6.10,6.825000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0024','An Nam Cháo','18 Đào Tấn, Quận Ba Đình, Hà Nội','07:00','02:30',7.10,7.90,7.50,6.40,7.225000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0025','KoRo Tea - Fresh & Juice','12A Trần Nhân Tông, Quận Hai Bà Trưng, Hà Nội','08:00','23:00',7.80,7.20,6.80,6.80,7.150000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg'),('STR0026','Trà Sữa Bobapop - Đào Tấn','103 Đào Tấn, P. Ngọc Khánh, Quận Ba Đình, Hà Nội','09:00','22:00',7.80,7.70,7.40,7.10,7.500000000000000000000000000000,'http://media.doisongphapluat.com/379/2014/9/25/ph%E1%BB%9F%20vui.jpg');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-22 21:30:29
