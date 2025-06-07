-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: recommendationsystem
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `release_date` date DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `artist_id` int NOT NULL,
  PRIMARY KEY (`album_id`),
  KEY `artist_id` (`artist_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Sweetener','2018-08-17','pop',1),(2,'A Night at the Opera','1975-11-21','rock',2),(3,'Scorpion','2018-06-29','hip-hop',3),(4,'Kind of Blue','1959-08-17','jazz',4),(5,'Symphony No. 9','1824-05-07','classical',5),(6,'1989','2014-10-27','country',6),(7,'Happier Than Ever','2021-07-30','pop',7),(8,'Abbey Road','1969-09-26','rock',8),(9,'Laundry Service','2001-11-13','latin',9),(10,'True','2013-09-13','EDM',10),(11,'Starboy','2016-11-25','R&B',11),(12,'Graduation','2007-09-11','hip-hop',12),(13,'21','2011-01-24','pop',13),(14,'Master of Puppets','1986-03-03','metal',14),(15,'Midnight','2008-02-19','indie',15);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artists` (
  `artist_id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `popularity` int DEFAULT '0',
  PRIMARY KEY (`artist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artists`
--

LOCK TABLES `artists` WRITE;
/*!40000 ALTER TABLE `artists` DISABLE KEYS */;
INSERT INTO `artists` VALUES (1,'Ariana Grande','pop',95),(2,'Queen','rock',90),(3,'Drake','hip-hop',92),(4,'Miles Davis','jazz',88),(5,'Beethoven','classical',98),(6,'Taylor Swift','country',94),(7,'Rihana','pop',93),(8,'The Beatles','rock',100),(9,'Shakira','latin',89),(10,'Avicii','EDM',91),(11,'The Weeknd','R&B',92),(12,'Kanye West','hip-hop',89),(13,'Adele','pop',94),(14,'Metallica','metal',96),(15,'Eminem','indie',87);
/*!40000 ALTER TABLE `artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `genrerecommendations`
--

DROP TABLE IF EXISTS `genrerecommendations`;
/*!50001 DROP VIEW IF EXISTS `genrerecommendations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `genrerecommendations` AS SELECT 
 1 AS `track_id`,
 1 AS `title`,
 1 AS `artist_name`,
 1 AS `genre_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genres` (
  `genre_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`genre_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (12,'blues'),(5,'classical'),(6,'country'),(8,'EDM'),(15,'electronic'),(14,'folk'),(3,'hip-hop'),(10,'indie'),(4,'jazz'),(7,'latin'),(11,'metal'),(1,'pop'),(9,'R&B'),(13,'reggae'),(2,'rock');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `mostlikedtracks`
--

DROP TABLE IF EXISTS `mostlikedtracks`;
/*!50001 DROP VIEW IF EXISTS `mostlikedtracks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mostlikedtracks` AS SELECT 
 1 AS `track_id`,
 1 AS `title`,
 1 AS `artist_name`,
 1 AS `genre_name`,
 1 AS `like_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `personalizedrecommendations`
--

DROP TABLE IF EXISTS `personalizedrecommendations`;
/*!50001 DROP VIEW IF EXISTS `personalizedrecommendations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `personalizedrecommendations` AS SELECT 
 1 AS `track_id`,
 1 AS `title`,
 1 AS `artist_name`,
 1 AS `genre_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `playlist_tracks`
--

DROP TABLE IF EXISTS `playlist_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_tracks` (
  `playlist_id` int NOT NULL,
  `track_id` int NOT NULL,
  PRIMARY KEY (`playlist_id`,`track_id`),
  KEY `track_id` (`track_id`),
  CONSTRAINT `playlist_tracks_ibfk_1` FOREIGN KEY (`playlist_id`) REFERENCES `playlists` (`playlist_id`),
  CONSTRAINT `playlist_tracks_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_tracks`
--

LOCK TABLES `playlist_tracks` WRITE;
/*!40000 ALTER TABLE `playlist_tracks` DISABLE KEYS */;
INSERT INTO `playlist_tracks` VALUES (7,1),(1,2),(3,3),(7,4),(1,5),(5,6),(3,7),(2,8),(6,9),(5,10),(4,11),(2,12),(6,13),(8,14),(4,15);
/*!40000 ALTER TABLE `playlist_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `playlist_id` int NOT NULL,
  `user_id` int NOT NULL,
  `playlist_name` varchar(150) NOT NULL,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_public` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`playlist_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `playlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (1,1,'Pop Hits','2024-01-01 15:00:00',1),(2,2,'Rock Classics','2024-01-02 16:00:00',0),(3,3,'Hip Hop Vibes','2024-01-03 17:00:00',1),(4,4,'Jazz Essentials','2024-01-04 18:00:00',0),(5,5,'Classical Relax','2024-01-05 19:00:00',1),(6,6,'Country Favourites','2024-01-06 20:00:00',0),(7,7,'Billie\'s Picks','2024-01-07 21:00:00',1),(8,8,'Beatles Collection','2024-01-08 22:00:00',0),(9,9,'Latin Grooves','2024-01-09 23:00:00',1),(10,10,'EDM Party','2024-01-11 00:00:00',0),(11,11,'R&B Classics','2024-01-12 01:00:00',1),(12,12,'Kanye\'s Greatest Hits','2024-01-13 02:00:00',0),(13,13,'Adele\'s Collection','2024-01-14 03:00:00',1),(14,14,'Heavy Metal Hits','2024-01-15 04:00:00',0),(15,15,'Indie Vibes','2024-01-15 05:00:00',1);
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recommendations`
--

DROP TABLE IF EXISTS `recommendations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommendations` (
  `recommendation_id` int NOT NULL,
  `user_id` int NOT NULL,
  `track_id` int NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`recommendation_id`),
  KEY `track_id` (`track_id`),
  KEY `idx_user_id_recommendations` (`user_id`),
  CONSTRAINT `recommendations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `recommendations_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`track_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommendations`
--

LOCK TABLES `recommendations` WRITE;
/*!40000 ALTER TABLE `recommendations` DISABLE KEYS */;
INSERT INTO `recommendations` VALUES (1,1,2,'Recommended based on your recent listening to similar tracks in the Pop genre.'),(2,1,5,'Suggested because you frequently listen to tracks by Artist A, and this is from their latest album.'),(3,2,8,'Recommended because you liked tracks from the Indie genre, and this track fits your taste.'),(4,2,12,'You have liked tracks with a similar beat and tempo, so we think you might enjoy this one.'),(5,3,3,'This track is similar to your favorite track by Artist B, we think you’ll like it.'),(6,3,7,'Based on your playlist preferences, we suggest this track from a popular album in your favorite genre.'),(7,4,11,'Popular among users who enjoy the same genres and artists as you.'),(8,4,15,'This track is highly rated by users in your location and shares a similar style to your most played tracks.'),(9,5,6,'Recommended because this track is trending in the genre you listen to most often.'),(10,5,10,'We noticed that you like upbeat tracks, and this one has a similar rhythm.'),(11,6,13,'Suggested based on your repeated interaction with tracks from the Rock genre.'),(12,6,9,'You’ve liked tracks from this album before, so we think this track will match your preferences.'),(13,7,1,'Recommended for you based on your previous listens from Artist C.'),(14,7,4,'You tend to listen to tracks with a similar vibe to this, based on your recent plays.'),(15,8,14,'Based on your top 5 most played tracks, we recommend this one for a similar feel.');
/*!40000 ALTER TABLE `recommendations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `trackpopularity`
--

DROP TABLE IF EXISTS `trackpopularity`;
/*!50001 DROP VIEW IF EXISTS `trackpopularity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trackpopularity` AS SELECT 
 1 AS `track_id`,
 1 AS `title`,
 1 AS `interaction_count`,
 1 AS `avg_rating`,
 1 AS `like_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracks` (
  `track_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `genre_id` int NOT NULL,
  `artist_id` int NOT NULL,
  `album_id` int DEFAULT NULL,
  `mood` varchar(50) DEFAULT NULL,
  `track_length` int DEFAULT NULL,
  PRIMARY KEY (`track_id`),
  KEY `album_id` (`album_id`),
  KEY `idx_artist_id` (`artist_id`),
  KEY `idx_genre_id` (`genre_id`),
  CONSTRAINT `tracks_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `tracks_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`),
  CONSTRAINT `tracks_ibfk_3` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES (1,'Come Together',1,1,1,'Happy',210),(2,'Something',1,1,1,'Sad',180),(3,'Into You',2,2,2,'Energetic',240),(4,'7 Rings',2,2,2,'Relaxed',200),(5,'So What',3,3,3,'Happy',230),(6,'Freddie Freeloader',3,3,3,'Sad',220),(7,'Für Elise',2,3,4,'Energetic',250),(8,'Symphony No. 9',4,4,4,'Relaxed',210),(9,'HUMBLE.',5,5,5,'Happy',300),(10,'DNA.',5,5,5,'Relaxed',270),(11,'No Woman, No Cry',8,5,5,'Sad',260),(12,'One Love',6,6,6,'Happy',215),(13,'Mannish Boy',5,5,7,'Energetic',230),(14,'Got Lucky',8,8,8,'Relaxed',180),(15,'Ring of Fire',9,9,9,'Angry',195);
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_track_interactions` AFTER DELETE ON `tracks` FOR EACH ROW DELETE FROM user_interactions
    WHERE track_id = OLD.track_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_interactions`
--

DROP TABLE IF EXISTS `user_interactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_interactions` (
  `interaction_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `track_id` int NOT NULL,
  `interaction_type` enum('play','skip','repeat') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` tinyint(1) DEFAULT '0',
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  PRIMARY KEY (`interaction_id`),
  KEY `idx_rating` (`rating`),
  KEY `idx_track_id` (`track_id`),
  KEY `idx_user_id` (`user_id`),
  CONSTRAINT `user_interactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_interactions_ibfk_2` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`track_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_interactions`
--

LOCK TABLES `user_interactions` WRITE;
/*!40000 ALTER TABLE `user_interactions` DISABLE KEYS */;
INSERT INTO `user_interactions` VALUES (1,1,1,'play','2024-01-01 15:05:00',1,'3'),(2,6,2,'skip','2024-01-02 16:10:00',0,'5'),(3,3,3,'skip','2024-01-03 17:15:00',0,'1'),(4,4,4,'repeat','2024-01-04 18:20:00',0,'1'),(5,5,1,'play','2024-01-05 19:25:00',1,'2'),(6,6,6,'play','2024-01-06 20:30:00',0,'3'),(7,7,7,'skip','2024-01-07 21:35:00',1,'5'),(8,6,8,'repeat','2024-01-08 22:40:00',1,'5'),(9,9,9,'play','2024-01-09 23:45:00',0,'2'),(10,10,10,'play','2024-01-11 00:50:00',1,'3'),(11,1,1,'skip','2024-01-12 01:55:00',1,'5'),(12,12,12,'repeat','2024-01-13 02:00:00',0,'5'),(13,13,13,'play','2024-01-14 03:05:00',0,'5'),(14,1,3,'repeat','2024-01-15 04:10:00',1,'4'),(15,6,3,'skip','2024-01-15 05:15:00',1,'3');
/*!40000 ALTER TABLE `user_interactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `validate_rating` BEFORE INSERT ON `user_interactions` FOR EACH ROW SET NEW.rating = CASE 
        WHEN NEW.rating < 1 THEN 1
        WHEN NEW.rating > 5 THEN 5
        ELSE NEW.rating
    END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `age` int DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `preferences` json DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  CONSTRAINT `users_chk_1` CHECK ((`age` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice','alice@example.com',25,'New York','{\"genre\": \"pop\", \"artist\": \"Ariana Grande\"}'),(2,'Bob','bob@example.com',30,'San Francisco','{\"genre\": \"rock\", \"artist\": \"Queen\"}'),(3,'Charlie','charlie@example.com',20,'Chicago','{\"genre\": \"hip-hop\", \"artist\": \"Drake\"}'),(4,'Diana','diana@example.com',28,'Boston','{\"genre\": \"jazz\", \"artist\": \"Miles Davis\"}'),(5,'Eve','eve@example.com',35,'Austin','{\"genre\": \"classical\", \"artist\": \"Beethoven\"}'),(6,'Frank','frank@example.com',27,'Seattle','{\"genre\": \"country\", \"artist\": \"Taylor Swift\"}'),(7,'Grace','grace@example.com',22,'Atlanta','{\"genre\": \"pop\", \"artist\": \"Billie Eilish\"}'),(8,'Hank','hank@example.com',31,'Denver','{\"genre\": \"rock\", \"artist\": \"The Beatles\"}'),(9,'Ivy','ivy@example.com',24,'Miami','{\"genre\": \"latin\", \"artist\": \"Shakira\"}'),(10,'Jack','jack@example.com',29,'Houston','{\"genre\": \"EDM\", \"artist\": \"Avicii\"}'),(11,'Kate','kate@example.com',26,'San Diego','{\"genre\": \"R&B\", \"artist\": \"The Weeknd\"}'),(12,'Liam','liam@example.com',33,'Las Vegas','{\"genre\": \"hip-hop\", \"artist\": \"Kanye West\"}'),(13,'Mia','mia@example.com',21,'Orlando','{\"genre\": \"pop\", \"artist\": \"Adele\"}'),(14,'Noah','noah@example.com',32,'Phoenix','{\"genre\": \"metal\", \"artist\": \"Metallica\"}'),(15,'Olivia','olivia@example.com',23,'Philadelphia','{\"genre\": \"indie\", \"artist\": \"Bon Iver\"}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_user_interactions` AFTER DELETE ON `users` FOR EACH ROW DELETE FROM user_interactions
    WHERE user_id = OLD.user_id */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'recommendationsystem'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetSimilarTracks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSimilarTracks`(IN trackId INT)
SELECT T.track_id, T.title, A.name AS Artist, G.name AS Genre
    FROM tracks T
    JOIN genres G ON T.genre_id = G.genre_id
    JOIN artists A ON T.artist_id = A.artist_id
    WHERE T.genre_id = (SELECT genre_id FROM tracks WHERE track_id = trackId)
      AND T.artist_id = (SELECT artist_id FROM tracks WHERE track_id = trackId)
      AND T.track_id != trackId  
    ORDER BY T.track_id  
    LIMIT 10 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrackRecommendationsByAlbum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrackRecommendationsByAlbum`(IN track_id_param INT)
SELECT T.track_id, T.title, A.name AS artist, G.name AS Genre, Al.album_id AS Album
    FROM tracks T
    JOIN genres G ON T.genre_id = G.genre_id
    JOIN artists A ON T.artist_id = A.artist_id
    JOIN albums Al ON T.album_id = Al.album_id
    WHERE T.album_id = (SELECT album_id FROM tracks WHERE track_id = track_id_param)
    AND T.track_id != track_id_param  
    ORDER BY RAND() LIMIT 10 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrackRecommendationsByArtistGenreAlbum` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrackRecommendationsByArtistGenreAlbum`(
    IN artistId INT, 
    IN genreId INT, 
    IN albumId INT
)
SELECT 
    T.track_id, 
    T.title, 
    A.name AS artist, 
    G.name AS genre, 
    Al.album_id AS album  -- Returning the album_id since there's no album_name column
FROM tracks T
JOIN artists A ON T.artist_id = A.artist_id
JOIN genres G ON T.genre_id = G.genre_id
JOIN albums Al ON T.album_id = Al.album_id
WHERE T.artist_id = artistId 
  AND T.genre_id = genreId 
  AND T.album_id = albumId ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrackRecommendationsByGenre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrackRecommendationsByGenre`(IN userGenre VARCHAR(255))
SELECT T.track_id, T.title, A.name AS Artist, G.name AS Genre
    FROM tracks T
    JOIN genres G ON T.genre_id = G.genre_id
    JOIN artists A ON T.artist_id = A.artist_id
    WHERE G.name = userGenre
    ORDER BY RAND() LIMIT 10 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrackRecommendationsByLikes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrackRecommendationsByLikes`(IN user_id INT)
SELECT T.track_id, T.title, A.name AS artist, G.name AS genre
FROM tracks T
JOIN genres G ON T.genre_id = G.genre_id
JOIN artists A ON T.artist_id = A.artist_id
WHERE T.track_id IN (
    SELECT track_id
    FROM user_interactions
    WHERE user_id = user_id AND `likes` = TRUE
)
ORDER BY RAND() LIMIT 10 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrackRecommendationsByMood` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrackRecommendationsByMood`(IN mood VARCHAR(50))
SELECT T.track_id, T.title, A.name AS artist, G.name AS genre
    FROM tracks T
    JOIN genres G ON T.genre_id = G.genre_id
    JOIN artists A ON T.artist_id = A.artist_id
    WHERE T.mood = mood
    ORDER BY RAND() LIMIT 10 ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTrackRecommendationsByRatings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTrackRecommendationsByRatings`(IN userId INT, IN minRating INT)
BEGIN
    SELECT T.track_id, T.title, A.name AS artist, G.name AS genre
    FROM tracks T
    JOIN genres G ON T.genre_id = G.genre_id
    JOIN artists A ON T.artist_id = A.artist_id
    WHERE T.track_id IN (
        SELECT track_id
        FROM user_interactions
        WHERE user_id = userId AND rating >= minRating
    )
    ORDER BY T.track_id LIMIT 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTracksByArtist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTracksByArtist`(IN artistName VARCHAR(255))
SELECT T.track_id, T.title, A.name AS Artist, G.name AS Genre
    FROM tracks T
    JOIN artists A ON T.artist_id = A.artist_id
    JOIN genres G ON T.genre_id = G.genre_id
    WHERE A.name = artistName ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTracksByMultipleGenres` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTracksByMultipleGenres`(IN genreNames TEXT)
SELECT T.track_id, T.title, A.name AS Artist, G.name AS Genre
    FROM tracks T
    JOIN genres G ON T.genre_id = G.genre_id
    JOIN artists A ON T.artist_id = A.artist_id
    WHERE FIND_IN_SET(G.name, genreNames) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `genrerecommendations`
--

/*!50001 DROP VIEW IF EXISTS `genrerecommendations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `genrerecommendations` AS select `t`.`track_id` AS `track_id`,`t`.`title` AS `title`,`a`.`name` AS `artist_name`,`g`.`name` AS `genre_name` from ((`tracks` `t` join `genres` `g` on((`t`.`genre_id` = `g`.`genre_id`))) join `artists` `a` on((`t`.`artist_id` = `a`.`artist_id`))) where `g`.`genre_id` in (select `t`.`genre_id` from (`user_interactions` `ui` join `tracks` `t` on((`ui`.`track_id` = `t`.`track_id`))) where ((`ui`.`user_id` = 1) and (`ui`.`likes` = true))) order by rand() limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mostlikedtracks`
--

/*!50001 DROP VIEW IF EXISTS `mostlikedtracks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mostlikedtracks` AS select `t`.`track_id` AS `track_id`,`t`.`title` AS `title`,`a`.`name` AS `artist_name`,`g`.`name` AS `genre_name`,count(`ui`.`user_id`) AS `like_count` from (((`tracks` `t` join `user_interactions` `ui` on((`t`.`track_id` = `ui`.`track_id`))) join `artists` `a` on((`t`.`artist_id` = `a`.`artist_id`))) join `genres` `g` on((`t`.`genre_id` = `g`.`genre_id`))) where (`ui`.`likes` = true) group by `t`.`track_id` order by `like_count` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `personalizedrecommendations`
--

/*!50001 DROP VIEW IF EXISTS `personalizedrecommendations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `personalizedrecommendations` AS select `t`.`track_id` AS `track_id`,`t`.`title` AS `title`,`a`.`name` AS `artist_name`,`g`.`name` AS `genre_name` from (((`tracks` `t` join `user_interactions` `ui` on((`t`.`track_id` = `ui`.`track_id`))) join `artists` `a` on((`t`.`artist_id` = `a`.`artist_id`))) join `genres` `g` on((`t`.`genre_id` = `g`.`genre_id`))) where ((`ui`.`user_id` = 6) and ((`ui`.`likes` = true) or (`ui`.`rating` >= 4))) order by `ui`.`rating` desc,`ui`.`likes` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trackpopularity`
--

/*!50001 DROP VIEW IF EXISTS `trackpopularity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trackpopularity` AS select `t`.`track_id` AS `track_id`,`t`.`title` AS `title`,count(`ui`.`user_id`) AS `interaction_count`,avg((case when (`ui`.`rating` is not null) then `ui`.`rating` else NULL end)) AS `avg_rating`,sum((case when (`ui`.`likes` = true) then 1 else 0 end)) AS `like_count` from (`tracks` `t` left join `user_interactions` `ui` on((`t`.`track_id` = `ui`.`track_id`))) group by `t`.`track_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13 21:22:49
