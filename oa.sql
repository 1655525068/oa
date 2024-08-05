-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: oa
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `ao_three_book`
--

DROP TABLE IF EXISTS `ao_three_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_three_book` (
  `book_id` bigint NOT NULL COMMENT '三单ID',
  `serial_number` varchar(200) DEFAULT NULL COMMENT '序号',
  `type` varchar(200) DEFAULT NULL COMMENT '类型',
  `three_book_numbers` varchar(200) DEFAULT NULL COMMENT '三单号',
  `chinese_name` varchar(200) DEFAULT NULL COMMENT '中文名称',
  `fcr_version` varchar(200) DEFAULT NULL COMMENT 'FCR版本',
  `state` varchar(200) DEFAULT NULL COMMENT '状态',
  `prepared_by` varchar(200) DEFAULT NULL COMMENT '编制人',
  `latest_version` varchar(200) DEFAULT NULL COMMENT '最新版',
  `receiving_time` date DEFAULT NULL COMMENT '接收时间',
  `distribution_time` date DEFAULT NULL COMMENT '分发时间',
  `invalid_identification` varchar(200) DEFAULT NULL COMMENT '作废标识',
  `related_document_codes` varchar(200) DEFAULT NULL COMMENT '相关文件编码',
  `internal_codes` varchar(200) DEFAULT NULL COMMENT '相关文件内部编码',
  `draw_version` varchar(200) DEFAULT NULL COMMENT '图纸版本',
  `professional_type` varchar(200) DEFAULT NULL COMMENT '专业',
  `responsible_party` varchar(200) DEFAULT NULL COMMENT '责任方',
  `identify_responsible_person` varchar(200) DEFAULT NULL COMMENT '识别责任人',
  `process_person` varchar(200) DEFAULT NULL COMMENT '处理人',
  `should_handle` varchar(200) DEFAULT NULL COMMENT '是否需要处理',
  `handle_method` varchar(200) DEFAULT NULL COMMENT '处理方式\n(ICR/细化)',
  `process_order_number` varchar(200) DEFAULT NULL COMMENT '处理单号',
  `process_completion_time` date DEFAULT NULL COMMENT '处理完成时间',
  `process_responsible_party` varchar(200) DEFAULT NULL COMMENT '责任方',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `should_claim` varchar(200) DEFAULT NULL COMMENT '是否涉及索赔',
  `plan_to_close_time` varchar(200) DEFAULT NULL COMMENT '计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN',
  `actual_close_time` varchar(200) DEFAULT NULL COMMENT '实际关闭时间',
  `design_point_value` varchar(200) DEFAULT NULL COMMENT '设计点值',
  `audit_point_value` varchar(200) DEFAULT NULL COMMENT '审核点值',
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_three_book`
--

LOCK TABLES `ao_three_book` WRITE;
/*!40000 ALTER TABLE `ao_three_book` DISABLE KEYS */;
INSERT INTO `ao_three_book` VALUES (1,'1','FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-05-15','2024-05-15','N','LDX-ML05-V2-317-B213','1116XML05BZS07-054','D','管道','建安承包商','朱建国','冉英男','是','ICR','ICR-PT-1-12-00049','2024-07-03','施工承包商',NULL,'否',NULL,NULL,NULL,NULL),(2,'2','CR','CR-LD-X-CN23-000154','关于1116X1215BZS02-051等图纸问题的澄清','A','有效','冉英男','Y','2024-05-21','2024-05-21','N','LDX-WRS-PLW-664-B213','1116X1215BZS02','B','管道','其他','冉英男','谷晓雨','/','/','/',NULL,'/','/','/','转FCR（FCR-LD-1-CN23-000354/FCR-LD-1-CN23-000164）',NULL,NULL,NULL),(3,'3','DEN','DEN-LD-X-B24K-000102','关于1116X12X8BZS02-008图纸修改。','A','有效',NULL,'Y','2024-05-24','2024-05-27','N','LDX-PCS-PLW-050-B24K','1116X12X8BZS02-008','A','管道','工程公司','颉古宝','张春芳','是','ICR','ICR-TM-1-12-00297/ICR-TM-2-12-00298','2024-07-18','设计院',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ao_three_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_attachment_list`
--

DROP TABLE IF EXISTS `aoa_attachment_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_attachment_list` (
  `attachment_id` bigint NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `attachment_shuffix` varchar(255) DEFAULT NULL,
  `attachment_size` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_attachment_list`
--

LOCK TABLES `aoa_attachment_list` WRITE;
/*!40000 ALTER TABLE `aoa_attachment_list` DISABLE KEYS */;
INSERT INTO `aoa_attachment_list` VALUES (3,'5.jpg','oa.jpg','jpg','175797','image/jpeg','note','2017-09-18 16:33:25','1'),(6,'4.jpg','oa.jpg','jpg','133831','image/jpeg','note','2017-09-15 11:01:08','1'),(7,'3.jpg','oa.jpg','jpg','231999','image/jpeg','note','2017-09-15 11:04:38','1'),(8,'3.jpg','oa.jpg','jpg','231999','image/jpeg','note','2017-09-15 11:09:21','1'),(9,'2.jpg','oa.jpg','jpg','302654','image/jpeg','note','2017-09-23 16:43:50','1'),(10,'5.jpg','oa.jpg','jpg','175797','image/jpeg','note','2017-09-15 20:11:22','1'),(11,'5.jpg','oa.jpg','jpg','175797','image/jpeg','note','2017-09-15 20:14:50','1'),(12,'5.jpg','oa.jpg','jpg','175797','image/jpeg','note','2017-09-15 20:37:24','1'),(13,'5.jpg','oa.jpg','jpg','175797','image/jpeg','note','2017-09-15 23:06:24','1'),(44,'1.jpg','oa.jpg','jpg','191177','image/jpeg','note','2017-09-23 15:30:09','1'),(46,'4.jpg','oa.jpg','jpg','133831','image/jpeg','note','2017-09-23 16:11:11','1'),(47,'1.jpg','oa.jpg','jpg','191177','image/jpeg','note','2017-09-23 16:37:05','1'),(48,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 19:40:05','1'),(49,'30D06FF1176D3C568E37CBE221D2E542.png','oa.jpg','png','71260','image/png','mail','2017-09-28 21:24:38','1'),(50,'wenwu.gif','oa.jpg','gif','3532','image/gif','mail','2017-09-28 21:27:45','1'),(51,'wenwu.gif','oa.jpg','gif','3532','image/gif','mail','2017-09-28 21:30:40','1'),(52,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 21:37:44','1'),(53,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 21:46:48','1'),(54,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 21:53:24','1'),(55,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 22:00:37','1'),(56,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 22:03:46','1'),(57,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-09-28 22:20:12','1'),(58,'截图.png','oa.jpg','png','195652','image/png','mail','2017-09-29 22:09:51','1'),(59,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-10-01 12:46:44','2'),(60,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-10-01 19:39:14','1'),(61,'30D06FF1176D3C568E37CBE221D2E542.png','oa.jpg','png','71260','image/png','mail','2017-10-02 14:49:56','1'),(62,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-10-06 11:02:49','1'),(64,'4.jpg','oa.jpg','jpg','133831','image/jpeg','note','2017-10-07 16:03:03','1'),(65,'1.jpg','oa.jpg','jpg','191177','image/jpeg','note','2017-10-07 16:03:58','1'),(66,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','aoa_bursement','2017-10-12 23:25:57','18'),(67,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','aoa_bursement','2017-10-14 21:22:35','3'),(68,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','aoa_bursement','2017-10-15 19:17:46','18'),(69,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-10-16 17:17:51','18'),(70,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-10-16 17:42:16','1'),(71,'3.jpg','oa.jpg','jpg','231999','image/jpeg','note','2017-10-18 16:13:02','1'),(72,'touxiang.jpg','oa.jpg','jpg','12124','image/jpeg','mail','2017-10-18 17:45:16','1'),(73,'timg.jpeg','oa.jpg','jpeg','696381','image/jpeg','note','2017-10-19 23:37:37','5'),(74,'2.jpg','oa.jpg','jpg','302654','image/jpeg','note','2017-10-20 10:35:00','4'),(75,'3.jpg','oa.jpg','jpg','231999','image/jpeg','note','2017-10-20 10:36:07','4'),(76,'5.jpg','oa.jpg','jpg','175797','image/jpeg','note','2017-10-20 10:40:03','7'),(77,'3.jpg','oa.jpg','jpg','231999','image/jpeg','note','2017-10-22 09:21:27','1'),(78,'4.jpg','oa.jpg','jpg','133831','image/jpeg','note','2017-10-22 09:13:12','1'),(79,'4.jpg','oa.jpg','jpg','133831','image/jpeg','note','2017-10-22 09:26:33','1'),(80,'2.jpg','oa.jpg','jpg','302654','image/jpeg','note','2017-10-22 09:33:49','1'),(81,'1.jpg','oa.jpg','jpg','191177','image/jpeg','note','2017-10-22 10:00:19','1'),(82,'1.jpg','oa.jpg','jpg','191177','image/jpeg','note','2017-10-22 11:28:16','1');
/*!40000 ALTER TABLE `aoa_attachment_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_attends_list`
--

DROP TABLE IF EXISTS `aoa_attends_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_attends_list` (
  `attends_id` bigint NOT NULL AUTO_INCREMENT,
  `attends_ip` varchar(20) DEFAULT NULL,
  `attends_remark` varchar(20) DEFAULT NULL,
  `attends_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `attends_user_id` bigint DEFAULT NULL,
  `attend_hmtime` varchar(255) DEFAULT NULL,
  `week_ofday` varchar(255) DEFAULT NULL,
  `holiday_days` double(255,0) DEFAULT '0',
  `holiday_start` date DEFAULT NULL,
  PRIMARY KEY (`attends_id`),
  KEY `FKaxgqsm98npnl1rxysh9upfjee` (`attends_user_id`),
  CONSTRAINT `FKaxgqsm98npnl1rxysh9upfjee` FOREIGN KEY (`attends_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_attends_list`
--

LOCK TABLES `aoa_attends_list` WRITE;
/*!40000 ALTER TABLE `aoa_attends_list` DISABLE KEYS */;
INSERT INTO `aoa_attends_list` VALUES (49,'192.168.2.2',NULL,'2024-08-04 14:17:15',11,8,1,'14:17','星期日',NULL,NULL),(50,'192.168.2.2',NULL,'2024-08-04 14:17:23',12,9,1,'14:17','星期日',NULL,NULL);
/*!40000 ALTER TABLE `aoa_attends_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_bursement`
--

DROP TABLE IF EXISTS `aoa_bursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_bursement` (
  `bursement_id` bigint NOT NULL AUTO_INCREMENT,
  `all_money` double DEFAULT NULL,
  `allinvoices` int DEFAULT NULL,
  `burse_time` datetime DEFAULT NULL,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `operation_name` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `user_name` bigint DEFAULT NULL,
  PRIMARY KEY (`bursement_id`),
  KEY `FKt3xu5y23deh0mtqkfk3ly6219` (`operation_name`),
  KEY `FK666vswh4nl3voq8qalu73v2sq` (`pro_id`),
  KEY `FKgnqp4eax31sh7mn3lt2su7olr` (`user_name`),
  CONSTRAINT `FK666vswh4nl3voq8qalu73v2sq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`),
  CONSTRAINT `FKgnqp4eax31sh7mn3lt2su7olr` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt3xu5y23deh0mtqkfk3ly6219` FOREIGN KEY (`operation_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_bursement`
--

LOCK TABLES `aoa_bursement` WRITE;
/*!40000 ALTER TABLE `aoa_bursement` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_bursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_catalog`
--

DROP TABLE IF EXISTS `aoa_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_catalog` (
  `catalog_id` bigint NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(255) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `cata_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`catalog_id`),
  KEY `FKbsk5nkjlqmd8j9rmkarse6j1x` (`cata_user_id`),
  CONSTRAINT `FKbsk5nkjlqmd8j9rmkarse6j1x` FOREIGN KEY (`cata_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_catalog`
--

LOCK TABLES `aoa_catalog` WRITE;
/*!40000 ALTER TABLE `aoa_catalog` DISABLE KEYS */;
INSERT INTO `aoa_catalog` VALUES (1,'note',1,1),(2,'诗词记录',1,1),(9,'秒懂百科',1,2),(11,'上课要案',1,3),(12,'错题收集',1,3),(32,'规划(3)',1,1),(33,'根目录',1,NULL),(34,'规划(4)',1,1);
/*!40000 ALTER TABLE `aoa_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_comment_list`
--

DROP TABLE IF EXISTS `aoa_comment_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_comment_list` (
  `comment_id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `comment_user_id` bigint DEFAULT NULL,
  `reply_id` bigint DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK2k00kkfhh93949ybod7qn56ax` (`comment_user_id`),
  KEY `FKeopff14rxco5thbwwlu7exglo` (`reply_id`),
  CONSTRAINT `FK2k00kkfhh93949ybod7qn56ax` FOREIGN KEY (`comment_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKeopff14rxco5thbwwlu7exglo` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_comment_list`
--

LOCK TABLES `aoa_comment_list` WRITE;
/*!40000 ALTER TABLE `aoa_comment_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_comment_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_dept`
--

DROP TABLE IF EXISTS `aoa_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT,
  `dept_addr` varchar(255) DEFAULT NULL,
  `dept_fax` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deptmanager` bigint DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_dept`
--

LOCK TABLES `aoa_dept` WRITE;
/*!40000 ALTER TABLE `aoa_dept` DISABLE KEYS */;
INSERT INTO `aoa_dept` VALUES (2,'辽宁','','研发部','13700001111','114@qq.com',NULL,'2017-09-13 19:04:07','2010-05-23 00:00:00');
/*!40000 ALTER TABLE `aoa_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_detailsburse`
--

DROP TABLE IF EXISTS `aoa_detailsburse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_detailsburse` (
  `detailsburse_id` bigint NOT NULL AUTO_INCREMENT,
  `descript` varchar(255) DEFAULT NULL,
  `detailmoney` double NOT NULL,
  `invoices` int DEFAULT NULL,
  `produce_time` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bursment_id` bigint DEFAULT NULL,
  PRIMARY KEY (`detailsburse_id`),
  KEY `FKi02w0bghxr73fsc5sbpeyqdnn` (`bursment_id`),
  CONSTRAINT `FKi02w0bghxr73fsc5sbpeyqdnn` FOREIGN KEY (`bursment_id`) REFERENCES `aoa_bursement` (`bursement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_detailsburse`
--

LOCK TABLES `aoa_detailsburse` WRITE;
/*!40000 ALTER TABLE `aoa_detailsburse` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_detailsburse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_director`
--

DROP TABLE IF EXISTS `aoa_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_director` (
  `director_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_path` int DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  KEY `FKi6pfdnqhbc6js940e2o1vape5` (`user_id`),
  CONSTRAINT `FKi6pfdnqhbc6js940e2o1vape5` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_director`
--

LOCK TABLES `aoa_director` WRITE;
/*!40000 ALTER TABLE `aoa_director` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_director_users`
--

DROP TABLE IF EXISTS `aoa_director_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_director_users` (
  `director_users_id` bigint NOT NULL AUTO_INCREMENT,
  `catelog_name` varchar(255) DEFAULT NULL,
  `is_handle` int DEFAULT NULL,
  `director_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `share_user_id` bigint DEFAULT NULL,
  `sharetime` datetime DEFAULT NULL,
  PRIMARY KEY (`director_users_id`),
  KEY `FK675oqfmv4kx9w6bgi9rgsb8nw` (`director_id`),
  KEY `FK7hq4xk2ja9eka4210qkqq03hi` (`user_id`),
  KEY `FKibwkjvmp9383ltkfew1kyy6ny` (`share_user_id`),
  CONSTRAINT `FK675oqfmv4kx9w6bgi9rgsb8nw` FOREIGN KEY (`director_id`) REFERENCES `aoa_director` (`director_id`),
  CONSTRAINT `FK7hq4xk2ja9eka4210qkqq03hi` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKibwkjvmp9383ltkfew1kyy6ny` FOREIGN KEY (`share_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_director_users`
--

LOCK TABLES `aoa_director_users` WRITE;
/*!40000 ALTER TABLE `aoa_director_users` DISABLE KEYS */;
INSERT INTO `aoa_director_users` VALUES (56,'',0,NULL,1,NULL,'2024-08-05 19:29:42');
/*!40000 ALTER TABLE `aoa_director_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_discuss_list`
--

DROP TABLE IF EXISTS `aoa_discuss_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_discuss_list` (
  `discuss_id` bigint NOT NULL AUTO_INCREMENT,
  `attachment_id` int DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `visit_num` int DEFAULT NULL,
  `discuss_user_id` bigint DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`discuss_id`),
  KEY `FKt8hvx0ai5fto20mmxmy2g8j4g` (`discuss_user_id`),
  KEY `FK17yi8arj4vjdr5mm5dhjov10j` (`vote_id`),
  CONSTRAINT `FK17yi8arj4vjdr5mm5dhjov10j` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`),
  CONSTRAINT `FKt8hvx0ai5fto20mmxmy2g8j4g` FOREIGN KEY (`discuss_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_discuss_list`
--

LOCK TABLES `aoa_discuss_list` WRITE;
/*!40000 ALTER TABLE `aoa_discuss_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_discuss_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_evection`
--

DROP TABLE IF EXISTS `aoa_evection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_evection` (
  `evection_id` bigint NOT NULL AUTO_INCREMENT,
  `type_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evection_id`),
  KEY `FKql1c10e5u2vefisjqjbu2d5pa` (`pro_id`),
  CONSTRAINT `FKql1c10e5u2vefisjqjbu2d5pa` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_evection`
--

LOCK TABLES `aoa_evection` WRITE;
/*!40000 ALTER TABLE `aoa_evection` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_evection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_evectionmoney`
--

DROP TABLE IF EXISTS `aoa_evectionmoney`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_evectionmoney` (
  `evectionmoney_id` bigint NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `pro` int DEFAULT NULL,
  PRIMARY KEY (`evectionmoney_id`),
  KEY `FKcpuubnshaf2cg47hns9m0h1dq` (`pro_id`),
  CONSTRAINT `FKcpuubnshaf2cg47hns9m0h1dq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_evectionmoney`
--

LOCK TABLES `aoa_evectionmoney` WRITE;
/*!40000 ALTER TABLE `aoa_evectionmoney` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_evectionmoney` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_file_list`
--

DROP TABLE IF EXISTS `aoa_file_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_file_list` (
  `file_id` bigint NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_shuffix` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `path_before_trash` bigint DEFAULT NULL,
  `path_id` bigint DEFAULT NULL,
  `size` bigint DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `file_user_id` bigint DEFAULT NULL,
  `file_istrash` bigint(1) unsigned zerofill DEFAULT '0',
  `file_isshare` bigint DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `FKfshy9n300pqxjsweo9247jgqs` (`path_id`),
  KEY `FKlj6l9qroivus28aiqluue4bew` (`file_user_id`),
  CONSTRAINT `FKfshy9n300pqxjsweo9247jgqs` FOREIGN KEY (`path_id`) REFERENCES `aoa_file_path` (`path_id`),
  CONSTRAINT `FKlj6l9qroivus28aiqluue4bew` FOREIGN KEY (`file_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_file_list`
--

LOCK TABLES `aoa_file_list` WRITE;
/*!40000 ALTER TABLE `aoa_file_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_file_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_file_path`
--

DROP TABLE IF EXISTS `aoa_file_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_file_path` (
  `path_id` bigint NOT NULL AUTO_INCREMENT,
  `parent_id` bigint DEFAULT NULL,
  `path_name` varchar(255) DEFAULT NULL,
  `path_user_id` bigint DEFAULT NULL,
  `path_istrash` bigint DEFAULT '0',
  PRIMARY KEY (`path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_file_path`
--

LOCK TABLES `aoa_file_path` WRITE;
/*!40000 ALTER TABLE `aoa_file_path` DISABLE KEYS */;
INSERT INTO `aoa_file_path` VALUES (1,0,'根目录',NULL,0),(6,1,'罗密欧',1,0),(89,1,'无双',10,0),(90,1,'甄姬',7,0),(91,90,'新建文件夹',7,0),(93,1,'于彤',13,0),(94,6,'test',1,0),(95,1,'soli',5,0),(97,1,'Admin',1,0);
/*!40000 ALTER TABLE `aoa_file_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_holiday`
--

DROP TABLE IF EXISTS `aoa_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_holiday` (
  `holiday_id` bigint NOT NULL AUTO_INCREMENT,
  `leave_days` int DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`holiday_id`),
  KEY `FK1glo2wpb4kuiop1ymjxs0knxj` (`pro_id`),
  CONSTRAINT `FK1glo2wpb4kuiop1ymjxs0knxj` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_holiday`
--

LOCK TABLES `aoa_holiday` WRITE;
/*!40000 ALTER TABLE `aoa_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_in_mail_list`
--

DROP TABLE IF EXISTS `aoa_in_mail_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_in_mail_list` (
  `mail_id` bigint NOT NULL AUTO_INCREMENT,
  `mail_content` text,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_file_id` bigint DEFAULT NULL,
  `mail_title` varchar(255) NOT NULL,
  `mail_type` bigint DEFAULT NULL,
  `mail_in_push_user_id` bigint DEFAULT NULL,
  `in_receiver` varchar(255) DEFAULT NULL,
  `mail_status_id` bigint DEFAULT NULL,
  `mail_number_id` bigint DEFAULT NULL,
  `mail_del` int DEFAULT NULL,
  `mail_push` int DEFAULT NULL,
  `mail_star` int DEFAULT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `FK33o7j8f0xk8n8vrk576iktglc` (`mail_file_id`),
  KEY `FK933q7ouoddu584qg08rbvwvxi` (`mail_in_push_user_id`),
  KEY `FKghibt111d1yvc3f02x06sihjp` (`mail_number_id`),
  CONSTRAINT `FK33o7j8f0xk8n8vrk576iktglc` FOREIGN KEY (`mail_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`),
  CONSTRAINT `FK933q7ouoddu584qg08rbvwvxi` FOREIGN KEY (`mail_in_push_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKghibt111d1yvc3f02x06sihjp` FOREIGN KEY (`mail_number_id`) REFERENCES `aoa_mailnumber` (`mail_number_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_in_mail_list`
--

LOCK TABLES `aoa_in_mail_list` WRITE;
/*!40000 ALTER TABLE `aoa_in_mail_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_in_mail_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_love_discuss_user`
--

DROP TABLE IF EXISTS `aoa_love_discuss_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_love_discuss_user` (
  `discuss_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`discuss_id`,`user_id`),
  KEY `FKkl0fitgg3qixkg5gg9mmjp5e7` (`user_id`),
  CONSTRAINT `FKkl0fitgg3qixkg5gg9mmjp5e7` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKnhdtxclyun4is9ne5o99nqw1c` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_love_discuss_user`
--

LOCK TABLES `aoa_love_discuss_user` WRITE;
/*!40000 ALTER TABLE `aoa_love_discuss_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_love_discuss_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_love_user`
--

DROP TABLE IF EXISTS `aoa_love_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_love_user` (
  `reply_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  KEY `FK7fv96y8gbqcnb44qao4ey4rmn` (`user_id`),
  KEY `FKcuptpmm0l1e0b9pjv0xksqqai` (`reply_id`),
  CONSTRAINT `FK7fv96y8gbqcnb44qao4ey4rmn` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcuptpmm0l1e0b9pjv0xksqqai` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_love_user`
--

LOCK TABLES `aoa_love_user` WRITE;
/*!40000 ALTER TABLE `aoa_love_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_love_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_mail_reciver`
--

DROP TABLE IF EXISTS `aoa_mail_reciver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_mail_reciver` (
  `pk_id` bigint NOT NULL AUTO_INCREMENT,
  `is_read` int NOT NULL,
  `mail_id` bigint DEFAULT NULL,
  `mail_reciver_id` bigint DEFAULT NULL,
  `is_star` int DEFAULT NULL,
  `is_del` int DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FKj8ki52vm052q6qdal2rkh2c9q` (`mail_id`),
  KEY `FK65vdrbmq9hu4hrhvtw6slwxlc` (`mail_reciver_id`),
  CONSTRAINT `FK65vdrbmq9hu4hrhvtw6slwxlc` FOREIGN KEY (`mail_reciver_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKj8ki52vm052q6qdal2rkh2c9q` FOREIGN KEY (`mail_id`) REFERENCES `aoa_in_mail_list` (`mail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_mail_reciver`
--

LOCK TABLES `aoa_mail_reciver` WRITE;
/*!40000 ALTER TABLE `aoa_mail_reciver` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_mail_reciver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_mailnumber`
--

DROP TABLE IF EXISTS `aoa_mailnumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_mailnumber` (
  `mail_number_id` bigint NOT NULL AUTO_INCREMENT,
  `mail_account` varchar(255) NOT NULL,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_des` varchar(255) DEFAULT NULL,
  `mail_type` bigint DEFAULT NULL,
  `mail_user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` bigint DEFAULT NULL,
  `mail_num_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`mail_number_id`),
  KEY `FKn9qg20uba4xn2k5m62jrcyc6c` (`mail_num_user_id`),
  CONSTRAINT `FKn9qg20uba4xn2k5m62jrcyc6c` FOREIGN KEY (`mail_num_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_mailnumber`
--

LOCK TABLES `aoa_mailnumber` WRITE;
/*!40000 ALTER TABLE `aoa_mailnumber` DISABLE KEYS */;
INSERT INTO `aoa_mailnumber` VALUES (1,'1057245260@qq.com','2017-09-24 12:23:26',NULL,1,'宋佳','scdvszfjjfrpbeaa',1,1),(2,'664303632@qq.com','2017-09-13 13:29:28',NULL,1,'李明','123456',2,1),(3,'ffffff','2017-09-22 14:02:51',NULL,2,'ggg','33333',1,1),(4,'66@qq.com','2017-09-24 18:26:31','的点点滴滴',1,'私事','333',1,1),(5,'66@qq.com','2017-09-24 18:27:26','的点点滴滴',1,'哈哈哈哈','55555',1,1),(6,'66@qq.com','2017-09-24 18:37:06','的点点滴滴',1,'滚滚滚','55555',2,1),(8,'ggg','2017-09-28 20:33:06','hhh',1,'llll','11111',1,2),(9,'10@qq.com','2017-09-25 18:45:52','',1,'多对多','发vwv ',1,1),(10,'45@qq.com','2017-09-25 18:46:22','是是是',1,'吗vwjrerg ','14982',1,1),(11,'1234@qq.com','2017-09-25 18:46:53','',1,'点点滴滴','dbetet',2,1),(12,'12@qq.com','2017-09-25 18:47:15','',1,'反反复复','34455',1,1),(13,'34@qq.com','2017-09-25 18:47:35','',1,'别发额','457895780',1,1);
/*!40000 ALTER TABLE `aoa_mailnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_note_list`
--

DROP TABLE IF EXISTS `aoa_note_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_note_list` (
  `note_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(15000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `catalog_id` bigint DEFAULT NULL,
  `attach_id` bigint DEFAULT NULL,
  `is_collected` bigint DEFAULT '0',
  `createman_id` bigint DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`note_id`),
  KEY `FK3e1rxyyg851r231ln3ucnrg7q` (`catalog_id`),
  CONSTRAINT `FK3e1rxyyg851r231ln3ucnrg7q` FOREIGN KEY (`catalog_id`) REFERENCES `aoa_catalog` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_note_list`
--

LOCK TABLES `aoa_note_list` WRITE;
/*!40000 ALTER TABLE `aoa_note_list` DISABLE KEYS */;
INSERT INTO `aoa_note_list` VALUES (1,'sdfa','2017-09-08 20:43:08',8,'hg',6,1,46,1,1,NULL),(90,'zxc','2017-09-07 19:12:07',8,'90',6,2,3,1,1,NULL),(93,'dfasf','2017-09-14 10:04:34',9,'93',6,1,3,1,1,NULL),(96,'哈哈','2017-09-15 11:01:08',8,'这张图片必须显示96',5,1,6,0,2,NULL),(101,'分享应该可以了吧','2017-09-15 20:11:23',8,'666101',7,1,10,1,2,NULL),(102,'快点老兄','2017-09-15 20:14:51',8,'666102',7,1,11,0,1,NULL),(111,'的说法','2017-09-15 23:53:04',8,'地方撒111',7,1,7,0,1,'小李父斯基'),(120,'dsaf','2017-09-18 11:04:48',8,'werq 120',5,1,9,1,1,NULL),(122,'dsaf但是','2017-09-18 11:06:24',8,'修改122',5,1,NULL,1,1,NULL),(126,'大','2017-09-23 11:43:05',8,'地方撒发生126',7,1,NULL,0,1,'soli;红之花'),(127,'dsfa','2017-09-23 12:34:05',8,'dfsa的127',5,1,NULL,1,1,NULL),(128,'sdaf','2017-09-23 12:37:21',8,'dsa128',6,1,42,1,1,NULL),(137,'第三方','2017-10-01 14:18:54',8,'大师傅137',7,1,NULL,0,1,';伊丽莎白'),(138,'发多少','2017-10-01 14:30:48',8,'分公司',7,1,NULL,0,1,'伊丽莎白'),(139,'士大夫','2017-10-01 14:31:26',8,'士大夫',6,1,NULL,1,1,NULL),(140,'士大夫','2017-10-01 14:36:19',8,'手动阀',7,1,NULL,0,1,'伊丽莎白;小李父斯基'),(143,'发多少','2017-10-01 14:57:13',8,'fdas ',7,1,NULL,1,1,';发给'),(145,'fd','2017-10-01 16:01:33',8,'fggfd',5,1,NULL,0,1,NULL),(146,'','2017-10-01 16:02:51',8,'新建发给',5,1,NULL,1,1,NULL),(149,'地方撒1222222222222222','2017-10-01 17:50:20',8,'范德萨',5,1,NULL,0,1,NULL),(150,'士大夫1111111111111','2017-10-01 17:55:31',8,'的是非得失',5,1,NULL,0,1,NULL),(151,'更丰富付付付付付付付付付付付付付付付付','2017-10-01 18:06:21',8,'华哥',5,1,NULL,0,1,NULL),(152,'22222222222222222222','2017-10-01 18:09:32',8,'地方撒',5,1,NULL,0,1,NULL),(153,'1111111111111111111111','2017-10-01 18:11:05',8,'大师',5,1,NULL,0,1,NULL),(154,'222222222222222222222','2017-10-01 18:19:10',8,'第三方',5,1,NULL,0,1,NULL),(155,'哈哈哈哈或或或或或或或或或或或或或或或或或或或或或或或发凡方法付付','2017-10-01 18:25:10',8,'过后会或或',5,1,NULL,0,1,NULL),(156,'东方时尚所说付发的大多多多多多多多','2017-10-01 18:30:08',8,' 胡歌封帝',5,1,NULL,1,1,NULL),(157,'东方时尚所所所所所所所所所','2017-10-01 18:35:07',8,'咯咯咯咯咯滚滚滚',5,1,NULL,0,1,NULL),(158,'333333333333333','2017-10-01 19:20:29',8,'第三方',5,1,NULL,0,1,NULL),(159,'2111111111111111111111111111','2017-10-01 19:38:13',8,'的说法',5,1,NULL,0,1,NULL),(160,'2222222222222222222222222','2017-10-01 19:42:55',8,'的说法',5,1,NULL,0,1,NULL),(161,'2222222222222222222222222222','2017-10-01 19:49:55',8,'大方法',5,1,NULL,0,1,NULL),(162,'43333333333333333333333333','2017-10-01 19:57:19',8,'的说法',5,1,NULL,0,1,NULL),(163,'444444444444444444444444444444444','2017-10-01 19:59:18',8,'第三方',5,1,NULL,0,1,NULL),(164,'55555555555555555555555555555555','2017-10-01 20:03:07',8,'的说法',5,1,NULL,0,1,NULL),(165,'3443242243333333333333','2017-10-01 20:05:10',8,'范德萨',5,1,NULL,1,1,NULL),(166,'22222222222222222222222222','2017-10-01 20:08:25',8,'大对方是否收费',5,1,NULL,0,1,NULL),(167,'3333333333333333333333','2017-10-01 20:17:13',8,'发生的',5,1,NULL,0,1,NULL),(168,'11111111111111111111111','2017-10-01 20:26:29',8,'地方撒',5,1,NULL,0,1,NULL),(169,'333333333333333333333','2017-10-01 20:26:58',8,'第',5,1,NULL,0,1,NULL),(170,'知道吗 这个世界 随处都有万有引力','2017-10-05 19:49:17',8,'无语的n此房',7,1,NULL,0,1,'罗密欧;甄姬'),(171,'11111111111111111111111111111111111','2017-10-05 20:19:31',8,'的说法',5,2,NULL,0,1,NULL),(172,'阿斯蒂芬三分333333333333','2017-10-05 20:23:02',8,'地方撒',5,2,NULL,0,1,NULL),(173,'(⊙o⊙)…334334','2017-10-05 20:23:27',8,'的说法',5,2,NULL,1,1,NULL),(174,'1321131314124','2017-10-05 20:25:30',8,'三大东方',7,2,NULL,0,1,'罗密欧;伊丽莎白'),(175,'213131对方是否收费 23','2017-10-05 20:27:17',8,'范德萨23',7,1,NULL,0,1,'罗密欧;伊丽莎白'),(176,'2222222222222222222222222222','2017-10-05 20:40:18',8,'听说对方',6,2,NULL,0,1,NULL),(177,'233333333333333333333333','2017-10-05 20:43:01',8,'发生的发生',7,2,NULL,0,1,'小李父斯基;soli'),(178,'2333333333333333333333333333333','2017-10-05 20:43:31',9,'地方撒发生',5,2,NULL,0,1,NULL),(179,'2333333333333333333333333333','2017-10-05 20:48:03',8,'大三',5,1,NULL,0,1,NULL),(180,'33333333333333333333333','2017-10-05 20:48:49',8,'地方',5,2,NULL,0,1,NULL),(181,'22222222222222222222222222222222','2017-10-05 20:50:57',8,'33333333333333',5,2,NULL,0,1,NULL),(182,'3333333333333333','2017-10-05 20:57:28',9,'地方撒',5,2,NULL,0,1,NULL),(183,'大师傅444444444444444444444','2017-10-05 21:01:41',8,'的说法',5,2,NULL,0,1,NULL),(184,'3333333333333333333333333333333333','2017-10-05 21:03:03',8,'ad231',5,2,NULL,0,1,NULL),(187,'44444444444444444444444444444444444444','2017-10-05 21:22:28',8,'安抚第三方',5,1,NULL,1,1,NULL),(188,'324242533333333333333333390','2017-10-05 22:48:20',8,'大三',5,1,NULL,0,1,NULL),(189,'dsafffffff555555555555555555555555','2017-10-06 11:15:14',8,'dfas ',5,33,NULL,0,1,NULL),(190,'3333333333333333333333333333333333333','2017-10-06 11:23:34',8,'sdfa ',5,33,NULL,0,1,NULL),(191,'222222222222222222222222222222222222222222222222','2017-10-06 11:29:14',8,'34242423',5,33,NULL,0,7,NULL),(192,'2323232323232323232323232323232323','2017-10-06 22:29:33',8,'发给',5,33,NULL,0,1,NULL),(193,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">1995年，互联网的蓬勃发展给了Oak机会。业界为了使死板、单调的静态网页能够“灵活”起来，急需一种软件技术来开发一种程序，这种程序可以通过网络传播并且能够跨平台运行。于是，世界各大</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/IT/16684878\">IT</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">企业为此纷纷投入了大量的人力、物力和财力。这个时候，Sun公司想起了那个被搁置起来很久的Oak，并且重新审视了那个用软件编写的试验平台，由于它是按照嵌入式系统硬件平台体系结构进行编写的，所以非常小，特别适用于网络上的传输系统，而Oak也是一种精简的语言，程序非常小，适合在网络上传输。Sun公司首先推出了可以嵌入网页并且可以随同网页在网络上传输的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/Applet\">Applet</a><i>（Applet是一种将小程序嵌入到网页中进行执行的技术）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">，并将Oak更名为Java</span>','2017-10-06 22:32:04',8,'最终版本',7,33,81,0,1,'丹琪;于彤'),(194,'444444444444444444444444444444','2017-10-07 16:03:03',8,'有附件',5,33,64,0,1,NULL),(195,'322222222222222222222222222222222222222222222','2017-10-07 20:14:48',9,'范德萨',6,33,NULL,0,23,NULL),(196,'<a target=\"_blank\" href=\"https://baike.baidu.com/item/Java/85979\">Java</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">是一门</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1\">面向对象</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">编程语言，不仅吸收了</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/C%2B%2B\">C++</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">语言的各种优点，还摒弃了C++里难以理解的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A4%9A%E7%BB%A7%E6%89%BF\">多继承</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%8C%87%E9%92%88\">指针</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程</span><span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">[1]</span><a name=\"ref_[1]_12654100\"></a>&nbsp;<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">&nbsp;。</span>','2017-10-08 16:22:44',8,'上课要义',5,33,77,0,1,NULL),(198,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">由于在开发Oak语言时，尚且不存在运行字节码的硬件平台，所以为了在开发时可以对这种语言进行实验研究，他们就在已有的硬件和软件平台基础上，按照自己所指定的规范，用软件建设了一个运行平台，整个系统除了比C++更加简单之外，没有什么大的区别。1992年的夏天，当Oak语言开发成功后，研究者们向硬件生产商进行演示了Green操作系统、Oak的程序设计语言、类库和其硬件，以说服他们使用Oak语言生产硬件芯片，但是，硬件生产商并未对此产生极大的热情。因为他们认为，在所有人对Oak语言还一无所知的情况下，就生产硬件产品的风险实在太大了，所以Oak语言也就因为缺乏硬件的支持而无法进入市场，从而被搁置了下来</span>','2017-10-18 15:39:45',8,'测试',5,33,NULL,0,1,NULL),(199,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">由于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/C%2B%2B\">C++</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">所具有的优势，该项目组的研究人员首先考虑采用C++来编写程序。但对于</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E7%A1%AC%E4%BB%B6\">硬件</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">资源极其匮乏的单片式系统来说，C++程序过于复杂和庞大。另外由于消费电子产品所采用的嵌入式处理器芯片的种类繁杂，如何让编写的程序</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%B7%A8%E5%B9%B3%E5%8F%B0\">跨平台</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">运行也是个难题。为了解决困难，他们首先着眼于语言的开发，假设了一种结构简单、符合嵌入式应用需要的硬件平台体系结构并为其制定了相应的规范，其中就定义了这种硬件平台的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E4%BA%8C%E8%BF%9B%E5%88%B6\">二进制</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">机器码指令系统</span><i>（即后来成为“</i><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%AD%97%E8%8A%82%E7%A0%81\"><i>字节码</i></a><i>”的指令系统）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">，以待语言开发成功后，能有</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8D%8A%E5%AF%BC%E4%BD%93%E8%8A%AF%E7%89%87\">半导体芯片</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">生产商开发和生产这种硬件平台。对于新语言的设计，Sun公司研发人员并没有开发一种全新的语言，而是根据嵌入式软件的要求，对C++进行了改造，去除了留在C++的一些不太实用及影响安全的成分，并结合嵌入式系统的实时性要求，开发了一种称为</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/Oak\">Oak</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%9D%A2%E5%90%91%E5%AF%B9%E8%B1%A1%E8%AF%AD%E8%A8%80\">面向对象语言</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">。</span>','2017-10-18 15:40:44',8,'讨论',7,33,NULL,0,1,'甄姬2;无双'),(201,'312111111111111111111111111111111111111111111111111111111111','2017-10-19 23:15:51',8,'1231321',5,33,NULL,0,10,NULL),(202,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">20世纪90年代，硬件领域出现了单片式计算机系统，这种价格低廉的系统一出现就立即引起了自动控制领域人员的注意，因为使用它可以大幅度提升消费类电子产品</span><i>（如电视机顶盒、面包烤箱、移动电话等）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%99%BA%E8%83%BD%E5%8C%96\">智能化</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">程度。Sun公司为了抢占市场先机，在1991年成立了一个称为Green的项目小组，</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%B8%95%E7%89%B9%E9%87%8C%E5%85%8B/4831889\">帕特里克</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E8%A9%B9%E5%A7%86%E6%96%AF%C2%B7%E9%AB%98%E6%96%AF%E6%9E%97\">詹姆斯·高斯林</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、麦克·舍林丹和其他几个工程师一起组成的工作小组在</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%8A%A0%E5%88%A9%E7%A6%8F%E5%B0%BC%E4%BA%9A\">加利福尼亚</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">州</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E9%97%A8%E6%B4%9B%E5%B8%95%E5%85%8B\">门洛帕克</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">市沙丘路的一个小工作室里面研究开发新技术，专攻计算机在家电产品上的嵌入式应用。</span>','2017-10-22 01:04:54',9,'2017某次笔记',7,33,79,0,1,'甄姬;甄姬2'),(203,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">毛不易，网综《</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E6%98%8E%E6%97%A5%E4%B9%8B%E5%AD%90/20478071\">明日之子</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">》参赛选手，参加海选状况不断，他是明日之子唯一一个刚上场就录了三次音的选手，结果刚开口就被薛之谦闻到一股酒味，原来他上场前喝了几两白酒来缓解紧张，好不容易开始唱了，刚弹吉他，弦就断了，节目组帮忙换掉，张大大说不管怎么样都会送给他一把吉他，看起来他是一个十分有趣的小男生，一首《</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A6%82%E6%9E%9C%E6%9C%89%E4%B8%80%E5%A4%A9%E6%88%91%E5%8F%98%E5%BE%97%E5%BE%88%E6%9C%89%E9%92%B1\">如果有一天我变得很有钱</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">》内容很有趣，但是其中的落寞自嘲讥讽味道被薛之谦敏锐的发现了，他觉得毛不易可以走向更大的舞台，最终毛不易成功晋级。此后《巨星》唱出生活中的无奈，和《</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/%E5%A6%82%E6%9E%9C%E6%9C%89%E4%B8%80%E5%A4%A9%E6%88%91%E5%8F%98%E5%BE%97%E5%BE%88%E6%9C%89%E9%92%B1\">如果有一天我变得很有钱</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">》异曲同工。之后他独创的《消愁》《像我这样的人》歌词字字扎入人心，听哭无数深夜里迷茫的人，“你写词写到我想给你跪”薛之谦这样赞赏他，“你被生活打了多少巴掌？”杨幂这样问到，一夜之间毛不易的《消愁》《像我这样的人》置顶流行音乐榜单，然而扎心依旧不断，一曲《借》直接让华晨宇给了他满分，他不仅歌唱的 好，词写的好，作曲的旋律也很美妙，其词曲不华丽不酷炫，却深深击中黑暗中迷茫前进的心。</span>','2017-10-22 08:08:10',9,'变重要',7,33,80,0,1,'小李父斯基;甄姬'),(204,'<div>\r\n	<div>\r\n		<p>\r\n			从2014年以来，知乎就成为了我最重要的社交和资讯平台。<br />\r\n天涯几乎再没上过，微博都是地震了才会用一下。<br />\r\n《一人饮酒醉》这首歌。我就是上个月从这个问题知道的。<br />\r\n当时看了最高票的答案觉得挺有意思。<br />\r\n百度搜了一下，第一段就把我震地关了浏览器，太炸耳朵了。<br />\r\n转身就回来把写的不错嘲讽的答案都点了个赞。\r\n		</p>\r\n		<p>\r\n			两天以后，我反思了一下，这样好像不太好。<br />\r\n我记得自己在30岁生日的时候警醒过自己，万事不可太狭隘。<br />\r\n你不应该强烈排斥尚未真正了解的东西。<br />\r\n于是我去下了个直播软件。\r\n		</p>\r\n		<p>\r\n			我出身知识分子家庭，受过高等教育，从事传统行业，衣食无忧生活稳定。<br />\r\n说实话，我挺保守甚至有些落后。<br />\r\n天天看网上说直播怎么赚钱了，快手怎么样了，我都从来没了解过。\r\n		</p>\r\n	</div>\r\n<br />\r\n作者：柯阿卡<br />\r\n链接：https://www.zhihu.com/question/38130123/answer/131454481<br />\r\n来源：知乎<br />\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n</div>','2017-10-22 08:14:15',8,'一人饮酒',7,33,NULL,0,1,'伊丽莎白;小李父斯基'),(205,'<div>\r\n	<div>\r\n		<p>\r\n			下了直播软件我都不知道怎么玩，就在推荐的热门里面一个个点开看。纯粹好奇。<br />\r\n主播小姑娘绝大多数都很漂亮，小伙子也各有风采。<br />\r\n有的真的美丽俊朗到我想不通。\r\n		</p>\r\n		<p>\r\n			直播间里放烟花一样的撒礼物，哗啦哗啦的，浓妆艳抹的小姑娘不停的谢谢哥谢谢哥谢谢哥。<br />\r\n然后那些“哥”就继续哗啦哗啦的撒礼物。<br />\r\n一个比我胖3圈的胖妹直播吃火锅粉，全程无话，就呼哧呼哧的吃。收了2000金币……<br />\r\n简直颠覆我的认知。天上掉钱是不是就这个意思？\r\n		</p>\r\n		<p>\r\n			就在我准备关掉软件直接卸载的时候，鬼使神差看到了一个小伙子，戴着个大墨镜的头像，写着满满的“喊麦”两个字。<br />\r\n巧了，进去看看你吧。\r\n		</p>\r\n	</div>\r\n<br />\r\n作者：柯阿卡<br />\r\n链接：https://www.zhihu.com/question/38130123/answer/131454481<br />\r\n来源：知乎<br />\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。\r\n</div>','2017-10-22 09:12:41',8,'今日笔记',5,33,78,0,1,NULL),(206,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">1998年12月8日，第二代Java平台的企业版J2EE发布。1999年6月，Sun公司发布了第二代Java平台（简称为Java2）的3个版本：</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2ME\">J2ME</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">（Java2 Micro Edition，Java2平台的微型版），应用于移动、无线及有限资源的环境；</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2SE\">J2SE</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">（Java 2 Standard Edition，Java 2平台的标准版），应用于桌面环境；</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/J2EE\">J2EE</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">（Java 2Enterprise Edition，Java 2平台的企业版），应用于基于Java的应用服务器。Java 2平台的发布，是Java发展过程中最重要的一个里程碑，标志着Java的应用开始普及。</span>','2017-10-22 11:28:16',9,'论讲究',7,32,82,0,1,NULL),(207,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">2000年5月，JDK1.3、JDK1.4和J2SE1.3相继发布，几周后其获得了</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/Apple/3860362\">Apple</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">公司Mac OS X的工业标准的支持。2001年9月24日，J2EE1.3发布。2002年2月26日，J2SE1.4发布。自此Java的计算能力有了大幅提升，与J2SE1.3相比，其多了近62%的类和接口。在这些新特性当中，还提供了广泛的</span><a target=\"_blank\" href=\"https://baike.baidu.com/item/XML\">XML</a><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">支持、安全套接字</span><i>（Socket）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">支持</span><i>（通过SSL与TLS协议）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">、全新的I/OAPI、正则表达式、日志与断言。2004年9月30日，J2SE1.5发布，成为Java语言发展史上的又一里程碑。为了表示该版本的重要性，J2SE 1.5更名为Java SE 5.0</span><i>（内部版本号1.5.0）</i><span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">，代号为“Tiger”，Tiger包含了从1996年发布1.0版本以来的最重大的更新，其中包括泛型支持、基本类型的自动装箱、改进的循环、枚举类型、格式化I/O及可变参数。</span>','2017-10-22 11:33:02',8,'我的',5,2,NULL,0,1,NULL),(208,'<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	2005年6月，在Java One大会上，Sun公司发布了Java SE 6。此时，Java的各种版本已经更名，已取消其中的数字2，如J2EE更名为<a target=\"_blank\" href=\"https://baike.baidu.com/item/JavaEE\">JavaEE</a>，J2SE更名为JavaSE，J2ME更名为<a target=\"_blank\" href=\"https://baike.baidu.com/item/JavaME\">JavaME</a>。<span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;\">[8]</span><a name=\"ref_[8]_12654100\"></a>&nbsp;\r\n</div>\r\n<div class=\"para\" style=\"font-size:14px;color:#333333;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">\r\n	2006年11月13日，Java技术的发明者Sun公司宣布，将Java技术作为免费软件对外发布。Sun公司正式发布的有关Java平台标准版的第一批源代码，以及Java迷你版的可执行源代码。从2007年3月起，全世界所有的开发人员均可对Java源代码进行修改<span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;\">[9]</span><a name=\"ref_[9]_12654100\"></a>&nbsp;&nbsp;。\r\n</div>','2017-10-22 11:34:15',8,'编程',5,33,NULL,0,1,NULL),(209,'<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">2009年，甲骨文公司宣布收购Sun</span><span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">[10]</span><a name=\"ref_[10]_12654100\"></a>&nbsp;<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">&nbsp;。2010年，Java编程语言的共同创始人之一詹姆斯·高斯林从Oracle公司辞职。2011年，甲骨文公司举行了全球性的活动，以庆祝Java7的推出，随后Java7正式发布。2014年，甲骨文公司发布了Java8正式版</span><span style=\"font-size:12px;line-height:0;vertical-align:baseline;color:#3366CC;font-family:arial, 宋体, sans-serif;background-color:#FFFFFF;\">[11]</span><a name=\"ref_[11]_12654100\"></a>&nbsp;<span style=\"color:#333333;font-family:arial, 宋体, sans-serif;font-size:14px;background-color:#FFFFFF;\">&nbsp;。</span>','2017-10-22 11:38:37',8,'已经建立了',5,33,NULL,0,1,NULL);
/*!40000 ALTER TABLE `aoa_note_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_notepaper`
--

DROP TABLE IF EXISTS `aoa_notepaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_notepaper` (
  `notepaper_id` bigint NOT NULL AUTO_INCREMENT,
  `concent` text,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notepaper_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notepaper_id`),
  KEY `FKsavcqw29haox5bu7y90it8jb7` (`notepaper_user_id`),
  CONSTRAINT `FKsavcqw29haox5bu7y90it8jb7` FOREIGN KEY (`notepaper_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_notepaper`
--

LOCK TABLES `aoa_notepaper` WRITE;
/*!40000 ALTER TABLE `aoa_notepaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_notepaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_notice_list`
--

DROP TABLE IF EXISTS `aoa_notice_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_notice_list` (
  `notice_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `is_top` int DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `notice_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_notice_list`
--

LOCK TABLES `aoa_notice_list` WRITE;
/*!40000 ALTER TABLE `aoa_notice_list` DISABLE KEYS */;
INSERT INTO `aoa_notice_list` VALUES (1,'fdsa范德萨',0,'2017-09-21 12:40:10','2017-09-21 12:39:36',14,'interesting',10,'http://baidu.com',1),(3,'fsd fd a',1,'2017-09-20 20:39:31','2017-08-21 12:39:07',14,'fsa ',12,'fs ',1),(4,'fsdafds fdsa ',1,'2017-09-21 13:25:39','2017-09-21 12:39:13',16,'fdsafsa',10,'',1),(5,'fsd afs afsdf  s',0,'2017-09-21 13:04:53','2017-09-18 12:39:18',14,'what？？',10,'http://gson.cn/stu/996_1_20_2_cdetail_.html',1),(7,'额，这个怎么描述呢？',0,'2017-09-24 21:47:33','2017-09-23 00:19:25',15,'今天新增一个任务',10,'http://www.zxyoo.cn',1),(8,'11111111',0,'2017-09-23 16:39:19','2017-09-23 16:39:19',14,'11111',11,'http://www.zxyoo.cn',1),(9,'2222222222',0,'2017-09-23 16:39:40','2017-09-23 16:39:40',14,'2222222',10,'http://www.zxyoo.cn',1),(10,'33333333333333',0,'2017-09-23 16:39:55','2017-09-23 16:39:55',14,'333333333',10,'http://www.zxyoo.cn',1),(11,'444444444444',0,'2017-09-23 16:40:18','2017-09-23 16:40:18',14,'4444444444444',10,'http://www.zxyoo.cn',1),(12,'555555555',0,'2017-09-23 16:40:43','2017-09-23 16:40:43',14,'555555555',10,'http://www.zxyoo.cn',1),(13,'6666666666',0,'2017-09-23 16:40:58','2017-09-23 16:40:58',14,'66666666',10,'http://www.zxyoo.cn',1),(14,'77777777777',0,'2017-09-23 16:41:12','2017-09-23 16:41:12',14,'77777777',10,'http://www.zxyoo.cn',1),(15,'fdsfa fdsa fds ',0,'2017-09-24 15:35:55','2017-09-24 15:35:55',14,'fdsfa ',10,'',1),(16,'fsd afsdf sa',0,'2017-09-24 15:36:08','2017-09-24 15:36:08',14,'fsd fs afa ',10,'',1),(17,'312321',0,'2017-09-24 18:44:39','2017-09-24 15:36:18',14,'31231',11,'',1),(18,'312413123',0,'2017-09-24 15:36:27','2017-09-24 15:36:27',14,'321313',10,'',1),(19,'312312314121414',1,'2017-09-24 15:36:38','2017-09-24 15:36:38',14,'31231',10,'',1),(20,'',0,'2017-09-24 15:36:48','2017-09-24 15:36:48',14,'312312',10,'',1),(21,'41241',0,'2017-09-25 15:47:50','2017-09-24 15:37:03',14,'21313',10,'',1),(22,'412431',0,'2017-09-24 15:37:13','2017-09-24 15:37:13',14,'321312',10,'',1),(23,'',0,'2017-09-24 18:45:05','2017-09-24 15:37:21',14,'31231231',12,'',1),(24,'怎么办嘛？ 我没有树下？',0,'2017-10-06 21:33:34','2017-10-06 21:33:34',16,'我下面没有员工，',10,'',2),(25,'ijdfd',0,'2018-02-04 01:07:27','2018-02-04 01:07:27',15,'tonight so beatiful',10,'',1),(27,'ytu',0,'2024-08-05 09:50:53','2024-08-05 09:50:53',14,'uuu',10,'',1),(28,'vgg',0,'2024-08-05 10:19:23','2024-08-05 10:19:23',14,'顶顶顶',10,'',1);
/*!40000 ALTER TABLE `aoa_notice_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_notice_user_relation`
--

DROP TABLE IF EXISTS `aoa_notice_user_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_notice_user_relation` (
  `relatin_id` bigint NOT NULL AUTO_INCREMENT,
  `is_read` int DEFAULT NULL,
  `relatin_notice_id` bigint DEFAULT NULL,
  `relatin_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`relatin_id`),
  KEY `FKhxq8glkpb5qi1smn5gu142rky` (`relatin_notice_id`),
  KEY `FK52evvby6j47j24624ydi0o221` (`relatin_user_id`),
  CONSTRAINT `FK52evvby6j47j24624ydi0o221` FOREIGN KEY (`relatin_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKhxq8glkpb5qi1smn5gu142rky` FOREIGN KEY (`relatin_notice_id`) REFERENCES `aoa_notice_list` (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_notice_user_relation`
--

LOCK TABLES `aoa_notice_user_relation` WRITE;
/*!40000 ALTER TABLE `aoa_notice_user_relation` DISABLE KEYS */;
INSERT INTO `aoa_notice_user_relation` VALUES (74,0,27,2),(75,0,28,2);
/*!40000 ALTER TABLE `aoa_notice_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_overtime`
--

DROP TABLE IF EXISTS `aoa_overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_overtime` (
  `overtime_id` bigint NOT NULL AUTO_INCREMENT,
  `type_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`overtime_id`),
  KEY `FK5o36fvdsrrhvr9q4dvffxkuoc` (`pro_id`),
  CONSTRAINT `FK5o36fvdsrrhvr9q4dvffxkuoc` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_overtime`
--

LOCK TABLES `aoa_overtime` WRITE;
/*!40000 ALTER TABLE `aoa_overtime` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_overtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_plan_list`
--

DROP TABLE IF EXISTS `aoa_plan_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_plan_list` (
  `plan_id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `plan_comment` varchar(5000) DEFAULT '',
  `plan_content` varchar(10000) DEFAULT NULL,
  `plan_summary` varchar(800) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `plan_user_id` bigint DEFAULT NULL,
  `attach_id` bigint DEFAULT NULL,
  PRIMARY KEY (`plan_id`,`start_time`),
  KEY `FKsqqfaj3e7rdl3jalr2sm0y4ln` (`plan_user_id`),
  CONSTRAINT `FKsqqfaj3e7rdl3jalr2sm0y4ln` FOREIGN KEY (`plan_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_plan_list`
--

LOCK TABLES `aoa_plan_list` WRITE;
/*!40000 ALTER TABLE `aoa_plan_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_plan_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_position`
--

DROP TABLE IF EXISTS `aoa_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_position` (
  `position_id` bigint NOT NULL AUTO_INCREMENT,
  `level` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describtion` varchar(255) DEFAULT NULL,
  `deptid` bigint DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_position`
--

LOCK TABLES `aoa_position` WRITE;
/*!40000 ALTER TABLE `aoa_position` DISABLE KEYS */;
INSERT INTO `aoa_position` VALUES (1,1,'正式员工','正式员工',2),(2,2,'实习生','实习生',2);
/*!40000 ALTER TABLE `aoa_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_process_list`
--

DROP TABLE IF EXISTS `aoa_process_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_process_list` (
  `process_id` bigint NOT NULL AUTO_INCREMENT,
  `apply_time` datetime DEFAULT NULL,
  `deeply_id` bigint DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `process_des` text,
  `process_name` varchar(255) DEFAULT NULL,
  `procsee_days` int DEFAULT NULL,
  `is_checked` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `pro_file_id` bigint DEFAULT NULL,
  `process_user_id` bigint DEFAULT NULL,
  `shenuser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_id`),
  KEY `FKiltoi9iw3vjixl6u4cd60fi1p` (`pro_file_id`),
  KEY `FKhtdg4du5ryotah5v1dgyjfh2t` (`process_user_id`),
  CONSTRAINT `FKhtdg4du5ryotah5v1dgyjfh2t` FOREIGN KEY (`process_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKiltoi9iw3vjixl6u4cd60fi1p` FOREIGN KEY (`pro_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_process_list`
--

LOCK TABLES `aoa_process_list` WRITE;
/*!40000 ALTER TABLE `aoa_process_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_process_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_receiver_note`
--

DROP TABLE IF EXISTS `aoa_receiver_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_receiver_note` (
  `note_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK904cmor3q468pj3ft6mdrnqwk` (`user_id`),
  KEY `FKcx7spjjefkofw62v8yxmgjxao` (`note_id`),
  CONSTRAINT `FK904cmor3q468pj3ft6mdrnqwk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK_NOTE_LIST` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`),
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcx7spjjefkofw62v8yxmgjxao` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_receiver_note`
--

LOCK TABLES `aoa_receiver_note` WRITE;
/*!40000 ALTER TABLE `aoa_receiver_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_receiver_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_regular`
--

DROP TABLE IF EXISTS `aoa_regular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_regular` (
  `regular_id` bigint NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `deficiency` varchar(255) DEFAULT NULL,
  `dobetter` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `pullulate` varchar(255) DEFAULT NULL,
  `understand` varchar(255) DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `days` int DEFAULT NULL,
  PRIMARY KEY (`regular_id`),
  KEY `FK96uphskhww1otsi3fe916dfor` (`pro_id`),
  CONSTRAINT `FK96uphskhww1otsi3fe916dfor` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_regular`
--

LOCK TABLES `aoa_regular` WRITE;
/*!40000 ALTER TABLE `aoa_regular` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_regular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_reply_list`
--

DROP TABLE IF EXISTS `aoa_reply_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_reply_list` (
  `reply_id` bigint NOT NULL AUTO_INCREMENT,
  `content` text,
  `replay_time` datetime DEFAULT NULL,
  `discuss_id` bigint DEFAULT NULL,
  `reply_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK94s0c9f8hxomde6bede3d20y2` (`discuss_id`),
  KEY `FK2bn8fpyqw7mom14ks4kvrhtp9` (`reply_user_id`),
  CONSTRAINT `FK2bn8fpyqw7mom14ks4kvrhtp9` FOREIGN KEY (`reply_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK94s0c9f8hxomde6bede3d20y2` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_reply_list`
--

LOCK TABLES `aoa_reply_list` WRITE;
/*!40000 ALTER TABLE `aoa_reply_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_reply_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_resign`
--

DROP TABLE IF EXISTS `aoa_resign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_resign` (
  `resign_id` bigint NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `is_finish` bit(1) DEFAULT NULL,
  `nofinish` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `suggest` varchar(255) DEFAULT NULL,
  `hand_user` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resign_id`),
  KEY `FK3t0d1mt9o7g5q59ha10e3mwpr` (`hand_user`),
  KEY `FKam7ii5j1kdforxq8s6q3mm13n` (`pro_id`),
  CONSTRAINT `FK3t0d1mt9o7g5q59ha10e3mwpr` FOREIGN KEY (`hand_user`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKam7ii5j1kdforxq8s6q3mm13n` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_resign`
--

LOCK TABLES `aoa_resign` WRITE;
/*!40000 ALTER TABLE `aoa_resign` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_resign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_reviewed`
--

DROP TABLE IF EXISTS `aoa_reviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_reviewed` (
  `reviewed_id` bigint NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `reviewed_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `pro_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `del` int DEFAULT NULL,
  PRIMARY KEY (`reviewed_id`),
  KEY `FKevjvy6myxg1l0ibiuph3i7jw2` (`pro_id`),
  KEY `FK2iljei0wvy0cylwwyfh5dr9yk` (`user_id`),
  CONSTRAINT `FK2iljei0wvy0cylwwyfh5dr9yk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKevjvy6myxg1l0ibiuph3i7jw2` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_reviewed`
--

LOCK TABLES `aoa_reviewed` WRITE;
/*!40000 ALTER TABLE `aoa_reviewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_reviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_role_`
--

DROP TABLE IF EXISTS `aoa_role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_role_` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_value` int DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_`
--

LOCK TABLES `aoa_role_` WRITE;
/*!40000 ALTER TABLE `aoa_role_` DISABLE KEYS */;
INSERT INTO `aoa_role_` VALUES (1,'主任',NULL),(2,'文件管理员',NULL),(3,'通风负责人',NULL),(23,'通风技术员',NULL),(24,'管道负责人',NULL),(25,'管道技术员',NULL),(26,'电仪负责人',NULL),(27,'电仪技术员',NULL);
/*!40000 ALTER TABLE `aoa_role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_role_power_list`
--

DROP TABLE IF EXISTS `aoa_role_power_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_role_power_list` (
  `pk_id` bigint NOT NULL AUTO_INCREMENT,
  `is_show` int DEFAULT NULL,
  `menu_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2f9f91f213gwtglofko5r429s` (`menu_id`),
  KEY `FK7b71lfkstl47tston4lrd8066` (`role_id`),
  CONSTRAINT `FK2f9f91f213gwtglofko5r429s` FOREIGN KEY (`menu_id`) REFERENCES `aoa_sys_menu` (`menu_id`),
  CONSTRAINT `FK7b71lfkstl47tston4lrd8066` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1536 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_power_list`
--

LOCK TABLES `aoa_role_power_list` WRITE;
/*!40000 ALTER TABLE `aoa_role_power_list` DISABLE KEYS */;
INSERT INTO `aoa_role_power_list` VALUES (56,1,1,1),(57,1,2,1),(58,1,3,1),(59,1,4,1),(60,1,5,1),(61,1,6,1),(62,1,7,1),(63,1,8,1),(64,1,9,1),(65,1,10,1),(66,1,11,1),(67,1,12,1),(68,1,13,1),(69,1,14,1),(70,1,15,1),(71,1,16,1),(72,1,17,1),(73,1,18,1),(74,1,19,1),(75,1,20,1),(76,1,21,1),(77,1,22,1),(78,1,23,1),(79,1,24,1),(80,1,25,1),(81,1,26,1),(82,1,27,1),(83,1,28,1),(84,1,29,1),(85,1,30,1),(86,1,31,1),(87,1,32,1),(88,1,33,1),(89,1,34,1),(90,1,35,1),(91,1,36,1),(92,1,37,1),(93,1,38,1),(94,1,39,1),(95,1,40,1),(96,1,41,1),(97,1,42,1),(98,1,67,1),(109,1,89,1),(110,1,90,1),(111,1,1,2),(112,1,2,2),(113,1,3,2),(114,1,4,2),(115,1,5,2),(116,1,6,2),(117,1,7,2),(118,1,8,2),(119,1,9,2),(120,1,10,2),(121,1,11,2),(122,1,12,2),(123,1,13,2),(127,1,17,2),(128,1,18,2),(129,1,19,2),(130,0,20,2),(131,1,21,2),(132,1,22,2),(133,1,23,2),(134,1,24,2),(135,0,25,2),(136,1,26,2),(137,1,27,2),(138,1,28,2),(139,1,29,2),(140,1,30,2),(141,1,31,2),(142,1,32,2),(143,1,33,2),(144,1,34,2),(145,1,35,2),(146,1,36,2),(147,1,37,2),(148,1,38,2),(149,1,39,2),(150,1,40,2),(151,1,41,2),(152,1,42,2),(153,1,67,2),(167,1,2,3),(168,1,3,3),(169,1,4,3),(170,1,5,3),(171,1,6,3),(172,1,7,3),(173,1,8,3),(174,1,9,3),(175,1,10,3),(176,1,11,3),(177,1,12,3),(178,1,13,3),(182,1,17,3),(183,1,18,3),(184,1,19,3),(185,1,20,3),(186,1,21,3),(187,1,22,3),(188,1,23,3),(189,1,24,3),(190,1,25,3),(191,1,26,3),(192,1,27,3),(193,1,28,3),(194,1,29,3),(195,1,30,3),(196,1,31,3),(197,1,32,3),(198,1,33,3),(199,1,34,3),(200,1,35,3),(201,1,36,3),(202,1,37,3),(203,1,38,3),(204,1,39,3),(205,1,40,3),(206,1,41,3),(207,1,42,3),(208,1,67,3),(606,0,1,3),(661,0,1,23),(662,0,2,23),(663,0,3,23),(664,0,4,23),(665,0,5,23),(666,0,6,23),(667,0,7,23),(668,0,8,23),(669,0,9,23),(670,0,10,23),(671,0,11,23),(672,0,12,23),(673,0,13,23),(674,0,14,23),(675,0,15,23),(676,0,16,23),(677,0,17,23),(678,0,18,23),(679,0,19,23),(680,0,20,23),(681,0,21,23),(682,0,22,23),(683,0,23,23),(684,0,24,23),(685,0,25,23),(686,0,26,23),(687,0,27,23),(688,0,28,23),(689,0,29,23),(690,0,30,23),(691,0,31,23),(692,0,32,23),(693,0,33,23),(694,0,34,23),(695,0,35,23),(696,0,36,23),(697,0,37,23),(698,0,38,23),(699,0,39,23),(700,0,40,23),(701,0,41,23),(702,0,42,23),(703,0,67,23),(714,0,89,23),(715,0,90,23),(826,0,1,24),(827,0,2,24),(828,0,3,24),(829,0,4,24),(830,0,5,24),(831,0,6,24),(832,0,7,24),(833,0,8,24),(834,0,9,24),(835,0,10,24),(836,0,11,24),(837,0,12,24),(838,0,13,24),(839,0,14,24),(840,1,15,24),(841,0,16,24),(842,0,17,24),(843,0,18,24),(844,0,19,24),(845,0,20,24),(846,0,21,24),(847,0,22,24),(848,0,23,24),(849,0,24,24),(850,0,25,24),(851,0,26,24),(852,0,27,24),(853,0,28,24),(854,0,29,24),(855,0,30,24),(856,0,31,24),(857,0,32,24),(858,0,33,24),(859,0,34,24),(860,0,35,24),(861,0,36,24),(862,0,37,24),(863,0,38,24),(864,0,39,24),(865,0,40,24),(866,0,41,24),(867,0,42,24),(868,0,67,24),(879,0,89,24),(880,0,90,24),(881,0,1,25),(882,0,2,25),(883,0,3,25),(884,0,4,25),(885,0,5,25),(886,0,6,25),(887,0,7,25),(888,0,8,25),(889,0,9,25),(890,0,10,25),(891,0,11,25),(892,0,12,25),(893,0,13,25),(894,0,14,25),(895,0,15,25),(896,0,16,25),(897,0,17,25),(898,0,18,25),(899,0,19,25),(900,0,20,25),(901,0,21,25),(902,0,22,25),(903,0,23,25),(904,0,24,25),(905,0,25,25),(906,0,26,25),(907,0,27,25),(908,0,28,25),(909,0,29,25),(910,0,30,25),(911,0,31,25),(912,0,32,25),(913,0,33,25),(914,0,34,25),(915,0,35,25),(916,0,36,25),(917,0,37,25),(918,0,38,25),(919,0,39,25),(920,0,40,25),(921,0,41,25),(922,0,42,25),(923,0,67,25),(934,0,89,25),(935,0,90,25),(936,0,1,26),(937,0,2,26),(938,0,3,26),(939,0,4,26),(940,0,5,26),(941,0,6,26),(942,0,7,26),(943,0,8,26),(944,0,9,26),(945,0,10,26),(946,0,11,26),(947,0,12,26),(948,0,13,26),(949,0,14,26),(950,0,15,26),(951,0,16,26),(952,0,17,26),(953,0,18,26),(954,0,19,26),(955,0,20,26),(956,0,21,26),(957,0,22,26),(958,0,23,26),(959,0,24,26),(960,0,25,26),(961,0,26,26),(962,0,27,26),(963,0,28,26),(964,0,29,26),(965,0,30,26),(966,0,31,26),(967,0,32,26),(968,0,33,26),(969,0,34,26),(970,0,35,26),(971,0,36,26),(972,0,37,26),(973,0,38,26),(974,0,39,26),(975,0,40,26),(976,0,41,26),(977,0,42,26),(978,0,67,26),(989,0,89,26),(990,0,90,26),(991,0,1,27),(992,1,2,27),(1158,0,3,27),(1159,0,4,27),(1160,0,5,27),(1161,0,6,27),(1162,0,7,27),(1163,0,8,27),(1164,0,9,27),(1165,0,10,27),(1166,0,11,27),(1167,0,12,27),(1168,0,13,27),(1169,0,14,27),(1170,0,15,27),(1171,0,16,27),(1172,0,17,27),(1173,0,18,27),(1174,0,19,27),(1175,1,20,27),(1176,0,21,27),(1177,0,22,27),(1178,0,23,27),(1179,0,24,27),(1180,0,25,27),(1181,0,26,27),(1182,0,27,27),(1183,0,28,27),(1184,0,29,27),(1185,0,30,27),(1186,0,31,27),(1187,0,32,27),(1188,0,33,27),(1189,0,34,27),(1190,0,35,27),(1191,0,36,27),(1192,0,37,27),(1193,0,38,27),(1194,0,39,27),(1195,0,40,27),(1196,0,41,27),(1197,0,42,27),(1198,0,67,27),(1209,0,89,27),(1210,0,90,27);
/*!40000 ALTER TABLE `aoa_role_power_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_schedule_list`
--

DROP TABLE IF EXISTS `aoa_schedule_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_schedule_list` (
  `rc_id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `filedescribe` varchar(255) DEFAULT NULL,
  `is_remind` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `isreminded` int DEFAULT NULL,
  PRIMARY KEY (`rc_id`),
  KEY `FKgcip21xf5ihmgm2bnh5o4jv15` (`user_id`),
  CONSTRAINT `FKgcip21xf5ihmgm2bnh5o4jv15` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_schedule_list`
--

LOCK TABLES `aoa_schedule_list` WRITE;
/*!40000 ALTER TABLE `aoa_schedule_list` DISABLE KEYS */;
INSERT INTO `aoa_schedule_list` VALUES (1,'2017-10-18 17:35:16','2017-10-19 11:09:11','问请问',0,'2017-10-04 11:09:06',27,'qwew',44,1,'请问请问',0),(2,'2017-10-17 11:09:15','2017-11-18 11:09:11','方法都是',1,'2017-10-05 11:09:06',28,'问问去',44,1,'大撒大撒',0),(3,'2017-10-17 11:09:15','2017-10-29 11:09:11','撒打算',1,'2017-10-11 11:09:06',29,'请问请问',45,1,'阿斯顿',0),(5,'2017-10-18 16:50:28','2017-10-20 00:00:00',NULL,0,'2017-10-18 00:00:00',27,'Z现在',44,1,'啊实打实的',0),(6,'2017-10-18 16:53:33','2017-10-25 00:00:00',NULL,1,'2017-10-18 00:00:00',29,'测试',45,1,'啊实打实的撒',0),(7,'2017-10-18 16:55:23','2017-10-26 00:00:00',NULL,0,'2017-10-18 00:00:00',27,'啊实打实的撒',44,1,'啊实打实大苏打撒',0),(8,'2017-10-18 16:58:05','2017-10-20 00:00:00',NULL,0,'2017-10-18 00:00:00',27,'sa撒打算',44,1,'撒大苏打撒',0),(9,'2017-10-18 17:01:43','2017-10-21 00:00:00',NULL,0,'2017-10-18 00:00:00',27,'sasa\'d撒旦撒',44,1,'啊实打实的',0),(10,'2017-10-18 17:03:36','2017-10-20 00:00:00',NULL,0,'2017-10-18 00:00:00',27,'现在反倒反倒是',44,1,'打发士大夫但是',0);
/*!40000 ALTER TABLE `aoa_schedule_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_schedule_user`
--

DROP TABLE IF EXISTS `aoa_schedule_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_schedule_user` (
  `rcid` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  KEY `FKh6hw8vp7p2lgfovi0o7bhhlyp` (`user_id`),
  KEY `FKcmd578ftbv7i53l6mxbbva137` (`rcid`),
  CONSTRAINT `FKcmd578ftbv7i53l6mxbbva137` FOREIGN KEY (`rcid`) REFERENCES `aoa_schedule_list` (`rc_id`),
  CONSTRAINT `FKh6hw8vp7p2lgfovi0o7bhhlyp` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_schedule_user`
--

LOCK TABLES `aoa_schedule_user` WRITE;
/*!40000 ALTER TABLE `aoa_schedule_user` DISABLE KEYS */;
INSERT INTO `aoa_schedule_user` VALUES (6,2),(6,3),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `aoa_schedule_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_status_list`
--

DROP TABLE IF EXISTS `aoa_status_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_status_list` (
  `status_id` bigint NOT NULL AUTO_INCREMENT,
  `status_color` varchar(255) DEFAULT NULL,
  `status_model` varchar(255) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `sort_value` int DEFAULT NULL,
  `sort_precent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_status_list`
--

LOCK TABLES `aoa_status_list` WRITE;
/*!40000 ALTER TABLE `aoa_status_list` DISABLE KEYS */;
INSERT INTO `aoa_status_list` VALUES (1,'label-success','aoa_mailnumber','有效',0,NULL),(2,'label-default','aoa_mailnumber','无效',1,NULL),(3,'label-warning','aoa_task_list','新任务',0,'20%'),(4,'label-info','aoa_task_list','已接收',1,'40%'),(5,'label-primary','aoa_task_list','进行中',2,'60%'),(6,'label-danger','aoa_task_list','已提交',3,'80%'),(7,'label-success','aoa_task_list','已完成',4,'100%'),(8,'label-info','aoa_note_list','一般',0,NULL),(9,'label-danger','aoa_note_list','重要',1,NULL),(10,'label-info','aoa_attends_list','正常',0,NULL),(11,'label-warning','aoa_attends_list','迟到',1,NULL),(12,'label-danger','aoa_attends_list','早退',2,NULL),(13,'label-danger','a','旷工',3,NULL),(14,'label-primary','inform','一般',0,NULL),(15,'label-warning','inform','重要',1,''),(16,'label-danger','inform','紧急',2,NULL),(17,'label-warning','aoa_plan_list','未完成',0,NULL),(18,'label-success','aoa_plan_list','已完成',1,NULL),(19,'label-info','aoa_plan_list','已取消',2,NULL),(20,'label-primary','aoa_in_mail_list','一般',0,NULL),(21,'label-warning','aoa_in_mail_list','重要',1,NULL),(22,'label-danger','aoa_in_mail_list','紧急',2,NULL),(23,'label-info','aoa_process_list','未处理',0,NULL),(24,'label-primary','aoa_process_list','处理中',1,NULL),(25,'label-success','aoa_process_list','已批准',2,NULL),(26,'label-danger','aoa_process_list','未通过',3,NULL),(27,'label-primary','aoa_schedule_list','一般',0,NULL),(28,'label-warning','aoa_schedule_list','重要',1,NULL),(29,'label-danger','aoa_schedule_list','紧急',2,NULL);
/*!40000 ALTER TABLE `aoa_status_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_stay`
--

DROP TABLE IF EXISTS `aoa_stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_stay` (
  `stay_id` bigint NOT NULL AUTO_INCREMENT,
  `day` int DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  `stay_city` varchar(255) DEFAULT NULL,
  `stay_money` double DEFAULT NULL,
  `stay_time` datetime DEFAULT NULL,
  `evemoney_id` bigint DEFAULT NULL,
  `user_name` bigint DEFAULT NULL,
  PRIMARY KEY (`stay_id`),
  KEY `FK50vbdodv3kd8dixbmyf9ixyc` (`evemoney_id`),
  KEY `FKho0k9o03kbn6dd96l57xvcx3y` (`user_name`),
  CONSTRAINT `FK50vbdodv3kd8dixbmyf9ixyc` FOREIGN KEY (`evemoney_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`),
  CONSTRAINT `FKho0k9o03kbn6dd96l57xvcx3y` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_stay`
--

LOCK TABLES `aoa_stay` WRITE;
/*!40000 ALTER TABLE `aoa_stay` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_stay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_subject`
--

DROP TABLE IF EXISTS `aoa_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_subject` (
  `subject_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_subject`
--

LOCK TABLES `aoa_subject` WRITE;
/*!40000 ALTER TABLE `aoa_subject` DISABLE KEYS */;
INSERT INTO `aoa_subject` VALUES (1,'报销科目',0),(2,'办公室费用',1),(3,'第三方采购费',1),(4,'管理费用',1),(5,'投标保证金',1),(6,'销售费用',1),(7,'预付款',1),(9,'差旅费',2),(10,'采购费',3),(11,'外包费用',3),(12,'外包服务费',3),(13,'房租',4),(14,'工资',4),(15,'公积金',4),(16,'固定电话费',4),(17,'社保金',4),(18,'水费',4),(19,'印刷费',4),(20,'电费',4),(21,'投标保证金',5),(22,'车辆油费',6),(23,'市场推广费',6),(24,'市内交通费',6),(25,'招待费',6),(26,'预付款',7);
/*!40000 ALTER TABLE `aoa_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_sys_menu`
--

DROP TABLE IF EXISTS `aoa_sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT,
  `is_show` int DEFAULT NULL,
  `menu_grade` int DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `sort_id` int DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_sys_menu`
--

LOCK TABLES `aoa_sys_menu` WRITE;
/*!40000 ALTER TABLE `aoa_sys_menu` DISABLE KEYS */;
INSERT INTO `aoa_sys_menu` VALUES (1,1,NULL,'glyphicon-cog','系统管理','##',0,0),(2,1,NULL,'glyphicon-education','用户管理','#',0,2),(3,1,NULL,'glyphicon-user','角色列表','#',0,3),(4,1,NULL,'glyphicon-time','考勤管理','#',0,4),(5,1,NULL,'glyphicon-hourglass','流程管理','#',0,5),(6,1,NULL,'glyphicon-bell','公告管理','#',0,6),(7,1,NULL,'glyphicon-envelope','邮件管理','#',0,7),(8,1,NULL,'glyphicon-flag','任务管理','#',0,8),(9,1,NULL,'glyphicon-calendar','日程管理','#',0,9),(10,1,NULL,'glyphicon-plane','工作计划','#',0,10),(11,1,NULL,'glyphicon-folder-open','文件管理','#',0,11),(12,1,NULL,'glyphicon-edit','笔记管理','#',0,12),(13,1,NULL,'glyphicon-comment','讨论区','#',0,14),(14,1,NULL,'glyphicon-record','菜单管理','/testsysmenu',1,2),(15,1,NULL,'glyphicon-record','类型管理','/testsystype',1,1),(16,1,NULL,'glyphicon-record','状态管理','/testsysstatus',1,3),(17,1,NULL,'glyphicon-record','部门管理','/deptmanage',2,1),(18,1,NULL,'glyphicon-record','职位管理','/positionmanage',2,3),(19,1,NULL,'glyphicon-record','用户管理','/usermanage',2,4),(20,1,NULL,'glyphicon-record','在线用户','/morelogrecord',2,2),(21,1,NULL,'glyphicon-record','角色列表','/rolemanage',3,1),(22,1,NULL,'glyphicon-record','考勤管理','/attendceatt',4,1),(23,1,NULL,'glyphicon-record','考勤周报表','/attendceweek',4,2),(24,1,NULL,'glyphicon-record','考勤月报表','/attendcemonth',4,3),(25,1,NULL,'glyphicon-record','我的申请','/flowmanage',5,1),(26,1,NULL,'glyphicon-record','流程审核','/audit',5,2),(27,1,NULL,'glyphicon-record','通知管理','/infrommanage',6,1),(28,1,NULL,'glyphicon-record','通知列表','/infromlist',6,2),(29,1,NULL,'glyphicon-record','账号管理','/accountmanage',7,1),(30,1,NULL,'glyphicon-record','邮件管理','/mail',7,2),(31,1,NULL,'glyphicon-record','任务管理','/taskmanage',8,1),(32,1,NULL,'glyphicon-record','我的任务','/mytask',8,2),(33,1,NULL,'glyphicon-record','日程管理','/daymanage',9,1),(34,1,NULL,'glyphicon-record','我的日历','/daycalendar',9,2),(35,1,NULL,'glyphicon-record','计划管理','/planview',10,1),(36,1,NULL,'glyphicon-record','计划报表','/myplan',10,2),(37,1,NULL,'glyphicon-record','文件管理','/filemanage',11,1),(38,1,NULL,'glyphicon-record','笔记管理','/noteview',12,0),(39,1,NULL,'glyphicon-earphone','通讯录','#',0,13),(40,1,NULL,'glyphicon-record','通讯录','/addrmanage',39,1),(41,1,NULL,'glyphicon-record','我的管理','/chatmanage',13,1),(42,1,NULL,'glyphicon-record','讨论区列表','/chatlist',13,2),(67,1,NULL,'glyphicon-record','考勤列表','/attendcelist',4,4),(89,1,NULL,'glyphicon-record','超级管理员','/adminmanage',13,0),(90,1,NULL,'glyphicon-record','新建流程','/xinxeng',5,0);
/*!40000 ALTER TABLE `aoa_sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_task_list`
--

DROP TABLE IF EXISTS `aoa_task_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_task_list` (
  `task_id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_cancel` int DEFAULT '0',
  `is_top` int DEFAULT '0',
  `modify_time` datetime DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `star_time` datetime DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `task_describe` varchar(255) NOT NULL,
  `ticking` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type_id` bigint DEFAULT NULL,
  `task_push_user_id` bigint DEFAULT NULL,
  `reciverlist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK7qch0fh6s2y73dvngy1m87aw7` (`task_push_user_id`),
  CONSTRAINT `FK7qch0fh6s2y73dvngy1m87aw7` FOREIGN KEY (`task_push_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_list`
--

LOCK TABLES `aoa_task_list` WRITE;
/*!40000 ALTER TABLE `aoa_task_list` DISABLE KEYS */;
INSERT INTO `aoa_task_list` VALUES (1,'无法把淘宝','2017-09-10 00:00:00',0,0,NULL,'2017-09-18 18:39:01','2017-09-09 00:00:00',5,'入股',NULL,'24日',3,1,'罗密欧'),(13,'噁7ikea','2017-09-26 00:00:00',1,1,NULL,'2017-09-18 18:41:48','2017-09-13 00:00:00',3,'6uj',NULL,'熱土啊u就',3,1,'朱丽叶;伊丽莎白'),(14,'','2017-09-21 18:44:14',0,1,'2017-09-20 18:44:20','2017-09-20 18:44:20','2017-09-20 18:44:14',7,'給我如果 ',NULL,'的v我如果1111',3,1,'朱丽叶;伊丽莎白'),(19,'tttbthhry','2017-09-21 13:49:33',1,0,'2017-09-20 13:49:37','2017-09-20 13:49:37','2017-09-20 13:49:33',7,'ergget',NULL,'啦啦啦啦绿绿绿绿绿',3,1,'朱丽叶;伊丽莎白'),(20,'1','2017-09-30 00:00:00',1,1,NULL,'2017-09-16 15:54:10','2017-09-16 00:00:00',3,'1',NULL,'1',3,1,'朱丽叶;伊丽莎白'),(21,'31','2017-09-14 00:00:00',1,1,'2017-10-16 09:22:58','2017-10-16 09:22:58','2017-09-13 00:00:00',7,'312',NULL,'噼噼啪啪铺铺铺铺',3,1,'朱丽叶;伊丽莎白'),(26,'犯得上','2017-09-12 00:00:00',0,1,NULL,'2017-09-18 18:42:59','2017-09-07 00:00:00',3,'富士達',NULL,'飛灑',3,1,'伊丽莎白'),(27,'','2017-09-21 13:33:36',0,0,'2017-09-20 13:33:47','2017-09-20 13:33:47','2017-09-20 13:33:36',3,'FDSA ',NULL,'的方法',4,1,'朱丽叶'),(30,'','2017-09-21 13:27:51',0,1,'2017-09-20 13:27:56','2017-09-20 13:27:56','2017-09-20 13:27:51',3,'多对多',NULL,'的',4,1,'朱丽叶'),(31,'','2017-09-20 20:58:22',0,0,'2017-09-19 21:01:16','2017-09-19 21:01:16','2017-09-19 20:58:22',3,'点点滴滴',NULL,'凄凄切切',3,1,'朱丽叶;伊丽莎白'),(32,'','2017-09-24 12:48:55',0,1,'2017-09-23 12:49:28','2017-09-23 12:49:28','2017-09-23 12:48:55',3,'少时诵诗书',NULL,'凄凄切切',3,4,'soli;红之花'),(33,'','2017-09-24 12:49:44',0,0,'2017-09-23 12:49:56','2017-09-23 12:49:56','2017-09-23 12:49:44',3,'密密麻麻',NULL,'哈哈哈',3,4,'红之花'),(34,' 烦死哒','2017-09-26 12:13:03',0,1,'2017-10-16 09:34:02','2017-10-16 09:34:02','2017-09-25 12:13:03',7,'烦死哒大多数',NULL,'范德萨类型',3,1,'朱丽叶'),(35,'','2017-09-26 16:39:29',0,0,'2017-09-25 16:39:45','2017-09-25 16:39:45','2017-09-25 16:39:29',3,'反反复复付',NULL,'男男女女女',3,1,'朱丽叶;伊丽莎白;小李父斯基'),(36,'','2017-09-26 16:39:51',0,1,'2017-09-25 16:40:04','2017-09-25 16:40:04','2017-09-25 16:39:51',3,'啦啦啦啦绿绿绿',NULL,'斤斤计较军军',3,1,'朱丽叶;伊丽莎白;小李父斯基'),(37,'','2017-09-26 16:40:16',0,1,'2017-10-16 09:33:12','2017-10-16 09:33:12','2017-09-25 16:40:16',7,'巴巴爸爸',NULL,'啦啦啦啦木木木木',3,1,'朱丽叶;伊丽莎白;小李父斯基'),(38,'123','2017-10-04 19:14:10',0,1,'2017-10-16 09:33:52','2017-10-16 09:33:52','2017-10-03 19:14:10',7,'231',NULL,'221',3,1,'伊丽莎白'),(39,'','2017-10-16 14:05:02',0,1,'2017-10-15 14:05:39','2017-10-15 14:05:39','2017-10-15 14:05:02',3,'he疼合同号',NULL,'的vzfbhtrhet',3,4,'甄嬛;无双'),(40,'地方撒','2017-10-17 09:29:41',0,1,'2017-10-16 09:32:41','2017-10-16 09:32:41','2017-10-16 09:29:41',5,'的说法',NULL,'发给',3,1,'朱丽叶'),(41,'nicw','2017-10-17 09:30:13',0,1,'2017-10-16 09:33:41','2017-10-16 09:33:41','2017-10-16 09:30:13',7,'完成了',NULL,'哈哈',3,1,'朱丽叶'),(42,'','2017-10-17 09:30:44',0,1,'2017-10-16 09:32:52','2017-10-16 09:32:52','2017-10-16 09:30:44',5,'已经完成',NULL,'以完成',3,1,'朱丽叶'),(45,'','2017-10-21 09:48:26',0,0,'2017-10-20 09:48:40','2017-10-20 09:48:40','2017-10-20 09:48:26',7,'ok',NULL,'ok',3,3,'soli;红之花');
/*!40000 ALTER TABLE `aoa_task_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_task_logger`
--

DROP TABLE IF EXISTS `aoa_task_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_task_logger` (
  `logger_id` bigint NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `logger_ticking` varchar(255) DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `logger_statusid` int DEFAULT NULL,
  PRIMARY KEY (`logger_id`),
  KEY `FK5gu0thq54i7ujc6cict009h4y` (`task_id`),
  CONSTRAINT `FK5gu0thq54i7ujc6cict009h4y` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_logger`
--

LOCK TABLES `aoa_task_logger` WRITE;
/*!40000 ALTER TABLE `aoa_task_logger` DISABLE KEYS */;
INSERT INTO `aoa_task_logger` VALUES (1,'2017-09-15 19:54:58','土豪阅海万家无可',19,'罗密欧',NULL),(3,'2017-09-15 21:17:31','heenrnm',19,'罗密欧',7),(4,'2017-09-15 21:19:13','ujw5ukj5wuk',19,'罗密欧',7),(5,'2017-09-15 21:22:34','yukd68kd6',19,'罗密欧',7),(6,'2017-09-15 21:23:19','fwrgqetbh',19,'罗密欧',7),(17,'2017-09-19 21:08:06','点点滴滴',14,'罗密欧',5),(29,'2017-09-22 13:42:21','立刻开口',1,'罗密欧',5),(30,'2017-10-15 14:04:36','',35,'小李父斯基',4),(31,'2017-10-15 14:09:01','',39,'甄嬛',4),(32,'2018-02-09 00:51:03','',34,'罗密欧',7);
/*!40000 ALTER TABLE `aoa_task_logger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_task_user`
--

DROP TABLE IF EXISTS `aoa_task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_task_user` (
  `pk_id` bigint NOT NULL AUTO_INCREMENT,
  `status_id` bigint DEFAULT NULL,
  `task_id` bigint DEFAULT NULL,
  `task_recive_user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2714kl5ywm5chya4dxte8c788` (`task_id`),
  KEY `FK654dfo0oouy3fk07fs7rqo4ld` (`task_recive_user_id`),
  CONSTRAINT `FK2714kl5ywm5chya4dxte8c788` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`),
  CONSTRAINT `FK654dfo0oouy3fk07fs7rqo4ld` FOREIGN KEY (`task_recive_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_user`
--

LOCK TABLES `aoa_task_user` WRITE;
/*!40000 ALTER TABLE `aoa_task_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_task_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_traffic`
--

DROP TABLE IF EXISTS `aoa_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_traffic` (
  `traffic_id` bigint NOT NULL AUTO_INCREMENT,
  `depart_name` varchar(255) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `reach_name` varchar(255) DEFAULT NULL,
  `seat_type` varchar(255) DEFAULT NULL,
  `traffic_money` double DEFAULT NULL,
  `traffic_name` varchar(255) DEFAULT NULL,
  `evection_id` bigint DEFAULT NULL,
  `user_name` bigint DEFAULT NULL,
  PRIMARY KEY (`traffic_id`),
  KEY `FKt5gk2fg5t802gnq8y03p9e7di` (`evection_id`),
  KEY `FKejkemcx58mfj2lgi2jo2rlih3` (`user_name`),
  CONSTRAINT `FKejkemcx58mfj2lgi2jo2rlih3` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt5gk2fg5t802gnq8y03p9e7di` FOREIGN KEY (`evection_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_traffic`
--

LOCK TABLES `aoa_traffic` WRITE;
/*!40000 ALTER TABLE `aoa_traffic` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_traffic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_type_list`
--

DROP TABLE IF EXISTS `aoa_type_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_type_list` (
  `type_id` bigint NOT NULL AUTO_INCREMENT,
  `type_color` varchar(255) DEFAULT NULL,
  `type_model` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `sort_value` int DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_type_list`
--

LOCK TABLES `aoa_type_list` WRITE;
/*!40000 ALTER TABLE `aoa_type_list` DISABLE KEYS */;
INSERT INTO `aoa_type_list` VALUES (1,'red','aoa_mailnumber','系统邮件',0),(2,'red','aoa_mailnumber','公司邮件',1),(3,'red','aoa_task_list','公事',0),(4,'red','aoa_task_list','私事',1),(5,'red','aoa_note_list','我的笔记',0),(6,'red','aoa_note_list','公司笔记',1),(7,'red','aoa_note_list','共享笔记',2),(8,'red','aoa_attends_list','上班',1),(9,'red','aoa_attends_list','下班',2),(10,'red','inform','公告',0),(11,'red','inform','通知',1),(12,'red','inform','投票',2),(13,'red','aoa_plan_list','日计划',0),(14,'red','aoa_plan_list','周计划',1),(15,'red','aoa_plan_list','月计划',2),(16,'red','aoa_in_mail_list','邮件',0),(17,'red','aoa_in_mail_list','通知',1),(18,'red','aoa_in_mail_list','公告',2),(19,'label-danger','chat','公告',0),(20,'label-success','chat','讨论',1),(21,'label-warning','chat','投票',2),(22,'red','aoa_process_list','正常',0),(23,'red','aoa_process_list','重要',1),(24,'red','aoa_process_list','紧急',2),(25,'red','aoa_bursement','银行卡',0),(26,'red','aoa_bursement','现金',1),(27,'red','aoa_bursement','其他',2),(28,'red','aoa_evection','销售拜访',0),(29,'red','aoa_evection','售前支持',1),(30,'red','aoa_evection','项目支持',2),(31,'red','aoa_evection','客服外出',3),(32,'red','aoa_evection','其他',4),(33,'red','aoa_overtime','工作日',0),(34,'red','aoa_overtime','休息日',1),(35,'red','aoa_overtime','节假日',2),(36,'red','aoa_overtime','其他',3),(37,'1、年假：工作满一年以上每年可享受带薪年假，当年的年假使用期至次年3月1日止；未经用人单位批准，员工不得自行休假。','aoa_holiday','年假',7),(38,'2、事假：按照平均工作日扣发薪资（包含工资及各类补贴福利）；单次事假原则上不应超过3天，当年累计事假超过15天的视为主动放弃继续履行岗位职责的权利，特殊情况除外。  ','aoa_holiday','事假',4),(39,'3、病假：两天及以上病假必须持工作地二级甲等以上医院相关病假证明单或就医记录证明，否则无法享受病假工资；单次病假超过5天，应当持有工作所在地三级甲等医院提供的病假证明单。原则上当年累计病假超过15天应视为不具备继续履行岗位职责身体条件，特殊情况除外。  ','aoa_holiday','病假',NULL),(40,'4、婚假：婚假为十天，包含休息日，请婚假必须持结婚证明，结婚证必须在泛微工作期间领取，且婚假必须在一年内使用完毕，不得分次休假，国家或地方政府有其他规定的按照当地要求执行；  ','aoa_holiday','婚假',10),(41,'5、产假及哺乳假：按国家及地方法律法规执行，包含休息日与法定节假日；  ','aoa_holiday','产假及哺乳假',180),(42,'6、陪产假：泛微正式男性员工在工作期间配偶生育的，可凭子女出生证明，享受十个自然日陪产假。  ','aoa_holiday','陪产假',10),(43,'7、丧假：直系亲属：配偶、子女、父母可享受三天，岳父母、祖父母、外祖父母可享受一天','aoa_holiday','丧假',NULL),(44,'','aoa_schedule_list','日程提醒',0),(45,'','aoa_schedule_list','假日安排',1),(46,'red','aoa_attends_list','请假',3),(47,'red','aoa_attends_list','出差',4);
/*!40000 ALTER TABLE `aoa_type_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_user`
--

DROP TABLE IF EXISTS `aoa_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `father_id` bigint DEFAULT NULL,
  `hire_time` datetime DEFAULT NULL,
  `user_idcard` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `is_lock` int DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user_id` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `user_school` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `theme_skin` varchar(255) DEFAULT NULL,
  `user_edu` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_sign` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `dept_id` bigint DEFAULT NULL,
  `position_id` bigint DEFAULT NULL,
  `role_id` bigint DEFAULT NULL,
  `superman` int DEFAULT NULL,
  `holiday` int DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKt0vmot9xfbgq14oyij0gwh3gh` (`dept_id`),
  KEY `FKadtg9xju7q1ijcyxlkl9gwv5t` (`position_id`),
  KEY `FKl738mmblfx0uia6671rl17cj9` (`role_id`),
  CONSTRAINT `FKadtg9xju7q1ijcyxlkl9gwv5t` FOREIGN KEY (`position_id`) REFERENCES `aoa_position` (`position_id`),
  CONSTRAINT `FKl738mmblfx0uia6671rl17cj9` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`),
  CONSTRAINT `FKt0vmot9xfbgq14oyij0gwh3gh` FOREIGN KEY (`dept_id`) REFERENCES `aoa_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user`
--

LOCK TABLES `aoa_user` WRITE;
/*!40000 ALTER TABLE `aoa_user` DISABLE KEYS */;
INSERT INTO `aoa_user` VALUES (1,NULL,NULL,NULL,'1057@qq.com',3,'2017-09-22 19:35:40',NULL,'/d6242233-05de-462c-a919-ca8bcfa82773.jpg',0,NULL,NULL,NULL,NULL,'123456','罗密欧',NULL,NULL,'男','blue',NULL,'Admin','好好','13272143450',2,1,1,1,NULL,'luomiou'),(2,'中国广东','12345','1994-03-28 00:00:00','aaluoxiang@foxmail.com',1,'2008-03-06 00:00:00','510322199403280426','oa.jpg',0,NULL,NULL,NULL,NULL,'123456','小梅',1000,'中南大学','女','green','硕士','pro','天天向上','13203318185',2,1,2,0,NULL,'xiaomei'),(3,'中国广东','6217002940101998752','1995-03-05 00:00:00','255@qq.com',2,'2009-05-24 00:00:00','510322199503052485','oa.jpg',0,NULL,NULL,NULL,NULL,'123456','芳芳',1000,'湖南大学','女','blue','硕士','test1','好学','18683688154',2,1,3,0,NULL,'fangfang'),(4,'清华大学','6666','1994-09-19 16:52:11','164@qq.com',3,'2013-09-19 16:52:40','432524199612188018','oa.jpg',0,NULL,NULL,NULL,NULL,'123456','李明',3000,'清华大学','男','red','硕士','test2','天天努力','18173328888',2,1,3,0,NULL,'liming'),(38,NULL,NULL,NULL,'1057@qq.com',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'123456','小明',NULL,NULL,'男','green',NULL,'test3',NULL,'13272143450',2,1,27,0,NULL,'xiaoming'),(39,NULL,NULL,NULL,'16555@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','朱丽叶',NULL,NULL,'男','purple',NULL,'test4',NULL,'13272143450',2,1,27,0,NULL,'zhuliye'),(40,NULL,NULL,NULL,'16555@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','祝英台',NULL,NULL,'女','yellow',NULL,'123456',NULL,'13272143450',2,1,26,0,NULL,'zhuyingtai'),(41,NULL,NULL,NULL,'16555@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','小明家',NULL,NULL,'男','red',NULL,'111111',NULL,'13272143450',2,2,27,0,NULL,'xiaomingjia');
/*!40000 ALTER TABLE `aoa_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_user_log`
--

DROP TABLE IF EXISTS `aoa_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_user_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(255) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKherb88q97dxbtcge09ii875qm` (`user_id`),
  CONSTRAINT `FKherb88q97dxbtcge09ii875qm` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2686 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_log`
--

LOCK TABLES `aoa_user_log` WRITE;
/*!40000 ALTER TABLE `aoa_user_log` DISABLE KEYS */;
INSERT INTO `aoa_user_log` VALUES (2521,'192.168.2.2','2024-08-05 10:21:55','在线用户','/morelogrecord',1),(2522,'192.168.2.2','2024-08-05 10:22:05','角色列表','/rolemanage',1),(2523,'192.168.2.2','2024-08-05 10:22:21','用户管理','/usermanage',1),(2524,'192.168.2.2','2024-08-05 10:32:21','账号管理','/accountmanage',1),(2525,'192.168.2.2','2024-08-05 10:38:35','类型管理','/testsystype',1),(2526,'192.168.2.2','2024-08-05 10:38:36','菜单管理','/testsysmenu',1),(2527,'192.168.2.2','2024-08-05 10:38:36','状态管理','/testsysstatus',1),(2528,'192.168.2.2','2024-08-05 10:38:38','在线用户','/morelogrecord',1),(2529,'192.168.2.2','2024-08-05 10:38:45','职位管理','/positionmanage',1),(2530,'192.168.2.2','2024-08-05 10:38:46','用户管理','/usermanage',1),(2562,'192.168.2.2','2024-08-05 10:51:55','职位管理','/positionmanage',1),(2563,'192.168.2.2','2024-08-05 10:52:00','角色列表','/rolemanage',1),(2564,'192.168.2.2','2024-08-05 10:52:26','职位管理','/positionmanage',1),(2565,'192.168.2.2','2024-08-05 10:54:36','角色列表','/rolemanage',1),(2566,'192.168.2.2','2024-08-05 10:58:06','职位管理','/positionmanage',1),(2567,'192.168.2.2','2024-08-05 10:58:48','用户管理','/usermanage',1),(2568,'192.168.2.2','2024-08-05 10:58:51','角色列表','/rolemanage',1),(2569,'192.168.2.2','2024-08-05 11:00:47','部门管理','/deptmanage',1),(2570,'192.168.2.2','2024-08-05 11:00:48','在线用户','/morelogrecord',1),(2571,'192.168.2.2','2024-08-05 11:00:49','职位管理','/positionmanage',1),(2572,'192.168.2.2','2024-08-05 11:02:20','用户管理','/usermanage',1),(2573,'192.168.2.2','2024-08-05 11:02:22','角色列表','/rolemanage',1),(2574,'192.168.2.2','2024-08-05 11:02:25','职位管理','/positionmanage',1),(2575,'192.168.2.2','2024-08-05 11:03:01','用户管理','/usermanage',1),(2576,'192.168.2.2','2024-08-05 11:03:48','角色列表','/rolemanage',1),(2577,'192.168.2.2','2024-08-05 11:09:59','职位管理','/positionmanage',1),(2578,'192.168.2.2','2024-08-05 11:10:01','用户管理','/usermanage',1),(2579,'192.168.2.2','2024-08-05 11:10:03','部门管理','/deptmanage',1),(2580,'192.168.2.2','2024-08-05 11:10:36','在线用户','/morelogrecord',1),(2581,'192.168.2.2','2024-08-05 11:10:38','职位管理','/positionmanage',1),(2582,'192.168.2.2','2024-08-05 11:10:40','在线用户','/morelogrecord',1),(2583,'192.168.2.2','2024-08-05 11:11:12','用户管理','/usermanage',1),(2584,'192.168.2.2','2024-08-05 11:11:14','职位管理','/positionmanage',1),(2585,'192.168.2.2','2024-08-05 11:11:24','部门管理','/deptmanage',1),(2586,'192.168.2.2','2024-08-05 11:11:26','角色列表','/rolemanage',1),(2587,'192.168.2.2','2024-08-05 11:12:20','用户管理','/usermanage',1),(2588,'192.168.2.2','2024-08-05 11:13:01','角色列表','/rolemanage',1),(2589,'192.168.2.2','2024-08-05 11:13:56','用户管理','/usermanage',1),(2590,'192.168.2.2','2024-08-05 11:17:04','在线用户','/morelogrecord',1),(2591,'192.168.2.2','2024-08-05 11:17:06','职位管理','/positionmanage',1),(2592,'192.168.2.2','2024-08-05 11:17:07','用户管理','/usermanage',1),(2593,'192.168.2.2','2024-08-05 11:54:56','职位管理','/positionmanage',1),(2594,'192.168.2.2','2024-08-05 11:56:11','用户管理','/usermanage',1),(2595,'192.168.2.2','2024-08-05 11:58:08','职位管理','/positionmanage',1),(2596,'192.168.2.2','2024-08-05 11:58:09','在线用户','/morelogrecord',1),(2597,'192.168.2.2','2024-08-05 11:58:10','用户管理','/usermanage',1),(2598,'192.168.2.2','2024-08-05 11:58:11','部门管理','/deptmanage',1),(2599,'192.168.2.2','2024-08-05 11:58:13','角色列表','/rolemanage',1),(2600,'192.168.2.2','2024-08-05 11:59:04','用户管理','/usermanage',1),(2601,'192.168.2.2','2024-08-05 12:25:06','职位管理','/positionmanage',1),(2602,'192.168.2.2','2024-08-05 12:25:14','部门管理','/deptmanage',1),(2603,'192.168.2.2','2024-08-05 12:30:04','职位管理','/positionmanage',1),(2604,'192.168.2.2','2024-08-05 12:30:05','用户管理','/usermanage',1),(2605,'192.168.2.2','2024-08-05 14:29:37','类型管理','/testsystype',1),(2606,'192.168.2.2','2024-08-05 14:29:47','考勤管理','/attendceatt',1),(2607,'192.168.2.2','2024-08-05 14:30:45','类型管理','/testsystype',1),(2608,'192.168.2.2','2024-08-05 14:32:17','用户管理','/usermanage',1),(2609,'192.168.2.2','2024-08-05 14:40:40','角色列表','/rolemanage',1),(2610,'192.168.2.2','2024-08-05 14:42:25','职位管理','/positionmanage',1),(2611,'192.168.2.2','2024-08-05 14:42:27','用户管理','/usermanage',1),(2612,'192.168.2.2','2024-08-05 14:42:32','角色列表','/rolemanage',1),(2613,'192.168.2.2','2024-08-05 14:43:47','用户管理','/usermanage',1),(2614,'192.168.2.2','2024-08-05 14:43:48','角色列表','/rolemanage',1),(2615,'192.168.2.2','2024-08-05 15:14:18','用户管理','/usermanage',1),(2616,'192.168.2.2','2024-08-05 15:14:36','在线用户','/morelogrecord',41),(2617,'192.168.2.2','2024-08-05 15:44:09','角色列表','/rolemanage',1),(2618,'192.168.2.2','2024-08-05 16:13:16','通讯录','/addrmanage',1),(2619,'192.168.2.2','2024-08-05 16:26:25','角色列表','/rolemanage',1),(2620,'192.168.2.2','2024-08-05 16:26:57','部门管理','/deptmanage',1),(2621,'192.168.2.2','2024-08-05 16:34:29','在线用户','/morelogrecord',1),(2622,'192.168.2.2','2024-08-05 16:34:30','职位管理','/positionmanage',1),(2623,'192.168.2.2','2024-08-05 16:34:31','用户管理','/usermanage',1),(2624,'192.168.2.2','2024-08-05 16:35:54','部门管理','/deptmanage',1),(2625,'192.168.2.2','2024-08-05 16:36:21','在线用户','/morelogrecord',1),(2626,'192.168.2.2','2024-08-05 16:44:26','我的任务','/mytask',1),(2627,'192.168.2.2','2024-08-05 16:44:28','通知列表','/infromlist',1),(2628,'192.168.2.2','2024-08-05 16:44:29','邮件管理','/mail',1),(2629,'192.168.2.2','2024-08-05 16:44:31','我的任务','/mytask',1),(2630,'192.168.2.2','2024-08-05 16:44:32','邮件管理','/mail',1),(2631,'192.168.2.2','2024-08-05 17:32:56','在线用户','/morelogrecord',1),(2632,'192.168.2.2','2024-08-05 18:12:53','状态管理','/testsysstatus',1),(2633,'192.168.2.2','2024-08-05 18:44:11','通讯录','/addrmanage',1),(2634,'192.168.2.2','2024-08-05 18:45:06','类型管理','/testsystype',1),(2635,'192.168.2.2','2024-08-05 18:51:18','菜单管理','/testsysmenu',1),(2636,'192.168.2.2','2024-08-05 18:52:14','新建流程','/xinxeng',1),(2637,'192.168.2.2','2024-08-05 18:52:22','流程审核','/audit',1),(2638,'192.168.2.2','2024-08-05 18:52:28','新建流程','/xinxeng',1),(2639,'192.168.2.2','2024-08-05 18:52:30','日程管理','/daymanage',1),(2640,'192.168.2.2','2024-08-05 18:52:40','菜单管理','/testsysmenu',1),(2641,'192.168.2.2','2024-08-05 18:53:18','类型管理','/testsystype',1),(2642,'192.168.2.2','2024-08-05 18:53:19','菜单管理','/testsysmenu',1),(2643,'192.168.2.2','2024-08-05 18:55:20','角色列表','/rolemanage',1),(2644,'192.168.2.2','2024-08-05 18:55:27','用户管理','/usermanage',1),(2645,'192.168.2.2','2024-08-05 18:55:54','菜单管理','/testsysmenu',1),(2646,'192.168.2.2','2024-08-05 19:01:59','通讯录','/addrmanage',1),(2647,'192.168.2.2','2024-08-05 19:04:19','菜单管理','/testsysmenu',1),(2648,'192.168.2.2','2024-08-05 19:04:28','在线用户','/morelogrecord',1),(2649,'192.168.2.2','2024-08-05 19:05:28','部门管理','/deptmanage',1),(2650,'192.168.2.2','2024-08-05 19:05:33','考勤管理','/attendceatt',1),(2651,'192.168.2.2','2024-08-05 19:05:39','考勤周报表','/attendceweek',1),(2652,'192.168.2.2','2024-08-05 19:05:42','菜单管理','/testsysmenu',1),(2653,'192.168.2.2','2024-08-05 19:06:21','类型管理','/testsystype',1),(2654,'192.168.2.2','2024-08-05 19:07:10','职位管理','/positionmanage',1),(2655,'192.168.2.2','2024-08-05 19:07:14','菜单管理','/testsysmenu',1),(2656,'192.168.2.2','2024-08-05 19:08:23','计划管理','/planview',1),(2657,'192.168.2.2','2024-08-05 19:08:32','部门管理','/deptmanage',1),(2658,'192.168.2.2','2024-08-05 19:10:41','菜单管理','/testsysmenu',1),(2659,'192.168.2.2','2024-08-05 19:10:45','邮件管理','/mail',1),(2660,'192.168.2.2','2024-08-05 19:10:50','通知列表','/infromlist',1),(2661,'192.168.2.2','2024-08-05 19:10:52','我的任务','/mytask',1),(2662,'192.168.2.2','2024-08-05 19:10:54','邮件管理','/mail',1),(2663,'192.168.2.2','2024-08-05 19:19:30','菜单管理','/testsysmenu',1),(2664,'192.168.2.2','2024-08-05 19:21:55','角色列表','/rolemanage',1),(2665,'192.168.2.2','2024-08-05 19:22:04','用户管理','/usermanage',1),(2666,'192.168.2.2','2024-08-05 19:24:30','菜单管理','/testsysmenu',1),(2667,'192.168.2.2','2024-08-05 19:27:31','类型管理','/testsystype',1),(2668,'192.168.2.2','2024-08-05 19:27:35','菜单管理','/testsysmenu',1),(2669,'192.168.2.2','2024-08-05 19:27:38','状态管理','/testsysstatus',1),(2670,'192.168.2.2','2024-08-05 19:27:41','菜单管理','/testsysmenu',1),(2671,'192.168.2.2','2024-08-05 19:27:41','类型管理','/testsystype',1),(2672,'192.168.2.2','2024-08-05 19:27:48','状态管理','/testsysstatus',1),(2673,'192.168.2.2','2024-08-05 19:27:53','部门管理','/deptmanage',1),(2674,'192.168.2.2','2024-08-05 19:28:01','在线用户','/morelogrecord',1),(2675,'192.168.2.2','2024-08-05 19:28:04','职位管理','/positionmanage',1),(2676,'192.168.2.2','2024-08-05 19:28:06','用户管理','/usermanage',1),(2677,'192.168.2.2','2024-08-05 19:28:12','角色列表','/rolemanage',1),(2678,'192.168.2.2','2024-08-05 19:28:15','考勤管理','/attendceatt',1),(2679,'192.168.2.2','2024-08-05 19:28:23','考勤周报表','/attendceweek',1),(2680,'192.168.2.2','2024-08-05 19:28:24','考勤月报表','/attendcemonth',1),(2681,'192.168.2.2','2024-08-05 19:28:25','考勤列表','/attendcelist',1),(2682,'192.168.2.2','2024-08-05 19:28:27','新建流程','/xinxeng',1),(2683,'192.168.2.2','2024-08-05 19:28:30','考勤管理','/attendceatt',1),(2684,'192.168.2.2','2024-08-05 19:29:14','文件管理','/filemanage',1),(2685,'192.168.2.2','2024-08-05 19:29:36','通讯录','/addrmanage',1);
/*!40000 ALTER TABLE `aoa_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_user_login_record`
--

DROP TABLE IF EXISTS `aoa_user_login_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_user_login_record` (
  `record_id` bigint NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FKks6qpqj3ss4e4timjt0xok1p0` (`user_id`),
  CONSTRAINT `FKks6qpqj3ss4e4timjt0xok1p0` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_login_record`
--

LOCK TABLES `aoa_user_login_record` WRITE;
/*!40000 ALTER TABLE `aoa_user_login_record` DISABLE KEYS */;
INSERT INTO `aoa_user_login_record` VALUES (115,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 14:43:09',NULL,1),(116,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 14:47:14',NULL,1),(117,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 14:49:48',NULL,1),(118,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 16:10:04',NULL,1),(119,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 16:11:35',NULL,1),(120,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 16:15:03',NULL,1),(122,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 17:20:07',NULL,1),(123,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 17:27:25',NULL,1),(124,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 21:16:46',NULL,1),(125,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 21:37:00',NULL,1),(126,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-04 21:38:12',NULL,1),(127,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 09:42:03',NULL,1),(128,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 10:02:32',NULL,1),(130,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 10:34:22',NULL,1),(131,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 10:36:17',NULL,1),(132,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 10:38:08',NULL,1),(134,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 10:51:48',NULL,1),(135,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 11:50:13',NULL,1),(136,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 11:56:07',NULL,1),(137,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 11:57:30',NULL,1),(138,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 12:00:55',NULL,1),(139,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 14:09:40',NULL,1),(140,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 14:29:01',NULL,1),(141,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 14:40:00',NULL,41),(142,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 14:40:37',NULL,1),(143,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 14:41:41',NULL,41),(144,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 14:41:58',NULL,1),(145,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 15:14:34',NULL,41),(146,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 15:44:01',NULL,1),(147,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 18:20:19',NULL,1),(148,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-05 18:20:19',NULL,1);
/*!40000 ALTER TABLE `aoa_user_login_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_vote_list`
--

DROP TABLE IF EXISTS `aoa_vote_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_vote_list` (
  `vote_id` bigint NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `selectone` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_list`
--

LOCK TABLES `aoa_vote_list` WRITE;
/*!40000 ALTER TABLE `aoa_vote_list` DISABLE KEYS */;
INSERT INTO `aoa_vote_list` VALUES (1,'2017-10-04 21:52:48',1,'2017-10-03 21:52:48'),(2,'2017-10-04 21:54:36',1,'2017-10-03 21:54:36'),(3,'2017-10-04 23:18:52',1,'2017-10-03 23:18:52'),(4,'2017-10-03 02:57:33',2,'2017-10-04 02:57:33'),(5,'2017-10-05 03:18:25',1,'2017-10-04 03:18:25'),(7,'2017-10-30 15:27:03',2,'2017-10-27 15:27:03'),(8,'2017-10-18 16:01:25',2,'2017-10-04 16:01:25'),(9,'2017-10-06 22:53:22',2,'2017-10-05 22:53:22'),(10,'2017-10-06 22:56:45',2,'2017-10-05 22:56:45'),(11,'2017-10-06 22:57:59',1,'2017-10-05 22:57:59'),(12,'2017-10-13 23:25:24',1,'2017-10-12 23:25:24');
/*!40000 ALTER TABLE `aoa_vote_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_vote_title_user`
--

DROP TABLE IF EXISTS `aoa_vote_title_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_vote_title_user` (
  `vote_title_user_id` bigint NOT NULL AUTO_INCREMENT,
  `vote_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `title_id` bigint DEFAULT NULL,
  PRIMARY KEY (`vote_title_user_id`),
  KEY `FKb2pou179gr3wf10lx0wy6qrli` (`user_id`),
  KEY `FK79ia8m9w7faxi7wmth7or8mqg` (`title_id`),
  CONSTRAINT `FK79ia8m9w7faxi7wmth7or8mqg` FOREIGN KEY (`title_id`) REFERENCES `aoa_vote_titles` (`title_id`),
  CONSTRAINT `FKb2pou179gr3wf10lx0wy6qrli` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_title_user`
--

LOCK TABLES `aoa_vote_title_user` WRITE;
/*!40000 ALTER TABLE `aoa_vote_title_user` DISABLE KEYS */;
INSERT INTO `aoa_vote_title_user` VALUES (1,3,1,7),(2,3,2,8),(3,3,3,9),(4,3,4,7),(5,1,2,2),(6,2,2,4),(7,4,2,11),(8,4,2,12),(9,4,2,13),(13,5,2,15),(17,8,2,23),(18,8,2,24),(19,8,2,25),(20,11,2,32),(21,8,1,23),(22,8,1,24),(23,8,1,25);
/*!40000 ALTER TABLE `aoa_vote_title_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_vote_titles`
--

DROP TABLE IF EXISTS `aoa_vote_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_vote_titles` (
  `title_id` bigint NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vote_id` bigint DEFAULT NULL,
  PRIMARY KEY (`title_id`),
  KEY `FKnl21d99b8hc6gtfrrfsc9alge` (`vote_id`),
  CONSTRAINT `FKnl21d99b8hc6gtfrrfsc9alge` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_titles`
--

LOCK TABLES `aoa_vote_titles` WRITE;
/*!40000 ALTER TABLE `aoa_vote_titles` DISABLE KEYS */;
INSERT INTO `aoa_vote_titles` VALUES (1,'#5bc0de','22222',1),(2,'#5bc0de','111111',1),(3,'#5bc0de','33333',1),(4,'#5bc0de','我的33333',2),(5,'#5bc0de','你的2222222',2),(6,'#5bc0de','他的44444',2),(7,'#7589d2','fsdfadsf',3),(8,'#292fce','fsafas',3),(9,'#5af4a3','dfa ',3),(10,'#5bc0de','他的44444',3),(11,'#8d0282','多选2 ',4),(12,'#57427f','多选三',4),(13,'#29bcfc','多选1',4),(14,'#79d8b7','去泰国',5),(15,'#4a7647','哇塞，去香港',5),(16,'#5627a7','去北京',5),(20,'#6653e0','222',7),(21,'#af8675','1111',7),(22,'#4414e5','333',7),(23,'#9cb08f','32131',8),(24,'#72e6e2','31231',8),(25,'#9a46f7','112312',8),(26,'#8da9b7','大师傅3',9),(27,'#efe79f','大师傅',9),(28,'#118a0a','这是投票4',10),(29,'#1c6035','这是投票1',10),(30,'#bf617e','这是投票3',10),(31,'#97dc10','这是投票2',10),(32,'#b90601','范德萨',11),(33,'#4c6a51','电风扇',11),(34,'#4504de','范德萨',12),(35,'#530145','地方撒',12);
/*!40000 ALTER TABLE `aoa_vote_titles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-05 20:03:53
