-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: oa
-- ------------------------------------------------------
-- Server version	5.7.44-log

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
-- Table structure for table `ao_detail_draw`
--

DROP TABLE IF EXISTS `ao_detail_draw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_detail_draw` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `serial_number` varchar(200) DEFAULT NULL,
  `document_codes` varchar(200) DEFAULT NULL COMMENT '文件编码',
  `internal_document_codes` varchar(200) DEFAULT NULL COMMENT '内部文件编码',
  `catalog_number` varchar(200) DEFAULT NULL COMMENT '图册号',
  `professional_type` varchar(200) DEFAULT NULL COMMENT '专业',
  `version` varchar(200) DEFAULT NULL COMMENT '版本',
  `state` varchar(200) DEFAULT NULL COMMENT '状态',
  `drawing_type` varchar(200) DEFAULT NULL COMMENT '图纸类型',
  `receiving_time` varchar(200) DEFAULT NULL COMMENT '接收时间',
  `do_need_fu` varchar(200) DEFAULT NULL COMMENT '是否需FU',
  `plan_time_fu` varchar(200) DEFAULT NULL COMMENT 'FU计划时间',
  `number_fu` varchar(200) DEFAULT NULL COMMENT 'FU单号',
  `plan_completion_time` varchar(200) DEFAULT NULL COMMENT '计划细化完成时间（无需细化填/）',
  `identify_responsible_person` varchar(200) DEFAULT NULL COMMENT '识别责任人',
  `responsible_person` varchar(200) DEFAULT NULL COMMENT '细化责任人',
  `audit_person` varchar(200) DEFAULT NULL COMMENT '审核人',
  `should_handle` varchar(200) DEFAULT NULL COMMENT '是否需要处理',
  `problem_description` varchar(200) DEFAULT NULL COMMENT '问题描述',
  `problem_count` varchar(200) DEFAULT NULL COMMENT '问题数量',
  `handle_method` varchar(200) DEFAULT NULL COMMENT '处理方式',
  `process_order_number` varchar(200) DEFAULT NULL COMMENT '处理单号',
  `modify` varchar(200) DEFAULT NULL COMMENT '修改',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `completion_time` varchar(200) DEFAULT NULL COMMENT '完成时间',
  `design_point_value` varchar(200) DEFAULT NULL COMMENT '设计点值',
  `audit_point_value` varchar(200) DEFAULT NULL COMMENT '审核点值',
  `logger_ticking` varchar(200) DEFAULT NULL,
  `is_lock` int(11) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COMMENT='图纸细化';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_detail_draw`
--

LOCK TABLES `ao_detail_draw` WRITE;
/*!40000 ALTER TABLE `ao_detail_draw` DISABLE KEYS */;
INSERT INTO `ao_detail_draw` VALUES (118,NULL,'LDX-VYS-PLW-400-B24K','1116X4051BZS02-098','1116X4051BZS02','管道','A','CFC','管道三维图','2024-08-22','是','2024-08-29','XCNH-180070-XGNX','2024-8-30','李季','王博辰','李季','是',NULL,NULL,NULL,NULL,NULL,NULL,'2024-9-4','','','',0),(119,NULL,'LDX-VYS-PLW-400-B24K','1116X4051BZS02-098','1116X4051BZS02','管道','A','CFC','管道三维图','2024-08-22','是','2024-08-29','XCNH-180070-XGNX','2024-8-30','李季','王博辰','李季','是',NULL,NULL,NULL,NULL,NULL,NULL,'2024-9-4','','','',0),(120,NULL,'LDX-VYS-PLW-400-B24K','1116X4051BZS02-098','1116X4051BZS02','管道','A','CFC','管道三维图','2024-08-22','否','','','/','','李季',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',0),(121,NULL,'LDX-VYS-PLW-400-B24K','1116X4051BZS02-098','1116X4051BZS02','管道','A','CFC','管道三维图','2024-08-22','否','2024-08-29','XCNH-180070-XGNX','2024-8-30','李季',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ao_detail_draw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ao_detail_draw_question`
--

DROP TABLE IF EXISTS `ao_detail_draw_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_detail_draw_question` (
  `dd_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `problem_description` varchar(200) DEFAULT NULL,
  `problem_count` varchar(200) DEFAULT NULL,
  `handle_method` varchar(200) DEFAULT NULL COMMENT '处理方式',
  `process_order_number` varchar(200) DEFAULT NULL COMMENT '处理单号',
  `modify` varchar(200) DEFAULT NULL COMMENT '核实郑分会审单问题是否修改',
  `remarks` varchar(200) DEFAULT NULL COMMENT '备注',
  `book_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`dd_id`),
  KEY `ao_detail_draw_question_ao_detail_draw_book_id_fk` (`book_id`),
  CONSTRAINT `ao_detail_draw_question_ao_detail_draw_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `ao_detail_draw` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_detail_draw_question`
--

