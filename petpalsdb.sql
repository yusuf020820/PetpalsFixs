-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: petpals_db
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `content` text NOT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `authorId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authorId` (`authorId`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`authorId`) REFERENCES `dokter` (`id_dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dokter`
--

DROP TABLE IF EXISTS `dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dokter` (
  `id_dokter` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) NOT NULL,
  `no_hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `usia` int DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `url_foto` varchar(225) DEFAULT NULL,
  `alamat` varchar(225) NOT NULL,
  `lulusan` varchar(225) DEFAULT NULL,
  `spesialis` varchar(225) DEFAULT NULL,
  `pengalaman` int NOT NULL,
  `refresh_token` text,
  PRIMARY KEY (`id_dokter`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter`
--

LOCK TABLES `dokter` WRITE;
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT INTO `dokter` VALUES (5,'M samsul','628745643','samsul@gmail.com','$2b$10$q69IryYBoc2vkvq0DeScBu7NHBdqpG5TFBJLnHaxF7Vmg9kNsBagG','Laki-laki',20,'5-83582-jasa-penitipan-hewan-1722245123829.jpg','http://localhost:5000/uploads/profile/5-83582-jasa-penitipan-hewan-1722245123829.jpg','bandung','Universitas Dokter Hewan Indonesia','Hewan Ternak',5,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZW1haWwiOiJzYW1zdWxAZ21haWwuY29tIiwiaWF0IjoxNzIyMjQ1MDUzLCJleHAiOjE3MjIzMzE0NTN9.xDt3hSsjN_yDwWsaVkRImQ9dDVfb0nNnQqOkTTTGOOs'),(6,'saeful ahmad','6282637236427','saeful@gmail.com','$2b$10$rppBbDP92T9BXhZQwhZ6a.OFnaZKMu/QyT85taY9EjGLG4N8KSn8K','Laki-laki',30,'6-download-1722183494765.jpg','http://localhost:5000/uploads/profile/6-download-1722183494765.jpg','Medika cipta nusantara','Universitas Dokter Hewan Indonesia','Hewan Endemik',6,NULL),(7,'asds','623423434324','coba@gmail.com','$2b$10$KW5NP6SIIMz7WQZu5DurWeg7LxPi.D4lAZt6BU5CBI5IfPCinfBxO','Laki-laki',20,'7-pngtree-doctor-and-cat-holding-kitten-in-the-veterinarian-during-the-day-image_801319-1722238406287.jpg','http://localhost:5000/uploads/profile/7-pngtree-doctor-and-cat-holding-kitten-in-the-veterinarian-during-the-day-image_801319-1722238406287.jpg','bandung','bandung','Hewan Endemik',20,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NywiZW1haWwiOiJjb2JhQGdtYWlsLmNvbSIsImlhdCI6MTcyMjI0MDk1OCwiZXhwIjoxNzIyMzI3MzU4fQ.FNnjZRW4GoKhb30CTBBrgcAsT0USPXfQ1tKdXhYjzFM'),(8,'Yusuf Adi Nugroho','6285156228373','YusufAdi@gmail.com','$2b$10$sgUqdbg/VWB74XH2AJzY4uE/Kk4g9bTHztmkSNw52/jL9MqCUqeiO','Laki-laki',35,'8-Untitled-1722243981211.jpg','http://localhost:5000/uploads/profile/8-Untitled-1722243981211.jpg','Jl. Cikaso No.88 B, Sukamaju, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40121','Universitas Padjadjaran','kucing',10,NULL);
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_dokter`
--

DROP TABLE IF EXISTS `foto_dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foto_dokter` (
  `id_fotoD` int NOT NULL AUTO_INCREMENT,
  `fotoD` varchar(255) NOT NULL,
  `url_fotoD` varchar(255) NOT NULL,
  `dokter_id_dokter` int DEFAULT NULL,
  PRIMARY KEY (`id_fotoD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_dokter`
--

LOCK TABLES `foto_dokter` WRITE;
/*!40000 ALTER TABLE `foto_dokter` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto_dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto_hewan`
--

DROP TABLE IF EXISTS `foto_hewan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foto_hewan` (
  `id_foto` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(225) DEFAULT NULL,
  `url_foto` varchar(225) DEFAULT NULL,
  `hewan_id_hewan` int NOT NULL,
  PRIMARY KEY (`id_foto`),
  KEY `fk_foto_hewan_hewan1_idx` (`hewan_id_hewan`),
  CONSTRAINT `fk_foto_hewan_hewan1` FOREIGN KEY (`hewan_id_hewan`) REFERENCES `hewan` (`id_hewan`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto_hewan`
--

LOCK TABLES `foto_hewan` WRITE;
/*!40000 ALTER TABLE `foto_hewan` DISABLE KEYS */;
INSERT INTO `foto_hewan` VALUES (14,'foto-a50cae1b40ccb0460609b1204aae4fb2-1722182966874.jpg','http://localhost:5000/uploads/hewan/foto-a50cae1b40ccb0460609b1204aae4fb2-1722182966874.jpg',8),(15,'foto-cats-eyes-g4e48dabfd_640jpg-20230124114829-1722182966875.jpg','http://localhost:5000/uploads/hewan/foto-cats-eyes-g4e48dabfd_640jpg-20230124114829-1722182966875.jpg',8),(16,'foto-images-(1)-1722221046183.jpg','http://localhost:5000/uploads/hewan/foto-images-(1)-1722221046183.jpg',9),(17,'foto-images-1722221046183.jpg','http://localhost:5000/uploads/hewan/foto-images-1722221046183.jpg',9),(18,'foto-download-(2)-1722221046183.jpg','http://localhost:5000/uploads/hewan/foto-download-(2)-1722221046183.jpg',9),(19,'foto-download-(1)-1722221046183.jpg','http://localhost:5000/uploads/hewan/foto-download-(1)-1722221046183.jpg',9),(20,'foto-download-(5)-1722350817327.jpg','http://localhost:5000/uploads/hewan/foto-download-(5)-1722350817327.jpg',10),(21,'foto-download-(4)-1722350817327.jpg','http://localhost:5000/uploads/hewan/foto-download-(4)-1722350817327.jpg',10),(22,'foto-download-(3)-1722350817327.jpg','http://localhost:5000/uploads/hewan/foto-download-(3)-1722350817327.jpg',10),(23,'foto-download-(8)-1722350972115.jpg','http://localhost:5000/uploads/hewan/foto-download-(8)-1722350972115.jpg',11),(24,'foto-download-(7)-1722350972115.jpg','http://localhost:5000/uploads/hewan/foto-download-(7)-1722350972115.jpg',11),(25,'foto-download-(6)-1722350972115.jpg','http://localhost:5000/uploads/hewan/foto-download-(6)-1722350972115.jpg',11);
/*!40000 ALTER TABLE `foto_hewan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hewan`
--

DROP TABLE IF EXISTS `hewan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hewan` (
  `id_hewan` int NOT NULL AUTO_INCREMENT,
  `jenis_hewan` varchar(45) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `usia` int NOT NULL,
  `warna` varchar(45) NOT NULL,
  `lokasi` varchar(225) DEFAULT NULL,
  `tgl_publish` date NOT NULL,
  `deskripsi` varchar(225) NOT NULL,
  `foto_utama` varchar(225) NOT NULL,
  `url_fotoutama` varchar(225) NOT NULL,
  `users_id_user` int NOT NULL,
  PRIMARY KEY (`id_hewan`),
  KEY `fk_hewan_users1_idx` (`users_id_user`),
  CONSTRAINT `fk_hewan_users1` FOREIGN KEY (`users_id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hewan`
--

LOCK TABLES `hewan` WRITE;
/*!40000 ALTER TABLE `hewan` DISABLE KEYS */;
INSERT INTO `hewan` VALUES (8,'Kucing','ciko','Jantan',2,'hitam','sumedang','2024-07-28','kucing kampung ','main-01817b51eaea06fba6387654629e019b-1722182959400.jpg','http://localhost:5000/uploads/hewan/main-01817b51eaea06fba6387654629e019b-1722182959400.jpg',5),(9,'Anjing','chantika','Betina',10,'Coklat','jakarta','2024-07-29','Anjing pom atau yang lebih dikenal dengan pomeranian, adalah salah satu ras anjing yang sangat diminati oleh pecinta hewan peliharaan di seluruh dunia.','main-download-(2)-1722221037302.jpg','http://localhost:5000/uploads/hewan/main-download-(2)-1722221037302.jpg',6),(10,'Kucing','Si oyen','Jantan',10,'Orange','bandung','2024-07-30','Kucing Orange dengan mental baja','main-download-(4)-1722350811117.jpg','http://localhost:5000/uploads/hewan/main-download-(4)-1722350811117.jpg',5),(11,'Kucing Kampung','Mpung','Jantan',12,'hitam garis abu','bandung','2024-07-30','Kucing kampung dengan garis putih hitam','main-download-(8)-1722350966471.jpg','http://localhost:5000/uploads/hewan/main-download-(8)-1722350966471.jpg',5);
/*!40000 ALTER TABLE `hewan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(225) NOT NULL,
  `no_hp` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `usia` varchar(45) DEFAULT NULL,
  `foto` varchar(225) DEFAULT NULL,
  `url_foto` varchar(225) DEFAULT NULL,
  `alamat` varchar(225) NOT NULL,
  `refresh_token` text,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ochobot','08111111','user1@gmail.com','$2b$10$uYFRBuv77kStqaF.aYNul.Yl1QiwLv1m1Q//jcGjLD77YS9QEfmIu','Laki-laki','25','1-7982d5d930d381b62389df958297b57c-1718193071351.jpg','http://localhost:5000/uploads/profile/1-7982d5d930d381b62389df958297b57c-1718193071351.jpg','Kediri, Jawa Timur','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiZW1haWwiOiJ1c2VyMUBnbWFpbC5jb20iLCJpYXQiOjE3MTgyOTY4MzAsImV4cCI6MTcxODM4MzIzMH0.3HWptlNOg0FtKzWo4R9EVcFI9uzkrVz9_q0iUyX_Vyw'),(2,'User 2','08222','user2@gmail.com','$2b$10$bdcxN2FT14vftC9YQ01FWeKTe3wunsU3K/Z1kLVBcB64oJo3TUI7K','Female','20','2-352e42f1f445158b78b45ce90f53c522-1718216980662.jpg','http://localhost:5000/uploads/profile/2-352e42f1f445158b78b45ce90f53c522-1718216980662.jpg','Surabaya','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZW1haWwiOiJ1c2VyMkBnbWFpbC5jb20iLCJpYXQiOjE3MTgyODc1NzcsImV4cCI6MTcxODM3Mzk3N30.T1Vxg1M8ru22dg1oPGAWkfzLWxy19AOMZy4BfeiwvEY'),(3,'yusuf','6214545','yusuf@gmail.com','$2b$10$wRIAzRqtKxgQajdNLx5DSuz/eK8f60Tj5S1BMnbcxxq/wleF7qiuW','Laki-laki','100',NULL,NULL,'dhakjdkgascj',NULL),(4,'user10','6262265656596','user10@gmail.com','$2b$10$FqpO3cQHNq6micBQh53L0ukTCjdwlrfmbqY6gEf0lpxnkulDF6S/.','Laki-laki','100','4-7e693981-fe39-4535-8870-636658e87b2d-1718819865084.jpg','http://localhost:5000/uploads/profile/4-7e693981-fe39-4535-8870-636658e87b2d-1718819865084.jpg','citayem','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NCwiZW1haWwiOiJ1c2VyMTBAZ21haWwuY29tIiwiaWF0IjoxNzE4ODE5ODUxLCJleHAiOjE3MTg5MDYyNTF9.DxTiJ7kwmFyDuWeYPyLbUzIIZJLNIf5io1Dwojx1fTw'),(5,'Yusuf','6285724411854','yusufardiansah@gmail.com','$2b$10$g4SubcTA5gUGXyXyzuapnO7doW2BSY3O.eVSMjj7EDzR5MXJXKvGq','Laki-laki','20','5-Screenshot-2024-05-22-001115-1722182853864.png','http://localhost:5000/uploads/profile/5-Screenshot-2024-05-22-001115-1722182853864.png','Dusun Bantarsari RT\\01 RW\\01 Desa Awiluar Kec. Lumbung','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NSwiZW1haWwiOiJ5dXN1ZmFyZGlhbnNhaEBnbWFpbC5jb20iLCJpYXQiOjE3MjIzNDk4NDksImV4cCI6MTcyMjQzNjI0OX0.HdJToJQKrOcDWPcfe7GOTpMGOeUVR8iyZVUYDAmVEzQ'),(6,'ahmad','6230303986300','ahmad@gmail.com','$2b$10$y1HJ42USM/52dyytardxiOuq43acAKV0Hj7ItqQUxve9xH68hb0aq','Laki-laki','20',NULL,NULL,'jakarta','eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NiwiZW1haWwiOiJhaG1hZEBnbWFpbC5jb20iLCJpYXQiOjE3MjIyMjA3NDIsImV4cCI6MTcyMjMwNzE0Mn0.4osbDO8zmd-x6N0wELOlHWXtHSp31k3knmInuD6ZB8k');
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

-- Dump completed on 2024-08-13 13:11:09
