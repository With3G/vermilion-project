-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: vermilion
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Entrada',7,'add_portada'),(26,'Can change Entrada',7,'change_portada'),(27,'Can delete Entrada',7,'delete_portada'),(28,'Can view Entrada',7,'view_portada'),(29,'Can add Sistema',8,'add_console'),(30,'Can change Sistema',8,'change_console'),(31,'Can delete Sistema',8,'delete_console'),(32,'Can view Sistema',8,'view_console'),(33,'Can add Videojuego Retro',9,'add_retrojuego'),(34,'Can change Videojuego Retro',9,'change_retrojuego'),(35,'Can delete Videojuego Retro',9,'delete_retrojuego'),(36,'Can view Videojuego Retro',9,'view_retrojuego'),(37,'Can add Serie',10,'add_serie'),(38,'Can change Serie',10,'change_serie'),(39,'Can delete Serie',10,'delete_serie'),(40,'Can view Serie',10,'view_serie'),(41,'Can add Artista',11,'add_artist'),(42,'Can change Artista',11,'change_artist'),(43,'Can delete Artista',11,'delete_artist'),(44,'Can view Artista',11,'view_artist'),(45,'Can add Categoría',12,'add_category'),(46,'Can change Categoría',12,'change_category'),(47,'Can delete Categoría',12,'delete_category'),(48,'Can view Categoría',12,'view_category'),(49,'Can add Desarrollador',13,'add_developer'),(50,'Can change Desarrollador',13,'change_developer'),(51,'Can delete Desarrollador',13,'delete_developer'),(52,'Can view Desarrollador',13,'view_developer'),(53,'Can add Formato',14,'add_extension'),(54,'Can change Formato',14,'change_extension'),(55,'Can delete Formato',14,'delete_extension'),(56,'Can view Formato',14,'view_extension'),(57,'Can add Género',15,'add_genre'),(58,'Can change Género',15,'change_genre'),(59,'Can delete Género',15,'delete_genre'),(60,'Can view Género',15,'view_genre'),(61,'Can add Idioma',16,'add_language'),(62,'Can change Idioma',16,'change_language'),(63,'Can delete Idioma',16,'delete_language'),(64,'Can view Idioma',16,'view_language'),(65,'Can add Productor',17,'add_produced'),(66,'Can change Productor',17,'change_produced'),(67,'Can delete Productor',17,'delete_produced'),(68,'Can view Productor',17,'view_produced'),(69,'Can add Estudio',18,'add_studio'),(70,'Can change Estudio',18,'change_studio'),(71,'Can delete Estudio',18,'delete_studio'),(72,'Can view Estudio',18,'view_studio'),(73,'Can add Resolución',19,'add_resolution'),(74,'Can change Resolución',19,'change_resolution'),(75,'Can delete Resolución',19,'delete_resolution'),(76,'Can view Resolución',19,'view_resolution'),(77,'Can add Pais',20,'add_country'),(78,'Can change Pais',20,'change_country'),(79,'Can delete Pais',20,'delete_country'),(80,'Can view Pais',20,'view_country'),(81,'Can add Director',21,'add_director'),(82,'Can change Director',21,'change_director'),(83,'Can delete Director',21,'delete_director'),(84,'Can view Director',21,'view_director'),(85,'Can add Guión',22,'add_guion'),(86,'Can change Guión',22,'change_guion'),(87,'Can delete Guión',22,'delete_guion'),(88,'Can view Guión',22,'view_guion'),(89,'Can add Compositor / Banda',23,'add_music'),(90,'Can change Compositor / Banda',23,'change_music'),(91,'Can delete Compositor / Banda',23,'delete_music'),(92,'Can view Compositor / Banda',23,'view_music'),(93,'Can add Reparto',24,'add_staff'),(94,'Can change Reparto',24,'change_staff'),(95,'Can delete Reparto',24,'delete_staff'),(96,'Can view Reparto',24,'view_staff'),(97,'Can add Pelicula',25,'add_pelicula'),(98,'Can change Pelicula',25,'change_pelicula'),(99,'Can delete Pelicula',25,'delete_pelicula'),(100,'Can view Pelicula',25,'view_pelicula'),(101,'Can add Videojuego PC',26,'add_pcgames'),(102,'Can change Videojuego PC',26,'change_pcgames'),(103,'Can delete Videojuego PC',26,'delete_pcgames'),(104,'Can view Videojuego PC',26,'view_pcgames'),(105,'Can add Género Musical',27,'add_musicgenre'),(106,'Can change Género Musical',27,'change_musicgenre'),(107,'Can delete Género Musical',27,'delete_musicgenre'),(108,'Can view Género Musical',27,'view_musicgenre'),(109,'Can add Cancion',28,'add_tracklist'),(110,'Can change Cancion',28,'change_tracklist'),(111,'Can delete Cancion',28,'delete_tracklist'),(112,'Can view Cancion',28,'view_tracklist'),(113,'Can add Música',29,'add_musicdiscs'),(114,'Can change Música',29,'change_musicdiscs'),(115,'Can delete Música',29,'delete_musicdiscs'),(116,'Can view Música',29,'view_musicdiscs');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$HKlp37v92Ncz$Nz2FJ+LS0upmKB4q8myYhEKg6xy9QFptPXyFoj/4vVc=','2020-02-02 23:10:41.190830',1,'guillermo','','','guillermogranadosgomez@gmail.com',1,1,'2020-01-28 15:49:56.502883');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_portada`
--

DROP TABLE IF EXISTS `core_portada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_portada` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `image` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `link` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_portada_author_id_291b1a6f_fk_auth_user_id` (`author_id`),
  CONSTRAINT `core_portada_author_id_291b1a6f_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_portada`
--

