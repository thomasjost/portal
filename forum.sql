-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `likeable_id` int(10) unsigned NOT NULL,
  `likeable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_09_17_113019_create_users_table',1),(2,'2013_09_17_121043_create_session_table',1),(3,'2013_09_17_160916_create_roles_table',1),(4,'2013_09_17_164244_create_role_user_table',1),(5,'2013_09_17_170055_add_is_banned_field_to_users',1),(6,'2013_09_18_115103_create_pastes_table',1),(7,'2013_09_19_101701_create_comments_table',1),(8,'2013_09_19_104855_create_activity_table',1),(9,'2013_09_22_130010_add_image_url_field_to_users',1),(10,'2013_09_22_130711_add_type_field_to_comments',1),(11,'2013_09_22_163103_create_articles_table',1),(12,'2013_09_22_163347_create_tags_table',1),(13,'2013_09_22_163816_create_article_tag_table',1),(14,'2013_09_23_111349_add_description_field_to_tags',1),(15,'2013_09_23_121454_add_published_at_field_to_articles',1),(16,'2013_09_23_160937_add_comment_counter_cache_to_articles',1),(17,'2013_09_24_145833_create_contributors_table',1),(18,'2013_09_27_014229_add_soft_delete_to_articles',1),(19,'2013_09_27_015000_add_soft_delete_to_users',1),(20,'2013_09_27_015109_add_soft_delete_to_comments',1),(21,'2013_09_27_021650_add_soft_delete_to_pastes',1),(22,'2013_10_24_131412_create_comment_tag_table',1),(23,'2013_10_30_104107_add_tag_section_fields',1),(24,'2013_12_08_161643_comments_add_laravel_version',1),(25,'2013_12_14_151829_articles_add_laravel_verion_field',1),(26,'2014_01_27_135001_forum_threads_create_table',1),(27,'2014_01_27_141317_forum_replies_create_table',1),(28,'2014_01_31_140118_tagged_items_create_table',1),(29,'2014_02_01_022633_pastes_add_hash_field',1),(30,'2014_02_07_125035_forum_threads_add_question_fields',1),(31,'2014_02_07_144708_forum_threads_add_solution_reply_id',1),(32,'2014_02_07_155103_forum_thread_visitation_timestamps_create_table',1),(33,'2014_05_30_115728_users_add_remember_me_token',1),(34,'2014_09_10_112330_add_ip_to_pastes_table',1),(35,'2014_11_09_185116_pinned_threads',1),(36,'2014_12_07_143131_add_user_confirmation_columns',1),(37,'2014_12_13_164931_create_ip_columns',1),(38,'2014_12_13_210738_add_spam_counter_to_users_table',1),(39,'2014_12_21_212154_remove_contributors_table',1),(40,'2015_04_12_171949_add_indexes',1),(41,'2015_04_12_172949_add_indexes_to_tagged_items',1),(42,'2015_07_26_160128_l5_cleanup',1),(43,'2015_08_26_191523_drop_unused_tables',1),(44,'2017_04_08_104959_next_version',1),(45,'2017_07_08_202506_add_user_bio_column',1),(46,'2017_08_29_123258_add_banned_at_column',1),(47,'2017_10_18_193001_create_subscriptions_table',1),(48,'2017_12_03_111900_create_likes_table',1),(49,'2018_01_27_111437_fix_subscription_indexes',1),(50,'2018_02_20_215439_create_failed_jobs_table',1),(51,'2018_05_22_191538_cleanup_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `replyable_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `replyable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `replies_author_id_index` (`author_id`),
  KEY `replies_replyable_id_index` (`replyable_id`),
  CONSTRAINT `replies_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (3,'Pariatur ut quasi est iure ut magnam voluptatibus est. Rerum aut libero voluptatem dolor et commodi. Commodi odio delectus a et qui. Repellendus id assumenda nihil et fugit.',1,2,'2020-01-29 00:59:06','2020-01-29 00:59:06','threads');
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `subscriptionable_id` int(11) NOT NULL,
  `subscriptionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `subscriptions_uuid_unique` (`uuid`),
  UNIQUE KEY `subscriptions_are_unique` (`user_id`,`subscriptionable_id`,`subscriptionable_type`),
  KEY `subscriptions_uuid_index` (`uuid`),
  KEY `subscriptions_user_id_index` (`user_id`),
  CONSTRAINT `subscriptions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggables`
--

DROP TABLE IF EXISTS `taggables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_id` int(11) NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `taggables_taggable_id_index` (`taggable_id`),
  KEY `taggables_tag_id_index` (`tag_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggables`
--

LOCK TABLES `taggables` WRITE;
/*!40000 ALTER TABLE `taggables` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tags_name_unique` (`name`),
  UNIQUE KEY `tags_slug_unique` (`slug`),
  KEY `tags_slug_index` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Laravel','laravel'),(2,'Lumen','lumen'),(3,'Spark','spark'),(4,'Forge','Forge'),(5,'Envoyer','envoyer'),(6,'Homestead','homestead'),(7,'Valet','valet'),(8,'Socialite','socialite'),(9,'Mix','mix'),(10,'Dusk','dusk'),(11,'Installation','installation'),(12,'Blade','blade'),(13,'Cache','cache');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `threads`
