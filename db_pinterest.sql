-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: db_pinterest
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `binh_luan`
--

DROP TABLE IF EXISTS `binh_luan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `binh_luan` (
  `binh_luan_id` int NOT NULL AUTO_INCREMENT,
  `noi_dung` varchar(500) DEFAULT NULL,
  `ngay_binh_luan` date DEFAULT NULL,
  `hinh_id` int DEFAULT NULL,
  `nguoi_dung_id` int DEFAULT NULL,
  PRIMARY KEY (`binh_luan_id`),
  KEY `hinh_id` (`hinh_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  CONSTRAINT `binh_luan_ibfk_1` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`),
  CONSTRAINT `binh_luan_ibfk_2` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binh_luan`
--

LOCK TABLES `binh_luan` WRITE;
/*!40000 ALTER TABLE `binh_luan` DISABLE KEYS */;
INSERT INTO `binh_luan` VALUES (1,'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.','2022-10-20',74,8),(2,'Duis ac nibh.','2022-03-17',95,20),(3,'Morbi quis tortor id nulla ultrices aliquet.','2022-04-15',32,27),(4,'Aliquam non mauris. Morbi non lectus.','2022-03-13',35,45),(5,'Phasellus id sapien in sapien iaculis congue.','2022-10-25',97,22),(6,'Cras pellentesque volutpat dui.','2022-05-24',43,49),(7,'Integer tincidunt ante vel ipsum.','2022-11-09',3,14),(8,'Praesent blandit.','2022-08-26',51,22),(9,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','2022-08-26',98,5),(10,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','2022-07-12',4,37),(11,'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.','2022-04-13',8,14),(12,'Nulla tellus.','2022-07-16',27,47),(13,'Integer non velit.','2022-09-26',28,17),(14,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','2022-10-04',47,9),(15,'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.','2022-03-21',68,21),(16,'Integer tincidunt ante vel ipsum.','2022-03-30',41,39),(17,'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.','2022-06-10',6,11),(18,'Aenean sit amet justo. Morbi ut odio.','2022-04-03',20,28),(19,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam vel augue.','2022-04-20',40,8),(20,'Duis at velit eu est congue elementum.','2022-10-26',95,45),(21,'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros. Vestibulum ac est lacinia nisi venenatis tristique.','2022-10-02',6,26),(22,'Ut at dolor quis odio consequat varius. Integer ac leo.','2022-05-30',3,11),(23,'Cras in purus eu magna vulputate luctus.','2022-09-14',68,5),(24,'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.','2023-02-23',76,21),(25,'Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.','2022-08-19',81,40),(26,'Integer ac leo.','2022-05-25',23,31),(27,'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.','2022-08-21',4,38),(28,'In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.','2023-02-15',16,8),(29,'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','2022-05-31',17,41),(30,'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.','2022-09-14',65,6),(31,'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.','2022-09-22',17,38),(32,'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.','2022-11-30',98,20),(33,'Proin interdum mauris non ligula pellentesque ultrices.','2022-05-16',57,45),(34,'Suspendisse potenti.','2022-10-18',76,10),(35,'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.','2022-07-24',29,20),(36,'Proin eu mi.','2022-05-16',75,45),(37,'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.','2022-10-31',58,31),(38,'Aliquam non mauris.','2022-08-10',38,49),(39,'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue.','2022-08-24',14,17),(40,'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.','2022-11-30',56,33),(41,'Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.','2022-05-15',9,10),(42,'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','2022-03-17',71,7),(43,'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.','2022-07-29',25,39),(44,'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.','2022-12-27',30,16),(45,'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.','2023-01-19',95,7),(46,'Aenean sit amet justo.','2022-06-23',62,27),(47,'Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo.','2022-09-23',30,37),(48,'Fusce consequat. Nulla nisl.','2022-05-21',91,34),(49,'Morbi a ipsum. Integer a nibh.','2022-05-16',67,40),(50,'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.','2022-09-28',1,11),(51,'This is one of my favorite photos','2023-03-04',1,1),(52,'This is one of my favorite photos','2023-03-04',1,1),(53,'This is one of my favorite photos','2023-03-13',1,51);
/*!40000 ALTER TABLE `binh_luan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinh_anh`
--

DROP TABLE IF EXISTS `hinh_anh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinh_anh` (
  `hinh_id` int NOT NULL AUTO_INCREMENT,
  `ten_hinh` varchar(100) DEFAULT NULL,
  `duong_dan` varchar(100) DEFAULT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `nguoi_dung_id` int DEFAULT NULL,
  PRIMARY KEY (`hinh_id`),
  KEY `nguoi_dung_id` (`nguoi_dung_id`),
  CONSTRAINT `hinh_anh_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`),
  CONSTRAINT `hinh_anh_ibfk_2` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinh_anh`
--

LOCK TABLES `hinh_anh` WRITE;
/*!40000 ALTER TABLE `hinh_anh` DISABLE KEYS */;
INSERT INTO `hinh_anh` VALUES (1,'User-centric','https://cdn.pixabay.com/photo/2022/11/03/15/06/cat-7567706_1280.jpg','Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.',33),(2,'core','https://cdn.pixabay.com/photo/2023/02/22/19/13/sencha-7807228_640.jpg','Duis at velit eu est congue elementum.',50),(3,'forecast','https://cdn.pixabay.com/photo/2023/03/12/22/31/city-7847987_640.jpg','Nulla facilisi. Cras non velit nec nisi vulputate nonummy.',45),(4,'neutral','https://cdn.pixabay.com/photo/2022/12/16/16/15/green-leaves-7660080_1280.jpg','Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',2),(5,'hybrid','https://cdn.pixabay.com/photo/2023/02/26/18/53/man-7816702_1280.jpg','Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus. Suspendisse potenti.',22),(6,'circuit','https://cdn.pixabay.com/photo/2022/12/04/16/17/leaves-7634894__480.jpg','In congue. Etiam justo.',34),(7,'hub','https://cdn.pixabay.com/photo/2023/03/03/17/36/peafowl-7828140__480.jpg','Vestibulum sed magna at nunc commodo placerat. Praesent blandit.',3),(8,'capability','https://cdn.pixabay.com/photo/2023/01/17/12/31/background-7724476__480.jpg','Morbi non quam nec dui luctus rutrum. Nulla tellus.',25),(9,'maximized','https://cdn.pixabay.com/photo/2022/10/11/12/38/french-bulldog-7514203__480.jpg','Sed sagittis.',22),(10,'multi-tasking','https://cdn.pixabay.com/photo/2022/09/20/19/13/mountains-7468597__480.jpg','Nulla nisl.',16),(11,'encryption','https://cdn.pixabay.com/photo/2023/01/03/10/35/butterfly-7694101__480.jpg','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.',26),(12,'grid-enabled','https://cdn.pixabay.com/photo/2023/01/02/04/13/dog-7691238__480.jpg','Morbi quis tortor id nulla ultrices aliquet. Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.',36),(13,'forecast','https://cdn.pixabay.com/photo/2022/11/28/14/07/skyline-7622147__480.jpg','Sed ante. Vivamus tortor.',19),(14,'Total','https://cdn.pixabay.com/photo/2022/07/03/16/38/bird-7299650__480.jpg','Aliquam sit amet diam in magna bibendum imperdiet.',9),(15,'complexity','https://cdn.pixabay.com/photo/2022/11/03/17/55/hall-7568043__480.jpg','Aenean lectus.',17),(16,'internet solution','https://cdn.pixabay.com/photo/2022/10/20/19/31/dog-7535633__480.jpg','Curabitur gravida nisi at nibh.',7),(17,'systemic','https://cdn.pixabay.com/photo/2022/12/16/12/59/christmas-7659606__480.jpg','Praesent lectus. Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.',50),(18,'Versatile','https://cdn.pixabay.com/photo/2022/01/06/22/30/new-year-6920394__480.jpg','Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',44),(19,'Inverse','https://cdn.pixabay.com/photo/2022/12/18/11/45/christmas-7663229__480.jpg','Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros.',17),(20,'regional','https://cdn.pixabay.com/photo/2022/11/07/18/33/hibiscus-7577002__480.jpg','Aenean sit amet justo. Morbi ut odio.',15),(21,'Synergized','https://cdn.pixabay.com/photo/2022/12/12/12/58/dog-7651002__480.jpg','Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.',31),(22,'capability','https://cdn.pixabay.com/photo/2022/03/10/11/03/eastern-grey-kangaroo-7059640__480.jpg','Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.',28),(23,'product','https://cdn.pixabay.com/photo/2021/11/22/05/02/dalmatian-6815838__480.jpg','Pellentesque ultrices mattis odio. Donec vitae nisi.',14),(24,'Progressive','https://cdn.pixabay.com/photo/2022/11/20/21/09/mirabelle-plum-7605256__480.jpg','Etiam justo.',13),(25,'circuit','https://cdn.pixabay.com/photo/2022/01/25/12/16/laptop-6966045__480.jpg','Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.',6),(26,'Multi-tiered','https://cdn.pixabay.com/photo/2022/09/03/10/52/northern-gannets-7429282__480.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.',50),(27,'exuding','https://cdn.pixabay.com/photo/2022/10/15/14/55/ornamental-plant-7523304__480.jpg','Aenean fermentum. Donec ut mauris eget massa tempor convallis.',11),(28,'Stand-alone','https://cdn.pixabay.com/photo/2022/11/13/18/09/canyon-7589820__480.jpg','In sagittis dui vel nisl.',18),(29,'moderator','https://cdn.pixabay.com/photo/2022/10/17/15/44/bird-7528089__480.jpg','Nulla nisl.',39),(30,'application','https://cdn.pixabay.com/photo/2022/11/14/06/56/maple-7590861__480.jpg','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',6),(31,'Graphical User Interface','https://cdn.pixabay.com/photo/2022/11/07/18/29/bird-7576994__480.jpg','Nulla tellus. In sagittis dui vel nisl.',50),(32,'multimedia','https://cdn.pixabay.com/photo/2022/07/13/16/25/cat-7319589__480.jpg','Proin leo odio, porttitor id, consequat in, consequat ut, nulla.',39),(33,'needs-based','https://cdn.pixabay.com/photo/2022/11/08/05/53/fall-7577769__480.jpg','Aenean sit amet justo. Morbi ut odio.',16),(34,'knowledge user','https://cdn.pixabay.com/photo/2022/11/01/15/43/fall-7562668__480.jpg','Nulla ac enim.',17),(35,'Universal','https://cdn.pixabay.com/photo/2021/10/31/14/43/avocados-6757663__480.jpg','In quis justo. Maecenas rhoncus aliquam lacus.',38),(36,'value-added','https://cdn.pixabay.com/photo/2022/04/20/06/28/flowers-7144466__480.jpg','Aenean fermentum. Donec ut mauris eget massa tempor convallis.',34),(37,'analyzer','https://cdn.pixabay.com/photo/2022/11/02/11/56/fish-7564701__480.jpg','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',3),(38,'local','https://cdn.pixabay.com/photo/2022/10/31/17/31/copper-teapots-7560392__480.jpg','Duis mattis egestas metus. Aenean fermentum.',4),(39,'contextually-based','https://cdn.pixabay.com/photo/2022/09/18/14/23/baby-7463137__480.jpg','Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.',6),(40,'4th generation','https://cdn.pixabay.com/photo/2022/04/08/04/11/instrument-7118629__480.jpg','Aliquam erat volutpat. In congue.',23),(41,'executive','https://cdn.pixabay.com/photo/2022/06/06/07/17/rome-7245470__480.jpg','In hac habitasse platea dictumst.',18),(42,'Switchable','https://cdn.pixabay.com/photo/2022/10/17/11/41/chameleon-7527416__480.jpg','Aenean auctor gravida sem.',17),(43,'incremental','https://cdn.pixabay.com/photo/2022/10/19/15/06/shell-7532783__480.jpg','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.',33),(44,'regional','https://cdn.pixabay.com/photo/2022/08/26/04/19/beach-7411683__480.jpg','Etiam justo. Etiam pretium iaculis justo.',10),(45,'regional','https://cdn.pixabay.com/photo/2022/10/03/13/16/houses-7495861__480.jpg','Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.',9),(46,'multi-state','https://cdn.pixabay.com/photo/2022/06/19/07/47/camera-7271284__480.jpg','Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.',1),(47,'well-modulated','https://cdn.pixabay.com/photo/2022/06/20/20/32/hedgehog-7274569__480.jpg','Morbi a ipsum. Integer a nibh.',50),(48,'Persistent','https://cdn.pixabay.com/photo/2022/09/08/10/19/eye-7440640__480.jpg','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',30),(49,'upward-trending','https://cdn.pixabay.com/photo/2022/08/21/14/32/london-7401433__480.jpg','Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.',42),(50,'Programmable','https://cdn.pixabay.com/photo/2022/09/16/16/09/harvest-7458975__480.jpg','Nulla tellus. In sagittis dui vel nisl.',44),(51,'6th generation','https://cdn.pixabay.com/photo/2022/09/20/20/22/blueberries-7468718__480.jpg','Sed ante. Vivamus tortor.',22),(52,'Cloned','https://cdn.pixabay.com/photo/2022/05/21/09/30/cat-7211080__480.jpg','Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.',16),(53,'strategy','https://cdn.pixabay.com/photo/2022/08/05/21/28/strawberries-7367633__480.jpg','Donec vitae nisi.',5),(54,'strategy','https://cdn.pixabay.com/photo/2022/08/24/15/42/library-7408106__480.jpg','Morbi non quam nec dui luctus rutrum.',47),(55,'multi-state','https://cdn.pixabay.com/photo/2022/09/05/18/53/caterpillar-7434958__480.jpg','Integer tincidunt ante vel ipsum.',35),(56,'asymmetric','https://cdn.pixabay.com/photo/2021/05/01/13/10/leaf-6220977__480.jpg','Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh. Quisque id justo sit amet sapien dignissim vestibulum.',49),(57,'secured line','https://cdn.pixabay.com/photo/2022/07/21/13/40/mongolian-girl-7336271__480.jpg','Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.',12),(58,'asynchronous','https://cdn.pixabay.com/photo/2022/08/16/17/31/lake-7390865__480.jpg','Aenean lectus.',16),(59,'client-driven','https://cdn.pixabay.com/photo/2022/08/17/08/14/fish-7391851__480.jpg','Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.',49),(60,'Adaptive','https://cdn.pixabay.com/photo/2022/08/23/06/55/village-7405160__480.jpg','Nulla nisl. Nunc nisl.',15),(61,'Grass-roots','https://cdn.pixabay.com/photo/2022/07/10/01/38/keyboard-7312016__480.jpg','Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',44),(62,'extranet','https://cdn.pixabay.com/photo/2022/06/29/17/47/coffee-7292250__480.jpg','Pellentesque ultrices mattis odio. Donec vitae nisi.',22),(63,'tertiary','https://cdn.pixabay.com/photo/2022/08/26/07/57/tavern-7411977__480.jpg','Aenean fermentum.',24),(64,'eco-centric','https://cdn.pixabay.com/photo/2022/08/23/04/12/vietnamese-woman-7404948__480.jpg','In sagittis dui vel nisl.',12),(65,'high-level','https://cdn.pixabay.com/photo/2018/01/29/19/42/city-3116989__480.jpg','Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl. Aenean lectus.',33),(66,'synergy','https://cdn.pixabay.com/photo/2022/08/04/13/14/italy-7364680__480.jpg','Aenean lectus. Pellentesque eget nunc.',3),(67,'web-enabled','https://cdn.pixabay.com/photo/2022/08/06/19/20/woman-7369219__480.jpg','Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.',12),(68,'bottom-line','https://cdn.pixabay.com/photo/2022/07/25/18/47/waterfall-7344396__480.jpg','Aenean sit amet justo.',25),(69,'leading edge','https://cdn.pixabay.com/photo/2022/08/15/14/26/baby-7388054__480.jpg','Donec semper sapien a libero. Nam dui.',26),(70,'open architecture','https://cdn.pixabay.com/photo/2020/11/04/13/29/white-5712344__480.jpg','Duis mattis egestas metus.',22),(71,'optimizing','https://cdn.pixabay.com/photo/2022/08/01/12/24/people-7358064__480.jpg','Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.',37),(72,'complexity','https://cdn.pixabay.com/photo/2022/06/21/08/59/street-7275461__480.jpg','Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.',20),(73,'Front-line','https://cdn.pixabay.com/photo/2022/07/28/22/04/sun-7350734__480.jpg','Suspendisse potenti. Cras in purus eu magna vulputate luctus.',3),(74,'systemic','https://cdn.pixabay.com/photo/2022/07/31/22/32/moon-7357007__480.jpg','Proin leo odio, porttitor id, consequat in, consequat ut, nulla.',23),(75,'composite','https://cdn.pixabay.com/photo/2020/01/10/12/22/landscape-4755205__480.jpg','Duis consequat dui nec nisi volutpat eleifend.',26),(76,'Multi-layered','https://cdn.pixabay.com/photo/2022/07/22/13/23/coast-7338147__480.jpg','Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo.',26),(77,'Face to face','https://cdn.pixabay.com/photo/2022/07/07/07/25/dog-7306691__480.jpg','Cras in purus eu magna vulputate luctus.',13),(78,'Persistent','https://cdn.pixabay.com/photo/2022/03/13/15/45/coffee-7066308__480.jpg','Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.',21),(79,'User-friendly','https://cdn.pixabay.com/photo/2022/06/21/23/11/asian-7276658__480.jpg','Phasellus in felis.',39),(80,'Function-based','https://cdn.pixabay.com/photo/2022/07/11/19/51/sea-7315960__480.jpg','Praesent id massa id nisl venenatis lacinia.',39),(81,'leverage','https://cdn.pixabay.com/photo/2022/07/05/09/19/mother-7302669__480.jpg','Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet.',18),(82,'Distributed','https://cdn.pixabay.com/photo/2022/01/27/00/38/bike-6970834__480.jpg','Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit.',44),(83,'optimizing','https://cdn.pixabay.com/photo/2022/06/20/16/54/cat-7274205__480.jpg','Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.',50),(84,'Devolved','https://cdn.pixabay.com/photo/2016/07/22/02/58/mango-1534061__480.jpg','In eleifend quam a odio.',3),(85,'Synchronised','https://cdn.pixabay.com/photo/2021/10/19/20/20/waterfall-6724514__480.jpg','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam.',14),(86,'Graphic Interface','https://cdn.pixabay.com/photo/2021/09/13/08/13/dahlia-6620610__480.jpg','Praesent blandit lacinia erat.',37),(87,'monitoring','https://cdn.pixabay.com/photo/2022/05/13/10/35/flower-7193390__480.jpg','In hac habitasse platea dictumst.',22),(88,'solution-oriented','https://cdn.pixabay.com/photo/2022/06/09/17/16/allium-7252980__480.jpg','Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.',27),(89,'algorithm','https://cdn.pixabay.com/photo/2022/06/02/18/20/knitting-7238657__480.jpg','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.',21),(90,'Enhanced','https://cdn.pixabay.com/photo/2022/05/15/13/32/fashionable-7198003__480.jpg','Aliquam non mauris.',40),(91,'Phased','https://cdn.pixabay.com/photo/2022/02/20/13/56/red-throated-barbet-7024605__480.jpg','Donec semper sapien a libero. Nam dui.',42),(92,'mission-critical','https://cdn.pixabay.com/photo/2022/02/26/21/35/candies-7036390__480.jpg','Maecenas pulvinar lobortis est.',49),(93,'background','https://cdn.pixabay.com/photo/2022/05/28/11/27/gdansk-7227096__480.jpg','Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.',36),(94,'Digitized','https://cdn.pixabay.com/photo/2022/05/20/13/29/dogs-7209506__480.jpg','Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum.',35),(95,'full-range','https://cdn.pixabay.com/photo/2022/03/05/09/34/woman-7048766__480.jpg','In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.',7),(96,'Intuitive','https://cdn.pixabay.com/photo/2017/03/01/05/13/table-setting-2107600__480.jpg','Suspendisse potenti.',34),(97,'Team-oriented','https://cdn.pixabay.com/photo/2022/03/26/09/24/dog-7092595__480.jpg','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.',38),(98,'concept','https://cdn.pixabay.com/photo/2022/03/16/04/08/koi-fish-7071556__480.jpg','Nulla facilisi.',2),(99,'circuit','https://cdn.pixabay.com/photo/2022/02/11/16/38/sunset-7007680__480.jpg','In sagittis dui vel nisl. Duis ac nibh.',25),(100,'Open-source','https://cdn.pixabay.com/photo/2022/02/09/17/22/cat-7003849__480.jpg','Integer ac neque. Duis bibendum.',18);
/*!40000 ALTER TABLE `hinh_anh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `luu_anh`
--

DROP TABLE IF EXISTS `luu_anh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `luu_anh` (
  `nguoi_dung_id` int NOT NULL,
  `hinh_id` int NOT NULL,
  `ngay_luu` date DEFAULT NULL,
  PRIMARY KEY (`nguoi_dung_id`,`hinh_id`),
  KEY `hinh_id` (`hinh_id`),
  CONSTRAINT `luu_anh_ibfk_1` FOREIGN KEY (`nguoi_dung_id`) REFERENCES `nguoi_dung` (`nguoi_dung_id`),
  CONSTRAINT `luu_anh_ibfk_2` FOREIGN KEY (`hinh_id`) REFERENCES `hinh_anh` (`hinh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `luu_anh`
--

LOCK TABLES `luu_anh` WRITE;
/*!40000 ALTER TABLE `luu_anh` DISABLE KEYS */;
INSERT INTO `luu_anh` VALUES (3,31,'2023-01-02'),(4,52,'2023-01-18'),(10,54,'2023-02-27'),(11,12,'2022-02-05'),(11,42,'2023-02-07'),(11,75,'2022-09-25'),(13,4,'2022-04-02'),(13,30,'2022-03-23'),(13,56,'2022-04-02'),(14,9,'2022-10-07'),(16,89,'2022-07-26'),(19,96,'2022-04-14'),(21,100,'2022-10-27'),(25,81,'2022-01-24'),(28,6,'2022-11-28'),(28,31,'2023-01-04'),(30,99,'2022-02-24'),(31,3,'2022-08-12'),(31,5,'2022-08-30'),(31,35,'2022-08-12'),(31,93,'2022-08-30'),(35,73,'2022-08-15'),(35,98,'2023-02-24'),(38,100,'2022-11-29'),(41,2,'2022-02-05'),(41,88,'2022-02-05'),(43,7,'2023-01-04'),(43,10,'2023-01-04'),(44,61,'2022-09-25'),(45,80,'2022-10-16'),(47,20,'2022-07-08'),(47,98,'2022-03-19'),(48,6,'2023-01-08'),(48,40,'2023-01-23'),(48,87,'2023-01-08'),(49,84,'2022-01-24');
/*!40000 ALTER TABLE `luu_anh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_dung` (
  `nguoi_dung_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `mat_khau` varchar(100) NOT NULL,
  `ho_ten` varchar(100) DEFAULT NULL,
  `tuoi` int DEFAULT NULL,
  `anh_dai_dien` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nguoi_dung_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES (1,'tlampet0@dedecms.com','qM1Jb8vgVSc','Tildy Lampet',NULL,'https://robohash.org/mollitiasunta.png?size=50x50&set=set1'),(2,'tspivey1@yahoo.co.jp','hh3WXGakYLY8','Tasha Spivey',NULL,'https://robohash.org/innemosapiente.png?size=50x50&set=set1'),(3,'wferrari2@google.nl','un5Faf0kHLS','Weylin Ferrari',NULL,'https://robohash.org/consequunturvoluptateest.png?size=50x50&set=set1'),(4,'wbryns3@ovh.net','mLW6OAb','Wainwright Bryns',NULL,'https://robohash.org/rerumquidolores.png?size=50x50&set=set1'),(5,'idavidofski4@example.com','p1G6j5fPqvA','Isa Davidofski',NULL,'https://robohash.org/reprehenderitsuscipitexercitationem.png?size=50x50&set=set1'),(6,'hklesse5@ezinearticles.com','3ynt9myV','Hunter Klesse',NULL,'https://robohash.org/saepeerroromnis.png?size=50x50&set=set1'),(7,'cmcgirl6@webs.com','mSmnPsPHHEGa','Carlotta McGirl',NULL,'https://robohash.org/maximedoloremvelit.png?size=50x50&set=set1'),(8,'rkaye7@house.gov','BsLEQAL','Rosella Kaye',NULL,'https://robohash.org/utpossimusincidunt.png?size=50x50&set=set1'),(9,'pevershed8@businessinsider.com','iHTBYa3Nz','Petrina Evershed',NULL,'https://robohash.org/doloremquequiaodio.png?size=50x50&set=set1'),(10,'irycraft9@prweb.com','dWD2Je','Isabelle Rycraft',NULL,'https://robohash.org/molestiaequiaad.png?size=50x50&set=set1'),(11,'aiberta@ameblo.jp','x51rGb5','Arman Ibert',NULL,'https://robohash.org/laudantiumidneque.png?size=50x50&set=set1'),(12,'ehurryb@theguardian.com','t0iDa0hhO','Erhard Hurry',NULL,'https://robohash.org/necessitatibusutporro.png?size=50x50&set=set1'),(13,'glooneyc@tmall.com','Iz063U','Gert Looney',NULL,'https://robohash.org/omnisnihilet.png?size=50x50&set=set1'),(14,'lgoshawkd@discovery.com','WBLc1T4xta','Lanna Goshawk',NULL,'https://robohash.org/rerumperferendisvoluptas.png?size=50x50&set=set1'),(15,'htilzeye@oaic.gov.au','LzN06KYWa','Herby Tilzey',NULL,'https://robohash.org/enimmaximeaut.png?size=50x50&set=set1'),(16,'rimpyf@ucoz.com','hLjCV0R','Reinaldos Impy',NULL,'https://robohash.org/corruptiverout.png?size=50x50&set=set1'),(17,'epapping@pcworld.com','gc8alSykD','Eduino Pappin',NULL,'https://robohash.org/officiisinaspernatur.png?size=50x50&set=set1'),(18,'mbuzzingh@paginegialle.it','xegBPT4I','Morgan Buzzing',NULL,'https://robohash.org/repellatomnisnemo.png?size=50x50&set=set1'),(19,'tdunsmuiri@flickr.com','h5DWkbre4','Trudey Dunsmuir',NULL,'https://robohash.org/aspernaturfugaofficiis.png?size=50x50&set=set1'),(20,'tkornj@google.co.uk','57RCbhjVs','Thomas Korn',NULL,'https://robohash.org/numquamquaeratinventore.png?size=50x50&set=set1'),(21,'dabsolomk@alexa.com','xjVGnQ','Devina Absolom',NULL,'https://robohash.org/dolorquisodit.png?size=50x50&set=set1'),(22,'abenzil@photobucket.com','duEykZS2Yj','Alice Benzi',NULL,'https://robohash.org/ullamoditrerum.png?size=50x50&set=set1'),(23,'depdellm@ocn.ne.jp','1jQEOT','Domeniga Epdell',NULL,'https://robohash.org/eainciduntdolores.png?size=50x50&set=set1'),(24,'ghaysomn@gravatar.com','dEuOKq49P','Geoff Haysom',NULL,'https://robohash.org/eosatvoluptatem.png?size=50x50&set=set1'),(25,'tsheermano@shareasale.com','ER0DCrm4q','Tiffani Sheerman',NULL,'https://robohash.org/estofficiaquis.png?size=50x50&set=set1'),(26,'silyuninp@liveinternet.ru','Gsu0QG','Sancho Ilyunin',NULL,'https://robohash.org/eumquisaut.png?size=50x50&set=set1'),(27,'menstoneq@google.ru','vg0n2TJhnc','Merline Enstone',NULL,'https://robohash.org/culparepudiandaeut.png?size=50x50&set=set1'),(28,'cangelir@toplist.cz','4zdSsURwcFs','Caroline Angeli',NULL,'https://robohash.org/delenitisaepefugit.png?size=50x50&set=set1'),(29,'kgreatrakess@phoca.cz','BF7NK3q0um','Keary Greatrakes',NULL,'https://robohash.org/illotemporibusad.png?size=50x50&set=set1'),(30,'cpratleyt@feedburner.com','zeByBVZm38up','Costa Pratley',NULL,'https://robohash.org/fugiatmaioresporro.png?size=50x50&set=set1'),(31,'mmardeu@noaa.gov','0SPSNWDQHUW1','Marti Marde',NULL,'https://robohash.org/consecteturessecum.png?size=50x50&set=set1'),(32,'mhulsev@rambler.ru','povDX8ye','Mirabella Hulse',NULL,'https://robohash.org/magnivoluptasnobis.png?size=50x50&set=set1'),(33,'njaillerw@dion.ne.jp','6DOf1FyIR9L','Nil Jailler',NULL,'https://robohash.org/voluptasquimaiores.png?size=50x50&set=set1'),(34,'lmacdermotx@blinklist.com','CSIVRAkSat2E','Layla MacDermot',NULL,'https://robohash.org/oditetvero.png?size=50x50&set=set1'),(35,'ustendelly@parallels.com','JY6a7EDWEsav','Ulysses Stendell',NULL,'https://robohash.org/quisaliasillo.png?size=50x50&set=set1'),(36,'mbrometz@hhs.gov','5XwSFi','Meghann Bromet',NULL,'https://robohash.org/oditaliquidsuscipit.png?size=50x50&set=set1'),(37,'rbartoszek10@trellian.com','11yGOOsAmST','Rosabel Bartoszek',NULL,'https://robohash.org/solutaetqui.png?size=50x50&set=set1'),(38,'egebby11@dot.gov','$2b$10$8s7Av3rOVvv7P2wJt3s7z.bRkYKdmfVNN3o113CIUfF1qO3sOZMw2','NAME ME',18,'/Users/tan/Desktop/NODE 28/bai_tap_photo_app/public/avatar1678455800549-captain.jpg'),(39,'ajaves12@google.ca','OYJUIBUKp8r8','Arabelle Javes',NULL,'https://robohash.org/voluptatemvoluptatemeos.png?size=50x50&set=set1'),(40,'mbeaton13@ameblo.jp','e4SA3bPh','Mendie Beaton',NULL,'https://robohash.org/adipisciundeaspernatur.png?size=50x50&set=set1'),(41,'dbuckbee14@usa.gov','rEzhcvKeb0','Demetra Buckbee',NULL,'https://robohash.org/estsuscipitatque.png?size=50x50&set=set1'),(42,'ffindley15@ibm.com','e3E2MP7pZHLs','Fowler Findley',NULL,'https://robohash.org/itaqueanimiquidem.png?size=50x50&set=set1'),(43,'brobiou16@webmd.com','Cs8LIK','Belva Robiou',NULL,'https://robohash.org/voluptasvelitimpedit.png?size=50x50&set=set1'),(44,'rculligan17@shutterfly.com','E5mbK89nmOnW','Ralph Culligan',NULL,'https://robohash.org/molestiaeautiure.png?size=50x50&set=set1'),(45,'tpresswell18@webeden.co.uk','5GHCQit','Tedmund Presswell',NULL,'https://robohash.org/sitaspernaturet.png?size=50x50&set=set1'),(46,'ade19@phoca.cz','nvKJCnxkv','Alta de Aguirre',NULL,'https://robohash.org/ipsamdistinctioerror.png?size=50x50&set=set1'),(47,'ncouvert1a@sbwire.com','F5iuaat7','Nessa Couvert',NULL,'https://robohash.org/quameaeos.png?size=50x50&set=set1'),(48,'jmoxson1b@ucoz.ru','tkEIKP3KYBaX','Jacklyn Moxson',NULL,'https://robohash.org/omnisquasiunde.png?size=50x50&set=set1'),(49,'gkennewell1c@hatena.ne.jp','eUu0pjdb5gM','Ganny Kennewell',NULL,'https://robohash.org/addebitisquo.png?size=50x50&set=set1'),(50,'bshipsey1d@cdbaby.com','luXwpbIA39i','Barbabra Shipsey',NULL,'https://robohash.org/porroexercitationemnon.png?size=50x50&set=set1'),(51,'test@gmail.com','$2b$10$5csRLbo4AtMT8abM.SQLH.FSjAhhw9ud/WNyKQ4cR.RYTZh.O6NwC','Test Test Test',NULL,NULL),(55,'testupload@gmail.com','1234','Test Upload',NULL,NULL);
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-18  1:55:46