LOCK TABLES `core_portada` WRITE;
/*!40000 ALTER TABLE `core_portada` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_portada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-01-28 15:53:28.705620','1','Sega Saturn',1,'[{\"added\": {}}]',8,1),(2,'2020-01-28 16:01:26.925619','1','Lucha',1,'[{\"added\": {}}]',15,1),(3,'2020-01-28 16:02:09.094472','1','TGL',1,'[{\"added\": {}}]',13,1),(4,'2020-01-28 16:02:25.992069','1','Giga',1,'[{\"added\": {}}]',17,1),(5,'2020-01-28 16:06:18.890129','1','Japonés',1,'[{\"added\": {}}]',16,1),(6,'2020-01-28 16:06:25.263746','2','Inglés',1,'[{\"added\": {}}]',16,1),(7,'2020-01-28 16:07:09.323890','1','bin/cue',1,'[{\"added\": {}}]',14,1),(8,'2020-01-28 16:12:08.485666','1','Advanced Variable Geo',1,'[{\"added\": {}}]',9,1),(9,'2020-01-28 16:24:51.901190','2','FPS',1,'[{\"added\": {}}]',15,1),(10,'2020-01-28 16:25:08.975988','2','Probe Entertainment',1,'[{\"added\": {}}]',13,1),(11,'2020-01-28 16:25:18.458067','2','Acclaim Entertainment',1,'[{\"added\": {}}]',17,1),(12,'2020-01-28 16:30:37.274482','2','Alien Trilogy',1,'[{\"added\": {}}]',9,1),(13,'2020-01-28 16:30:54.871745','2','Alien Trilogy',2,'[{\"changed\": {\"fields\": [\"Descripci\\u00f3n\"]}}]',9,1),(14,'2020-01-28 16:31:05.143817','2','Alien Trilogy',2,'[{\"changed\": {\"fields\": [\"Descripci\\u00f3n\"]}}]',9,1),(15,'2020-01-28 16:32:02.129075','2','Alien Trilogy',2,'[{\"changed\": {\"fields\": [\"Descripci\\u00f3n\"]}}]',9,1),(16,'2020-01-28 16:32:10.400565','2','Alien Trilogy',2,'[{\"changed\": {\"fields\": [\"Descripci\\u00f3n\"]}}]',9,1),(17,'2020-01-28 16:40:03.291306','1','Sega Saturn',2,'[{\"changed\": {\"fields\": [\"Banner\"]}}]',8,1),(18,'2020-01-28 16:43:44.104895','3','SANTACLAUS',1,'[{\"added\": {}}]',13,1),(19,'2020-01-28 16:44:09.738453','3','Sunsoft',1,'[{\"added\": {}}]',17,1),(20,'2020-01-28 16:48:43.845448','3','Astra Superstars',1,'[{\"added\": {}}]',9,1),(21,'2020-01-28 16:52:54.976539','4','Success',1,'[{\"added\": {}}]',13,1),(22,'2020-01-28 16:53:00.853217','4','Family Soft',1,'[{\"added\": {}}]',17,1),(23,'2020-01-28 16:56:05.698888','4','Asuka 120% Limited Burning Fest.',1,'[{\"added\": {}}]',9,1),(24,'2020-01-28 16:56:50.879905','2','Alien Trilogy',2,'[{\"changed\": {\"fields\": [\"Regi\\u00f3n\"]}}]',9,1),(25,'2020-01-28 19:18:23.914480','3','Beat \'em Up',1,'[{\"added\": {}}]',15,1),(26,'2020-01-28 19:18:44.322039','5','Iguana Entertainment',1,'[{\"added\": {}}]',13,1),(27,'2020-01-28 19:22:56.576023','5','Batman Forever',1,'[{\"added\": {}}]',9,1),(28,'2020-01-28 19:27:21.022610','4','Shooter',1,'[{\"added\": {}}]',15,1),(29,'2020-01-28 19:27:47.167141','6','Toaplan',1,'[{\"added\": {}}]',13,1),(30,'2020-01-28 19:28:05.546862','5','Banpresto',1,'[{\"added\": {}}]',17,1),(31,'2020-01-28 19:29:47.424584','2','img/ccd/sub',1,'[{\"added\": {}}]',14,1),(32,'2020-01-28 19:31:21.740725','6','Batsugun',1,'[{\"added\": {}}]',9,1),(33,'2020-01-28 19:56:39.610155','7','Raizing',1,'[{\"added\": {}}]',13,1),(34,'2020-01-28 19:57:00.131078','6','Eighting',1,'[{\"added\": {}}]',17,1),(35,'2020-01-28 19:58:11.396462','3','mdf/mds',1,'[{\"added\": {}}]',14,1),(36,'2020-01-28 20:00:28.641820','7','Battle Garegga',1,'[{\"added\": {}}]',9,1),(37,'2020-01-28 20:14:18.791415','5','Acción',1,'[{\"added\": {}}]',15,1),(38,'2020-01-28 20:15:13.233759','8','Sonic Team',1,'[{\"added\": {}}]',13,1),(39,'2020-01-28 20:15:17.139904','7','Sega',1,'[{\"added\": {}}]',17,1),(40,'2020-01-28 20:16:25.697947','4','bin',1,'[{\"added\": {}}]',14,1),(41,'2020-01-28 20:17:37.696402','8','Burning Rangers',1,'[{\"added\": {}}]',9,1),(42,'2020-01-28 20:23:54.135933','8','Burning Rangers',2,'[{\"changed\": {\"fields\": [\"Car\\u00e1tula\"]}}]',9,1),(43,'2020-01-28 22:37:26.870511','6','Conducción',1,'[{\"added\": {}}]',15,1),(44,'2020-01-28 22:37:43.486240','9','Taito',1,'[{\"added\": {}}]',13,1),(45,'2020-01-28 22:37:48.642687','8','Taito',1,'[{\"added\": {}}]',17,1),(46,'2020-01-28 22:40:21.750415','9','Taito Chase H.Q. Plus S.C.I.',1,'[{\"added\": {}}]',9,1),(47,'2020-01-28 22:43:47.704965','10','Sega',1,'[{\"added\": {}}]',13,1),(48,'2020-01-28 22:46:09.901872','7','Plataformas',1,'[{\"added\": {}}]',15,1),(49,'2020-01-28 22:46:49.491837','10','Clockwork Knight 2',1,'[{\"added\": {}}]',9,1),(50,'2020-01-28 23:13:45.422271','2','Sega Mega Drive',1,'[{\"added\": {}}]',8,1),(51,'2020-01-28 23:14:50.203565','8','Vuelo',1,'[{\"added\": {}}]',15,1),(52,'2020-01-28 23:16:16.906104','11','Sega-AM2',1,'[{\"added\": {}}]',13,1),(53,'2020-01-28 23:19:12.246441','11','AfterBurner II',1,'[{\"added\": {}}]',9,1),(54,'2020-01-28 23:22:24.228585','9','Puzzles',1,'[{\"added\": {}}]',15,1),(55,'2020-01-28 23:27:07.377825','12','Sega Ages: Columns Arcade Collection',1,'[{\"added\": {}}]',9,1),(56,'2020-01-28 23:29:06.615302','12','Success Corporation',1,'[{\"added\": {}}]',13,1),(57,'2020-01-28 23:29:29.471020','9','Success',1,'[{\"added\": {}}]',17,1),(58,'2020-01-28 23:32:13.649132','13','Cotton 2: Magical Night Dreams',1,'[{\"added\": {}}]',9,1),(59,'2020-01-29 12:14:06.699997','13','Yanoman',1,'[{\"added\": {}}]',13,1),(60,'2020-01-29 12:14:12.666474','10','Yanoman',1,'[{\"added\": {}}]',17,1),(61,'2020-01-29 12:20:13.899613','14','Cube Battler: Story of Anna',1,'[{\"added\": {}}]',9,1),(62,'2020-01-29 20:04:53.405478','12','Success Corporation',3,'',13,1),(63,'2020-01-29 22:14:15.321346','14','Capcom',1,'[{\"added\": {}}]',13,1),(64,'2020-01-29 22:14:20.793626','11','Capcom',1,'[{\"added\": {}}]',17,1),(65,'2020-01-29 22:16:50.288920','15','Cyberbots: Fullmetal Madness',1,'[{\"added\": {}}]',9,1),(66,'2020-01-29 22:18:43.987058','15','Nextech',1,'[{\"added\": {}}]',13,1),(67,'2020-01-29 22:18:49.941920','12','Takara',1,'[{\"added\": {}}]',17,1),(68,'2020-01-29 22:21:48.785300','16','D-Xhird',1,'[{\"added\": {}}]',9,1),(69,'2020-01-29 22:32:41.554450','17','Darius Gaiden',1,'[{\"added\": {}}]',9,1),(70,'2020-01-29 22:59:23.739336','18','Darius II',1,'[{\"added\": {}}]',9,1),(71,'2020-01-29 23:11:53.280675','1','Advanced Variable Geo',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(72,'2020-01-29 23:16:22.874816','5','Batman Forever',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(73,'2020-01-29 23:17:33.118010','8','Burning Rangers',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(74,'2020-01-29 23:18:50.127743','10','Clockwork Knight 2',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(75,'2020-01-29 23:19:34.233023','16','D-Xhird',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(76,'2020-01-29 23:20:03.023324','17','Darius Gaiden',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(77,'2020-01-29 23:20:13.304055','18','Darius II',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(78,'2020-01-29 23:20:23.937767','9','Taito Chase H.Q. Plus S.C.I.',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(79,'2020-01-30 00:26:57.505748','1','Sega Saturn',2,'[{\"changed\": {\"fields\": [\"Banner\"]}}]',8,1),(80,'2020-01-30 08:23:22.884129','1','Sega Saturn',2,'[{\"changed\": {\"fields\": [\"Banner\"]}}]',8,1),(81,'2020-01-30 12:40:03.017554','16','Data East',1,'[{\"added\": {}}]',13,1),(82,'2020-01-30 12:40:06.911397','13','Data East',1,'[{\"added\": {}}]',17,1),(83,'2020-01-30 12:43:27.774706','19','Dark Legend',1,'[{\"added\": {}}]',9,1),(84,'2020-02-02 23:11:31.741921','2','Alien Trilogy',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(85,'2020-02-02 23:11:50.769023','3','Astra Superstars',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(86,'2020-02-02 23:12:05.881372','4','Asuka 120% Limited Burning Fest.',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(87,'2020-02-02 23:12:32.124805','6','Batsugun',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(88,'2020-02-02 23:12:51.439040','7','Battle Garegga',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(89,'2020-02-02 23:13:37.668487','12','Sega Ages: Columns Arcade Collection',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(90,'2020-02-02 23:13:54.173885','13','Cotton 2: Magical Night Dreams',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(91,'2020-02-02 23:14:08.225934','14','Cube Battler: Story of Anna',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1),(92,'2020-02-02 23:14:20.740110','15','Cyberbots: Fullmetal Madness',2,'[{\"changed\": {\"fields\": [\"Video\"]}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'core','portada'),(29,'music','musicdiscs'),(27,'music','musicgenre'),(28,'music','tracklist'),(11,'opciones','artist'),(12,'opciones','category'),(20,'opciones','country'),(13,'opciones','developer'),(21,'opciones','director'),(14,'opciones','extension'),(15,'opciones','genre'),(22,'opciones','guion'),(16,'opciones','language'),(23,'opciones','music'),(17,'opciones','produced'),(19,'opciones','resolution'),(24,'opciones','staff'),(18,'opciones','studio'),(26,'pc_games','pcgames'),(25,'peliculas','pelicula'),(8,'retrojuegos','console'),(9,'retrojuegos','retrojuego'),(10,'series','serie'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-01-28 15:48:58.622405'),(2,'auth','0001_initial','2020-01-28 15:48:58.791309'),(3,'admin','0001_initial','2020-01-28 15:48:59.219143'),(4,'admin','0002_logentry_remove_auto_add','2020-01-28 15:48:59.336770'),(5,'admin','0003_logentry_add_action_flag_choices','2020-01-28 15:48:59.360555'),(6,'contenttypes','0002_remove_content_type_name','2020-01-28 15:48:59.452343'),(7,'auth','0002_alter_permission_name_max_length','2020-01-28 15:48:59.472527'),(8,'auth','0003_alter_user_email_max_length','2020-01-28 15:48:59.498029'),(9,'auth','0004_alter_user_username_opts','2020-01-28 15:48:59.516829'),(10,'auth','0005_alter_user_last_login_null','2020-01-28 15:48:59.568010'),(11,'auth','0006_require_contenttypes_0002','2020-01-28 15:48:59.572904'),(12,'auth','0007_alter_validators_add_error_messages','2020-01-28 15:48:59.592167'),(13,'auth','0008_alter_user_username_max_length','2020-01-28 15:48:59.623653'),(14,'auth','0009_alter_user_last_name_max_length','2020-01-28 15:48:59.648317'),(15,'auth','0010_alter_group_name_max_length','2020-01-28 15:48:59.672254'),(16,'auth','0011_update_proxy_permissions','2020-01-28 15:48:59.695757'),(17,'core','0001_initial','2020-01-28 15:48:59.842830'),(18,'core','0002_auto_20191124_1433','2020-01-28 15:48:59.948676'),(19,'opciones','0001_initial','2020-01-28 15:49:00.160073'),(20,'opciones','0002_resolution','2020-01-28 15:49:00.192361'),(21,'opciones','0003_country','2020-01-28 15:49:00.220363'),(22,'opciones','0004_director_guion_music','2020-01-28 15:49:00.495531'),(23,'opciones','0005_staff','2020-01-28 15:49:00.534158'),(24,'opciones','0006_auto_20191201_0146','2020-01-28 15:49:00.544435'),(25,'music','0001_initial','2020-01-28 15:49:00.719905'),(26,'pc_games','0001_initial','2020-01-28 15:49:01.174589'),(27,'peliculas','0001_initial','2020-01-28 15:49:01.788961'),(28,'peliculas','0002_auto_20191126_1705','2020-01-28 15:49:02.692310'),(29,'peliculas','0003_auto_20191201_1145','2020-01-28 15:49:02.944685'),(30,'retrojuegos','0001_initial','2020-01-28 15:49:03.122976'),(31,'retrojuegos','0002_auto_20191128_2330','2020-01-28 15:49:03.702180'),(32,'series','0001_initial','2020-01-28 15:49:03.896162'),(33,'series','0002_serie_as_downloaded','2020-01-28 15:49:04.348205'),(34,'series','0003_auto_20191124_1555','2020-01-28 15:49:04.829292'),(35,'series','0004_auto_20191126_1705','2020-01-28 15:49:05.314046'),(36,'series','0005_auto_20191201_0137','2020-01-28 15:49:05.672975'),(37,'series','0006_serie_languages','2020-01-28 15:49:05.825778'),(38,'series','0007_auto_20191201_0151','2020-01-28 15:49:06.026121'),(39,'sessions','0001_initial','2020-01-28 15:49:06.074160'),(40,'retrojuegos','0003_retrojuego_video','2020-01-29 22:49:54.727431');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ce6dfi1ptc19i6b7ho6h5afgxbg3ycrj','MzRlMTEwYjRmNjBkNjVlN2E5MmNiNjcyOTRjYjYwYTY5M2U2ZDYyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk2NTQzYTljYWU3ZWI4OWYzMmI5Y2M4ZjgzNTMyNTllODMxODQzIn0=','2020-02-11 15:50:17.901476'),('fsa99ob54cuon7gwb9c8t1o601tkd5i5','MzRlMTEwYjRmNjBkNjVlN2E5MmNiNjcyOTRjYjYwYTY5M2U2ZDYyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk2NTQzYTljYWU3ZWI4OWYzMmI5Y2M4ZjgzNTMyNTllODMxODQzIn0=','2020-02-16 23:10:41.195887'),('g5uu8va010x79s6gvb8uvns15ydbzv6e','MzRlMTEwYjRmNjBkNjVlN2E5MmNiNjcyOTRjYjYwYTY5M2U2ZDYyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk2NTQzYTljYWU3ZWI4OWYzMmI5Y2M4ZjgzNTMyNTllODMxODQzIn0=','2020-02-12 17:34:52.422369'),('l2qehufsyj4acms9f9spz8pcvyoxwhqv','MzRlMTEwYjRmNjBkNjVlN2E5MmNiNjcyOTRjYjYwYTY5M2U2ZDYyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2Zjk2NTQzYTljYWU3ZWI4OWYzMmI5Y2M4ZjgzNTMyNTllODMxODQzIn0=','2020-02-12 22:11:35.105495');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_musicdiscs`
--

DROP TABLE IF EXISTS `music_musicdiscs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_musicdiscs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover` varchar(100) NOT NULL,
  `title` varchar(150) NOT NULL,
  `release` date NOT NULL,
  `duration` time(6) NOT NULL,
  `numer_discs` varchar(10) NOT NULL,
  `info` longtext NOT NULL,
  `as_downloaded` tinyint(1) NOT NULL,
  `download_link` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `produced_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `music_musicdiscs_author_id_ee00dd1e_fk_opciones_music_id` (`author_id`),
  KEY `music_musicdiscs_produced_id_c8e84187_fk_opciones_produced_id` (`produced_id`),
  CONSTRAINT `music_musicdiscs_author_id_ee00dd1e_fk_opciones_music_id` FOREIGN KEY (`author_id`) REFERENCES `opciones_music` (`id`),
  CONSTRAINT `music_musicdiscs_produced_id_c8e84187_fk_opciones_produced_id` FOREIGN KEY (`produced_id`) REFERENCES `opciones_produced` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_musicdiscs`
--

LOCK TABLES `music_musicdiscs` WRITE;
/*!40000 ALTER TABLE `music_musicdiscs` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_musicdiscs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_musicdiscs_genre`
--

DROP TABLE IF EXISTS `music_musicdiscs_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_musicdiscs_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicdiscs_id` int(11) NOT NULL,
  `musicgenre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `music_musicdiscs_genre_musicdiscs_id_musicgenre_id_135d2e24_uniq` (`musicdiscs_id`,`musicgenre_id`),
  KEY `music_musicdiscs_gen_musicgenre_id_a7252687_fk_music_mus` (`musicgenre_id`),
  CONSTRAINT `music_musicdiscs_gen_musicdiscs_id_80f7ca7e_fk_music_mus` FOREIGN KEY (`musicdiscs_id`) REFERENCES `music_musicdiscs` (`id`),
  CONSTRAINT `music_musicdiscs_gen_musicgenre_id_a7252687_fk_music_mus` FOREIGN KEY (`musicgenre_id`) REFERENCES `music_musicgenre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_musicdiscs_genre`
--

LOCK TABLES `music_musicdiscs_genre` WRITE;
/*!40000 ALTER TABLE `music_musicdiscs_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_musicdiscs_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_musicdiscs_songs`
--

DROP TABLE IF EXISTS `music_musicdiscs_songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_musicdiscs_songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `musicdiscs_id` int(11) NOT NULL,
  `tracklist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `music_musicdiscs_songs_musicdiscs_id_tracklist_id_01f67031_uniq` (`musicdiscs_id`,`tracklist_id`),
  KEY `music_musicdiscs_son_tracklist_id_460a65c3_fk_music_tra` (`tracklist_id`),
  CONSTRAINT `music_musicdiscs_son_musicdiscs_id_05a01356_fk_music_mus` FOREIGN KEY (`musicdiscs_id`) REFERENCES `music_musicdiscs` (`id`),
  CONSTRAINT `music_musicdiscs_son_tracklist_id_460a65c3_fk_music_tra` FOREIGN KEY (`tracklist_id`) REFERENCES `music_tracklist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_musicdiscs_songs`
--

LOCK TABLES `music_musicdiscs_songs` WRITE;
/*!40000 ALTER TABLE `music_musicdiscs_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_musicdiscs_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_musicgenre`
--

DROP TABLE IF EXISTS `music_musicgenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_musicgenre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_musicgenre`
--

LOCK TABLES `music_musicgenre` WRITE;
/*!40000 ALTER TABLE `music_musicgenre` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_musicgenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `music_tracklist`
--

DROP TABLE IF EXISTS `music_tracklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music_tracklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track` varchar(150) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `music_tracklist_author_id_56fec07e_fk_opciones_music_id` (`author_id`),
  CONSTRAINT `music_tracklist_author_id_56fec07e_fk_opciones_music_id` FOREIGN KEY (`author_id`) REFERENCES `opciones_music` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_tracklist`
--

LOCK TABLES `music_tracklist` WRITE;
/*!40000 ALTER TABLE `music_tracklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `music_tracklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_artist`
--

DROP TABLE IF EXISTS `opciones_artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_artist`
--

LOCK TABLES `opciones_artist` WRITE;
/*!40000 ALTER TABLE `opciones_artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_category`
--

DROP TABLE IF EXISTS `opciones_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_category`
--

LOCK TABLES `opciones_category` WRITE;
/*!40000 ALTER TABLE `opciones_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_country`
--

DROP TABLE IF EXISTS `opciones_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_country`
--

LOCK TABLES `opciones_country` WRITE;
/*!40000 ALTER TABLE `opciones_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_developer`
--

DROP TABLE IF EXISTS `opciones_developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_developer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_developer`
--

LOCK TABLES `opciones_developer` WRITE;
/*!40000 ALTER TABLE `opciones_developer` DISABLE KEYS */;
INSERT INTO `opciones_developer` VALUES (1,'TGL','2020-01-28 16:02:09.093325','2020-01-28 16:02:09.093384'),(2,'Probe Entertainment','2020-01-28 16:25:08.971551','2020-01-28 16:25:08.971610'),(3,'SANTACLAUS','2020-01-28 16:43:44.102113','2020-01-28 16:43:44.102171'),(4,'Success','2020-01-28 16:52:54.971785','2020-01-28 16:52:54.971849'),(5,'Iguana Entertainment','2020-01-28 19:18:44.319535','2020-01-28 19:18:44.319595'),(6,'Toaplan','2020-01-28 19:27:47.162165','2020-01-28 19:27:47.162223'),(7,'Raizing','2020-01-28 19:56:39.607775','2020-01-28 19:56:39.607831'),(8,'Sonic Team','2020-01-28 20:15:13.229103','2020-01-28 20:15:13.229158'),(9,'Taito','2020-01-28 22:37:43.485025','2020-01-28 22:37:43.485088'),(10,'Sega','2020-01-28 22:43:47.703312','2020-01-28 22:43:47.703370'),(11,'Sega-AM2','2020-01-28 23:16:16.900584','2020-01-28 23:16:16.900640'),(13,'Yanoman','2020-01-29 12:14:06.694423','2020-01-29 12:14:06.694480'),(14,'Capcom','2020-01-29 22:14:15.318767','2020-01-29 22:14:15.318825'),(15,'Nextech','2020-01-29 22:18:43.985492','2020-01-29 22:18:43.985552'),(16,'Data East','2020-01-30 12:40:03.016222','2020-01-30 12:40:03.016279');
/*!40000 ALTER TABLE `opciones_developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_director`
--

DROP TABLE IF EXISTS `opciones_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_director` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_director`
--

LOCK TABLES `opciones_director` WRITE;
/*!40000 ALTER TABLE `opciones_director` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_extension`
--

DROP TABLE IF EXISTS `opciones_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_extension` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_extension`
--

LOCK TABLES `opciones_extension` WRITE;
/*!40000 ALTER TABLE `opciones_extension` DISABLE KEYS */;
INSERT INTO `opciones_extension` VALUES (1,'bin/cue','2020-01-28 16:07:09.322536','2020-01-28 16:07:09.322593'),(2,'img/ccd/sub','2020-01-28 19:29:47.420405','2020-01-28 19:29:47.420467'),(3,'mdf/mds','2020-01-28 19:58:11.394719','2020-01-28 19:58:11.394781'),(4,'bin','2020-01-28 20:16:25.696386','2020-01-28 20:16:25.696443');
/*!40000 ALTER TABLE `opciones_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_genre`
--

DROP TABLE IF EXISTS `opciones_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_genre`
--

LOCK TABLES `opciones_genre` WRITE;
/*!40000 ALTER TABLE `opciones_genre` DISABLE KEYS */;
INSERT INTO `opciones_genre` VALUES (1,'Lucha','2020-01-28 16:01:26.922206','2020-01-28 16:01:26.922271'),(2,'FPS','2020-01-28 16:24:51.899455','2020-01-28 16:24:51.899514'),(3,'Beat \'em Up','2020-01-28 19:18:23.912253','2020-01-28 19:18:23.912309'),(4,'Shooter','2020-01-28 19:27:21.021239','2020-01-28 19:27:21.021302'),(5,'Acción','2020-01-28 20:14:18.789410','2020-01-28 20:14:18.789459'),(6,'Conducción','2020-01-28 22:37:26.868282','2020-01-28 22:37:26.868338'),(7,'Plataformas','2020-01-28 22:46:09.900510','2020-01-28 22:46:09.900575'),(8,'Vuelo','2020-01-28 23:14:50.202006','2020-01-28 23:14:50.202068'),(9,'Puzzles','2020-01-28 23:22:24.226888','2020-01-28 23:22:24.226944');
/*!40000 ALTER TABLE `opciones_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_guion`
--

DROP TABLE IF EXISTS `opciones_guion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_guion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_guion`
--

LOCK TABLES `opciones_guion` WRITE;
/*!40000 ALTER TABLE `opciones_guion` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_guion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_language`
--

DROP TABLE IF EXISTS `opciones_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_language`
--

LOCK TABLES `opciones_language` WRITE;
/*!40000 ALTER TABLE `opciones_language` DISABLE KEYS */;
INSERT INTO `opciones_language` VALUES (1,'Japonés','2020-01-28 16:06:18.888839','2020-01-28 16:06:18.888900'),(2,'Inglés','2020-01-28 16:06:25.259316','2020-01-28 16:06:25.259377');
/*!40000 ALTER TABLE `opciones_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_music`
--

DROP TABLE IF EXISTS `opciones_music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_music` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_music`
--

LOCK TABLES `opciones_music` WRITE;
/*!40000 ALTER TABLE `opciones_music` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_music` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_produced`
--

DROP TABLE IF EXISTS `opciones_produced`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_produced` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_produced`
--

LOCK TABLES `opciones_produced` WRITE;
/*!40000 ALTER TABLE `opciones_produced` DISABLE KEYS */;
INSERT INTO `opciones_produced` VALUES (1,'Giga','2020-01-28 16:02:25.990617','2020-01-28 16:02:25.990676'),(2,'Acclaim Entertainment','2020-01-28 16:25:18.456746','2020-01-28 16:25:18.456802'),(3,'Sunsoft','2020-01-28 16:44:09.737314','2020-01-28 16:44:09.737372'),(4,'Family Soft','2020-01-28 16:53:00.849781','2020-01-28 16:53:00.849846'),(5,'Banpresto','2020-01-28 19:28:05.545613','2020-01-28 19:28:05.545671'),(6,'Eighting','2020-01-28 19:57:00.129611','2020-01-28 19:57:00.129669'),(7,'Sega','2020-01-28 20:15:17.136429','2020-01-28 20:15:17.136487'),(8,'Taito','2020-01-28 22:37:48.641206','2020-01-28 22:37:48.641261'),(9,'Success','2020-01-28 23:29:29.469753','2020-01-28 23:29:29.469816'),(10,'Yanoman','2020-01-29 12:14:12.664970','2020-01-29 12:14:12.665053'),(11,'Capcom','2020-01-29 22:14:20.788414','2020-01-29 22:14:20.788466'),(12,'Takara','2020-01-29 22:18:49.940697','2020-01-29 22:18:49.940761'),(13,'Data East','2020-01-30 12:40:06.910103','2020-01-30 12:40:06.910155');
/*!40000 ALTER TABLE `opciones_produced` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_resolution`
--

DROP TABLE IF EXISTS `opciones_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_resolution` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_resolution`
--

LOCK TABLES `opciones_resolution` WRITE;
/*!40000 ALTER TABLE `opciones_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_staff`
--

DROP TABLE IF EXISTS `opciones_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_staff`
--

LOCK TABLES `opciones_staff` WRITE;
/*!40000 ALTER TABLE `opciones_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opciones_studio`
--

DROP TABLE IF EXISTS `opciones_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opciones_studio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opciones_studio`
--

LOCK TABLES `opciones_studio` WRITE;
/*!40000 ALTER TABLE `opciones_studio` DISABLE KEYS */;
/*!40000 ALTER TABLE `opciones_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_games_pcgames`
--

DROP TABLE IF EXISTS `pc_games_pcgames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pc_games_pcgames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `release` date NOT NULL,
  `players` varchar(10) NOT NULL,
  `size` int(11) NOT NULL,
  `plot` longtext NOT NULL,
  `screen_one` varchar(100) NOT NULL,
  `screen_two` varchar(100) NOT NULL,
  `screen_three` varchar(100) NOT NULL,
  `screen_four` varchar(100) NOT NULL,
  `as_downloaded` tinyint(1) NOT NULL,
  `download_link` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `developer_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `guion_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `produced_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pc_games_pcgames_developer_id_e5c41a44_fk_opciones_developer_id` (`developer_id`),
  KEY `pc_games_pcgames_director_id_f2e9087f_fk_opciones_director_id` (`director_id`),
  KEY `pc_games_pcgames_guion_id_1cd41966_fk_opciones_guion_id` (`guion_id`),
  KEY `pc_games_pcgames_language_id_6c05dca5_fk_opciones_language_id` (`language_id`),
  KEY `pc_games_pcgames_music_id_626698bf_fk_opciones_music_id` (`music_id`),
  KEY `pc_games_pcgames_produced_id_1e0a81f0_fk_opciones_produced_id` (`produced_id`),
  CONSTRAINT `pc_games_pcgames_developer_id_e5c41a44_fk_opciones_developer_id` FOREIGN KEY (`developer_id`) REFERENCES `opciones_developer` (`id`),
  CONSTRAINT `pc_games_pcgames_director_id_f2e9087f_fk_opciones_director_id` FOREIGN KEY (`director_id`) REFERENCES `opciones_director` (`id`),
  CONSTRAINT `pc_games_pcgames_guion_id_1cd41966_fk_opciones_guion_id` FOREIGN KEY (`guion_id`) REFERENCES `opciones_guion` (`id`),
  CONSTRAINT `pc_games_pcgames_language_id_6c05dca5_fk_opciones_language_id` FOREIGN KEY (`language_id`) REFERENCES `opciones_language` (`id`),
  CONSTRAINT `pc_games_pcgames_music_id_626698bf_fk_opciones_music_id` FOREIGN KEY (`music_id`) REFERENCES `opciones_music` (`id`),
  CONSTRAINT `pc_games_pcgames_produced_id_1e0a81f0_fk_opciones_produced_id` FOREIGN KEY (`produced_id`) REFERENCES `opciones_produced` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_games_pcgames`
--

LOCK TABLES `pc_games_pcgames` WRITE;
/*!40000 ALTER TABLE `pc_games_pcgames` DISABLE KEYS */;
/*!40000 ALTER TABLE `pc_games_pcgames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pc_games_pcgames_genre`
--

DROP TABLE IF EXISTS `pc_games_pcgames_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pc_games_pcgames_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pcgames_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pc_games_pcgames_genre_pcgames_id_genre_id_15871bce_uniq` (`pcgames_id`,`genre_id`),
  KEY `pc_games_pcgames_genre_genre_id_d29e944f_fk_opciones_genre_id` (`genre_id`),
  CONSTRAINT `pc_games_pcgames_gen_pcgames_id_1e84331e_fk_pc_games_` FOREIGN KEY (`pcgames_id`) REFERENCES `pc_games_pcgames` (`id`),
  CONSTRAINT `pc_games_pcgames_genre_genre_id_d29e944f_fk_opciones_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `opciones_genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pc_games_pcgames_genre`
--

LOCK TABLES `pc_games_pcgames_genre` WRITE;
/*!40000 ALTER TABLE `pc_games_pcgames_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `pc_games_pcgames_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_pelicula`
--

DROP TABLE IF EXISTS `peliculas_pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas_pelicula` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `original_title` varchar(150) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `year` date NOT NULL,
  `plot` longtext NOT NULL,
  `screen_one` varchar(100) NOT NULL,
  `screen_two` varchar(100) NOT NULL,
  `screen_three` varchar(100) NOT NULL,
  `screen_four` varchar(100) NOT NULL,
  `duration` time(6) NOT NULL,
  `peso` int(11) NOT NULL,
  `as_downloaded` tinyint(1) NOT NULL,
  `link` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `director_id` int(11) NOT NULL,
  `encoding_id` int(11) NOT NULL,
  `guion_id` int(11) NOT NULL,
  `music_id` int(11) NOT NULL,
  `production_id` int(11) NOT NULL,
  `resolution_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `peliculas_pelicula_category_id_7ccf6c46_fk_opciones_category_id` (`category_id`),
  KEY `peliculas_pelicula_country_id_2875349e_fk_opciones_country_id` (`country_id`),
  KEY `peliculas_pelicula_director_id_48e93f1a_fk_opciones_director_id` (`director_id`),
  KEY `peliculas_pelicula_encoding_id_248ede84_fk_opciones_extension_id` (`encoding_id`),
  KEY `peliculas_pelicula_guion_id_dc363e43_fk_opciones_guion_id` (`guion_id`),
  KEY `peliculas_pelicula_music_id_3b423acf_fk_opciones_music_id` (`music_id`),
  KEY `peliculas_pelicula_production_id_913e5194_fk_opciones_` (`production_id`),
  KEY `peliculas_pelicula_resolution_id_fa359f9d_fk_opciones_` (`resolution_id`),
  KEY `peliculas_pelicula_languages_id_022bff8f_fk_opciones_language_id` (`languages_id`),
  CONSTRAINT `peliculas_pelicula_category_id_7ccf6c46_fk_opciones_category_id` FOREIGN KEY (`category_id`) REFERENCES `opciones_category` (`id`),
  CONSTRAINT `peliculas_pelicula_country_id_2875349e_fk_opciones_country_id` FOREIGN KEY (`country_id`) REFERENCES `opciones_country` (`id`),
  CONSTRAINT `peliculas_pelicula_director_id_48e93f1a_fk_opciones_director_id` FOREIGN KEY (`director_id`) REFERENCES `opciones_director` (`id`),
  CONSTRAINT `peliculas_pelicula_encoding_id_248ede84_fk_opciones_extension_id` FOREIGN KEY (`encoding_id`) REFERENCES `opciones_extension` (`id`),
  CONSTRAINT `peliculas_pelicula_guion_id_dc363e43_fk_opciones_guion_id` FOREIGN KEY (`guion_id`) REFERENCES `opciones_guion` (`id`),
  CONSTRAINT `peliculas_pelicula_languages_id_022bff8f_fk_opciones_language_id` FOREIGN KEY (`languages_id`) REFERENCES `opciones_language` (`id`),
  CONSTRAINT `peliculas_pelicula_music_id_3b423acf_fk_opciones_music_id` FOREIGN KEY (`music_id`) REFERENCES `opciones_music` (`id`),
  CONSTRAINT `peliculas_pelicula_production_id_913e5194_fk_opciones_` FOREIGN KEY (`production_id`) REFERENCES `opciones_produced` (`id`),
  CONSTRAINT `peliculas_pelicula_resolution_id_fa359f9d_fk_opciones_` FOREIGN KEY (`resolution_id`) REFERENCES `opciones_resolution` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_pelicula`
--

LOCK TABLES `peliculas_pelicula` WRITE;
/*!40000 ALTER TABLE `peliculas_pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculas_pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_pelicula_genre`
--

DROP TABLE IF EXISTS `peliculas_pelicula_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas_pelicula_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelicula_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `peliculas_pelicula_genre_pelicula_id_genre_id_2ed1dc14_uniq` (`pelicula_id`,`genre_id`),
  KEY `peliculas_pelicula_genre_genre_id_f249bdaa_fk_opciones_genre_id` (`genre_id`),
  CONSTRAINT `peliculas_pelicula_g_pelicula_id_6cb9b123_fk_peliculas` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas_pelicula` (`id`),
  CONSTRAINT `peliculas_pelicula_genre_genre_id_f249bdaa_fk_opciones_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `opciones_genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_pelicula_genre`
--

LOCK TABLES `peliculas_pelicula_genre` WRITE;
/*!40000 ALTER TABLE `peliculas_pelicula_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculas_pelicula_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas_pelicula_staff`
--

DROP TABLE IF EXISTS `peliculas_pelicula_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculas_pelicula_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pelicula_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `peliculas_pelicula_staff_pelicula_id_artist_id_6fc00420_uniq` (`pelicula_id`,`staff_id`),
  KEY `peliculas_pelicula_staff_staff_id_0f79814f_fk_opciones_staff_id` (`staff_id`),
  CONSTRAINT `peliculas_pelicula_s_pelicula_id_72997bab_fk_peliculas` FOREIGN KEY (`pelicula_id`) REFERENCES `peliculas_pelicula` (`id`),
  CONSTRAINT `peliculas_pelicula_staff_staff_id_0f79814f_fk_opciones_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `opciones_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas_pelicula_staff`
--

LOCK TABLES `peliculas_pelicula_staff` WRITE;
/*!40000 ALTER TABLE `peliculas_pelicula_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculas_pelicula_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retrojuegos_console`
--

DROP TABLE IF EXISTS `retrojuegos_console`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retrojuegos_console` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `console_banner` varchar(100) NOT NULL,
  `console_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retrojuegos_console`
--

LOCK TABLES `retrojuegos_console` WRITE;
/*!40000 ALTER TABLE `retrojuegos_console` DISABLE KEYS */;
INSERT INTO `retrojuegos_console` VALUES (1,'Sega Saturn','2020-01-28 15:53:28.703767','2020-01-30 08:23:22.878252','videoconsolas/banner/saturn_logo_lateral_u3SKRT8.png','videoconsolas/foto/saturn.png'),(2,'Sega Mega Drive','2020-01-28 23:13:45.420834','2020-01-28 23:13:45.420903','videoconsolas/banner/mega-drive-logo.png','videoconsolas/foto/consola-mega-drive.png');
/*!40000 ALTER TABLE `retrojuegos_console` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retrojuegos_retrojuego`
--

DROP TABLE IF EXISTS `retrojuegos_retrojuego`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retrojuegos_retrojuego` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `original_title` varchar(200) NOT NULL,
  `serial_number` varchar(30) NOT NULL,
  `players` varchar(10) NOT NULL,
  `date_released` date NOT NULL,
  `cover` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `region` varchar(10) NOT NULL,
  `support` varchar(10) NOT NULL,
  `number_disk` varchar(10) NOT NULL,
  `screen_one` varchar(100) NOT NULL,
  `screen_two` varchar(100) NOT NULL,
  `screen_three` varchar(100) NOT NULL,
  `screen_four` varchar(100) NOT NULL,
  `as_downloaded` tinyint(1) NOT NULL,
  `download_link` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `console_id` int(11) NOT NULL,
  `developer_id` int(11) NOT NULL,
  `extension_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `video` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `retrojuegos_retrojue_console_id_dd166d5e_fk_retrojueg` (`console_id`),
  KEY `retrojuegos_retrojue_developer_id_63de1c9d_fk_opciones_` (`developer_id`),
  KEY `retrojuegos_retrojue_extension_id_0f1a5d29_fk_opciones_` (`extension_id`),
  KEY `retrojuegos_retrojue_publisher_id_490a4d65_fk_opciones_` (`publisher_id`),
  CONSTRAINT `retrojuegos_retrojue_console_id_dd166d5e_fk_retrojueg` FOREIGN KEY (`console_id`) REFERENCES `retrojuegos_console` (`id`),
  CONSTRAINT `retrojuegos_retrojue_developer_id_63de1c9d_fk_opciones_` FOREIGN KEY (`developer_id`) REFERENCES `opciones_developer` (`id`),
  CONSTRAINT `retrojuegos_retrojue_extension_id_0f1a5d29_fk_opciones_` FOREIGN KEY (`extension_id`) REFERENCES `opciones_extension` (`id`),
  CONSTRAINT `retrojuegos_retrojue_publisher_id_490a4d65_fk_opciones_` FOREIGN KEY (`publisher_id`) REFERENCES `opciones_produced` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retrojuegos_retrojuego`
--

LOCK TABLES `retrojuegos_retrojuego` WRITE;
/*!40000 ALTER TABLE `retrojuegos_retrojuego` DISABLE KEYS */;
INSERT INTO `retrojuegos_retrojuego` VALUES (1,'Advanced Variable Geo','Adovu~ansuto vu~ariaburu Jio','T-32501G','2','1995-03-27','retrogames/covers/avgssc_gntsPH1.jpg','<p>Versi&oacute;n mejorada del primer V.G., con varios personajes nuevos y, por fin, un argumento. Los gr&aacute;ficos y especialmente la m&uacute;sica (espectacular puesto que est&aacute; en formato CD) fueron notablemente mejorados.</p>','NTCSJ','CD','1','retrogames/screens/1_EI3WJhR.png','retrogames/screens/2_SCCzD6O.png','retrogames/screens/3_dPzHAwn.jpg','retrogames/screens/4_gEGXHpW.png',0,'','2020-01-28 16:12:08.468454','2020-01-29 23:11:53.266308',1,1,1,1,'retrogames/videosnaps/Advanced_V.G._Japan.mp4'),(2,'Alien Trilogy','Alien Trilogy','T-8113H-50','1','1996-08-08','retrogames/covers/alien-trilogy_1mZbGcm.png','<p>En el papel de la teniente Ellen Ripley, el jugador experimenta una historia vagamente ambientada de las tres primeras pel&iacute;culas de la franquicia Alien.</p>\r\n\r\n<p>La historia se cuenta a trav&eacute;s de informes de misi&oacute;n basados en una pantalla inicial de texto que gu&iacute;a al jugador a trav&eacute;s de una historia extendida y orientada a la acci&oacute;n, bas&aacute;ndose m&aacute;s en una adaptaci&oacute;n a videojuego y a los personajes de la franquicia en lugar de ser una adaptaci&oacute;n fiel hacia las pel&iacute;culas.</p>\r\n\r\n<p>El videojuego comienza con una introducci&oacute;n en CGI, en la que Ripley junto con un grupo de Marines (visualmente parecidos a los de la pel&iacute;cula Aliens: El regreso) van en una nave con direcci&oacute;n a LV-426 para restaurar la comunicaci&oacute;n con la colonia presente, donde ser&aacute; el inicio de la acci&oacute;n de la historia.</p>','PAL','CD','1','retrogames/screens/1_psUygda.jpeg','retrogames/screens/2_896YmHx.jpg','retrogames/screens/3_FxcsQmC.jpg','retrogames/screens/4_dlAWlbA.jpeg',0,'','2020-01-28 16:30:37.252033','2020-02-02 23:11:31.733539',1,2,1,2,'retrogames/videosnaps/Alien_Trilogy_Europe_EnFrEsIt.mp4'),(3,'Astra Superstars','Asutorasuupaasutaazu','T-1521G','2','1998-08-06','retrogames/covers/astra-superstars_HW6Qwat.jpg','<p>El objetivo del juego de lucha basado en el aire es noquear al oponente en dos de las tres rondas (excepto la pelea final de un solo jefe). Hay dos modos en la versi&oacute;n original de arcade: &quot;Modo historia&quot; (solo 1P) o &quot;1P VS. 2P&quot;.</p>\r\n\r\n<p>En el &quot;Modo historia&quot;, al comienzo de cada batalla, el jugador debe conversar con el oponente seleccionando una de las tres oraciones. Dependiendo de la oraci&oacute;n seleccionada, el oponente controlado por la CPU se &quot;calienta&quot; (se vuelve dif&iacute;cil), &quot;se enfr&iacute;a&quot; (se vuelve f&aacute;cil) o se mantiene neutral antes de pelear (sin cambio de dificultad). Dependiendo de lo que se diga, el jugador puede encontrarse con el Diablo (basado en el mal juicio del personaje) o el &Aacute;ngel (basado en el buen juicio del personaje) para luchar antes que el jefe final, aunque el &Aacute;ngel requiere que el jugador juzgue bien a su oponente no tener hipo, o de lo contrario el Diablo aparecer&aacute; inevitablemente, en caso de que una sola opci&oacute;n sea mala.</p>\r\n\r\n<p>Los jugadores controlan con un joystick de 8 v&iacute;as y seis botones, similar a una de las dos versiones de gabinete arcade del Street Fighter de 1987 y su secuela Street Fighter II .</p>\r\n\r\n<p>Sin embargo, los seis movimientos b&aacute;sicos funcionan de manera diferente en comparaci&oacute;n con los dise&ntilde;os t&iacute;picos de seis botones. Los dos botones de ataque pesado generalmente env&iacute;an al oponente volando a trav&eacute;s del escenario; sin embargo, a veces el oponente puede rebotar desde el costado de la pantalla.</p>\r\n\r\n<p>Dependiendo de qu&eacute; tan agresivamente se realicen los combos, a veces el oponente rebota de un lado a otro de la pantalla como en el pinball.(como lo indica el juego). El personaje del jugador puede moverse brevemente por debajo o por encima de la pantalla, que se puede utilizar para esquivar ataques o perseguir oponentes por encima o por debajo de la pantalla. Las barras de energ&iacute;a debajo de la pantalla son barras &quot;Star Rank&quot;, que se utilizan para llenar la energ&iacute;a suficiente para realizar uno de los dos movimientos de desesperaci&oacute;n por personaje jugable llamado &quot;Star Specials&quot;.</p>','NTCSJ','CD','1','retrogames/screens/1_2eTFWYq.png','retrogames/screens/2_AOejJbs.jpg','retrogames/screens/3_3aRgVqz.jpg','retrogames/screens/4_mbKbPZc.jpg',0,'','2020-01-28 16:48:43.822720','2020-02-02 23:11:50.760713',1,3,1,3,'retrogames/videosnaps/Astra_Superstars_Japan.mp4'),(4,'Asuka 120% Limited Burning Fest.','Asuka 120-paasento rimiteddo','T-16708G','2','1997-10-09','retrogames/covers/asuka-120-limited-burning-fest-limited_Wgp1Plk.jpeg','<p>El juego se desarrolla en la Escuela Privada de Ryooran para Mujeres que educa a las hijas de los niveles superiores de la sociedad. Los clubes de la escuela realizan anualmente un torneo de artes marciales llamado Concurso de Presupuesto de Rivalidad de Clubes.</p>\r\n\r\n<p>El personaje principal es Asuka Honda del Club de Qu&iacute;mica . Otros personajes incluyen miembros del club de tenis , el club de voleibol , el club de animadores y el club de karate . Cada personaje emplea un estilo de lucha diferente y las t&eacute;cnicas son &uacute;nicas para cada club.</p>','NTCSJ','CD','1','retrogames/screens/1_5noE205.jpg','retrogames/screens/2_35bN9Xu.jpg','retrogames/screens/3_gF4KPzd.png','retrogames/screens/4_3lCSRov.jpg',0,'','2020-01-28 16:56:05.673234','2020-02-02 23:12:05.873307',1,4,1,4,'retrogames/videosnaps/Asuka_120_Limited_-_Burning_Fest._Limited_Japan_Hack_Translated_En.mp4'),(5,'Batman Forever','Batman Forever','T-8140H-50','2','1996-01-01','retrogames/covers/batman-forever-the-arcade-game.png','<p>Tomando el papel de Batman o Robin, los jugadores golpearan, patearan, y usaran combinaciones especiales de ataques para derrotar a las olas de enemigos que atacan.</p>\r\n\r\n<p>Las combinaciones especiales aplicadas a enemigos pueden sumar hasta m&aacute;s de 150 golpes posibles en un villano individual. Las armas especiales como las Batarangs pueden ser encontradas a lo largo de los niveles.&nbsp;<em>Batman Forever: The Arcade Game</em>&nbsp;es seccionado en etapas, y despu&eacute;s avanza a trav&eacute;s de cada etapa de enemigos, recogiendo power-ups en el camino, los jugadores deben confrontarse contra un personaje jefe.</p>','PAL','CD','1','retrogames/screens/1_nJCtArB.jpg','retrogames/screens/2_fChEDab.jpg','retrogames/screens/3.jpeg','retrogames/screens/4_ZrIQUFN.jpg',0,'','2020-01-28 19:22:56.557436','2020-01-29 23:16:22.862409',1,5,1,2,'retrogames/videosnaps/Batman_Forever_-_The_Arcade_Game_Europe.mp4'),(6,'Batsugun','Batsugun','T-20605G','2','1996-10-25','retrogames/covers/batsugun.png','<p>El resumen de la trama de Batsugun se explica a trav&eacute;s de materiales complementarios.</p>\r\n\r\n<p>En un planeta distante similar a la Tierra, se pone en marcha una toma de control global con el nombre en clave del Plan Epsilon dirigido por el rey Renoselva A. Gladebar&aacute;n VII, con el Ej&eacute;rcito Imperial realizando exitosamente m&uacute;ltiples golpes de estado d&#39;&eacute;tats sobre pa&iacute;ses del planeta en menos de dos semanas.</p>\r\n\r\n<p>Todo lo que se interpone entre las fuerzas militares de Renoselva y la dominaci&oacute;n mundial son los Skull Hornets: un escuadr&oacute;n de pilotos de combate liderados por el pr&iacute;ncipe Olisis R. Gladebar&aacute;n VIII, hijo de Renoselva. Los Skull Hornets utilizan los jets sumergibles m&aacute;s poderosos que los cient&iacute;ficos del planeta han ideado.</p>','NTCSJ','CD','1','retrogames/screens/1_CSeFwQl.jpg','retrogames/screens/2_RJ61hjq.jpg','retrogames/screens/3_0eOsm2h.jpg','retrogames/screens/4_ZvvyEXR.jpg',0,'','2020-01-28 19:31:21.708119','2020-02-02 23:12:32.115986',1,6,2,5,'retrogames/videosnaps/Batsugun_Japan.mp4'),(7,'Battle Garegga','Batorugaregga','T-10627G','2','1998-02-26','retrogames/covers/battle-garegga.png','<p>Mathew Wayne, un residente de una peque&ntilde;a ciudad rural, era un genio mec&aacute;nico cuya aptitud y habilidades se transmitieron a sus hijos, Brian y Jason.</p>\r\n\r\n<p>Despu&eacute;s de obtener el liderazgo de su f&aacute;brica de autom&oacute;viles , las habilidades de los hermanos se hicieron famosas en todo el pa&iacute;s. Finalmente, la Federaci&oacute;n se acerc&oacute; a los hermanos con un contrato extremadamente rentable para ayudar a producir veh&iacute;culos militares para &eacute;l. Los hermanos Wayne aceptaron el contrato y crearon armas sin igual.</p>\r\n\r\n<p>Poco tiempo despu&eacute;s, los cielos se oscurecieron con la flota a&eacute;rea invasora de la Federaci&oacute;n, y pueblos y ciudades de todas partes fueron devastados por estos ej&eacute;rcitos, incluida la ciudad natal de Brian y Jason. Para su horror, la Federaci&oacute;n estaba usando las armas y veh&iacute;culos que ellos mismos hab&iacute;an dise&ntilde;ado para remodelar la tierra a su despiadada voluntad.</p>\r\n\r\n<p>Tomando aviones cuyos dise&ntilde;os nunca se hab&iacute;an presentado a la Federaci&oacute;n, los hermanos Wayne se preparan para destruir el loco plan de la Federaci&oacute;n. Son ayudados por los cuatro h&eacute;roes de Mahou Daisakusen .</p>','NTCSJ','CD','1','retrogames/screens/1_MMvCtzJ.png','retrogames/screens/2_clMO2Dt.jpg','retrogames/screens/3_NnZXsSn.jpg','retrogames/screens/4_HPNlF03.jpg',0,'','2020-01-28 20:00:28.627916','2020-02-02 23:12:51.430628',1,7,3,6,'retrogames/videosnaps/Battle_Garegga_Japan.mp4'),(8,'Burning Rangers','Baaningurenjaa','T-81803H','1','1998-02-26','retrogames/covers/burning-rangers_QlmHR2i.png','<p>Burning Rangers tiene lugar en una Tierra futurista donde la &uacute;nica amenaza para la vida humana son los incendios.&nbsp;</p>\r\n\r\n<p>Con este fin, un equipo de bomberos altamente especializados llamado Burning Rangers es enviado a incidentes de emergencia para combatir incendios y rescatar a personas en peligro.&nbsp;</p>\r\n\r\n<p>El jugador tiene la opci&oacute;n de elegir dos personajes jugables para jugar;&nbsp;Shou Amabane o Tillis.&nbsp;El personaje seleccionado se lleva primero a trav&eacute;s de una etapa de tutorial donde se les presenta a los otros miembros del equipo, Chris Parton, Reed Phoenix, Big Landman y el personaje jugable no seleccionado, antes de ser llevado a misiones.&nbsp;</p>\r\n\r\n<p>Durante la misi&oacute;n final, los Rangers son presentados a Ilia Klein, una ni&ntilde;a colocada en animaci&oacute;n suspendida y enviada al espacio despu&eacute;s de contraer una enfermedad incurable.&nbsp;</p>\r\n\r\n<p>Ilia informa a los Rangers que su nave se estrellar&aacute; contra la Tierra causando una devastaci&oacute;n completa,&nbsp;entonces los Rangers idean un plan para detener el barco y rescatar a Ilia.&nbsp;En las escenas finales de cr&eacute;dito, se revela que Shou y Tillis se convierten en Rangers de pleno derecho, e Ilia se cura de su enfermedad y se instala en su nueva vida en la Tierra como miembro de los Burning Rangers.</p>','NTCSU','CD','1','retrogames/screens/1_Tc4Jgz2.jpeg','retrogames/screens/2_NKJEXze.png','retrogames/screens/3_MDl1Lh8.jpeg','retrogames/screens/4_lTDrQ2h.png',0,'','2020-01-28 20:17:37.672882','2020-01-29 23:17:33.105758',1,8,4,7,'retrogames/videosnaps/Burning_Rangers_USA.mp4'),(9,'Taito Chase H.Q. Plus S.C.I.','Taitoucheisu H. Q. + S. C. I.','T-1105G','1','1996-08-09','retrogames/covers/chase-hq-plus-sci.jpg','<p>Taito Chase HQ Plus SCI&nbsp;&nbsp;es una compilaci&oacute;n de Chase HQ y su secuela Special Criminal Investigation , publicada por Taito para Sega Saturn.</p>','NTCSJ','CD','1','retrogames/screens/1_LfwguBF.jpg','retrogames/screens/2_0aMwJMd.jpg','retrogames/screens/3_x4FuzrD.png','retrogames/screens/4_jzJPEmk.jpg',0,'','2020-01-28 22:40:21.733314','2020-01-29 23:20:23.923983',1,9,1,8,'retrogames/videosnaps/Taito_Chase_H.Q.__S.C.I._Japan.mp4'),(10,'Clockwork Knight 2','Clockwork Knight: Pepperouchou no Daibouken Gekkan','MK81021-50','1','1995-12-15','retrogames/covers/clockwork-knight-pepperouchou-no-daibouken-gekkan.png','<p>Clockwork Knight 2 recoge inmediatamente en el cliffhanger dejado por Clockwork Knight . Chelsea est&aacute; sano y salvo, pero no se despertar&aacute;. Como los juguetes que no est&aacute;n bajo el hechizo reflexionan sobre qu&eacute; hacer, Chelsea de repente es secuestrada nuevamente. Por lo tanto, Pepper nuevamente se propone rescatarla...</p>','PAL','CD','1','retrogames/screens/3_24vjMv5.jpg','retrogames/screens/1_H4dW4Cf.jpg','retrogames/screens/4_fmX01FH.jpg','retrogames/screens/2_D2shzAr.jpg',0,'','2020-01-28 22:46:49.471288','2020-01-29 23:18:50.118167',1,10,1,7,'retrogames/videosnaps/Clockwork_Knight_2_USA.mp4'),(11,'AfterBurner II','AfterBurner II','T-17013','1','1990-03-23','retrogames/covers/After_Burner_II.jpg','<p>After Burner II es un videojuego de tipo shoot &#39;em up creado por Sega y publicado originalmente como arcade en octubre de 1987, apareciendo posteriormente m&uacute;ltiples conversiones.</p>\r\n\r\n<p>Es una secuela de After Burner, aunque debido a los escasos cambios con su predecesor m&aacute;s bien podr&iacute;a considerarse una actualizaci&oacute;n.</p>','PAL','CAR','','retrogames/screens/1_4H1ird4.jpg','retrogames/screens/2_sMt0bXJ.png','retrogames/screens/3_T3Z8Evz.png','retrogames/screens/4_xLzlcu1.png',0,'','2020-01-28 23:19:12.229371','2020-01-28 23:19:12.229437',2,11,4,7,''),(12,'Sega Ages: Columns Arcade Collection','Koramusu aukeudokorekushon','GS-9161','2','1997-10-30','retrogames/covers/sega-ages-columns-arcade-collection.png','<p>El juego tiene lugar en una especie de estrecho pozo rectangular an&aacute;logo al de Tetris.</p>\r\n\r\n<p>Columnas compuestas por tres piezas diferentes (por ejemplo, joyas de distinto color) aparecen, una a la vez, desde la cima del pozo y caen hasta su fondo, aterrizando bien en su base o sobre otras columnas ca&iacute;das previamente.</p>\r\n\r\n<p>Mientras cae, el jugador puede mover la columna a izquierda y derecha, as&iacute; como rotar las posiciones de las piezas que la componen. Si tras caer una columna hay en el pozo tres o m&aacute;s piezas iguales conectadas en l&iacute;nea recta tanto horizontal, como vertical o diagonalmente, dichas piezas desaparecen; reposicion&aacute;ndose el resto de piezas por efecto de la gravedad.</p>\r\n\r\n<p>Si dicho reposicionamiento vuelve a provocar que tres o m&aacute;s piezas iguales vuelvan a alinearse, estas tambi&eacute;n desaparecen y el mont&oacute;n restante vuelve a recolocarse. Este proceso se repite tantas veces como sea necesario.</p>\r\n\r\n<p>No es raro que esto suceda tres o cuatro veces consecutivas - aunque normalmente se trata de un hecho casual provocado por un gran n&uacute;mero de piezas acumuladas en el pozo. Ocasionalmente aparece una columna especial denominada la Joya M&aacute;gica.</p>\r\n\r\n<p>Esta brilla en diferentes colores y, al aterrizar, destruye todas las piezas del mismo color que la que se encuentra bajo ella. Como Tetris, las columnas caen a un ritmo cada vez mayor a medida que el jugador progresa.</p>\r\n\r\n<p>El objetivo del juego es jugar el mayor tiempo posible antes de que el pozo se llene de piezas.</p>','NTCSJ','CD','1','retrogames/screens/1_snuoylb.jpg','retrogames/screens/2_UvJOEbk.jpg','retrogames/screens/3_LS4c6rj.png','retrogames/screens/4_UaZ10xv.jpg',0,'','2020-01-28 23:27:07.348487','2020-02-02 23:13:37.659948',1,10,1,7,'retrogames/videosnaps/Sega_Ages_-_Columns_Arcade_Collection_Japan.mp4'),(13,'Cotton 2: Magical Night Dreams','Kotton 2','T-9904G','1','1997-12-04','retrogames/covers/cotton-2.png','<p>Los juegos de la serie Cotton siguen a una joven bruja llamada Cotton que tiene una incorporaci&oacute;n a Willow.</p>\r\n\r\n<p>La acompa&ntilde;a el hada Seda. Cada juego de Cotton presenta una historia &uacute;nica que est&aacute; conectada libremente con los otros juegos de la serie. Todas estas historias giran en torno a la obsesi&oacute;n de una joven bruja alemana llamada Nata de Cotton con un tipo m&aacute;gico de dulce llamado &quot;Willow&quot;.</p>\r\n\r\n<p>Cotton es una preadolescente pelirrojaBruja alemana con hambre de dulces Willow que impulsa todas sus acciones. Ella es impetuosa, inmadura y, a menudo, reacciona exageradamente. Aunque sus misiones en cada juego tienen como objetivo final un prop&oacute;sito superior, ella nunca se involucra personalmente por ning&uacute;n motivo que no sea la posibilidad de comer un sauce.</p>\r\n\r\n<p>En un juego t&iacute;pico de Cotton, Cotton se embarcar&aacute; en su viaje a trav&eacute;s de las etapas del juego con la esperanza de que al final sea recompensada con un Willow. Sin embargo, cuando termina el juego, casi siempre termina con las manos vac&iacute;as. Cotton est&aacute; acompa&ntilde;ado por Silk, un hada que est&aacute; en todos los juegos de Cotton hasta la fecha como una especie de compinche para Cotton. Ella es ciudadana del reino de las hadas Filament, y es una ayuda cercana a su reina. Historia de la serie</p>','NTCSJ','CD','1','retrogames/screens/1_5bEqiMc.jpg','retrogames/screens/2_Mar7HUx.png','retrogames/screens/3_eVmZbz7.jpeg','retrogames/screens/4_8UodpBP.png',0,'','2020-01-28 23:32:13.636101','2020-02-02 23:13:54.161820',1,4,1,9,'retrogames/videosnaps/Cotton_2_Japan.mp4'),(14,'Cube Battler: Story of Anna','Cube Battler: Anna Miraiden','T-21006G','2','1997-02-28','retrogames/covers/cube-battler-story-anna.png','<p>Introducci&oacute;n bien animada en ese estilo loco de Ranma establece la historia de Anna para la acci&oacute;n de rompecabezas basada en cubos 3D.&nbsp;Los cubos tienen una imagen sobre ellos que debe rotarse cuando sea necesario para completar la imagen completa antes que tu oponente.&nbsp;Muy agradable.</p>','NTCSJ','CD','1','retrogames/screens/1_ptPyrmn.jpg','retrogames/screens/2.L.jpg','retrogames/screens/3.L.jpg','retrogames/screens/4_Eeo7vRk.jpg',0,'','2020-01-29 12:20:13.870122','2020-02-02 23:14:08.216361',1,13,1,10,'retrogames/videosnaps/Cube_Battler_-_Anna_Mirai_Hen_Japan.mp4'),(15,'Cyberbots: Fullmetal Madness','Saibaubottsu','T-1217G','2','1997-03-28','retrogames/covers/cyberbots-fullmetal-madness.png','<p>En el juego, el jugador primero elige el piloto y luego el mecha (Valiant / Variant Armor o VA para abreviar) que usar&aacute;n para luchar. Los mechas determinan la jugabilidad del juego, pero el piloto es lo que determina la historia que ver&aacute; el jugador.</p>\r\n\r\n<p>Cerca del final del siglo XXI, la Tierra comienza a sobrepoblarse, lo que lleva a muchas personas que viven en colonias espaciales creadas por el hombre. El ej&eacute;rcito primario de la Tierra, &quot;Earth Force&quot;, ha estado realizando experimentos y su trabajo, junto con las acciones de los personajes jugables determinar&aacute;n el futuro de la Tierra.</p>','NTCSJ','CD','1','retrogames/screens/1_iSJxTGQ.png','retrogames/screens/2_rWPdYNr.jpg','retrogames/screens/3_MsBUdan.jpeg','retrogames/screens/4_IyNzGk0.jpeg',0,'','2020-01-29 22:16:50.256649','2020-02-02 23:14:20.728757',1,14,1,11,'retrogames/videosnaps/Cyberbots_-_Full_Metal_Madness_Japan.mp4'),(16,'D-Xhird','Di saudo','T-10307G','2','1997-05-30','retrogames/covers/d-xhird.png','<p>Los jugadores eligen a su luchador y luchan a trav&eacute;s del elenco al estilo de los juegos de lucha comunes.&nbsp;Los jugadores pueden atacar usando los botones de hombro de Saturno, as&iacute; como realizar ataques con el comando de ataque como agarrar y movimientos especiales.&nbsp;Dependiendo del oponente, la arena consistir&aacute; en un anillo o una jaula.&nbsp;</p>\r\n\r\n<p>Los jugadores (y los oponentes tambi&eacute;n) tienen la capacidad de evitar caerse del ring presionando el bot&oacute;n de salto justo cuando est&aacute;n a punto de caerse.&nbsp;Tanto los jugadores como los enemigos tambi&eacute;n pueden usar las paredes de una arena enjaulada para infligir da&ntilde;o adicional a un oponente al golpearlos contra las paredes de la jaula.</p>','NTCSJ','CD','1','retrogames/screens/1_JVwGkcX.jpg','retrogames/screens/2_t1pyWw8.jpg','retrogames/screens/3_OMEnOGT.jpeg','retrogames/screens/4_aONHzL4.jpeg',0,'','2020-01-29 22:21:48.774086','2020-01-29 23:19:34.204330',1,15,2,12,'retrogames/videosnaps/D-Xhird_Japan_2M.mp4'),(17,'Darius Gaiden','Daraiasu gaiden','T-8123H','2','1995-12-15','retrogames/covers/darius-gaiden.png','<p>Poco tiempo despu&eacute;s de los eventos de Darius, Proco y Tiat empieza a buscar refugio fuera del planeta Darius escapando de la destrucci&oacute;n tras los ataques de Belsar. Los dos encontraron un nuevo planeta, Vadis.</p>\r\n\r\n<p>De repente, Belsar intenta destruir el puerto estelar de Darius, cuando los darianos intentaban escapar. El resto de los darianos fueron eliminados, y Belsar fija curso a Vadis. Proco y Tiat ordena a los soldados a usar sus Silver Hawks, pero fueron destruidos con facilidad. Proco y Tiat deben enfrentarse de nuevo a Belsar debido a la muerte de los soldados darianos.</p>','NTCSU','CD','1','retrogames/screens/1_mLHCkmQ.jpg','retrogames/screens/2.jpeg','retrogames/screens/3_ieY4ojF.jpg','retrogames/screens/4_mz7wabT.jpg',0,'','2020-01-29 22:32:41.529182','2020-01-29 23:20:03.002897',1,9,1,8,'retrogames/videosnaps/Darius_Gaiden_Europe.mp4'),(18,'Darius II','Daraiasu II','MK81085-50','2','1996-06-07','retrogames/covers/darius-ii.png.pagespeed.ic.S5jDa5Z0hM_Us38jHU.png','<p>La flota alien&iacute;gena Belsar, compuesta por robots y naves con forma de peces y otras criaturas marinas, perdieron el control de Darius. Tras los enfrentamientos ocurridos en Darius Gaiden, los colonos, ordenados por los expilotos Proco y Tiat, escaparon al planeta Olga durante la invasi&oacute;n Belsar, pero ahora recolonizan Darius y reconstruyen sus zonas da&ntilde;adas, pero Belsar intenta invadir la v&iacute;a l&aacute;ctea. Los dos pilotos Proco Jr. y Tiat Young reciben el llamado de emergencia desde la Tierra y se dirigen a la v&iacute;a l&aacute;ctea.</p>','PAL','CD','1','retrogames/screens/1_4b9sQTx.jpg','retrogames/screens/2_fWc9Voc.jpeg','retrogames/screens/3_DcORF3e.jpeg','retrogames/screens/4_6QHODgc.jpg',0,'','2020-01-29 22:59:23.717654','2020-01-29 23:20:13.288905',1,9,1,8,'retrogames/videosnaps/Darius_II_Europe.mp4'),(19,'Dark Legend','Suiko Enbu: Outlaws of the Lost Dynasty','T-1305H','2','1995-08-11','retrogames/covers/suiko-enbu-outlaws-of-the-lost-dynasty.png','<p>Durante generaciones, la gente ha cre&iacute;do en el mito chino conocido como la Leyenda Oscura. Ocurre en alg&uacute;n momento del siglo XI o XII cuando China se sumerge en un estado de anarqu&iacute;a total , cuando los se&ntilde;ores de la guerra, hambrientos de poder, se rebelan contra el gobierno central.</p>\r\n\r\n<p>Para recuperar el control de su imperio, el emperador dise&ntilde;a un plan astuto. Se prepara para la conquista definitiva para sus rivales m&aacute;s ambiciosos, un desaf&iacute;o que ning&uacute;n se&ntilde;or de la guerra puede resistir ya que las recompensas son inimaginables.</p>\r\n\r\n<p>El vencedor estar&aacute; dotado de habilidades incre&iacute;bles y poseer&aacute; el m&aacute;ximo poder, sin mencionar la riqueza ilimitada. El triunfo es absoluto ya que la derrota significa la muerte. Miles de valientes guerreros luchan entre ellos con habilidades especiales de lucha.</p>','NTCSU','CD','1','retrogames/screens/1_exGm03J.jpg','retrogames/screens/2_Jjyzkqn.jpeg','retrogames/screens/3_GaOG2wJ.jpg','retrogames/screens/4_hVD3uBj.jpg',0,'','2020-01-30 12:43:27.756819','2020-01-30 12:43:27.756883',1,16,1,13,'retrogames/videosnaps/Dark_Legend_USA.mp4');
/*!40000 ALTER TABLE `retrojuegos_retrojuego` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retrojuegos_retrojuego_genre`
--

DROP TABLE IF EXISTS `retrojuegos_retrojuego_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retrojuegos_retrojuego_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `retrojuego_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `retrojuegos_retrojuego_g_retrojuego_id_genre_id_16fd7458_uniq` (`retrojuego_id`,`genre_id`),
  KEY `retrojuegos_retrojue_genre_id_276e7625_fk_opciones_` (`genre_id`),
  CONSTRAINT `retrojuegos_retrojue_genre_id_276e7625_fk_opciones_` FOREIGN KEY (`genre_id`) REFERENCES `opciones_genre` (`id`),
  CONSTRAINT `retrojuegos_retrojue_retrojuego_id_bb9d9424_fk_retrojueg` FOREIGN KEY (`retrojuego_id`) REFERENCES `retrojuegos_retrojuego` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retrojuegos_retrojuego_genre`
--

LOCK TABLES `retrojuegos_retrojuego_genre` WRITE;
/*!40000 ALTER TABLE `retrojuegos_retrojuego_genre` DISABLE KEYS */;
INSERT INTO `retrojuegos_retrojuego_genre` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,1),(5,5,3),(6,6,4),(7,7,4),(8,8,4),(9,8,5),(10,9,6),(11,10,7),(13,11,4),(12,11,8),(14,12,9),(15,13,4),(16,14,9),(17,15,1),(18,16,1),(19,17,4),(20,18,4),(21,19,1);
/*!40000 ALTER TABLE `retrojuegos_retrojuego_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retrojuegos_retrojuego_languages`
--

DROP TABLE IF EXISTS `retrojuegos_retrojuego_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retrojuegos_retrojuego_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `retrojuego_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `retrojuegos_retrojuego_l_retrojuego_id_language_i_e74ee68b_uniq` (`retrojuego_id`,`language_id`),
  KEY `retrojuegos_retrojue_language_id_94b585e8_fk_opciones_` (`language_id`),
  CONSTRAINT `retrojuegos_retrojue_language_id_94b585e8_fk_opciones_` FOREIGN KEY (`language_id`) REFERENCES `opciones_language` (`id`),
  CONSTRAINT `retrojuegos_retrojue_retrojuego_id_0dc8ccb0_fk_retrojueg` FOREIGN KEY (`retrojuego_id`) REFERENCES `retrojuegos_retrojuego` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retrojuegos_retrojuego_languages`
--

LOCK TABLES `retrojuegos_retrojuego_languages` WRITE;
/*!40000 ALTER TABLE `retrojuegos_retrojuego_languages` DISABLE KEYS */;
INSERT INTO `retrojuegos_retrojuego_languages` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,1),(5,4,1),(6,5,2),(7,6,1),(8,6,2),(9,7,1),(10,7,2),(11,8,2),(12,9,1),(13,9,2),(14,10,2),(15,11,2),(16,12,1),(17,12,2),(18,13,1),(19,13,2),(20,14,1),(21,15,1),(22,15,2),(23,16,1),(24,16,2),(25,17,2),(26,18,2),(27,19,2);
/*!40000 ALTER TABLE `retrojuegos_retrojuego_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_serie`
--

DROP TABLE IF EXISTS `series_serie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series_serie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `poster` varchar(100) NOT NULL,
  `first_emission` date NOT NULL,
  `last_emission` date NOT NULL,
  `episodes` int(11) NOT NULL,
  `seassons` int(11) NOT NULL,
  `plot` longtext NOT NULL,
  `screen_one` varchar(100) NOT NULL,
  `screen_two` varchar(100) NOT NULL,
  `screen_three` varchar(100) NOT NULL,
  `screen_four` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `as_downloaded` tinyint(1) NOT NULL,
  `duration` time(6) NOT NULL,
  `encoding_id` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `resolution_id` int(11) NOT NULL,
  `original_title` varchar(150) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `studio_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `series_serie_category_id_ab9b6f30_fk_opciones_category_id` (`category_id`),
  KEY `series_serie_encoding_id_fc8c0a92_fk_opciones_extension_id` (`encoding_id`),
  KEY `series_serie_resolution_id_2d1198d4_fk_opciones_resolution_id` (`resolution_id`),
  KEY `series_serie_created_by_id_82b3e6b8_fk_opciones_artist_id` (`created_by_id`),
  KEY `series_serie_languages_id_fa273c8c_fk_opciones_language_id` (`languages_id`),
  KEY `series_serie_studio_id_612b4f28_fk_opciones_studio_id` (`studio_id`),
  CONSTRAINT `series_serie_category_id_ab9b6f30_fk_opciones_category_id` FOREIGN KEY (`category_id`) REFERENCES `opciones_category` (`id`),
  CONSTRAINT `series_serie_created_by_id_82b3e6b8_fk_opciones_artist_id` FOREIGN KEY (`created_by_id`) REFERENCES `opciones_artist` (`id`),
  CONSTRAINT `series_serie_encoding_id_fc8c0a92_fk_opciones_extension_id` FOREIGN KEY (`encoding_id`) REFERENCES `opciones_extension` (`id`),
  CONSTRAINT `series_serie_languages_id_fa273c8c_fk_opciones_language_id` FOREIGN KEY (`languages_id`) REFERENCES `opciones_language` (`id`),
  CONSTRAINT `series_serie_resolution_id_2d1198d4_fk_opciones_resolution_id` FOREIGN KEY (`resolution_id`) REFERENCES `opciones_resolution` (`id`),
  CONSTRAINT `series_serie_studio_id_612b4f28_fk_opciones_studio_id` FOREIGN KEY (`studio_id`) REFERENCES `opciones_studio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_serie`
--

LOCK TABLES `series_serie` WRITE;
/*!40000 ALTER TABLE `series_serie` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_serie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_serie_genre`
--

DROP TABLE IF EXISTS `series_serie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series_serie_genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series_serie_genre_serie_id_genre_id_bc553a2b_uniq` (`serie_id`,`genre_id`),
  KEY `series_serie_genre_genre_id_2efd58e9_fk_opciones_genre_id` (`genre_id`),
  CONSTRAINT `series_serie_genre_genre_id_2efd58e9_fk_opciones_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `opciones_genre` (`id`),
  CONSTRAINT `series_serie_genre_serie_id_f4d96cd4_fk_series_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `series_serie` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_serie_genre`
--

LOCK TABLES `series_serie_genre` WRITE;
/*!40000 ALTER TABLE `series_serie_genre` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_serie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series_serie_staff`
--

DROP TABLE IF EXISTS `series_serie_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series_serie_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serie_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series_serie_staff_serie_id_staff_id_6c1a4897_uniq` (`serie_id`,`staff_id`),
  KEY `series_serie_staff_staff_id_65c48189_fk_opciones_staff_id` (`staff_id`),
  CONSTRAINT `series_serie_staff_serie_id_ba6dbeeb_fk_series_serie_id` FOREIGN KEY (`serie_id`) REFERENCES `series_serie` (`id`),
  CONSTRAINT `series_serie_staff_staff_id_65c48189_fk_opciones_staff_id` FOREIGN KEY (`staff_id`) REFERENCES `opciones_staff` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series_serie_staff`
--

LOCK TABLES `series_serie_staff` WRITE;
/*!40000 ALTER TABLE `series_serie_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `series_serie_staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-03  0:38:55
