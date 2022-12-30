-- MySQL dump 10.13  Distrib 8.0.31, for macos12.6 (arm64)
--
-- Host: localhost    Database: Mula
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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (2);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `question_snippet` text,
  `diagram` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'2022-12-18 19:55:09',NULL,'The expression $$\\frac{22+20}{2}$$ is equal to',''),(2,'2022-12-18 19:55:09',NULL,'The graph to the right shows the amount of money each of the four students donated to a school fundraiser. The total amount of money that they donated was','71660159-292e-4daf-ad7e-db71af54c06b'),(3,'2022-12-18 19:55:09',NULL,'The value of $$\\frac{1}{2} + \\frac{2}{4} + \\frac{4}{8} + \\frac{8}{16}$$ is',''),(4,'2022-12-18 19:55:09',NULL,'Which of the following numbers is closest to −3.4?',''),(5,'2022-12-18 19:55:09',NULL,'Points P, Q, R, and S are on a number line, as shown. The ratio of lengths P R : QS is:','f638823c-0087-4533-b740-e8a02c25b30e'),(6,'2022-12-20 04:44:06',NULL,'Robyn has 4 tasks to do and Sasha has 14 tasks to do. In order for Robyn and Sasha to do the same number of tasks, how many of Sasha’s tasks should Robyn do?',''),(7,'2022-12-20 04:46:15',NULL,'In the diagram, the lengths of four of the sides of the figure are shown in terms of $x$. Assuming that $x \\neq 0$, the perimeter of the figure is','fb52c0fc-bbfa-4a41-ad05-8b4704b4dc84'),(8,'2022-12-20 04:49:18',NULL,'A circular spinner is divided into $4$ sections, as shown. The angles at the center of the circle in the sections labeled Green and Blue each measure $90\\degree$. An arrow is attached to the centre of the spinner. The arrow is spun once. What is the probability that the arrow lands on either Red or Yellow?','0ec3deb5-6e57-4e2c-a9f5-bad0c6ce17a9'),(9,'2022-12-20 04:51:12',NULL,'The line with equation $y = 2x + b$ passes through the point $(−4, 0)$. The value of $b$ is',''),(10,'2022-12-25 20:08:07',NULL,'On the map shown, there are a number of routes from Mathville to Algebratown. Each route must travel along the roads in the direction marked by the arrows. The total number of routes from Mathville to Algebratown is\n','a45171d0-53f5-4f61-b4b8-2c5b606e2458'),(11,'2022-12-30 04:46:40',NULL,'In the diagram, points $P, Q, R,$ and $S$ are at intersections of gridlines in a $6 × 6$ grid. What is the perimeter of the parallelogram $PQRS$?','5b1b0372-8fc8-4c33-9622-ffc282610030'),(12,'2022-12-30 04:56:51',NULL,'How many of the integers from $1$ to $100$, inclusive, have at least one digit equal to $6$?',''),(13,'2022-12-30 05:03:26',NULL,'Mayar and Rosie are $90$ metres apart. Starting at the same time, they run towards each other. Mayar runs twice as fast as Rosie. How far has Mayar run when they meet?',''),(14,'2022-12-30 05:12:21',NULL,'Dhruv is older than Bev. Bev is older than Elcim. Elcim is younger than Andy. Andy is younger than Bev. Bev is younger than Cao. Who is the third oldest?',''),(15,'2022-12-30 05:17:02',NULL,'How many of the integers $19, 21, 23, 25, 27$ can be expressed as the sum of two prime numbers?',''),(16,'2022-12-30 05:30:18',NULL,'Alvin, Bingyi, and Cheska play a two-player game that never ends in a tie. In a recent tournament between the three players, a total of 60 games were played and each pair of players played the same number of games.\n\n• When Alvin and Bingyi played, Alvin won 20% of the games.\\\n• When Bingyi and Cheska played, Bingyi won 60% of the games. \\\n• When Cheska and Alvin played, Cheska won 40% of the games.\\\n\n\nHow many games did Bingyi win?',''),(17,'2022-12-30 05:39:44',NULL,'The integers $a, b$ and $c$ satisfy the equations $a+5 = b$ and $5+b = c$ and $b+c = a$. The value of $b$ is:',''),(18,'2022-12-30 05:52:40',NULL,'Five balls numbered $1$ to $5$, are placed in order on a table. A sequence of steps is performed on the balls. In step 1, the rightmost ball is picked up and put in the middle of the four remaining balls. (The remaining balls are shifted to make room for the inserted ball.) Then in step 2, the leftmost ball is picked up and put in the middle of the four remaining balls. These steps repeat, with the rightmost and leftmost balls alternately picked up and put in the middle of the four remaining balls. Immediately after step $N$, the balls are in the reverse of their original order. Which of the following is a possible value of $N$?','f1f57e4e-f063-40bf-8b44-95001919883d'),(19,'2022-12-30 06:06:37',NULL,'Miyuki texted a six-digit integer to Greer. Two of the digits of the six-digit integer were $3$s. Unfortunately, the two $3$s that Miyuki texted did not appear and Greer instead received the four-digit integer $2022$. The number of possible six-digit integers that Miyuki could have texted is\n',''),(20,'2022-12-30 06:23:36',NULL,'A pizza is cut into $10$ pieces. Two of the pieces are each $\\frac{1}{24}$ of the whole pizza, four $\\frac{1}{12}$ are each $1$, two are each $\\frac{1}{8}$, and two are each $\\frac{1}{6}$. A group of $n$ friends shares the pizza by distributing all of these pieces. They do not cut any of these pieces. Each of the $n$ friends receives, in total, an equal fraction of the whole pizza. The sum of the values of n with $2≤n≤10$ for which this is not possible is:\n',''),(21,'2022-12-30 06:37:43',NULL,'A $5$ cm by $5$ cm pegboard and a $10$ cm by $10$ cm pegboard each have holes at the intersection of invisible horizontal and vertical lines that occur in $1$ cm intervals from each edge. Pegs are placed into the holes on the two main diagonals of both pegboards. The $5$ cm by $5$ cm pegboard is shown; it has $16$ holes. The $8$ shaded holes have pegs, and the $8$ unshaded holes do not. How many empty holes does the $10$ cm by $10$ cm pegboard have?','6637c62c-99dc-4a67-9fc9-7a3c3df4e639'),(22,'2022-12-30 07:03:35',NULL,'What is the integer formed by the rightmost two digits of the integer equal to $4^{127} + 5^{129} + 7^{131}$?','');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_details`
--

DROP TABLE IF EXISTS `question_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `part_type` char(1) DEFAULT NULL,
  `part_number` int DEFAULT NULL,
  `part_size` int DEFAULT NULL,
  `subject` char(100) DEFAULT NULL,
  `topic` char(100) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`),
  CONSTRAINT `fk_details_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_details`
--

LOCK TABLES `question_details` WRITE;
/*!40000 ALTER TABLE `question_details` DISABLE KEYS */;
INSERT INTO `question_details` VALUES (1,'2022-12-18 19:55:09',NULL,9,'A',1,10,'','',1),(2,'2022-12-18 19:55:09',NULL,9,'A',2,10,'Graph','Bar Graph',2),(3,'2022-12-18 19:55:09',NULL,9,'A',3,10,'arithmetic','fraction',3),(4,'2022-12-18 19:55:09',NULL,9,'A',4,10,'number sense','number line',4),(5,'2022-12-18 19:55:09',NULL,9,'A',5,10,'ratios','ratios',5),(6,'2022-12-20 04:44:06',NULL,9,'A',6,10,'','',6),(7,'2022-12-20 04:46:15',NULL,9,'A',7,10,'algebra','',7),(8,'2022-12-20 04:49:18',NULL,9,'A',8,10,'probability','',8),(9,'2022-12-20 04:51:12',NULL,9,'A',9,10,'algebra','slope intercept',9),(10,'2022-12-25 20:08:07',NULL,10,'A',10,10,'Combinations','Graph',10),(11,'2022-12-30 04:46:40',NULL,9,'B',1,10,'Geometry','Perimeter',11),(12,'2022-12-30 04:56:51',NULL,9,'B',2,10,'Number Sense','',12),(13,'2022-12-30 05:03:26',NULL,9,'B',3,10,'Physics','',13),(14,'2022-12-30 05:12:21',NULL,9,'B',4,10,'Logic','',14),(15,'2022-12-30 05:17:02',NULL,9,'B',5,10,'Number Sense','Arithmetic',15),(16,'2022-12-30 05:30:18',NULL,9,'B',6,10,'Number Sense','Percentage',16),(17,'2022-12-30 05:39:44',NULL,9,'B',7,10,'Algebra','Equation',17),(18,'2022-12-30 05:52:40',NULL,9,'B',8,10,'Game Theory','',18),(19,'2022-12-30 06:06:37',NULL,9,'B',9,10,'Counting','',19),(20,'2022-12-30 06:23:36',NULL,9,'B',10,10,'','',20),(21,'2022-12-30 06:37:43',NULL,9,'C',1,5,'TODO','',21),(22,'2022-12-30 07:03:35',NULL,9,'C',2,10,'arithmetic','powers',22);
/*!40000 ALTER TABLE `question_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_hints`
--

DROP TABLE IF EXISTS `question_hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_hints` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hint_one` varchar(100) DEFAULT NULL,
  `hint_two` varchar(100) DEFAULT NULL,
  `hint_three` varchar(100) DEFAULT NULL,
  `hint_four` varchar(100) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`),
  CONSTRAINT `fk_hints_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_hints`
--

LOCK TABLES `question_hints` WRITE;
/*!40000 ALTER TABLE `question_hints` DISABLE KEYS */;
INSERT INTO `question_hints` VALUES (1,'2022-12-18 19:55:09',NULL,'','','','',1),(2,'2022-12-18 19:55:09',NULL,'','','','',2),(3,'2022-12-18 19:55:09',NULL,'','','','',3),(4,'2022-12-18 19:55:09',NULL,'','','','',4),(5,'2022-12-18 19:55:09',NULL,'','','','',5),(6,'2022-12-20 04:44:06',NULL,'','','','',6),(7,'2022-12-20 04:46:15',NULL,'','','','',7),(8,'2022-12-20 04:49:18',NULL,'','','','',8),(9,'2022-12-20 04:51:13',NULL,'','','','',9),(10,'2022-12-25 20:08:07',NULL,'','','','',10),(11,'2022-12-30 04:46:40',NULL,'','','','',11),(12,'2022-12-30 04:56:51',NULL,'','','','',12),(13,'2022-12-30 05:03:26',NULL,'','','','',13),(14,'2022-12-30 05:12:21',NULL,'','','','',14),(15,'2022-12-30 05:17:02',NULL,'','','','',15),(16,'2022-12-30 05:30:18',NULL,'','','','',16),(17,'2022-12-30 05:39:44',NULL,'','','','',17),(18,'2022-12-30 05:52:40',NULL,'','','','',18),(19,'2022-12-30 06:06:37',NULL,'','','','',19),(20,'2022-12-30 06:23:36',NULL,'','','','',20),(21,'2022-12-30 06:37:43',NULL,'','','','',21),(22,'2022-12-30 07:03:35',NULL,'','','','',22);
/*!40000 ALTER TABLE `question_hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_options`
--

DROP TABLE IF EXISTS `question_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `option_a` varchar(100) DEFAULT NULL,
  `option_b` varchar(100) DEFAULT NULL,
  `option_c` varchar(100) DEFAULT NULL,
  `option_d` varchar(100) DEFAULT NULL,
  `option_e` varchar(100) DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`),
  CONSTRAINT `fk_option_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_options`
--

LOCK TABLES `question_options` WRITE;
/*!40000 ALTER TABLE `question_options` DISABLE KEYS */;
INSERT INTO `question_options` VALUES (1,'2022-12-18 19:55:09',NULL,'$1$','$4$','$20$','$21$','$22$',1),(2,'2022-12-18 19:55:09',NULL,'$$\\$20$$','$$\\$18$$','$$\\$16$$','$$\\$14$$','$$\\$22$$',2),(3,'2022-12-18 19:55:09',NULL,'$\\frac{1}{4}$','$\\frac{1}{2}$','$0$','$4$','$2$',3),(4,'2022-12-18 19:55:09',NULL,'$-4$','$-3$','$0$','$3$','$4$',4),(5,'2022-12-18 19:55:09',NULL,'$7:12$','$10:17$','$1:1$','$5:12$','$7:17$',5),(6,'2022-12-20 04:44:06',NULL,'$6$','$4$','$5$','$7$','$2$',6),(7,'2022-12-20 04:46:15',NULL,'$8x$','$9x$','$12x$','$11x$','$10x$',7),(8,'2022-12-20 04:49:18',NULL,'$\\frac{1}{8}$','$\\frac{1}{4}$','$\\frac{3}{8}$','$\\frac{1}{2}$','$\\frac{3}{4}$',8),(9,'2022-12-20 04:51:12',NULL,'$\\frac{1}{2}$','$1$','$2$','$4$','$8$',9),(10,'2022-12-25 20:08:07',NULL,'$3$','$4$','$8$','$6$','$10$',10),(11,'2022-12-30 04:46:40',NULL,'$14$','$15$','$16$','$17$','$18$',11),(12,'2022-12-30 04:56:51',NULL,'$17$','$18$','$19$','$21$','$22$',12),(13,'2022-12-30 05:03:26',NULL,'$15$m','$30$m','$45$m','$60$m','$75$m',13),(14,'2022-12-30 05:12:21',NULL,'Andy','Bev','Cao','Dhruv','Elcim',14),(15,'2022-12-30 05:17:02',NULL,'$3$','$4$','$1$','$2$','$5$',15),(16,'2022-12-30 05:30:18',NULL,'$12$','$24$','$28$','$30$','$36$',16),(17,'2022-12-30 05:39:44',NULL,'$−30$','$−20$','$−10$','$0$','$5$',17),(18,'2022-12-30 05:52:40',NULL,'$2020$','$2028$','$2031$','$2027$','$2025$',18),(19,'2022-12-30 06:06:37',NULL,'$20$','$10$','$5$','$25$','$15$',19),(20,'2022-12-30 06:23:36',NULL,'$31$','$35$','$40$','$39$','$36$',20),(21,'2022-12-30 06:37:43',NULL,'$49$','$32$','$64$','$62$','$81$',21),(22,'2022-12-30 07:03:35',NULL,'$31$','$19$','$54$','$78$','$52$',22);
/*!40000 ALTER TABLE `question_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_solutions`
--

DROP TABLE IF EXISTS `question_solutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_solutions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `correct_solution` varchar(100) DEFAULT NULL,
  `diagram` char(255) DEFAULT NULL,
  `explanation` text,
  `question_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `question_id` (`question_id`),
  CONSTRAINT `fk_solution_question_id` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_solutions`
