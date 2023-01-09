-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: ghost
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ghost`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ghost` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ghost`;

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actions` (
  `id` varchar(24) NOT NULL,
  `resource_id` varchar(24) DEFAULT NULL,
  `resource_type` varchar(50) NOT NULL,
  `actor_id` varchar(24) NOT NULL,
  `actor_type` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `context` text,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES ('63bc022d7b5ec6000134fab0','63bc022d7b5ec6000134faad','post','1','user','added','{\"type\":\"post\",\"primary_name\":\"Boas\"}','2023-01-09 12:01:49'),('63bc02327b5ec6000134fab4','63bc022d7b5ec6000134faad','post','1','user','edited','{\"type\":\"post\",\"primary_name\":\"Boas\"}','2023-01-09 12:01:54'),('63bc02427b5ec6000134fab5','63bc022d7b5ec6000134faad','post','1','user','edited','{\"type\":\"post\",\"primary_name\":\"Boas\"}','2023-01-09 12:02:10'),('63bc02477b5ec6000134fab8','63bc022d7b5ec6000134faad','post','1','user','edited','{\"type\":\"post\",\"primary_name\":\"Boas\"}','2023-01-09 12:02:15');
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `role_id` varchar(24) DEFAULT NULL,
  `integration_id` varchar(24) DEFAULT NULL,
  `user_id` varchar(24) DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `last_seen_version` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_keys_secret_unique` (`secret`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES ('63bb57d07b5ec6000134f91a','admin','3046a5a6a9af0919ec5bf80e5bffcb95bbd57312fd7a6cc3d9a833f008b80dd7','63bb57c67b5ec6000134f8a2','63bb57d07b5ec6000134f919',NULL,NULL,NULL,'2023-01-08 23:54:56','1','2023-01-08 23:54:56','1'),('63bb57d07b5ec6000134f91c','admin','6e034a23672a9f946f0bf52979b5255849601704ca109299f00c736fbe0e2a7d','63bb57c67b5ec6000134f8a3','63bb57d07b5ec6000134f91b',NULL,NULL,NULL,'2023-01-08 23:54:56','1','2023-01-08 23:54:56','1'),('63bb57d07b5ec6000134f91e','admin','23ccf5656d7f7a03578d0914ee938cce1c440de37d6b125c1fb0eb51e4629b5e','63bb57c67b5ec6000134f8a4','63bb57d07b5ec6000134f91d',NULL,NULL,NULL,'2023-01-08 23:54:57','1','2023-01-08 23:54:57','1'),('63bb57d07b5ec6000134f920','admin','13f21df47d0e032c35bac1df0ea238e1fce1209eb5526fd70dc13696db4db33f','63bb57c67b5ec6000134f8a5','63bb57d07b5ec6000134f91f',NULL,NULL,NULL,'2023-01-08 23:54:57','1','2023-01-08 23:54:57','1'),('63bb57d17b5ec6000134f922','content','6de9f2a2efd678151f7f1c261d',NULL,'63bb57d07b5ec6000134f921',NULL,NULL,NULL,'2023-01-08 23:54:57','1','2023-01-08 23:54:57','1');
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benefits` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `benefits_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brute`
--

DROP TABLE IF EXISTS `brute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brute` (
  `key` varchar(191) NOT NULL,
  `firstRequest` bigint NOT NULL,
  `lastRequest` bigint NOT NULL,
  `lifetime` bigint NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brute`
--

LOCK TABLES `brute` WRITE;
/*!40000 ALTER TABLE `brute` DISABLE KEYS */;
INSERT INTO `brute` VALUES ('hvHQzdmmd7KeUeJkBrPKwwBlrjIU22izZbO0oocC62k=',1673265366312,1673265663672,1673269263673,2),('ya2JKMo6VaYJdJlPA9Rkn+HOaWwNGzzD2l7A7C3WnYo=',1673265938504,1673265938504,1673269538506,1);
/*!40000 ALTER TABLE `brute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_likes`
--

DROP TABLE IF EXISTS `comment_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_likes` (
  `id` varchar(24) NOT NULL,
  `comment_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_likes_comment_id_foreign` (`comment_id`),
  KEY `comment_likes_member_id_foreign` (`member_id`),
  CONSTRAINT `comment_likes_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_likes_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_likes`
--

LOCK TABLES `comment_likes` WRITE;
/*!40000 ALTER TABLE `comment_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_reports`
--

DROP TABLE IF EXISTS `comment_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_reports` (
  `id` varchar(24) NOT NULL,
  `comment_id` varchar(24) NOT NULL,
  `member_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comment_reports_comment_id_foreign` (`comment_id`),
  KEY `comment_reports_member_id_foreign` (`member_id`),
  CONSTRAINT `comment_reports_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comment_reports_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_reports`
--

LOCK TABLES `comment_reports` WRITE;
/*!40000 ALTER TABLE `comment_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `member_id` varchar(24) DEFAULT NULL,
  `parent_id` varchar(24) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `html` longtext,
  `edited_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`),
  KEY `comments_member_id_foreign` (`member_id`),
  KEY `comments_parent_id_foreign` (`parent_id`),
  CONSTRAINT `comments_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE SET NULL,
  CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_theme_settings`
--

DROP TABLE IF EXISTS `custom_theme_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custom_theme_settings` (
  `id` varchar(24) NOT NULL,
  `theme` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL,
  `type` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_theme_settings`
--

LOCK TABLES `custom_theme_settings` WRITE;
/*!40000 ALTER TABLE `custom_theme_settings` DISABLE KEYS */;
INSERT INTO `custom_theme_settings` VALUES ('63bb57dd7b5ec6000134fa8f','casper','title_font','select','Modern sans-serif'),('63bb57dd7b5ec6000134fa90','casper','body_font','select','Elegant serif'),('63bb57dd7b5ec6000134fa91','casper','show_publication_cover','boolean','true'),('63bb57dd7b5ec6000134fa92','casper','header_style','select','Center aligned'),('63bb57dd7b5ec6000134fa93','casper','show_logo_in_navigation','boolean','false'),('63bb57dd7b5ec6000134fa94','casper','feed_layout','select','Classic'),('63bb57dd7b5ec6000134fa95','casper','color_scheme','select','Light'),('63bb57dd7b5ec6000134fa96','casper','post_image_style','select','Wide'),('63bb57dd7b5ec6000134fa97','casper','email_signup_text','text','Sign up for more like this.'),('63bb57dd7b5ec6000134fa98','casper','show_recent_posts_footer','boolean','true');
/*!40000 ALTER TABLE `custom_theme_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_batches`
--

DROP TABLE IF EXISTS `email_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_batches` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `member_segment` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_batches_email_id_foreign` (`email_id`),
  CONSTRAINT `email_batches_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_batches`
--

LOCK TABLES `email_batches` WRITE;
/*!40000 ALTER TABLE `email_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_recipients`
--

DROP TABLE IF EXISTS `email_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_recipients` (
  `id` varchar(24) NOT NULL,
  `email_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `batch_id` varchar(24) NOT NULL,
  `processed_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `opened_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `member_uuid` varchar(36) NOT NULL,
  `member_email` varchar(191) NOT NULL,
  `member_name` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_recipients_member_id_index` (`member_id`),
  KEY `email_recipients_batch_id_foreign` (`batch_id`),
  KEY `email_recipients_delivered_at_index` (`delivered_at`),
  KEY `email_recipients_opened_at_index` (`opened_at`),
  KEY `email_recipients_failed_at_index` (`failed_at`),
  KEY `email_recipients_email_id_member_email_index` (`email_id`,`member_email`),
  CONSTRAINT `email_recipients_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `email_batches` (`id`),
  CONSTRAINT `email_recipients_email_id_foreign` FOREIGN KEY (`email_id`) REFERENCES `emails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_recipients`
--

LOCK TABLES `email_recipients` WRITE;
/*!40000 ALTER TABLE `email_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emails` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `recipient_filter` text NOT NULL,
  `error` varchar(2000) DEFAULT NULL,
  `error_data` longtext,
  `email_count` int unsigned NOT NULL DEFAULT '0',
  `delivered_count` int unsigned NOT NULL DEFAULT '0',
  `opened_count` int unsigned NOT NULL DEFAULT '0',
  `failed_count` int unsigned NOT NULL DEFAULT '0',
  `subject` varchar(300) DEFAULT NULL,
  `from` varchar(2000) DEFAULT NULL,
  `reply_to` varchar(2000) DEFAULT NULL,
  `html` longtext,
  `plaintext` longtext,
  `track_opens` tinyint(1) NOT NULL DEFAULT '0',
  `submitted_at` datetime NOT NULL,
  `newsletter_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `emails_post_id_unique` (`post_id`),
  KEY `emails_post_id_index` (`post_id`),
  KEY `emails_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `emails_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrations`
--

DROP TABLE IF EXISTS `integrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrations` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'custom',
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `icon_image` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `integrations_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrations`
--

LOCK TABLES `integrations` WRITE;
/*!40000 ALTER TABLE `integrations` DISABLE KEYS */;
INSERT INTO `integrations` VALUES ('63bb57d07b5ec6000134f919','builtin','Zapier','zapier',NULL,'Built-in Zapier integration','2023-01-08 23:54:56','1','2023-01-08 23:54:56','1'),('63bb57d07b5ec6000134f91b','core','Ghost Explore','ghost-explore',NULL,'Built-in Ghost Explore integration','2023-01-08 23:54:56','1','2023-01-08 23:54:56','1'),('63bb57d07b5ec6000134f91d','internal','Ghost Backup','ghost-backup',NULL,'Internal DB Backup integration','2023-01-08 23:54:56','1','2023-01-08 23:54:56','1'),('63bb57d07b5ec6000134f91f','internal','Ghost Scheduler','ghost-scheduler',NULL,'Internal Scheduler integration','2023-01-08 23:54:56','1','2023-01-08 23:54:56','1'),('63bb57d07b5ec6000134f921','internal','Ghost Internal Frontend','ghost-internal-frontend',NULL,'Internal frontend integration','2023-01-08 23:54:56','1','2023-01-08 23:54:56','1');
/*!40000 ALTER TABLE `integrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invites`
--

DROP TABLE IF EXISTS `invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invites` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `token` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `expires` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `invites_token_unique` (`token`),
  UNIQUE KEY `invites_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invites`
--

LOCK TABLES `invites` WRITE;
/*!40000 ALTER TABLE `invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'queued',
  `started_at` datetime DEFAULT NULL,
  `finished_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES ('63bb57e47b5ec6000134fa99','members-migrations','finished','2023-01-08 23:55:16','2023-01-08 23:55:16','2023-01-08 23:55:16','2023-01-08 23:55:16');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labels`
--

DROP TABLE IF EXISTS `labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `labels` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `labels_name_unique` (`name`),
  UNIQUE KEY `labels_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labels`
--

LOCK TABLES `labels` WRITE;
/*!40000 ALTER TABLE `labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'free',
  `name` varchar(191) DEFAULT NULL,
  `expertise` varchar(191) DEFAULT NULL,
  `note` varchar(2000) DEFAULT NULL,
  `geolocation` varchar(2000) DEFAULT NULL,
  `enable_comment_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `email_count` int unsigned NOT NULL DEFAULT '0',
  `email_opened_count` int unsigned NOT NULL DEFAULT '0',
  `email_open_rate` int unsigned DEFAULT NULL,
  `last_seen_at` datetime DEFAULT NULL,
  `last_commented_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`),
  UNIQUE KEY `members_uuid_unique` (`uuid`),
  KEY `members_email_open_rate_index` (`email_open_rate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('63bbfff67b5ec6000134fa9b','411fcafd-2f9c-431f-9dd0-ed50116b1e62','teste@example.com','free','teste',NULL,NULL,NULL,1,0,0,NULL,'2023-01-09 11:52:24',NULL,'2023-01-09 11:52:22','63bbfff67b5ec6000134fa9b','2023-01-09 11:52:24','63bbfff67b5ec6000134fa9b');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_cancel_events`
--

DROP TABLE IF EXISTS `members_cancel_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_cancel_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `from_plan` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_cancel_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_cancel_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_cancel_events`
--

LOCK TABLES `members_cancel_events` WRITE;
/*!40000 ALTER TABLE `members_cancel_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_cancel_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_created_events`
--

DROP TABLE IF EXISTS `members_created_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_created_events` (
  `id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `attribution_id` varchar(24) DEFAULT NULL,
  `attribution_type` varchar(50) DEFAULT NULL,
  `attribution_url` varchar(2000) DEFAULT NULL,
  `source` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_created_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_created_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_created_events`
--

LOCK TABLES `members_created_events` WRITE;
/*!40000 ALTER TABLE `members_created_events` DISABLE KEYS */;
INSERT INTO `members_created_events` VALUES ('63bbfff67b5ec6000134fa9f','2023-01-09 11:52:22','63bbfff67b5ec6000134fa9b',NULL,NULL,NULL,'member');
/*!40000 ALTER TABLE `members_created_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_email_change_events`
--

DROP TABLE IF EXISTS `members_email_change_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_email_change_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `to_email` varchar(191) NOT NULL,
  `from_email` varchar(191) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_email_change_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_email_change_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_email_change_events`
--

LOCK TABLES `members_email_change_events` WRITE;
/*!40000 ALTER TABLE `members_email_change_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_email_change_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_labels`
--

DROP TABLE IF EXISTS `members_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_labels` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `label_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `members_labels_member_id_foreign` (`member_id`),
  KEY `members_labels_label_id_foreign` (`label_id`),
  CONSTRAINT `members_labels_label_id_foreign` FOREIGN KEY (`label_id`) REFERENCES `labels` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_labels_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_labels`
--

LOCK TABLES `members_labels` WRITE;
/*!40000 ALTER TABLE `members_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_login_events`
--

DROP TABLE IF EXISTS `members_login_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_login_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_login_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_login_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_login_events`
--

LOCK TABLES `members_login_events` WRITE;
/*!40000 ALTER TABLE `members_login_events` DISABLE KEYS */;
INSERT INTO `members_login_events` VALUES ('63bbfff87b5ec6000134faa0','63bbfff67b5ec6000134fa9b','2023-01-09 11:52:24'),('63bbfffc7b5ec6000134faa2','63bbfff67b5ec6000134fa9b','2023-01-09 11:52:28'),('63bc009b7b5ec6000134faa4','63bbfff67b5ec6000134fa9b','2023-01-09 11:55:07'),('63bc01f07b5ec6000134faaa','63bbfff67b5ec6000134fa9b','2023-01-09 12:00:48');
/*!40000 ALTER TABLE `members_login_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_newsletters`
--

DROP TABLE IF EXISTS `members_newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_newsletters` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `newsletter_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_newsletters_member_id_foreign` (`member_id`),
  KEY `members_newsletters_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `members_newsletters_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_newsletters_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_newsletters`
--

LOCK TABLES `members_newsletters` WRITE;
/*!40000 ALTER TABLE `members_newsletters` DISABLE KEYS */;
INSERT INTO `members_newsletters` VALUES ('63bbfff67b5ec6000134fa9c','63bbfff67b5ec6000134fa9b','63bb57c87b5ec6000134f8a9');
/*!40000 ALTER TABLE `members_newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_paid_subscription_events`
--

DROP TABLE IF EXISTS `members_paid_subscription_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_paid_subscription_events` (
  `id` varchar(24) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscription_id` varchar(24) DEFAULT NULL,
  `from_plan` varchar(255) DEFAULT NULL,
  `to_plan` varchar(255) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `source` varchar(50) NOT NULL,
  `mrr_delta` int NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_paid_subscription_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_paid_subscription_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_paid_subscription_events`
--

LOCK TABLES `members_paid_subscription_events` WRITE;
/*!40000 ALTER TABLE `members_paid_subscription_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_paid_subscription_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_payment_events`
--

DROP TABLE IF EXISTS `members_payment_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_payment_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `amount` int NOT NULL,
  `currency` varchar(191) NOT NULL,
  `source` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_payment_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_payment_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_payment_events`
--

LOCK TABLES `members_payment_events` WRITE;
/*!40000 ALTER TABLE `members_payment_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_payment_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_product_events`
--

DROP TABLE IF EXISTS `members_product_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_product_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_product_events_member_id_foreign` (`member_id`),
  KEY `members_product_events_product_id_foreign` (`product_id`),
  CONSTRAINT `members_product_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_product_events_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_product_events`
--

LOCK TABLES `members_product_events` WRITE;
/*!40000 ALTER TABLE `members_product_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_product_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_products`
--

DROP TABLE IF EXISTS `members_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_products` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `expiry_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_products_member_id_foreign` (`member_id`),
  KEY `members_products_product_id_foreign` (`product_id`),
  CONSTRAINT `members_products_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_products`
--

LOCK TABLES `members_products` WRITE;
/*!40000 ALTER TABLE `members_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_status_events`
--

DROP TABLE IF EXISTS `members_status_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_status_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `from_status` varchar(50) DEFAULT NULL,
  `to_status` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `members_status_events_member_id_foreign` (`member_id`),
  CONSTRAINT `members_status_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_status_events`
--

LOCK TABLES `members_status_events` WRITE;
/*!40000 ALTER TABLE `members_status_events` DISABLE KEYS */;
INSERT INTO `members_status_events` VALUES ('63bbfff67b5ec6000134fa9d','63bbfff67b5ec6000134fa9b',NULL,'free','2023-01-09 11:52:22');
/*!40000 ALTER TABLE `members_status_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_stripe_customers`
--

DROP TABLE IF EXISTS `members_stripe_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_stripe_customers` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_stripe_customers_customer_id_unique` (`customer_id`),
  KEY `members_stripe_customers_member_id_foreign` (`member_id`),
  CONSTRAINT `members_stripe_customers_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_stripe_customers`
--

LOCK TABLES `members_stripe_customers` WRITE;
/*!40000 ALTER TABLE `members_stripe_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_stripe_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_stripe_customers_subscriptions`
--

DROP TABLE IF EXISTS `members_stripe_customers_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_stripe_customers_subscriptions` (
  `id` varchar(24) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `subscription_id` varchar(255) NOT NULL,
  `stripe_price_id` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL,
  `cancel_at_period_end` tinyint(1) NOT NULL DEFAULT '0',
  `cancellation_reason` varchar(500) DEFAULT NULL,
  `current_period_end` datetime NOT NULL,
  `start_date` datetime NOT NULL,
  `default_payment_card_last4` varchar(4) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `mrr` int unsigned NOT NULL DEFAULT '0',
  `offer_id` varchar(24) DEFAULT NULL,
  `trial_start_at` datetime DEFAULT NULL,
  `trial_end_at` datetime DEFAULT NULL,
  `plan_id` varchar(255) NOT NULL,
  `plan_nickname` varchar(50) NOT NULL,
  `plan_interval` varchar(50) NOT NULL,
  `plan_amount` int NOT NULL,
  `plan_currency` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_stripe_customers_subscriptions_subscription_id_unique` (`subscription_id`),
  KEY `members_stripe_customers_subscriptions_customer_id_foreign` (`customer_id`),
  KEY `members_stripe_customers_subscriptions_stripe_price_id_index` (`stripe_price_id`),
  KEY `members_stripe_customers_subscriptions_offer_id_foreign` (`offer_id`),
  CONSTRAINT `members_stripe_customers_subscriptions_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `members_stripe_customers` (`customer_id`) ON DELETE CASCADE,
  CONSTRAINT `members_stripe_customers_subscriptions_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_stripe_customers_subscriptions`
--

LOCK TABLES `members_stripe_customers_subscriptions` WRITE;
/*!40000 ALTER TABLE `members_stripe_customers_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_stripe_customers_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_subscribe_events`
--

DROP TABLE IF EXISTS `members_subscribe_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_subscribe_events` (
  `id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscribed` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `newsletter_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_subscribe_events_member_id_foreign` (`member_id`),
  KEY `members_subscribe_events_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `members_subscribe_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_subscribe_events_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_subscribe_events`
--

LOCK TABLES `members_subscribe_events` WRITE;
/*!40000 ALTER TABLE `members_subscribe_events` DISABLE KEYS */;
INSERT INTO `members_subscribe_events` VALUES ('63bbfff67b5ec6000134fa9e','63bbfff67b5ec6000134fa9b',1,'2023-01-09 11:52:22','member','63bb57c87b5ec6000134f8a9');
/*!40000 ALTER TABLE `members_subscribe_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members_subscription_created_events`
--

DROP TABLE IF EXISTS `members_subscription_created_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members_subscription_created_events` (
  `id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscription_id` varchar(24) NOT NULL,
  `attribution_id` varchar(24) DEFAULT NULL,
  `attribution_type` varchar(50) DEFAULT NULL,
  `attribution_url` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `members_subscription_created_events_member_id_foreign` (`member_id`),
  KEY `members_subscription_created_events_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `members_subscription_created_events_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `members_subscription_created_events_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `members_stripe_customers_subscriptions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members_subscription_created_events`
--

LOCK TABLES `members_subscription_created_events` WRITE;
/*!40000 ALTER TABLE `members_subscription_created_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `members_subscription_created_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `version` varchar(70) NOT NULL,
  `currentVersion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `migrations_name_version_unique` (`name`,`version`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'1-create-tables.js','init','5.14'),(2,'2-create-fixtures.js','init','5.14'),(3,'01-final-v1.js','1.25','5.14'),(4,'02-noop.js','1.25','5.14'),(5,'01-final-v2.js','2.37','5.14'),(6,'01-final-v3.js','3.41','5.14'),(7,'01-update-mobiledoc.js','4.0','5.14'),(8,'02-add-status-column-to-members.js','4.0','5.14'),(9,'03-populate-status-column-for-members.js','4.0','5.14'),(10,'04-drop-apps-related-tables.js','4.0','5.14'),(11,'05-add-members-subscribe-events-table.js','4.0','5.14'),(12,'06-populate-members-subscribe-events-table.js','4.0','5.14'),(13,'07-alter-unique-constraint-for-posts-slug.js','4.0','5.14'),(14,'08-add-members-login-events-table.js','4.0','5.14'),(15,'09-add-members-email-change-events-table.js','4.0','5.14'),(16,'10-add-members-status-events-table.js','4.0','5.14'),(17,'11-add-members-paid-subscription-events-table.js','4.0','5.14'),(18,'12-delete-apps-related-settings-keys.js','4.0','5.14'),(19,'13-add-members-payment-events-table.js','4.0','5.14'),(20,'14-remove-orphaned-stripe-records.js','4.0','5.14'),(21,'15-add-frontmatter-column-to-meta.js','4.0','5.14'),(22,'16-refactor-slack-setting.js','4.0','5.14'),(23,'17-populate-members-status-events-table.js','4.0','5.14'),(24,'18-transform-urls-absolute-to-transform-ready.js','4.0','5.14'),(25,'19-remove-labs-members-setting.js','4.0','5.14'),(26,'20-refactor-unsplash-setting.js','4.0','5.14'),(27,'21-sanitize-email-batches-provider-id.js','4.0','5.14'),(28,'22-solve-orphaned-webhooks.js','4.0','5.14'),(29,'23-regenerate-posts-html.js','4.0','5.14'),(30,'24-add-missing-email-permissions.js','4.0','5.14'),(31,'25-populate-members-paid-subscription-events-table.js','4.0','5.14'),(32,'26-add-cascade-on-delete.js','4.0','5.14'),(33,'27-add-primary-key-brute-migrations-lock.js','4.0','5.14'),(34,'28-add-webhook-intergrations-foreign-key.js','4.0','5.14'),(35,'29-fix-foreign-key-for-members-stripe-customers-subscriptions.js','4.0','5.14'),(36,'30-set-default-accent-color.js','4.0','5.14'),(37,'01-fix-backup-content-permission-typo.js','4.1','5.14'),(38,'02-add-unique-constraint-for-member-stripe-tables.js','4.1','5.14'),(39,'01-fix-incorrect-mrr-delta-events.js','4.2','5.14'),(40,'01-add-products-table.js','4.3','5.14'),(41,'02-add-members-products-table.js','4.3','5.14'),(42,'03-add-default-product.js','4.3','5.14'),(43,'04-attach-members-to-product.js','4.3','5.14'),(44,'05-add-stripe-products-table.js','4.3','5.14'),(45,'06-add-stripe-prices-table.js','4.3','5.14'),(46,'07-add-products-permissions.js','4.3','5.14'),(47,'08-migrate-members-signup-setting.js','4.3','5.14'),(48,'09-add-price-id-column-to-subscriptions-table.js','4.3','5.14'),(49,'10-populate-stripe-price-id-in-subscriptions.js','4.3','5.14'),(50,'01-restore-free-members-signup-setting-from-backup.js','4.4','5.14'),(51,'02-migrate-members-signup-access.js','4.4','5.14'),(52,'01-add-stripe-price-description-column.js','4.5','5.14'),(53,'02-add-product-description-column.js','4.5','5.14'),(54,'03-give-label-read-permissions-to-editors.js','4.5','5.14'),(55,'04-remove-unique-constraint-from-product-name.js','4.5','5.14'),(56,'05-rename-default-product-to-site-title.js','4.5','5.14'),(57,'01-remove-comped-status.js','4.6','5.14'),(58,'01-add-monthly-price-column-to-products.js','4.7','5.14'),(59,'02-add-yearly-price-column-to-products.js','4.7','5.14'),(60,'03-add-labs-setting.js','4.7','5.14'),(61,'01-add-feature-image-alt-column-to-posts-meta.js','4.8','5.14'),(62,'02-add-feature-image-caption-column-to-posts-meta.js','4.8','5.14'),(63,'03-add-default-product-portal-products.js','4.8','5.14'),(64,'04-migrate-show-newsletter-header-setting.js','4.8','5.14'),(65,'01-add-reset-all-passwords-permission.js','4.9','5.14'),(66,'02-add-benefits-table.js','4.9','5.14'),(67,'03-add-products-benefits-table.js','4.9','5.14'),(68,'04-add-member-segment-to-email-batches.js','4.9','5.14'),(69,'05-fix-missed-mobiledoc-url-transforms.js','4.9','5.14'),(70,'06-add-comped-status.js','4.9','5.14'),(71,'07-update-comped-members-status-events.js','4.9','5.14'),(72,'01-add-oauth-user-data.js','4.11','5.14'),(73,'02-add-email-verification-required-setting.js','4.11','5.14'),(74,'01-add-email-only-column-to-posts-meta-table.js','4.12','5.14'),(75,'02-fix-member-statuses.js','4.12','5.14'),(76,'01-add-members-stripe-connect-auth-permission-to-administrators.js','4.13','5.14'),(77,'02-add-members-products-events-table.js','4.13','5.14'),(78,'01-fix-comped-member-statuses.js','4.14','5.14'),(79,'02-fix-free-members-status-events.js','4.14','5.14'),(80,'01-add-temp-members-analytic-events-table.js','4.15','5.14'),(81,'01-add-custom-theme-settings-table.js','4.16','5.14'),(82,'01-add-custom-theme-settings-permissions.js','4.17','5.14'),(83,'02-add-offers-table.js','4.17','5.14'),(84,'03-add-offers-permissions.js','4.17','5.14'),(85,'01-add-active-column-to-offers.js','4.19','5.14'),(86,'02-add-offer-redemptions-table.js','4.19','5.14'),(87,'01-remove-offer-redemptions-table.js','4.20','5.14'),(88,'02-remove-offers-table.js','4.20','5.14'),(89,'03-add-offers-table.js','4.20','5.14'),(90,'04-add-offer-redemptions-table.js','4.20','5.14'),(91,'05-remove-not-null-constraint-from-portal-title.js','4.20','5.14'),(92,'01-add-is-launch-complete-setting.js','4.22','5.14'),(93,'02-update-launch-complete-setting-from-user-data.js','4.22','5.14'),(94,'01-truncate-offer-names.js','4.23','5.14'),(95,'2022-01-14-11-50-add-type-column-to-products.js','4.33','5.14'),(96,'2022-01-14-11-51-add-default-free-tier.js','4.33','5.14'),(97,'2022-01-18-09-07-remove-duplicate-offer-redemptions.js','4.33','5.14'),(98,'2022-01-19-10-43-add-active-column-to-products-table.js','4.33','5.14'),(99,'2022-01-25-13-53-add-welcome-page-url-column-to-products.js','4.34','5.14'),(100,'2022-01-20-05-55-add-post-products-table.js','4.35','5.14'),(101,'2022-01-30-15-17-set-welcome-page-url-from-settings.js','4.35','5.14'),(102,'2022-02-01-11-48-update-email-recipient-filter-column-type.js','4.35','5.14'),(103,'2022-02-01-12-03-update-recipient-filter-column-type.js','4.35','5.14'),(104,'2022-02-02-10-38-add-default-content-visibility-tiers-setting.js','4.35','5.14'),(105,'2022-02-02-13-10-transform-specific-tiers-default-content-visibility.js','4.35','5.14'),(106,'2022-02-04-04-34-populate-empty-portal-products.js','4.35','5.14'),(107,'2022-02-07-14-34-add-last-seen-at-column-to-members.js','4.36','5.14'),(108,'2022-02-21-09-53-backfill-members-last-seen-at-column.js','4.37','5.14'),(109,'2022-03-01-08-46-add-visibility-to-tiers.js','4.38','5.14'),(110,'2022-03-03-16-12-add-visibility-to-tiers.js','4.38','5.14'),(111,'2022-03-03-16-17-drop-tiers-visible-column.js','4.38','5.14'),(112,'2022-03-07-10-57-update-free-products-visibility-column.js','4.39','5.14'),(113,'2022-03-07-10-57-update-products-visibility-column.js','4.39','5.14'),(114,'2022-03-07-14-37-add-members-cancel-events-table.js','4.40','5.14'),(115,'2022-03-15-06-40-add-offers-admin-integration-permission-roles.js','4.40','5.14'),(116,'2022-03-15-06-40-add-tiers-admin-integration-permission-roles.js','4.40','5.14'),(117,'2022-03-21-17-17-add.js','4.42','5.14'),(118,'2022-03-30-15-44-add-newsletter-permissions.js','4.42','5.14'),(119,'2022-03-28-19-26-recreate-newsletter-table.js','4.43','5.14'),(120,'2022-03-29-14-45-add-members-newsletters-table.js','4.43','5.14'),(121,'2022-04-01-10-13-add-post-newsletter-relation.js','4.43','5.14'),(122,'2022-04-06-09-47-add-type-column-to-paid-subscription-events.js','4.43','5.14'),(123,'2022-04-06-14-56-add-email-newsletter-relation.js','4.43','5.14'),(124,'2022-04-08-10-45-add-subscription-id-to-mrr-events.js','4.43','5.14'),(125,'2022-04-06-15-22-populate-type-column-for-paid-subscription-events.js','4.44','5.14'),(126,'2022-04-08-11-54-add-cancelled-events.js','4.44','5.14'),(127,'2022-04-11-08-24-add-newsletter-permissions.js','4.44','5.14'),(128,'2022-04-11-10-54-add-mrr-to-subscriptions.js','4.44','5.14'),(129,'2022-04-12-07-33-fill-mrr.js','4.44','5.14'),(130,'2022-04-13-12-00-remove-newsletter-sender-name-not-null-constraint.js','4.44','5.14'),(131,'2022-04-15-07-53-add-offer-id-to-subscriptions.js','4.44','5.14'),(132,'2022-04-19-12-23-backfill-subscriptions-offers.js','4.45','5.14'),(133,'2022-04-20-11-25-add-newsletter-read-permission.js','4.45','5.14'),(134,'2022-04-21-02-55-add-notifications-key-entry-to-settings-table.js','4.45','5.14'),(135,'2022-04-13-12-00-add-created-at-newsletters.js','4.46','5.14'),(136,'2022-04-13-12-01-add-updated-at-newsletters.js','4.46','5.14'),(137,'2022-04-13-12-02-fill-created-at-newsletters.js','4.46','5.14'),(138,'2022-04-13-12-03-drop-nullable-created-at-newsletters.js','4.46','5.14'),(139,'2022-04-13-12-08-newsletters-show-header-name.js','4.46','5.14'),(140,'2022-04-13-12-57-add-uuid-column-to-newsletters.js','4.46','5.14'),(141,'2022-04-13-12-58-fill-uuid-for-newsletters.js','4.46','5.14'),(142,'2022-04-13-12-59-drop-nullable-uuid-newsletters.js','4.46','5.14'),(143,'2022-04-13-13-00-add-default-newsletter.js','4.46','5.14'),(144,'2022-04-20-08-39-map-subscribers-to-default-newsletter.js','4.46','5.14'),(145,'2022-04-22-07-43-add-newsletter-id-to-subscribe-events.js','4.46','5.14'),(146,'2022-04-27-07-59-set-newsletter-id-subscribe-events.js','4.46','5.14'),(147,'2022-05-03-15-30-update-newsletter-sending-options.js','4.47','5.14'),(148,'2022-05-04-10-03-transform-newsletter-header-image.js','4.47','5.14'),(149,'2022-03-14-12-33-delete-duplicate-offer-redemptions.js','5.0','5.14'),(150,'2022-03-28-15-25-backfill-mrr-adjustments-for-offers.js','5.0','5.14'),(151,'2022-04-25-10-32-backfill-mrr-for-discounted-subscriptions.js','5.0','5.14'),(152,'2022-04-26-15-44-backfill-mrr-events-for-canceled-subscriptions.js','5.0','5.14'),(153,'2022-04-27-11-26-backfill-mrr-for-canceled-subscriptions.js','5.0','5.14'),(154,'2022-04-28-03-26-remove-author-id-column-from-posts-table.js','5.0','5.14'),(155,'2022-05-03-09-39-drop-nullable-subscribe-event-newsletter-id.js','5.0','5.14'),(156,'2022-05-04-15-24-map-existing-emails-to-default-newsletter.js','5.0','5.14'),(157,'2022-05-05-13-13-migrate-legacy-recipient-filters.js','5.0','5.14'),(158,'2022-05-05-13-29-add-newsletters-admin-integration-permission-roles.js','5.0','5.14'),(159,'2022-05-05-15-17-drop-oauth-table.js','5.0','5.14'),(160,'2022-05-06-08-16-cleanup-client-subscriber-permissions.js','5.0','5.14'),(161,'2022-05-06-13-22-add-frontend-integration.js','5.0','5.14'),(162,'2022-05-09-10-00-drop-members-subscribed-column.js','5.0','5.14'),(163,'2022-05-09-14-17-cleanup-invalid-users-status.js','5.0','5.14'),(164,'2022-05-10-08-33-drop-members-analytics-table.js','5.0','5.14'),(165,'2022-05-10-14-57-cleanup-invalid-posts-status.js','5.0','5.14'),(166,'2022-05-11-12-08-drop-webhooks-status-column.js','5.0','5.14'),(167,'2022-05-11-13-12-rename-settings.js','5.0','5.14'),(168,'2022-05-11-16-36-remove-unused-settings.js','5.0','5.14'),(169,'2022-05-12-10-29-add-newsletter-permissions-for-editors-and-authors.js','5.0','5.14'),(170,'2022-05-12-13-51-add-label-permissions-for-authors.js','5.0','5.14'),(171,'2022-05-13-11-38-drop-none-email-recipient-filter.js','5.0','5.14'),(172,'2022-05-21-00-00-regenerate-posts-html.js','5.0','5.14'),(173,'2022-07-04-13-49-add-comments-table.js','5.3','5.14'),(174,'2022-07-05-09-36-add-comments-likes-table.js','5.3','5.14'),(175,'2022-07-05-09-47-add-comments-reports-table.js','5.3','5.14'),(176,'2022-07-05-10-00-add-comment-related-fields-to-members.js','5.3','5.14'),(177,'2022-07-05-12-55-add-comments-crud-permissions.js','5.3','5.14'),(178,'2022-07-05-15-35-add-comment-notifications-field-to-users-table.js','5.3','5.14'),(179,'2022-07-06-07-26-add-comments-enabled-setting.js','5.3','5.14'),(180,'2022-07-06-07-58-add-ghost-explore-integration-role.js','5.3','5.14'),(181,'2022-07-06-09-13-add-ghost-explore-integration-role-permissions.js','5.3','5.14'),(182,'2022-07-06-09-17-add-ghost-explore-integration.js','5.3','5.14'),(183,'2022-07-06-09-26-add-ghost-explore-integration-api-key.js','5.3','5.14'),(184,'2022-07-18-14-29-add-comment-reporting-permissions.js','5.5','5.14'),(185,'2022-07-18-14-31-drop-reports-reason.js','5.5','5.14'),(186,'2022-07-18-14-32-drop-nullable-member-id-from-likes.js','5.5','5.14'),(187,'2022-07-18-14-33-fix-comments-on-delete-foreign-keys.js','5.5','5.14'),(188,'2022-07-21-08-56-add-jobs-table.js','5.5','5.14'),(189,'2022-07-27-13-40-change-explore-type.js','5.6','5.14'),(190,'2022-08-02-06-09-add-trial-period-days-column-to-tiers.js','5.8','5.14'),(191,'2022-08-03-15-28-add-trial-start-column-to-stripe-subscriptions.js','5.8','5.14'),(192,'2022-08-03-15-29-add-trial-end-column-to-stripe-subscriptions.js','5.8','5.14'),(193,'2022-08-09-08-32-added-new-integration-type.js','5.9','5.14'),(194,'2022-08-15-05-34-add-expiry-at-column-to-members-products.js','5.10','5.14'),(195,'2022-08-16-14-25-add-member-created-events-table.js','5.10','5.14'),(196,'2022-08-16-14-25-add-subscription-created-events-table.js','5.10','5.14'),(197,'2022-08-19-14-15-fix-comments-deletion-strategy.js','5.10','5.14'),(198,'2022-08-22-11-03-add-member-alert-settings-columns-to-users.js','5.11','5.14'),(199,'2022-08-23-13-41-backfill-members-created-events.js','5.11','5.14'),(200,'2022-08-23-13-59-fix-page-resource-type.js','5.11','5.14'),(201,'2022-09-02-12-55-rename-members-bio-to-expertise.js','5.14','5.14');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations_lock`
--

DROP TABLE IF EXISTS `migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations_lock` (
  `lock_key` varchar(191) NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `acquired_at` datetime DEFAULT NULL,
  `released_at` datetime DEFAULT NULL,
  PRIMARY KEY (`lock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations_lock`
--

LOCK TABLES `migrations_lock` WRITE;
/*!40000 ALTER TABLE `migrations_lock` DISABLE KEYS */;
INSERT INTO `migrations_lock` VALUES ('km01',0,'2023-01-08 23:54:21','2023-01-08 23:55:00');
/*!40000 ALTER TABLE `migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobiledoc_revisions`
--

DROP TABLE IF EXISTS `mobiledoc_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobiledoc_revisions` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `mobiledoc` longtext,
  `created_at_ts` bigint NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobiledoc_revisions_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobiledoc_revisions`
--

LOCK TABLES `mobiledoc_revisions` WRITE;
/*!40000 ALTER TABLE `mobiledoc_revisions` DISABLE KEYS */;
INSERT INTO `mobiledoc_revisions` VALUES ('63bc022d7b5ec6000134faaf','63bc022d7b5ec6000134faad','{\"version\":\"0.3.1\",\"ghostVersion\":\"4.0\",\"markups\":[],\"atoms\":[],\"cards\":[],\"sections\":[[1,\"p\",[[0,[],0,\"\"]]]]}',1673265709382,'2023-01-09 12:01:49'),('63bc02327b5ec6000134fab3','63bc022d7b5ec6000134faad','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Podem comentar\"]]]],\"ghostVersion\":\"4.0\"}',1673265714760,'2023-01-09 12:01:54');
/*!40000 ALTER TABLE `mobiledoc_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `sender_name` varchar(191) DEFAULT NULL,
  `sender_email` varchar(191) DEFAULT NULL,
  `sender_reply_to` varchar(191) NOT NULL DEFAULT 'newsletter',
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `visibility` varchar(50) NOT NULL DEFAULT 'members',
  `subscribe_on_signup` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  `header_image` varchar(2000) DEFAULT NULL,
  `show_header_icon` tinyint(1) NOT NULL DEFAULT '1',
  `show_header_title` tinyint(1) NOT NULL DEFAULT '1',
  `title_font_category` varchar(191) NOT NULL DEFAULT 'sans_serif',
  `title_alignment` varchar(191) NOT NULL DEFAULT 'center',
  `show_feature_image` tinyint(1) NOT NULL DEFAULT '1',
  `body_font_category` varchar(191) NOT NULL DEFAULT 'sans_serif',
  `footer_content` text,
  `show_badge` tinyint(1) NOT NULL DEFAULT '1',
  `show_header_name` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `newsletters_uuid_unique` (`uuid`),
  UNIQUE KEY `newsletters_name_unique` (`name`),
  UNIQUE KEY `newsletters_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
INSERT INTO `newsletters` VALUES ('63bb57c87b5ec6000134f8a9','76df1630-6825-473a-bedd-b22d6aaf691f','Default Newsletter',NULL,'default-newsletter',NULL,NULL,'newsletter','active','members',1,0,NULL,1,1,'sans_serif','center',1,'sans_serif',NULL,1,0,'2023-01-08 23:54:48','2023-01-08 23:54:48');
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_redemptions`
--

DROP TABLE IF EXISTS `offer_redemptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer_redemptions` (
  `id` varchar(24) NOT NULL,
  `offer_id` varchar(24) NOT NULL,
  `member_id` varchar(24) NOT NULL,
  `subscription_id` varchar(24) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `offer_redemptions_offer_id_foreign` (`offer_id`),
  KEY `offer_redemptions_member_id_foreign` (`member_id`),
  KEY `offer_redemptions_subscription_id_foreign` (`subscription_id`),
  CONSTRAINT `offer_redemptions_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offer_redemptions_offer_id_foreign` FOREIGN KEY (`offer_id`) REFERENCES `offers` (`id`) ON DELETE CASCADE,
  CONSTRAINT `offer_redemptions_subscription_id_foreign` FOREIGN KEY (`subscription_id`) REFERENCES `members_stripe_customers_subscriptions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_redemptions`
--

LOCK TABLES `offer_redemptions` WRITE;
/*!40000 ALTER TABLE `offer_redemptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `offer_redemptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offers` (
  `id` varchar(24) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(191) NOT NULL,
  `code` varchar(191) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `stripe_coupon_id` varchar(255) DEFAULT NULL,
  `interval` varchar(50) NOT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `discount_type` varchar(50) NOT NULL,
  `discount_amount` int NOT NULL,
  `duration` varchar(50) NOT NULL,
  `duration_in_months` int DEFAULT NULL,
  `portal_title` varchar(191) DEFAULT NULL,
  `portal_description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `offers_name_unique` (`name`),
  UNIQUE KEY `offers_code_unique` (`code`),
  UNIQUE KEY `offers_stripe_coupon_id_unique` (`stripe_coupon_id`),
  KEY `offers_product_id_foreign` (`product_id`),
  CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `action_type` varchar(50) NOT NULL,
  `object_id` varchar(24) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES ('63bb57c87b5ec6000134f8ab','Read explore data','explore','read',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8ac','Export database','db','exportContent',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8ad','Import database','db','importContent',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8ae','Delete all content','db','deleteAllContent',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8af','Send mail','mail','send',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b0','Browse notifications','notification','browse',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b1','Add notifications','notification','add',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b2','Delete notifications','notification','destroy',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b3','Browse posts','post','browse',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b4','Read posts','post','read',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b5','Edit posts','post','edit',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b6','Add posts','post','add',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b7','Delete posts','post','destroy',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b8','Browse settings','setting','browse',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8b9','Read settings','setting','read',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8ba','Edit settings','setting','edit',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8bb','Generate slugs','slug','generate',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8bc','Browse tags','tag','browse',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8bd','Read tags','tag','read',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8be','Edit tags','tag','edit',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8bf','Add tags','tag','add',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8c0','Delete tags','tag','destroy',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8c1','Browse themes','theme','browse',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8c2','Edit themes','theme','edit',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8c3','Activate themes','theme','activate',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8c4','Upload themes','theme','add',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c87b5ec6000134f8c5','Download themes','theme','read',NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1'),('63bb57c97b5ec6000134f8c6','Delete themes','theme','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8c7','Browse users','user','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8c8','Read users','user','read',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8c9','Edit users','user','edit',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8ca','Add users','user','add',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8cb','Delete users','user','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8cc','Assign a role','role','assign',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8cd','Browse roles','role','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8ce','Browse invites','invite','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8cf','Read invites','invite','read',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d0','Edit invites','invite','edit',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d1','Add invites','invite','add',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d2','Delete invites','invite','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d3','Download redirects','redirect','download',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d4','Upload redirects','redirect','upload',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d5','Add webhooks','webhook','add',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d6','Edit webhooks','webhook','edit',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d7','Delete webhooks','webhook','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d8','Browse integrations','integration','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8d9','Read integrations','integration','read',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8da','Edit integrations','integration','edit',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8db','Add integrations','integration','add',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8dc','Delete integrations','integration','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8dd','Browse API keys','api_key','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8de','Read API keys','api_key','read',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8df','Edit API keys','api_key','edit',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e0','Add API keys','api_key','add',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e1','Delete API keys','api_key','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e2','Browse Actions','action','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e3','Browse Members','member','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e4','Read Members','member','read',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e5','Edit Members','member','edit',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e6','Add Members','member','add',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e7','Delete Members','member','destroy',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57c97b5ec6000134f8e8','Browse Products','product','browse',NULL,'2023-01-08 23:54:49','1','2023-01-08 23:54:49','1'),('63bb57ca7b5ec6000134f8e9','Read Products','product','read',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8ea','Edit Products','product','edit',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8eb','Add Products','product','add',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8ec','Delete Products','product','destroy',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8ed','Publish posts','post','publish',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8ee','Backup database','db','backupContent',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8ef','Email preview','email_preview','read',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f0','Send test email','email_preview','sendTestEmail',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f1','Browse emails','email','browse',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f2','Read emails','email','read',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f3','Retry emails','email','retry',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f4','Browse labels','label','browse',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f5','Read labels','label','read',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f6','Edit labels','label','edit',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f7','Add labels','label','add',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f8','Delete labels','label','destroy',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8f9','Read member signin urls','member_signin_url','read',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8fa','Read identities','identity','read',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57ca7b5ec6000134f8fb','Auth Stripe Connect for Members','members_stripe_connect','auth',NULL,'2023-01-08 23:54:50','1','2023-01-08 23:54:50','1'),('63bb57cb7b5ec6000134f8fc','Browse snippets','snippet','browse',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f8fd','Read snippets','snippet','read',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f8fe','Edit snippets','snippet','edit',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f8ff','Add snippets','snippet','add',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f900','Delete snippets','snippet','destroy',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f901','Browse offers','offer','browse',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f902','Read offers','offer','read',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f903','Edit offers','offer','edit',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f904','Add offers','offer','add',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cb7b5ec6000134f905','Reset all passwords','authentication','resetAllPasswords',NULL,'2023-01-08 23:54:51','1','2023-01-08 23:54:51','1'),('63bb57cc7b5ec6000134f906','Browse custom theme settings','custom_theme_setting','browse',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f907','Edit custom theme settings','custom_theme_setting','edit',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f908','Browse newsletters','newsletter','browse',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f909','Read newsletters','newsletter','read',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f90a','Add newsletters','newsletter','add',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f90b','Edit newsletters','newsletter','edit',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f90c','Browse comments','comment','browse',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f90d','Read comments','comment','read',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f90e','Edit comments','comment','edit',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f90f','Add comments','comment','add',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f910','Delete comments','comment','destroy',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f911','Moderate comments','comment','moderate',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f912','Like comments','comment','like',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f913','Unlike comments','comment','unlike',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1'),('63bb57cc7b5ec6000134f914','Report comments','comment','report',NULL,'2023-01-08 23:54:52','1','2023-01-08 23:54:52','1');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_roles`
--

DROP TABLE IF EXISTS `permissions_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_roles` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_roles`
--

LOCK TABLES `permissions_roles` WRITE;
/*!40000 ALTER TABLE `permissions_roles` DISABLE KEYS */;
INSERT INTO `permissions_roles` VALUES ('63bb57d17b5ec6000134f923','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8ac'),('63bb57d17b5ec6000134f924','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8ad'),('63bb57d17b5ec6000134f925','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8ae'),('63bb57d17b5ec6000134f926','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8ee'),('63bb57d17b5ec6000134f927','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8af'),('63bb57d17b5ec6000134f928','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b0'),('63bb57d17b5ec6000134f929','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b1'),('63bb57d17b5ec6000134f92a','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b2'),('63bb57d17b5ec6000134f92b','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b3'),('63bb57d17b5ec6000134f92c','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b4'),('63bb57d17b5ec6000134f92d','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b5'),('63bb57d17b5ec6000134f92e','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b6'),('63bb57d17b5ec6000134f92f','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b7'),('63bb57d17b5ec6000134f930','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8ed'),('63bb57d17b5ec6000134f931','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b8'),('63bb57d17b5ec6000134f932','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8b9'),('63bb57d17b5ec6000134f933','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8ba'),('63bb57d17b5ec6000134f934','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8bb'),('63bb57d17b5ec6000134f935','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8bc'),('63bb57d17b5ec6000134f936','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8bd'),('63bb57d17b5ec6000134f937','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8be'),('63bb57d17b5ec6000134f938','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8bf'),('63bb57d17b5ec6000134f939','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8c0'),('63bb57d17b5ec6000134f93a','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8c1'),('63bb57d17b5ec6000134f93b','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8c2'),('63bb57d17b5ec6000134f93c','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8c3'),('63bb57d17b5ec6000134f93d','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8c4'),('63bb57d17b5ec6000134f93e','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8c5'),('63bb57d17b5ec6000134f93f','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8c6'),('63bb57d27b5ec6000134f940','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8c7'),('63bb57d27b5ec6000134f941','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8c8'),('63bb57d27b5ec6000134f942','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8c9'),('63bb57d27b5ec6000134f943','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8ca'),('63bb57d27b5ec6000134f944','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8cb'),('63bb57d27b5ec6000134f945','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8cc'),('63bb57d27b5ec6000134f946','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8cd'),('63bb57d27b5ec6000134f947','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8ce'),('63bb57d27b5ec6000134f948','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8cf'),('63bb57d27b5ec6000134f949','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d0'),('63bb57d27b5ec6000134f94a','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d1'),('63bb57d27b5ec6000134f94b','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d2'),('63bb57d27b5ec6000134f94c','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d3'),('63bb57d27b5ec6000134f94d','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d4'),('63bb57d27b5ec6000134f94e','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d5'),('63bb57d27b5ec6000134f94f','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d6'),('63bb57d27b5ec6000134f950','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d7'),('63bb57d27b5ec6000134f951','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d8'),('63bb57d27b5ec6000134f952','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8d9'),('63bb57d27b5ec6000134f953','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8da'),('63bb57d27b5ec6000134f954','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8db'),('63bb57d27b5ec6000134f955','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8dc'),('63bb57d27b5ec6000134f956','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8dd'),('63bb57d27b5ec6000134f957','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8de'),('63bb57d27b5ec6000134f958','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8df'),('63bb57d27b5ec6000134f959','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e0'),('63bb57d27b5ec6000134f95a','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e1'),('63bb57d27b5ec6000134f95b','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e2'),('63bb57d27b5ec6000134f95c','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e3'),('63bb57d27b5ec6000134f95d','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e4'),('63bb57d27b5ec6000134f95e','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e5'),('63bb57d27b5ec6000134f95f','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e6'),('63bb57d27b5ec6000134f960','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e7'),('63bb57d27b5ec6000134f961','63bb57c67b5ec6000134f89d','63bb57c97b5ec6000134f8e8'),('63bb57d27b5ec6000134f962','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8e9'),('63bb57d27b5ec6000134f963','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8ea'),('63bb57d27b5ec6000134f964','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8eb'),('63bb57d27b5ec6000134f965','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8ec'),('63bb57d27b5ec6000134f966','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f4'),('63bb57d27b5ec6000134f967','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f5'),('63bb57d27b5ec6000134f968','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f6'),('63bb57d27b5ec6000134f969','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f7'),('63bb57d27b5ec6000134f96a','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f8'),('63bb57d27b5ec6000134f96b','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8ef'),('63bb57d27b5ec6000134f96c','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f0'),('63bb57d27b5ec6000134f96d','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f1'),('63bb57d27b5ec6000134f96e','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f2'),('63bb57d27b5ec6000134f96f','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f3'),('63bb57d27b5ec6000134f970','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8f9'),('63bb57d27b5ec6000134f971','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f8fc'),('63bb57d27b5ec6000134f972','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f8fd'),('63bb57d27b5ec6000134f973','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f8fe'),('63bb57d27b5ec6000134f974','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f8ff'),('63bb57d27b5ec6000134f975','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f900'),('63bb57d27b5ec6000134f976','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f906'),('63bb57d27b5ec6000134f977','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f907'),('63bb57d27b5ec6000134f978','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f901'),('63bb57d27b5ec6000134f979','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f902'),('63bb57d27b5ec6000134f97a','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f903'),('63bb57d27b5ec6000134f97b','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f904'),('63bb57d27b5ec6000134f97c','63bb57c67b5ec6000134f89d','63bb57cb7b5ec6000134f905'),('63bb57d27b5ec6000134f97d','63bb57c67b5ec6000134f89d','63bb57ca7b5ec6000134f8fb'),('63bb57d27b5ec6000134f97e','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f908'),('63bb57d27b5ec6000134f97f','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f909'),('63bb57d27b5ec6000134f980','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f90a'),('63bb57d27b5ec6000134f981','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f90b'),('63bb57d27b5ec6000134f982','63bb57c67b5ec6000134f89d','63bb57c87b5ec6000134f8ab'),('63bb57d27b5ec6000134f983','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f90c'),('63bb57d27b5ec6000134f984','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f90d'),('63bb57d27b5ec6000134f985','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f90e'),('63bb57d27b5ec6000134f986','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f90f'),('63bb57d27b5ec6000134f987','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f910'),('63bb57d27b5ec6000134f988','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f911'),('63bb57d27b5ec6000134f989','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f912'),('63bb57d27b5ec6000134f98a','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f913'),('63bb57d27b5ec6000134f98b','63bb57c67b5ec6000134f89d','63bb57cc7b5ec6000134f914'),('63bb57d37b5ec6000134f98c','63bb57c67b5ec6000134f8a4','63bb57c87b5ec6000134f8ac'),('63bb57d37b5ec6000134f98d','63bb57c67b5ec6000134f8a4','63bb57c87b5ec6000134f8ad'),('63bb57d37b5ec6000134f98e','63bb57c67b5ec6000134f8a4','63bb57c87b5ec6000134f8ae'),('63bb57d37b5ec6000134f98f','63bb57c67b5ec6000134f8a4','63bb57ca7b5ec6000134f8ee'),('63bb57d37b5ec6000134f990','63bb57c67b5ec6000134f8a5','63bb57ca7b5ec6000134f8ed'),('63bb57d37b5ec6000134f991','63bb57c67b5ec6000134f8a3','63bb57c87b5ec6000134f8ab'),('63bb57d37b5ec6000134f992','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8af'),('63bb57d37b5ec6000134f993','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b0'),('63bb57d37b5ec6000134f994','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b1'),('63bb57d37b5ec6000134f995','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b2'),('63bb57d37b5ec6000134f996','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b3'),('63bb57d37b5ec6000134f997','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b4'),('63bb57d37b5ec6000134f998','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b5'),('63bb57d37b5ec6000134f999','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b6'),('63bb57d37b5ec6000134f99a','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b7'),('63bb57d37b5ec6000134f99b','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8ed'),('63bb57d37b5ec6000134f99c','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b8'),('63bb57d37b5ec6000134f99d','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8b9'),('63bb57d37b5ec6000134f99e','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8ba'),('63bb57d37b5ec6000134f99f','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8bb'),('63bb57d37b5ec6000134f9a0','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8bc'),('63bb57d37b5ec6000134f9a1','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8bd'),('63bb57d37b5ec6000134f9a2','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8be'),('63bb57d37b5ec6000134f9a3','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8bf'),('63bb57d37b5ec6000134f9a4','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8c0'),('63bb57d37b5ec6000134f9a5','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8c1'),('63bb57d37b5ec6000134f9a6','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8c2'),('63bb57d37b5ec6000134f9a7','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8c3'),('63bb57d37b5ec6000134f9a8','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8c4'),('63bb57d37b5ec6000134f9a9','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8c5'),('63bb57d37b5ec6000134f9aa','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8c6'),('63bb57d37b5ec6000134f9ab','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8c7'),('63bb57d37b5ec6000134f9ac','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8c8'),('63bb57d37b5ec6000134f9ad','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8c9'),('63bb57d37b5ec6000134f9ae','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8ca'),('63bb57d37b5ec6000134f9af','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8cb'),('63bb57d37b5ec6000134f9b0','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8cc'),('63bb57d37b5ec6000134f9b1','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8cd'),('63bb57d37b5ec6000134f9b2','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8ce'),('63bb57d37b5ec6000134f9b3','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8cf'),('63bb57d37b5ec6000134f9b4','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d0'),('63bb57d37b5ec6000134f9b5','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d1'),('63bb57d37b5ec6000134f9b6','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d2'),('63bb57d37b5ec6000134f9b7','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d3'),('63bb57d37b5ec6000134f9b8','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d4'),('63bb57d37b5ec6000134f9b9','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d5'),('63bb57d37b5ec6000134f9ba','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d6'),('63bb57d37b5ec6000134f9bb','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8d7'),('63bb57d37b5ec6000134f9bc','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e2'),('63bb57d37b5ec6000134f9bd','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e3'),('63bb57d37b5ec6000134f9be','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e4'),('63bb57d37b5ec6000134f9bf','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e5'),('63bb57d37b5ec6000134f9c0','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e6'),('63bb57d37b5ec6000134f9c1','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e7'),('63bb57d37b5ec6000134f9c2','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f4'),('63bb57d37b5ec6000134f9c3','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f5'),('63bb57d37b5ec6000134f9c4','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f6'),('63bb57d37b5ec6000134f9c5','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f7'),('63bb57d37b5ec6000134f9c6','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f8'),('63bb57d37b5ec6000134f9c7','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8ef'),('63bb57d37b5ec6000134f9c8','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f0'),('63bb57d37b5ec6000134f9c9','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f1'),('63bb57d37b5ec6000134f9ca','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f2'),('63bb57d37b5ec6000134f9cb','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8f3'),('63bb57d37b5ec6000134f9cc','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f8fc'),('63bb57d37b5ec6000134f9cd','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f8fd'),('63bb57d37b5ec6000134f9ce','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f8fe'),('63bb57d37b5ec6000134f9cf','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f8ff'),('63bb57d37b5ec6000134f9d0','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f900'),('63bb57d37b5ec6000134f9d1','63bb57c67b5ec6000134f8a2','63bb57c97b5ec6000134f8e8'),('63bb57d37b5ec6000134f9d2','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8e9'),('63bb57d37b5ec6000134f9d3','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8ea'),('63bb57d37b5ec6000134f9d4','63bb57c67b5ec6000134f8a2','63bb57ca7b5ec6000134f8eb'),('63bb57d37b5ec6000134f9d5','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f901'),('63bb57d37b5ec6000134f9d6','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f902'),('63bb57d37b5ec6000134f9d7','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f903'),('63bb57d37b5ec6000134f9d8','63bb57c67b5ec6000134f8a2','63bb57cb7b5ec6000134f904'),('63bb57d37b5ec6000134f9d9','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f908'),('63bb57d37b5ec6000134f9da','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f909'),('63bb57d37b5ec6000134f9db','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f90a'),('63bb57d37b5ec6000134f9dc','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f90b'),('63bb57d37b5ec6000134f9dd','63bb57c67b5ec6000134f8a2','63bb57c87b5ec6000134f8ab'),('63bb57d37b5ec6000134f9de','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f90c'),('63bb57d37b5ec6000134f9df','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f90d'),('63bb57d37b5ec6000134f9e0','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f90e'),('63bb57d37b5ec6000134f9e1','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f90f'),('63bb57d37b5ec6000134f9e2','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f910'),('63bb57d37b5ec6000134f9e3','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f911'),('63bb57d37b5ec6000134f9e4','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f912'),('63bb57d37b5ec6000134f9e5','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f913'),('63bb57d37b5ec6000134f9e6','63bb57c67b5ec6000134f8a2','63bb57cc7b5ec6000134f914'),('63bb57d37b5ec6000134f9e7','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b0'),('63bb57d37b5ec6000134f9e8','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b1'),('63bb57d37b5ec6000134f9e9','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b2'),('63bb57d37b5ec6000134f9ea','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b3'),('63bb57d37b5ec6000134f9eb','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b4'),('63bb57d37b5ec6000134f9ec','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b5'),('63bb57d37b5ec6000134f9ed','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b6'),('63bb57d37b5ec6000134f9ee','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b7'),('63bb57d37b5ec6000134f9ef','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8ed'),('63bb57d37b5ec6000134f9f0','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b8'),('63bb57d37b5ec6000134f9f1','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8b9'),('63bb57d37b5ec6000134f9f2','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8bb'),('63bb57d37b5ec6000134f9f3','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8bc'),('63bb57d37b5ec6000134f9f4','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8bd'),('63bb57d37b5ec6000134f9f5','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8be'),('63bb57d37b5ec6000134f9f6','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8bf'),('63bb57d37b5ec6000134f9f7','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8c0'),('63bb57d37b5ec6000134f9f8','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8c7'),('63bb57d37b5ec6000134f9f9','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8c8'),('63bb57d37b5ec6000134f9fa','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8c9'),('63bb57d37b5ec6000134f9fb','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8ca'),('63bb57d37b5ec6000134f9fc','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8cb'),('63bb57d37b5ec6000134f9fd','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8cc'),('63bb57d37b5ec6000134f9fe','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8cd'),('63bb57d37b5ec6000134f9ff','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8ce'),('63bb57d37b5ec6000134fa00','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8cf'),('63bb57d37b5ec6000134fa01','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8d0'),('63bb57d37b5ec6000134fa02','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8d1'),('63bb57d37b5ec6000134fa03','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8d2'),('63bb57d37b5ec6000134fa04','63bb57c67b5ec6000134f89e','63bb57c87b5ec6000134f8c1'),('63bb57d37b5ec6000134fa05','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8ef'),('63bb57d37b5ec6000134fa06','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8f0'),('63bb57d37b5ec6000134fa07','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8f1'),('63bb57d37b5ec6000134fa08','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8f2'),('63bb57d37b5ec6000134fa09','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8f3'),('63bb57d47b5ec6000134fa0a','63bb57c67b5ec6000134f89e','63bb57cb7b5ec6000134f8fc'),('63bb57d47b5ec6000134fa0b','63bb57c67b5ec6000134f89e','63bb57cb7b5ec6000134f8fd'),('63bb57d47b5ec6000134fa0c','63bb57c67b5ec6000134f89e','63bb57cb7b5ec6000134f8fe'),('63bb57d47b5ec6000134fa0d','63bb57c67b5ec6000134f89e','63bb57cb7b5ec6000134f8ff'),('63bb57d47b5ec6000134fa0e','63bb57c67b5ec6000134f89e','63bb57cb7b5ec6000134f900'),('63bb57d47b5ec6000134fa0f','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8f4'),('63bb57d47b5ec6000134fa10','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8f5'),('63bb57d47b5ec6000134fa11','63bb57c67b5ec6000134f89e','63bb57c97b5ec6000134f8e8'),('63bb57d47b5ec6000134fa12','63bb57c67b5ec6000134f89e','63bb57ca7b5ec6000134f8e9'),('63bb57d47b5ec6000134fa13','63bb57c67b5ec6000134f89e','63bb57cc7b5ec6000134f908'),('63bb57d47b5ec6000134fa14','63bb57c67b5ec6000134f89e','63bb57cc7b5ec6000134f909'),('63bb57d47b5ec6000134fa15','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8b3'),('63bb57d47b5ec6000134fa16','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8b4'),('63bb57d47b5ec6000134fa17','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8b6'),('63bb57d47b5ec6000134fa18','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8b8'),('63bb57d47b5ec6000134fa19','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8b9'),('63bb57d47b5ec6000134fa1a','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8bb'),('63bb57d47b5ec6000134fa1b','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8bc'),('63bb57d47b5ec6000134fa1c','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8bd'),('63bb57d47b5ec6000134fa1d','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8bf'),('63bb57d47b5ec6000134fa1e','63bb57c67b5ec6000134f89f','63bb57c97b5ec6000134f8c7'),('63bb57d47b5ec6000134fa1f','63bb57c67b5ec6000134f89f','63bb57c97b5ec6000134f8c8'),('63bb57d47b5ec6000134fa20','63bb57c67b5ec6000134f89f','63bb57c97b5ec6000134f8cd'),('63bb57d47b5ec6000134fa21','63bb57c67b5ec6000134f89f','63bb57c87b5ec6000134f8c1'),('63bb57d47b5ec6000134fa22','63bb57c67b5ec6000134f89f','63bb57ca7b5ec6000134f8ef'),('63bb57d47b5ec6000134fa23','63bb57c67b5ec6000134f89f','63bb57ca7b5ec6000134f8f2'),('63bb57d47b5ec6000134fa24','63bb57c67b5ec6000134f89f','63bb57cb7b5ec6000134f8fc'),('63bb57d47b5ec6000134fa25','63bb57c67b5ec6000134f89f','63bb57cb7b5ec6000134f8fd'),('63bb57d47b5ec6000134fa26','63bb57c67b5ec6000134f89f','63bb57ca7b5ec6000134f8f4'),('63bb57d47b5ec6000134fa27','63bb57c67b5ec6000134f89f','63bb57ca7b5ec6000134f8f5'),('63bb57d47b5ec6000134fa28','63bb57c67b5ec6000134f89f','63bb57c97b5ec6000134f8e8'),('63bb57d47b5ec6000134fa29','63bb57c67b5ec6000134f89f','63bb57ca7b5ec6000134f8e9'),('63bb57d47b5ec6000134fa2a','63bb57c67b5ec6000134f89f','63bb57cc7b5ec6000134f908'),('63bb57d47b5ec6000134fa2b','63bb57c67b5ec6000134f89f','63bb57cc7b5ec6000134f909'),('63bb57d47b5ec6000134fa2c','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8b3'),('63bb57d47b5ec6000134fa2d','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8b4'),('63bb57d47b5ec6000134fa2e','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8b6'),('63bb57d47b5ec6000134fa2f','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8b8'),('63bb57d47b5ec6000134fa30','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8b9'),('63bb57d47b5ec6000134fa31','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8bb'),('63bb57d47b5ec6000134fa32','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8bc'),('63bb57d47b5ec6000134fa33','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8bd'),('63bb57d47b5ec6000134fa34','63bb57c67b5ec6000134f8a0','63bb57c97b5ec6000134f8c7'),('63bb57d47b5ec6000134fa35','63bb57c67b5ec6000134f8a0','63bb57c97b5ec6000134f8c8'),('63bb57d47b5ec6000134fa36','63bb57c67b5ec6000134f8a0','63bb57c97b5ec6000134f8cd'),('63bb57d47b5ec6000134fa37','63bb57c67b5ec6000134f8a0','63bb57c87b5ec6000134f8c1'),('63bb57d47b5ec6000134fa38','63bb57c67b5ec6000134f8a0','63bb57ca7b5ec6000134f8ef'),('63bb57d47b5ec6000134fa39','63bb57c67b5ec6000134f8a0','63bb57ca7b5ec6000134f8f2'),('63bb57d47b5ec6000134fa3a','63bb57c67b5ec6000134f8a0','63bb57cb7b5ec6000134f8fc'),('63bb57d47b5ec6000134fa3b','63bb57c67b5ec6000134f8a0','63bb57cb7b5ec6000134f8fd');
/*!40000 ALTER TABLE `permissions_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions_users`
--

DROP TABLE IF EXISTS `permissions_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions_users` (
  `id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `permission_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions_users`
--

LOCK TABLES `permissions_users` WRITE;
/*!40000 ALTER TABLE `permissions_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` varchar(24) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `title` varchar(2000) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `mobiledoc` longtext,
  `html` longtext,
  `comment_id` varchar(50) DEFAULT NULL,
  `plaintext` longtext,
  `feature_image` varchar(2000) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(50) NOT NULL DEFAULT 'post',
  `status` varchar(50) NOT NULL DEFAULT 'draft',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `email_recipient_filter` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `published_by` varchar(24) DEFAULT NULL,
  `custom_excerpt` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `custom_template` varchar(100) DEFAULT NULL,
  `canonical_url` text,
  `newsletter_id` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_type_unique` (`slug`,`type`),
  KEY `posts_newsletter_id_foreign` (`newsletter_id`),
  CONSTRAINT `posts_newsletter_id_foreign` FOREIGN KEY (`newsletter_id`) REFERENCES `newsletters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES ('63bb57cc7b5ec6000134f915','d6f939e5-f19d-4b4c-9c25-332802b313bd','Coming soon','coming-soon','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[[\"a\",[\"href\",\"#/portal/\",\"rel\",\"noopener noreferrer\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"This is a brand new site that\'s just getting started. Things will be up and running here shortly, but you can \"],[0,[0],1,\"subscribe\"],[0,[],0,\" in the meantime if you\'d like to stay up to date and receive emails when new content is published!\"]]]],\"ghostVersion\":\"4.0\"}','<p>This is a brand new site that\'s just getting started. Things will be up and running here shortly, but you can <a href=\"#/portal/\" rel=\"noopener noreferrer\">subscribe</a> in the meantime if you\'d like to stay up to date and receive emails when new content is published!</p>','63bb57cc7b5ec6000134f915','This is a brand new site that\'s just getting started. Things will be up and running here shortly, but you can subscribe in the meantime if you\'d like to stay up to date and receive emails when new content is published!','https://static.ghost.org/v4.0.0/images/feature-image.jpg',0,'post','published',NULL,'public','all','2023-01-08 23:54:52','1','2023-01-08 23:54:52','1','2023-01-08 23:54:52','1',NULL,NULL,NULL,NULL,NULL,NULL),('63bb57cf7b5ec6000134f917','b67ac899-6ca2-4ef4-8290-b8ee66274896','About this site','about','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[[\"hr\",{}]],\"markups\":[[\"a\",[\"href\",\"https://ghost.org\"]]],\"sections\":[[1,\"p\",[[0,[],0,\"This is an independent publication. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible. Thank you!\"]]],[1,\"h3\",[[0,[],0,\"Access all areas\"]]],[1,\"p\",[[0,[],0,\"By signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.\"]]],[1,\"h3\",[[0,[],0,\"Fresh content, delivered\"]]],[1,\"p\",[[0,[],0,\"Stay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.\"]]],[1,\"h3\",[[0,[],0,\"Meet people like you\"]]],[1,\"p\",[[0,[],0,\"Join a community of other subscribers who share the same interests.\"]]],[10,0],[1,\"h3\",[[0,[],0,\"Start your own thing\"]]],[1,\"p\",[[0,[],0,\"Enjoying the experience? Get started for free and set up your very own subscription business using \"],[0,[0],1,\"Ghost\"],[0,[],0,\", the same platform that powers this website.\"]]]],\"ghostVersion\":\"4.0\"}','<p>This is an independent publication. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible. Thank you!</p><h3 id=\"access-all-areas\">Access all areas</h3><p>By signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.</p><h3 id=\"fresh-content-delivered\">Fresh content, delivered</h3><p>Stay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.</p><h3 id=\"meet-people-like-you\">Meet people like you</h3><p>Join a community of other subscribers who share the same interests.</p><hr><h3 id=\"start-your-own-thing\">Start your own thing</h3><p>Enjoying the experience? Get started for free and set up your very own subscription business using <a href=\"https://ghost.org\">Ghost</a>, the same platform that powers this website.</p>','63bb57cf7b5ec6000134f917','This is an independent publication. If you subscribe today, you\'ll get full access to the website as well as email newsletters about new content when it\'s available. Your subscription makes this site possible. Thank you!\n\n\nAccess all areas\n\nBy signing up, you\'ll get access to the full archive of everything that\'s been published before and everything that\'s still to come. Your very own private library.\n\n\nFresh content, delivered\n\nStay up to date with new content sent straight to your inbox! No more worrying about whether you missed something because of a pesky algorithm or news feed.\n\n\nMeet people like you\n\nJoin a community of other subscribers who share the same interests.\n\n\nStart your own thing\n\nEnjoying the experience? Get started for free and set up your very own subscription business using Ghost, the same platform that powers this website.',NULL,0,'page','published',NULL,'public','all','2023-01-08 23:54:55','1','2023-01-08 23:54:55','1','2023-01-08 23:54:53','1',NULL,NULL,NULL,NULL,NULL,NULL),('63bc022d7b5ec6000134faad','eeac8866-3855-451a-88c2-1b27aae02c67','Boas','boas','{\"version\":\"0.3.1\",\"atoms\":[],\"cards\":[],\"markups\":[],\"sections\":[[1,\"p\",[[0,[],0,\"Podem comentar\"]]]],\"ghostVersion\":\"4.0\"}','<p>Podem comentar</p>','63bc022d7b5ec6000134faad','Podem comentar',NULL,1,'post','published',NULL,'members','all','2023-01-09 12:01:49','1','2023-01-09 12:02:15','1','2023-01-09 12:02:15','1',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_authors`
--

DROP TABLE IF EXISTS `posts_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_authors` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `author_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_authors_post_id_foreign` (`post_id`),
  KEY `posts_authors_author_id_foreign` (`author_id`),
  CONSTRAINT `posts_authors_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  CONSTRAINT `posts_authors_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_authors`
--

LOCK TABLES `posts_authors` WRITE;
/*!40000 ALTER TABLE `posts_authors` DISABLE KEYS */;
INSERT INTO `posts_authors` VALUES ('63bb57cf7b5ec6000134f916','63bb57cc7b5ec6000134f915','1',0),('63bb57d07b5ec6000134f918','63bb57cf7b5ec6000134f917','1',0),('63bc022d7b5ec6000134faae','63bc022d7b5ec6000134faad','1',0);
/*!40000 ALTER TABLE `posts_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_meta`
--

DROP TABLE IF EXISTS `posts_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_meta` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `email_subject` varchar(300) DEFAULT NULL,
  `frontmatter` text,
  `feature_image_alt` varchar(191) DEFAULT NULL,
  `feature_image_caption` text,
  `email_only` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_meta_post_id_unique` (`post_id`),
  CONSTRAINT `posts_meta_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_meta`
--

LOCK TABLES `posts_meta` WRITE;
/*!40000 ALTER TABLE `posts_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_products`
--

DROP TABLE IF EXISTS `posts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_products` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_products_post_id_foreign` (`post_id`),
  KEY `posts_products_product_id_foreign` (`product_id`),
  CONSTRAINT `posts_products_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_products`
--

LOCK TABLES `posts_products` WRITE;
/*!40000 ALTER TABLE `posts_products` DISABLE KEYS */;
INSERT INTO `posts_products` VALUES ('63bc02477b5ec6000134fab6','63bc022d7b5ec6000134faad','63bb57c77b5ec6000134f8a7',0),('63bc02477b5ec6000134fab7','63bc022d7b5ec6000134faad','63bb57c77b5ec6000134f8a8',1);
/*!40000 ALTER TABLE `posts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_tags`
--

DROP TABLE IF EXISTS `posts_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_tags` (
  `id` varchar(24) NOT NULL,
  `post_id` varchar(24) NOT NULL,
  `tag_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `posts_tags_post_id_foreign` (`post_id`),
  KEY `posts_tags_tag_id_foreign` (`tag_id`),
  CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_tags`
--

LOCK TABLES `posts_tags` WRITE;
/*!40000 ALTER TABLE `posts_tags` DISABLE KEYS */;
INSERT INTO `posts_tags` VALUES ('63bb57d47b5ec6000134fa3c','63bb57cc7b5ec6000134f915','63bb57c87b5ec6000134f8aa',0);
/*!40000 ALTER TABLE `posts_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `welcome_page_url` varchar(2000) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'none',
  `trial_days` int unsigned NOT NULL DEFAULT '0',
  `monthly_price_id` varchar(24) DEFAULT NULL,
  `yearly_price_id` varchar(24) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'paid',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('63bb57c77b5ec6000134f8a7','Free','free',1,NULL,'public',0,NULL,NULL,NULL,'free','2023-01-08 23:54:47','2023-01-08 23:54:47'),('63bb57c77b5ec6000134f8a8','Default Product','default-product',1,NULL,'public',0,NULL,NULL,NULL,'paid','2023-01-08 23:54:47','2023-01-08 23:54:47');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_benefits`
--

DROP TABLE IF EXISTS `products_benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_benefits` (
  `id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `benefit_id` varchar(24) NOT NULL,
  `sort_order` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `products_benefits_product_id_foreign` (`product_id`),
  KEY `products_benefits_benefit_id_foreign` (`benefit_id`),
  CONSTRAINT `products_benefits_benefit_id_foreign` FOREIGN KEY (`benefit_id`) REFERENCES `benefits` (`id`) ON DELETE CASCADE,
  CONSTRAINT `products_benefits_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_benefits`
--

LOCK TABLES `products_benefits` WRITE;
/*!40000 ALTER TABLE `products_benefits` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` varchar(24) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('63bb57c67b5ec6000134f89d','Administrator','Administrators','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f89e','Editor','Editors','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f89f','Author','Authors','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f8a0','Contributor','Contributors','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f8a1','Owner','Blog Owner','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f8a2','Admin Integration','External Apps','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f8a3','Ghost Explore Integration','Internal Integration for the Ghost Explore directory','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f8a4','DB Backup Integration','Internal DB Backup Client','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1'),('63bb57c67b5ec6000134f8a5','Scheduler Integration','Internal Scheduler Client','2023-01-08 23:54:46','1','2023-01-08 23:54:46','1');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles_users` (
  `id` varchar(24) NOT NULL,
  `role_id` varchar(24) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` VALUES ('63bb57c77b5ec6000134f8a6','63bb57c67b5ec6000134f8a1','1'),('63bc03127b5ec6000134fabb','63bb57c67b5ec6000134f8a0','63bc03127b5ec6000134faba');
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(24) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `user_id` varchar(24) NOT NULL,
  `session_data` varchar(2000) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_session_id_unique` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('63bc01ff7b5ec6000134faab','Jj7wGIIGwLajTcSTMD1VTbz-pYipCcqS','1','{\"cookie\":{\"originalMaxAge\":15768000000,\"expires\":\"2023-07-11T00:01:03.843Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/ghost\",\"sameSite\":\"lax\"},\"user_id\":\"1\",\"origin\":\"http://35.230.149.98\",\"user_agent\":\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36\",\"ip\":\"::ffff:10.124.0.1\"}','2023-01-09 12:01:04','2023-01-09 12:01:04'),('63bc03127b5ec6000134fabc','gcfGruHrlpIBipP7fVkqzzpY113jWnCJ','63bc03127b5ec6000134faba','{\"cookie\":{\"originalMaxAge\":15768000000,\"expires\":\"2023-07-11T00:05:38.669Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/ghost\",\"sameSite\":\"lax\"},\"user_id\":\"63bc03127b5ec6000134faba\",\"origin\":\"http://35.230.149.98\",\"user_agent\":\"Mozilla/5.0 (X11; Linux x86_64; rv:107.0) Gecko/20100101 Firefox/107.0\",\"ip\":\"::ffff:10.154.0.56\"}','2023-01-09 12:05:39','2023-01-09 12:05:39');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` varchar(24) NOT NULL,
  `group` varchar(50) NOT NULL DEFAULT 'core',
  `key` varchar(50) NOT NULL,
  `value` text,
  `type` varchar(50) NOT NULL,
  `flags` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('63bb57d87b5ec6000134fa3d','core','db_hash','16575812-9f84-475a-ad0c-f5a54625ad2e','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa3e','core','routes_hash','3d180d52c663d173a6be791ef411ed01','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:15','1'),('63bb57d87b5ec6000134fa3f','core','next_update_check','1673351758','number',NULL,'2023-01-08 23:55:05','1','2023-01-09 11:55:58','1'),('63bb57d87b5ec6000134fa40','core','notifications','[{\"dismissible\":true,\"location\":\"bottom\",\"status\":\"alert\",\"id\":\"82e568e9-aa4d-4424-bba0-2acbc6e25d72\",\"createdAtVersion\":\"5.14.1\",\"custom\":true,\"createdAt\":\"2022-11-28T15:15:12.000Z\",\"type\":\"alert\",\"top\":false,\"message\":\"Critical security update available — please update Ghost as soon as possible. <a href=\\\"https://github.com/TryGhost/Ghost/security/advisories/GHSA-9gh8-wp53-ccc6\\\" target=\\\"_blank\\\" rel=\\\"noopener\\\">Details here.</a>\",\"seen\":true,\"addedAt\":\"2023-01-09T11:55:58.060Z\",\"seenBy\":[\"1\"]}]','array',NULL,'2023-01-08 23:55:05','1','2023-01-09 12:03:16','1'),('63bb57d87b5ec6000134fa41','core','version_notifications','[]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa42','core','admin_session_secret','7b43d05abf551cb0860af99be5395122fde849d3c8c91319f398391dfb890fc3','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa43','core','theme_session_secret','656f7c8944542353336115102dc8c7337060c684e84a0ad25a2c8c984109894c','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa44','core','ghost_public_key','-----BEGIN RSA PUBLIC KEY-----\nMIGJAoGBAJJtS8giYNM/Gq6jYHgza5AEwpIWLQju9Lqc39+wlEy5JjfEu//rItu6VMDBVpZd\nmMQBRFm2c1K0Lv2zTUuk2S80+j7cN7zX6YsfE43LnRte93Os5OGmOJMnhsFfMa+KYOJdzxHm\n3gC66tbYsqb9P2ERGxaGMHcAItArpMF0Gh9/AgMBAAE=\n-----END RSA PUBLIC KEY-----\n','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa45','core','ghost_private_key','-----BEGIN RSA PRIVATE KEY-----\nMIICXAIBAAKBgQCSbUvIImDTPxquo2B4M2uQBMKSFi0I7vS6nN/fsJRMuSY3xLv/6yLbulTA\nwVaWXZjEAURZtnNStC79s01LpNkvNPo+3De81+mLHxONy50bXvdzrOThpjiTJ4bBXzGvimDi\nXc8R5t4AuurW2LKm/T9hERsWhjB3ACLQK6TBdBoffwIDAQABAoGAV2bz+CdFInMlax7MQ5N1\n3gZpWafxA8cWv5lKLIyLSOyvelRtX4osSXoEgvYkyCZgPIcBFIfKeJBjCD6RodhpZk8S/rlY\nR2rZRePzm0O7p3zonzTbYPJz3z9Qm9iGlWmMsrvHPEiBkysJpsoOB18jMZFnerxVdxJFaDzG\nTNdr3UkCQQDuXnTaIocKoxhyPDgKq+Zg3CKy0JHHKhgUAL2ufpemSppQQ0Mho0I050UDNVFt\nc2qhjetCjs12VyOjPQch1glNAkEAnUHoHzyo5jXajicHLRCfuvTlG1UyyKM2FjbNm87SO/y0\ngyT5BxB7/edW4uSmdY6+gx/oPzZ/2Ok7AQXtoRKF+wJAaRaxk53XRWREGdDcsC+7AIbssULs\nkg7H0MHG3lAnUYPgZnRQ+1p7jNFNBq4R+RwCLblgt9Y3VO3z4zq7kzpGnQJBAIcV+3kB2bDP\n6CuemQp8MkoeXsSI/nPdx/NzJlJGatA+9y2E0CriXTCxzjBf7CIl+b+X5CCRB2fkidwKJKPt\nzosCQBzJyon/++pmheeYypWv7guAgbIgih3DehrhKgvq8PV4pdrLdeVKhmjtc9LYSOoIveRB\ngwHaJKpSFpxCq7iGZ/w=\n-----END RSA PRIVATE KEY-----\n','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa46','core','members_public_key','-----BEGIN RSA PUBLIC KEY-----\nMIGJAoGBAJJoXcrIjEXBctlfusRCQP4tFyQc9bX3Lqx46PYkVULtbMv+km4xSSLsZ91Tlc10\nEwocVTTa6M0H13JtJ947kqYAtK8irRtpE8s38GUaNItAVj9bmVi7tckPiN7+k+qTyWmdu8J1\nIv6ZaWxyqATi5k7zLPAOIOfua6Cj5KL6p+klAgMBAAE=\n-----END RSA PUBLIC KEY-----\n','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa47','core','members_private_key','-----BEGIN RSA PRIVATE KEY-----\nMIICWwIBAAKBgQCSaF3KyIxFwXLZX7rEQkD+LRckHPW19y6seOj2JFVC7WzL/pJuMUki7Gfd\nU5XNdBMKHFU02ujNB9dybSfeO5KmALSvIq0baRPLN/BlGjSLQFY/W5lYu7XJD4je/pPqk8lp\nnbvCdSL+mWlscqgE4uZO8yzwDiDn7mugo+Si+qfpJQIDAQABAoGAfxYJFFUxLfvV7cqjHGlG\ncVxCkh5xSxrdcOkjj0XKnOXrYsf/45b0nVQIdJ5xkn4HaOdfLxo2qoL8CV+nE8kyaYY5sgL7\ncQFY9Gw3sse1O8SUPyNz+7cgqsnatU6W2VAGj5GDQykoPoYEN6E44FNVn1DQoQpO+r94tbWH\nT5Tr2gECQQDIHkrI5Sqtlqae4Gezuo2JSsjUZx25s/4mL8oJhDAm8A1ZHM8iE0avLRe1Kqz1\nqrGCppaTEkIypMGp+l4WpGH1AkEAu0qAcjNri3SMghyO/T8vv2WXeFBd4N3kNWR2OZZ6kLTJ\nIifW76YFrxxD3hFe7Ye1UKDo25MbUXzUnbHw9E58cQJAajUZf7GQivxvhdaXcx3JTFoyZ/gq\nIIrUkbO/SHmtjJzOmMLfc7hDRWlrMa1qih+DglGjjH6eP36NggbstJudmQJAOZcXGAansyIL\ncpbFgSnEzN24Tc6oj1Srr59MmziiR4zPrCkD9nzekpHmbIp63h80qa5Q6/O4Gr5/wl3M8dKQ\ngQJAXch2JLtY2OCTGPnkiOPSQxOcPMYcKxKMsc0lKIECJdfvcEGhO6Iw5EFGlWDHcfTBPe1x\nREkmvcxiTSYtK7K8Yg==\n-----END RSA PRIVATE KEY-----\n','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa48','core','members_email_auth_secret','09c1d84f6a935f4b7abeff2764baf55e63aa8ecbcd64d5da37444bfd4180c85b695700ab1b0eea4494239dfe2326a9971da6972755a1d66f6a7eb52b3e8d7467','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa49','core','members_stripe_webhook_id',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa4a','core','members_stripe_webhook_secret',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa4b','site','title','Ghost','string','PUBLIC','2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa4c','site','description','Thoughts, stories and ideas','string','PUBLIC','2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa4d','site','logo','','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa4e','site','cover_image','https://static.ghost.org/v4.0.0/images/publication-cover.jpg','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa4f','site','icon','','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa50','site','accent_color','#FF1A75','string','PUBLIC','2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa51','site','locale','en','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa52','site','timezone','Etc/UTC','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa53','site','codeinjection_head','','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa54','site','codeinjection_foot','','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa55','site','facebook','ghost','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa56','site','twitter','@ghost','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa57','site','navigation','[{\"label\":\"Home\",\"url\":\"/\"},{\"label\":\"About\",\"url\":\"/about/\"}]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa58','site','secondary_navigation','[{\"label\":\"Sign up\",\"url\":\"#/portal/\"}]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa59','site','meta_title',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa5a','site','meta_description',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa5b','site','og_image',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa5c','site','og_title',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa5d','site','og_description',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa5e','site','twitter_image',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa5f','site','twitter_title',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa60','site','twitter_description',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa61','theme','active_theme','casper','string','RO','2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa62','private','is_private','false','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa63','private','password','','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa64','private','public_hash','e6f8e663cd113f0e21be79b2e4d0d2','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa65','members','default_content_visibility','public','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa66','members','default_content_visibility_tiers','[]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa67','members','members_signup_access','all','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa68','members','members_support_address','noreply','string','PUBLIC,RO','2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa69','members','stripe_secret_key',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa6a','members','stripe_publishable_key',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa6b','members','stripe_plans','[]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa6c','members','stripe_connect_publishable_key',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa6d','members','stripe_connect_secret_key',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa6e','members','stripe_connect_livemode',NULL,'boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa6f','members','stripe_connect_display_name',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa70','members','stripe_connect_account_id',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa71','members','members_monthly_price_id',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa72','members','members_yearly_price_id',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa73','portal','portal_name','true','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa74','portal','portal_button','true','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa75','portal','portal_plans','[\"free\"]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa76','portal','portal_products','[]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa77','portal','portal_button_style','icon-and-text','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa78','portal','portal_button_icon',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa79','portal','portal_button_signup_text','Subscribe','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa7a','email','mailgun_domain',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa7b','email','mailgun_api_key',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa7c','email','mailgun_base_url',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa7d','email','email_track_opens','true','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa7e','email','email_verification_required','false','boolean','RO','2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa7f','amp','amp','false','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa80','amp','amp_gtag_id',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa81','firstpromoter','firstpromoter','false','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa82','firstpromoter','firstpromoter_id',NULL,'string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa83','labs','labs','{}','object',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa84','slack','slack_url','','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa85','slack','slack_username','Ghost','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa86','unsplash','unsplash','true','boolean',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa87','views','shared_views','[]','array',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa88','editor','editor_default_email_recipients','visibility','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa89','editor','editor_default_email_recipients_filter','all','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1'),('63bb57d87b5ec6000134fa8a','comments','comments_enabled','off','string',NULL,'2023-01-08 23:55:05','1','2023-01-08 23:55:05','1');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snippets`
--

DROP TABLE IF EXISTS `snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snippets` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `mobiledoc` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `snippets_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snippets`
--

LOCK TABLES `snippets` WRITE;
/*!40000 ALTER TABLE `snippets` DISABLE KEYS */;
/*!40000 ALTER TABLE `snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_prices`
--

DROP TABLE IF EXISTS `stripe_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_prices` (
  `id` varchar(24) NOT NULL,
  `stripe_price_id` varchar(255) NOT NULL,
  `stripe_product_id` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `currency` varchar(191) NOT NULL,
  `amount` int NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'recurring',
  `interval` varchar(50) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripe_prices_stripe_price_id_unique` (`stripe_price_id`),
  KEY `stripe_prices_stripe_product_id_foreign` (`stripe_product_id`),
  CONSTRAINT `stripe_prices_stripe_product_id_foreign` FOREIGN KEY (`stripe_product_id`) REFERENCES `stripe_products` (`stripe_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_prices`
--

LOCK TABLES `stripe_prices` WRITE;
/*!40000 ALTER TABLE `stripe_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_products`
--

DROP TABLE IF EXISTS `stripe_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stripe_products` (
  `id` varchar(24) NOT NULL,
  `product_id` varchar(24) NOT NULL,
  `stripe_product_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stripe_products_stripe_product_id_unique` (`stripe_product_id`),
  KEY `stripe_products_product_id_foreign` (`product_id`),
  CONSTRAINT `stripe_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_products`
--

LOCK TABLES `stripe_products` WRITE;
/*!40000 ALTER TABLE `stripe_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text,
  `feature_image` varchar(2000) DEFAULT NULL,
  `parent_id` varchar(191) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `og_image` varchar(2000) DEFAULT NULL,
  `og_title` varchar(300) DEFAULT NULL,
  `og_description` varchar(500) DEFAULT NULL,
  `twitter_image` varchar(2000) DEFAULT NULL,
  `twitter_title` varchar(300) DEFAULT NULL,
  `twitter_description` varchar(500) DEFAULT NULL,
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `codeinjection_head` text,
  `codeinjection_foot` text,
  `canonical_url` varchar(2000) DEFAULT NULL,
  `accent_color` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES ('63bb57c87b5ec6000134f8aa','News','news',NULL,NULL,NULL,'public',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2023-01-08 23:54:48','1','2023-01-08 23:54:48','1');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tokens` (
  `id` varchar(24) NOT NULL,
  `token` varchar(32) NOT NULL,
  `data` varchar(2000) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tokens_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES ('63bc01207b5ec6000134faa7','3tdvYPAdJTra8j_HZ2b0R_J1_33KXzh5','{\"email\":\"teste@example.com\"}','2023-01-09 11:57:20','63bc01207b5ec6000134faa7'),('63bc01387b5ec6000134faa8','1MLgqPj7iduLsTdKlzsl-0NCyQ4nDCkK','{\"email\":\"teste@example.com\"}','2023-01-09 11:57:44','63bc01387b5ec6000134faa8'),('63bc01c67b5ec6000134faa9','5lr8IHctcpFdhsqxaKfZZBeHjoRVtoDR','{\"email\":\"teste@example.com\"}','2023-01-09 12:00:06','63bc01c67b5ec6000134faa9'),('63bc02067b5ec6000134faac','LjjURVJhDVGde1YO0p0SgWbz9ZuWWF1S','{\"email\":\"teste@example.com\"}','2023-01-09 12:01:10','63bc02067b5ec6000134faac');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(24) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(191) NOT NULL,
  `profile_image` varchar(2000) DEFAULT NULL,
  `cover_image` varchar(2000) DEFAULT NULL,
  `bio` text,
  `website` varchar(2000) DEFAULT NULL,
  `location` text,
  `facebook` varchar(2000) DEFAULT NULL,
  `twitter` varchar(2000) DEFAULT NULL,
  `accessibility` text,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `locale` varchar(6) DEFAULT NULL,
  `visibility` varchar(50) NOT NULL DEFAULT 'public',
  `meta_title` varchar(2000) DEFAULT NULL,
  `meta_description` varchar(2000) DEFAULT NULL,
  `tour` text,
  `last_seen` datetime DEFAULT NULL,
  `comment_notifications` tinyint(1) NOT NULL DEFAULT '1',
  `free_member_signup_notification` tinyint(1) NOT NULL DEFAULT '1',
  `paid_subscription_started_notification` tinyint(1) NOT NULL DEFAULT '1',
  `paid_subscription_canceled_notification` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','ascn','ghost-user','$2b$10$eK1eSDuggYcxSlkALF/1Lugmz849DTXAp.nPBXpgW4t/Tl0j2GJVy','ascn@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,NULL,'2023-01-09 12:01:03',1,1,1,0,'2023-01-08 23:54:46','1','2023-01-09 12:01:03','1'),('63bc03127b5ec6000134faba','ASCN2','ascn2','$2a$10$5CIrBo3DTyVF91XBZDlCbuHmIQOye8dUzOHR0vMgQ5nPt5UCfRNLm','ascn2@example.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'active',NULL,'public',NULL,NULL,NULL,'2023-01-09 12:05:38',1,1,1,0,'2023-01-09 12:05:38','1','2023-01-09 12:05:38','63bc03127b5ec6000134faba');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` varchar(24) NOT NULL,
  `event` varchar(50) NOT NULL,
  `target_url` varchar(2000) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secret` varchar(191) DEFAULT NULL,
  `api_version` varchar(50) NOT NULL DEFAULT 'v2',
  `integration_id` varchar(24) NOT NULL,
  `last_triggered_at` datetime DEFAULT NULL,
  `last_triggered_status` varchar(50) DEFAULT NULL,
  `last_triggered_error` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(24) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_integration_id_foreign` (`integration_id`),
  CONSTRAINT `webhooks_integration_id_foreign` FOREIGN KEY (`integration_id`) REFERENCES `integrations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 12:13:07
