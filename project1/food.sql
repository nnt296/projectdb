-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: food
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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `food_id` int(11) NOT NULL AUTO_INCREMENT,
  `FoodID` varchar(12) DEFAULT NULL,
  `Foodname` varchar(25) DEFAULT NULL,
  `Category1` varchar(12) DEFAULT NULL,
  `Category2` varchar(12) DEFAULT NULL,
  `Category3` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'NO001','Bún chả','Bún','Món chính',NULL,'Bún ăn kèm chả viên, chả miếng nướng và nước mắm.','https://upload.wikimedia.org/wikipedia/commons/6/6a/B%C3%BAn_ch%E1%BA%A3_H%C3%A0ng_M%C3%A0nh.jpg'),(2,'NO002','Bún cá','Bún','Món chính',NULL,'Bún nước, ăn kèm với cá rán hoặc nướng và các đồ ăn kèm khác','http://media.giadinhvietnam.com/files/2016/06/27/09/12/bun_ca_1.jpg'),(3,'NO003','Bún mọc','Bún','Món chính',NULL,'Bún nước, ăn kèm với mọc viên, giò viên và các đồ ăn kèm khác.','https://media.foody.vn/res/g10/97891/prof/s640x400/foody-mobile-bun-moc-jpg-347-635493963143389705.jpg'),(4,'NO004','Bún ốc','Bún','Món chính',NULL,'Bún nước, ăn kèm với ốc','https://upload.wikimedia.org/wikipedia/commons/3/37/B%C3%BAn_%E1%BB%91c.jpg'),(5,'NO005','Bún riêu cua','Bún','Món chính',NULL,'Bún nước, ăn kèm với riêu cua, nấu từ cua giã nhuyễn, và các đồ ăn kèm khác.','https://upload.wikimedia.org/wikipedia/commons/2/2a/B%C3%BAn_ri%C3%AAu_cua_n%C6%B0%E1%BB%9Bc.jpg'),(6,'NO006','Bún thang','Bún','Món chính',NULL,'Bún nước, ăn kèm với nhiều đò ăn khác, như trứng, thịt gà và giò, được xé nhỏ.','https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/B%C3%BAn_thang.JPG/1024px-B%C3%BAn_thang.JPG'),(7,'NO007','Bánh đa cua','Bánh đa','Món chính',NULL,'Bánh đa nước, ăn kèm với riêu cua, nấu từ cua giã nhuyễn, và các đồ ăn kèm khác','https://media.foody.vn/res/g10/99777/s/foody-cafe-kich-vm-165-635881372168028357.jpg'),(8,'NO008','Bánh đa trộn','Bánh đa','Món chính',NULL,'Bánh đa, được xào hoặc chần qua, trộn với các đồ ăn kèm như thịt, chả hay hải sản','http://img.news.zing.vn/img/444/t444616.jpg'),(9,'NO009','Mỳ xào','Mỳ','Món chính',NULL,'Mỳ ăn liền xào cùng với thịt hoặc các loại hải sản khác nhau.','http://media.phunutoday.vn/files/upload_images/2015/11/20/cach-lam-my-xao-bo-ngon-3-phunutoday_vn.jpg'),(10,'NO0010','Miến lươn','Miến','Món chính',NULL,'Miến ăn kèm với lươn, có thể ăn khô hoặc kèm với nước dùng.','https://upload.wikimedia.org/wikipedia/vi/d/d7/Mien_luon_Hang_Dieu.JPG'),(11,'NO011','Miến trộn','Miến','Món chính',NULL,'Miến được xào qua hoặc chần qua, trộn với các đồ ăn kèm như thịt, chả hay hải sản.','http://farm4.static.flickr.com/3272/3100171320_3cdfe3c23d.jpg'),(12,'NO012','Phở nước','Phở','Món chính',NULL,'Bánh phở sợi ăn kèm với nước dùng, cùng thịt gà hoặc thịt bò.','https://upload.wikimedia.org/wikipedia/commons/9/96/Pho-Beef-Noodle-Soup-2008.jpg'),(13,'NO013','Phở cuốn','Phở','Món chính',NULL,'Bánh phở lá cuộn với đồ ăn kèm như rau thơm hoặc thịt bò, ăn cùng với nước chấm.','http://phocuon.vn/wp-content/uploads/01Phocuon.jpg'),(14,'NO014','Phở chiên phồng','Phở','Món chính',NULL,'Bánh phở lá chiên phồng, ăn kèm với các món khác, như rau và thịt bò xào.','http://niemdamme.com.vn/Uploads/files/pho-chien-phong.jpg'),(15,'NO015','Phở chiên trứng','Phở','Món chính',NULL,'Bánh phở sợi được đánh cùng với trứng, chiên, ăn kèm với các món khác.','http://muachung10.vcmedia.vn/thumb_w/550/i:gallery/2013/08/10/0b0ov/Thuong-thuc-pho-cuon-pho-chien-phong-Ngu-Xa.jpg'),(16,'NO016','Phở xào','Phở','Món chính',NULL,'Bánh phở sợi xào với rau và thịt','https://media.foody.vn/res/g5/44944/prof/s640x400/foody-mobile-pho-xao-com-rang-ha-noi-131126114654.jpg'),(17,'RI001','Cơm suất','Cơm','Món chính',NULL,'Cơm, được phục vụ kèm nhiều món ăn đang dạng khác nhau theo thực đơn và lựa chọn','https://blog.kitfe.com/wp-content/uploads/2016/09/Com-bi-cha-1024x683.jpg');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-29 22:59:19