--

LOCK TABLES `question_solutions` WRITE;
/*!40000 ALTER TABLE `question_solutions` DISABLE KEYS */;
INSERT INTO `question_solutions` VALUES (1,'2022-12-18 19:55:09',NULL,'$21$','','',1),(2,'2022-12-18 19:55:09',NULL,'$$\\$18$$','','From the graph, we see that Haofei donated \\$2, Mike donated \\$6, Pierre donated \\$2, and Ritika donated \\$8. In total, the four students donated \\$2 + \\$6 + \\$2 + \\$8 = \\$18',2),(3,'2022-12-18 19:55:09',NULL,'$2$','','In the given sum, each of the four fractions is equivalent to $\\frac{1}{2}$. Therefore, the given sum is equal to $$\\frac{1}{2} + \\frac{1}{2} + \\frac{1}{2} + \\frac{1}{2} = 2$$',3),(4,'2022-12-18 19:55:09',NULL,'$-3$','92f6f713-24c0-465e-9981-a2791a68d11e','On a number line, −3.4 is between −4 and −3.\nThis means that −3.4 is closer to −4 and −3 than to any of 0, 3 or 4, and so the answer must be −4 or −3.\nIf we start at −3 and move in the negative direction (that is, to the left), we reach −3.4 after moving 0.4 units.\nIt then takes an additional 0.6 units to move in the negative direction from −3.4 to −4. Therefore, −3.4 is closer to −3 than to −4, and so the answer is (B) or −3.\nAlternatively, when comparing −3, −4 and −3.4, we could note that −3.4 is between −3.5 and −3 and so is closer to −3:',4),(5,'2022-12-18 19:55:09',NULL,'$7:12$','',' From the diagram, $PR = 10−3 = 7$ and $QS = 17−5 = 12$ and so $PR:QS = 7:12$.',5),(6,'2022-12-20 04:44:06',NULL,'$5$','','Between them, Robyn and Sasha have $4 + 14 = 18$ tasks to do.\nIf each does the same number of tasks, each must do $18 ÷ 2 = 9$ tasks. This means that Robyn must do $9 − 4 = 5$ of Sasha’s tasks.',6),(7,'2022-12-20 04:46:15',NULL,'$10x$','f10eedad-0cd6-400b-887e-7e1f62f9b7e3','Because all of the angles in the figure are right angles, each line segment is either horizontal or vertical.\nThe height of the figure is $3x$ and the width of the figure is $2x$.\nThis means that the length of the unmarked vertical segment must equal $3x − x = 2x$.\nAlso, the length of the unmarked horizontal segment must equal $2x − x = x$.\nStarting in the top left corner and adding lengths in a clockwise direction, the perimeter is $x + 2x + x + x + 2x + 3x = 10x$.\n\nAlternatively, we can “complete the rectangle” by sliding the shortest horizontal side and the\nshortest vertical side as shown to form a rectangle with height $3x$ and width $2x$.\n\nThe perimeter of this rectangle is $2 × 2x + 2 × 3x = 10x$.',7),(8,'2022-12-20 04:49:18',NULL,'$\\frac{1}{2}$','','The total central angle in a circle is $360\\degree$. Since the Green section has an angle at the center of the circle of 90◦, this section corresponds \nto $\\frac{90\\degree}{360\\degree} = \\frac{1}{4} $ of the circle. This means that when the spinner is spun once, the probability that it lands on the Green\nsection is $\\frac{1}{4}$.\nSimilarly, the probability that the spinner lands on Blue is also $\\frac{1}{4}$.\nSince the spinner lands on one of the four colours, the probability that the spinner lands on either Red or Yellow is $1 − \\frac{1}{4} − \\frac{1}{4} = \\frac{1}{2}$.',8),(9,'2022-12-20 04:51:12',NULL,'$8$','','Since the line with equation $y = 2x + b$ passes through the point $(−4, 0)$, the coordinates of the point must satisfy the equation of the line.\nSubstituting $x = −4$ and $y = 0$ gives $0 = 2(−4) + b$ and so $0 = −8 + b$ which gives $b = 8$.\n',9),(10,'2022-12-25 20:08:07',NULL,'$8$','1d9d5209-8440-4f7b-b656-973f76cc5e46','We label Mathville as M, Algebratown as A, and the other intersection points of roads as shown. \n\nThere is 1 route from M to each of C and B: M → C and M → B. There are 3 routes to D: M → D and M → C → D and M → B → D. This means that there are 4 routes to F.\nSimilarly, there are 4 routes to E. \nFinally, there are 4 + 4 = 8 routes to A, since every route comes through either E or F, no route goes through both E and F, and there are 4 routes to each of E and F.\n\n',10),(11,'2022-12-30 04:46:40',NULL,'$16$','91cd26da-74d9-4739-884f-90c32a5ca2a1','Since the given grid is $6 × 6$, the size of each of the small squares is $1 × 1$. This means that $QR = PS = 3$.\nJoin $Q$ to $S$.\n\nSince $QS$ is vertical, and $QR$ and $PS$ are both horizontal, then $∠RQS = 90◦$ and $∠PSQ = 90◦$. We note further that $QS = 4$.\nSince $△RQS$ is right-angled at $Q$, by the Pythagorean Theorem:\n\n$RS^2 =QR^2 +QS^2 =32 +42 =25$\n\nSince $RS > 0$, then $RS = 5$.\nSimilarly, $PQ = 5$.\nThus, the perimeter of $PQRS$ is $PQ + QR + RS + PS = 5 + 3 + 5 + 3 = 16$',11),(12,'2022-12-30 04:56:51',NULL,'$19$','','The integers between $1$ and $100$ that have a ones digit equal to $6$ are $60, 61, 62, 63, 64, 65, 67, 68, 69$ of which there are $9$. (Note that $66$ was included in the first list and not in the second list since we are counting integers rather than a total number of $6$s).\nSince the digit $6$ must occur as either the ones digit or the tens digit, there are $10 + 9 = 19$ integers between $1$ and $100$ with at least $1$ digit equal to $6$',12),(13,'2022-12-30 05:03:26',NULL,'$60$m','','Suppose that Rosie runs $x$ meters from the time that they start running until the time that they meet.\nSince Mayar runs twice as fast as Rosie, then Mayar runs $2x$ meters in this time.\nWhen Mayar and Rosie meet, they will have run a total of $90$m, since, between the two of them, they have covered the full $90$m.\nTherefore, $2x + x = 90$ and so $3x = 90$ or $x = 30$.\nSince $2x = 60$, this means that Mayar has run $60$m when they meet.',13),(14,'2022-12-30 05:12:21',NULL,'Bev','','We use $A, B, C, D,$ and $E$ to represent Andy, Bev, Cao, Dhruv, and Elcim, respectively.\nWe use the notation $D > B$ to represent the fact “Dhruv is older than Bev”.\nThe five sentences give $D > B$ and $B > E$ and $A > E$ and $B > A$ and $C > B$. These show us that Dhruv and Cao are older than Bev, and Elcim and Andy are younger than Bev.\nThis means that two people are older than Bev and two people are younger than Bev, which means that Bev must be the third oldest.\n',14),(15,'2022-12-30 05:17:02',NULL,'$3$','','We note that all of the given possible sums are odd, and also that every prime number is odd with the exception of 2 (which is even).\nWhen two odd integers are added, their sum is even.\nWhen two even integers are added, their sum is even.\nWhen one even integer and one odd integer are added, their sum is odd.\nTherefore, if the sum of two integers is odd, it must be the sum of an even integer and an odd integer.\nSince the only even prime number is 2, then for an odd integer to be the sum of two prime numbers, it must be the sum of 2 and another prime number.\nNote that:\n$$\n19 = 2 + 17 \\\\\\ 21 = 2 + 19 \\\\\\ 23 = 2 + 21 \\\\\\25 = 2 + 23 \\\\\\27 = 2 + 25\n$$\nSince 17, 19 and 23 are prime numbers and 21 and 25 are not prime numbers, then 3 of the given integers are the sum of two prime numbers.',15),(16,'2022-12-30 05:30:18',NULL,'$28$','','TODO',16),(17,'2022-12-30 05:39:44',NULL,'$−10$','','Since $a+5=b$,then $a=b−5$.\nSubstituting $a = b − 5$ and $c = 5 + b$ into $b + c = a$, we obtain:\n\n$$\nb + (5 + b) = b − 5 \\\\\\\n2b + 5 = b − 5 \\\\\\\nb = −10\n$$\n',17),(18,'2022-12-30 05:52:40',NULL,'$2025$','5373306d-38b9-4b64-95cb-baa3b023068a','Starting with the balls in the order $1$ $2$ $3$ $4$ $5$, we make a table of the positions of the balls after each of the first $10$ steps (as shown in the diagram).\n\nAfter $10$ steps, the balls are in the same order as at the beginning. This means that after each successive set of $10$ steps, the balls will be returned to their original order.\nSince $2020$ is a multiple of $10$, then after $2020$ steps, the balls will be in their original order. Steps $2021$ through $2025$ will repeat the outcomes of steps $1$ through $5$ above, and so after $2025$ steps, the balls will be in the reverse of their original order.\nTherefore, $2025$ is a possible value of $N$. This argument can be adapted to check that none of $2028$, $2031$ and $2027$ are possible values of $N$.',18),(19,'2022-12-30 06:06:37',NULL,'$15$','','The six-digit integer that Miyuki sent included the digits $2022$ in that order along with two $3$s.\nIf the two $3$s were consecutive digits, there are $5$ possible integers:\n$$\n332022 \\\\\\ 233022 \\\\\\ 203322 \\\\\\ 202332 \\\\\\ 202233\n$$\nWe can think about the pair of $3$s being moved from left to right through the integer.\nIf the two $3$s are not consecutive digits, there are $10$ possible pairs of locations for the $3$s: $1$st/$3$rd, $1$st/$4$th, $1$st/$5$th, $1$st/$6$th, $2$nd/$4$th, $2$nd/$5$th, $2$nd/$6$th, $3$rd/$5$th, $3$rd/$6$th, $4$th/$6$th. These give the following integers:\n$$\n323022 \\\\\\ 320322 \\\\\\ 320232 \\\\\\ 320223 \\\\\\ 230322 \\\\\\ 230232 \\\\\\ 230223 \\\\\\ 203232 \\\\\\ 203223 \\\\\\ 202323\n$$\n(We can think about moving the leftmost $3$ from left to right through the integer and finding all of the possible locations for the second $3$.)\nIn total, there are thus $5 + 10 = 15$ possible six-digit integers that Miyuki could have texted.',19),(20,'2022-12-30 06:23:36',NULL,'$39$','','TODO',20),(21,'2022-12-30 06:37:43',NULL,'$64$','','A $10$ cm by $10$ cm board has $9$ rows of $9$ holes, or $9×9=81$ pegs in total.\nEach hole on the $2$ main diagonals has a peg in it.\nThere are $9$ holes on each diagonal, with the center hole on both diagonals, since there is an odd number of holes in each row.\nTherefore, the total number of holes on the two diagonals is $9 + 9 − 1 = 17$.\nThis means that the number of empty holes is $81 − 17 = 64$.\n',21),(22,'2022-12-30 07:03:35',NULL,'$52$','','We start by looking for patterns in the rightmost two digits of powers of $4$, powers of $5$, and powers of $7$.\nThe first few powers of $5$ are:\n\n$$\n5^1 =5 \\\\\\ 5^{2} =25 \\\\\\ 5^3 =125 \\\\\\ 5^4 =625 \\\\\\ 5^5 =3125\n$$\nIt appears that starting with $5^{2}$, the rightmost two digits of powers of $5$ are always $25$.\nTo see this, we want to understand why if the rightmost two digits of a power of $5$ are $25$, then the rightmost two digits of the next power of $5$ are also $25$.\nThe rightmost two digits of a power of $5$ are completely determined by the rightmost two digits of the previous power since, in the process of multiplication, any digits before the rightmost two digits do not affect the rightmost two digits of the product.\nThis means that the rightmost two digits of every power of $5$ starting with $5^2$ are $25$, which means that the rightmost two digits of $5^129$ are $25$.\nThe first few powers of $4$ are:\n$$\n4^1 =4 \\\\\\ 4^2 =16 \\\\\\ 4^3 =64 \\\\\\ 4^4 =256 \\\\\\ 4^5 =1024 \\\\\\ 4^6 =4096 \\\\\\ 4^7 =16384 \\\\\\\n4^8 = 65536 \\\\\\ 4^9 = 262144 \\\\\\ 4^{10} = 1048576 \\\\\\ 4^{11} = 4194304 \\\\\\ 4^{12} = 16777216\n\n$$\nWe note that the rightmost two digits repeat after $10$ powers of $4$. This means that the rightmost two digits of powers of $4$ repeat in a cycle of length $10$.\nSince $120$ is a multiple of $10$ and $127$ is $7$ more than a multiple of $10$, the rightmost two digits\n of $4^{127}$ are the same as the rightmost two digits of $4^7$, which are $84$. The first few powers of $7$ are\n\n$$\n7^1 =7 \\\\\\ 7^2 =49 \\\\\\ 7^3 =343 \\\\\\ 7^4 =2401 \\\\\\ 7^5 =16807 \\\\\\ 7^6 =117649\n$$\nWe note that the rightmost two digits repeat after $4$ powers of $7$. This means that the rightmost two digits of powers of $7$ repeat in a cycle of length $4$. Since $128$ is a multiple of $4$ and $131$ is $3$ more than a multiple of $4$, the rightmost two digits of $7^131$ are the same as the rightmost two digits of $7^3$, which are $43$. \n\nTherefore, the rightmost two digits of $4^{127} + 5^{129} + 7^{131}$ are the rightmost two digits of the sum $84 + 25 + 43 = 152$, or $52$. (This is because when we add integers with more than two digits, any digits to the left of the rightmost two digits do not affect the rightmost two digits of the sum.)\n',22);
/*!40000 ALTER TABLE `question_solutions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-30  2:42:42
