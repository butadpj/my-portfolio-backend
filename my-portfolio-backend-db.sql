-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: django-portfolio
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add about',6,'add_about'),(22,'Can change about',6,'change_about'),(23,'Can delete about',6,'delete_about'),(24,'Can view about',6,'view_about'),(25,'Can add contact',7,'add_contact'),(26,'Can change contact',7,'change_contact'),(27,'Can delete contact',7,'delete_contact'),(28,'Can view contact',7,'view_contact'),(29,'Can add home',8,'add_home'),(30,'Can change home',8,'change_home'),(31,'Can delete home',8,'delete_home'),(32,'Can view home',8,'view_home'),(33,'Can add js challenge',9,'add_jschallenge'),(34,'Can change js challenge',9,'change_jschallenge'),(35,'Can delete js challenge',9,'delete_jschallenge'),(36,'Can view js challenge',9,'view_jschallenge'),(37,'Can add project',10,'add_project'),(38,'Can change project',10,'change_project'),(39,'Can delete project',10,'delete_project'),(40,'Can view project',10,'view_project'),(41,'Can add tech stack images',11,'add_techstackimages'),(42,'Can change tech stack images',11,'change_techstackimages'),(43,'Can delete tech stack images',11,'delete_techstackimages'),(44,'Can view tech stack images',11,'view_techstackimages'),(45,'Can add user',12,'add_customuser'),(46,'Can change user',12,'change_customuser'),(47,'Can delete user',12,'delete_customuser'),(48,'Can view user',12,'view_customuser'),(49,'Can add blacklisted token',13,'add_blacklistedtoken'),(50,'Can change blacklisted token',13,'change_blacklistedtoken'),(51,'Can delete blacklisted token',13,'delete_blacklistedtoken'),(52,'Can view blacklisted token',13,'view_blacklistedtoken'),(53,'Can add outstanding token',14,'add_outstandingtoken'),(54,'Can change outstanding token',14,'change_outstandingtoken'),(55,'Can delete outstanding token',14,'delete_outstandingtoken'),(56,'Can view outstanding token',14,'view_outstandingtoken');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_customuser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-05-26 09:46:39.579093','1','v1',1,'[{\"added\": {}}]',8,1),(2,'2021-05-26 09:47:24.061494','1','v1',2,'[]',8,1),(3,'2021-05-26 12:03:21.536106','2','george',3,'',12,1),(4,'2021-05-26 12:04:17.904891','3','george',3,'',12,1),(5,'2021-05-26 12:04:37.192226','4','george',3,'',12,1),(6,'2021-05-26 12:06:08.187920','5','george',3,'',12,1),(7,'2021-05-28 11:18:13.847339','25','Blacklisted token for Paul John',3,'',13,1),(8,'2021-05-28 11:18:13.852334','24','Blacklisted token for Paul John',3,'',13,1),(9,'2021-05-28 11:18:13.855334','23','Blacklisted token for Paul John',3,'',13,1),(10,'2021-05-28 11:18:13.859335','22','Blacklisted token for Paul John',3,'',13,1),(11,'2021-05-28 11:18:13.861334','21','Blacklisted token for Paul John',3,'',13,1),(12,'2021-05-28 11:18:13.864338','20','Blacklisted token for Paul John',3,'',13,1),(13,'2021-05-28 11:18:13.867335','19','Blacklisted token for Paul John',3,'',13,1),(14,'2021-05-28 11:18:13.870334','18','Blacklisted token for Paul John',3,'',13,1),(15,'2021-05-28 11:18:13.873334','17','Blacklisted token for Paul John',3,'',13,1),(16,'2021-05-28 11:18:13.876334','16','Blacklisted token for Paul John',3,'',13,1),(17,'2021-05-28 11:18:13.879334','15','Blacklisted token for Paul John',3,'',13,1),(18,'2021-05-28 11:18:13.882335','14','Blacklisted token for Paul John',3,'',13,1),(19,'2021-05-28 11:18:13.885339','12','Blacklisted token for Paul John',3,'',13,1),(20,'2021-05-28 11:18:13.889334','11','Blacklisted token for Paul John',3,'',13,1),(21,'2021-05-28 11:18:13.891334','10','Blacklisted token for Paul John',3,'',13,1),(22,'2021-05-28 11:18:13.894338','9','Blacklisted token for Paul John',3,'',13,1),(23,'2021-05-28 11:18:13.898337','8','Blacklisted token for Paul John',3,'',13,1),(24,'2021-05-28 11:18:13.900334','7','Blacklisted token for Paul John',3,'',13,1),(25,'2021-05-28 11:18:13.904337','6','Blacklisted token for Paul John',3,'',13,1),(26,'2021-05-28 11:18:13.907335','5','Blacklisted token for Paul John',3,'',13,1),(27,'2021-05-28 11:18:13.910335','4','Blacklisted token for Paul John',3,'',13,1),(28,'2021-05-28 11:18:13.913335','3','Blacklisted token for Paul John',3,'',13,1),(29,'2021-05-28 11:18:13.916334','2','Blacklisted token for Paul John',3,'',13,1),(30,'2021-05-28 11:18:13.919334','1','Blacklisted token for Paul John',3,'',13,1),(31,'2021-05-28 11:18:13.923334','31','Blacklisted token for None',3,'',13,1),(32,'2021-05-28 11:18:13.925334','30','Blacklisted token for None',3,'',13,1),(33,'2021-05-28 11:18:13.928334','29','Blacklisted token for None',3,'',13,1),(34,'2021-05-28 11:18:13.931340','28','Blacklisted token for None',3,'',13,1),(35,'2021-05-28 11:18:13.934334','27','Blacklisted token for None',3,'',13,1),(36,'2021-05-28 11:18:13.937335','26','Blacklisted token for None',3,'',13,1),(37,'2021-05-28 11:18:13.940334','13','Blacklisted token for None',3,'',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(6,'sections','about'),(7,'sections','contact'),(8,'sections','home'),(9,'sections','jschallenge'),(10,'sections','project'),(11,'sections','techstackimages'),(5,'sessions','session'),(13,'token_blacklist','blacklistedtoken'),(14,'token_blacklist','outstandingtoken'),(12,'users','customuser');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-05-26 09:39:52.513024'),(2,'contenttypes','0002_remove_content_type_name','2021-05-26 09:39:52.680027'),(3,'auth','0001_initial','2021-05-26 09:39:52.776028'),(4,'auth','0002_alter_permission_name_max_length','2021-05-26 09:39:53.254029'),(5,'auth','0003_alter_user_email_max_length','2021-05-26 09:39:53.264029'),(6,'auth','0004_alter_user_username_opts','2021-05-26 09:39:53.273032'),(7,'auth','0005_alter_user_last_login_null','2021-05-26 09:39:53.282029'),(8,'auth','0006_require_contenttypes_0002','2021-05-26 09:39:53.287031'),(9,'auth','0007_alter_validators_add_error_messages','2021-05-26 09:39:53.297029'),(10,'auth','0008_alter_user_username_max_length','2021-05-26 09:39:53.307030'),(11,'auth','0009_alter_user_last_name_max_length','2021-05-26 09:39:53.318029'),(12,'auth','0010_alter_group_name_max_length','2021-05-26 09:39:53.343030'),(13,'auth','0011_update_proxy_permissions','2021-05-26 09:39:53.353033'),(14,'auth','0012_alter_user_first_name_max_length','2021-05-26 09:39:53.363033'),(15,'users','0001_initial','2021-05-26 09:39:53.496031'),(16,'admin','0001_initial','2021-05-26 09:39:55.781029'),(17,'admin','0002_logentry_remove_auto_add','2021-05-26 09:39:55.939029'),(18,'admin','0003_logentry_add_action_flag_choices','2021-05-26 09:39:55.951029'),(19,'sections','0001_initial','2021-05-26 09:39:56.116030'),(20,'sessions','0001_initial','2021-05-26 09:39:56.217027'),(21,'token_blacklist','0001_initial','2021-05-26 14:58:48.470387'),(22,'token_blacklist','0002_outstandingtoken_jti_hex','2021-05-26 14:58:48.584385'),(23,'token_blacklist','0003_auto_20171017_2007','2021-05-26 14:58:48.603386'),(24,'token_blacklist','0004_auto_20171017_2013','2021-05-26 14:58:48.700386'),(25,'token_blacklist','0005_remove_outstandingtoken_jti','2021-05-26 14:58:48.774387'),(26,'token_blacklist','0006_auto_20171017_2113','2021-05-26 14:58:48.802386'),(27,'token_blacklist','0007_auto_20171017_2214','2021-05-26 14:58:49.092386'),(28,'token_blacklist','0008_migrate_to_bigautofield','2021-05-26 14:58:49.413385'),(29,'token_blacklist','0009_auto_20210526_2258','2021-05-26 14:58:49.430388');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('3ohtfdjbjci3q5mtlioienkfg3u4bbr1','.eJxVjMEOwiAQRP-FsyFQoEs9evcbyMKuUjWQlPZk_HdL0oPOYQ7zZuYtAm5rDlvjJcwkzkKL028WMT25dEAPLPcqUy3rMkfZK_KgTV4r8etydP8OMrbc14MfDatBg1Ngp2gSA1LyeroBcFTKWjDRIYMCN-7anSKhZusNkBGfL8SCNx8:1lmI5t:D5ExcMyKHvylkCvDflpZrVQQHjN6nfA1Vs7ixsiRw98','2021-06-10 15:38:45.300618'),('43i4e19309zkaxwla0mbfrai0y14vulx','.eJxVjMEOwiAQRP-FsyFQoEs9evcbyMKuUjWQlPZk_HdL0oPOYQ7zZuYtAm5rDlvjJcwkzkKL028WMT25dEAPLPcqUy3rMkfZK_KgTV4r8etydP8OMrbc14MfDatBg1Ngp2gSA1LyeroBcFTKWjDRIYMCN-7anSKhZusNkBGfL8SCNx8:1llqww:wbrrDqQfMuyUz3wXiHq0YzkT6YidgEpW8UrElfYZc1k','2021-06-09 10:39:42.451865'),('o4j3oxrpe8ndgq8sxai1wlc85032mp0g','.eJxVjMEOwiAQRP-FsyFQoEs9evcbyMKuUjWQlPZk_HdL0oPOYQ7zZuYtAm5rDlvjJcwkzkKL028WMT25dEAPLPcqUy3rMkfZK_KgTV4r8etydP8OMrbc14MfDatBg1Ngp2gSA1LyeroBcFTKWjDRIYMCN-7anSKhZusNkBGfL8SCNx8:1lmaSP:_tG7hwuGuwI_17y5OJ-F6dAheixj4Ba5GbUfwzQZiYA','2021-06-11 11:15:13.032571');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_about`
--

DROP TABLE IF EXISTS `sections_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_about` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version_title` varchar(30) DEFAULT NULL,
  `about_text` longtext,
  `display_picture` varchar(100) NOT NULL,
  `person_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_about`
--

LOCK TABLES `sections_about` WRITE;
/*!40000 ALTER TABLE `sections_about` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_contact`
--

DROP TABLE IF EXISTS `sections_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version_title` varchar(30) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `mobile_number` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_contact`
--

LOCK TABLES `sections_contact` WRITE;
/*!40000 ALTER TABLE `sections_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_home`
--

DROP TABLE IF EXISTS `sections_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_home` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version_title` varchar(30) DEFAULT NULL,
  `small_text` varchar(10) DEFAULT NULL,
  `large_text` varchar(10) DEFAULT NULL,
  `career_title` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_home`
--

LOCK TABLES `sections_home` WRITE;
/*!40000 ALTER TABLE `sections_home` DISABLE KEYS */;
INSERT INTO `sections_home` VALUES (1,'v1','i\'m','Paul','Software Engineer');
/*!40000 ALTER TABLE `sections_home` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_jschallenge`
--

DROP TABLE IF EXISTS `sections_jschallenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_jschallenge` (
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_jschallenge`
--

LOCK TABLES `sections_jschallenge` WRITE;
/*!40000 ALTER TABLE `sections_jschallenge` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_jschallenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_project`
--

DROP TABLE IF EXISTS `sections_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `version_title` varchar(30) NOT NULL,
  `title` varchar(20) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `preview_image` varchar(100) DEFAULT NULL,
  `website_link` varchar(30) DEFAULT NULL,
  `github_link` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_project`
--

LOCK TABLES `sections_project` WRITE;
/*!40000 ALTER TABLE `sections_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections_techstackimages`
--

DROP TABLE IF EXISTS `sections_techstackimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections_techstackimages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `project_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sections_techstackim_project_id_e20e9071_fk_sections_` (`project_id`),
  CONSTRAINT `sections_techstackim_project_id_e20e9071_fk_sections_` FOREIGN KEY (`project_id`) REFERENCES `sections_project` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections_techstackimages`
--

LOCK TABLES `sections_techstackimages` WRITE;
/*!40000 ALTER TABLE `sections_techstackimages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections_techstackimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_blacklistedtoken`
--

DROP TABLE IF EXISTS `token_blacklist_blacklistedtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_blacklistedtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blacklisted_at` datetime(6) NOT NULL,
  `token_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_id` (`token_id`),
  CONSTRAINT `token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk` FOREIGN KEY (`token_id`) REFERENCES `token_blacklist_outstandingtoken` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_blacklistedtoken`
--

LOCK TABLES `token_blacklist_blacklistedtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_blacklistedtoken` VALUES (32,'2021-05-28 11:19:28.226385',74),(33,'2021-05-28 11:23:44.714921',77),(34,'2021-05-29 06:45:49.271508',79),(35,'2021-05-29 06:46:06.467374',80),(36,'2021-05-29 06:47:23.925215',81),(37,'2021-05-29 06:50:41.499683',82),(38,'2021-05-29 06:53:00.687929',83),(39,'2021-05-29 06:55:39.667331',84);
/*!40000 ALTER TABLE `token_blacklist_blacklistedtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token_blacklist_outstandingtoken`
--

DROP TABLE IF EXISTS `token_blacklist_outstandingtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token_blacklist_outstandingtoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` longtext NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  `jti` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq` (`jti`),
  KEY `token_blacklist_outs_user_id_83bc629a_fk_users_cus` (`user_id`),
  CONSTRAINT `token_blacklist_outs_user_id_83bc629a_fk_users_cus` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token_blacklist_outstandingtoken`
--

LOCK TABLES `token_blacklist_outstandingtoken` WRITE;
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` DISABLE KEYS */;
INSERT INTO `token_blacklist_outstandingtoken` VALUES (1,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyNzU2NCwianRpIjoiZjM1OTc2ODc1MzQ3NDVhZjgyZDQ4M2Y4NzJjZjdiZGUiLCJ1c2VyX2lkIjoxfQ.9ESLveCaOvpGVMKTqLjvbabURxVyJORS59OMuHktktY','2021-05-26 14:59:24.475584','2021-05-27 14:59:24.000000',1,'f3597687534745af82d483f872cf7bde'),(2,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyNzk2NSwianRpIjoiN2RhNDk4NjFmMmFhNDU0M2I2MWUyODIxYWEyMWY0NmQiLCJ1c2VyX2lkIjoxfQ.1xkzo4o_rEwM8qGS4rRtbBzK8KfXbSgBLwHJisIBVao','2021-05-26 15:06:05.651237','2021-05-27 15:06:05.000000',1,'7da49861f2aa4543b61e2821aa21f46d'),(3,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyNzk3MiwianRpIjoiZTRiMzg5ODFlMjI4NGJkNzg1ZWI0YmRiMTQzNTAxMGEiLCJ1c2VyX2lkIjoxfQ.s7KqwzgFaeedmWtCiB9il5XfPUu25NBisYj4KyzvYVE','2021-05-26 15:06:12.710507','2021-05-27 15:06:12.000000',1,'e4b38981e2284bd785eb4bdb1435010a'),(4,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyODU4NSwianRpIjoiZDlhYWQ4NTM3OWY0NDQ2NGE2OTIwY2UwN2RmZTVhYzEiLCJ1c2VyX2lkIjoxfQ.mVAp6MJomMLQhlhVxBaHyE1ji-h5U7wBroZQMpN2jqU','2021-05-26 15:16:25.488927','2021-05-27 15:16:25.000000',1,'d9aad85379f44464a6920ce07dfe5ac1'),(5,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyODYxOCwianRpIjoiYTc2ZGMxMWMxOTc5NGRiY2JlNWYyMmU3YzZmYTMzYTUiLCJ1c2VyX2lkIjoxfQ.6j6VbgXvKmsTpnjht1dyODRRCSWk44VxRjG_plnBI94','2021-05-26 15:16:58.910243','2021-05-27 15:16:58.000000',1,'a76dc11c19794dbcbe5f22e7c6fa33a5'),(6,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyODgwOSwianRpIjoiZTU0M2VjNjA3MDc3NDFkZWEwODQ4YWJiYmZlMjlkNzciLCJ1c2VyX2lkIjoxfQ.RuBLqrF8-X7u0SM7qn88PM7--rsl6dueie8OrkQvrvQ','2021-05-26 15:20:09.975230','2021-05-27 15:20:09.000000',1,'e543ec60707741dea0848abbbfe29d77'),(7,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyODgzNiwianRpIjoiNGJlN2FlNjUyNTExNDIyMzg3ZTQxMDg0N2UwMThmMTUiLCJ1c2VyX2lkIjoxfQ.ZtaA8zkBkerP1ij6LKcBRsqyMUCKE7RDhNrXx34mNpE','2021-05-26 15:20:36.774411','2021-05-27 15:20:36.000000',1,'4be7ae652511422387e410847e018f15'),(8,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyOTE0OSwianRpIjoiZGQ4MTY2NTU2NDU4NDUzNGEzYTYyODI1YmUwZDZhNWQiLCJ1c2VyX2lkIjoxfQ.s6dy219CwPb8wlbtfqbR33C-Zp8fGOPvR0LSGoJNtqQ','2021-05-26 15:25:49.554373','2021-05-27 15:25:49.000000',1,'dd81665564584534a3a62825be0d6a5d'),(9,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyOTE4NywianRpIjoiMmMzYzdiZGFhNmI2NGY3ODg4MDc0YjlhNjNhOWUzYjgiLCJ1c2VyX2lkIjoxfQ.W7bEZT-zpaJwK_hSxYRfwpSEcG8OpveVXov50rUwAc8','2021-05-26 15:26:27.633006','2021-05-27 15:26:27.000000',1,'2c3c7bdaa6b64f7888074b9a63a9e3b8'),(10,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyOTI4NiwianRpIjoiN2Y4MWZhOWZmZTU2NDQwM2IzYjFhZDIzY2E3Mzg5MDUiLCJ1c2VyX2lkIjoxfQ.xYT-lrfHKNdHxT9g39fGEaCIQ3V49EQyGoegrHi1_Vw','2021-05-26 15:28:06.987798','2021-05-27 15:28:06.000000',1,'7f81fa9ffe564403b3b1ad23ca738905'),(11,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyOTM4NywianRpIjoiMTRlMjRlNWFkNTkxNDU3ZDhlMzIzNDJkMjY0Y2U4N2MiLCJ1c2VyX2lkIjoxfQ.yc0ZMpxoseEbO2S-1f9KjOvTlH3pXHocuv4m0_DFS_M','2021-05-26 15:29:47.795727','2021-05-27 15:29:47.000000',1,'14e24e5ad591457d8e32342d264ce87c'),(12,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyOTQ5OCwianRpIjoiNmM5OGYzNjkwNTM3NGZiNDkyYzk0MjlhOTAxMGY4ZjAiLCJ1c2VyX2lkIjoxfQ.bd1DedVYZzyxQiNjoOh15zWZ2rrFMG0nIg2S2xzEobY','2021-05-26 15:31:38.096617','2021-05-27 15:31:38.000000',1,'6c98f36905374fb492c9429a9010f8f0'),(13,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEyOTYwOSwianRpIjoiMDAyNmE5ZWNlZDEzNDM0Nzg4ZDYxMTY4ODA4NzExYjciLCJ1c2VyX2lkIjoxfQ.E9hjQ-Ppxl9mAbnUi2Hss_nAAHpOQBoHbQiMn1DECLg','2021-05-26 15:33:29.303667','2021-05-27 15:33:29.000000',1,'0026a9eced13434788d61168808711b7'),(14,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEzMDEyMCwianRpIjoiYTQxYzczNzE3MWZhNDEzMDg5Y2I1ZWM3MjE1MThkYTIiLCJ1c2VyX2lkIjoxfQ.M160eJqmyW_N4ntDEVC4v5OpBpn2wVcDkskT4SiaJX4','2021-05-26 15:42:00.593379','2021-05-27 15:42:00.000000',1,'a41c737171fa413089cb5ec721518da2'),(15,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEzMDM3MSwianRpIjoiYTMxMzJhNTM3ZTFkNDUxZGE3MmM4NTQyZTljNjBkN2YiLCJ1c2VyX2lkIjoxfQ.YXNGymrgyo9HFDA63fLCecfeLURzFM4OvgMSkPOzHHc','2021-05-26 15:46:11.296084','2021-05-27 15:46:11.000000',1,'a3132a537e1d451da72c8542e9c60d7f'),(16,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjEzMDUzNywianRpIjoiNDYwZDMxNTdhZWNjNDVlYzg1MDU4MjRiMWE5ODI4NjUiLCJ1c2VyX2lkIjoxfQ.xT87s5-VG4NIOXy0oQx6ioKJzskoBNGG-CQXS2yCohU','2021-05-26 15:48:57.027501','2021-05-27 15:48:57.000000',1,'460d3157aecc45ec8505824b1a982865'),(17,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIwMDg0OSwianRpIjoiNWNhMWNmNWU5N2Q3NDAyZTgxMjJhMWZlYTU2MTE5ODkiLCJ1c2VyX2lkIjoxfQ._s5OKsW-HHuCGJ_coeMdOkHqIUHp_BQEEGpLt18zo_g','2021-05-27 11:20:49.671656','2021-05-28 11:20:49.000000',1,'5ca1cf5e97d7402e8122a1fea5611989'),(18,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIwNjM2NSwianRpIjoiYTM4NzA5ODIyMDBkNDE5NDhiM2NmOTc5ODZkOTQ3ZmQiLCJ1c2VyX2lkIjoxfQ.CrISU2UJBYBO4pVLmUVrWi5BV16WxNEUaOUU9K7kn_E','2021-05-27 12:52:45.179282','2021-05-28 12:52:45.000000',1,'a3870982200d41948b3cf97986d947fd'),(19,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxMTMwMSwianRpIjoiMTQxN2ZjY2JiYjdhNGVlMmE3YmI2MjkyYjBlMzc2NWIiLCJ1c2VyX2lkIjoxfQ.Zq-uOMZwJANRQ8VMrtvC7wjTk6sgrkzk77YiNYvtqxk','2021-05-27 14:15:01.920238','2021-05-28 14:15:01.000000',1,'1417fccbbb7a4ee2a7bb6292b0e3765b'),(20,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxMTQ4MiwianRpIjoiZDgyNjBhZDAxZWU0NDM4YjgzNjA2NmMwNDgyYmI1OTkiLCJ1c2VyX2lkIjoxfQ.V_cxyqE2uelHdbDUpq5A9sRZbJ8jos16u3uo9BkRnuY','2021-05-27 14:18:02.290445','2021-05-28 14:18:02.000000',1,'d8260ad01ee4438b836066c0482bb599'),(21,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxMTQ4OCwianRpIjoiODE2MmE3YzM3OWE4NGNhM2I4YTMzZjliMzk3OGE3ZGUiLCJ1c2VyX2lkIjoxfQ.yPl-UA5FSDwNKRULh97fXMLvguhm_PYk7n8JxiFdY3Y','2021-05-27 14:18:08.575599','2021-05-28 14:18:08.000000',1,'8162a7c379a84ca3b8a33f9b3978a7de'),(22,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxMTUxNywianRpIjoiNzM2OWYyNjE2NGJmNGIxZWJlZTJiM2FlYjVhOGJhNGUiLCJ1c2VyX2lkIjoxfQ.9M4sJxhz_tKCPLUewX2W4KdeEOpbgtGBzEKs3I8BkRo','2021-05-27 14:18:37.621506','2021-05-28 14:18:37.000000',1,'7369f26164bf4b1ebee2b3aeb5a8ba4e'),(23,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxMTc3MSwianRpIjoiZjFmZThkMzQ5MDRkNGRjMTg5ZDcxZTZkODk3ODM0OTkiLCJ1c2VyX2lkIjoxfQ.1IeyAUreHqZ7bzjK4gAli6CzNSCJNCjBHbAFIksOpio','2021-05-27 14:22:51.560147','2021-05-28 14:22:51.000000',1,'f1fe8d34904d4dc189d71e6d89783499'),(24,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxMzAwMSwianRpIjoiYjc1ZjY2MGU3NDY1NGI3NDg3MWRiYTU3MGE1MWFkOGEiLCJ1c2VyX2lkIjoxfQ.JJMeYWFJoT1jpy7OV-YMOyhXrRBQpvSfhVUVS5xWazY','2021-05-27 14:43:21.733906','2021-05-28 14:43:21.000000',1,'b75f660e74654b74871dba570a51ad8a'),(25,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNDE3NywianRpIjoiNjI5NTc1Zjc1ZjJhNDYzODlmNjlhOWU3NjM5NTc4OWQiLCJ1c2VyX2lkIjoxfQ.s5NXo0ErKC0p74pl34YJ-GkN2TMNK3mANTB1kh5IUHQ','2021-05-27 15:02:57.043392','2021-05-28 15:02:57.000000',1,'629575f75f2a46389f69a9e76395789d'),(26,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNDE5NCwianRpIjoiZWQ0MTk1NDY1ZWYyNDg3NDhmNTE5MWNlYmRiYjUzYjIiLCJ1c2VyX2lkIjoxfQ.X_a4zpId0IppLEAa6QOehB_wg4T-tqiXKkenOy5FbtU','2021-05-27 15:03:14.363644','2021-05-28 15:03:14.000000',1,'ed4195465ef248748f5191cebdbb53b2'),(27,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNDgxMCwianRpIjoiNmIyYmYzNzEzNTIwNDUxNmI1ZmE3YTBhYjA5NzljMjYiLCJ1c2VyX2lkIjoxfQ._r1SszuPFXEZr4hCkkffUtaoP8Yht_ZwYP83xLwsTaI','2021-05-27 15:13:30.076259','2021-05-28 15:13:30.000000',1,'6b2bf37135204516b5fa7a0ab0979c26'),(28,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTM2NywianRpIjoiNDlkMzNiMjczMTUwNDIzOWI3NTIxYWFkZmRhM2I2YzgiLCJ1c2VyX2lkIjoxfQ.MIhg4JtgkDWPBdDSMkGg452x_64I9REK2z2_9nkjJjI','2021-05-27 15:22:47.960726','2021-05-28 15:22:47.000000',1,'49d33b2731504239b7521aadfda3b6c8'),(29,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTM5MCwianRpIjoiNmU4ZjMyMDYyZmQxNDg1ZGI3ZjFjMmIyZjQ4NThmYmIiLCJ1c2VyX2lkIjoxfQ.uzBnOwSeRLUTkmFkLU_Dyi6wKG4OH6JcxC59YINC528','2021-05-27 15:23:10.116281','2021-05-28 15:23:10.000000',1,'6e8f32062fd1485db7f1c2b2f4858fbb'),(30,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTQxOCwianRpIjoiZTBjOGE2MDg1OWVkNDg2M2EyMzA5MDJiYjE1YTFiMjgiLCJ1c2VyX2lkIjoxfQ.nLBtl7wqZ2oab5vfpa6VwwG4AhbUU2TC0b9zn8f084g','2021-05-27 15:23:38.983812','2021-05-28 15:23:38.000000',1,'e0c8a60859ed4863a230902bb15a1b28'),(31,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTY5NywianRpIjoiNGE1NGE2NWVkYjY1NDEyOWFlY2VmZjY1OWFiMzQwMTMiLCJ1c2VyX2lkIjoxfQ.IQPfoo8nIQGUv0CyV6d7xCA8STxcUfvT5g9vXDnf9ng','2021-05-27 15:28:17.982046','2021-05-28 15:28:17.000000',1,'4a54a65edb654129aeceff659ab34013'),(32,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTcxOSwianRpIjoiZjVhMTdlYjc3YTJlNDE1OTk4YTFmOGM5NWMzOTliZjMiLCJ1c2VyX2lkIjoxfQ.ZlN7fv12o7u6Yh0vZackAAJmw_OK1c895AFbTLY9bQI','2021-05-27 15:28:39.602844','2021-05-28 15:28:39.000000',1,'f5a17eb77a2e415998a1f8c95c399bf3'),(33,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTc5MiwianRpIjoiMjBkYzE0YWQyYjVhNDNiNzliYjNlYjZhMjQ0ZDRlOWYiLCJ1c2VyX2lkIjoxfQ.0DSu2edVr5e1sM7N9A5JHrIhoMbCsNwk25rQ3C4GGpw','2021-05-27 15:29:52.942411','2021-05-28 15:29:52.000000',1,'20dc14ad2b5a43b79bb3eb6a244d4e9f'),(34,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTg1OCwianRpIjoiNDgwMzRkYzJhNTQwNDA1ZGE0NzJhYmJhNTAxZDI5YTYiLCJ1c2VyX2lkIjoxfQ.IyPMIR1XvQ9PQnZD4Pgyjh6lvMgD9cNnE5ZucN3GM4U','2021-05-27 15:30:58.892252','2021-05-28 15:30:58.000000',1,'48034dc2a540405da472abba501d29a6'),(35,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTkzNSwianRpIjoiMmM1ZDcwNTY0MmM2NDYyMjk3MjBjMDYzNWZiMTZhZWYiLCJ1c2VyX2lkIjoxfQ.COqH6hfq7q5wwIOIUDTeik8r0q0t7YdSa_DzAcgMnxM','2021-05-27 15:32:15.746940','2021-05-28 15:32:15.000000',1,'2c5d705642c646229720c0635fb16aef'),(36,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNTk5NCwianRpIjoiYmNjZWJlNDA2MmU4NDQ1ZmJmZDgzMjRmZjI5ZWMwMmQiLCJ1c2VyX2lkIjoxfQ.7_6IUZ1S6OMaQmWZX7vJ_WrRP2EoFXcHMO3IwnQ4UPg','2021-05-27 15:33:14.366782','2021-05-28 15:33:14.000000',1,'bccebe4062e8445fbfd8324ff29ec02d'),(37,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNjQ0MCwianRpIjoiZmQyMmYzZDQ5NzA5NGQwY2I2ZTc1YWYyZGMyOWZhN2IiLCJ1c2VyX2lkIjoxfQ.ASpF04bhiHmIhg3yXK6BUb1hNLXP8DcE8Yf-znkO2Eg','2021-05-27 15:40:40.324348','2021-05-28 15:40:40.000000',1,'fd22f3d497094d0cb6e75af2dc29fa7b'),(38,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNjgxNywianRpIjoiNmE0ZGNlZGZmZDY3NDczNGI0ODY0ZWI2YTZkNDQ1OWIiLCJ1c2VyX2lkIjoxfQ.4Uc1XCaLkbpHXcAAami9zy0zIbvKhdh7J5ecp1NfPTg','2021-05-27 15:46:57.555068','2021-05-28 15:46:57.000000',1,'6a4dcedffd674734b4864eb6a6d4459b'),(39,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNjg0MSwianRpIjoiOGRjZTRhOWZlMTUzNDFkODlkOTQxMGE1ZWI4ODczOGEiLCJ1c2VyX2lkIjoxfQ.nZlEdtduAxDDtZwVEXdtq9p03cxqeh3oGOL44YP7hio','2021-05-27 15:47:21.611296','2021-05-28 15:47:21.000000',1,'8dce4a9fe15341d89d9410a5eb88738a'),(40,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNjg5OSwianRpIjoiYzc3NmE5MTk5MDMwNDFjYWFiZTVlOTAwMzg0NjVlYTkiLCJ1c2VyX2lkIjoxfQ.RysmTc5Wa3kUGa_A3aQUjuTY8dTxD0G2K3--7MgZEX4','2021-05-27 15:48:19.001474','2021-05-28 15:48:19.000000',1,'c776a919903041caabe5e90038465ea9'),(41,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNjkyNCwianRpIjoiZTA1ODliYzM5ZjI0NGU1ZjlhNWFkMGNjOGRkM2NmZjQiLCJ1c2VyX2lkIjoxfQ.y8gUSwNblCta9jDctKZOgHO1rHAVz1pVuUcQmmtvdBU','2021-05-27 15:48:44.108219','2021-05-28 15:48:44.000000',1,'e0589bc39f244e5f9a5ad0cc8dd3cff4'),(42,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNzE1NSwianRpIjoiZDI3NzEyOGFlNWUyNDU2NjgyNThhZjJhZTg2NDMyODIifQ.WwWS700m5qkmh0ZuDpQjmBiFrmTc22uhh2VOW2lgLQs',NULL,'2021-05-28 15:52:35.000000',NULL,'d277128ae5e245668258af2ae8643282'),(43,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNzE2MCwianRpIjoiNWMzNjY2ZDc1ZGUzNGM3YzhjOTNmY2NkMjBmYTZmYmEiLCJ1c2VyX2lkIjoxfQ.ZDF4lbZPZLIpfBNKNK3bto29fnS_4WmitTPm2wKlPlE','2021-05-27 15:52:40.539968','2021-05-28 15:52:40.000000',1,'5c3666d75de34c7c8c93fccd20fa6fba'),(44,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNzE5MywianRpIjoiMDQ1MjM0NmQ5NDEzNDlmZmI4MjY1MDE0OTUzNjRlZjUiLCJ1c2VyX2lkIjoxfQ.IKH-DnHOPG7OkRqPKZ4NymeNr8k9dTVfsdCpGX_rmMM','2021-05-27 15:53:13.219354','2021-05-28 15:53:13.000000',1,'0452346d941349ffb826501495364ef5'),(45,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNzIyMiwianRpIjoiYWM4NDVmZGMyYmUzNGExNGJmNzkzZWVkZWRhMWYwZWUiLCJ1c2VyX2lkIjoxfQ.vdtOCXKbxtpKh824Pc2xLtreEDafIHABfwLc2CGJKuw','2021-05-27 15:53:42.660341','2021-05-28 15:53:42.000000',1,'ac845fdc2be34a14bf793eededa1f0ee'),(46,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNzgxOCwianRpIjoiYTQ0ZDdkMTliYmVhNGZhODkwMTdjZDIxNGE5OGNhYmQiLCJ1c2VyX2lkIjoxfQ.ZAeH1v4DAdAOfadBCO24myIvMjuhzFHVRZUZUV0bPlQ','2021-05-27 16:03:38.274873','2021-05-28 16:03:38.000000',1,'a44d7d19bbea4fa89017cd214a98cabd'),(47,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxNzk5MSwianRpIjoiODg2NTIxNmQxYjBlNDlkOThjYzVjYWYyYzE5ODU2NDgiLCJ1c2VyX2lkIjoxfQ.7WSv7zx4ywg5cpW1kkVVGVmCLscRZP3-pCjUXK8yg30','2021-05-27 16:06:31.493800','2021-05-28 16:06:31.000000',1,'8865216d1b0e49d98cc5caf2c1985648'),(48,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxODA0NywianRpIjoiZWMzYzM1MGE3ODIzNGQ4Zjg5OTY3ZThjNjU3NTY5MTEiLCJ1c2VyX2lkIjoxfQ.GQM_0YhQsKvNz1MfH7Y0SAyMaQjRsLhSt-UmBNtlLwY','2021-05-27 16:07:27.895423','2021-05-28 16:07:27.000000',1,'ec3c350a78234d8f89967e8c65756911'),(49,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxODEyNSwianRpIjoiYTUxMGI2MjBlZDUwNDgxNjg0OGYxY2NjODI0ZDg5ZmUiLCJ1c2VyX2lkIjoxfQ.JN9RcR4ag6_ehnm20ofkFpuftKrAxOCOrCJEX5gZx-0','2021-05-27 16:08:45.243422','2021-05-28 16:08:45.000000',1,'a510b620ed504816848f1ccc824d89fe'),(50,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjIxOTU0OSwianRpIjoiZDExMmM0OTNmYjEwNDk3ODk3YjAyZTVkYjk4MWFlNjkiLCJ1c2VyX2lkIjoxfQ.nD9NO-txvM8D8cALP9zhjUgrCVRxLmps_3NA8Rl4Oec','2021-05-27 16:32:29.336791','2021-05-28 16:32:29.000000',1,'d112c493fb10497897b02e5db981ae69'),(51,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NDkyNSwianRpIjoiNDRiNmFlNTUzZDUyNDI1NDlmNWYyODdlMDZjMDBmNDMiLCJ1c2VyX2lkIjoxfQ.MlXvLpmzGV8ff8Vz5qb9ZwC0_nxAr1iXCQWwjLInm54','2021-05-28 07:55:25.887838','2021-05-29 07:55:25.000000',1,'44b6ae553d5242549f5f287e06c00f43'),(52,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTA2NiwianRpIjoiY2IyZTFmN2E5NjdkNGU2ZWJhZTc2OTViYTdhZDlmNmYiLCJ1c2VyX2lkIjoxfQ.pSuG7hj5jrlKezW_FmImeVrJD_F4bDvkocDic7TiRjw','2021-05-28 07:57:46.772189','2021-05-29 07:57:46.000000',1,'cb2e1f7a967d4e6ebae7695ba7ad9f6f'),(53,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTA4MSwianRpIjoiYmFiZWMwODYwZTZjNDFlODk0MDE2MDc2MzdkNGM2MTYiLCJ1c2VyX2lkIjoxfQ.T0heF3gEifHmcp1KPLDsXg2nKGqUHQnQeUlrXUUfX1g','2021-05-28 07:58:01.617636','2021-05-29 07:58:01.000000',1,'babec0860e6c41e89401607637d4c616'),(54,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTIxMSwianRpIjoiOTFmNWJjYzJiMjA2NDVjZTgzYTc4YTM5MjRmM2U2MDgiLCJ1c2VyX2lkIjoxfQ.jjRsO5HG3Bn8XfFfOSftdRu8UC8zq6SU6JroU4Wc94k','2021-05-28 08:00:11.329343','2021-05-29 08:00:11.000000',1,'91f5bcc2b20645ce83a78a3924f3e608'),(55,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTI0NSwianRpIjoiMGViZWQwMjZhNTZiNGY5Y2JjYjMwNmE3YzIwODVkNGYiLCJ1c2VyX2lkIjoxfQ.HlySYnpVQNnLw6KZ22KN6DFOYNVvVyyIL2izU4YkHiY','2021-05-28 08:00:45.780545','2021-05-29 08:00:45.000000',1,'0ebed026a56b4f9cbcb306a7c2085d4f'),(56,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTI3MCwianRpIjoiZjc4YjMzOTFmNmU4NDRlNzhkNTZiMjk2YWNkMzJkNTYiLCJ1c2VyX2lkIjoxfQ.ryw9492m3gR-jmGLZ2UYls8N_PFH0G3s38LZ2LnhcVw','2021-05-28 08:01:10.236767','2021-05-29 08:01:10.000000',1,'f78b3391f6e844e78d56b296acd32d56'),(57,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTM4MCwianRpIjoiMTYxMzRiYWFjMGVkNDM1ZGFiN2RmODllMGRiYTk1MzgiLCJ1c2VyX2lkIjoxfQ.7uoafuJDxwCIqqDfFm7IOXBJHB18V0e-vXPT5BHmENo','2021-05-28 08:03:00.713325','2021-05-29 08:03:00.000000',1,'16134baac0ed435dab7df89e0dba9538'),(58,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTYwNCwianRpIjoiNWM4MDM0MTI0ZjRkNGI4ZDlmNTBlMDk3MDg5MjY4ZjkiLCJ1c2VyX2lkIjoxfQ.PVrgGa05GP4IvMbm0e3UOQhpv4I-fUpM-Tm0hQjQMi0','2021-05-28 08:06:44.111097','2021-05-29 08:06:44.000000',1,'5c8034124f4d4b8d9f50e097089268f9'),(59,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTY2MywianRpIjoiOWMwNzA4NjQ1MTFiNDM0YmJjZDMxYzg4ZmIzMTg0Y2UiLCJ1c2VyX2lkIjoxfQ.Lf9zyn9UPdzny_CJvWKbP6KJwKxMYulEgf_z6N_Cf-I','2021-05-28 08:07:43.477300','2021-05-29 08:07:43.000000',1,'9c070864511b434bbcd31c88fb3184ce'),(60,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NTkzNywianRpIjoiZjA1ZjBmOGMzNThmNGFkOGE0OTUyZGRlMGI2YWY1ZjkiLCJ1c2VyX2lkIjoxfQ.gxk0ti1GrrBnmz5JH4oXd1zDD7ef-_JJqvu0jBIkgEM','2021-05-28 08:12:17.946045','2021-05-29 08:12:17.000000',1,'f05f0f8c358f4ad8a4952dde0b6af5f9'),(61,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NjI0OSwianRpIjoiOGQ4NTc0Y2ZmZTQ4NGViNGFiYTk5MzJhNjZjMWU1OTEiLCJ1c2VyX2lkIjoxfQ.c4GMvM5H6MzY0pARj7nZoa4d8uPQJzzc3LfrMXE7YmU','2021-05-28 08:17:29.024608','2021-05-29 08:17:29.000000',1,'8d8574cffe484eb4aba9932a66c1e591'),(62,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI3NjYxMCwianRpIjoiZTYyYmQ4ZTdhMzQxNGIzMmFiZTE0MDdiNmU0ZWVhNjYiLCJ1c2VyX2lkIjoxfQ.mEuZQNrybQyswEVEJohIZHs8yeqbIBlTSPA1TziJPSo','2021-05-28 08:23:30.270557','2021-05-29 08:23:30.000000',1,'e62bd8e7a3414b32abe1407b6e4eea66'),(63,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTA0MSwianRpIjoiNzUxNjUwNGQ2YzQ2NDM2ZGFiMmIyYjBmZWIzY2M3YTgifQ.iywQcDT4DZWnXYojFNfwge4tNfNx1qEtMjhKwQOAtNg',NULL,'2021-05-29 10:44:01.000000',NULL,'7516504d6c46436dab2b2b0feb3cc7a8'),(64,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTA0MSwianRpIjoiZjkyMDIzYTc0OGUzNGM0Mjk5OTM0ZGZlYmIzYjgxOTgifQ.ODwusKXkgstERUCSvRBr6jSLg6UeiqYADYzc1dhQikk',NULL,'2021-05-29 10:44:01.000000',NULL,'f92023a748e34c4299934dfebb3b8198'),(65,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTA0MSwianRpIjoiMjQ4ZDQ2OGY1NGVhNDJlMWJlN2UyYWEwNTA3ZjQ4MmIifQ.gvBBsKjUTo-TsJi1KWRec6pvmz40qhg62NA-JRVCWjw',NULL,'2021-05-29 10:44:01.000000',NULL,'248d468f54ea42e1be7e2aa0507f482b'),(66,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTI2MCwianRpIjoiNTFmM2U1NGYxOWQzNDI4ZmE4M2U2ZWYyYmJiMDA2NDIifQ.5N5nAtu92Pc4jtASN8CgjZwlLZpVsA4K1_Ptkd6y7kY',NULL,'2021-05-29 10:47:40.000000',NULL,'51f3e54f19d3428fa83e6ef2bbb00642'),(67,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTI2MCwianRpIjoiYzM0MWQ3YzUyNzBmNGNkMjg3MjJhZTBlMTJhMjQ3YWMifQ.RSWPQ9ckcN1UvXsQr_ZEHJLgyjH2KCNF1r13h-jNaqM',NULL,'2021-05-29 10:47:40.000000',NULL,'c341d7c5270f4cd28722ae0e12a247ac'),(68,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTI2MSwianRpIjoiOWYwMGFlY2U5NjU0NDkyYjgyNWNjYWFlMGZlOGRjNmQifQ.6EGeExPZe_bAEe5LwCSlWJuhRHmLp9n5f8CoHnQWuXM',NULL,'2021-05-29 10:47:41.000000',NULL,'9f00aece9654492b825ccaae0fe8dc6d'),(69,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NTYwNSwianRpIjoiMjI5ZmE1YTg5YTYyNGM2M2E1OTYwZTQyNmIwZDM2ZTMiLCJ1c2VyX2lkIjoxfQ.ZFFWVatQd0xD4oj5Sw_0GmROn-qxQd28RALuQ4MYH5g','2021-05-28 10:53:25.975426','2021-05-29 10:53:25.000000',1,'229fa5a89a624c63a5960e426b0d36e3'),(70,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NjI0OCwianRpIjoiZDhiYzkyZDM0OGUxNDllYTlhZDU4ODZkNjM3ODIwZTkiLCJ1c2VyX2lkIjoxfQ.fFG-FZZ1WBJX3nctyVjukhYxefQZwYC08mmyTrRvims','2021-05-28 11:04:08.949705','2021-05-29 11:04:08.000000',1,'d8bc92d348e149ea9ad5886d637820e9'),(71,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4Njk2MSwianRpIjoiYWZkNWUzZTQxNTU3NDczM2FmZTU5MWQxZTc0OTcwMTQiLCJ1c2VyX2lkIjoxfQ.iOaHcdOhp3xrwpeXFutQbWDuZ95iCTQybFcCT4739-4','2021-05-28 11:16:01.363592','2021-05-29 11:16:01.000000',1,'afd5e3e415574733afe591d1e7497014'),(72,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzAzNSwianRpIjoiYmIwNzlmZjdmZGE0NDA4NGE3ZDFhM2ZjOGNjOWFjODgiLCJ1c2VyX2lkIjoxfQ.xCQIjiRr4lf0VggNevA25Kx1-ftv8zqMBsgNXAJM-CI','2021-05-28 11:17:15.823080','2021-05-29 11:17:15.000000',1,'bb079ff7fda44084a7d1a3fc8cc9ac88'),(73,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzEyNCwianRpIjoiMjE5NmE2ZDI0MTJhNDcyNWEzZWE4ZTc1ZDUzOWYxY2IiLCJ1c2VyX2lkIjoxfQ.UNnNx0ptcVBtQUkfu_yJRq0lx2gT9RlojLzdhrG6Vbk','2021-05-28 11:18:44.193049','2021-05-29 11:18:44.000000',1,'2196a6d2412a4725a3ea8e75d539f1cb'),(74,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzE1NywianRpIjoiY2JhZWY1YzFhMDNhNDFlYThkMmQ4Mzc1Y2Q2ZDBhZmYiLCJ1c2VyX2lkIjoxfQ.ubF-fCEtJf_W9u1tH2E9nfWjPB0l0F2DzQS0E8JHXcg','2021-05-28 11:19:17.785087','2021-05-29 11:19:17.000000',1,'cbaef5c1a03a41ea8d2d8375cd6d0aff'),(75,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzI0MiwianRpIjoiMTY0YjEwMDM4ODg3NDFhNTk3ZDk5NGY3NTFlZTBmZjEiLCJ1c2VyX2lkIjoxfQ.WnCuyaGRmQyRnt6z78Xl39Ndeua05SNFiMgfsrfYeF8','2021-05-28 11:20:42.378160','2021-05-29 11:20:42.000000',1,'164b1003888741a597d994f751ee0ff1'),(76,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzI5OSwianRpIjoiNTFjY2UzNTBiYTRlNDk4ODk3MmEzMjBiMDI4NTgxZTkiLCJ1c2VyX2lkIjoxfQ.PViUWBF5r152PVmEjR4_GrF7CZlRA3IZT4x-eDneSdw','2021-05-28 11:21:39.983403','2021-05-29 11:21:39.000000',1,'51cce350ba4e4988972a320b028581e9'),(77,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzM1OCwianRpIjoiOWQ1YTliZTI3ZmE5NDZlZTllMzMwMjczYmUzOTI2OTUiLCJ1c2VyX2lkIjoxfQ.VxFkhS1Y3HMT5xc-SP5nmf26esFeEPwZXXbKNM0hF0s','2021-05-28 11:22:38.888031','2021-05-29 11:22:38.000000',1,'9d5a9be27fa946ee9e330273be392695'),(78,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjI4NzU0OCwianRpIjoiYmI3NDczNTViOTQxNDhiNGI1ZmQ3MWFjNDAyMjFjZmYiLCJ1c2VyX2lkIjoxfQ.iHRJFcCs5rA3wDBeaVwlzW5hfAoVABYl5MV4qm6jNJM','2021-05-28 11:25:48.600086','2021-05-29 11:25:48.000000',1,'bb747355b94148b4b5fd71ac40221cff'),(79,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1NzE0MywianRpIjoiZmRjY2I0M2EzZGI2NDZkMmJiZDJhYjRkZmE3YzZiOGQiLCJ1c2VyX2lkIjoxfQ.znwYedFkhlycPoKhpXUEHWZey1q9SLE_WI7UgcSDaJk','2021-05-29 06:45:43.258105','2021-05-30 06:45:43.000000',1,'fdccb43a3db646d2bbd2ab4dfa7c6b8d'),(80,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1NzE2MCwianRpIjoiZjkzNzI0MmEyYmM0NDg5MThiZTUyZWU1MjZmZTY0OTIiLCJ1c2VyX2lkIjoxfQ.x9XQaM51Waf1caJj2YW2-0Dx93dE2BQHE6PXVHokhtI','2021-05-29 06:46:00.040063','2021-05-30 06:46:00.000000',1,'f937242a2bc448918be52ee526fe6492'),(81,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1NzIzMiwianRpIjoiY2FkMjE3NGIxZDAyNDBjZmFiMDRjMWMwNTQ0MWJjMjYiLCJ1c2VyX2lkIjoxfQ.L26etw5IvuTBXt_0_fUWGBX6B49E-HDUMGjbaRqNKx8','2021-05-29 06:47:12.596866','2021-05-30 06:47:12.000000',1,'cad2174b1d0240cfab04c1c05441bc26'),(82,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1NzQwNSwianRpIjoiZmM3MjU3YzBkOGQzNDc4ZmI4YTUwYWZjOTIzNWIzNTMiLCJ1c2VyX2lkIjoxfQ.vqs_5Xtyo4mFQ7s-ABr7sYWS6HT5jdh8KfHYF5qUzIU','2021-05-29 06:50:05.255837','2021-05-30 06:50:05.000000',1,'fc7257c0d8d3478fb8a50afc9235b353'),(83,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1NzUwMiwianRpIjoiNjUxMDliMWYyN2M5NDVhY2IyZTM3YTVmNzllMmQyZTYiLCJ1c2VyX2lkIjoxfQ.IEwJELRhjh4H37kQikLm8VzFYfmbM5Q4hIGEJiI1cI4','2021-05-29 06:51:42.096231','2021-05-30 06:51:42.000000',1,'65109b1f27c945acb2e37a5f79e2d2e6'),(84,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1NzcxNCwianRpIjoiM2YxMmE0N2Y1YWM2NDcwMzg0ZGQ1YWE4MjMxZjk2OGEiLCJ1c2VyX2lkIjoxfQ.EWAkv_sQrjx5H18QgqHAMVTG8Uhx4m7Wd_Ga86teFPs','2021-05-29 06:55:14.595698','2021-05-30 06:55:14.000000',1,'3f12a47f5ac6470384dd5aa8231f968a'),(85,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1Nzc2MSwianRpIjoiODE2MTYxMGZjYzE3NDE4ZWI1ZDY1NWJhMmY4OTUyNTkiLCJ1c2VyX2lkIjoxfQ.9Ao3MRsUcJcZxVUq247Uhquz_GdyZscBnB8tJCosVXk','2021-05-29 06:56:01.736978','2021-05-30 06:56:01.000000',1,'8161610fcc17418eb5d655ba2f895259'),(86,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM1ODM5OCwianRpIjoiZThlOTJkZGFiMTg3NDBiNmFmZjNiNDYxZDQ5OThiZDgiLCJ1c2VyX2lkIjoxfQ.MEd41GYzXNe-djdodvze5t4eAL-76_xoFPNQL5oQgmI','2021-05-29 07:06:38.708435','2021-05-30 07:06:38.000000',1,'e8e92ddab18740b6aff3b461d4998bd8'),(87,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM2MjIwOSwianRpIjoiODdkNjcyNmMxMDNiNDE5MzhmYTY5ZDA0MzE4NDNkNjQiLCJ1c2VyX2lkIjoxfQ.K6vXnFWAwLXb4RFjHM5uC4HRjylnr1zzlIWNdi4muvo','2021-05-29 08:10:09.512956','2021-05-30 08:10:09.000000',1,'87d6726c103b41938fa69d0431843d64'),(88,'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTYyMjM4MzE4MSwianRpIjoiY2JhNmU2NjIyNzVhNDViMWI3MzRiZmZmN2I2Yjk2NDciLCJ1c2VyX2lkIjoxfQ.NwzBC4QyP4o7lTDfWqamfWkqxLsl3tq5lPHq9kK3JlM','2021-05-29 13:59:41.851280','2021-05-30 13:59:41.000000',1,'cba6e662275a45b1b734bfff7b6b9647');
/*!40000 ALTER TABLE `token_blacklist_outstandingtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_customuser`
--

DROP TABLE IF EXISTS `users_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_customuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_customuser`
--

LOCK TABLES `users_customuser` WRITE;
/*!40000 ALTER TABLE `users_customuser` DISABLE KEYS */;
INSERT INTO `users_customuser` VALUES (1,'pbkdf2_sha256$216000$61vNhz4QVHxG$tHu65zbJ14eZOCbAye+Icx8sedA2JQl01qKm9BPOULw=','2021-05-28 11:15:13.027570',1,1,1,'2021-05-26 09:43:37.631150','admin','butadpj@gmail.com','Paul John','Butad','2021-05-26 09:43:37.749150');
/*!40000 ALTER TABLE `users_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_customuser_groups`
--

DROP TABLE IF EXISTS `users_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_customuser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_customuser_groups_customuser_id_group_id_76b619e3_uniq` (`customuser_id`,`group_id`),
  KEY `users_customuser_groups_group_id_01390b14_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_customuser_gro_customuser_id_958147bf_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  CONSTRAINT `users_customuser_groups_group_id_01390b14_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_customuser_groups`
--

LOCK TABLES `users_customuser_groups` WRITE;
/*!40000 ALTER TABLE `users_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_customuser_user_permissions`
--

DROP TABLE IF EXISTS `users_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_customuser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq` (`customuser_id`,`permission_id`),
  KEY `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_customuser_use_customuser_id_5771478b_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  CONSTRAINT `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_customuser_user_permissions`
--

LOCK TABLES `users_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-29 22:39:52