--

DROP TABLE IF EXISTS `threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `threads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `solution_reply_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `threads_slug_unique` (`slug`),
  KEY `threads_author_id_index` (`author_id`),
  KEY `threads_slug_index` (`slug`),
  KEY `threads_solution_reply_id_index` (`solution_reply_id`),
  CONSTRAINT `threads_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `threads_solution_reply_id_foreign` FOREIGN KEY (`solution_reply_id`) REFERENCES `replies` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `threads`
--

LOCK TABLES `threads` WRITE;
/*!40000 ALTER TABLE `threads` DISABLE KEYS */;
INSERT INTO `threads` VALUES (2,1,'Et voluptatem ad.','Quam perspiciatis beatae ex. Culpa nostrum quos qui quia architecto quia ad. Necessitatibus et sint voluptas laborum.','ipsum-aperiam-suscipit-dignissimos-voluptatem','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(3,1,'Voluptas ut ea.','Architecto soluta voluptas molestias recusandae. Sed qui nostrum quaerat aut possimus quas inventore. Est quam ex reprehenderit nobis pariatur. Illo quis autem debitis.','delectus-dolor-dolor-quae-consequatur','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(4,1,'Pariatur facere.','Error sint rerum molestiae sequi. Error ipsum tempore non. Adipisci harum velit debitis hic. Necessitatibus officia sed non et dignissimos.','id-rerum-illo-tenetur-animi-rem-dolorum-cumque','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(5,1,'Sed sunt dolores et.','Qui ut distinctio tenetur non nobis. Ea sapiente quae pariatur sunt dicta quos. Dignissimos in nostrum repudiandae aut voluptatum est accusamus.','quibusdam-dolor-sit-debitis-voluptatem-id-quia-non-quo','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(6,1,'Reprehenderit.','Enim sit provident et eum quas illo. Quia praesentium blanditiis autem sed nulla modi. Odio molestias ut libero aut quisquam est amet necessitatibus.','animi-laboriosam-est-tempora-eveniet','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(7,1,'Quia eaque et.','Ratione autem ducimus eos ipsa. Eius nulla corporis eligendi ipsam quis sequi. Ut blanditiis est doloribus at nihil pariatur. Odit id quod et impedit dolorem consequuntur.','accusamus-dolores-et-ut-numquam-et','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(8,1,'Fugit provident.','Rerum non minus saepe ab ut qui placeat. Esse ad quos totam. Sit dolores praesentium est fugit beatae. Sit eveniet dolor velit.','qui-illum-autem-iusto-aut-at-nam','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(9,1,'Eos deserunt libero.','Deserunt rerum quia et ut veniam eveniet. Et reiciendis velit inventore doloremque. Qui tempore quo et dolor rerum expedita.','ut-quia-dolorem-magni-illum','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(10,1,'Eos consequatur vel.','Tenetur quae modi unde voluptatem nihil mollitia. Autem at odio qui officia. Maxime reprehenderit nostrum dolorum placeat nesciunt.','ut-ea-et-assumenda','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(11,1,'Eum neque neque sed.','Ea eos voluptas alias explicabo. Aliquid esse laudantium illum autem voluptas. Non incidunt quaerat ab tempore. Quia sit sunt quia illum nam sed.','consectetur-illum-officia-aliquam-est-saepe','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(12,1,'Non laboriosam sit.','Pariatur et provident velit. Earum asperiores animi sed corporis voluptatem ea. Non qui magnam voluptate voluptas.','dolorem-sapiente-ut-id-alias','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(13,1,'Vel nulla iste illo.','Cumque esse dicta non dolore dolores qui voluptatem. Est nisi qui cum est enim tenetur voluptatum. Assumenda maiores neque aspernatur illum.','eos-et-nostrum-quis-aut-non-quidem-quia','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(14,1,'Qui sapiente.','Molestiae dolorem distinctio sed harum laborum maxime. Et et animi velit totam repudiandae eaque eius modi. Voluptatum reprehenderit aliquid quos ut est omnis. Officiis voluptas sunt dolorem eos.','itaque-enim-dolores-qui-reiciendis-quas-facilis','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(15,1,'Libero quae.','Ipsum facilis nihil delectus sunt dolores consequuntur veniam. Omnis quis quia eligendi est minus nostrum.','ex-impedit-neque-ea-rerum-vel-sapiente','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(16,1,'Fuga reiciendis sed.','Reprehenderit est aut dolor nisi beatae beatae. Qui et fuga vel. Qui rerum fugit nulla voluptatem debitis fugiat. Saepe qui iste quod libero qui.','quo-nostrum-minima-provident-at-aut-suscipit-autem','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(17,1,'Distinctio et.','Ducimus pariatur aut fuga nihil molestiae rerum. Ex quisquam facilis aliquam eum accusamus et. Culpa nostrum in accusantium quasi eos dolorem. Nisi rerum qui deleniti reprehenderit vel eveniet.','quo-quibusdam-corrupti-tenetur-ipsa-tenetur-sit-cupiditate-molestias','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(18,1,'Officiis sapiente.','Illo quod incidunt sint fuga. Harum autem omnis laborum quisquam. Vitae officiis dolorum officiis facere illum quibusdam earum.','eligendi-laudantium-vero-itaque-omnis-illo-provident','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(19,1,'Excepturi sint.','Omnis vero illum est amet sapiente magnam. Occaecati labore et earum earum ducimus. A repudiandae harum facilis neque quo.','aut-maiores-suscipit-molestiae-quisquam-omnis-quia-nisi','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(20,1,'Ea et nostrum.','Unde aut soluta officia est assumenda facilis. Voluptatem necessitatibus et adipisci. Sit harum ullam laboriosam dolorem eos cumque libero.','ipsa-animi-et-qui-est-modi','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(21,1,'Labore eos commodi.','Quia ut qui ad. Est cum ducimus nihil. Ad eos possimus facere ipsum animi consectetur fuga.','ut-qui-quis-eos-illum-et-quos-laboriosam','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(22,1,'Vitae esse expedita.','Temporibus culpa non aut dolores. Eum labore iure voluptatem placeat doloribus. Aliquam aperiam voluptatibus est beatae ut.','qui-vel-nobis-consequuntur-repellendus-qui','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(23,1,'Nostrum molestiae.','Dolor cumque facilis a deserunt magni. Voluptas libero necessitatibus itaque quis hic. Hic magni exercitationem alias qui autem. Et saepe repellendus repudiandae est. Quaerat eius et voluptatem.','sed-sequi-consectetur-ea-ut','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(24,1,'Et sed impedit.','Distinctio aut dolores temporibus non officiis eos. Impedit deserunt pariatur quod et eaque. Dolor molestias eum doloribus recusandae est voluptatem laborum.','vel-soluta-quasi-saepe-consectetur','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(25,1,'In assumenda quae.','Vel dolorum similique adipisci nobis sed maiores qui beatae. Et exercitationem consequuntur sed ex eveniet. Natus eos nam autem enim odio.','corporis-id-sint-dolore-aut-quas-laudantium-minus-recusandae','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(26,1,'Sunt amet hic.','Doloribus sed hic consequatur est et. Facilis saepe maxime autem libero non est provident laborum. Dicta quia et assumenda aut earum.','omnis-et-magni-nemo-recusandae-eum-quisquam-iusto','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(27,1,'Est nostrum fugiat.','Et est eum in est velit. Veniam qui similique qui rerum sapiente soluta nisi. Commodi qui facilis eligendi illum. Autem perferendis occaecati ipsam ipsa. Tenetur sit totam odit laborum.','sapiente-et-aliquam-ut-voluptatum-dignissimos','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(28,1,'Odit ut tempora.','Perferendis omnis vero ut dolor ipsam. Quis veritatis porro recusandae animi. Sed sunt dolorum porro consequuntur autem ut minima. Ipsam error natus est nulla.','vel-ut-odit-quod','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(29,1,'Et voluptatem.','Eligendi unde officia accusantium. Sequi omnis quos totam quia.','qui-eius-saepe-in-est-dolore','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(30,1,'Ut doloribus quo in.','Non saepe quo cumque et et sit nihil. Dolor quidem praesentium et labore nesciunt qui iure. Culpa mollitia sunt repudiandae optio id aut.','voluptatem-neque-dolores-sed-quia-aut-cumque-in','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(31,1,'Sunt ea velit.','Distinctio commodi molestias pariatur ducimus. Et voluptate dolore ad ducimus at. Neque nobis quasi dolor molestias nemo. Architecto occaecati distinctio quod architecto est.','omnis-iure-non-libero-enim','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(32,1,'Eos nemo aliquam in.','Aut aliquam et officia explicabo hic. Autem explicabo pariatur illo pariatur. Dolores reiciendis veniam voluptatem earum aut. Et eos enim inventore.','dolor-doloribus-dolorem-qui-molestias','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(33,1,'In ut tempora.','Laborum laudantium quaerat maxime repellendus. Voluptate laborum quos deserunt voluptates. Quam eos sint omnis suscipit et.','excepturi-laborum-illum-sed-et-consequatur-velit-in','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(34,1,'Quibusdam fuga.','Eius eos sunt molestiae veritatis eos. Et enim voluptatem vitae neque voluptatem necessitatibus et. Velit molestiae distinctio quia voluptates illum illo.','beatae-sunt-aut-provident-omnis-dolorem','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(35,1,'Animi vero harum.','Quam distinctio veniam maiores sint consequatur quia. Vitae dolor autem dolores eius corrupti. Corrupti inventore ad inventore. Qui quia dolorem deleniti. Sunt recusandae optio repellendus.','nostrum-laudantium-modi-illo-et','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(36,1,'Repellat voluptatem.','Quasi quos consequatur enim est praesentium. Ex consectetur aut vel quaerat omnis. Qui facere illum fugit et consequatur sunt.','quisquam-numquam-aliquam-doloribus-et-vero-est-sequi','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(37,1,'Molestias.','Ut ea culpa fuga ipsam. Natus non maxime deserunt est et. Culpa iure consequatur est quia quia quibusdam. Quia tempora esse officiis dolor non eum. Enim non officia quam ut.','molestias-et-a-vero-dicta-amet-ut-molestiae-sed','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(38,1,'Voluptatem.','Ut eaque et debitis placeat ut. Qui molestias cupiditate minima. Porro et sapiente illum dicta quas. Dolorem necessitatibus nesciunt exercitationem nihil.','quam-ipsam-nihil-quis-minima-omnis','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(39,1,'Et dolore esse vel.','Hic a quo repudiandae eius inventore sed ut ipsam. Atque suscipit et nisi placeat aspernatur laudantium dignissimos.','tenetur-neque-et-magnam-magni-qui-quis-ut','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(40,1,'Sed excepturi quia.','Quaerat sit voluptate cumque quos corrupti. Quasi voluptate aut perspiciatis maiores. Voluptatibus quasi tempore vel voluptatibus dolorem excepturi distinctio fugit. Illum quia quo ad nihil quidem.','minus-sit-quasi-nihil-quia-et-voluptatum','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(41,1,'Numquam alias sequi.','Quo rem et dolorem et numquam quod explicabo. Accusamus iure omnis ex vero eos odit. Laborum enim est earum eveniet in.','facere-pariatur-aspernatur-qui','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(42,1,'In consequatur qui.','Adipisci doloremque dolores aut ullam laborum mollitia ut. Numquam voluptatum voluptatem quia omnis sed. Consequatur ex ipsa a accusamus aperiam rerum sint.','inventore-nisi-et-sed-incidunt-maxime-non-ratione','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(43,1,'Assumenda itaque.','Quidem non vel suscipit officiis saepe. Ratione consequatur corporis voluptatem praesentium atque reprehenderit. Modi eos libero rerum autem architecto tenetur ad.','molestias-et-ratione-est-odit-non-ipsa-sunt','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(44,1,'Dolorem occaecati.','Asperiores voluptate nihil natus quae accusantium ullam voluptatem laborum. Blanditiis dolor dolore dolorem voluptatem. Ipsam quibusdam minima doloribus.','exercitationem-est-omnis-eaque-quod-ut-eum','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(45,1,'Ut fugiat dolor et.','Quo distinctio a deserunt quis. Laborum in ea architecto consequatur. Qui similique sit quod quaerat voluptas magni accusantium. Et dolore impedit est.','cum-amet-placeat-alias-sed-consequuntur-distinctio-consequatur','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(46,1,'Temporibus rerum.','Voluptate quod officiis mollitia harum placeat itaque qui sed. Ex vitae natus expedita. Tenetur omnis unde rerum et officiis neque et. Odio ab voluptatibus qui dolores et sunt est fugit.','quam-repellat-suscipit-architecto-ab','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(47,1,'Aliquid aut non.','Sed est itaque qui voluptas et deleniti laborum. Non laborum quis sapiente ea excepturi numquam. Eveniet sed a voluptas necessitatibus est.','ut-provident-voluptatem-debitis-est','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(48,1,'Ea in id et.','Maiores iusto in ut beatae. Neque et sit qui dolorem dolorum mollitia quam. Error perspiciatis a perspiciatis autem iure. Velit nam odio velit sunt quos quisquam aspernatur.','vitae-quaerat-explicabo-ut-non-delectus','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(49,1,'Enim nemo.','Commodi illum blanditiis expedita eum a aut et. In quia voluptatibus labore hic neque tempore voluptatibus. Quisquam autem eum molestias et. Distinctio quaerat alias quo optio architecto ad.','omnis-fuga-molestias-saepe-ullam','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL),(50,1,'Dicta veniam.','Molestiae harum velit porro soluta omnis. Est sit molestiae minima et nulla.','tempora-consequatur-et-vero-at','2020-01-29 00:59:06','2020-01-29 00:59:06',NULL);
/*!40000 ALTER TABLE `threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `github_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` smallint(5) unsigned NOT NULL DEFAULT '1',
  `bio` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `banned_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_email_index` (`email`),
  KEY `users_username_index` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'70100','marjory95','john@example.com','John Doe','2020-01-29 00:59:06','2020-01-29 00:59:06','AfO8LB03ENdlXZFYZnkFQkvKb5Davy8lvedPrgw9eAYnp0VuujGaBuRpBjNM',1,'25b87b988d43b77c074fd5d590dce648','johndoe','$2y$10$tM93U9anMh1Vw0lfy1dyJeBaGcWZ8z8kY6vfdTesq3ic1TTtmZVTO',3,'Aut laborum ut accusantium et ea commodi.',NULL);
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

-- Dump completed on 2020-01-29  4:22:58