LOCK TABLES `ao_detail_draw_question` WRITE;
/*!40000 ALTER TABLE `ao_detail_draw_question` DISABLE KEYS */;
INSERT INTO `ao_detail_draw_question` VALUES (3,'第一个问题',NULL,'333','3334','是','5555',118),(4,'第一个问题',NULL,'333','3334','是','5555',119),(5,'第二个问题',NULL,'3334','4445','否','6666',119);
/*!40000 ALTER TABLE `ao_detail_draw_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ao_three_book`
--

DROP TABLE IF EXISTS `ao_three_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_three_book` (
  `book_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '三单ID',
  `serial_number` varchar(200) DEFAULT '' COMMENT '序号',
  `type` varchar(200) DEFAULT '' COMMENT '类型',
  `three_book_numbers` varchar(200) DEFAULT '' COMMENT '三单号',
  `chinese_name` varchar(200) DEFAULT '' COMMENT '中文名称',
  `fcr_version` varchar(200) DEFAULT '' COMMENT 'FCR版本',
  `state` varchar(200) DEFAULT '' COMMENT '状态',
  `prepared_by` varchar(200) DEFAULT '' COMMENT '编制人',
  `latest_version` varchar(200) DEFAULT '' COMMENT '最新版',
  `receiving_time` date DEFAULT NULL COMMENT '接收时间',
  `distribution_time` date DEFAULT NULL COMMENT '分发时间',
  `invalid_identification` varchar(200) DEFAULT '' COMMENT '作废标识',
  `related_document_codes` varchar(200) DEFAULT '' COMMENT '相关文件编码',
  `internal_codes` varchar(200) DEFAULT '' COMMENT '相关文件内部编码',
  `draw_version` varchar(200) DEFAULT '' COMMENT '图纸版本',
  `professional_type` varchar(200) DEFAULT '' COMMENT '专业',
  `responsible_party` varchar(200) DEFAULT '' COMMENT '责任方',
  `identify_responsible_person` varchar(200) DEFAULT '' COMMENT '识别责任人',
  `process_person` varchar(200) DEFAULT '' COMMENT '处理人',
  `audit_person` varchar(200) DEFAULT NULL COMMENT '审核人',
  `should_handle` varchar(200) DEFAULT '' COMMENT '是否需要处理',
  `handle_method` varchar(200) DEFAULT '' COMMENT '处理方式\n(ICR/细化)',
  `process_order_number` varchar(200) DEFAULT '' COMMENT '处理单号',
  `process_completion_time` varchar(200) DEFAULT '' COMMENT '处理完成时间',
  `process_responsible_party` varchar(200) DEFAULT '' COMMENT '责任方',
  `remarks` varchar(200) DEFAULT '' COMMENT '备注',
  `should_claim` varchar(200) DEFAULT '' COMMENT '是否涉及索赔',
  `plan_to_close_time` varchar(200) DEFAULT '' COMMENT '计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN',
  `actual_close_time` varchar(200) DEFAULT '' COMMENT '实际关闭时间',
  `completion_time` varchar(200) DEFAULT NULL COMMENT '完成时间',
  `design_point_value` varchar(200) DEFAULT '' COMMENT '设计点值',
  `audit_point_value` varchar(200) DEFAULT '' COMMENT '审核点值',
  `logger_ticking` varchar(200) DEFAULT '',
  `is_lock` int(11) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `ao_three_book_aoa_user_user_id_fk` (`identify_responsible_person`),
  KEY `ao_three_book_aoa_user_user_id_fk_2` (`process_person`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_three_book`
--

LOCK TABLES `ao_three_book` WRITE;
/*!40000 ALTER TABLE `ao_three_book` DISABLE KEYS */;
INSERT INTO `ao_three_book` VALUES (36,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-22','2024-05-15','N','LDX-VYS-PLW-400-B24K','1116X4051BZS02-099','A','管道','建安承包商','李季','王博辰','李季','是',NULL,NULL,NULL,'细化引起',NULL,'否',NULL,NULL,'2024-9-4','','','',0),(37,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-22','2024-05-15','N','LDX-VYS-PLW-400-B24K','1116X4051BZS02-099','A','管道','建安承包商','李季','王博辰','李季','',NULL,NULL,NULL,'业主',NULL,'是',NULL,NULL,'2024-9-4','','','',0);
/*!40000 ALTER TABLE `ao_three_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ao_three_book_process`
--

DROP TABLE IF EXISTS `ao_three_book_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_three_book_process` (
  `tb_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `handle_method` varchar(200) DEFAULT NULL,
  `process_order_number` varchar(200) DEFAULT NULL,
  `process_completion_time` varchar(200) DEFAULT NULL,
  `process_responsible_party` varchar(200) DEFAULT NULL COMMENT '责任方',
  `remarks` varchar(200) DEFAULT NULL,
  `should_claim` varchar(200) DEFAULT NULL COMMENT '是否涉及索赔',
  `book_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`tb_id`),
  KEY `ao_three_book_process_ao_three_book_book_id_fk` (`book_id`),
  CONSTRAINT `ao_three_book_process_ao_three_book_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `ao_three_book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_three_book_process`
--

LOCK TABLES `ao_three_book_process` WRITE;
/*!40000 ALTER TABLE `ao_three_book_process` DISABLE KEYS */;
INSERT INTO `ao_three_book_process` VALUES (5,'ICR','123',NULL,NULL,'1111',NULL,36),(6,'ICR','123',NULL,NULL,'1111',NULL,37),(7,'细化','456',NULL,NULL,'222',NULL,37);
/*!40000 ALTER TABLE `ao_three_book_process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_attachment_list`
--

DROP TABLE IF EXISTS `aoa_attachment_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_attachment_list` (
  `attachment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_name` varchar(255) DEFAULT NULL,
  `attachment_path` varchar(255) DEFAULT NULL,
  `attachment_shuffix` varchar(255) DEFAULT NULL,
  `attachment_size` varchar(255) DEFAULT NULL,
  `attachment_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4;
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
  `attends_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attends_ip` varchar(20) DEFAULT NULL,
  `attends_remark` varchar(20) DEFAULT NULL,
  `attends_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `attends_user_id` bigint(20) DEFAULT NULL,
  `attend_hmtime` varchar(255) DEFAULT NULL,
  `week_ofday` varchar(255) DEFAULT NULL,
  `holiday_days` double(255,0) DEFAULT '0',
  `holiday_start` date DEFAULT NULL,
  PRIMARY KEY (`attends_id`),
  KEY `FKaxgqsm98npnl1rxysh9upfjee` (`attends_user_id`),
  CONSTRAINT `FKaxgqsm98npnl1rxysh9upfjee` FOREIGN KEY (`attends_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_attends_list`
--

LOCK TABLES `aoa_attends_list` WRITE;
/*!40000 ALTER TABLE `aoa_attends_list` DISABLE KEYS */;
INSERT INTO `aoa_attends_list` VALUES (49,'192.168.2.2',NULL,'2024-08-04 14:17:15',11,8,1,'14:17','星期日',NULL,NULL),(50,'192.168.2.2',NULL,'2024-08-04 14:17:23',12,9,1,'14:17','星期日',NULL,NULL),(51,'192.168.2.2',NULL,'2024-08-06 10:37:36',11,8,1,'10:37','星期二',NULL,NULL),(52,'192.168.2.2',NULL,'2024-09-01 10:47:37',11,8,42,'10:47','星期日',NULL,NULL);
/*!40000 ALTER TABLE `aoa_attends_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_bursement`
--

DROP TABLE IF EXISTS `aoa_bursement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_bursement` (
  `bursement_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `all_money` double DEFAULT NULL,
  `allinvoices` int(11) DEFAULT NULL,
  `burse_time` datetime DEFAULT NULL,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `operation_name` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `user_name` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`bursement_id`),
  KEY `FKt3xu5y23deh0mtqkfk3ly6219` (`operation_name`),
  KEY `FK666vswh4nl3voq8qalu73v2sq` (`pro_id`),
  KEY `FKgnqp4eax31sh7mn3lt2su7olr` (`user_name`),
  CONSTRAINT `FK666vswh4nl3voq8qalu73v2sq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`),
  CONSTRAINT `FKgnqp4eax31sh7mn3lt2su7olr` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt3xu5y23deh0mtqkfk3ly6219` FOREIGN KEY (`operation_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_bursement`
--

LOCK TABLES `aoa_bursement` WRITE;
/*!40000 ALTER TABLE `aoa_bursement` DISABLE KEYS */;
INSERT INTO `aoa_bursement` VALUES (10,66,66,NULL,NULL,'','负责人',NULL,NULL,26,42);
/*!40000 ALTER TABLE `aoa_bursement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_catalog`
--

DROP TABLE IF EXISTS `aoa_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_catalog` (
  `catalog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cata_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`),
  KEY `FKbsk5nkjlqmd8j9rmkarse6j1x` (`cata_user_id`),
  CONSTRAINT `FKbsk5nkjlqmd8j9rmkarse6j1x` FOREIGN KEY (`cata_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_catalog`
--

LOCK TABLES `aoa_catalog` WRITE;
/*!40000 ALTER TABLE `aoa_catalog` DISABLE KEYS */;
INSERT INTO `aoa_catalog` VALUES (1,'note',1,1),(2,'诗词记录',1,1),(32,'规划(3)',1,1),(33,'根目录',1,NULL),(34,'规划(4)',1,1);
/*!40000 ALTER TABLE `aoa_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_comment_list`
--

DROP TABLE IF EXISTS `aoa_comment_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_comment_list` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `comment_user_id` bigint(20) DEFAULT NULL,
  `reply_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK2k00kkfhh93949ybod7qn56ax` (`comment_user_id`),
  KEY `FKeopff14rxco5thbwwlu7exglo` (`reply_id`),
  CONSTRAINT `FK2k00kkfhh93949ybod7qn56ax` FOREIGN KEY (`comment_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKeopff14rxco5thbwwlu7exglo` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dept_addr` varchar(255) DEFAULT NULL,
  `dept_fax` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `deptmanager` bigint(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_dept`
--

LOCK TABLES `aoa_dept` WRITE;
/*!40000 ALTER TABLE `aoa_dept` DISABLE KEYS */;
INSERT INTO `aoa_dept` VALUES (2,'辽宁','0401-88884102','研发部','13700001111','114@qq.com',1,'2017-09-13 19:04:07','2010-05-23 00:00:00');
/*!40000 ALTER TABLE `aoa_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_detailsburse`
--

DROP TABLE IF EXISTS `aoa_detailsburse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_detailsburse` (
  `detailsburse_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descript` varchar(255) DEFAULT NULL,
  `detailmoney` double NOT NULL,
  `invoices` int(11) DEFAULT NULL,
  `produce_time` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bursment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`detailsburse_id`),
  KEY `FKi02w0bghxr73fsc5sbpeyqdnn` (`bursment_id`),
  CONSTRAINT `FKi02w0bghxr73fsc5sbpeyqdnn` FOREIGN KEY (`bursment_id`) REFERENCES `aoa_bursement` (`bursement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_detailsburse`
--

LOCK TABLES `aoa_detailsburse` WRITE;
/*!40000 ALTER TABLE `aoa_detailsburse` DISABLE KEYS */;
INSERT INTO `aoa_detailsburse` VALUES (12,'vvvvv',66,66,'2024-08-06 14:04:22','车辆油费',10);
/*!40000 ALTER TABLE `aoa_detailsburse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_director`
--

DROP TABLE IF EXISTS `aoa_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_director` (
  `director_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `company_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image_path` int(11) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`director_id`),
  KEY `FKi6pfdnqhbc6js940e2o1vape5` (`user_id`),
  CONSTRAINT `FKi6pfdnqhbc6js940e2o1vape5` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `director_users_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catelog_name` varchar(255) DEFAULT NULL,
  `is_handle` int(11) DEFAULT NULL,
  `director_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `share_user_id` bigint(20) DEFAULT NULL,
  `sharetime` datetime DEFAULT NULL,
  PRIMARY KEY (`director_users_id`),
  KEY `FK675oqfmv4kx9w6bgi9rgsb8nw` (`director_id`),
  KEY `FK7hq4xk2ja9eka4210qkqq03hi` (`user_id`),
  KEY `FKibwkjvmp9383ltkfew1kyy6ny` (`share_user_id`),
  CONSTRAINT `FK675oqfmv4kx9w6bgi9rgsb8nw` FOREIGN KEY (`director_id`) REFERENCES `aoa_director` (`director_id`),
  CONSTRAINT `FK7hq4xk2ja9eka4210qkqq03hi` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKibwkjvmp9383ltkfew1kyy6ny` FOREIGN KEY (`share_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;
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
  `discuss_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `visit_num` int(11) DEFAULT NULL,
  `discuss_user_id` bigint(20) DEFAULT NULL,
  `vote_id` bigint(20) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`discuss_id`),
  KEY `FKt8hvx0ai5fto20mmxmy2g8j4g` (`discuss_user_id`),
  KEY `FK17yi8arj4vjdr5mm5dhjov10j` (`vote_id`),
  CONSTRAINT `FK17yi8arj4vjdr5mm5dhjov10j` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`),
  CONSTRAINT `FKt8hvx0ai5fto20mmxmy2g8j4g` FOREIGN KEY (`discuss_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `evection_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evection_id`),
  KEY `FKql1c10e5u2vefisjqjbu2d5pa` (`pro_id`),
  CONSTRAINT `FKql1c10e5u2vefisjqjbu2d5pa` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `evectionmoney_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `money` double NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `pro` int(11) DEFAULT NULL,
  PRIMARY KEY (`evectionmoney_id`),
  KEY `FKcpuubnshaf2cg47hns9m0h1dq` (`pro_id`),
  CONSTRAINT `FKcpuubnshaf2cg47hns9m0h1dq` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `file_shuffix` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `path_before_trash` bigint(20) DEFAULT NULL,
  `path_id` bigint(20) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `upload_time` datetime DEFAULT NULL,
  `file_user_id` bigint(20) DEFAULT NULL,
  `file_istrash` bigint(1) unsigned zerofill DEFAULT '0',
  `file_isshare` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`file_id`),
  KEY `FKfshy9n300pqxjsweo9247jgqs` (`path_id`),
  KEY `FKlj6l9qroivus28aiqluue4bew` (`file_user_id`),
  CONSTRAINT `FKfshy9n300pqxjsweo9247jgqs` FOREIGN KEY (`path_id`) REFERENCES `aoa_file_path` (`path_id`),
  CONSTRAINT `FKlj6l9qroivus28aiqluue4bew` FOREIGN KEY (`file_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `path_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `path_name` varchar(255) DEFAULT NULL,
  `path_user_id` bigint(20) DEFAULT NULL,
  `path_istrash` bigint(20) DEFAULT '0',
  PRIMARY KEY (`path_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_file_path`
--

LOCK TABLES `aoa_file_path` WRITE;
/*!40000 ALTER TABLE `aoa_file_path` DISABLE KEYS */;
INSERT INTO `aoa_file_path` VALUES (1,0,'根目录',NULL,0),(6,1,'罗密欧',1,0),(89,1,'无双',10,0),(90,1,'甄姬',7,0),(91,90,'新建文件夹',7,0),(93,1,'于彤',13,0),(94,6,'test',1,0),(95,1,'soli',5,0),(97,1,'Admin',1,0),(98,1,'康兴',1,0),(99,1,'曾蓉',42,0);
/*!40000 ALTER TABLE `aoa_file_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_holiday`
--

DROP TABLE IF EXISTS `aoa_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_holiday` (
  `holiday_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `leave_days` int(11) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`holiday_id`),
  KEY `FK1glo2wpb4kuiop1ymjxs0knxj` (`pro_id`),
  CONSTRAINT `FK1glo2wpb4kuiop1ymjxs0knxj` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail_content` text,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_file_id` bigint(20) DEFAULT NULL,
  `mail_title` varchar(255) NOT NULL,
  `mail_type` bigint(20) DEFAULT NULL,
  `mail_in_push_user_id` bigint(20) DEFAULT NULL,
  `in_receiver` varchar(255) DEFAULT NULL,
  `mail_status_id` bigint(20) DEFAULT NULL,
  `mail_number_id` bigint(20) DEFAULT NULL,
  `mail_del` int(11) DEFAULT NULL,
  `mail_push` int(11) DEFAULT NULL,
  `mail_star` int(11) DEFAULT NULL,
  PRIMARY KEY (`mail_id`),
  KEY `FK33o7j8f0xk8n8vrk576iktglc` (`mail_file_id`),
  KEY `FK933q7ouoddu584qg08rbvwvxi` (`mail_in_push_user_id`),
  KEY `FKghibt111d1yvc3f02x06sihjp` (`mail_number_id`),
  CONSTRAINT `FK33o7j8f0xk8n8vrk576iktglc` FOREIGN KEY (`mail_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`),
  CONSTRAINT `FK933q7ouoddu584qg08rbvwvxi` FOREIGN KEY (`mail_in_push_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKghibt111d1yvc3f02x06sihjp` FOREIGN KEY (`mail_number_id`) REFERENCES `aoa_mailnumber` (`mail_number_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `discuss_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`discuss_id`,`user_id`),
  KEY `FKkl0fitgg3qixkg5gg9mmjp5e7` (`user_id`),
  CONSTRAINT `FKkl0fitgg3qixkg5gg9mmjp5e7` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKnhdtxclyun4is9ne5o99nqw1c` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `reply_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  KEY `FK7fv96y8gbqcnb44qao4ey4rmn` (`user_id`),
  KEY `FKcuptpmm0l1e0b9pjv0xksqqai` (`reply_id`),
  CONSTRAINT `FK7fv96y8gbqcnb44qao4ey4rmn` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcuptpmm0l1e0b9pjv0xksqqai` FOREIGN KEY (`reply_id`) REFERENCES `aoa_reply_list` (`reply_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_read` int(11) NOT NULL,
  `mail_id` bigint(20) DEFAULT NULL,
  `mail_reciver_id` bigint(20) DEFAULT NULL,
  `is_star` int(11) DEFAULT NULL,
  `is_del` int(11) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FKj8ki52vm052q6qdal2rkh2c9q` (`mail_id`),
  KEY `FK65vdrbmq9hu4hrhvtw6slwxlc` (`mail_reciver_id`),
  CONSTRAINT `FK65vdrbmq9hu4hrhvtw6slwxlc` FOREIGN KEY (`mail_reciver_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKj8ki52vm052q6qdal2rkh2c9q` FOREIGN KEY (`mail_id`) REFERENCES `aoa_in_mail_list` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `mail_number_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `mail_account` varchar(255) NOT NULL,
  `mail_create_time` datetime DEFAULT NULL,
  `mail_des` varchar(255) DEFAULT NULL,
  `mail_type` bigint(20) DEFAULT NULL,
  `mail_user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` bigint(20) DEFAULT NULL,
  `mail_num_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mail_number_id`),
  KEY `FKn9qg20uba4xn2k5m62jrcyc6c` (`mail_num_user_id`),
  CONSTRAINT `FKn9qg20uba4xn2k5m62jrcyc6c` FOREIGN KEY (`mail_num_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_mailnumber`
--

LOCK TABLES `aoa_mailnumber` WRITE;
/*!40000 ALTER TABLE `aoa_mailnumber` DISABLE KEYS */;
INSERT INTO `aoa_mailnumber` VALUES (1,'1057245260@qq.com','2017-09-24 12:23:26',NULL,1,'宋佳','scdvszfjjfrpbeaa',1,1),(2,'664303632@qq.com','2017-09-13 13:29:28',NULL,1,'李明','123456',2,1),(3,'ffffff','2017-09-22 14:02:51',NULL,2,'ggg','33333',1,1),(4,'66@qq.com','2017-09-24 18:26:31','的点点滴滴',1,'私事','333',1,1),(5,'66@qq.com','2017-09-24 18:27:26','的点点滴滴',1,'哈哈哈哈','55555',1,1),(6,'66@qq.com','2017-09-24 18:37:06','的点点滴滴',1,'滚滚滚','55555',2,1),(9,'10@qq.com','2017-09-25 18:45:52','',1,'多对多','发vwv ',1,1),(10,'45@qq.com','2017-09-25 18:46:22','是是是',1,'吗vwjrerg ','14982',1,1),(11,'1234@qq.com','2017-09-25 18:46:53','',1,'点点滴滴','dbetet',2,1),(12,'12@qq.com','2017-09-25 18:47:15','',1,'反反复复','34455',1,1),(13,'34@qq.com','2017-09-25 18:47:35','',1,'别发额','457895780',1,1);
/*!40000 ALTER TABLE `aoa_mailnumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_note_list`
--

DROP TABLE IF EXISTS `aoa_note_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_note_list` (
  `note_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(15000) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `catalog_id` bigint(20) DEFAULT NULL,
  `attach_id` bigint(20) DEFAULT NULL,
  `is_collected` bigint(20) DEFAULT '0',
  `createman_id` bigint(20) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`note_id`),
  KEY `FK3e1rxyyg851r231ln3ucnrg7q` (`catalog_id`),
  CONSTRAINT `FK3e1rxyyg851r231ln3ucnrg7q` FOREIGN KEY (`catalog_id`) REFERENCES `aoa_catalog` (`catalog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4;
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
  `notepaper_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `concent` text,
  `create_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `notepaper_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notepaper_id`),
  KEY `FKsavcqw29haox5bu7y90it8jb7` (`notepaper_user_id`),
  CONSTRAINT `FKsavcqw29haox5bu7y90it8jb7` FOREIGN KEY (`notepaper_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `notice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `is_top` int(11) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `notice_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;
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
  `relatin_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_read` int(11) DEFAULT NULL,
  `relatin_notice_id` bigint(20) DEFAULT NULL,
  `relatin_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`relatin_id`),
  KEY `FKhxq8glkpb5qi1smn5gu142rky` (`relatin_notice_id`),
  KEY `FK52evvby6j47j24624ydi0o221` (`relatin_user_id`),
  CONSTRAINT `FK52evvby6j47j24624ydi0o221` FOREIGN KEY (`relatin_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKhxq8glkpb5qi1smn5gu142rky` FOREIGN KEY (`relatin_notice_id`) REFERENCES `aoa_notice_list` (`notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_notice_user_relation`
--

LOCK TABLES `aoa_notice_user_relation` WRITE;
/*!40000 ALTER TABLE `aoa_notice_user_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_notice_user_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_overtime`
--

DROP TABLE IF EXISTS `aoa_overtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_overtime` (
  `overtime_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`overtime_id`),
  KEY `FK5o36fvdsrrhvr9q4dvffxkuoc` (`pro_id`),
  CONSTRAINT `FK5o36fvdsrrhvr9q4dvffxkuoc` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `plan_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `plan_comment` varchar(5000) DEFAULT '',
  `plan_content` varchar(10000) DEFAULT NULL,
  `plan_summary` varchar(800) DEFAULT NULL,
  `start_time` datetime NOT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `plan_user_id` bigint(20) DEFAULT NULL,
  `attach_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`plan_id`,`start_time`),
  KEY `FKsqqfaj3e7rdl3jalr2sm0y4ln` (`plan_user_id`),
  CONSTRAINT `FKsqqfaj3e7rdl3jalr2sm0y4ln` FOREIGN KEY (`plan_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `position_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `describtion` varchar(255) DEFAULT NULL,
  `deptid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
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
  `process_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apply_time` datetime DEFAULT NULL,
  `deeply_id` bigint(20) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `process_des` text,
  `process_name` varchar(255) DEFAULT NULL,
  `procsee_days` int(11) DEFAULT NULL,
  `is_checked` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `pro_file_id` bigint(20) DEFAULT NULL,
  `process_user_id` bigint(20) DEFAULT NULL,
  `shenuser` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_id`),
  KEY `FKiltoi9iw3vjixl6u4cd60fi1p` (`pro_file_id`),
  KEY `FKhtdg4du5ryotah5v1dgyjfh2t` (`process_user_id`),
  CONSTRAINT `FKhtdg4du5ryotah5v1dgyjfh2t` FOREIGN KEY (`process_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKiltoi9iw3vjixl6u4cd60fi1p` FOREIGN KEY (`pro_file_id`) REFERENCES `aoa_attachment_list` (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_process_list`
--

LOCK TABLES `aoa_process_list` WRITE;
/*!40000 ALTER TABLE `aoa_process_list` DISABLE KEYS */;
INSERT INTO `aoa_process_list` VALUES (26,'2024-08-06 14:32:57',22,NULL,'vvffv','vvv',NULL,0,NULL,25,'费用报销',NULL,43,'Admin');
/*!40000 ALTER TABLE `aoa_process_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_receiver_note`
--

DROP TABLE IF EXISTS `aoa_receiver_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_receiver_note` (
  `note_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK904cmor3q468pj3ft6mdrnqwk` (`user_id`),
  KEY `FKcx7spjjefkofw62v8yxmgjxao` (`note_id`),
  CONSTRAINT `FK904cmor3q468pj3ft6mdrnqwk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK_NOTE_LIST` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`),
  CONSTRAINT `FK_USER` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKcx7spjjefkofw62v8yxmgjxao` FOREIGN KEY (`note_id`) REFERENCES `aoa_note_list` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `regular_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `deficiency` varchar(255) DEFAULT NULL,
  `dobetter` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `pullulate` varchar(255) DEFAULT NULL,
  `understand` varchar(255) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  PRIMARY KEY (`regular_id`),
  KEY `FK96uphskhww1otsi3fe916dfor` (`pro_id`),
  CONSTRAINT `FK96uphskhww1otsi3fe916dfor` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `reply_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `replay_time` datetime DEFAULT NULL,
  `discuss_id` bigint(20) DEFAULT NULL,
  `reply_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`reply_id`),
  KEY `FK94s0c9f8hxomde6bede3d20y2` (`discuss_id`),
  KEY `FK2bn8fpyqw7mom14ks4kvrhtp9` (`reply_user_id`),
  CONSTRAINT `FK2bn8fpyqw7mom14ks4kvrhtp9` FOREIGN KEY (`reply_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FK94s0c9f8hxomde6bede3d20y2` FOREIGN KEY (`discuss_id`) REFERENCES `aoa_discuss_list` (`discuss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `resign_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `financial_advice` varchar(255) DEFAULT NULL,
  `is_finish` bit(1) DEFAULT NULL,
  `nofinish` varchar(255) DEFAULT NULL,
  `personnel_advice` varchar(255) DEFAULT NULL,
  `suggest` varchar(255) DEFAULT NULL,
  `hand_user` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `manager_advice` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resign_id`),
  KEY `FK3t0d1mt9o7g5q59ha10e3mwpr` (`hand_user`),
  KEY `FKam7ii5j1kdforxq8s6q3mm13n` (`pro_id`),
  CONSTRAINT `FK3t0d1mt9o7g5q59ha10e3mwpr` FOREIGN KEY (`hand_user`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKam7ii5j1kdforxq8s6q3mm13n` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `reviewed_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advice` varchar(255) DEFAULT NULL,
  `reviewed_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `pro_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `del` int(11) DEFAULT NULL,
  PRIMARY KEY (`reviewed_id`),
  KEY `FKevjvy6myxg1l0ibiuph3i7jw2` (`pro_id`),
  KEY `FK2iljei0wvy0cylwwyfh5dr9yk` (`user_id`),
  CONSTRAINT `FK2iljei0wvy0cylwwyfh5dr9yk` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKevjvy6myxg1l0ibiuph3i7jw2` FOREIGN KEY (`pro_id`) REFERENCES `aoa_process_list` (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_reviewed`
--

LOCK TABLES `aoa_reviewed` WRITE;
/*!40000 ALTER TABLE `aoa_reviewed` DISABLE KEYS */;
INSERT INTO `aoa_reviewed` VALUES (37,'','2024-08-07 14:14:20',25,26,1,0);
/*!40000 ALTER TABLE `aoa_reviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_role_`
--

DROP TABLE IF EXISTS `aoa_role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_role_` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_`
--

LOCK TABLES `aoa_role_` WRITE;
/*!40000 ALTER TABLE `aoa_role_` DISABLE KEYS */;
INSERT INTO `aoa_role_` VALUES (1,'主任',NULL),(2,'文件管理员',NULL),(3,'通风负责人',NULL),(4,'通风技术员',NULL),(5,'管道负责人',NULL),(6,'管道技术员',NULL),(7,'电仪负责人',NULL),(8,'电仪技术员',NULL);
/*!40000 ALTER TABLE `aoa_role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_role_power_list`
--

DROP TABLE IF EXISTS `aoa_role_power_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_role_power_list` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_show` int(11) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2f9f91f213gwtglofko5r429s` (`menu_id`),
  KEY `FK7b71lfkstl47tston4lrd8066` (`role_id`),
  CONSTRAINT `FK2f9f91f213gwtglofko5r429s` FOREIGN KEY (`menu_id`) REFERENCES `aoa_sys_menu` (`menu_id`),
  CONSTRAINT `FK7b71lfkstl47tston4lrd8066` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1736 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_power_list`
--

LOCK TABLES `aoa_role_power_list` WRITE;
/*!40000 ALTER TABLE `aoa_role_power_list` DISABLE KEYS */;
INSERT INTO `aoa_role_power_list` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,5,1),(5,1,8,1),(7,1,10,1),(8,1,11,1),(9,1,12,1),(10,1,13,1),(11,1,14,1),(12,1,15,1),(13,1,16,1),(14,1,17,1),(15,1,18,1),(16,1,19,1),(17,1,20,1),(18,1,21,1),(19,1,22,1),(20,1,23,1),(21,1,24,1),(22,1,25,1),(1536,0,1,2),(1537,0,2,2),(1538,0,3,2),(1539,0,5,2),(1540,1,8,2),(1541,1,10,2),(1542,0,11,2),(1543,0,12,2),(1544,0,13,2),(1545,0,14,2),(1546,0,15,2),(1547,0,16,2),(1548,0,17,2),(1549,0,18,2),(1550,0,19,2),(1551,0,20,2),(1552,0,21,2),(1553,0,22,2),(1554,1,23,2),(1555,1,24,2),(1556,1,25,2),(1557,0,1,3),(1558,0,2,3),(1559,0,3,3),(1560,0,5,3),(1561,1,8,3),(1562,1,10,3),(1563,0,11,3),(1564,0,12,3),(1565,0,13,3),(1566,0,14,3),(1567,0,15,3),(1568,0,16,3),(1569,0,17,3),(1570,0,18,3),(1571,0,19,3),(1572,0,20,3),(1573,0,21,3),(1574,0,22,3),(1575,0,23,3),(1576,1,24,3),(1577,1,25,3),(1578,0,1,4),(1579,0,2,4),(1580,0,3,4),(1581,1,5,4),(1582,1,8,4),(1583,1,10,4),(1584,0,11,4),(1585,0,12,4),(1586,0,13,4),(1587,0,14,4),(1588,0,15,4),(1589,0,16,4),(1590,0,17,4),(1591,0,18,4),(1592,1,19,4),(1593,1,20,4),(1594,1,21,4),(1595,0,22,4),(1596,0,23,4),(1597,1,24,4),(1598,1,25,4),(1620,0,1,5),(1621,0,2,5),(1622,0,3,5),(1623,0,5,5),(1624,1,8,5),(1625,1,10,5),(1626,0,11,5),(1627,0,12,5),(1628,0,13,5),(1629,0,14,5),(1630,0,15,5),(1631,0,16,5),(1632,0,17,5),(1633,0,18,5),(1634,0,19,5),(1635,0,20,5),(1636,0,21,5),(1637,0,22,5),(1638,0,23,5),(1639,1,24,5),(1640,1,25,5),(1641,0,1,6),(1642,0,2,6),(1643,0,3,6),(1644,0,5,6),(1645,1,8,6),(1646,1,10,6),(1647,0,11,6),(1648,0,12,6),(1649,0,13,6),(1650,0,14,6),(1651,0,15,6),(1652,0,16,6),(1653,0,17,6),(1654,0,18,6),(1655,0,19,6),(1656,0,20,6),(1657,0,21,6),(1658,0,22,6),(1659,0,23,6),(1660,1,24,6),(1661,1,25,6),(1662,0,1,7),(1663,0,2,7),(1664,0,3,7),(1665,0,5,7),(1666,1,8,7),(1667,1,10,7),(1668,0,11,7),(1669,0,12,7),(1670,0,13,7),(1671,0,14,7),(1672,0,15,7),(1673,0,16,7),(1674,0,17,7),(1675,0,18,7),(1676,0,19,7),(1677,0,20,7),(1678,0,21,7),(1679,0,22,7),(1680,0,23,7),(1681,1,24,7),(1682,1,25,7),(1683,0,1,8),(1684,0,2,8),(1685,0,3,8),(1686,0,5,8),(1687,1,8,8),(1688,1,10,8),(1689,0,11,8),(1690,0,12,8),(1691,0,13,8),(1692,0,14,8),(1693,0,15,8),(1694,0,16,8),(1695,0,17,8),(1696,0,18,8),(1697,0,19,8),(1698,0,20,8),(1699,0,21,8),(1700,0,22,8),(1701,0,23,8),(1702,1,24,8),(1703,1,25,8),(1704,1,29,1),(1705,1,29,2),(1706,1,29,3),(1707,1,29,4),(1708,1,29,5),(1709,1,29,6),(1710,1,29,7),(1711,1,29,8),(1712,1,30,1),(1713,1,30,2),(1714,1,30,3),(1715,1,30,4),(1716,1,30,5),(1717,1,30,6),(1718,1,30,7),(1719,1,30,8),(1720,1,31,1),(1721,1,31,2),(1722,1,31,3),(1723,1,31,4),(1724,1,31,5),(1725,1,31,6),(1726,1,31,7),(1727,1,31,8),(1728,1,33,1),(1729,0,33,2),(1730,1,33,3),(1731,0,33,4),(1732,1,33,5),(1733,0,33,6),(1734,1,33,7),(1735,0,33,8);
/*!40000 ALTER TABLE `aoa_role_power_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_schedule_list`
--

DROP TABLE IF EXISTS `aoa_schedule_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_schedule_list` (
  `rc_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `filedescribe` varchar(255) DEFAULT NULL,
  `is_remind` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `status_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `miaoshu` varchar(255) DEFAULT NULL,
  `isreminded` int(11) DEFAULT NULL,
  PRIMARY KEY (`rc_id`),
  KEY `FKgcip21xf5ihmgm2bnh5o4jv15` (`user_id`),
  CONSTRAINT `FKgcip21xf5ihmgm2bnh5o4jv15` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
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
  `rcid` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  KEY `FKh6hw8vp7p2lgfovi0o7bhhlyp` (`user_id`),
  KEY `FKcmd578ftbv7i53l6mxbbva137` (`rcid`),
  CONSTRAINT `FKcmd578ftbv7i53l6mxbbva137` FOREIGN KEY (`rcid`) REFERENCES `aoa_schedule_list` (`rc_id`),
  CONSTRAINT `FKh6hw8vp7p2lgfovi0o7bhhlyp` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_schedule_user`
--

LOCK TABLES `aoa_schedule_user` WRITE;
/*!40000 ALTER TABLE `aoa_schedule_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aoa_schedule_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_status_list`
--

DROP TABLE IF EXISTS `aoa_status_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_status_list` (
  `status_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_color` varchar(255) DEFAULT NULL,
  `status_model` varchar(255) DEFAULT NULL,
  `status_name` varchar(255) DEFAULT NULL,
  `sort_value` int(11) DEFAULT NULL,
  `sort_precent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_status_list`
--

LOCK TABLES `aoa_status_list` WRITE;
/*!40000 ALTER TABLE `aoa_status_list` DISABLE KEYS */;
INSERT INTO `aoa_status_list` VALUES (3,'label-warning','aoa_task_list','新任务',0,'20%'),(5,'label-primary','aoa_task_list','处理中',2,'25%'),(6,'label-danger','aoa_task_list','审核中',3,'80%'),(7,'label-success','aoa_task_list','已完成',4,'100%'),(8,'label-success','aoa_task_list','已完成，问题跟踪中',5,'90%');
/*!40000 ALTER TABLE `aoa_status_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_stay`
--

DROP TABLE IF EXISTS `aoa_stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_stay` (
  `stay_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `day` int(11) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `leave_time` datetime DEFAULT NULL,
  `stay_city` varchar(255) DEFAULT NULL,
  `stay_money` double DEFAULT NULL,
  `stay_time` datetime DEFAULT NULL,
  `evemoney_id` bigint(20) DEFAULT NULL,
  `user_name` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`stay_id`),
  KEY `FK50vbdodv3kd8dixbmyf9ixyc` (`evemoney_id`),
  KEY `FKho0k9o03kbn6dd96l57xvcx3y` (`user_name`),
  CONSTRAINT `FK50vbdodv3kd8dixbmyf9ixyc` FOREIGN KEY (`evemoney_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`),
  CONSTRAINT `FKho0k9o03kbn6dd96l57xvcx3y` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `subject_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
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
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_show` int(11) DEFAULT NULL,
  `menu_grade` int(11) DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `sort_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_sys_menu`
--

LOCK TABLES `aoa_sys_menu` WRITE;
/*!40000 ALTER TABLE `aoa_sys_menu` DISABLE KEYS */;
INSERT INTO `aoa_sys_menu` VALUES (1,1,NULL,'glyphicon-cog','系统管理','##',0,0),(2,1,NULL,'glyphicon-education','用户管理','#',0,2),(3,1,NULL,'glyphicon-user','角色列表','#',0,3),(5,0,NULL,'glyphicon-hourglass','流程管理','#',0,5),(8,1,NULL,'glyphicon-flag','任务管理','#',0,8),(10,1,NULL,'glyphicon-earphone','通讯录','#',0,13),(11,1,NULL,'glyphicon-record','菜单管理','/testsysmenu',1,2),(12,1,NULL,'glyphicon-record','类型管理','/testsystype',1,1),(13,1,NULL,'glyphicon-record','状态管理','/testsysstatus',1,3),(14,1,NULL,'glyphicon-record','部门管理','/deptmanage',2,1),(15,1,NULL,'glyphicon-record','职位管理','/positionmanage',2,3),(16,1,NULL,'glyphicon-record','用户管理','/usermanage',2,4),(17,1,NULL,'glyphicon-record','在线用户','/morelogrecord',2,2),(18,1,NULL,'glyphicon-record','角色列表','/rolemanage',3,1),(19,0,NULL,'glyphicon-record','我的申请','/flowmanage',0,1),(20,0,NULL,'glyphicon-record','流程审核','/audit',0,2),(21,0,NULL,'glyphicon-record','新建流程','/xinxeng',0,0),(22,1,NULL,'glyphicon-record','账号管理','/accountmanage',7,1),(23,1,NULL,'glyphicon-record','任务管理','/taskmanage',8,1),(24,1,NULL,'glyphicon-record','我的任务','/mytask',8,2),(25,1,NULL,'glyphicon-record','通讯录','/addrmanage',10,1),(29,1,NULL,'glyphicon glyphicon-file','现场设计室','#',0,9),(30,1,NULL,'glyphicon-record','三单一览','/threebookmanage',29,0),(31,1,NULL,'glyphicon-record','细化一览','/detaildrawmanage',29,1),(33,1,NULL,'glyphicon-record','审核管理','/shenqingmanage',8,3);
/*!40000 ALTER TABLE `aoa_sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_task_list`
--

DROP TABLE IF EXISTS `aoa_task_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_task_list` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_cancel` int(11) DEFAULT '0',
  `is_top` int(11) DEFAULT '0',
  `modify_time` datetime DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `star_time` datetime DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `task_describe` varchar(255) NOT NULL,
  `ticking` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `task_push_user_id` bigint(20) DEFAULT NULL,
  `reciverlist` varchar(255) DEFAULT NULL,
  `detail_book_id` bigint(20) DEFAULT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK7qch0fh6s2y73dvngy1m87aw7` (`task_push_user_id`),
  KEY `aoa_task_list_ao_three_book_book_id_fk` (`book_id`),
  KEY `aoa_task_list_ao_detail_draw_book_id_fk` (`detail_book_id`),
  CONSTRAINT `FK7qch0fh6s2y73dvngy1m87aw7` FOREIGN KEY (`task_push_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `aoa_task_list_ao_detail_draw_book_id_fk` FOREIGN KEY (`detail_book_id`) REFERENCES `ao_detail_draw` (`book_id`),
  CONSTRAINT `aoa_task_list_ao_three_book_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `ao_three_book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_list`
--

LOCK TABLES `aoa_task_list` WRITE;
/*!40000 ALTER TABLE `aoa_task_list` DISABLE KEYS */;
INSERT INTO `aoa_task_list` VALUES (151,'评价','2024-09-07 12:03:19',0,0,'2024-09-04 12:03:35','2024-09-04 12:03:35','2024-09-04 12:03:19',7,'描述',NULL,'这是第四个任务细化',2,42,'李季',118,NULL),(152,'评价','2024-09-07 12:09:53',0,0,'2024-09-04 12:10:03','2024-09-04 12:10:03','2024-09-04 12:09:53',7,'描述',NULL,'这是三单',1,42,'李季',NULL,36),(153,'评价','2024-09-07 13:16:27',0,0,'2024-09-04 13:16:31','2024-09-04 13:16:31','2024-09-04 13:16:27',7,'描述',NULL,'这是第四个任务细化',2,42,'李季',119,NULL),(154,'评价','2024-09-07 13:25:01',0,0,'2024-09-04 13:25:06','2024-09-04 13:25:06','2024-09-04 13:25:01',7,'描述',NULL,'这是第四个任务细化',1,42,'李季',NULL,37);
/*!40000 ALTER TABLE `aoa_task_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_task_logger`
--

DROP TABLE IF EXISTS `aoa_task_logger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_task_logger` (
  `logger_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `logger_ticking` varchar(255) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `logger_statusid` int(11) DEFAULT NULL,
  `logger_identify_responsible_person` varchar(200) DEFAULT NULL,
  `logger_process_person` varchar(200) DEFAULT NULL,
  `logger_should_handle` varchar(200) DEFAULT NULL,
  `logger_handle_method` varchar(200) DEFAULT NULL,
  `logger_process_order_number` varchar(200) DEFAULT NULL,
  `logger_process_completion_time` varchar(200) DEFAULT NULL,
  `logger_process_responsible_party` varchar(200) DEFAULT NULL,
  `logger_remarks` varchar(200) DEFAULT NULL,
  `logger_should_claim` varchar(200) DEFAULT NULL,
  `logger_plan_to_close_time` varchar(200) DEFAULT NULL COMMENT '计划关闭时间',
  `logger_actual_close_time` varchar(200) DEFAULT NULL COMMENT '实际关闭时间',
  `logger_design_point_value` varchar(200) DEFAULT NULL COMMENT '设计点值',
  `logger_audit_point_value` varchar(200) DEFAULT NULL COMMENT '审核点值',
  `logger_modify` varchar(200) DEFAULT NULL COMMENT '核实郑分会审单问题是否修改',
  `logger_completion_time` varchar(200) DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`logger_id`),
  KEY `FK5gu0thq54i7ujc6cict009h4y` (`task_id`),
  CONSTRAINT `FK5gu0thq54i7ujc6cict009h4y` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_logger`
--

LOCK TABLES `aoa_task_logger` WRITE;
/*!40000 ALTER TABLE `aoa_task_logger` DISABLE KEYS */;
INSERT INTO `aoa_task_logger` VALUES (31,'2024-09-04 12:23:48','',152,'曾蓉',3,NULL,'王博辰','是',NULL,NULL,NULL,'细化引起',NULL,'否',NULL,NULL,NULL,NULL,NULL,NULL),(32,'2024-09-04 12:28:15','',152,'王博辰',5,NULL,'王博辰','是',NULL,NULL,NULL,'细化引起',NULL,'否',NULL,NULL,'','',NULL,NULL),(33,'2024-09-04 12:28:34','',152,'李季',7,NULL,'王博辰','是',NULL,NULL,NULL,'细化引起',NULL,'否',NULL,NULL,'','',NULL,NULL),(34,'2024-09-04 12:52:47','',151,'李季',5,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(35,'2024-09-04 12:58:18','',151,'王博辰',5,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(36,'2024-09-04 12:58:23','',151,'王博辰',5,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(37,'2024-09-04 12:58:50','',151,'李季',7,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(38,'2024-09-04 13:17:44','',153,'李季',5,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(39,'2024-09-04 13:18:17','',153,'王博辰',5,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(40,'2024-09-04 13:18:20','',153,'王博辰',5,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(41,'2024-09-04 13:18:39','',153,'李季',7,NULL,'王博辰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,''),(42,'2024-09-04 13:25:30','',154,'李季',5,NULL,'王博辰','',NULL,NULL,NULL,'',NULL,'',NULL,NULL,'','',NULL,NULL),(43,'2024-09-04 13:25:58','',154,'王博辰',5,NULL,'王博辰','',NULL,NULL,NULL,'业主',NULL,'是',NULL,NULL,'','',NULL,NULL),(44,'2024-09-04 13:26:01','',154,'王博辰',5,NULL,'王博辰','',NULL,NULL,NULL,'业主',NULL,'是',NULL,NULL,'','',NULL,NULL),(45,'2024-09-04 13:26:26','',154,'李季',7,NULL,'王博辰','',NULL,NULL,NULL,'业主',NULL,'是',NULL,NULL,'','',NULL,NULL);
/*!40000 ALTER TABLE `aoa_task_logger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_task_user`
--

DROP TABLE IF EXISTS `aoa_task_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_task_user` (
  `pk_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `identify_responsible_person` varchar(20) DEFAULT NULL,
  `task_recive_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`pk_id`),
  KEY `FK2714kl5ywm5chya4dxte8c788` (`task_id`),
  KEY `FK654dfo0oouy3fk07fs7rqo4ld` (`task_recive_user_id`),
  KEY `aoa_task_user_aoa_user_user_id_fk` (`identify_responsible_person`),
  CONSTRAINT `FK2714kl5ywm5chya4dxte8c788` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`),
  CONSTRAINT `FK654dfo0oouy3fk07fs7rqo4ld` FOREIGN KEY (`task_recive_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_user`
--

LOCK TABLES `aoa_task_user` WRITE;
/*!40000 ALTER TABLE `aoa_task_user` DISABLE KEYS */;
INSERT INTO `aoa_task_user` VALUES (179,7,151,'李季',43),(180,7,152,'李季',43),(182,7,152,NULL,44),(184,7,151,NULL,44),(185,7,153,'李季',43),(187,7,153,NULL,44),(188,7,154,'李季',43),(190,7,154,NULL,44);
/*!40000 ALTER TABLE `aoa_task_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_traffic`
--

DROP TABLE IF EXISTS `aoa_traffic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_traffic` (
  `traffic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `depart_name` varchar(255) DEFAULT NULL,
  `depart_time` datetime DEFAULT NULL,
  `reach_name` varchar(255) DEFAULT NULL,
  `seat_type` varchar(255) DEFAULT NULL,
  `traffic_money` double DEFAULT NULL,
  `traffic_name` varchar(255) DEFAULT NULL,
  `evection_id` bigint(20) DEFAULT NULL,
  `user_name` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`traffic_id`),
  KEY `FKt5gk2fg5t802gnq8y03p9e7di` (`evection_id`),
  KEY `FKejkemcx58mfj2lgi2jo2rlih3` (`user_name`),
  CONSTRAINT `FKejkemcx58mfj2lgi2jo2rlih3` FOREIGN KEY (`user_name`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `FKt5gk2fg5t802gnq8y03p9e7di` FOREIGN KEY (`evection_id`) REFERENCES `aoa_evectionmoney` (`evectionmoney_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_color` varchar(255) DEFAULT NULL,
  `type_model` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `sort_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_type_list`
--

LOCK TABLES `aoa_type_list` WRITE;
/*!40000 ALTER TABLE `aoa_type_list` DISABLE KEYS */;
INSERT INTO `aoa_type_list` VALUES (8,'red','aoa_attends_list','上班',1),(9,'red','aoa_attends_list','下班',2),(13,'red','aoa_plan_list','日计划',0),(14,'red','aoa_plan_list','周计划',1),(15,'red','aoa_plan_list','月计划',2),(16,'red','aoa_in_mail_list','邮件',0),(17,'red','aoa_in_mail_list','通知',1),(18,'red','aoa_in_mail_list','公告',2),(22,'red','aoa_process_list','正常',0),(23,'red','aoa_process_list','重要',1),(24,'red','aoa_process_list','紧急',2);
/*!40000 ALTER TABLE `aoa_type_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_user`
--

DROP TABLE IF EXISTS `aoa_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `father_id` bigint(20) DEFAULT NULL,
  `hire_time` datetime DEFAULT NULL,
  `user_idcard` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `is_lock` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL,
  `modify_user_id` bigint(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `salary` float DEFAULT NULL,
  `user_school` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `theme_skin` varchar(255) DEFAULT NULL,
  `user_edu` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL COMMENT '员工号',
  `user_name` varchar(255) DEFAULT NULL,
  `user_sign` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `dept_id` bigint(20) DEFAULT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `superman` int(11) DEFAULT NULL,
  `holiday` int(11) DEFAULT NULL,
  `pinyin` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKt0vmot9xfbgq14oyij0gwh3gh` (`dept_id`),
  KEY `FKadtg9xju7q1ijcyxlkl9gwv5t` (`position_id`),
  KEY `FKl738mmblfx0uia6671rl17cj9` (`role_id`),
  CONSTRAINT `FKadtg9xju7q1ijcyxlkl9gwv5t` FOREIGN KEY (`position_id`) REFERENCES `aoa_position` (`position_id`),
  CONSTRAINT `FKl738mmblfx0uia6671rl17cj9` FOREIGN KEY (`role_id`) REFERENCES `aoa_role_` (`role_id`),
  CONSTRAINT `FKt0vmot9xfbgq14oyij0gwh3gh` FOREIGN KEY (`dept_id`) REFERENCES `aoa_dept` (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user`
--

LOCK TABLES `aoa_user` WRITE;
/*!40000 ALTER TABLE `aoa_user` DISABLE KEYS */;
INSERT INTO `aoa_user` VALUES (1,NULL,NULL,NULL,'10574444@qq.com',1,'2017-09-22 19:35:40',NULL,'/d6242233-05de-462c-a919-ca8bcfa82773.jpg',0,NULL,NULL,NULL,NULL,'123456','康兴',NULL,NULL,'男','blue',NULL,'Admin','康兴','好好','13272143450',2,1,1,1,NULL,'kangxing'),(42,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','曾蓉',NULL,NULL,'男','blue',NULL,'sa','曾蓉',NULL,'13272143450',2,1,2,0,NULL,'cengrong'),(43,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,'/56ae48e9-0be4-4ad4-8ed9-014b9f6446f6.jpg',0,NULL,NULL,NULL,NULL,'123456','李季',NULL,NULL,'男','blue',NULL,'cni23256467','李季','我是通风负责人','13272143450',2,1,3,0,NULL,'liji'),(44,NULL,NULL,NULL,'1655525068@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','王博辰',NULL,NULL,'男','blue',NULL,'cni23256111','王博辰',NULL,'13700117876',2,1,4,0,NULL,'wangbochen'),(45,NULL,NULL,NULL,'bochenwang0630@163.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','李老三',NULL,NULL,'男','blue',NULL,'cni23256468','李老三','gbhhh','13700117876',2,1,4,0,NULL,'lilaosan'),(46,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','朱建国',NULL,NULL,'男','blue',NULL,'12345678','朱建国',NULL,'13272143450',2,1,4,0,NULL,'zhujianguo'),(47,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','冉英男',NULL,NULL,'男','blue',NULL,'12345678','冉英男',NULL,'13272143450',2,1,3,0,NULL,'ranyingnan'),(48,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','谷晓雨',NULL,NULL,'男','blue',NULL,'12345678','谷晓雨',NULL,'13272143450',2,1,4,0,NULL,'guxiaoyu'),(49,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','颉古宝',NULL,NULL,'男','blue',NULL,'222354110','颉古宝',NULL,'13272143450',2,1,3,0,NULL,'jiegubao'),(50,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','张春芳',NULL,NULL,'男','blue',NULL,'12345678','张春芳',NULL,'13272143450',2,1,4,0,NULL,'zhangchunfang'),(51,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','罗密欧',NULL,NULL,'男','blue',NULL,'12345678','罗密欧',NULL,'13272143450',2,1,1,0,NULL,'luomiou');
/*!40000 ALTER TABLE `aoa_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_user_log`
--

DROP TABLE IF EXISTS `aoa_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_user_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip_addr` varchar(255) DEFAULT NULL,
  `log_time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKherb88q97dxbtcge09ii875qm` (`user_id`),
  CONSTRAINT `FKherb88q97dxbtcge09ii875qm` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4601 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_log`
--

LOCK TABLES `aoa_user_log` WRITE;
/*!40000 ALTER TABLE `aoa_user_log` DISABLE KEYS */;
INSERT INTO `aoa_user_log` VALUES (2776,'192.168.2.2','2024-08-06 10:59:41','新建流程','/xinxeng',1),(2777,'192.168.2.2','2024-08-06 10:59:42','我的申请','/flowmanage',1),(2778,'192.168.2.2','2024-08-06 10:59:44','流程审核','/audit',1),(2779,'192.168.2.2','2024-08-06 10:59:46','任务管理','/taskmanage',1),(2780,'192.168.2.2','2024-08-06 10:59:47','我的任务','/mytask',1),(2781,'192.168.2.2','2024-08-06 10:59:50','新建流程','/xinxeng',1),(2782,'192.168.2.2','2024-08-06 10:59:51','流程审核','/audit',1),(2783,'192.168.2.2','2024-08-06 10:59:52','我的申请','/flowmanage',1),(2784,'192.168.2.2','2024-08-06 10:59:52','流程审核','/audit',1),(2785,'192.168.2.2','2024-08-06 10:59:53','我的申请','/flowmanage',1),(2786,'192.168.2.2','2024-08-06 11:00:07','新建流程','/xinxeng',1),(2787,'192.168.2.2','2024-08-06 11:00:54','类型管理','/testsystype',1),(2788,'192.168.2.2','2024-08-06 11:03:43','菜单管理','/testsysmenu',1),(2789,'192.168.2.2','2024-08-06 11:04:49','类型管理','/testsystype',1),(2790,'192.168.2.2','2024-08-06 11:04:50','菜单管理','/testsysmenu',1),(2791,'192.168.2.2','2024-08-06 11:06:47','状态管理','/testsysstatus',1),(2792,'192.168.2.2','2024-08-06 11:06:48','在线用户','/morelogrecord',1),(2793,'192.168.2.2','2024-08-06 11:06:50','部门管理','/deptmanage',1),(2794,'192.168.2.2','2024-08-06 11:06:51','职位管理','/positionmanage',1),(2795,'192.168.2.2','2024-08-06 11:06:54','用户管理','/usermanage',1),(2796,'192.168.2.2','2024-08-06 11:12:13','类型管理','/testsystype',1),(2797,'192.168.2.2','2024-08-06 11:12:14','菜单管理','/testsysmenu',1),(2798,'192.168.2.2','2024-08-06 11:12:16','状态管理','/testsysstatus',1),(2799,'192.168.2.2','2024-08-06 11:12:17','部门管理','/deptmanage',1),(2800,'192.168.2.2','2024-08-06 11:12:53','用户管理','/usermanage',1),(2801,'192.168.2.2','2024-08-06 11:17:10','部门管理','/deptmanage',1),(2802,'192.168.2.2','2024-08-06 11:17:15','角色列表','/rolemanage',1),(2803,'192.168.2.2','2024-08-06 11:17:59','类型管理','/testsystype',1),(2804,'192.168.2.2','2024-08-06 11:18:00','菜单管理','/testsysmenu',1),(2805,'192.168.2.2','2024-08-06 11:18:02','状态管理','/testsysstatus',1),(2806,'192.168.2.2','2024-08-06 11:18:03','菜单管理','/testsysmenu',1),(2807,'192.168.2.2','2024-08-06 11:18:03','类型管理','/testsystype',1),(2808,'192.168.2.2','2024-08-06 11:18:05','部门管理','/deptmanage',1),(2809,'192.168.2.2','2024-08-06 11:18:05','在线用户','/morelogrecord',1),(2810,'192.168.2.2','2024-08-06 11:18:07','职位管理','/positionmanage',1),(2811,'192.168.2.2','2024-08-06 11:18:13','用户管理','/usermanage',1),(2812,'192.168.2.2','2024-08-06 11:18:18','角色列表','/rolemanage',1),(2813,'192.168.2.2','2024-08-06 11:22:47','新建流程','/xinxeng',1),(2814,'192.168.2.2','2024-08-06 11:22:48','我的申请','/flowmanage',1),(2815,'192.168.2.2','2024-08-06 11:22:49','新建流程','/xinxeng',1),(2816,'192.168.2.2','2024-08-06 11:22:50','流程审核','/audit',1),(2817,'192.168.2.2','2024-08-06 11:22:50','新建流程','/xinxeng',1),(2818,'192.168.2.2','2024-08-06 11:26:35','新建流程','/xinxeng',43),(2819,'192.168.2.2','2024-08-06 11:45:24','任务管理','/taskmanage',43),(2820,'192.168.2.2','2024-08-06 11:45:25','我的申请','/flowmanage',43),(2821,'192.168.2.2','2024-08-06 11:45:26','新建流程','/xinxeng',43),(2822,'192.168.2.2','2024-08-06 13:41:38','任务管理','/taskmanage',43),(2823,'192.168.2.2','2024-08-06 13:41:45','我的申请','/flowmanage',43),(2824,'192.168.2.2','2024-08-06 13:41:46','新建流程','/xinxeng',43),(2825,'192.168.2.2','2024-08-06 14:19:25','通讯录','/addrmanage',43),(2826,'192.168.2.2','2024-08-06 14:22:01','用户管理','/usermanage',1),(2827,'192.168.2.2','2024-08-06 14:24:20','部门管理','/deptmanage',1),(2828,'192.168.2.2','2024-08-06 14:29:37','角色列表','/rolemanage',1),(2829,'192.168.2.2','2024-08-06 14:29:43','菜单管理','/testsysmenu',1),(2830,'192.168.2.2','2024-08-06 14:29:46','部门管理','/deptmanage',1),(2831,'192.168.2.2','2024-08-06 14:30:48','用户管理','/usermanage',1),(2832,'192.168.2.2','2024-08-06 14:33:03','新建流程','/xinxeng',43),(2833,'192.168.2.2','2024-08-06 14:33:09','我的申请','/flowmanage',43),(2834,'192.168.2.2','2024-08-06 14:34:22','我的任务','/mytask',1),(2835,'192.168.2.2','2024-08-06 14:34:28','流程审核','/audit',1),(2836,'192.168.2.2','2024-08-06 14:43:40','我的任务','/mytask',1),(2837,'192.168.2.2','2024-08-06 14:44:44','任务管理','/taskmanage',43),(2838,'192.168.2.2','2024-08-06 14:45:38','我的任务','/mytask',43),(2839,'192.168.2.2','2024-08-06 14:45:53','任务管理','/taskmanage',43),(2840,'192.168.2.2','2024-08-06 14:46:40','新建流程','/xinxeng',43),(2841,'192.168.2.2','2024-08-06 14:46:52','任务管理','/taskmanage',43),(2842,'192.168.2.2','2024-08-06 14:47:22','任务管理','/taskmanage',1),(2843,'192.168.2.2','2024-08-06 14:47:24','我的任务','/mytask',1),(2844,'192.168.2.2','2024-08-06 14:47:38','我的任务','/mytask',43),(2845,'192.168.2.2','2024-08-06 14:47:40','任务管理','/taskmanage',43),(2846,'192.168.2.2','2024-08-06 14:47:42','我的任务','/mytask',43),(2847,'192.168.2.2','2024-08-06 14:48:42','新建流程','/xinxeng',43),(2848,'192.168.2.2','2024-08-06 14:48:47','任务管理','/taskmanage',43),(2849,'192.168.2.2','2024-08-06 14:55:54','任务管理','/taskmanage',1),(2850,'192.168.2.2','2024-08-06 14:57:38','我的任务','/mytask',43),(2851,'192.168.2.2','2024-08-06 14:57:39','任务管理','/taskmanage',43),(2852,'192.168.2.2','2024-08-06 14:57:39','我的任务','/mytask',43),(2853,'192.168.2.2','2024-08-06 14:57:41','任务管理','/taskmanage',43),(2854,'192.168.2.2','2024-08-06 14:57:44','我的任务','/mytask',43),(2855,'192.168.2.2','2024-08-06 14:57:44','任务管理','/taskmanage',43),(2856,'192.168.2.2','2024-08-06 14:58:25','我的任务','/mytask',43),(2857,'192.168.2.2','2024-08-06 14:58:38','任务管理','/taskmanage',43),(2858,'192.168.2.2','2024-08-06 14:58:40','我的任务','/mytask',43),(2859,'192.168.2.2','2024-08-06 14:58:41','任务管理','/taskmanage',43),(2860,'192.168.2.2','2024-08-06 15:00:14','我的任务','/mytask',43),(2861,'192.168.2.2','2024-08-06 15:00:14','任务管理','/taskmanage',43),(2862,'192.168.2.2','2024-08-06 15:00:14','任务管理','/taskmanage',43),(2863,'192.168.2.2','2024-08-06 15:00:15','任务管理','/taskmanage',43),(2864,'192.168.2.2','2024-08-06 15:00:18','我的任务','/mytask',43),(2865,'192.168.2.2','2024-08-06 15:00:19','任务管理','/taskmanage',43),(2866,'192.168.2.2','2024-08-06 15:12:49','我的任务','/mytask',43),(2867,'192.168.2.2','2024-08-06 15:12:53','任务管理','/taskmanage',43),(2868,'192.168.2.2','2024-08-06 15:28:06','用户管理','/usermanage',1),(2869,'192.168.2.2','2024-08-06 15:34:35','我的申请','/flowmanage',43),(2870,'192.168.2.2','2024-08-06 15:34:36','流程审核','/audit',43),(2871,'192.168.2.2','2024-08-06 15:53:15','任务管理','/taskmanage',1),(2872,'192.168.2.2','2024-08-06 15:57:29','用户管理','/usermanage',1),(2873,'192.168.2.2','2024-08-06 16:00:06','在线用户','/morelogrecord',1),(2874,'192.168.2.2','2024-08-06 16:00:07','职位管理','/positionmanage',1),(2875,'192.168.2.2','2024-08-06 16:00:09','用户管理','/usermanage',1),(2876,'192.168.2.2','2024-08-06 16:00:10','部门管理','/deptmanage',1),(2877,'192.168.2.2','2024-08-06 16:00:44','职位管理','/positionmanage',1),(2878,'192.168.2.2','2024-08-06 16:00:45','在线用户','/morelogrecord',1),(2879,'192.168.2.2','2024-08-06 16:00:49','用户管理','/usermanage',1),(2880,'192.168.2.2','2024-08-06 16:05:01','角色列表','/rolemanage',1),(2881,'192.168.2.2','2024-08-06 16:05:07','新建流程','/xinxeng',1),(2882,'192.168.2.2','2024-08-06 16:08:23','用户管理','/usermanage',1),(2883,'192.168.2.2','2024-08-06 16:14:48','任务管理','/taskmanage',1),(2884,'192.168.2.2','2024-08-06 16:26:37','我的任务','/mytask',1),(2885,'192.168.2.2','2024-08-06 16:28:52','任务管理','/taskmanage',1),(2886,'192.168.2.2','2024-08-06 16:55:51','我的任务','/mytask',1),(2887,'192.168.2.2','2024-08-06 16:55:53','任务管理','/taskmanage',1),(2888,'192.168.2.2','2024-08-06 17:23:08','用户管理','/usermanage',1),(2889,'192.168.2.2','2024-08-06 17:26:14','任务管理','/taskmanage',1),(2890,'192.168.2.2','2024-08-06 17:32:53','我的任务','/mytask',1),(2891,'192.168.2.2','2024-08-06 17:33:00','任务管理','/taskmanage',1),(2892,'192.168.2.2','2024-08-06 17:33:02','我的任务','/mytask',1),(2893,'192.168.2.2','2024-08-06 17:33:03','任务管理','/taskmanage',1),(2894,'192.168.2.2','2024-08-06 17:33:04','我的任务','/mytask',1),(2895,'192.168.2.2','2024-08-06 17:33:04','任务管理','/taskmanage',1),(2896,'192.168.2.2','2024-08-06 17:33:08','任务管理','/taskmanage',1),(2897,'192.168.2.2','2024-08-06 17:33:11','我的任务','/mytask',1),(2898,'192.168.2.2','2024-08-06 17:33:14','任务管理','/taskmanage',1),(2899,'192.168.2.2','2024-08-06 17:33:14','我的任务','/mytask',1),(2900,'192.168.2.2','2024-08-06 17:34:30','任务管理','/taskmanage',1),(2901,'192.168.2.2','2024-08-06 17:34:31','我的任务','/mytask',1),(2902,'192.168.2.2','2024-08-06 17:34:57','任务管理','/taskmanage',1),(2903,'192.168.2.2','2024-08-06 17:35:35','我的任务','/mytask',1),(2904,'192.168.2.2','2024-08-06 17:37:19','用户管理','/usermanage',1),(2905,'192.168.2.2','2024-08-06 18:12:57','新建流程','/xinxeng',43),(2906,'192.168.2.2','2024-08-06 18:12:59','我的申请','/flowmanage',43),(2907,'192.168.2.2','2024-08-06 18:13:01','流程审核','/audit',43),(2908,'192.168.2.2','2024-08-06 18:13:03','我的任务','/mytask',43),(2909,'192.168.2.2','2024-08-06 18:13:05','任务管理','/taskmanage',43),(2910,'192.168.2.2','2024-08-06 18:13:06','我的任务','/mytask',43),(2911,'192.168.2.2','2024-08-06 18:14:08','任务管理','/taskmanage',43),(2912,'192.168.2.2','2024-08-06 18:14:10','我的任务','/mytask',43),(2913,'192.168.2.2','2024-08-06 18:14:13','任务管理','/taskmanage',43),(2914,'192.168.2.2','2024-08-06 18:14:36','我的任务','/mytask',43),(2915,'192.168.2.2','2024-08-06 18:14:40','任务管理','/taskmanage',43),(2916,'192.168.2.2','2024-08-06 18:14:41','我的任务','/mytask',43),(2917,'192.168.2.2','2024-08-06 18:14:43','任务管理','/taskmanage',43),(2918,'192.168.2.2','2024-08-06 18:14:43','我的任务','/mytask',43),(2919,'192.168.2.2','2024-08-06 18:15:02','我的任务','/mytask',43),(2920,'192.168.2.2','2024-08-06 18:16:05','职位管理','/positionmanage',1),(2921,'192.168.2.2','2024-08-06 18:16:06','用户管理','/usermanage',1),(2922,'192.168.2.2','2024-08-06 18:16:09','职位管理','/positionmanage',1),(2923,'192.168.2.2','2024-08-06 18:16:12','菜单管理','/testsysmenu',1),(2924,'192.168.2.2','2024-08-06 18:16:14','职位管理','/positionmanage',1),(2925,'192.168.2.2','2024-08-06 18:16:16','部门管理','/deptmanage',1),(2926,'192.168.2.2','2024-08-06 18:16:17','在线用户','/morelogrecord',1),(2927,'192.168.2.2','2024-08-06 18:16:19','用户管理','/usermanage',1),(2928,'192.168.2.2','2024-08-06 18:16:22','角色列表','/rolemanage',1),(2929,'192.168.2.2','2024-08-06 18:57:19','类型管理','/testsystype',1),(2930,'192.168.2.2','2024-08-06 18:57:28','我的任务','/mytask',1),(2931,'192.168.2.2','2024-08-06 18:57:30','任务管理','/taskmanage',1),(2932,'192.168.2.2','2024-08-06 18:57:33','我的任务','/mytask',1),(2933,'192.168.2.2','2024-08-06 18:57:41','角色列表','/rolemanage',1),(2934,'192.168.2.2','2024-08-06 18:58:22','我的任务','/mytask',44),(2935,'192.168.2.2','2024-08-07 12:10:09','类型管理','/testsystype',1),(2936,'192.168.2.2','2024-08-07 12:10:15','新建流程','/xinxeng',1),(2937,'192.168.2.2','2024-08-07 12:10:16','我的申请','/flowmanage',1),(2938,'192.168.2.2','2024-08-07 12:10:18','新建流程','/xinxeng',1),(2939,'192.168.2.2','2024-08-07 12:16:31','流程审核','/audit',1),(2940,'192.168.2.2','2024-08-07 12:17:12','新建流程','/xinxeng',1),(2941,'192.168.2.2','2024-08-07 12:23:31','我的申请','/flowmanage',1),(2942,'192.168.2.2','2024-08-07 12:23:31','新建流程','/xinxeng',1),(2943,'192.168.2.2','2024-08-07 12:41:04','新建流程','/xinxeng',1),(2944,'192.168.2.2','2024-08-07 12:41:07','菜单管理','/testsysmenu',1),(2945,'192.168.2.2','2024-08-07 12:41:09','状态管理','/testsysstatus',1),(2946,'192.168.2.2','2024-08-07 12:41:12','用户管理','/usermanage',1),(2947,'192.168.2.2','2024-08-07 12:41:13','角色列表','/rolemanage',1),(2948,'192.168.2.2','2024-08-07 12:42:07','任务管理','/taskmanage',43),(2949,'192.168.2.2','2024-08-07 12:42:08','新建流程','/xinxeng',43),(2950,'192.168.2.2','2024-08-07 12:42:22','我的申请','/flowmanage',43),(2951,'192.168.2.2','2024-08-07 12:44:22','新建流程','/xinxeng',42),(2952,'192.168.2.2','2024-08-07 12:44:49','任务管理','/taskmanage',42),(2953,'192.168.2.2','2024-08-07 12:45:46','我的任务','/mytask',42),(2954,'192.168.2.2','2024-08-07 12:45:47','任务管理','/taskmanage',42),(2955,'192.168.2.2','2024-08-07 12:45:51','流程审核','/audit',42),(2956,'192.168.2.2','2024-08-07 12:45:52','任务管理','/taskmanage',42),(2957,'192.168.2.2','2024-08-07 12:45:53','我的任务','/mytask',42),(2958,'192.168.2.2','2024-08-07 12:45:55','任务管理','/taskmanage',42),(2959,'192.168.2.2','2024-08-07 12:46:07','我的任务','/mytask',42),(2960,'192.168.2.2','2024-08-07 12:46:08','任务管理','/taskmanage',42),(2961,'192.168.2.2','2024-08-07 12:46:39','我的任务','/mytask',42),(2962,'192.168.2.2','2024-08-07 12:46:39','任务管理','/taskmanage',42),(2963,'192.168.2.2','2024-08-07 13:17:13','任务管理','/taskmanage',1),(2964,'192.168.2.2','2024-08-07 13:20:14','我的任务','/mytask',43),(2965,'192.168.2.2','2024-08-07 13:22:28','任务管理','/taskmanage',43),(2966,'192.168.2.2','2024-08-07 13:23:03','我的任务','/mytask',43),(2967,'192.168.2.2','2024-08-07 13:23:05','任务管理','/taskmanage',43),(2968,'192.168.2.2','2024-08-07 13:23:15','我的任务','/mytask',43),(2969,'192.168.2.2','2024-08-07 13:23:32','任务管理','/taskmanage',43),(2970,'192.168.2.2','2024-08-07 13:27:03','我的任务','/mytask',43),(2971,'192.168.2.2','2024-08-07 13:27:09','任务管理','/taskmanage',43),(2972,'192.168.2.2','2024-08-07 13:27:17','我的任务','/mytask',43),(2973,'192.168.2.2','2024-08-07 13:27:20','任务管理','/taskmanage',43),(2974,'192.168.2.2','2024-08-07 13:27:21','我的任务','/mytask',43),(2975,'192.168.2.2','2024-08-07 13:27:22','任务管理','/taskmanage',43),(2976,'192.168.2.2','2024-08-07 13:28:29','我的任务','/mytask',43),(2977,'192.168.2.2','2024-08-07 13:28:30','任务管理','/taskmanage',43),(2978,'192.168.2.2','2024-08-07 13:48:59','我的任务','/mytask',43),(2979,'192.168.2.2','2024-08-07 13:49:00','任务管理','/taskmanage',43),(2980,'192.168.2.2','2024-08-07 13:50:08','我的任务','/mytask',43),(2981,'192.168.2.2','2024-08-07 13:50:10','任务管理','/taskmanage',43),(2982,'192.168.2.2','2024-08-07 14:07:06','我的任务','/mytask',43),(2983,'192.168.2.2','2024-08-07 14:07:06','任务管理','/taskmanage',43),(2984,'192.168.2.2','2024-08-07 14:07:12','任务管理','/taskmanage',43),(2985,'192.168.2.2','2024-08-07 14:07:28','我的任务','/mytask',1),(2986,'192.168.2.2','2024-08-07 14:07:28','任务管理','/taskmanage',1),(2987,'192.168.2.2','2024-08-07 14:07:50','任务管理','/taskmanage',1),(2988,'192.168.2.2','2024-08-07 14:08:08','我的任务','/mytask',43),(2989,'192.168.2.2','2024-08-07 14:08:10','任务管理','/taskmanage',43),(2990,'192.168.2.2','2024-08-07 14:08:11','我的任务','/mytask',43),(2991,'192.168.2.2','2024-08-07 14:08:14','任务管理','/taskmanage',43),(2992,'192.168.2.2','2024-08-07 14:08:29','我的任务','/mytask',43),(2993,'192.168.2.2','2024-08-07 14:08:30','任务管理','/taskmanage',43),(2994,'192.168.2.2','2024-08-07 14:08:37','我的任务','/mytask',43),(2995,'192.168.2.2','2024-08-07 14:11:02','任务管理','/taskmanage',43),(2996,'192.168.2.2','2024-08-07 14:11:04','我的任务','/mytask',43),(2997,'192.168.2.2','2024-08-07 14:11:04','任务管理','/taskmanage',43),(2998,'192.168.2.2','2024-08-07 14:11:43','任务管理','/taskmanage',43),(2999,'192.168.2.2','2024-08-07 14:11:44','我的任务','/mytask',43),(3000,'192.168.2.2','2024-08-07 14:12:13','我的任务','/mytask',1),(3001,'192.168.2.2','2024-08-07 14:12:14','任务管理','/taskmanage',1),(3002,'192.168.2.2','2024-08-07 14:12:54','新建流程','/xinxeng',1),(3003,'192.168.2.2','2024-08-07 14:13:17','我的申请','/flowmanage',1),(3004,'192.168.2.2','2024-08-07 14:13:19','流程审核','/audit',1),(3005,'192.168.2.2','2024-08-07 14:16:01','我的申请','/flowmanage',1),(3006,'192.168.2.2','2024-08-07 14:16:02','新建流程','/xinxeng',1),(3007,'192.168.2.2','2024-08-07 14:16:20','我的申请','/flowmanage',1),(3008,'192.168.2.2','2024-08-07 14:16:22','任务管理','/taskmanage',1),(3009,'192.168.2.2','2024-08-07 14:16:23','我的任务','/mytask',1),(3010,'192.168.2.2','2024-08-07 14:16:25','通讯录','/addrmanage',1),(3011,'192.168.2.2','2024-08-07 14:18:53','任务管理','/taskmanage',1),(3012,'192.168.2.2','2024-08-07 14:26:16','我的任务','/mytask',1),(3013,'192.168.2.2','2024-08-07 14:26:17','任务管理','/taskmanage',1),(3014,'192.168.2.2','2024-08-07 14:30:41','我的任务','/mytask',1),(3015,'192.168.2.2','2024-08-07 14:30:42','任务管理','/taskmanage',1),(3016,'192.168.2.2','2024-08-07 16:37:56','任务管理','/taskmanage',43),(3017,'192.168.2.2','2024-08-07 17:03:40','通讯录','/addrmanage',43),(3018,'192.168.2.2','2024-08-07 17:08:56','任务管理','/taskmanage',43),(3019,'192.168.2.2','2024-08-07 17:08:57','我的任务','/mytask',43),(3020,'192.168.2.2','2024-08-07 17:08:57','任务管理','/taskmanage',43),(3021,'192.168.2.2','2024-08-07 17:10:40','任务管理','/taskmanage',43),(3022,'192.168.2.2','2024-08-07 17:46:57','我的任务','/mytask',43),(3023,'192.168.2.2','2024-08-07 17:46:58','任务管理','/taskmanage',43),(3024,'192.168.2.2','2024-08-07 17:51:03','新建流程','/xinxeng',43),(3025,'192.168.2.2','2024-08-07 17:54:23','任务管理','/taskmanage',43),(3026,'192.168.2.2','2024-08-07 17:57:39','新建流程','/xinxeng',43),(3027,'192.168.2.2','2024-08-07 17:58:44','我的申请','/flowmanage',43),(3028,'192.168.2.2','2024-08-07 17:58:46','流程审核','/audit',43),(3029,'192.168.2.2','2024-08-07 17:58:49','任务管理','/taskmanage',43),(3030,'192.168.2.2','2024-08-07 17:58:48','任务管理','/taskmanage',43),(3031,'192.168.2.2','2024-08-07 18:03:30','我的任务','/mytask',43),(3032,'192.168.2.2','2024-08-07 18:03:31','任务管理','/taskmanage',43),(3033,'192.168.2.2','2024-08-07 18:04:05','我的任务','/mytask',43),(3034,'192.168.2.2','2024-08-07 18:04:06','任务管理','/taskmanage',43),(3035,'192.168.2.2','2024-08-07 18:16:28','我的任务','/mytask',43),(3036,'192.168.2.2','2024-08-07 18:16:28','任务管理','/taskmanage',43),(3037,'192.168.2.2','2024-08-07 18:18:28','任务管理','/taskmanage',43),(3038,'192.168.2.2','2024-08-07 19:56:26','我的申请','/flowmanage',43),(3039,'192.168.2.2','2024-08-07 19:56:28','新建流程','/xinxeng',43),(3040,'192.168.2.2','2024-08-07 20:03:35','任务管理','/taskmanage',43),(3041,'192.168.2.2','2024-08-07 20:10:37','新建流程','/xinxeng',43),(3042,'192.168.2.2','2024-08-07 20:20:30','任务管理','/taskmanage',43),(3043,'192.168.2.2','2024-08-08 06:40:32','我的任务','/mytask',43),(3044,'192.168.2.2','2024-08-08 06:40:33','任务管理','/taskmanage',43),(3045,'192.168.2.2','2024-08-08 06:40:35','我的任务','/mytask',43),(3046,'192.168.2.2','2024-08-08 06:40:35','任务管理','/taskmanage',43),(3047,'192.168.2.2','2024-08-08 06:40:40','任务管理','/taskmanage',43),(3048,'192.168.2.2','2024-08-08 06:41:20','我的任务','/mytask',43),(3049,'192.168.2.2','2024-08-08 06:41:38','通讯录','/addrmanage',43),(3050,'192.168.2.2','2024-08-08 07:33:49','我的任务','/mytask',1),(3051,'192.168.2.2','2024-08-08 07:33:50','任务管理','/taskmanage',1),(3052,'192.168.2.2','2024-08-08 07:34:14','新建流程','/xinxeng',1),(3053,'192.168.2.2','2024-08-08 07:36:22','任务管理','/taskmanage',1),(3054,'192.168.2.2','2024-08-08 08:24:12','任务管理','/taskmanage',42),(3055,'192.168.2.2','2024-08-08 08:29:28','我的任务','/mytask',42),(3056,'192.168.2.2','2024-08-08 08:29:30','任务管理','/taskmanage',42),(3057,'192.168.2.2','2024-08-08 08:30:16','我的任务','/mytask',43),(3058,'192.168.2.2','2024-08-08 13:13:41','任务管理','/taskmanage',43),(3059,'192.168.2.2','2024-08-08 13:13:42','我的任务','/mytask',43),(3060,'192.168.2.2','2024-08-08 13:28:56','任务管理','/taskmanage',43),(3061,'192.168.2.2','2024-08-08 18:27:07','我的任务','/mytask',1),(3062,'192.168.2.2','2024-08-08 18:27:08','任务管理','/taskmanage',1),(3063,'192.168.2.2','2024-08-08 18:29:18','我的任务','/mytask',1),(3064,'192.168.2.2','2024-08-08 18:29:19','任务管理','/taskmanage',1),(3065,'192.168.2.2','2024-08-08 18:40:44','我的任务','/mytask',1),(3066,'192.168.2.2','2024-08-08 18:40:46','任务管理','/taskmanage',1),(3067,'192.168.2.2','2024-08-09 08:58:58','我的任务','/mytask',43),(3068,'192.168.2.2','2024-08-09 08:58:59','任务管理','/taskmanage',43),(3069,'192.168.2.2','2024-08-09 08:59:42','任务管理','/taskmanage',44),(3070,'192.168.2.2','2024-08-09 08:59:43','我的任务','/mytask',44),(3071,'192.168.2.2','2024-08-09 08:59:45','任务管理','/taskmanage',44),(3072,'192.168.2.2','2024-08-09 08:59:46','我的任务','/mytask',44),(3073,'192.168.2.2','2024-08-09 08:59:59','我的任务','/mytask',42),(3074,'192.168.2.2','2024-08-09 09:00:00','任务管理','/taskmanage',42),(3075,'192.168.2.2','2024-08-09 09:31:36','我的任务','/mytask',1),(3076,'192.168.2.2','2024-08-09 09:31:37','任务管理','/taskmanage',1),(3077,'192.168.2.2','2024-08-09 09:42:00','角色列表','/rolemanage',1),(3078,'192.168.2.2','2024-08-09 09:42:38','任务管理','/taskmanage',1),(3079,'192.168.2.2','2024-08-09 10:12:30','角色列表','/rolemanage',1),(3080,'192.168.2.2','2024-08-09 10:17:10','我的任务','/mytask',43),(3081,'192.168.2.2','2024-08-09 10:17:11','任务管理','/taskmanage',43),(3082,'192.168.2.2','2024-08-09 10:17:12','我的任务','/mytask',43),(3083,'192.168.2.2','2024-08-09 10:18:36','任务管理','/taskmanage',43),(3084,'192.168.2.2','2024-08-09 10:22:16','我的任务','/mytask',43),(3085,'192.168.2.2','2024-08-09 10:25:01','我的任务','/mytask',1),(3086,'192.168.2.2','2024-08-09 10:25:06','任务管理','/taskmanage',1),(3087,'192.168.2.2','2024-08-09 10:26:39','我的任务','/mytask',42),(3088,'192.168.2.2','2024-08-09 10:27:20','任务管理','/taskmanage',43),(3089,'192.168.2.2','2024-08-09 10:27:26','我的任务','/mytask',43),(3090,'192.168.2.2','2024-08-09 10:54:38','任务管理','/taskmanage',42),(3091,'192.168.2.2','2024-08-09 10:54:43','我的任务','/mytask',42),(3092,'192.168.2.2','2024-08-09 10:54:47','任务管理','/taskmanage',42),(3093,'192.168.2.2','2024-08-09 11:36:17','我的申请','/flowmanage',42),(3094,'192.168.2.2','2024-08-09 11:36:21','任务管理','/taskmanage',42),(3095,'192.168.2.2','2024-08-09 13:47:12','任务管理','/taskmanage',43),(3096,'192.168.2.2','2024-08-09 13:47:20','我的任务','/mytask',43),(3097,'192.168.2.2','2024-08-09 14:00:58','任务管理','/taskmanage',43),(3098,'192.168.2.2','2024-08-09 14:01:04','我的任务','/mytask',43),(3099,'192.168.2.2','2024-08-10 06:53:29','我的任务','/mytask',42),(3100,'192.168.2.2','2024-08-10 06:53:39','任务管理','/taskmanage',42),(3101,'192.168.2.2','2024-08-10 08:47:43','任务管理','/taskmanage',43),(3102,'192.168.2.2','2024-08-10 08:47:49','我的任务','/mytask',43),(3103,'192.168.2.2','2024-08-10 09:11:12','新建流程','/xinxeng',43),(3104,'192.168.2.2','2024-08-10 09:11:18','我的任务','/mytask',43),(3105,'192.168.2.2','2024-08-10 09:32:13','我的任务','/mytask',1),(3106,'192.168.2.2','2024-08-10 09:44:30','任务管理','/taskmanage',43),(3107,'192.168.2.2','2024-08-10 09:44:41','我的任务','/mytask',43),(3108,'192.168.2.2','2024-08-11 06:17:47','任务管理','/taskmanage',43),(3109,'192.168.2.2','2024-08-11 06:19:18','我的任务','/mytask',43),(3110,'192.168.2.2','2024-08-11 06:39:52','任务管理','/taskmanage',43),(3111,'192.168.2.2','2024-08-11 06:39:55','我的任务','/mytask',43),(3112,'192.168.2.2','2024-08-11 07:45:17','任务管理','/taskmanage',43),(3113,'192.168.2.2','2024-08-11 07:45:19','我的任务','/mytask',43),(3114,'192.168.2.2','2024-08-11 08:02:35','我的任务','/mytask',42),(3115,'192.168.2.2','2024-08-11 08:02:37','任务管理','/taskmanage',42),(3116,'192.168.2.2','2024-08-11 08:03:21','我的任务','/mytask',42),(3117,'192.168.2.2','2024-08-11 08:03:23','任务管理','/taskmanage',42),(3118,'192.168.2.2','2024-08-11 08:05:05','我的任务','/mytask',42),(3119,'192.168.2.2','2024-08-11 08:05:06','任务管理','/taskmanage',42),(3120,'192.168.2.2','2024-08-11 08:24:06','我的任务','/mytask',42),(3121,'192.168.2.2','2024-08-11 08:24:07','任务管理','/taskmanage',42),(3122,'192.168.2.2','2024-08-11 08:24:40','任务管理','/taskmanage',44),(3123,'192.168.2.2','2024-08-11 08:24:41','我的任务','/mytask',44),(3124,'192.168.2.2','2024-08-11 11:15:21','任务管理','/taskmanage',44),(3125,'192.168.2.2','2024-08-11 11:15:21','我的任务','/mytask',44),(3126,'192.168.2.2','2024-08-11 11:15:23','我的任务','/mytask',44),(3127,'192.168.2.2','2024-08-11 11:17:33','我的任务','/mytask',42),(3128,'192.168.2.2','2024-08-11 11:17:56','任务管理','/taskmanage',44),(3129,'192.168.2.2','2024-08-11 11:17:57','我的任务','/mytask',44),(3130,'192.168.2.2','2024-08-11 11:28:54','任务管理','/taskmanage',42),(3131,'192.168.2.2','2024-08-11 11:32:39','任务管理','/taskmanage',44),(3132,'192.168.2.2','2024-08-11 11:34:29','我的任务','/mytask',42),(3133,'192.168.2.2','2024-08-11 11:35:14','我的任务','/mytask',44),(3134,'192.168.2.2','2024-08-11 11:51:32','任务管理','/taskmanage',43),(3135,'192.168.2.2','2024-08-11 11:51:33','我的任务','/mytask',43),(3136,'192.168.2.2','2024-08-11 11:53:43','我的任务','/mytask',45),(3137,'192.168.2.2','2024-08-11 11:56:30','任务管理','/taskmanage',42),(3138,'192.168.2.2','2024-08-11 11:57:17','我的任务','/mytask',42),(3139,'192.168.2.2','2024-08-11 11:57:18','任务管理','/taskmanage',42),(3140,'192.168.2.2','2024-08-11 11:57:34','我的任务','/mytask',42),(3141,'192.168.2.2','2024-08-11 11:57:35','任务管理','/taskmanage',42),(3142,'192.168.2.2','2024-08-11 11:58:09','我的任务','/mytask',42),(3143,'192.168.2.2','2024-08-11 11:58:10','任务管理','/taskmanage',42),(3144,'192.168.2.2','2024-08-11 11:58:15','我的任务','/mytask',42),(3145,'192.168.2.2','2024-08-11 11:58:18','任务管理','/taskmanage',42),(3146,'192.168.2.2','2024-08-11 12:00:19','任务管理','/taskmanage',45),(3147,'192.168.2.2','2024-08-11 12:00:20','我的任务','/mytask',45),(3148,'192.168.2.2','2024-08-11 12:00:21','任务管理','/taskmanage',45),(3149,'192.168.2.2','2024-08-11 12:00:35','任务管理','/taskmanage',44),(3150,'192.168.2.2','2024-08-11 12:00:36','我的任务','/mytask',44),(3151,'192.168.2.2','2024-08-11 12:01:35','我的任务','/mytask',45),(3152,'192.168.2.2','2024-08-11 12:03:37','任务管理','/taskmanage',44),(3153,'192.168.2.2','2024-08-11 12:03:38','我的任务','/mytask',44),(3154,'192.168.2.2','2024-08-11 12:10:23','任务管理','/taskmanage',44),(3155,'192.168.2.2','2024-08-11 12:10:51','我的任务','/mytask',42),(3156,'192.168.2.2','2024-08-11 12:10:53','任务管理','/taskmanage',42),(3157,'192.168.2.2','2024-08-11 12:11:50','我的任务','/mytask',44),(3158,'192.168.2.2','2024-08-11 12:11:51','任务管理','/taskmanage',44),(3159,'192.168.2.2','2024-08-11 12:11:52','我的任务','/mytask',44),(3160,'192.168.2.2','2024-08-11 12:13:28','任务管理','/taskmanage',44),(3161,'192.168.2.2','2024-08-11 12:13:29','我的任务','/mytask',44),(3162,'192.168.2.2','2024-08-11 12:21:25','任务管理','/taskmanage',44),(3163,'192.168.2.2','2024-08-11 12:21:26','我的任务','/mytask',44),(3164,'192.168.2.2','2024-08-11 12:23:25','任务管理','/taskmanage',44),(3165,'192.168.2.2','2024-08-11 12:23:26','我的任务','/mytask',44),(3166,'192.168.2.2','2024-08-11 12:30:29','任务管理','/taskmanage',44),(3167,'192.168.2.2','2024-08-11 12:30:29','我的任务','/mytask',44),(3168,'192.168.2.2','2024-08-11 12:30:32','我的任务','/mytask',44),(3169,'192.168.2.2','2024-08-11 12:39:49','任务管理','/taskmanage',44),(3170,'192.168.2.2','2024-08-11 12:39:50','我的任务','/mytask',44),(3171,'192.168.2.2','2024-08-11 12:43:49','任务管理','/taskmanage',44),(3172,'192.168.2.2','2024-08-11 12:43:50','我的任务','/mytask',44),(3173,'192.168.2.2','2024-08-11 12:44:46','任务管理','/taskmanage',43),(3174,'192.168.2.2','2024-08-11 12:44:47','我的任务','/mytask',43),(3175,'192.168.2.2','2024-08-11 12:46:01','任务管理','/taskmanage',43),(3176,'192.168.2.2','2024-08-11 12:46:02','我的任务','/mytask',43),(3177,'192.168.2.2','2024-08-11 13:01:27','任务管理','/taskmanage',43),(3178,'192.168.2.2','2024-08-11 13:01:27','我的任务','/mytask',43),(3179,'192.168.2.2','2024-08-11 13:01:43','我的任务','/mytask',43),(3180,'192.168.2.2','2024-08-11 13:02:55','任务管理','/taskmanage',43),(3181,'192.168.2.2','2024-08-11 13:02:56','我的任务','/mytask',43),(3182,'192.168.2.2','2024-08-12 08:05:00','用户管理','/usermanage',1),(3183,'192.168.2.2','2024-08-12 08:07:19','职位管理','/positionmanage',1),(3184,'192.168.2.2','2024-08-12 08:07:20','用户管理','/usermanage',1),(3185,'192.168.2.2','2024-08-12 08:07:37','职位管理','/positionmanage',1),(3186,'192.168.2.2','2024-08-12 08:07:38','在线用户','/morelogrecord',1),(3187,'192.168.2.2','2024-08-12 08:07:47','用户管理','/usermanage',1),(3188,'192.168.2.2','2024-08-12 08:07:48','职位管理','/positionmanage',1),(3189,'192.168.2.2','2024-08-12 08:07:49','在线用户','/morelogrecord',1),(3190,'192.168.2.2','2024-08-12 08:07:50','部门管理','/deptmanage',1),(3191,'192.168.2.2','2024-08-12 08:07:51','用户管理','/usermanage',1),(3192,'192.168.2.2','2024-08-12 08:08:18','我的任务','/mytask',42),(3193,'192.168.2.2','2024-08-12 08:08:18','任务管理','/taskmanage',42),(3194,'192.168.2.2','2024-08-12 08:08:43','任务管理','/taskmanage',42),(3195,'192.168.2.2','2024-08-12 08:11:40','我的申请','/flowmanage',42),(3196,'192.168.2.2','2024-08-12 08:11:41','新建流程','/xinxeng',42),(3197,'192.168.2.2','2024-08-12 08:11:41','我的申请','/flowmanage',42),(3198,'192.168.2.2','2024-08-12 08:11:50','任务管理','/taskmanage',42),(3199,'192.168.2.2','2024-08-12 08:20:58','我的任务','/mytask',42),(3200,'192.168.2.2','2024-08-12 08:21:08','任务管理','/taskmanage',42),(3201,'192.168.2.2','2024-08-12 08:28:46','我的任务','/mytask',42),(3202,'192.168.2.2','2024-08-12 08:28:58','任务管理','/taskmanage',42),(3203,'192.168.2.2','2024-08-12 08:33:48','我的任务','/mytask',42),(3204,'192.168.2.2','2024-08-12 08:33:51','任务管理','/taskmanage',42),(3205,'192.168.2.2','2024-08-12 08:34:23','我的任务','/mytask',46),(3206,'192.168.2.2','2024-08-12 08:38:43','流程审核','/audit',47),(3207,'192.168.2.2','2024-08-12 08:38:45','我的任务','/mytask',47),(3208,'192.168.2.2','2024-08-12 09:37:54','我的任务','/mytask',42),(3209,'192.168.2.2','2024-08-12 09:37:56','任务管理','/taskmanage',42),(3210,'192.168.2.2','2024-08-12 09:39:09','我的任务','/mytask',42),(3211,'192.168.2.2','2024-08-12 09:59:53','任务管理','/taskmanage',43),(3212,'192.168.2.2','2024-08-12 09:59:53','我的任务','/mytask',43),(3213,'192.168.2.2','2024-08-13 08:13:26','任务管理','/taskmanage',42),(3214,'192.168.2.2','2024-08-13 08:13:32','新建流程','/xinxeng',42),(3215,'192.168.2.2','2024-08-13 08:13:35','我的申请','/flowmanage',42),(3216,'192.168.2.2','2024-08-13 08:13:37','流程审核','/audit',42),(3217,'192.168.2.2','2024-08-13 08:14:38','新建流程','/xinxeng',42),(3218,'192.168.2.2','2024-08-13 08:18:51','任务管理','/taskmanage',42),(3219,'192.168.2.2','2024-08-13 08:19:52','我的任务','/mytask',42),(3220,'192.168.2.2','2024-08-13 08:21:26','任务管理','/taskmanage',44),(3221,'192.168.2.2','2024-08-13 08:21:26','我的任务','/mytask',44),(3222,'192.168.2.2','2024-08-13 08:21:30','我的任务','/mytask',44),(3223,'192.168.2.2','2024-08-13 08:31:10','任务管理','/taskmanage',45),(3224,'192.168.2.2','2024-08-13 08:31:11','我的任务','/mytask',45),(3225,'192.168.2.2','2024-08-13 08:34:58','任务管理','/taskmanage',44),(3226,'192.168.2.2','2024-08-13 08:35:20','我的任务','/mytask',44),(3227,'192.168.2.2','2024-08-13 08:35:20','任务管理','/taskmanage',44),(3228,'192.168.2.2','2024-08-13 08:35:20','任务管理','/taskmanage',44),(3229,'192.168.2.2','2024-08-13 08:35:30','任务管理','/taskmanage',44),(3230,'192.168.2.2','2024-08-13 08:35:43','我的任务','/mytask',44),(3231,'192.168.2.2','2024-08-13 08:41:06','任务管理','/taskmanage',42),(3232,'192.168.2.2','2024-08-13 08:49:55','我的任务','/mytask',42),(3233,'192.168.2.2','2024-08-13 08:49:56','任务管理','/taskmanage',42),(3234,'192.168.2.2','2024-08-13 08:49:56','我的任务','/mytask',42),(3235,'192.168.2.2','2024-08-13 08:50:40','任务管理','/taskmanage',45),(3236,'192.168.2.2','2024-08-13 08:50:40','我的任务','/mytask',45),(3237,'192.168.2.2','2024-08-13 09:01:19','我的任务','/mytask',42),(3238,'192.168.2.2','2024-08-13 09:01:21','任务管理','/taskmanage',42),(3239,'192.168.2.2','2024-08-13 09:07:24','我的任务','/mytask',42),(3240,'192.168.2.2','2024-08-13 09:07:38','我的任务','/mytask',43),(3241,'192.168.2.2','2024-08-13 09:09:53','任务管理','/taskmanage',42),(3242,'192.168.2.2','2024-08-13 09:44:24','任务管理','/taskmanage',44),(3243,'192.168.2.2','2024-08-13 09:44:25','我的任务','/mytask',44),(3244,'192.168.2.2','2024-08-13 09:47:25','我的任务','/mytask',42),(3245,'192.168.2.2','2024-08-13 09:47:27','任务管理','/taskmanage',42),(3246,'192.168.2.2','2024-08-13 09:47:38','我的任务','/mytask',42),(3247,'192.168.2.2','2024-08-13 09:47:39','任务管理','/taskmanage',42),(3248,'192.168.2.2','2024-08-13 09:54:21','我的任务','/mytask',42),(3249,'192.168.2.2','2024-08-13 10:17:49','通讯录','/addrmanage',43),(3250,'192.168.2.2','2024-08-13 10:18:02','我的任务','/mytask',43),(3251,'192.168.2.2','2024-08-13 11:19:36','任务管理','/taskmanage',43),(3252,'192.168.2.2','2024-08-13 11:19:37','我的任务','/mytask',43),(3253,'192.168.2.2','2024-08-13 11:19:42','任务管理','/taskmanage',43),(3254,'192.168.2.2','2024-08-13 11:19:43','我的任务','/mytask',43),(3255,'192.168.2.2','2024-08-13 11:19:44','任务管理','/taskmanage',43),(3256,'192.168.2.2','2024-08-13 11:19:45','我的任务','/mytask',43),(3257,'192.168.2.2','2024-08-13 11:19:51','任务管理','/taskmanage',43),(3258,'192.168.2.2','2024-08-13 11:19:51','我的任务','/mytask',43),(3259,'192.168.2.2','2024-08-13 11:19:53','我的任务','/mytask',43),(3260,'192.168.2.2','2024-08-13 11:30:05','任务管理','/taskmanage',43),(3261,'192.168.2.2','2024-08-13 11:30:07','我的任务','/mytask',43),(3262,'192.168.2.2','2024-08-13 11:30:09','任务管理','/taskmanage',43),(3263,'192.168.2.2','2024-08-13 11:30:10','我的任务','/mytask',43),(3264,'192.168.2.2','2024-08-13 11:30:11','任务管理','/taskmanage',43),(3265,'192.168.2.2','2024-08-13 11:30:12','我的任务','/mytask',43),(3266,'192.168.2.2','2024-08-13 11:30:12','任务管理','/taskmanage',43),(3267,'192.168.2.2','2024-08-13 11:30:13','任务管理','/taskmanage',43),(3268,'192.168.2.2','2024-08-13 11:30:14','我的任务','/mytask',43),(3269,'192.168.2.2','2024-08-13 11:30:14','任务管理','/taskmanage',43),(3270,'192.168.2.2','2024-08-13 11:30:26','任务管理','/taskmanage',43),(3271,'192.168.2.2','2024-08-13 11:30:26','我的任务','/mytask',43),(3272,'192.168.2.2','2024-08-13 11:30:46','我的任务','/mytask',43),(3273,'192.168.2.2','2024-08-13 11:34:23','任务管理','/taskmanage',43),(3274,'192.168.2.2','2024-08-13 11:34:54','我的任务','/mytask',43),(3275,'192.168.2.2','2024-08-13 11:34:55','任务管理','/taskmanage',43),(3276,'192.168.2.2','2024-08-13 11:34:55','我的任务','/mytask',43),(3277,'192.168.2.2','2024-08-13 11:35:10','职位管理','/positionmanage',1),(3278,'192.168.2.2','2024-08-13 11:35:11','在线用户','/morelogrecord',1),(3279,'192.168.2.2','2024-08-13 11:35:11','用户管理','/usermanage',1),(3280,'192.168.2.2','2024-08-13 11:35:19','角色列表','/rolemanage',1),(3281,'192.168.2.2','2024-08-13 11:35:57','我的任务','/mytask',43),(3282,'192.168.2.2','2024-08-13 11:38:57','任务管理','/taskmanage',42),(3283,'192.168.2.2','2024-08-13 11:42:39','我的任务','/mytask',42),(3284,'192.168.2.2','2024-08-13 11:42:41','任务管理','/taskmanage',42),(3285,'192.168.2.2','2024-08-13 11:46:08','我的任务','/mytask',42),(3286,'192.168.2.2','2024-08-13 11:46:09','任务管理','/taskmanage',42),(3287,'192.168.2.2','2024-08-13 11:56:51','我的任务','/mytask',42),(3288,'192.168.2.2','2024-08-13 11:56:53','三单任务管理','/taskmanage',42),(3289,'192.168.2.2','2024-08-13 11:58:00','三单任务管理','/taskmanage',44),(3290,'192.168.2.2','2024-08-13 11:58:03','我的任务','/mytask',44),(3291,'192.168.2.2','2024-08-13 12:22:07','三单任务管理','/taskmanage',44),(3292,'192.168.2.2','2024-08-13 12:22:08','我的任务','/mytask',44),(3293,'192.168.2.2','2024-08-13 15:06:55','我的任务','/mytask',42),(3294,'192.168.2.2','2024-08-13 15:06:56','三单任务管理','/taskmanage',42),(3295,'192.168.2.2','2024-08-13 15:06:59','我的任务','/mytask',42),(3296,'192.168.2.2','2024-08-13 15:07:00','三单任务管理','/taskmanage',42),(3297,'192.168.2.2','2024-08-13 16:10:37','我的任务','/mytask',42),(3298,'192.168.2.2','2024-08-13 16:10:41','三单任务管理','/taskmanage',42),(3299,'192.168.2.2','2024-08-15 09:26:24','我的任务','/mytask',42),(3300,'192.168.2.2','2024-08-15 09:26:24','任务管理','/taskmanage',42),(3301,'192.168.2.2','2024-08-15 09:26:29','任务管理','/taskmanage',42),(3302,'192.168.2.2','2024-08-15 09:29:28','我的任务','/mytask',42),(3303,'192.168.2.2','2024-08-15 09:29:32','任务管理','/taskmanage',42),(3304,'192.168.2.2','2024-08-15 13:18:20','我的任务','/mytask',42),(3305,'192.168.2.2','2024-08-15 13:18:22','任务管理','/taskmanage',42),(3306,'192.168.2.2','2024-08-15 16:34:03','用户管理','/usermanage',1),(3307,'192.168.2.2','2024-08-15 16:34:07','角色列表','/rolemanage',1),(3308,'192.168.2.2','2024-08-15 16:34:32','在线用户','/morelogrecord',1),(3309,'192.168.2.2','2024-08-15 16:34:35','菜单管理','/testsysmenu',1),(3310,'192.168.2.2','2024-08-15 16:34:59','状态管理','/testsysstatus',1),(3311,'192.168.2.2','2024-08-15 16:35:01','角色列表','/rolemanage',1),(3312,'192.168.2.2','2024-08-15 16:35:25','菜单管理','/testsysmenu',1),(3313,'192.168.2.2','2024-08-15 16:36:48','类型管理','/testsystype',1),(3314,'192.168.2.2','2024-08-15 16:36:53','状态管理','/testsysstatus',1),(3315,'192.168.2.2','2024-08-15 16:36:57','在线用户','/morelogrecord',1),(3316,'192.168.2.2','2024-08-15 16:36:58','部门管理','/deptmanage',1),(3317,'192.168.2.2','2024-08-15 16:37:01','职位管理','/positionmanage',1),(3318,'192.168.2.2','2024-08-15 16:37:02','用户管理','/usermanage',1),(3319,'192.168.2.2','2024-08-15 16:37:05','角色列表','/rolemanage',1),(3320,'192.168.2.2','2024-08-15 16:37:23','部门管理','/deptmanage',1),(3321,'192.168.2.2','2024-08-15 16:37:24','在线用户','/morelogrecord',1),(3322,'192.168.2.2','2024-08-15 16:37:25','职位管理','/positionmanage',1),(3323,'192.168.2.2','2024-08-15 16:37:27','菜单管理','/testsysmenu',1),(3324,'192.168.2.2','2024-08-15 16:55:11','角色列表','/rolemanage',1),(3325,'192.168.2.2','2024-08-15 17:02:21','菜单管理','/testsysmenu',1),(3326,'192.168.2.2','2024-08-15 18:25:28','三单一览','/threebookmanage',1),(3327,'192.168.2.2','2024-08-15 18:26:09','用户管理','/usermanage',1),(3328,'192.168.2.2','2024-08-15 18:26:17','三单一览','/threebookmanage',1),(3329,'192.168.2.2','2024-08-15 18:50:55','用户管理','/usermanage',1),(3330,'192.168.2.2','2024-08-15 18:55:33','三单一览','/threebookmanage',1),(3331,'192.168.2.2','2024-08-15 19:09:16','用户管理','/usermanage',1),(3332,'192.168.2.2','2024-08-15 19:10:30','三单一览','/threebookmanage',1),(3333,'192.168.2.2','2024-08-15 19:36:42','用户管理','/usermanage',1),(3334,'192.168.2.2','2024-08-15 19:37:47','三单一览','/threebookmanage',1),(3335,'192.168.2.2','2024-08-15 19:38:01','用户管理','/usermanage',1),(3336,'192.168.2.2','2024-08-15 19:46:44','三单一览','/threebookmanage',1),(3337,'192.168.2.2','2024-08-18 14:18:14','类型管理','/testsystype',1),(3338,'192.168.2.2','2024-08-18 14:18:22','菜单管理','/testsysmenu',1),(3339,'192.168.2.2','2024-08-18 14:18:42','状态管理','/testsysstatus',1),(3340,'192.168.2.2','2024-08-18 14:18:45','类型管理','/testsystype',1),(3341,'192.168.2.2','2024-08-18 14:29:29','三单一览','/threebookmanage',1),(3342,'192.168.2.2','2024-08-18 19:31:25','任务管理','/taskmanage',1),(3343,'192.168.2.2','2024-08-18 19:31:57','三单一览','/threebookmanage',1),(3344,'192.168.2.2','2024-08-18 20:55:25','任务管理','/taskmanage',1),(3345,'192.168.2.2','2024-08-18 20:55:27','我的任务','/mytask',1),(3346,'192.168.2.2','2024-08-18 20:55:30','三单一览','/threebookmanage',1),(3347,'192.168.2.2','2024-08-18 20:55:34','通讯录','/addrmanage',1),(3348,'192.168.2.2','2024-08-18 20:55:43','部门管理','/deptmanage',1),(3349,'192.168.2.2','2024-08-18 20:55:43','在线用户','/morelogrecord',1),(3350,'192.168.2.2','2024-08-18 20:55:44','职位管理','/positionmanage',1),(3351,'192.168.2.2','2024-08-18 20:55:47','用户管理','/usermanage',1),(3352,'192.168.2.2','2024-08-18 20:55:50','角色列表','/rolemanage',1),(3353,'192.168.2.2','2024-08-18 20:55:53','新建流程','/xinxeng',1),(3354,'192.168.2.2','2024-08-18 20:55:58','我的申请','/flowmanage',1),(3355,'192.168.2.2','2024-08-18 20:56:13','状态管理','/testsysstatus',1),(3356,'192.168.2.2','2024-08-18 20:56:14','菜单管理','/testsysmenu',1),(3357,'192.168.2.2','2024-08-18 20:57:27','任务管理','/taskmanage',1),(3358,'192.168.2.2','2024-08-18 20:57:28','我的任务','/mytask',1),(3359,'192.168.2.2','2024-08-18 20:57:30','三单一览','/threebookmanage',1),(3360,'192.168.2.2','2024-08-18 20:57:38','类型管理','/testsystype',1),(3361,'192.168.2.2','2024-08-18 20:57:39','菜单管理','/testsysmenu',1),(3362,'192.168.2.2','2024-08-18 20:57:41','部门管理','/deptmanage',1),(3363,'192.168.2.2','2024-08-18 20:57:43','角色列表','/rolemanage',1),(3364,'192.168.2.2','2024-08-18 20:57:45','我的任务','/mytask',1),(3365,'192.168.2.2','2024-08-18 20:57:46','任务管理','/taskmanage',1),(3366,'192.168.2.2','2024-08-18 20:59:15','三单一览','/threebookmanage',1),(3367,'192.168.2.2','2024-08-19 08:47:41','任务管理','/taskmanage',1),(3368,'192.168.2.2','2024-08-19 08:47:43','我的任务','/mytask',1),(3369,'192.168.2.2','2024-08-19 08:47:44','任务管理','/taskmanage',1),(3370,'192.168.2.2','2024-08-19 09:45:24','我的任务','/mytask',1),(3371,'192.168.2.2','2024-08-19 09:45:25','任务管理','/taskmanage',1),(3372,'192.168.2.2','2024-08-19 09:49:08','任务管理','/taskmanage',44),(3373,'192.168.2.2','2024-08-19 09:49:10','我的任务','/mytask',44),(3374,'192.168.2.2','2024-08-19 10:01:49','任务管理','/taskmanage',44),(3375,'192.168.2.2','2024-08-19 10:02:01','我的任务','/mytask',1),(3376,'192.168.2.2','2024-08-19 10:02:02','任务管理','/taskmanage',1),(3377,'192.168.2.2','2024-08-19 10:02:31','我的任务','/mytask',1),(3378,'192.168.2.2','2024-08-19 10:02:33','任务管理','/taskmanage',1),(3379,'192.168.2.2','2024-08-19 10:20:02','类型管理','/testsystype',1),(3380,'192.168.2.2','2024-08-19 10:20:09','菜单管理','/testsysmenu',1),(3381,'192.168.2.2','2024-08-19 10:20:20','状态管理','/testsysstatus',1),(3382,'192.168.2.2','2024-08-19 10:20:26','部门管理','/deptmanage',1),(3383,'192.168.2.2','2024-08-19 10:20:29','在线用户','/morelogrecord',1),(3384,'192.168.2.2','2024-08-19 10:20:33','职位管理','/positionmanage',1),(3385,'192.168.2.2','2024-08-19 10:20:35','用户管理','/usermanage',1),(3386,'192.168.2.2','2024-08-19 10:20:47','角色列表','/rolemanage',1),(3387,'192.168.2.2','2024-08-19 10:21:00','任务管理','/taskmanage',1),(3388,'192.168.2.2','2024-08-19 10:21:02','我的任务','/mytask',1),(3389,'192.168.2.2','2024-08-19 10:21:05','任务管理','/taskmanage',1),(3390,'192.168.2.2','2024-08-19 10:21:15','三单一览','/threebookmanage',1),(3391,'192.168.2.2','2024-08-19 10:36:39','类型管理','/testsystype',1),(3392,'192.168.2.2','2024-08-19 10:36:44','菜单管理','/testsysmenu',1),(3393,'192.168.2.2','2024-08-19 10:36:54','三单一览','/threebookmanage',1),(3394,'192.168.2.2','2024-08-19 10:37:33','任务管理','/taskmanage',1),(3395,'192.168.2.2','2024-08-19 10:37:36','我的任务','/mytask',1),(3396,'192.168.2.2','2024-08-19 10:37:38','任务管理','/taskmanage',1),(3397,'192.168.2.2','2024-08-19 10:37:50','我的任务','/mytask',1),(3398,'192.168.2.2','2024-08-19 10:37:54','任务管理','/taskmanage',1),(3399,'192.168.2.2','2024-08-19 10:45:20','我的任务','/mytask',1),(3400,'192.168.2.2','2024-08-19 10:45:23','三单一览','/threebookmanage',1),(3401,'192.168.2.2','2024-08-20 11:48:27','任务管理','/taskmanage',1),(3402,'192.168.2.2','2024-08-20 16:59:33','三单一览','/threebookmanage',1),(3403,'192.168.2.2','2024-08-20 17:39:44','任务管理','/taskmanage',1),(3404,'192.168.2.2','2024-08-20 17:39:50','三单一览','/threebookmanage',1),(3405,'192.168.2.2','2024-08-21 08:04:41','任务管理','/taskmanage',1),(3406,'192.168.2.2','2024-08-21 08:04:49','三单一览','/threebookmanage',1),(3407,'192.168.2.2','2024-08-21 08:11:44','任务管理','/taskmanage',1),(3408,'192.168.2.2','2024-08-21 13:11:43','我的任务','/mytask',1),(3409,'192.168.2.2','2024-08-21 13:11:45','任务管理','/taskmanage',1),(3410,'192.168.2.2','2024-08-21 13:36:29','我的任务','/mytask',1),(3411,'192.168.2.2','2024-08-21 13:36:29','我的任务','/mytask',1),(3412,'192.168.2.2','2024-08-21 13:36:32','任务管理','/taskmanage',1),(3413,'192.168.2.2','2024-08-21 13:40:09','我的任务','/mytask',1),(3414,'192.168.2.2','2024-08-21 13:40:09','我的任务','/mytask',1),(3415,'192.168.2.2','2024-08-21 13:40:09','任务管理','/taskmanage',1),(3416,'192.168.2.2','2024-08-21 13:42:21','任务管理','/taskmanage',1),(3417,'192.168.2.2','2024-08-21 13:42:21','任务管理','/taskmanage',1),(3418,'192.168.2.2','2024-08-21 13:42:21','任务管理','/taskmanage',1),(3419,'192.168.2.2','2024-08-21 14:20:24','三单一览','/threebookmanage',1),(3420,'192.168.2.2','2024-08-21 14:32:46','任务管理','/taskmanage',1),(3421,'192.168.2.2','2024-08-21 14:32:51','三单一览','/threebookmanage',1),(3422,'192.168.2.2','2024-08-21 14:49:39','任务管理','/taskmanage',1),(3423,'192.168.2.2','2024-08-21 15:29:53','我的任务','/mytask',1),(3424,'192.168.2.2','2024-08-21 15:29:54','任务管理','/taskmanage',1),(3425,'192.168.2.2','2024-08-21 15:29:57','我的任务','/mytask',1),(3426,'192.168.2.2','2024-08-21 15:29:57','任务管理','/taskmanage',1),(3427,'192.168.2.2','2024-08-21 15:29:58','任务管理','/taskmanage',1),(3428,'192.168.2.2','2024-08-21 15:29:59','我的任务','/mytask',1),(3429,'192.168.2.2','2024-08-21 15:29:59','任务管理','/taskmanage',1),(3430,'192.168.2.2','2024-08-21 15:30:00','任务管理','/taskmanage',1),(3431,'192.168.2.2','2024-08-21 15:31:30','我的任务','/mytask',1),(3432,'192.168.2.2','2024-08-21 15:31:33','任务管理','/taskmanage',1),(3433,'192.168.2.2','2024-08-21 15:31:58','我的任务','/mytask',1),(3434,'192.168.2.2','2024-08-21 15:31:59','任务管理','/taskmanage',1),(3435,'192.168.2.2','2024-08-21 15:32:07','我的任务','/mytask',1),(3436,'192.168.2.2','2024-08-21 15:32:09','任务管理','/taskmanage',1),(3437,'192.168.2.2','2024-08-21 16:01:10','我的任务','/mytask',1),(3438,'192.168.2.2','2024-08-21 16:01:11','任务管理','/taskmanage',1),(3439,'192.168.2.2','2024-08-21 16:01:18','我的任务','/mytask',1),(3440,'192.168.2.2','2024-08-21 16:09:14','我的任务','/mytask',42),(3441,'192.168.2.2','2024-08-21 16:09:15','任务管理','/taskmanage',42),(3442,'192.168.2.2','2024-08-21 16:09:27','我的任务','/mytask',42),(3443,'192.168.2.2','2024-08-21 16:09:48','在线用户','/morelogrecord',1),(3444,'192.168.2.2','2024-08-21 16:09:49','职位管理','/positionmanage',1),(3445,'192.168.2.2','2024-08-21 16:09:50','用户管理','/usermanage',1),(3446,'192.168.2.2','2024-08-21 16:09:52','角色列表','/rolemanage',1),(3447,'192.168.2.2','2024-08-21 16:11:28','三单一览','/threebookmanage',1),(3448,'192.168.2.2','2024-08-21 16:12:20','任务管理','/taskmanage',1),(3449,'192.168.2.2','2024-08-21 16:23:52','我的任务','/mytask',1),(3450,'192.168.2.2','2024-08-21 16:24:23','任务管理','/taskmanage',46),(3451,'192.168.2.2','2024-08-21 16:24:25','我的任务','/mytask',46),(3452,'192.168.2.2','2024-08-21 16:29:29','任务管理','/taskmanage',46),(3453,'192.168.2.2','2024-08-21 16:29:29','任务管理','/taskmanage',46),(3454,'192.168.2.2','2024-08-21 16:31:36','我的任务','/mytask',46),(3455,'192.168.2.2','2024-08-21 16:46:33','三单一览','/threebookmanage',1),(3456,'192.168.2.2','2024-08-21 16:47:44','部门管理','/deptmanage',1),(3457,'192.168.2.2','2024-08-21 16:47:46','三单一览','/threebookmanage',1),(3458,'192.168.2.2','2024-08-21 16:48:53','菜单管理','/testsysmenu',1),(3459,'192.168.2.2','2024-08-21 16:49:00','通讯录','/addrmanage',1),(3460,'192.168.2.2','2024-08-21 16:49:09','角色列表','/rolemanage',1),(3461,'192.168.2.2','2024-08-21 16:49:38','通讯录','/addrmanage',46),(3462,'192.168.2.2','2024-08-21 16:49:40','三单一览','/threebookmanage',46),(3463,'192.168.2.2','2024-08-21 16:50:07','用户管理','/usermanage',1),(3464,'192.168.2.2','2024-08-21 16:50:34','任务管理','/taskmanage',1),(3465,'192.168.2.2','2024-08-21 16:53:21','我的任务','/mytask',48),(3466,'192.168.2.2','2024-08-21 16:58:35','我的任务','/mytask',1),(3467,'192.168.2.2','2024-08-21 16:58:36','任务管理','/taskmanage',1),(3468,'192.168.2.2','2024-08-21 17:01:56','我的任务','/mytask',1),(3469,'192.168.2.2','2024-08-21 17:01:57','任务管理','/taskmanage',1),(3470,'192.168.2.2','2024-08-21 17:14:44','我的任务','/mytask',44),(3471,'192.168.2.2','2024-08-21 17:29:44','我的任务','/mytask',1),(3472,'192.168.2.2','2024-08-21 17:29:46','任务管理','/taskmanage',1),(3473,'192.168.2.2','2024-08-21 17:37:08','我的任务','/mytask',1),(3474,'192.168.2.2','2024-08-21 17:37:09','任务管理','/taskmanage',1),(3475,'192.168.2.2','2024-08-21 17:39:06','三单一览','/threebookmanage',43),(3476,'192.168.2.2','2024-08-21 17:39:22','我的任务','/mytask',43),(3477,'192.168.2.2','2024-08-21 17:50:07','三单一览','/threebookmanage',43),(3478,'192.168.2.2','2024-08-21 17:55:37','我的任务','/mytask',43),(3479,'192.168.2.2','2024-08-21 17:57:28','三单一览','/threebookmanage',43),(3480,'192.168.2.2','2024-08-21 18:24:47','我的任务','/mytask',43),(3481,'192.168.2.2','2024-08-21 18:25:23','三单一览','/threebookmanage',1),(3482,'192.168.2.2','2024-08-21 18:26:08','任务管理','/taskmanage',1),(3483,'192.168.2.2','2024-08-22 09:58:42','我的任务','/mytask',1),(3484,'192.168.2.2','2024-08-22 09:58:45','三单一览','/threebookmanage',1),(3485,'192.168.2.2','2024-08-22 09:58:46','图纸细化一览','/detaildrawmanage',1),(3486,'192.168.2.2','2024-08-22 10:00:33','任务管理','/taskmanage',1),(3487,'192.168.2.2','2024-08-22 10:05:55','我的任务','/mytask',1),(3488,'192.168.2.2','2024-08-22 10:05:55','任务管理','/taskmanage',1),(3489,'192.168.2.2','2024-08-22 10:52:05','细化一览','/detaildrawmanage',1),(3490,'192.168.2.2','2024-08-22 10:57:35','三单一览','/threebookmanage',1),(3491,'192.168.2.2','2024-08-22 10:57:35','三单一览','/threebookmanage',1),(3492,'192.168.2.2','2024-08-22 10:57:35','三单一览','/threebookmanage',1),(3493,'192.168.2.2','2024-08-22 10:57:36','三单一览','/threebookmanage',1),(3494,'192.168.2.2','2024-08-22 10:57:39','细化一览','/detaildrawmanage',1),(3495,'192.168.2.2','2024-08-22 11:01:09','三单一览','/threebookmanage',1),(3496,'192.168.2.2','2024-08-22 11:01:10','细化一览','/detaildrawmanage',1),(3497,'192.168.2.2','2024-08-22 11:01:48','三单一览','/threebookmanage',1),(3498,'192.168.2.2','2024-08-22 11:01:50','细化一览','/detaildrawmanage',1),(3499,'192.168.2.2','2024-08-22 11:33:35','三单一览','/threebookmanage',1),(3500,'192.168.2.2','2024-08-22 11:33:36','细化一览','/detaildrawmanage',1),(3501,'192.168.2.2','2024-08-22 11:33:37','三单一览','/threebookmanage',1),(3502,'192.168.2.2','2024-08-22 11:33:37','细化一览','/detaildrawmanage',1),(3503,'192.168.2.2','2024-08-22 11:33:38','细化一览','/detaildrawmanage',1),(3504,'192.168.2.2','2024-08-22 11:33:39','三单一览','/threebookmanage',1),(3505,'192.168.2.2','2024-08-22 11:33:39','细化一览','/detaildrawmanage',1),(3506,'192.168.2.2','2024-08-22 11:33:40','细化一览','/detaildrawmanage',1),(3507,'192.168.2.2','2024-08-22 11:33:40','三单一览','/threebookmanage',1),(3508,'192.168.2.2','2024-08-22 11:33:41','三单一览','/threebookmanage',1),(3509,'192.168.2.2','2024-08-22 11:33:41','细化一览','/detaildrawmanage',1),(3510,'192.168.2.2','2024-08-22 11:33:43','细化一览','/detaildrawmanage',1),(3511,'192.168.2.2','2024-08-22 11:35:25','三单一览','/threebookmanage',1),(3512,'192.168.2.2','2024-08-22 11:35:26','细化一览','/detaildrawmanage',1),(3513,'192.168.2.2','2024-08-22 11:35:26','三单一览','/threebookmanage',1),(3514,'192.168.2.2','2024-08-22 11:35:28','三单一览','/threebookmanage',1),(3515,'192.168.2.2','2024-08-22 11:35:31','细化一览','/detaildrawmanage',1),(3516,'192.168.2.2','2024-08-22 11:36:01','三单一览','/threebookmanage',1),(3517,'192.168.2.2','2024-08-22 11:38:45','细化一览','/detaildrawmanage',1),(3518,'192.168.2.2','2024-08-22 11:38:46','三单一览','/threebookmanage',1),(3519,'192.168.2.2','2024-08-22 11:38:47','细化一览','/detaildrawmanage',1),(3520,'192.168.2.2','2024-08-22 11:38:47','三单一览','/threebookmanage',1),(3521,'192.168.2.2','2024-08-22 11:39:22','三单一览','/threebookmanage',1),(3522,'192.168.2.2','2024-08-22 11:39:28','菜单管理','/testsysmenu',1),(3523,'192.168.2.2','2024-08-22 11:39:30','状态管理','/testsysstatus',1),(3524,'192.168.2.2','2024-08-22 11:39:31','职位管理','/positionmanage',1),(3525,'192.168.2.2','2024-08-22 11:57:31','任务管理','/taskmanage',1),(3526,'192.168.2.2','2024-08-22 15:21:01','细化一览','/detaildrawmanage',1),(3527,'192.168.2.2','2024-08-22 15:21:10','三单一览','/threebookmanage',1),(3528,'192.168.2.2','2024-08-22 15:21:13','任务管理','/taskmanage',1),(3529,'192.168.2.2','2024-08-22 15:26:41','我的任务','/mytask',1),(3530,'192.168.2.2','2024-08-22 15:26:41','我的任务','/mytask',1),(3531,'192.168.2.2','2024-08-22 15:26:42','任务管理','/taskmanage',1),(3532,'192.168.2.2','2024-08-22 17:24:47','我的任务','/mytask',1),(3533,'192.168.2.2','2024-08-22 17:24:47','我的任务','/mytask',1),(3534,'192.168.2.2','2024-08-22 17:24:48','任务管理','/taskmanage',1),(3535,'192.168.2.2','2024-08-22 17:46:06','三单一览','/threebookmanage',1),(3536,'192.168.2.2','2024-08-22 17:46:17','任务管理','/taskmanage',1),(3537,'192.168.2.2','2024-08-22 18:43:36','我的任务','/mytask',1),(3538,'192.168.2.2','2024-08-22 18:43:39','细化一览','/detaildrawmanage',1),(3539,'192.168.2.2','2024-08-22 18:43:48','任务管理','/taskmanage',1),(3540,'192.168.2.2','2024-08-22 18:46:41','细化一览','/detaildrawmanage',1),(3541,'192.168.2.2','2024-08-22 18:46:49','我的任务','/mytask',1),(3542,'192.168.2.2','2024-08-22 18:46:50','任务管理','/taskmanage',1),(3543,'192.168.2.2','2024-08-22 18:49:43','我的任务','/mytask',1),(3544,'192.168.2.2','2024-08-22 18:49:45','细化一览','/detaildrawmanage',1),(3545,'192.168.2.2','2024-08-22 18:50:17','三单一览','/threebookmanage',1),(3546,'192.168.2.2','2024-08-22 18:50:18','细化一览','/detaildrawmanage',1),(3547,'192.168.2.2','2024-08-22 18:50:19','三单一览','/threebookmanage',1),(3548,'192.168.2.2','2024-08-22 18:50:21','细化一览','/detaildrawmanage',1),(3549,'192.168.2.2','2024-08-22 18:50:22','三单一览','/threebookmanage',1),(3550,'192.168.2.2','2024-08-22 18:50:22','细化一览','/detaildrawmanage',1),(3551,'192.168.2.2','2024-08-22 18:50:23','细化一览','/detaildrawmanage',1),(3552,'192.168.2.2','2024-08-22 18:50:24','三单一览','/threebookmanage',1),(3553,'192.168.2.2','2024-08-22 18:50:24','细化一览','/detaildrawmanage',1),(3554,'192.168.2.2','2024-08-22 18:50:29','细化一览','/detaildrawmanage',1),(3555,'192.168.2.2','2024-08-22 18:50:30','三单一览','/threebookmanage',1),(3556,'192.168.2.2','2024-08-22 18:50:32','细化一览','/detaildrawmanage',1),(3557,'192.168.2.2','2024-08-22 18:50:34','三单一览','/threebookmanage',1),(3558,'192.168.2.2','2024-08-22 18:50:42','细化一览','/detaildrawmanage',1),(3559,'192.168.2.2','2024-08-22 18:50:55','任务管理','/taskmanage',1),(3560,'192.168.2.2','2024-08-22 18:50:56','我的任务','/mytask',1),(3561,'192.168.2.2','2024-08-22 18:50:57','任务管理','/taskmanage',1),(3562,'192.168.2.2','2024-08-22 18:55:47','细化一览','/detaildrawmanage',1),(3563,'192.168.2.2','2024-08-22 18:56:30','三单一览','/threebookmanage',1),(3564,'192.168.2.2','2024-08-22 18:56:31','细化一览','/detaildrawmanage',1),(3565,'192.168.2.2','2024-08-22 18:56:32','三单一览','/threebookmanage',1),(3566,'192.168.2.2','2024-08-22 18:56:33','细化一览','/detaildrawmanage',1),(3567,'192.168.2.2','2024-08-22 18:56:33','三单一览','/threebookmanage',1),(3568,'192.168.2.2','2024-08-22 18:56:35','三单一览','/threebookmanage',1),(3569,'192.168.2.2','2024-08-22 18:56:36','细化一览','/detaildrawmanage',1),(3570,'192.168.2.2','2024-08-22 18:56:37','三单一览','/threebookmanage',1),(3571,'192.168.2.2','2024-08-22 18:56:37','细化一览','/detaildrawmanage',1),(3572,'192.168.2.2','2024-08-22 18:56:42','细化一览','/detaildrawmanage',1),(3573,'192.168.2.2','2024-08-22 18:56:44','任务管理','/taskmanage',1),(3574,'192.168.2.2','2024-08-22 18:57:10','我的任务','/mytask',1),(3575,'192.168.2.2','2024-08-22 18:57:12','任务管理','/taskmanage',1),(3576,'192.168.2.2','2024-08-22 18:57:26','我的任务','/mytask',1),(3577,'192.168.2.2','2024-08-22 18:57:27','任务管理','/taskmanage',1),(3578,'192.168.2.2','2024-08-22 18:57:31','我的任务','/mytask',1),(3579,'192.168.2.2','2024-08-22 18:57:32','任务管理','/taskmanage',1),(3580,'192.168.2.2','2024-08-22 18:57:34','细化一览','/detaildrawmanage',1),(3581,'192.168.2.2','2024-08-22 18:57:35','通讯录','/addrmanage',1),(3582,'192.168.2.2','2024-08-22 18:58:41','状态管理','/testsysstatus',1),(3583,'192.168.2.2','2024-08-22 18:58:43','在线用户','/morelogrecord',1),(3584,'192.168.2.2','2024-08-22 19:04:11','职位管理','/positionmanage',1),(3585,'192.168.2.2','2024-08-22 19:04:13','用户管理','/usermanage',1),(3586,'192.168.2.2','2024-08-22 19:04:32','在线用户','/morelogrecord',1),(3587,'192.168.2.2','2024-08-22 19:04:33','职位管理','/positionmanage',1),(3588,'192.168.2.2','2024-08-22 19:04:34','部门管理','/deptmanage',1),(3589,'192.168.2.2','2024-08-22 19:04:48','状态管理','/testsysstatus',1),(3590,'192.168.2.2','2024-08-22 19:04:48','菜单管理','/testsysmenu',1),(3591,'192.168.2.2','2024-08-22 19:04:53','角色列表','/rolemanage',1),(3592,'192.168.2.2','2024-08-22 19:04:57','任务管理','/taskmanage',1),(3593,'192.168.2.2','2024-08-22 19:11:42','我的任务','/mytask',1),(3594,'192.168.2.2','2024-08-22 19:12:06','任务管理','/taskmanage',1),(3595,'192.168.2.2','2024-08-22 19:14:07','我的任务','/mytask',1),(3596,'192.168.2.2','2024-08-22 19:14:08','任务管理','/taskmanage',1),(3597,'192.168.2.2','2024-08-22 20:37:04','三单一览','/threebookmanage',1),(3598,'192.168.2.2','2024-08-22 20:37:05','任务管理','/taskmanage',1),(3599,'192.168.2.2','2024-08-22 21:21:05','我的任务','/mytask',1),(3600,'192.168.2.2','2024-08-22 21:21:07','任务管理','/taskmanage',1),(3601,'192.168.2.2','2024-08-22 23:52:44','细化一览','/detaildrawmanage',1),(3602,'192.168.2.2','2024-08-22 23:52:45','三单一览','/threebookmanage',1),(3603,'192.168.2.2','2024-08-22 23:52:46','细化一览','/detaildrawmanage',1),(3604,'192.168.2.2','2024-08-22 23:53:15','三单一览','/threebookmanage',1),(3605,'192.168.2.2','2024-08-23 09:21:15','任务管理','/taskmanage',1),(3606,'192.168.2.2','2024-08-23 09:30:10','任务管理','/taskmanage',44),(3607,'192.168.2.2','2024-08-23 09:30:12','我的任务','/mytask',44),(3608,'192.168.2.2','2024-08-23 10:27:20','任务管理','/taskmanage',44),(3609,'192.168.2.2','2024-08-23 10:27:23','我的任务','/mytask',44),(3610,'192.168.2.2','2024-08-23 10:29:32','任务管理','/taskmanage',44),(3611,'192.168.2.2','2024-08-23 10:29:38','我的任务','/mytask',44),(3612,'192.168.2.2','2024-08-23 10:29:46','任务管理','/taskmanage',44),(3613,'192.168.2.2','2024-08-23 10:29:50','我的任务','/mytask',44),(3614,'192.168.2.2','2024-08-23 10:30:29','任务管理','/taskmanage',44),(3615,'192.168.2.2','2024-08-23 10:31:03','我的任务','/mytask',44),(3616,'192.168.2.2','2024-08-23 10:31:06','任务管理','/taskmanage',44),(3617,'192.168.2.2','2024-08-23 10:31:37','我的任务','/mytask',44),(3618,'192.168.2.2','2024-08-23 10:31:41','任务管理','/taskmanage',44),(3619,'192.168.2.2','2024-08-23 10:31:45','我的任务','/mytask',44),(3620,'192.168.2.2','2024-08-23 10:32:34','我的任务','/mytask',1),(3621,'192.168.2.2','2024-08-23 10:32:48','任务管理','/taskmanage',44),(3622,'192.168.2.2','2024-08-23 10:32:49','我的任务','/mytask',44),(3623,'192.168.2.2','2024-08-23 10:32:52','任务管理','/taskmanage',44),(3624,'192.168.2.2','2024-08-23 10:32:56','我的任务','/mytask',44),(3625,'192.168.2.2','2024-08-23 10:33:34','任务管理','/taskmanage',44),(3626,'192.168.2.2','2024-08-23 10:33:42','我的任务','/mytask',44),(3627,'192.168.2.2','2024-08-23 10:36:07','任务管理','/taskmanage',1),(3628,'192.168.2.2','2024-08-23 10:36:17','我的任务','/mytask',1),(3629,'192.168.2.2','2024-08-23 10:36:19','细化一览','/detaildrawmanage',1),(3630,'192.168.2.2','2024-08-23 10:37:09','任务管理','/taskmanage',1),(3631,'192.168.2.2','2024-08-23 10:37:44','我的任务','/mytask',1),(3632,'192.168.2.2','2024-08-23 10:37:46','任务管理','/taskmanage',1),(3633,'192.168.2.2','2024-08-23 10:41:12','任务管理','/taskmanage',44),(3634,'192.168.2.2','2024-08-23 10:42:02','我的任务','/mytask',44),(3635,'192.168.2.2','2024-08-23 10:42:43','我的任务','/mytask',1),(3636,'192.168.2.2','2024-08-23 10:43:46','任务管理','/taskmanage',1),(3637,'192.168.2.2','2024-08-23 10:46:46','任务管理','/taskmanage',44),(3638,'192.168.2.2','2024-08-23 10:46:47','我的任务','/mytask',44),(3639,'192.168.2.2','2024-08-23 10:48:32','我的任务','/mytask',1),(3640,'192.168.2.2','2024-08-23 10:48:33','任务管理','/taskmanage',1),(3641,'192.168.2.2','2024-08-23 10:48:35','我的任务','/mytask',1),(3642,'192.168.2.2','2024-08-23 10:48:36','任务管理','/taskmanage',1),(3643,'192.168.2.2','2024-08-23 10:49:16','我的任务','/mytask',46),(3644,'192.168.2.2','2024-08-23 10:49:33','任务管理','/taskmanage',46),(3645,'192.168.2.2','2024-08-23 10:49:33','我的任务','/mytask',46),(3646,'192.168.2.2','2024-08-23 10:55:22','我的任务','/mytask',1),(3647,'192.168.2.2','2024-08-23 10:55:26','任务管理','/taskmanage',1),(3648,'192.168.2.2','2024-08-23 10:59:20','我的任务','/mytask',1),(3649,'192.168.2.2','2024-08-23 10:59:26','任务管理','/taskmanage',1),(3650,'192.168.2.2','2024-08-23 10:59:35','我的任务','/mytask',1),(3651,'192.168.2.2','2024-08-23 10:59:36','任务管理','/taskmanage',1),(3652,'192.168.2.2','2024-08-23 10:59:36','我的任务','/mytask',1),(3653,'192.168.2.2','2024-08-23 10:59:53','三单一览','/threebookmanage',1),(3654,'192.168.2.2','2024-08-23 10:59:55','细化一览','/detaildrawmanage',1),(3655,'192.168.2.2','2024-08-23 10:59:56','三单一览','/threebookmanage',1),(3656,'192.168.2.2','2024-08-23 10:59:57','细化一览','/detaildrawmanage',1),(3657,'192.168.2.2','2024-08-23 10:59:58','三单一览','/threebookmanage',1),(3658,'192.168.2.2','2024-08-23 10:59:58','细化一览','/detaildrawmanage',1),(3659,'192.168.2.2','2024-08-23 10:59:59','细化一览','/detaildrawmanage',1),(3660,'192.168.2.2','2024-08-23 10:59:59','三单一览','/threebookmanage',1),(3661,'192.168.2.2','2024-08-23 11:00:50','三单一览','/threebookmanage',1),(3662,'192.168.2.2','2024-08-23 11:00:51','细化一览','/detaildrawmanage',1),(3663,'192.168.2.2','2024-08-23 11:00:52','三单一览','/threebookmanage',1),(3664,'192.168.2.2','2024-08-23 11:07:13','细化一览','/detaildrawmanage',1),(3665,'192.168.2.2','2024-08-23 11:07:15','三单一览','/threebookmanage',1),(3666,'192.168.2.2','2024-08-23 11:07:17','细化一览','/detaildrawmanage',1),(3667,'192.168.2.2','2024-08-23 11:07:18','三单一览','/threebookmanage',1),(3668,'192.168.2.2','2024-08-23 11:07:22','细化一览','/detaildrawmanage',1),(3669,'192.168.2.2','2024-08-23 11:07:41','三单一览','/threebookmanage',43),(3670,'192.168.2.2','2024-08-23 11:07:41','细化一览','/detaildrawmanage',43),(3671,'192.168.2.2','2024-08-23 11:09:42','细化一览','/detaildrawmanage',43),(3672,'192.168.2.2','2024-08-23 11:09:43','三单一览','/threebookmanage',43),(3673,'192.168.2.2','2024-08-23 11:09:49','三单一览','/threebookmanage',1),(3674,'192.168.2.2','2024-08-23 11:09:56','细化一览','/detaildrawmanage',1),(3675,'192.168.2.2','2024-08-23 11:09:57','三单一览','/threebookmanage',1),(3676,'192.168.2.2','2024-08-23 11:12:05','细化一览','/detaildrawmanage',43),(3677,'192.168.2.2','2024-08-23 11:12:07','三单一览','/threebookmanage',43),(3678,'192.168.2.2','2024-08-23 11:12:08','细化一览','/detaildrawmanage',43),(3679,'192.168.2.2','2024-08-23 11:13:33','三单一览','/threebookmanage',43),(3680,'192.168.2.2','2024-08-23 11:13:33','细化一览','/detaildrawmanage',43),(3681,'192.168.2.2','2024-08-23 11:13:36','细化一览','/detaildrawmanage',1),(3682,'192.168.2.2','2024-08-23 11:13:37','三单一览','/threebookmanage',1),(3683,'192.168.2.2','2024-08-23 11:13:37','细化一览','/detaildrawmanage',1),(3684,'192.168.2.2','2024-08-23 11:13:39','细化一览','/detaildrawmanage',1),(3685,'192.168.2.2','2024-08-23 11:13:40','细化一览','/detaildrawmanage',43),(3686,'192.168.2.2','2024-08-23 11:13:41','三单一览','/threebookmanage',43),(3687,'192.168.2.2','2024-08-23 11:13:41','细化一览','/detaildrawmanage',43),(3688,'192.168.2.2','2024-08-23 11:13:42','细化一览','/detaildrawmanage',43),(3689,'192.168.2.2','2024-08-23 11:13:42','三单一览','/threebookmanage',43),(3690,'192.168.2.2','2024-08-23 11:13:43','三单一览','/threebookmanage',43),(3691,'192.168.2.2','2024-08-23 11:13:44','细化一览','/detaildrawmanage',43),(3692,'192.168.2.2','2024-08-23 11:13:45','三单一览','/threebookmanage',43),(3693,'192.168.2.2','2024-08-23 11:13:45','细化一览','/detaildrawmanage',43),(3694,'192.168.2.2','2024-08-23 11:13:46','细化一览','/detaildrawmanage',43),(3695,'192.168.2.2','2024-08-23 11:13:46','三单一览','/threebookmanage',43),(3696,'192.168.2.2','2024-08-23 11:13:47','三单一览','/threebookmanage',43),(3697,'192.168.2.2','2024-08-23 11:13:47','细化一览','/detaildrawmanage',43),(3698,'192.168.2.2','2024-08-23 11:13:48','细化一览','/detaildrawmanage',43),(3699,'192.168.2.2','2024-08-23 11:13:48','三单一览','/threebookmanage',43),(3700,'192.168.2.2','2024-08-23 11:13:51','三单一览','/threebookmanage',43),(3701,'192.168.2.2','2024-08-23 11:13:51','细化一览','/detaildrawmanage',43),(3702,'192.168.2.2','2024-08-23 11:15:22','三单一览','/threebookmanage',1),(3703,'192.168.2.2','2024-08-23 11:15:26','细化一览','/detaildrawmanage',1),(3704,'192.168.2.2','2024-08-23 11:15:27','三单一览','/threebookmanage',1),(3705,'192.168.2.2','2024-08-23 11:15:29','细化一览','/detaildrawmanage',1),(3706,'192.168.2.2','2024-08-23 11:15:33','三单一览','/threebookmanage',1),(3707,'192.168.2.2','2024-08-23 11:15:44','细化一览','/detaildrawmanage',43),(3708,'192.168.2.2','2024-08-23 11:15:53','我的任务','/mytask',43),(3709,'192.168.2.2','2024-08-23 11:16:05','角色列表','/rolemanage',1),(3710,'192.168.2.2','2024-08-23 11:18:36','任务管理','/taskmanage',1),(3711,'192.168.2.2','2024-08-23 11:18:38','我的任务','/mytask',1),(3712,'192.168.2.2','2024-08-23 11:18:39','任务管理','/taskmanage',1),(3713,'192.168.2.2','2024-08-23 12:09:32','我的任务','/mytask',1),(3714,'192.168.2.2','2024-08-23 12:09:33','三单一览','/threebookmanage',1),(3715,'192.168.2.2','2024-08-23 12:09:35','细化一览','/detaildrawmanage',1),(3716,'192.168.2.2','2024-08-23 12:09:42','三单一览','/threebookmanage',1),(3717,'192.168.2.2','2024-08-23 12:09:49','任务管理','/taskmanage',1),(3718,'192.168.2.2','2024-08-23 12:17:50','我的任务','/mytask',1),(3719,'192.168.2.2','2024-08-23 12:17:51','任务管理','/taskmanage',1),(3720,'192.168.2.2','2024-08-23 12:22:11','我的任务','/mytask',1),(3721,'192.168.2.2','2024-08-23 12:22:13','任务管理','/taskmanage',1),(3722,'192.168.2.2','2024-08-23 12:22:14','我的任务','/mytask',1),(3723,'192.168.2.2','2024-08-23 12:22:15','任务管理','/taskmanage',1),(3724,'192.168.2.2','2024-08-23 12:47:16','我的任务','/mytask',1),(3725,'192.168.2.2','2024-08-23 12:47:17','任务管理','/taskmanage',1),(3726,'192.168.2.2','2024-08-23 12:47:17','我的任务','/mytask',1),(3727,'192.168.2.2','2024-08-23 12:47:18','我的任务','/mytask',1),(3728,'192.168.2.2','2024-08-23 12:47:18','任务管理','/taskmanage',1),(3729,'192.168.2.2','2024-08-23 12:47:19','任务管理','/taskmanage',1),(3730,'192.168.2.2','2024-08-23 12:47:20','我的任务','/mytask',1),(3731,'192.168.2.2','2024-08-23 12:47:20','任务管理','/taskmanage',1),(3732,'192.168.2.2','2024-08-23 12:47:21','任务管理','/taskmanage',1),(3733,'192.168.2.2','2024-08-23 12:47:21','我的任务','/mytask',1),(3734,'192.168.2.2','2024-08-23 12:48:51','我的任务','/mytask',1),(3735,'192.168.2.2','2024-08-23 12:48:53','三单一览','/threebookmanage',1),(3736,'192.168.2.2','2024-08-23 12:49:08','任务管理','/taskmanage',1),(3737,'192.168.2.2','2024-08-23 12:49:14','三单一览','/threebookmanage',1),(3738,'192.168.2.2','2024-08-23 12:49:18','细化一览','/detaildrawmanage',1),(3739,'192.168.2.2','2024-08-23 12:49:22','任务管理','/taskmanage',1),(3740,'192.168.2.2','2024-08-23 12:49:53','我的任务','/mytask',1),(3741,'192.168.2.2','2024-08-23 12:49:54','任务管理','/taskmanage',1),(3742,'192.168.2.2','2024-08-23 12:49:54','我的任务','/mytask',1),(3743,'192.168.2.2','2024-08-23 12:50:41','我的任务','/mytask',1),(3744,'192.168.2.2','2024-08-23 12:50:42','任务管理','/taskmanage',1),(3745,'192.168.2.2','2024-08-23 12:50:44','我的任务','/mytask',1),(3746,'192.168.2.2','2024-08-23 12:50:44','任务管理','/taskmanage',1),(3747,'192.168.2.2','2024-08-23 12:50:53','任务管理','/taskmanage',1),(3748,'192.168.2.2','2024-08-23 13:36:20','我的任务','/mytask',1),(3749,'192.168.2.2','2024-08-23 13:36:23','任务管理','/taskmanage',1),(3750,'192.168.2.2','2024-08-23 13:37:20','细化一览','/detaildrawmanage',1),(3751,'192.168.2.2','2024-08-23 13:37:22','三单一览','/threebookmanage',1),(3752,'192.168.2.2','2024-08-23 13:37:24','细化一览','/detaildrawmanage',1),(3753,'192.168.2.2','2024-08-23 13:37:25','三单一览','/threebookmanage',1),(3754,'192.168.2.2','2024-08-23 13:37:39','细化一览','/detaildrawmanage',1),(3755,'192.168.2.2','2024-08-23 13:55:29','任务管理','/taskmanage',1),(3756,'192.168.2.2','2024-08-23 14:06:45','我的任务','/mytask',1),(3757,'192.168.2.2','2024-08-23 14:06:46','任务管理','/taskmanage',1),(3758,'192.168.2.2','2024-08-23 14:07:03','我的任务','/mytask',1),(3759,'192.168.2.2','2024-08-23 14:07:04','任务管理','/taskmanage',1),(3760,'192.168.2.2','2024-08-23 14:07:06','我的任务','/mytask',1),(3761,'192.168.2.2','2024-08-23 14:07:07','任务管理','/taskmanage',1),(3762,'192.168.2.2','2024-08-23 14:08:12','三单一览','/threebookmanage',1),(3763,'192.168.2.2','2024-08-23 14:08:16','细化一览','/detaildrawmanage',1),(3764,'192.168.2.2','2024-08-23 14:08:17','三单一览','/threebookmanage',1),(3765,'192.168.2.2','2024-08-23 14:08:20','任务管理','/taskmanage',1),(3766,'192.168.2.2','2024-08-23 14:15:59','我的任务','/mytask',1),(3767,'192.168.2.2','2024-08-23 14:16:00','任务管理','/taskmanage',1),(3768,'192.168.2.2','2024-08-23 15:06:39','我的任务','/mytask',1),(3769,'192.168.2.2','2024-08-23 15:06:40','任务管理','/taskmanage',1),(3770,'192.168.2.2','2024-08-23 15:25:04','我的任务','/mytask',1),(3771,'192.168.2.2','2024-08-23 15:25:05','任务管理','/taskmanage',1),(3772,'192.168.2.2','2024-08-23 16:41:15','我的任务','/mytask',1),(3773,'192.168.2.2','2024-08-23 16:41:16','任务管理','/taskmanage',1),(3774,'192.168.2.2','2024-08-23 22:34:51','我的任务','/mytask',1),(3775,'192.168.2.2','2024-08-23 22:34:53','任务管理','/taskmanage',1),(3776,'192.168.2.2','2024-08-23 22:37:28','我的任务','/mytask',1),(3777,'192.168.2.2','2024-08-23 22:37:31','任务管理','/taskmanage',1),(3778,'192.168.2.2','2024-08-23 22:38:18','三单一览','/threebookmanage',1),(3779,'192.168.2.2','2024-08-23 22:38:20','细化一览','/detaildrawmanage',1),(3780,'192.168.2.2','2024-08-23 22:38:21','三单一览','/threebookmanage',1),(3781,'192.168.2.2','2024-08-23 22:39:49','细化一览','/detaildrawmanage',1),(3782,'192.168.2.2','2024-08-23 22:39:50','三单一览','/threebookmanage',1),(3783,'192.168.2.2','2024-08-23 22:39:53','任务管理','/taskmanage',1),(3784,'192.168.2.2','2024-08-23 22:39:53','我的任务','/mytask',1),(3785,'192.168.2.2','2024-08-23 22:40:02','我的任务','/mytask',1),(3786,'192.168.2.2','2024-08-23 22:40:03','任务管理','/taskmanage',1),(3787,'192.168.2.2','2024-08-23 22:40:11','三单一览','/threebookmanage',1),(3788,'192.168.2.2','2024-08-23 22:40:15','细化一览','/detaildrawmanage',1),(3789,'192.168.2.2','2024-08-23 22:40:18','三单一览','/threebookmanage',1),(3790,'192.168.2.2','2024-08-23 22:40:19','细化一览','/detaildrawmanage',1),(3791,'192.168.2.2','2024-08-23 22:40:19','三单一览','/threebookmanage',1),(3792,'192.168.2.2','2024-08-23 22:40:20','三单一览','/threebookmanage',1),(3793,'192.168.2.2','2024-08-23 22:41:12','细化一览','/detaildrawmanage',1),(3794,'192.168.2.2','2024-08-23 22:42:16','类型管理','/testsystype',1),(3795,'192.168.2.2','2024-08-23 22:42:17','通讯录','/addrmanage',1),(3796,'192.168.2.2','2024-08-23 22:44:35','菜单管理','/testsysmenu',1),(3797,'192.168.2.2','2024-08-23 22:44:38','在线用户','/morelogrecord',1),(3798,'192.168.2.2','2024-08-23 22:45:00','角色列表','/rolemanage',1),(3799,'192.168.2.2','2024-08-23 22:45:13','任务管理','/taskmanage',1),(3800,'192.168.2.2','2024-08-23 22:45:14','我的任务','/mytask',1),(3801,'192.168.2.2','2024-08-23 22:45:15','任务管理','/taskmanage',1),(3802,'192.168.2.2','2024-08-23 22:46:27','通讯录','/addrmanage',1),(3803,'192.168.2.2','2024-08-23 22:46:29','三单一览','/threebookmanage',1),(3804,'192.168.2.2','2024-08-23 22:46:30','任务管理','/taskmanage',1),(3805,'192.168.2.2','2024-08-23 22:46:32','角色列表','/rolemanage',1),(3806,'192.168.2.2','2024-08-23 22:46:33','部门管理','/deptmanage',1),(3807,'192.168.2.2','2024-08-23 22:46:34','在线用户','/morelogrecord',1),(3808,'192.168.2.2','2024-08-23 22:46:35','职位管理','/positionmanage',1),(3809,'192.168.2.2','2024-08-24 06:32:13','任务管理','/taskmanage',1),(3810,'192.168.2.2','2024-08-24 06:34:10','我的任务','/mytask',1),(3811,'192.168.2.2','2024-08-24 06:34:12','任务管理','/taskmanage',1),(3812,'192.168.2.2','2024-08-24 23:41:29','三单一览','/threebookmanage',44),(3813,'192.168.2.2','2024-08-24 23:41:39','细化一览','/detaildrawmanage',44),(3814,'192.168.2.2','2024-08-24 23:41:40','三单一览','/threebookmanage',44),(3815,'192.168.2.2','2024-08-24 23:42:54','我的任务','/mytask',1),(3816,'192.168.2.2','2024-08-24 23:42:54','任务管理','/taskmanage',1),(3817,'192.168.2.2','2024-08-24 23:43:14','任务管理','/taskmanage',1),(3818,'192.168.2.2','2024-08-24 23:43:18','三单一览','/threebookmanage',1),(3819,'192.168.2.2','2024-08-24 23:43:19','细化一览','/detaildrawmanage',1),(3820,'192.168.2.2','2024-08-24 23:43:22','三单一览','/threebookmanage',1),(3821,'192.168.2.2','2024-08-24 23:43:24','细化一览','/detaildrawmanage',1),(3822,'192.168.2.2','2024-08-24 23:43:41','任务管理','/taskmanage',1),(3823,'192.168.2.2','2024-08-24 23:43:49','细化一览','/detaildrawmanage',1),(3824,'192.168.2.2','2024-08-24 23:43:58','任务管理','/taskmanage',1),(3825,'192.168.2.2','2024-08-24 23:44:07','细化一览','/detaildrawmanage',1),(3826,'192.168.2.2','2024-08-24 23:44:11','三单一览','/threebookmanage',1),(3827,'192.168.2.2','2024-08-24 23:44:11','细化一览','/detaildrawmanage',1),(3828,'192.168.2.2','2024-08-24 23:44:15','任务管理','/taskmanage',1),(3829,'192.168.2.2','2024-08-24 23:44:24','我的任务','/mytask',1),(3830,'192.168.2.2','2024-08-24 23:44:26','任务管理','/taskmanage',1),(3831,'192.168.2.2','2024-08-24 23:44:42','细化一览','/detaildrawmanage',1),(3832,'192.168.2.2','2024-08-24 23:44:43','三单一览','/threebookmanage',1),(3833,'192.168.2.2','2024-08-24 23:44:44','细化一览','/detaildrawmanage',1),(3834,'192.168.2.2','2024-08-24 23:44:45','三单一览','/threebookmanage',1),(3835,'192.168.2.2','2024-08-24 23:45:05','细化一览','/detaildrawmanage',1),(3836,'192.168.2.2','2024-08-24 23:45:07','任务管理','/taskmanage',1),(3837,'192.168.2.2','2024-08-24 23:45:27','我的任务','/mytask',44),(3838,'192.168.2.2','2024-08-24 23:46:31','三单一览','/threebookmanage',44),(3839,'192.168.2.2','2024-08-24 23:46:35','细化一览','/detaildrawmanage',44),(3840,'192.168.2.2','2024-08-24 23:46:37','我的任务','/mytask',44),(3841,'192.168.2.2','2024-08-24 23:46:49','细化一览','/detaildrawmanage',44),(3842,'192.168.2.2','2024-08-24 23:47:58','三单一览','/threebookmanage',44),(3843,'192.168.2.2','2024-08-24 23:48:01','细化一览','/detaildrawmanage',44),(3844,'192.168.2.2','2024-08-24 23:48:09','三单一览','/threebookmanage',44),(3845,'192.168.2.2','2024-08-24 23:48:13','细化一览','/detaildrawmanage',44),(3846,'192.168.2.2','2024-08-24 23:48:34','我的任务','/mytask',1),(3847,'192.168.2.2','2024-08-24 23:48:35','任务管理','/taskmanage',1),(3848,'192.168.2.2','2024-08-24 23:49:59','细化一览','/detaildrawmanage',1),(3849,'192.168.2.2','2024-08-24 23:50:06','三单一览','/threebookmanage',1),(3850,'192.168.2.2','2024-08-24 23:50:14','任务管理','/taskmanage',1),(3851,'192.168.2.2','2024-08-24 23:51:33','三单一览','/threebookmanage',1),(3852,'192.168.2.2','2024-08-24 23:51:34','细化一览','/detaildrawmanage',1),(3853,'192.168.2.2','2024-08-24 23:51:36','三单一览','/threebookmanage',1),(3854,'192.168.2.2','2024-08-24 23:51:38','任务管理','/taskmanage',1),(3855,'192.168.2.2','2024-08-24 23:51:51','我的任务','/mytask',1),(3856,'192.168.2.2','2024-08-24 23:51:53','细化一览','/detaildrawmanage',1),(3857,'192.168.2.2','2024-08-24 23:51:53','三单一览','/threebookmanage',1),(3858,'192.168.2.2','2024-08-24 23:51:56','任务管理','/taskmanage',1),(3859,'192.168.2.2','2024-08-24 23:52:31','我的任务','/mytask',1),(3860,'192.168.2.2','2024-08-24 23:52:33','细化一览','/detaildrawmanage',1),(3861,'192.168.2.2','2024-08-24 23:52:35','任务管理','/taskmanage',1),(3862,'192.168.2.2','2024-08-24 23:53:10','三单一览','/threebookmanage',1),(3863,'192.168.2.2','2024-08-24 23:53:13','任务管理','/taskmanage',1),(3864,'192.168.2.2','2024-08-24 23:53:34','三单一览','/threebookmanage',1),(3865,'192.168.2.2','2024-08-24 23:53:37','任务管理','/taskmanage',1),(3866,'192.168.2.2','2024-08-24 23:53:47','细化一览','/detaildrawmanage',1),(3867,'192.168.2.2','2024-08-24 23:53:54','任务管理','/taskmanage',1),(3868,'192.168.2.2','2024-08-24 23:54:19','三单一览','/threebookmanage',1),(3869,'192.168.2.2','2024-08-24 23:54:19','细化一览','/detaildrawmanage',1),(3870,'192.168.2.2','2024-08-24 23:54:19','细化一览','/detaildrawmanage',1),(3871,'192.168.2.2','2024-08-24 23:54:21','细化一览','/detaildrawmanage',1),(3872,'192.168.2.2','2024-08-24 23:54:23','三单一览','/threebookmanage',1),(3873,'192.168.2.2','2024-08-24 23:54:34','细化一览','/detaildrawmanage',1),(3874,'192.168.2.2','2024-08-24 23:54:35','三单一览','/threebookmanage',1),(3875,'192.168.2.2','2024-08-24 23:54:37','通讯录','/addrmanage',1),(3876,'192.168.2.2','2024-08-24 23:54:39','任务管理','/taskmanage',1),(3877,'192.168.2.2','2024-08-24 23:54:39','我的任务','/mytask',1),(3878,'192.168.2.2','2024-08-24 23:54:39','我的任务','/mytask',1),(3879,'192.168.2.2','2024-08-24 23:54:42','角色列表','/rolemanage',1),(3880,'192.168.2.2','2024-08-24 23:54:43','部门管理','/deptmanage',1),(3881,'192.168.2.2','2024-08-24 23:54:44','在线用户','/morelogrecord',1),(3882,'192.168.2.2','2024-08-24 23:54:45','职位管理','/positionmanage',1),(3883,'192.168.2.2','2024-08-24 23:54:45','用户管理','/usermanage',1),(3884,'192.168.2.2','2024-08-24 23:54:45','用户管理','/usermanage',1),(3885,'192.168.2.2','2024-08-24 23:54:47','在线用户','/morelogrecord',1),(3886,'192.168.2.2','2024-08-24 23:54:47','职位管理','/positionmanage',1),(3887,'192.168.2.2','2024-08-24 23:54:47','职位管理','/positionmanage',1),(3888,'192.168.2.2','2024-08-24 23:54:48','用户管理','/usermanage',1),(3889,'192.168.2.2','2024-08-24 23:54:48','用户管理','/usermanage',1),(3890,'192.168.2.2','2024-08-24 23:54:49','职位管理','/positionmanage',1),(3891,'192.168.2.2','2024-08-24 23:54:50','在线用户','/morelogrecord',1),(3892,'192.168.2.2','2024-08-24 23:54:50','部门管理','/deptmanage',1),(3893,'192.168.2.2','2024-08-24 23:54:50','部门管理','/deptmanage',1),(3894,'192.168.2.2','2024-08-24 23:54:54','类型管理','/testsystype',1),(3895,'192.168.2.2','2024-08-24 23:54:55','菜单管理','/testsysmenu',1),(3896,'192.168.2.2','2024-08-24 23:54:55','状态管理','/testsysstatus',1),(3897,'192.168.2.2','2024-08-24 23:54:55','状态管理','/testsysstatus',1),(3898,'192.168.2.2','2024-08-24 23:55:00','职位管理','/positionmanage',1),(3899,'192.168.2.2','2024-08-24 23:55:01','在线用户','/morelogrecord',1),(3900,'192.168.2.2','2024-08-24 23:55:07','职位管理','/positionmanage',1),(3901,'192.168.2.2','2024-08-24 23:55:08','在线用户','/morelogrecord',1),(3902,'192.168.2.2','2024-08-24 23:55:09','用户管理','/usermanage',1),(3903,'192.168.2.2','2024-08-24 23:55:12','三单一览','/threebookmanage',1),(3904,'192.168.2.2','2024-08-24 23:55:15','任务管理','/taskmanage',1),(3905,'192.168.2.2','2024-08-24 23:55:30','我的任务','/mytask',1),(3906,'192.168.2.2','2024-08-24 23:55:31','任务管理','/taskmanage',1),(3907,'192.168.2.2','2024-08-24 23:55:32','三单一览','/threebookmanage',1),(3908,'192.168.2.2','2024-08-24 23:55:40','细化一览','/detaildrawmanage',1),(3909,'192.168.2.2','2024-08-24 23:55:45','三单一览','/threebookmanage',1),(3910,'192.168.2.2','2024-08-24 23:55:45','细化一览','/detaildrawmanage',1),(3911,'192.168.2.2','2024-08-24 23:55:45','细化一览','/detaildrawmanage',1),(3912,'192.168.2.2','2024-08-24 23:55:47','通讯录','/addrmanage',1),(3913,'192.168.2.2','2024-08-24 23:55:47','通讯录','/addrmanage',1),(3914,'192.168.2.2','2024-08-24 23:55:50','任务管理','/taskmanage',1),(3915,'192.168.2.2','2024-08-24 23:55:50','我的任务','/mytask',1),(3916,'192.168.2.2','2024-08-24 23:55:50','我的任务','/mytask',1),(3917,'192.168.2.2','2024-08-24 23:55:52','三单一览','/threebookmanage',1),(3918,'192.168.2.2','2024-08-24 23:55:53','细化一览','/detaildrawmanage',1),(3919,'192.168.2.2','2024-08-24 23:55:54','任务管理','/taskmanage',1),(3920,'192.168.2.2','2024-08-24 23:55:55','我的任务','/mytask',1),(3921,'192.168.2.2','2024-08-24 23:55:56','任务管理','/taskmanage',1),(3922,'192.168.2.2','2024-08-24 23:56:00','我的任务','/mytask',1),(3923,'192.168.2.2','2024-08-25 07:46:09','三单一览','/threebookmanage',1),(3924,'192.168.2.2','2024-08-25 07:46:10','细化一览','/detaildrawmanage',1),(3925,'192.168.2.2','2024-08-25 07:46:12','三单一览','/threebookmanage',1),(3926,'192.168.2.2','2024-08-25 07:50:04','任务管理','/taskmanage',1),(3927,'192.168.2.2','2024-08-25 07:50:15','我的任务','/mytask',1),(3928,'192.168.2.2','2024-08-25 07:50:17','三单一览','/threebookmanage',1),(3929,'192.168.2.2','2024-08-25 07:50:18','细化一览','/detaildrawmanage',1),(3930,'192.168.2.2','2024-08-25 07:50:20','我的任务','/mytask',1),(3931,'192.168.2.2','2024-08-25 07:50:21','任务管理','/taskmanage',1),(3932,'192.168.2.2','2024-08-25 07:50:47','我的任务','/mytask',1),(3933,'192.168.2.2','2024-08-25 07:50:48','任务管理','/taskmanage',1),(3934,'192.168.2.2','2024-08-25 08:05:06','我的任务','/mytask',1),(3935,'192.168.2.2','2024-08-25 08:05:08','任务管理','/taskmanage',1),(3936,'192.168.2.2','2024-08-25 08:05:33','三单一览','/threebookmanage',44),(3937,'192.168.2.2','2024-08-25 08:05:34','我的任务','/mytask',44),(3938,'192.168.2.2','2024-08-25 08:26:32','我的任务','/mytask',1),(3939,'192.168.2.2','2024-08-25 08:26:33','任务管理','/taskmanage',1),(3940,'192.168.2.2','2024-08-25 08:26:46','我的任务','/mytask',1),(3941,'192.168.2.2','2024-08-25 08:26:50','任务管理','/taskmanage',1),(3942,'192.168.2.2','2024-08-25 08:27:01','三单一览','/threebookmanage',1),(3943,'192.168.2.2','2024-08-25 08:27:03','细化一览','/detaildrawmanage',1),(3944,'192.168.2.2','2024-08-25 08:39:07','三单一览','/threebookmanage',1),(3945,'192.168.2.2','2024-08-25 08:39:08','细化一览','/detaildrawmanage',1),(3946,'192.168.2.2','2024-08-25 08:39:10','三单一览','/threebookmanage',1),(3947,'192.168.2.2','2024-08-25 08:39:36','部门管理','/deptmanage',1),(3948,'192.168.2.2','2024-08-25 08:39:42','在线用户','/morelogrecord',1),(3949,'192.168.2.2','2024-08-25 08:39:48','职位管理','/positionmanage',1),(3950,'192.168.2.2','2024-08-25 08:39:49','用户管理','/usermanage',1),(3951,'192.168.2.2','2024-08-25 08:39:59','角色列表','/rolemanage',1),(3952,'192.168.2.2','2024-08-25 08:40:04','任务管理','/taskmanage',1),(3953,'192.168.2.2','2024-08-25 08:40:06','我的任务','/mytask',1),(3954,'192.168.2.2','2024-08-25 08:40:08','任务管理','/taskmanage',1),(3955,'192.168.2.2','2024-08-25 08:40:27','用户管理','/usermanage',1),(3956,'192.168.2.2','2024-08-25 08:41:38','三单一览','/threebookmanage',42),(3957,'192.168.2.2','2024-08-25 08:41:45','任务管理','/taskmanage',42),(3958,'192.168.2.2','2024-08-25 08:41:58','角色列表','/rolemanage',1),(3959,'192.168.2.2','2024-08-25 08:42:05','用户管理','/usermanage',1),(3960,'192.168.2.2','2024-08-25 08:42:12','角色列表','/rolemanage',1),(3961,'192.168.2.2','2024-08-25 08:49:19','三单一览','/threebookmanage',1),(3962,'192.168.2.2','2024-08-25 08:49:22','任务管理','/taskmanage',1),(3963,'192.168.2.2','2024-08-25 21:50:13','我的任务','/mytask',1),(3964,'192.168.2.2','2024-08-25 21:50:14','任务管理','/taskmanage',1),(3965,'192.168.2.2','2024-08-25 21:55:16','我的任务','/mytask',45),(3966,'192.168.2.2','2024-08-25 22:43:51','角色列表','/rolemanage',1),(3967,'192.168.2.2','2024-08-25 22:43:53','任务管理','/taskmanage',1),(3968,'192.168.2.2','2024-08-26 15:48:32','部门管理','/deptmanage',1),(3969,'192.168.2.2','2024-08-26 15:48:35','角色列表','/rolemanage',1),(3970,'192.168.2.2','2024-08-26 15:48:39','任务管理','/taskmanage',1),(3971,'192.168.2.2','2024-08-26 15:48:43','我的任务','/mytask',1),(3972,'192.168.2.2','2024-08-26 15:48:44','任务管理','/taskmanage',1),(3973,'192.168.2.2','2024-08-27 14:03:46','三单一览','/threebookmanage',43),(3974,'192.168.2.2','2024-08-27 14:04:37','我的任务','/mytask',43),(3975,'192.168.2.2','2024-08-27 16:17:19','三单一览','/threebookmanage',1),(3976,'192.168.2.2','2024-08-27 16:17:19','细化一览','/detaildrawmanage',1),(3977,'192.168.2.2','2024-08-27 16:17:21','细化一览','/detaildrawmanage',1),(3978,'192.168.2.2','2024-08-27 16:17:23','三单一览','/threebookmanage',1),(3979,'192.168.2.2','2024-08-27 16:17:59','细化一览','/detaildrawmanage',42),(3980,'192.168.2.2','2024-08-27 16:18:01','三单一览','/threebookmanage',42),(3981,'192.168.2.2','2024-08-27 16:18:10','任务管理','/taskmanage',1),(3982,'192.168.2.2','2024-08-27 16:18:13','三单一览','/threebookmanage',1),(3983,'192.168.2.2','2024-08-27 16:18:18','细化一览','/detaildrawmanage',1),(3984,'192.168.2.2','2024-08-27 16:18:36','任务管理','/taskmanage',42),(3985,'192.168.2.2','2024-08-27 17:02:35','菜单管理','/testsysmenu',1),(3986,'192.168.2.2','2024-08-27 17:03:04','在线用户','/morelogrecord',1),(3987,'192.168.2.2','2024-08-27 17:03:05','部门管理','/deptmanage',1),(3988,'192.168.2.2','2024-08-27 17:03:05','职位管理','/positionmanage',1),(3989,'192.168.2.2','2024-08-27 17:03:06','用户管理','/usermanage',1),(3990,'192.168.2.2','2024-08-27 17:03:07','角色列表','/rolemanage',1),(3991,'192.168.2.2','2024-08-27 17:04:01','菜单管理','/testsysmenu',1),(3992,'192.168.2.2','2024-08-27 17:04:49','角色列表','/rolemanage',1),(3993,'192.168.2.2','2024-08-27 17:05:48','菜单管理','/testsysmenu',1),(3994,'192.168.2.2','2024-08-27 17:06:09','角色列表','/rolemanage',1),(3995,'192.168.2.2','2024-08-27 17:06:13','菜单管理','/testsysmenu',1),(3996,'192.168.2.2','2024-08-27 17:15:08','任务管理','/taskmanage',1),(3997,'192.168.2.2','2024-08-27 17:15:12','我的任务','/mytask',1),(3998,'192.168.2.2','2024-08-27 17:15:15','任务管理','/taskmanage',1),(3999,'192.168.2.2','2024-08-27 17:15:23','我的任务','/mytask',1),(4000,'192.168.2.2','2024-08-27 17:37:53','审核管理','/shenqingmanage',1),(4001,'192.168.2.2','2024-08-27 17:47:11','审核管理','/shenqingmanage',43),(4002,'192.168.2.2','2024-08-27 18:04:20','我的任务','/mytask',43),(4003,'192.168.2.2','2024-08-27 18:05:42','审核管理','/shenqingmanage',43),(4004,'192.168.2.2','2024-08-27 18:25:44','我的任务','/mytask',43),(4005,'192.168.2.2','2024-08-27 18:28:49','审核管理','/shenqingmanage',43),(4006,'192.168.2.2','2024-08-27 18:28:52','我的任务','/mytask',43),(4007,'192.168.2.2','2024-08-27 18:28:53','审核管理','/shenqingmanage',43),(4008,'192.168.2.2','2024-08-27 18:28:54','我的任务','/mytask',43),(4009,'192.168.2.2','2024-08-27 18:32:37','审核管理','/shenqingmanage',43),(4010,'192.168.2.2','2024-08-27 18:34:02','我的任务','/mytask',43),(4011,'192.168.2.2','2024-08-27 18:34:06','审核管理','/shenqingmanage',43),(4012,'192.168.2.2','2024-08-27 18:34:07','我的任务','/mytask',43),(4013,'192.168.2.2','2024-08-27 18:34:12','审核管理','/shenqingmanage',43),(4014,'192.168.2.2','2024-08-27 18:34:13','我的任务','/mytask',43),(4015,'192.168.2.2','2024-08-27 18:37:03','审核管理','/shenqingmanage',43),(4016,'192.168.2.2','2024-08-27 18:37:04','我的任务','/mytask',43),(4017,'192.168.2.2','2024-08-27 18:37:07','三单一览','/threebookmanage',43),(4018,'192.168.2.2','2024-08-27 18:37:09','细化一览','/detaildrawmanage',43),(4019,'192.168.2.2','2024-08-27 18:37:11','三单一览','/threebookmanage',43),(4020,'192.168.2.2','2024-08-27 19:11:21','审核管理','/shenqingmanage',43),(4021,'192.168.2.2','2024-08-27 19:23:13','我的任务','/mytask',43),(4022,'192.168.2.2','2024-08-27 19:27:31','细化一览','/detaildrawmanage',42),(4023,'192.168.2.2','2024-08-27 19:27:33','三单一览','/threebookmanage',42),(4024,'192.168.2.2','2024-08-27 19:27:36','任务管理','/taskmanage',42),(4025,'192.168.2.2','2024-08-27 21:02:08','我的任务','/mytask',42),(4026,'192.168.2.2','2024-08-27 21:02:08','我的任务','/mytask',42),(4027,'192.168.2.2','2024-08-27 21:02:09','任务管理','/taskmanage',42),(4028,'192.168.2.2','2024-08-28 08:16:13','我的任务','/mytask',42),(4029,'192.168.2.2','2024-08-28 08:16:14','任务管理','/taskmanage',42),(4030,'192.168.2.2','2024-08-28 08:50:23','我的任务','/mytask',42),(4031,'192.168.2.2','2024-08-28 08:50:24','任务管理','/taskmanage',42),(4032,'192.168.2.2','2024-08-28 09:06:46','任务管理','/taskmanage',1),(4033,'192.168.2.2','2024-08-28 09:06:49','我的任务','/mytask',1),(4034,'192.168.2.2','2024-08-28 09:06:49','任务管理','/taskmanage',1),(4035,'192.168.2.2','2024-08-28 09:07:11','审核管理','/shenqingmanage',1),(4036,'192.168.2.2','2024-08-28 09:07:12','任务管理','/taskmanage',1),(4037,'192.168.2.2','2024-08-28 09:21:08','审核管理','/shenqingmanage',43),(4038,'192.168.2.2','2024-08-28 19:03:30','我的任务','/mytask',43),(4039,'192.168.2.2','2024-08-28 19:05:01','三单一览','/threebookmanage',43),(4040,'192.168.2.2','2024-08-28 19:05:02','细化一览','/detaildrawmanage',43),(4041,'192.168.2.2','2024-08-28 19:05:23','在线用户','/morelogrecord',1),(4042,'192.168.2.2','2024-08-28 19:05:25','角色列表','/rolemanage',1),(4043,'192.168.2.2','2024-08-28 19:05:27','任务管理','/taskmanage',1),(4044,'192.168.2.2','2024-08-28 19:05:31','我的任务','/mytask',1),(4045,'192.168.2.2','2024-08-28 19:05:32','审核管理','/shenqingmanage',1),(4046,'192.168.2.2','2024-08-28 19:05:34','三单一览','/threebookmanage',43),(4047,'192.168.2.2','2024-08-28 19:05:36','我的任务','/mytask',43),(4048,'192.168.2.2','2024-08-28 19:11:54','细化一览','/detaildrawmanage',42),(4049,'192.168.2.2','2024-08-28 19:11:55','三单一览','/threebookmanage',42),(4050,'192.168.2.2','2024-08-28 19:12:10','任务管理','/taskmanage',1),(4051,'192.168.2.2','2024-08-28 19:12:11','我的任务','/mytask',1),(4052,'192.168.2.2','2024-08-28 19:12:12','审核管理','/shenqingmanage',1),(4053,'192.168.2.2','2024-08-28 19:12:13','三单一览','/threebookmanage',1),(4054,'192.168.2.2','2024-08-28 19:12:14','细化一览','/detaildrawmanage',1),(4055,'192.168.2.2','2024-08-28 19:12:33','三单一览','/threebookmanage',1),(4056,'192.168.2.2','2024-08-28 19:12:37','细化一览','/detaildrawmanage',1),(4057,'192.168.2.2','2024-08-28 19:12:37','三单一览','/threebookmanage',1),(4058,'192.168.2.2','2024-08-28 19:12:41','菜单管理','/testsysmenu',1),(4059,'192.168.2.2','2024-08-28 19:12:43','我的任务','/mytask',1),(4060,'192.168.2.2','2024-08-28 19:12:47','任务管理','/taskmanage',1),(4061,'192.168.2.2','2024-08-28 20:34:43','审核管理','/shenqingmanage',43),(4062,'192.168.2.2','2024-08-28 20:47:59','我的任务','/mytask',1),(4063,'192.168.2.2','2024-08-28 20:48:00','任务管理','/taskmanage',1),(4064,'192.168.2.2','2024-08-28 20:48:25','我的任务','/mytask',43),(4065,'192.168.2.2','2024-08-28 21:00:36','审核管理','/shenqingmanage',43),(4066,'192.168.2.2','2024-08-28 21:00:52','我的任务','/mytask',43),(4067,'192.168.2.2','2024-08-28 21:02:41','审核管理','/shenqingmanage',43),(4068,'192.168.2.2','2024-08-28 21:02:41','我的任务','/mytask',43),(4069,'192.168.2.2','2024-08-28 21:03:00','我的任务','/mytask',43),(4070,'192.168.2.2','2024-08-28 21:04:02','三单一览','/threebookmanage',44),(4071,'192.168.2.2','2024-08-28 21:04:05','我的任务','/mytask',44),(4072,'192.168.2.2','2024-08-28 21:07:44','我的任务','/mytask',1),(4073,'192.168.2.2','2024-08-28 21:07:45','任务管理','/taskmanage',1),(4074,'192.168.2.2','2024-08-29 08:16:44','我的任务','/mytask',1),(4075,'192.168.2.2','2024-08-29 08:16:47','任务管理','/taskmanage',1),(4076,'192.168.2.2','2024-08-29 08:18:23','我的任务','/mytask',1),(4077,'192.168.2.2','2024-08-29 08:18:25','三单一览','/threebookmanage',1),(4078,'192.168.2.2','2024-08-29 08:18:29','细化一览','/detaildrawmanage',1),(4079,'192.168.2.2','2024-08-29 08:18:40','任务管理','/taskmanage',1),(4080,'192.168.2.2','2024-08-29 08:22:55','审核管理','/shenqingmanage',43),(4081,'192.168.2.2','2024-08-29 08:22:55','我的任务','/mytask',43),(4082,'192.168.2.2','2024-08-29 08:22:57','我的任务','/mytask',43),(4083,'192.168.2.2','2024-08-29 08:22:58','审核管理','/shenqingmanage',43),(4084,'192.168.2.2','2024-08-29 08:23:41','我的任务','/mytask',43),(4085,'192.168.2.2','2024-08-29 08:23:45','审核管理','/shenqingmanage',43),(4086,'192.168.2.2','2024-08-29 08:23:54','我的任务','/mytask',43),(4087,'192.168.2.2','2024-08-29 08:24:04','审核管理','/shenqingmanage',43),(4088,'192.168.2.2','2024-08-29 08:24:16','我的任务','/mytask',43),(4089,'192.168.2.2','2024-08-29 08:26:32','审核管理','/shenqingmanage',43),(4090,'192.168.2.2','2024-08-29 08:26:38','我的任务','/mytask',43),(4091,'192.168.2.2','2024-08-29 08:28:48','审核管理','/shenqingmanage',43),(4092,'192.168.2.2','2024-08-29 08:32:13','我的任务','/mytask',43),(4093,'192.168.2.2','2024-08-29 08:32:36','审核管理','/shenqingmanage',43),(4094,'192.168.2.2','2024-08-29 08:32:50','我的任务','/mytask',43),(4095,'192.168.2.2','2024-08-29 08:37:46','审核管理','/shenqingmanage',43),(4096,'192.168.2.2','2024-08-29 08:37:47','我的任务','/mytask',43),(4097,'192.168.2.2','2024-08-29 08:37:48','审核管理','/shenqingmanage',43),(4098,'192.168.2.2','2024-08-29 08:37:50','我的任务','/mytask',43),(4099,'192.168.2.2','2024-08-29 08:38:31','审核管理','/shenqingmanage',43),(4100,'192.168.2.2','2024-08-29 08:38:32','我的任务','/mytask',43),(4101,'192.168.2.2','2024-08-29 08:43:57','审核管理','/shenqingmanage',43),(4102,'192.168.2.2','2024-08-29 08:43:58','我的任务','/mytask',43),(4103,'192.168.2.2','2024-08-29 08:57:46','审核管理','/shenqingmanage',43),(4104,'192.168.2.2','2024-08-29 08:57:53','我的任务','/mytask',43),(4105,'192.168.2.2','2024-08-29 08:57:55','审核管理','/shenqingmanage',43),(4106,'192.168.2.2','2024-08-29 08:57:56','我的任务','/mytask',43),(4107,'192.168.2.2','2024-08-29 08:57:56','审核管理','/shenqingmanage',43),(4108,'192.168.2.2','2024-08-29 08:58:31','审核管理','/shenqingmanage',43),(4109,'192.168.2.2','2024-08-29 08:58:38','我的任务','/mytask',43),(4110,'192.168.2.2','2024-08-29 08:58:51','三单一览','/threebookmanage',43),(4111,'192.168.2.2','2024-08-29 08:58:52','细化一览','/detaildrawmanage',43),(4112,'192.168.2.2','2024-08-29 08:58:54','三单一览','/threebookmanage',43),(4113,'192.168.2.2','2024-08-29 08:59:08','细化一览','/detaildrawmanage',43),(4114,'192.168.2.2','2024-08-29 08:59:09','三单一览','/threebookmanage',43),(4115,'192.168.2.2','2024-08-29 08:59:10','细化一览','/detaildrawmanage',43),(4116,'192.168.2.2','2024-08-29 08:59:10','三单一览','/threebookmanage',43),(4117,'192.168.2.2','2024-08-29 08:59:11','三单一览','/threebookmanage',43),(4118,'192.168.2.2','2024-08-29 08:59:11','细化一览','/detaildrawmanage',43),(4119,'192.168.2.2','2024-08-29 08:59:45','我的任务','/mytask',43),(4120,'192.168.2.2','2024-08-29 09:02:27','我的任务','/mytask',1),(4121,'192.168.2.2','2024-08-29 09:12:01','任务管理','/taskmanage',45),(4122,'192.168.2.2','2024-08-29 09:12:03','我的任务','/mytask',45),(4123,'192.168.2.2','2024-08-29 09:12:04','任务管理','/taskmanage',45),(4124,'192.168.2.2','2024-08-29 09:12:05','我的任务','/mytask',45),(4125,'192.168.2.2','2024-08-29 09:12:11','任务管理','/taskmanage',45),(4126,'192.168.2.2','2024-08-29 09:12:13','我的任务','/mytask',45),(4127,'192.168.2.2','2024-08-29 09:12:19','任务管理','/taskmanage',45),(4128,'192.168.2.2','2024-08-29 09:12:21','审核管理','/shenqingmanage',45),(4129,'192.168.2.2','2024-08-29 09:12:23','我的任务','/mytask',45),(4130,'192.168.2.2','2024-08-29 09:12:26','任务管理','/taskmanage',45),(4131,'192.168.2.2','2024-08-29 09:12:29','我的任务','/mytask',45),(4132,'192.168.2.2','2024-08-29 09:12:40','任务管理','/taskmanage',45),(4133,'192.168.2.2','2024-08-29 09:12:41','我的任务','/mytask',45),(4134,'192.168.2.2','2024-08-29 09:12:42','任务管理','/taskmanage',45),(4135,'192.168.2.2','2024-08-29 09:12:43','我的任务','/mytask',45),(4136,'192.168.2.2','2024-08-29 09:12:54','任务管理','/taskmanage',45),(4137,'192.168.2.2','2024-08-29 09:12:55','我的任务','/mytask',45),(4138,'192.168.2.2','2024-08-29 09:13:32','任务管理','/taskmanage',45),(4139,'192.168.2.2','2024-08-29 09:13:34','我的任务','/mytask',45),(4140,'192.168.2.2','2024-08-29 09:13:34','任务管理','/taskmanage',45),(4141,'192.168.2.2','2024-08-29 09:13:34','任务管理','/taskmanage',45),(4142,'192.168.2.2','2024-08-29 09:39:56','三单一览','/threebookmanage',45),(4143,'192.168.2.2','2024-08-29 09:39:58','细化一览','/detaildrawmanage',45),(4144,'192.168.2.2','2024-08-29 09:40:10','任务管理','/taskmanage',1),(4145,'192.168.2.2','2024-08-29 09:40:13','我的任务','/mytask',1),(4146,'192.168.2.2','2024-08-29 09:40:14','任务管理','/taskmanage',1),(4147,'192.168.2.2','2024-08-29 09:40:24','细化一览','/detaildrawmanage',1),(4148,'192.168.2.2','2024-08-29 09:40:29','三单一览','/threebookmanage',1),(4149,'192.168.2.2','2024-08-29 09:40:32','细化一览','/detaildrawmanage',1),(4150,'192.168.2.2','2024-08-29 09:40:32','三单一览','/threebookmanage',1),(4151,'192.168.2.2','2024-08-29 09:40:33','任务管理','/taskmanage',1),(4152,'192.168.2.2','2024-08-29 09:40:47','任务管理','/taskmanage',42),(4153,'192.168.2.2','2024-08-29 09:43:01','我的任务','/mytask',45),(4154,'192.168.2.2','2024-08-29 09:51:26','我的任务','/mytask',42),(4155,'192.168.2.2','2024-08-29 09:51:27','任务管理','/taskmanage',42),(4156,'192.168.2.2','2024-08-29 09:54:53','审核管理','/shenqingmanage',43),(4157,'192.168.2.2','2024-08-29 09:54:55','我的任务','/mytask',43),(4158,'192.168.2.2','2024-08-29 09:55:56','审核管理','/shenqingmanage',43),(4159,'192.168.2.2','2024-08-29 09:56:00','我的任务','/mytask',43),(4160,'192.168.2.2','2024-08-29 09:57:50','我的任务','/mytask',42),(4161,'192.168.2.2','2024-08-29 09:57:51','任务管理','/taskmanage',42),(4162,'192.168.2.2','2024-08-29 09:57:56','细化一览','/detaildrawmanage',42),(4163,'192.168.2.2','2024-08-29 09:57:57','三单一览','/threebookmanage',42),(4164,'192.168.2.2','2024-08-29 09:58:24','细化一览','/detaildrawmanage',42),(4165,'192.168.2.2','2024-08-29 09:58:26','任务管理','/taskmanage',42),(4166,'192.168.2.2','2024-08-29 10:03:39','我的任务','/mytask',42),(4167,'192.168.2.2','2024-08-29 10:03:40','三单一览','/threebookmanage',42),(4168,'192.168.2.2','2024-08-29 10:03:41','细化一览','/detaildrawmanage',42),(4169,'192.168.2.2','2024-08-29 10:03:42','三单一览','/threebookmanage',42),(4170,'192.168.2.2','2024-08-29 10:03:42','细化一览','/detaildrawmanage',42),(4171,'192.168.2.2','2024-08-29 10:03:42','细化一览','/detaildrawmanage',42),(4172,'192.168.2.2','2024-08-29 10:03:43','细化一览','/detaildrawmanage',42),(4173,'192.168.2.2','2024-08-29 10:03:43','三单一览','/threebookmanage',42),(4174,'192.168.2.2','2024-08-29 10:03:43','三单一览','/threebookmanage',42),(4175,'192.168.2.2','2024-08-29 10:03:45','任务管理','/taskmanage',42),(4176,'192.168.2.2','2024-08-29 10:03:46','我的任务','/mytask',42),(4177,'192.168.2.2','2024-08-29 10:03:47','任务管理','/taskmanage',42),(4178,'192.168.2.2','2024-08-29 10:04:14','我的任务','/mytask',42),(4179,'192.168.2.2','2024-08-29 10:04:14','任务管理','/taskmanage',42),(4180,'192.168.2.2','2024-08-29 10:04:14','任务管理','/taskmanage',42),(4181,'192.168.2.2','2024-08-29 10:04:36','任务管理','/taskmanage',42),(4182,'192.168.2.2','2024-08-29 17:02:50','审核管理','/shenqingmanage',43),(4183,'192.168.2.2','2024-08-29 17:02:51','我的任务','/mytask',43),(4184,'192.168.2.2','2024-08-29 17:22:30','审核管理','/shenqingmanage',43),(4185,'192.168.2.2','2024-08-29 17:22:30','审核管理','/shenqingmanage',43),(4186,'192.168.2.2','2024-08-29 17:22:30','我的任务','/mytask',43),(4187,'192.168.2.2','2024-08-29 17:23:15','我的任务','/mytask',43),(4188,'192.168.2.2','2024-08-29 17:23:39','审核管理','/shenqingmanage',43),(4189,'192.168.2.2','2024-08-29 17:23:39','审核管理','/shenqingmanage',43),(4190,'192.168.2.2','2024-08-29 17:23:40','我的任务','/mytask',43),(4191,'192.168.2.2','2024-08-29 18:15:34','类型管理','/testsystype',1),(4192,'192.168.2.2','2024-08-29 18:15:36','菜单管理','/testsysmenu',1),(4193,'192.168.2.2','2024-08-29 18:15:37','类型管理','/testsystype',1),(4194,'192.168.2.2','2024-08-29 18:15:38','部门管理','/deptmanage',1),(4195,'192.168.2.2','2024-08-29 18:15:40','类型管理','/testsystype',1),(4196,'192.168.2.2','2024-08-29 18:15:52','角色列表','/rolemanage',1),(4197,'192.168.2.2','2024-08-29 18:15:55','我的任务','/mytask',1),(4198,'192.168.2.2','2024-08-29 18:15:56','任务管理','/taskmanage',1),(4199,'192.168.2.2','2024-08-29 18:19:17','审核管理','/shenqingmanage',43),(4200,'192.168.2.2','2024-08-29 18:19:18','我的任务','/mytask',43),(4201,'192.168.2.2','2024-08-30 08:41:33','三单一览','/threebookmanage',43),(4202,'192.168.2.2','2024-08-30 08:41:35','细化一览','/detaildrawmanage',43),(4203,'192.168.2.2','2024-08-30 08:41:36','三单一览','/threebookmanage',43),(4204,'192.168.2.2','2024-08-30 08:41:37','细化一览','/detaildrawmanage',43),(4205,'192.168.2.2','2024-08-30 08:41:38','三单一览','/threebookmanage',43),(4206,'192.168.2.2','2024-08-30 08:41:38','细化一览','/detaildrawmanage',43),(4207,'192.168.2.2','2024-08-30 08:41:54','细化一览','/detaildrawmanage',43),(4208,'192.168.2.2','2024-08-30 08:41:54','三单一览','/threebookmanage',43),(4209,'192.168.2.2','2024-08-30 08:42:04','菜单管理','/testsysmenu',1),(4210,'192.168.2.2','2024-08-30 08:42:32','类型管理','/testsystype',1),(4211,'192.168.2.2','2024-08-30 08:42:42','状态管理','/testsysstatus',1),(4212,'192.168.2.2','2024-08-30 08:42:53','菜单管理','/testsysmenu',1),(4213,'192.168.2.2','2024-08-30 08:43:14','部门管理','/deptmanage',1),(4214,'192.168.2.2','2024-08-30 08:43:15','在线用户','/morelogrecord',1),(4215,'192.168.2.2','2024-08-30 08:43:18','职位管理','/positionmanage',1),(4216,'192.168.2.2','2024-08-30 08:43:19','用户管理','/usermanage',1),(4217,'192.168.2.2','2024-08-30 08:44:38','我的任务','/mytask',43),(4218,'192.168.2.2','2024-08-30 09:16:02','审核管理','/shenqingmanage',43),(4219,'192.168.2.2','2024-08-30 09:16:03','我的任务','/mytask',43),(4220,'192.168.2.2','2024-08-30 09:36:21','三单一览','/threebookmanage',44),(4221,'192.168.2.2','2024-08-30 09:36:24','我的任务','/mytask',44),(4222,'192.168.2.2','2024-08-30 09:43:43','部门管理','/deptmanage',1),(4223,'192.168.2.2','2024-08-30 09:43:45','角色列表','/rolemanage',1),(4224,'192.168.2.2','2024-08-30 09:43:46','任务管理','/taskmanage',1),(4225,'192.168.2.2','2024-08-30 09:43:48','菜单管理','/testsysmenu',1),(4226,'192.168.2.2','2024-08-30 09:43:49','状态管理','/testsysstatus',1),(4227,'192.168.2.2','2024-08-30 10:02:54','审核管理','/shenqingmanage',43),(4228,'192.168.2.2','2024-08-30 10:02:55','我的任务','/mytask',43),(4229,'192.168.2.2','2024-08-30 10:11:23','审核管理','/shenqingmanage',43),(4230,'192.168.2.2','2024-08-30 10:11:24','我的任务','/mytask',43),(4231,'192.168.2.2','2024-08-30 10:19:37','审核管理','/shenqingmanage',43),(4232,'192.168.2.2','2024-08-30 10:19:37','我的任务','/mytask',43),(4233,'192.168.2.2','2024-08-30 10:19:38','我的任务','/mytask',43),(4234,'192.168.2.2','2024-08-30 10:28:07','审核管理','/shenqingmanage',43),(4235,'192.168.2.2','2024-08-30 10:28:07','我的任务','/mytask',43),(4236,'192.168.2.2','2024-08-30 10:30:26','我的任务','/mytask',43),(4237,'192.168.2.2','2024-08-30 10:53:54','审核管理','/shenqingmanage',43),(4238,'192.168.2.2','2024-08-30 10:54:19','我的任务','/mytask',43),(4239,'192.168.2.2','2024-08-30 11:22:10','审核管理','/shenqingmanage',43),(4240,'192.168.2.2','2024-08-30 11:22:10','我的任务','/mytask',43),(4241,'192.168.2.2','2024-08-30 11:22:17','我的任务','/mytask',43),(4242,'192.168.2.2','2024-08-30 11:50:53','审核管理','/shenqingmanage',43),(4243,'192.168.2.2','2024-08-30 11:50:54','我的任务','/mytask',43),(4244,'192.168.2.2','2024-08-30 12:13:38','审核管理','/shenqingmanage',43),(4245,'192.168.2.2','2024-08-30 12:13:38','我的任务','/mytask',43),(4246,'192.168.2.2','2024-08-30 12:32:28','我的任务','/mytask',43),(4247,'192.168.2.2','2024-08-30 12:43:21','我的任务','/mytask',42),(4248,'192.168.2.2','2024-08-30 12:43:22','三单一览','/threebookmanage',42),(4249,'192.168.2.2','2024-08-30 12:43:23','细化一览','/detaildrawmanage',42),(4250,'192.168.2.2','2024-08-30 12:45:02','三单一览','/threebookmanage',42),(4251,'192.168.2.2','2024-08-30 12:45:11','细化一览','/detaildrawmanage',42),(4252,'192.168.2.2','2024-08-30 12:45:11','三单一览','/threebookmanage',42),(4253,'192.168.2.2','2024-08-30 12:45:13','三单一览','/threebookmanage',42),(4254,'192.168.2.2','2024-08-30 12:46:05','细化一览','/detaildrawmanage',42),(4255,'192.168.2.2','2024-08-30 12:46:06','三单一览','/threebookmanage',42),(4256,'192.168.2.2','2024-08-30 12:46:09','任务管理','/taskmanage',42),(4257,'192.168.2.2','2024-08-30 12:46:23','我的任务','/mytask',42),(4258,'192.168.2.2','2024-08-30 12:46:24','三单一览','/threebookmanage',42),(4259,'192.168.2.2','2024-08-30 12:46:31','细化一览','/detaildrawmanage',42),(4260,'192.168.2.2','2024-08-30 12:56:59','三单一览','/threebookmanage',42),(4261,'192.168.2.2','2024-08-30 12:57:00','任务管理','/taskmanage',42),(4262,'192.168.2.2','2024-08-30 12:58:42','三单一览','/threebookmanage',42),(4263,'192.168.2.2','2024-08-30 12:58:44','细化一览','/detaildrawmanage',42),(4264,'192.168.2.2','2024-08-30 12:58:45','三单一览','/threebookmanage',42),(4265,'192.168.2.2','2024-08-30 13:03:25','细化一览','/detaildrawmanage',43),(4266,'192.168.2.2','2024-08-30 13:03:26','三单一览','/threebookmanage',43),(4267,'192.168.2.2','2024-08-30 13:03:34','任务管理','/taskmanage',42),(4268,'192.168.2.2','2024-08-30 13:03:36','我的任务','/mytask',42),(4269,'192.168.2.2','2024-08-30 13:03:36','任务管理','/taskmanage',42),(4270,'192.168.2.2','2024-08-30 13:04:07','三单一览','/threebookmanage',42),(4271,'192.168.2.2','2024-08-30 13:39:34','任务管理','/taskmanage',42),(4272,'192.168.2.2','2024-08-30 13:39:45','我的任务','/mytask',43),(4273,'192.168.2.2','2024-08-30 13:40:03','三单一览','/threebookmanage',42),(4274,'192.168.2.2','2024-08-30 14:20:38','任务管理','/taskmanage',42),(4275,'192.168.2.2','2024-08-30 14:20:42','三单一览','/threebookmanage',42),(4276,'192.168.2.2','2024-08-30 14:36:07','任务管理','/taskmanage',42),(4277,'192.168.2.2','2024-08-30 14:37:45','我的任务','/mytask',42),(4278,'192.168.2.2','2024-08-30 14:37:47','三单一览','/threebookmanage',42),(4279,'192.168.2.2','2024-08-30 14:37:51','细化一览','/detaildrawmanage',42),(4280,'192.168.2.2','2024-08-30 14:37:52','三单一览','/threebookmanage',42),(4281,'192.168.2.2','2024-08-30 14:37:57','任务管理','/taskmanage',42),(4282,'192.168.2.2','2024-08-30 14:38:15','我的任务','/mytask',42),(4283,'192.168.2.2','2024-08-30 14:38:16','任务管理','/taskmanage',42),(4284,'192.168.2.2','2024-08-30 16:00:29','三单一览','/threebookmanage',42),(4285,'192.168.2.2','2024-08-30 16:00:30','细化一览','/detaildrawmanage',42),(4286,'192.168.2.2','2024-08-30 16:00:31','三单一览','/threebookmanage',42),(4287,'192.168.2.2','2024-08-30 16:03:13','任务管理','/taskmanage',42),(4288,'192.168.2.2','2024-08-30 16:03:16','三单一览','/threebookmanage',42),(4289,'192.168.2.2','2024-08-30 16:04:16','任务管理','/taskmanage',42),(4290,'192.168.2.2','2024-08-30 16:04:41','三单一览','/threebookmanage',42),(4291,'192.168.2.2','2024-08-30 16:06:03','细化一览','/detaildrawmanage',42),(4292,'192.168.2.2','2024-08-30 16:06:04','三单一览','/threebookmanage',42),(4293,'192.168.2.2','2024-08-30 16:06:26','任务管理','/taskmanage',42),(4294,'192.168.2.2','2024-08-30 16:15:08','审核管理','/shenqingmanage',43),(4295,'192.168.2.2','2024-08-30 16:15:08','我的任务','/mytask',43),(4296,'192.168.2.2','2024-08-30 16:15:13','我的任务','/mytask',43),(4297,'192.168.2.2','2024-08-30 16:21:17','审核管理','/shenqingmanage',43),(4298,'192.168.2.2','2024-08-30 16:21:18','我的任务','/mytask',43),(4299,'192.168.2.2','2024-08-30 16:25:58','我的任务','/mytask',42),(4300,'192.168.2.2','2024-08-30 16:25:59','任务管理','/taskmanage',42),(4301,'192.168.2.2','2024-08-30 16:30:56','三单一览','/threebookmanage',44),(4302,'192.168.2.2','2024-08-30 16:31:00','三单一览','/threebookmanage',42),(4303,'192.168.2.2','2024-08-30 16:31:07','细化一览','/detaildrawmanage',42),(4304,'192.168.2.2','2024-08-30 16:31:07','三单一览','/threebookmanage',42),(4305,'192.168.2.2','2024-08-30 16:31:12','任务管理','/taskmanage',42),(4306,'192.168.2.2','2024-08-30 16:31:57','我的任务','/mytask',44),(4307,'192.168.2.2','2024-08-30 16:57:25','我的任务','/mytask',42),(4308,'192.168.2.2','2024-08-30 16:57:25','任务管理','/taskmanage',42),(4309,'192.168.2.2','2024-08-30 16:57:25','任务管理','/taskmanage',42),(4310,'192.168.2.2','2024-08-30 16:57:41','任务管理','/taskmanage',42),(4311,'192.168.2.2','2024-08-30 17:04:07','三单一览','/threebookmanage',43),(4312,'192.168.2.2','2024-08-30 17:04:49','细化一览','/detaildrawmanage',43),(4313,'192.168.2.2','2024-08-30 17:04:50','我的任务','/mytask',43),(4314,'192.168.2.2','2024-08-30 17:04:51','审核管理','/shenqingmanage',43),(4315,'192.168.2.2','2024-08-30 17:04:52','三单一览','/threebookmanage',43),(4316,'192.168.2.2','2024-08-30 17:07:51','三单一览','/threebookmanage',42),(4317,'192.168.2.2','2024-08-30 17:07:51','三单一览','/threebookmanage',42),(4318,'192.168.2.2','2024-08-30 17:08:23','三单一览','/threebookmanage',44),(4319,'192.168.2.2','2024-08-30 17:08:25','我的任务','/mytask',44),(4320,'192.168.2.2','2024-08-30 17:08:31','我的任务','/mytask',43),(4321,'192.168.2.2','2024-08-30 17:08:36','审核管理','/shenqingmanage',43),(4322,'192.168.2.2','2024-08-30 17:08:36','我的任务','/mytask',43),(4323,'192.168.2.2','2024-08-30 17:08:55','任务管理','/taskmanage',42),(4324,'192.168.2.2','2024-08-30 17:09:16','我的任务','/mytask',43),(4325,'192.168.2.2','2024-08-30 17:13:32','三单一览','/threebookmanage',43),(4326,'192.168.2.2','2024-08-30 17:13:47','审核管理','/shenqingmanage',43),(4327,'192.168.2.2','2024-08-30 17:13:47','我的任务','/mytask',43),(4328,'192.168.2.2','2024-08-30 17:13:47','我的任务','/mytask',43),(4329,'192.168.2.2','2024-08-30 17:13:49','我的任务','/mytask',43),(4330,'192.168.2.2','2024-08-30 17:15:47','三单一览','/threebookmanage',42),(4331,'192.168.2.2','2024-08-30 17:16:11','任务管理','/taskmanage',42),(4332,'192.168.2.2','2024-08-30 17:16:14','我的任务','/mytask',42),(4333,'192.168.2.2','2024-08-30 17:16:15','三单一览','/threebookmanage',42),(4334,'192.168.2.2','2024-08-30 17:16:19','任务管理','/taskmanage',42),(4335,'192.168.2.2','2024-09-01 09:57:12','我的任务','/mytask',42),(4336,'192.168.2.2','2024-09-01 09:57:13','三单一览','/threebookmanage',42),(4337,'192.168.2.2','2024-09-01 09:57:14','细化一览','/detaildrawmanage',42),(4338,'192.168.2.2','2024-09-01 09:57:17','任务管理','/taskmanage',42),(4339,'192.168.2.2','2024-09-01 09:57:59','细化一览','/detaildrawmanage',42),(4340,'192.168.2.2','2024-09-01 10:41:00','任务管理','/taskmanage',42),(4341,'192.168.2.2','2024-09-01 10:41:01','我的任务','/mytask',42),(4342,'192.168.2.2','2024-09-01 10:41:02','任务管理','/taskmanage',42),(4343,'192.168.2.2','2024-09-01 10:41:39','三单一览','/threebookmanage',42),(4344,'192.168.2.2','2024-09-01 10:41:40','细化一览','/detaildrawmanage',42),(4345,'192.168.2.2','2024-09-01 10:41:42','三单一览','/threebookmanage',42),(4346,'192.168.2.2','2024-09-01 10:41:43','任务管理','/taskmanage',42),(4347,'192.168.2.2','2024-09-01 10:42:12','三单一览','/threebookmanage',42),(4348,'192.168.2.2','2024-09-01 10:42:13','细化一览','/detaildrawmanage',42),(4349,'192.168.2.2','2024-09-01 10:42:21','任务管理','/taskmanage',42),(4350,'192.168.2.2','2024-09-01 10:44:50','我的任务','/mytask',42),(4351,'192.168.2.2','2024-09-01 10:44:51','任务管理','/taskmanage',42),(4352,'192.168.2.2','2024-09-01 10:45:41','我的任务','/mytask',42),(4353,'192.168.2.2','2024-09-01 10:45:42','任务管理','/taskmanage',42),(4354,'192.168.2.2','2024-09-01 10:50:09','通讯录','/addrmanage',42),(4355,'192.168.2.2','2024-09-01 10:50:13','任务管理','/taskmanage',42),(4356,'192.168.2.2','2024-09-01 10:50:19','通讯录','/addrmanage',42),(4357,'192.168.2.2','2024-09-01 10:51:58','任务管理','/taskmanage',42),(4358,'192.168.2.2','2024-09-01 11:01:44','三单一览','/threebookmanage',42),(4359,'192.168.2.2','2024-09-01 11:01:49','细化一览','/detaildrawmanage',42),(4360,'192.168.2.2','2024-09-01 11:01:54','任务管理','/taskmanage',42),(4361,'192.168.2.2','2024-09-01 11:01:56','我的任务','/mytask',42),(4362,'192.168.2.2','2024-09-01 11:01:56','任务管理','/taskmanage',42),(4363,'192.168.2.2','2024-09-01 11:01:56','任务管理','/taskmanage',42),(4364,'192.168.2.2','2024-09-01 11:01:58','三单一览','/threebookmanage',42),(4365,'192.168.2.2','2024-09-01 11:02:02','任务管理','/taskmanage',42),(4366,'192.168.2.2','2024-09-01 11:02:48','细化一览','/detaildrawmanage',42),(4367,'192.168.2.2','2024-09-01 11:02:50','任务管理','/taskmanage',42),(4368,'192.168.2.2','2024-09-01 11:03:53','我的任务','/mytask',42),(4369,'192.168.2.2','2024-09-01 11:03:54','任务管理','/taskmanage',42),(4370,'192.168.2.2','2024-09-01 11:25:25','细化一览','/detaildrawmanage',42),(4371,'192.168.2.2','2024-09-01 11:26:43','任务管理','/taskmanage',42),(4372,'192.168.2.2','2024-09-01 11:26:46','我的任务','/mytask',42),(4373,'192.168.2.2','2024-09-01 11:26:47','任务管理','/taskmanage',42),(4374,'192.168.2.2','2024-09-01 11:26:50','三单一览','/threebookmanage',42),(4375,'192.168.2.2','2024-09-01 11:26:52','细化一览','/detaildrawmanage',42),(4376,'192.168.2.2','2024-09-01 11:27:05','用户管理','/usermanage',1),(4377,'192.168.2.2','2024-09-01 11:27:34','细化一览','/detaildrawmanage',1),(4378,'192.168.2.2','2024-09-01 11:29:28','三单一览','/threebookmanage',1),(4379,'192.168.2.2','2024-09-01 11:29:36','部门管理','/deptmanage',1),(4380,'192.168.2.2','2024-09-01 11:29:39','类型管理','/testsystype',1),(4381,'192.168.2.2','2024-09-01 11:29:42','任务管理','/taskmanage',1),(4382,'192.168.2.2','2024-09-01 11:29:45','我的任务','/mytask',1),(4383,'192.168.2.2','2024-09-01 11:29:46','任务管理','/taskmanage',1),(4384,'192.168.2.2','2024-09-01 11:30:01','任务管理','/taskmanage',42),(4385,'192.168.2.2','2024-09-01 11:30:12','我的任务','/mytask',42),(4386,'192.168.2.2','2024-09-01 11:30:14','三单一览','/threebookmanage',42),(4387,'192.168.2.2','2024-09-01 11:30:19','细化一览','/detaildrawmanage',42),(4388,'192.168.2.2','2024-09-01 11:30:24','三单一览','/threebookmanage',42),(4389,'192.168.2.2','2024-09-01 11:30:25','细化一览','/detaildrawmanage',42),(4390,'192.168.2.2','2024-09-01 11:30:25','三单一览','/threebookmanage',42),(4391,'192.168.2.2','2024-09-01 11:31:18','三单一览','/threebookmanage',42),(4392,'192.168.2.2','2024-09-01 11:31:19','细化一览','/detaildrawmanage',42),(4393,'192.168.2.2','2024-09-01 11:31:19','三单一览','/threebookmanage',42),(4394,'192.168.2.2','2024-09-01 11:32:08','三单一览','/threebookmanage',42),(4395,'192.168.2.2','2024-09-01 11:39:00','任务管理','/taskmanage',42),(4396,'192.168.2.2','2024-09-01 11:39:01','我的任务','/mytask',42),(4397,'192.168.2.2','2024-09-01 11:39:02','任务管理','/taskmanage',42),(4398,'192.168.2.2','2024-09-01 11:39:07','我的任务','/mytask',42),(4399,'192.168.2.2','2024-09-01 11:39:08','三单一览','/threebookmanage',42),(4400,'192.168.2.2','2024-09-01 11:39:09','细化一览','/detaildrawmanage',42),(4401,'192.168.2.2','2024-09-01 11:40:35','三单一览','/threebookmanage',42),(4402,'192.168.2.2','2024-09-01 11:40:35','细化一览','/detaildrawmanage',42),(4403,'192.168.2.2','2024-09-01 11:40:36','细化一览','/detaildrawmanage',42),(4404,'192.168.2.2','2024-09-01 11:40:38','三单一览','/threebookmanage',42),(4405,'192.168.2.2','2024-09-01 11:41:21','任务管理','/taskmanage',42),(4406,'192.168.2.2','2024-09-01 11:42:57','我的任务','/mytask',42),(4407,'192.168.2.2','2024-09-01 11:42:58','任务管理','/taskmanage',42),(4408,'192.168.2.2','2024-09-01 11:44:59','我的任务','/mytask',42),(4409,'192.168.2.2','2024-09-01 11:44:59','任务管理','/taskmanage',42),(4410,'192.168.2.2','2024-09-01 11:44:59','任务管理','/taskmanage',42),(4411,'192.168.2.2','2024-09-01 11:46:53','任务管理','/taskmanage',42),(4412,'192.168.2.2','2024-09-01 11:48:59','细化一览','/detaildrawmanage',42),(4413,'192.168.2.2','2024-09-01 11:48:59','三单一览','/threebookmanage',42),(4414,'192.168.2.2','2024-09-01 11:48:59','三单一览','/threebookmanage',42),(4415,'192.168.2.2','2024-09-01 11:49:00','三单一览','/threebookmanage',42),(4416,'192.168.2.2','2024-09-01 11:49:01','细化一览','/detaildrawmanage',42),(4417,'192.168.2.2','2024-09-01 11:49:01','三单一览','/threebookmanage',42),(4418,'192.168.2.2','2024-09-01 11:49:01','三单一览','/threebookmanage',42),(4419,'192.168.2.2','2024-09-01 11:49:02','三单一览','/threebookmanage',42),(4420,'192.168.2.2','2024-09-01 11:49:03','细化一览','/detaildrawmanage',42),(4421,'192.168.2.2','2024-09-01 11:49:03','三单一览','/threebookmanage',42),(4422,'192.168.2.2','2024-09-01 11:49:03','三单一览','/threebookmanage',42),(4423,'192.168.2.2','2024-09-01 11:49:04','三单一览','/threebookmanage',42),(4424,'192.168.2.2','2024-09-01 11:50:23','任务管理','/taskmanage',42),(4425,'192.168.2.2','2024-09-01 12:07:36','三单一览','/threebookmanage',42),(4426,'192.168.2.2','2024-09-01 12:07:38','任务管理','/taskmanage',42),(4427,'192.168.2.2','2024-09-01 12:09:18','审核管理','/shenqingmanage',43),(4428,'192.168.2.2','2024-09-01 12:09:19','我的任务','/mytask',43),(4429,'192.168.2.2','2024-09-01 12:13:07','审核管理','/shenqingmanage',43),(4430,'192.168.2.2','2024-09-01 12:13:08','我的任务','/mytask',43),(4431,'192.168.2.2','2024-09-01 12:13:08','审核管理','/shenqingmanage',43),(4432,'192.168.2.2','2024-09-01 12:17:47','我的任务','/mytask',42),(4433,'192.168.2.2','2024-09-01 12:17:49','三单一览','/threebookmanage',42),(4434,'192.168.2.2','2024-09-01 12:17:54','任务管理','/taskmanage',42),(4435,'192.168.2.2','2024-09-01 12:17:55','我的任务','/mytask',42),(4436,'192.168.2.2','2024-09-01 12:17:56','任务管理','/taskmanage',42),(4437,'192.168.2.2','2024-09-01 12:19:09','三单一览','/threebookmanage',42),(4438,'192.168.2.2','2024-09-01 12:20:53','任务管理','/taskmanage',42),(4439,'192.168.2.2','2024-09-01 12:21:58','我的任务','/mytask',42),(4440,'192.168.2.2','2024-09-01 12:22:00','细化一览','/detaildrawmanage',42),(4441,'192.168.2.2','2024-09-01 12:22:02','任务管理','/taskmanage',42),(4442,'192.168.2.2','2024-09-01 12:22:31','细化一览','/detaildrawmanage',42),(4443,'192.168.2.2','2024-09-01 12:22:46','三单一览','/threebookmanage',42),(4444,'192.168.2.2','2024-09-01 12:22:49','任务管理','/taskmanage',42),(4445,'192.168.2.2','2024-09-01 12:23:02','三单一览','/threebookmanage',42),(4446,'192.168.2.2','2024-09-01 12:29:27','三单一览','/threebookmanage',43),(4447,'192.168.2.2','2024-09-01 12:30:46','我的任务','/mytask',43),(4448,'192.168.2.2','2024-09-01 12:30:46','审核管理','/shenqingmanage',43),(4449,'192.168.2.2','2024-09-01 12:30:47','审核管理','/shenqingmanage',43),(4450,'192.168.2.2','2024-09-01 12:30:48','我的任务','/mytask',43),(4451,'192.168.2.2','2024-09-01 12:30:48','审核管理','/shenqingmanage',43),(4452,'192.168.2.2','2024-09-01 12:30:48','审核管理','/shenqingmanage',43),(4453,'192.168.2.2','2024-09-01 12:32:45','三单一览','/threebookmanage',43),(4454,'192.168.2.2','2024-09-02 13:25:36','任务管理','/taskmanage',42),(4455,'192.168.2.2','2024-09-02 13:27:41','我的任务','/mytask',42),(4456,'192.168.2.2','2024-09-02 13:27:42','任务管理','/taskmanage',42),(4457,'192.168.2.2','2024-09-02 13:27:48','我的任务','/mytask',42),(4458,'192.168.2.2','2024-09-02 13:27:49','任务管理','/taskmanage',42),(4459,'192.168.2.2','2024-09-02 16:01:32','三单一览','/threebookmanage',42),(4460,'192.168.2.2','2024-09-02 16:02:08','任务管理','/taskmanage',42),(4461,'192.168.2.2','2024-09-02 16:02:36','我的任务','/mytask',42),(4462,'192.168.2.2','2024-09-02 16:02:37','任务管理','/taskmanage',42),(4463,'192.168.2.2','2024-09-02 16:02:39','我的任务','/mytask',42),(4464,'192.168.2.2','2024-09-02 16:02:39','任务管理','/taskmanage',42),(4465,'192.168.2.2','2024-09-02 16:03:21','任务管理','/taskmanage',42),(4466,'192.168.2.2','2024-09-02 16:03:27','我的任务','/mytask',42),(4467,'192.168.2.2','2024-09-02 16:03:28','任务管理','/taskmanage',42),(4468,'192.168.2.2','2024-09-02 16:40:37','我的任务','/mytask',42),(4469,'192.168.2.2','2024-09-02 16:40:37','我的任务','/mytask',42),(4470,'192.168.2.2','2024-09-02 16:40:39','任务管理','/taskmanage',42),(4471,'192.168.2.2','2024-09-02 16:55:17','通讯录','/addrmanage',42),(4472,'192.168.2.2','2024-09-02 17:03:25','任务管理','/taskmanage',42),(4473,'192.168.2.2','2024-09-02 17:03:28','通讯录','/addrmanage',42),(4474,'192.168.2.2','2024-09-02 17:13:11','任务管理','/taskmanage',42),(4475,'192.168.2.2','2024-09-02 17:22:30','我的任务','/mytask',43),(4476,'192.168.2.2','2024-09-02 18:00:19','审核管理','/shenqingmanage',43),(4477,'192.168.2.2','2024-09-02 18:00:19','我的任务','/mytask',43),(4478,'192.168.2.2','2024-09-02 18:00:21','我的任务','/mytask',43),(4479,'192.168.2.2','2024-09-02 18:01:01','审核管理','/shenqingmanage',43),(4480,'192.168.2.2','2024-09-02 18:01:01','我的任务','/mytask',43),(4481,'192.168.2.2','2024-09-02 18:01:07','我的任务','/mytask',43),(4482,'192.168.2.2','2024-09-03 11:30:59','细化一览','/detaildrawmanage',42),(4483,'192.168.2.2','2024-09-03 12:10:16','任务管理','/taskmanage',42),(4484,'192.168.2.2','2024-09-04 08:39:55','类型管理','/testsystype',1),(4485,'192.168.2.2','2024-09-04 08:39:58','任务管理','/taskmanage',1),(4486,'192.168.2.2','2024-09-04 08:40:00','我的任务','/mytask',1),(4487,'192.168.2.2','2024-09-04 08:40:01','任务管理','/taskmanage',1),(4488,'192.168.2.2','2024-09-04 08:40:02','审核管理','/shenqingmanage',1),(4489,'192.168.2.2','2024-09-04 08:40:04','我的任务','/mytask',1),(4490,'192.168.2.2','2024-09-04 08:40:05','任务管理','/taskmanage',1),(4491,'192.168.2.2','2024-09-04 08:40:08','部门管理','/deptmanage',1),(4492,'192.168.2.2','2024-09-04 08:40:10','在线用户','/morelogrecord',1),(4493,'192.168.2.2','2024-09-04 08:40:11','用户管理','/usermanage',1),(4494,'192.168.2.2','2024-09-04 08:46:02','职位管理','/positionmanage',1),(4495,'192.168.2.2','2024-09-04 08:46:02','用户管理','/usermanage',1),(4496,'192.168.2.2','2024-09-04 08:46:06','用户管理','/usermanage',1),(4497,'192.168.2.2','2024-09-04 09:54:37','我的任务','/mytask',42),(4498,'192.168.2.2','2024-09-04 09:54:37','任务管理','/taskmanage',42),(4499,'192.168.2.2','2024-09-04 09:56:44','任务管理','/taskmanage',42),(4500,'192.168.2.2','2024-09-04 11:08:22','三单一览','/threebookmanage',42),(4501,'192.168.2.2','2024-09-04 11:08:23','细化一览','/detaildrawmanage',42),(4502,'192.168.2.2','2024-09-04 11:08:42','任务管理','/taskmanage',42),(4503,'192.168.2.2','2024-09-04 11:59:51','我的任务','/mytask',42),(4504,'192.168.2.2','2024-09-04 11:59:51','任务管理','/taskmanage',42),(4505,'192.168.2.2','2024-09-04 11:59:51','任务管理','/taskmanage',42),(4506,'192.168.2.2','2024-09-04 11:59:56','任务管理','/taskmanage',42),(4507,'192.168.2.2','2024-09-04 12:00:43','三单一览','/threebookmanage',42),(4508,'192.168.2.2','2024-09-04 12:00:48','任务管理','/taskmanage',42),(4509,'192.168.2.2','2024-09-04 12:01:01','三单一览','/threebookmanage',42),(4510,'192.168.2.2','2024-09-04 12:01:02','细化一览','/detaildrawmanage',42),(4511,'192.168.2.2','2024-09-04 12:01:03','三单一览','/threebookmanage',42),(4512,'192.168.2.2','2024-09-04 12:01:16','细化一览','/detaildrawmanage',42),(4513,'192.168.2.2','2024-09-04 12:01:20','三单一览','/threebookmanage',42),(4514,'192.168.2.2','2024-09-04 12:01:20','三单一览','/threebookmanage',42),(4515,'192.168.2.2','2024-09-04 12:01:20','细化一览','/detaildrawmanage',42),(4516,'192.168.2.2','2024-09-04 12:01:20','细化一览','/detaildrawmanage',42),(4517,'192.168.2.2','2024-09-04 12:01:21','细化一览','/detaildrawmanage',42),(4518,'192.168.2.2','2024-09-04 12:02:34','三单一览','/threebookmanage',42),(4519,'192.168.2.2','2024-09-04 12:02:35','细化一览','/detaildrawmanage',42),(4520,'192.168.2.2','2024-09-04 12:02:35','细化一览','/detaildrawmanage',42),(4521,'192.168.2.2','2024-09-04 12:02:37','三单一览','/threebookmanage',42),(4522,'192.168.2.2','2024-09-04 12:02:41','细化一览','/detaildrawmanage',42),(4523,'192.168.2.2','2024-09-04 12:02:58','任务管理','/taskmanage',42),(4524,'192.168.2.2','2024-09-04 12:03:00','我的任务','/mytask',42),(4525,'192.168.2.2','2024-09-04 12:03:01','三单一览','/threebookmanage',42),(4526,'192.168.2.2','2024-09-04 12:03:02','细化一览','/detaildrawmanage',42),(4527,'192.168.2.2','2024-09-04 12:03:02','三单一览','/threebookmanage',42),(4528,'192.168.2.2','2024-09-04 12:03:02','三单一览','/threebookmanage',42),(4529,'192.168.2.2','2024-09-04 12:03:03','三单一览','/threebookmanage',42),(4530,'192.168.2.2','2024-09-04 12:03:04','细化一览','/detaildrawmanage',42),(4531,'192.168.2.2','2024-09-04 12:03:04','三单一览','/threebookmanage',42),(4532,'192.168.2.2','2024-09-04 12:03:04','三单一览','/threebookmanage',42),(4533,'192.168.2.2','2024-09-04 12:03:05','三单一览','/threebookmanage',42),(4534,'192.168.2.2','2024-09-04 12:03:05','细化一览','/detaildrawmanage',42),(4535,'192.168.2.2','2024-09-04 12:03:05','细化一览','/detaildrawmanage',42),(4536,'192.168.2.2','2024-09-04 12:03:06','细化一览','/detaildrawmanage',42),(4537,'192.168.2.2','2024-09-04 12:03:06','三单一览','/threebookmanage',42),(4538,'192.168.2.2','2024-09-04 12:03:06','三单一览','/threebookmanage',42),(4539,'192.168.2.2','2024-09-04 12:03:14','任务管理','/taskmanage',42),(4540,'192.168.2.2','2024-09-04 12:03:15','我的任务','/mytask',42),(4541,'192.168.2.2','2024-09-04 12:03:16','任务管理','/taskmanage',42),(4542,'192.168.2.2','2024-09-04 12:03:40','细化一览','/detaildrawmanage',42),(4543,'192.168.2.2','2024-09-04 12:03:41','三单一览','/threebookmanage',42),(4544,'192.168.2.2','2024-09-04 12:03:42','细化一览','/detaildrawmanage',42),(4545,'192.168.2.2','2024-09-04 12:03:47','三单一览','/threebookmanage',42),(4546,'192.168.2.2','2024-09-04 12:03:50','任务管理','/taskmanage',42),(4547,'192.168.2.2','2024-09-04 12:09:46','三单一览','/threebookmanage',42),(4548,'192.168.2.2','2024-09-04 12:09:46','三单一览','/threebookmanage',42),(4549,'192.168.2.2','2024-09-04 12:09:46','三单一览','/threebookmanage',42),(4550,'192.168.2.2','2024-09-04 12:09:46','三单一览','/threebookmanage',42),(4551,'192.168.2.2','2024-09-04 12:09:46','三单一览','/threebookmanage',42),(4552,'192.168.2.2','2024-09-04 12:09:50','任务管理','/taskmanage',42),(4553,'192.168.2.2','2024-09-04 12:10:16','三单一览','/threebookmanage',42),(4554,'192.168.2.2','2024-09-04 12:17:55','任务管理','/taskmanage',42),(4555,'192.168.2.2','2024-09-04 12:17:57','我的任务','/mytask',42),(4556,'192.168.2.2','2024-09-04 12:17:57','任务管理','/taskmanage',42),(4557,'192.168.2.2','2024-09-04 12:17:57','任务管理','/taskmanage',42),(4558,'192.168.2.2','2024-09-04 12:20:25','三单一览','/threebookmanage',42),(4559,'192.168.2.2','2024-09-04 12:23:31','任务管理','/taskmanage',42),(4560,'192.168.2.2','2024-09-04 12:24:03','三单一览','/threebookmanage',42),(4561,'192.168.2.2','2024-09-04 12:25:53','任务管理','/taskmanage',42),(4562,'192.168.2.2','2024-09-04 12:28:39','三单一览','/threebookmanage',43),(4563,'192.168.2.2','2024-09-04 12:29:11','细化一览','/detaildrawmanage',43),(4564,'192.168.2.2','2024-09-04 12:30:07','三单一览','/threebookmanage',43),(4565,'192.168.2.2','2024-09-04 12:30:46','细化一览','/detaildrawmanage',43),(4566,'192.168.2.2','2024-09-04 12:30:47','三单一览','/threebookmanage',43),(4567,'192.168.2.2','2024-09-04 12:36:57','细化一览','/detaildrawmanage',43),(4568,'192.168.2.2','2024-09-04 12:36:57','三单一览','/threebookmanage',43),(4569,'192.168.2.2','2024-09-04 12:47:53','三单一览','/threebookmanage',43),(4570,'192.168.2.2','2024-09-04 12:47:56','细化一览','/detaildrawmanage',43),(4571,'192.168.2.2','2024-09-04 12:49:54','三单一览','/threebookmanage',43),(4572,'192.168.2.2','2024-09-04 12:49:58','细化一览','/detaildrawmanage',43),(4573,'192.168.2.2','2024-09-04 12:52:21','三单一览','/threebookmanage',43),(4574,'192.168.2.2','2024-09-04 12:52:25','细化一览','/detaildrawmanage',43),(4575,'192.168.2.2','2024-09-04 12:52:31','我的任务','/mytask',43),(4576,'192.168.2.2','2024-09-04 12:58:54','细化一览','/detaildrawmanage',43),(4577,'192.168.2.2','2024-09-04 12:58:56','三单一览','/threebookmanage',43),(4578,'192.168.2.2','2024-09-04 12:58:57','细化一览','/detaildrawmanage',43),(4579,'192.168.2.2','2024-09-04 12:58:58','我的任务','/mytask',43),(4580,'192.168.2.2','2024-09-04 12:59:02','细化一览','/detaildrawmanage',43),(4581,'192.168.2.2','2024-09-04 12:59:12','三单一览','/threebookmanage',43),(4582,'192.168.2.2','2024-09-04 12:59:13','细化一览','/detaildrawmanage',43),(4583,'192.168.2.2','2024-09-04 13:15:56','三单一览','/threebookmanage',43),(4584,'192.168.2.2','2024-09-04 13:15:56','细化一览','/detaildrawmanage',43),(4585,'192.168.2.2','2024-09-04 13:16:11','我的任务','/mytask',43),(4586,'192.168.2.2','2024-09-04 13:16:35','我的任务','/mytask',42),(4587,'192.168.2.2','2024-09-04 13:16:37','细化一览','/detaildrawmanage',42),(4588,'192.168.2.2','2024-09-04 13:17:12','三单一览','/threebookmanage',42),(4589,'192.168.2.2','2024-09-04 13:18:41','细化一览','/detaildrawmanage',43),(4590,'192.168.2.2','2024-09-04 13:24:31','三单一览','/threebookmanage',43),(4591,'192.168.2.2','2024-09-04 13:24:33','我的任务','/mytask',43),(4592,'192.168.2.2','2024-09-04 13:24:52','任务管理','/taskmanage',42),(4593,'192.168.2.2','2024-09-04 13:26:32','三单一览','/threebookmanage',43),(4594,'192.168.2.2','2024-09-04 13:30:52','细化一览','/detaildrawmanage',43),(4595,'192.168.2.2','2024-09-04 13:30:53','三单一览','/threebookmanage',43),(4596,'192.168.2.2','2024-09-04 13:31:29','我的任务','/mytask',43),(4597,'192.168.2.2','2024-09-04 14:04:39','我的任务','/mytask',42),(4598,'192.168.2.2','2024-09-04 14:04:41','三单一览','/threebookmanage',42),(4599,'192.168.2.2','2024-09-04 14:04:43','任务管理','/taskmanage',42),(4600,'192.168.2.2','2024-09-04 14:11:31','细化一览','/detaildrawmanage',42);
/*!40000 ALTER TABLE `aoa_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_user_login_record`
--

DROP TABLE IF EXISTS `aoa_user_login_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_user_login_record` (
  `record_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`record_id`),
  KEY `FKks6qpqj3ss4e4timjt0xok1p0` (`user_id`),
  CONSTRAINT `FKks6qpqj3ss4e4timjt0xok1p0` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=673 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_login_record`
--

LOCK TABLES `aoa_user_login_record` WRITE;
/*!40000 ALTER TABLE `aoa_user_login_record` DISABLE KEYS */;
INSERT INTO `aoa_user_login_record` VALUES (152,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 10:26:02',NULL,1),(153,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 11:25:24',NULL,43),(154,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 14:02:17',NULL,43),(155,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 14:21:56',NULL,1),(156,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 15:28:03',NULL,1),(157,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 15:57:25',NULL,1),(158,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:37:16',NULL,1),(159,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:39:50',NULL,44),(160,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:45:38',NULL,45),(161,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:10:07',NULL,45),(162,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:12:22',NULL,43),(163,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:15:43',NULL,44),(164,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:16:01',NULL,1),(165,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:58:19',NULL,44),(166,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:10:02',NULL,1),(167,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:42:04',NULL,43),(168,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:42:39',NULL,1),(169,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:44:19',NULL,42),(170,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 13:17:10',NULL,1),(171,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 13:20:11',NULL,43),(172,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:07:21',NULL,1),(173,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:08:04',NULL,43),(174,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:11:56',NULL,1),(175,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:30:56',NULL,43),(176,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 16:37:47',NULL,43),(177,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 19:49:38',NULL,43),(178,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 06:40:29',NULL,43),(179,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 07:32:50',NULL,1),(180,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 08:24:08',NULL,42),(181,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 08:30:14',NULL,43),(182,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 11:48:48',NULL,42),(183,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 13:13:10',NULL,42),(184,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 13:13:35',NULL,43),(185,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:06:55',NULL,43),(186,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:14:31',NULL,1),(187,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:44:21',NULL,1),(188,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:58:53',NULL,43),(189,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:12',NULL,1),(190,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:40',NULL,44),(191,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:55',NULL,42),(192,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 09:00:11',NULL,1),(193,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:17:08',NULL,43),(194,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:24:49',NULL,1),(195,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:25:34',NULL,42),(196,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:26:49',NULL,43),(197,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:54:33',NULL,42),(198,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:59:20',NULL,43),(199,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 11:36:15',NULL,42),(200,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 12:35:48',NULL,42),(201,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:39:13',NULL,42),(202,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:47:01',NULL,43),(203,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:49:17',NULL,42),(204,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:50:27',NULL,43),(205,'Chrome Mobile/127.0.6533.107','192.168.2.2','2024-08-10 06:53:17',NULL,42),(206,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 08:47:34',NULL,43),(207,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:11:09',NULL,43),(208,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:31:31',NULL,44),(209,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:32:08',NULL,1),(210,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:40:54',NULL,43),(211,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:08:28',NULL,44),(212,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:10:44',NULL,43),(213,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:20:11',NULL,44),(214,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:18:15',NULL,43),(215,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:44:18',NULL,44),(216,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:46:44',NULL,43),(217,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:59:39',NULL,43),(218,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:32:05',NULL,42),(219,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:38:07',NULL,43),(220,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:41:31',NULL,42),(221,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:43:15',NULL,43),(222,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:48:07',NULL,42),(223,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:50:37',NULL,43),(224,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:57:59',NULL,43),(225,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:01:31',NULL,42),(226,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:07:29',NULL,43),(227,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:07:57',NULL,42),(228,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:13:08',NULL,42),(229,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:19:34',NULL,42),(230,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:24:16',NULL,43),(231,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:24:37',NULL,44),(232,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 09:39:35',NULL,43),(233,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 09:49:34',NULL,44),(234,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 10:37:33',NULL,43),(235,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:13:44',NULL,42),(236,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:15:16',NULL,44),(237,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:15:48',NULL,42),(238,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:17:53',NULL,44),(239,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:28:50',NULL,42),(240,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:29:43',NULL,44),(241,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:32:49',NULL,42),(242,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:35:08',NULL,44),(243,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:51:27',NULL,43),(244,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:53:40',NULL,45),(245,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:56:27',NULL,42),(246,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:00:17',NULL,45),(247,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:00:33',NULL,44),(248,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:01:31',NULL,45),(249,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:03:34',NULL,44),(250,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:10:49',NULL,42),(251,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:11:48',NULL,44),(252,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:12:17',NULL,42),(253,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:13:26',NULL,44),(254,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:21:22',NULL,44),(255,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:23:23',NULL,44),(256,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:44:03',NULL,45),(257,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:44:44',NULL,43),(258,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:04:57',NULL,1),(259,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:08:06',NULL,42),(260,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:11:36',NULL,42),(261,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:12:58',NULL,42),(262,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:14:40',NULL,42),(263,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:20:55',NULL,42),(264,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:34:21',NULL,46),(265,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:38:40',NULL,47),(266,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:25:11',NULL,44),(267,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:37:51',NULL,42),(268,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:39:33',NULL,43),(269,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:13:20',NULL,42),(270,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:20:08',NULL,44),(271,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:23:22',NULL,45),(272,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:28:08',NULL,44),(273,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:31:07',NULL,45),(274,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:34:56',NULL,44),(275,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:37:25',NULL,45),(276,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:41:01',NULL,42),(277,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:50:36',NULL,45),(278,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:51:01',NULL,42),(279,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:07:36',NULL,43),(280,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:09:49',NULL,42),(281,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:12:29',NULL,44),(282,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:19:34',NULL,43),(283,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:20:44',NULL,44),(284,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:33:27',NULL,43),(285,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:44:21',NULL,44),(286,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:45:29',NULL,43),(287,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:46:33',NULL,42),(288,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:54:33',NULL,43),(289,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:14:03',NULL,44),(290,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:16:39',NULL,43),(291,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:27:50',NULL,44),(292,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:29:00',NULL,43),(293,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:17:36',NULL,43),(294,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:35:07',NULL,1),(295,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:35:54',NULL,43),(296,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:38:55',NULL,42),(297,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:57:58',NULL,44),(298,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 15:06:45',NULL,42),(299,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 16:11:59',NULL,43),(300,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 08:55:19',NULL,43),(301,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 09:16:26',NULL,42),(302,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 10:19:01',NULL,42),(303,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 12:35:40',NULL,42),(304,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 13:39:13',NULL,42),(305,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 13:41:12',NULL,42),(306,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 16:33:58',NULL,1),(307,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 18:25:19',NULL,1),(308,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 20:29:17',NULL,1),(309,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 14:00:27',NULL,1),(310,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 15:30:15',NULL,1),(311,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 18:00:40',NULL,1),(312,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 20:59:13',NULL,1),(313,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 08:47:35',NULL,1),(314,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 09:18:42',NULL,43),(315,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 09:26:21',NULL,1),(316,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 09:49:05',NULL,44),(317,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:01:58',NULL,1),(318,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:19:39',NULL,1),(319,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:23:26',NULL,43),(320,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:35:10',NULL,42),(321,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:35:25',NULL,43),(322,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:36:36',NULL,1),(323,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:46:05',NULL,43),(324,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 09:00:56',NULL,43),(325,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 10:10:34',NULL,43),(326,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 11:48:23',NULL,1),(327,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 16:44:13',NULL,1),(328,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 17:39:42',NULL,1),(329,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 08:04:39',NULL,1),(330,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 10:34:48',NULL,1),(331,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 11:37:52',NULL,1),(332,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 12:34:40',NULL,1),(333,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 12:47:32',NULL,1),(334,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 14:57:05',NULL,43),(335,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 15:19:31',NULL,1),(336,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 15:32:22',NULL,43),(337,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 15:33:00',NULL,1),(338,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:01:06',NULL,1),(339,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:01:44',NULL,42),(340,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:09:41',NULL,1),(341,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:24:21',NULL,46),(342,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:46:31',NULL,1),(343,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:49:36',NULL,46),(344,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:50:04',NULL,1),(345,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:53:18',NULL,48),(346,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:55:00',NULL,1),(347,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:14:08',NULL,47),(348,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:14:39',NULL,44),(349,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:15:51',NULL,1),(350,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:38:49',NULL,43),(351,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:24:55',NULL,1),(352,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:26:38',NULL,43),(353,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:27:13',NULL,1),(354,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:28:25',NULL,43),(355,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:31:46',NULL,1),(356,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:36:39',NULL,43),(357,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:54:08',NULL,1),(358,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:58:57',NULL,43),(359,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:00:41',NULL,1),(360,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:02:56',NULL,43),(361,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:21:19',NULL,1),(362,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:22:14',NULL,43),(363,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 09:58:37',NULL,1),(364,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 10:52:03',NULL,1),(365,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 11:57:27',NULL,1),(366,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 15:00:52',NULL,1),(367,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 16:45:03',NULL,1),(368,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 18:23:46',NULL,1),(369,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 19:27:58',NULL,1),(370,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 20:37:01',NULL,1),(371,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 20:43:46',NULL,1),(372,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 21:24:28',NULL,1),(373,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 23:52:31',NULL,1),(374,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 09:21:12',NULL,1),(375,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 09:30:08',NULL,44),(376,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:32:28',NULL,1),(377,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:32:45',NULL,44),(378,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:35:13',NULL,44),(379,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:36:02',NULL,1),(380,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:39:14',NULL,1),(381,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:40:00',NULL,1),(382,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:40:59',NULL,44),(383,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:42:23',NULL,1),(384,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:42:54',NULL,44),(385,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:43:44',NULL,1),(386,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:46:32',NULL,1),(387,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:46:45',NULL,44),(388,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:47:40',NULL,1),(389,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:48:08',NULL,44),(390,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:49:12',NULL,46),(391,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:49:44',NULL,43),(392,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:52:46',NULL,43),(393,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:53:37',NULL,1),(394,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:57:58',NULL,1),(395,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:07:37',NULL,43),(396,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:15:19',NULL,1),(397,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:15:41',NULL,43),(398,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:23:13',NULL,43),(399,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:23:32',NULL,47),(400,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:52:55',NULL,1),(401,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:53:33',NULL,43),(402,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:55:41',NULL,1),(403,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:09:22',NULL,43),(404,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:30:02',NULL,43),(405,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:30:21',NULL,1),(406,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:44:24',NULL,43),(407,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:46:20',NULL,43),(408,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:47:06',NULL,1),(409,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:47:41',NULL,1),(410,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 13:31:30',NULL,1),(411,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 13:55:24',NULL,1),(412,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 14:06:15',NULL,1),(413,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 22:34:46',NULL,1),(414,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 06:32:10',NULL,1),(415,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 07:48:40',NULL,1),(416,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 07:50:52',NULL,1),(417,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 07:54:22',NULL,1),(418,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:25:15',NULL,1),(419,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:37:21',NULL,1),(420,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:39:38',NULL,44),(421,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:42:00',NULL,43),(422,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:42:30',NULL,1),(423,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:45:23',NULL,44),(424,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:46:00',NULL,1),(425,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:46:29',NULL,44),(426,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:48:32',NULL,1),(427,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:46:05',NULL,1),(428,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:50:02',NULL,1),(429,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:54:50',NULL,1),(430,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:58:57',NULL,1),(431,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:03:12',NULL,1),(432,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:04:14',NULL,1),(433,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:05:30',NULL,44),(434,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:07:39',NULL,44),(435,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:16:23',NULL,44),(436,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:26:24',NULL,1),(437,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:38:54',NULL,1),(438,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:41:18',NULL,42),(439,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:41:55',NULL,1),(440,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:43:03',NULL,42),(441,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:50:01',NULL,43),(442,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:51:48',NULL,44),(443,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:59:20',NULL,43),(444,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:59:46',NULL,43),(445,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 09:00:00',NULL,44),(446,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:49:14',NULL,1),(447,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:50:25',NULL,42),(448,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:50:42',NULL,44),(449,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:55:14',NULL,45),(450,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 22:03:39',NULL,1),(451,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 22:03:58',NULL,42),(452,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 22:05:23',NULL,43),(453,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 22:43:47',NULL,1),(454,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-26 15:48:30',NULL,1),(455,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-26 15:49:24',NULL,43),(456,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-26 15:50:11',NULL,44),(457,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-26 19:27:38',NULL,44),(458,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 07:13:25',NULL,43),(459,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 07:13:48',NULL,1),(460,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 07:15:36',NULL,43),(461,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 12:53:39',NULL,43),(462,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 14:31:24',NULL,44),(463,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 14:32:10',NULL,43),(464,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:07:01',NULL,43),(465,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:17:09',NULL,1),(466,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:17:31',NULL,42),(467,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:18:08',NULL,1),(468,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:18:35',NULL,42),(469,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:19:58',NULL,43),(470,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:20:38',NULL,44),(471,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:02:32',NULL,1),(472,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:05:27',NULL,43),(473,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:05:42',NULL,1),(474,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:10:17',NULL,1),(475,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:46:50',NULL,43),(476,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 18:37:19',NULL,42),(477,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 18:49:31',NULL,44),(478,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:02:38',NULL,44),(479,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:11:12',NULL,43),(480,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:19:07',NULL,44),(481,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:23:11',NULL,43),(482,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:23:27',NULL,44),(483,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:24:24',NULL,42),(484,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 20:36:25',NULL,42),(485,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 08:15:28',NULL,42),(486,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:06:40',NULL,1),(487,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:07:23',NULL,42),(488,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:13:02',NULL,43),(489,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:18:26',NULL,44),(490,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:21:05',NULL,43),(491,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 19:03:27',NULL,43),(492,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 19:05:19',NULL,1),(493,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 19:05:50',NULL,42),(494,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 19:12:08',NULL,1),(495,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:22:15',NULL,44),(496,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 20:34:00',NULL,42),(497,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 20:34:14',NULL,1),(498,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:34:40',NULL,43),(499,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:35:16',NULL,44),(500,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 20:47:08',NULL,1),(501,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:48:23',NULL,43),(502,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:49:00',NULL,44),(503,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:59:07',NULL,43),(504,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:59:55',NULL,44),(505,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:00:21',NULL,43),(506,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:01:06',NULL,44),(507,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:02:36',NULL,43),(508,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:03:12',NULL,44),(509,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:08:49',NULL,43),(510,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:09:16',NULL,44),(511,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:17:29',NULL,43),(512,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:16:15',NULL,1),(513,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 08:19:26',NULL,43),(514,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:20:34',NULL,44),(515,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:54:25',NULL,1),(516,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:57:03',NULL,44),(517,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:02:50',NULL,45),(518,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:13:18',NULL,45),(519,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:16:37',NULL,44),(520,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:17:10',NULL,45),(521,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:20:33',NULL,44),(522,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:21:05',NULL,45),(523,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:25:06',NULL,44),(524,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:25:39',NULL,45),(525,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:31:01',NULL,44),(526,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:31:36',NULL,45),(527,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:32:11',NULL,44),(528,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:34:55',NULL,45),(529,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:38:49',NULL,44),(530,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:39:16',NULL,45),(531,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:39:39',NULL,44),(532,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:40:07',NULL,1),(533,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:40:45',NULL,42),(534,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:42:03',NULL,44),(535,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:42:59',NULL,45),(536,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:46:08',NULL,44),(537,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:46:40',NULL,45),(538,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:48:19',NULL,44),(539,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:48:45',NULL,45),(540,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:50:11',NULL,44),(541,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:51:02',NULL,45),(542,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:52:02',NULL,45),(543,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:52:48',NULL,43),(544,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:53:44',NULL,43),(545,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:53:56',NULL,45),(546,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:54:12',NULL,43),(547,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:54:45',NULL,43),(548,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:55:25',NULL,44),(549,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:55:52',NULL,43),(550,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:59:39',NULL,44),(551,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:00:28',NULL,45),(552,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:01:15',NULL,44),(553,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:01:39',NULL,45),(554,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:02:00',NULL,44),(555,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:02:26',NULL,43),(556,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:02:50',NULL,44),(557,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:03:25',NULL,43),(558,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:11:50',NULL,44),(559,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:11:50',NULL,44),(560,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:12:11',NULL,43),(561,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:18:02',NULL,44),(562,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:38:20',NULL,43),(563,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:14:45',NULL,42),(564,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:14:45',NULL,42),(565,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:15:07',NULL,44),(566,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 16:21:11',NULL,42),(567,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:21:33',NULL,43),(568,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:55:53',NULL,43),(569,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:57:16',NULL,44),(570,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:58:29',NULL,43),(571,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:15:33',NULL,1),(572,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:16:11',NULL,43),(573,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:16:32',NULL,42),(574,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:17:33',NULL,43),(575,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:25:51',NULL,43),(576,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:40:26',NULL,44),(577,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:41:00',NULL,43),(578,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:42:01',NULL,1),(579,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:44:18',NULL,42),(580,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:44:36',NULL,43),(581,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 09:35:02',NULL,44),(582,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 09:38:58',NULL,43),(583,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 09:43:40',NULL,1),(584,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 10:07:37',NULL,43),(585,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 10:07:37',NULL,43),(586,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 11:12:49',NULL,43),(587,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 11:17:31',NULL,43),(588,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:13:48',NULL,42),(589,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:32:26',NULL,43),(590,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 12:34:27',NULL,42),(591,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:57:34',NULL,44),(592,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:58:30',NULL,43),(593,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 14:36:05',NULL,42),(594,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 14:37:39',NULL,42),(595,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 15:59:56',NULL,42),(596,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:00:21',NULL,42),(597,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:06:38',NULL,43),(598,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:07:20',NULL,44),(599,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:10:41',NULL,43),(600,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:11:42',NULL,44),(601,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:12:22',NULL,43),(602,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:13:19',NULL,47),(603,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:14:01',NULL,43),(604,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:15:30',NULL,42),(605,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:16:30',NULL,44),(606,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:22:04',NULL,44),(607,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:22:43',NULL,43),(608,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:25:49',NULL,42),(609,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:31:31',NULL,42),(610,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:31:55',NULL,44),(611,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:32:11',NULL,43),(612,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:32:36',NULL,44),(613,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:33:00',NULL,43),(614,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:58:06',NULL,44),(615,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 17:08:54',NULL,42),(616,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 09:57:07',NULL,42),(617,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 10:40:57',NULL,42),(618,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 10:47:27',NULL,42),(619,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:03:40',NULL,42),(620,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:17:38',NULL,43),(621,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:27:01',NULL,1),(622,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:29:59',NULL,42),(623,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:38:58',NULL,42),(624,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:49:16',NULL,43),(625,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:50:19',NULL,42),(626,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:50:53',NULL,43),(627,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:56:19',NULL,42),(628,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:57:05',NULL,43),(629,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:07:32',NULL,42),(630,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:09:13',NULL,43),(631,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:09:52',NULL,44),(632,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:13:00',NULL,43),(633,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:17:36',NULL,42),(634,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:29:25',NULL,43),(635,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 13:25:34',NULL,42),(636,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 15:56:47',NULL,42),(637,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 16:51:46',NULL,42),(638,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:22:27',NULL,43),(639,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:25:59',NULL,44),(640,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:26:18',NULL,43),(641,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:28:08',NULL,42),(642,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:30:58',NULL,43),(643,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:54:08',NULL,42),(644,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:54:27',NULL,43),(645,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:56:36',NULL,44),(646,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 18:00:06',NULL,43),(647,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-03 10:55:44',NULL,42),(648,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:39:32',NULL,42),(649,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:39:53',NULL,1),(650,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:45:58',NULL,1),(651,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:49:12',NULL,42),(652,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 09:51:02',NULL,42),(653,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 09:56:42',NULL,42),(654,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 10:28:07',NULL,42),(655,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 11:17:17',NULL,42),(656,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:26:07',NULL,44),(657,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:26:36',NULL,43),(658,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:28:05',NULL,44),(659,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:28:29',NULL,43),(660,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:52:57',NULL,44),(661,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:58:39',NULL,43),(662,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:16:24',NULL,42),(663,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:17:20',NULL,44),(664,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:17:35',NULL,43),(665,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:17:54',NULL,44),(666,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:18:34',NULL,43),(667,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:24:50',NULL,42),(668,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:25:20',NULL,43),(669,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:25:39',NULL,44),(670,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:26:20',NULL,43),(671,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:47:24',NULL,42),(672,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 14:11:28',NULL,42);
/*!40000 ALTER TABLE `aoa_user_login_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_vote_list`
--

DROP TABLE IF EXISTS `aoa_vote_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_vote_list` (
  `vote_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_time` datetime DEFAULT NULL,
  `selectone` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  PRIMARY KEY (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
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
  `vote_title_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vote_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`vote_title_user_id`),
  KEY `FKb2pou179gr3wf10lx0wy6qrli` (`user_id`),
  KEY `FK79ia8m9w7faxi7wmth7or8mqg` (`title_id`),
  CONSTRAINT `FK79ia8m9w7faxi7wmth7or8mqg` FOREIGN KEY (`title_id`) REFERENCES `aoa_vote_titles` (`title_id`),
  CONSTRAINT `FKb2pou179gr3wf10lx0wy6qrli` FOREIGN KEY (`user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_title_user`
--

LOCK TABLES `aoa_vote_title_user` WRITE;
/*!40000 ALTER TABLE `aoa_vote_title_user` DISABLE KEYS */;
INSERT INTO `aoa_vote_title_user` VALUES (1,3,1,7),(21,8,1,23);
/*!40000 ALTER TABLE `aoa_vote_title_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aoa_vote_titles`
--

DROP TABLE IF EXISTS `aoa_vote_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aoa_vote_titles` (
  `title_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vote_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`title_id`),
  KEY `FKnl21d99b8hc6gtfrrfsc9alge` (`vote_id`),
  CONSTRAINT `FKnl21d99b8hc6gtfrrfsc9alge` FOREIGN KEY (`vote_id`) REFERENCES `aoa_vote_list` (`vote_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
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

-- Dump completed on 2024-09-04 14:20:04
