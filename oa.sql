-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
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
  `latest_version` varchar(200) DEFAULT NULL,
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
  `completion_time_should_audit` varchar(200) DEFAULT NULL,
  `problem_description` varchar(800) DEFAULT NULL COMMENT '问题描述',
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
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6602 DEFAULT CHARSET=utf8mb4 COMMENT='图纸细化';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_detail_draw`
--

LOCK TABLES `ao_detail_draw` WRITE;
/*!40000 ALTER TABLE `ao_detail_draw` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=784 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_detail_draw_question`
--

LOCK TABLES `ao_detail_draw_question` WRITE;
/*!40000 ALTER TABLE `ao_detail_draw_question` DISABLE KEYS */;
/*!40000 ALTER TABLE `ao_detail_draw_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ao_draw_type`
--

DROP TABLE IF EXISTS `ao_draw_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_draw_type` (
  `dt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dt_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`dt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_draw_type`
--

LOCK TABLES `ao_draw_type` WRITE;
/*!40000 ALTER TABLE `ao_draw_type` DISABLE KEYS */;
INSERT INTO `ao_draw_type` VALUES (194,'管道三维图'),(195,'管道三维图（小管）'),(196,'支吊架组装图'),(197,'支吊架组装图（小管）'),(198,'贯穿件制作图'),(199,'封面目录说明'),(200,'其它'),(201,'通风风管布置图'),(202,'通风风管细化图'),(203,'通风支架图'),(204,'通风支架细化图'),(205,'电缆托盘布置图'),(206,'电缆托盘支架图'),(207,'电气设备布置图'),(208,'电缆托盘接地图'),(209,'电缆管布置图'),(210,'电缆管支架图'),(211,'通信平面图'),(212,'照明平面图'),(213,'火警平面图'),(214,'深埋接地图'),(215,'电缆敷设表、端接图、定值表'),(216,'仪控设备布置图'),(217,'仪表管布置图'),(218,'仪表管IS0图'),(219,'通风锚板清单'),(220,'电缆桥架支架图');
/*!40000 ALTER TABLE `ao_draw_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ao_profession`
--

DROP TABLE IF EXISTS `ao_profession`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ao_profession` (
  `pro_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pro_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_profession`
--

LOCK TABLES `ao_profession` WRITE;
/*!40000 ALTER TABLE `ao_profession` DISABLE KEYS */;
INSERT INTO `ao_profession` VALUES (1,'电气'),(2,'管道'),(3,'其它'),(4,'通风'),(5,'仪控');
/*!40000 ALTER TABLE `ao_profession` ENABLE KEYS */;
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
  `distribution_time` varchar(200) DEFAULT NULL COMMENT '分发时间',
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
  `modify_time` datetime DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `ao_three_book_aoa_user_user_id_fk` (`identify_responsible_person`),
  KEY `ao_three_book_aoa_user_user_id_fk_2` (`process_person`)
) ENGINE=InnoDB AUTO_INCREMENT=12396 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_three_book`
--

LOCK TABLES `ao_three_book` WRITE;
/*!40000 ALTER TABLE `ao_three_book` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1027 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_three_book_process`
--

LOCK TABLES `ao_three_book_process` WRITE;
/*!40000 ALTER TABLE `ao_three_book_process` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_attachment_list`
--

LOCK TABLES `aoa_attachment_list` WRITE;
/*!40000 ALTER TABLE `aoa_attachment_list` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_attends_list`
--

LOCK TABLES `aoa_attends_list` WRITE;
/*!40000 ALTER TABLE `aoa_attends_list` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `catalog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `catalog_name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cata_user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`),
  KEY `FKbsk5nkjlqmd8j9rmkarse6j1x` (`cata_user_id`),
  CONSTRAINT `FKbsk5nkjlqmd8j9rmkarse6j1x` FOREIGN KEY (`cata_user_id`) REFERENCES `aoa_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_catalog`
--

LOCK TABLES `aoa_catalog` WRITE;
/*!40000 ALTER TABLE `aoa_catalog` DISABLE KEYS */;
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
INSERT INTO `aoa_dept` VALUES (2,'辽宁','0401-88884102','现场设计室','13700001111','114@qq.com',NULL,'2017-09-13 19:04:07','2010-05-23 00:00:00');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_file_path`
--

LOCK TABLES `aoa_file_path` WRITE;
/*!40000 ALTER TABLE `aoa_file_path` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_mailnumber`
--

LOCK TABLES `aoa_mailnumber` WRITE;
/*!40000 ALTER TABLE `aoa_mailnumber` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_note_list`
--

LOCK TABLES `aoa_note_list` WRITE;
/*!40000 ALTER TABLE `aoa_note_list` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_notice_list`
--

LOCK TABLES `aoa_notice_list` WRITE;
/*!40000 ALTER TABLE `aoa_notice_list` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `role_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_`
--

LOCK TABLES `aoa_role_` WRITE;
/*!40000 ALTER TABLE `aoa_role_` DISABLE KEYS */;
INSERT INTO `aoa_role_` VALUES (1,'主任',NULL),(2,'文件管理员',NULL),(3,'通风负责人',NULL),(4,'通风设计人',NULL),(5,'机务负责人',NULL),(6,'管道设计人',NULL),(7,'电仪负责人',NULL),(8,'电仪设计人',NULL),(9,'管道审核人',NULL),(10,'电仪审核人',NULL),(11,'设计室通用权限',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=1941 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_power_list`
--

LOCK TABLES `aoa_role_power_list` WRITE;
/*!40000 ALTER TABLE `aoa_role_power_list` DISABLE KEYS */;
INSERT INTO `aoa_role_power_list` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,5,1),(5,1,8,1),(7,1,10,1),(8,1,11,1),(9,1,12,1),(10,1,13,1),(11,1,14,1),(12,1,15,1),(13,1,16,1),(14,1,17,1),(15,1,18,1),(16,1,19,1),(17,1,20,1),(18,1,21,1),(19,1,22,1),(20,1,23,1),(21,1,24,1),(22,1,25,1),(1536,1,1,2),(1537,0,2,2),(1538,0,3,2),(1539,0,5,2),(1540,1,8,2),(1541,1,10,2),(1542,0,11,2),(1543,0,12,2),(1544,0,13,2),(1545,0,14,2),(1546,0,15,2),(1547,0,16,2),(1548,0,17,2),(1549,0,18,2),(1550,0,19,2),(1551,0,20,2),(1552,0,21,2),(1553,0,22,2),(1554,1,23,2),(1555,1,24,2),(1556,1,25,2),(1557,0,1,3),(1558,0,2,3),(1559,0,3,3),(1560,0,5,3),(1561,1,8,3),(1562,1,10,3),(1563,0,11,3),(1564,0,12,3),(1565,0,13,3),(1566,0,14,3),(1567,0,15,3),(1568,0,16,3),(1569,0,17,3),(1570,0,18,3),(1571,0,19,3),(1572,0,20,3),(1573,0,21,3),(1574,0,22,3),(1575,0,23,3),(1576,1,24,3),(1577,1,25,3),(1578,0,1,4),(1579,0,2,4),(1580,0,3,4),(1581,1,5,4),(1582,1,8,4),(1583,1,10,4),(1584,0,11,4),(1585,0,12,4),(1586,0,13,4),(1587,0,14,4),(1588,0,15,4),(1589,0,16,4),(1590,0,17,4),(1591,0,18,4),(1592,1,19,4),(1593,1,20,4),(1594,1,21,4),(1595,0,22,4),(1596,0,23,4),(1597,1,24,4),(1598,1,25,4),(1620,0,1,5),(1621,0,2,5),(1622,0,3,5),(1623,0,5,5),(1624,1,8,5),(1625,1,10,5),(1626,0,11,5),(1627,0,12,5),(1628,0,13,5),(1629,0,14,5),(1630,0,15,5),(1631,0,16,5),(1632,0,17,5),(1633,0,18,5),(1634,0,19,5),(1635,0,20,5),(1636,0,21,5),(1637,0,22,5),(1638,0,23,5),(1639,1,24,5),(1640,1,25,5),(1641,0,1,6),(1642,0,2,6),(1643,0,3,6),(1644,0,5,6),(1645,1,8,6),(1646,1,10,6),(1647,0,11,6),(1648,0,12,6),(1649,0,13,6),(1650,0,14,6),(1651,0,15,6),(1652,0,16,6),(1653,0,17,6),(1654,0,18,6),(1655,0,19,6),(1656,0,20,6),(1657,0,21,6),(1658,0,22,6),(1659,0,23,6),(1660,1,24,6),(1661,1,25,6),(1662,0,1,7),(1663,0,2,7),(1664,0,3,7),(1665,0,5,7),(1666,1,8,7),(1667,1,10,7),(1668,0,11,7),(1669,0,12,7),(1670,0,13,7),(1671,0,14,7),(1672,0,15,7),(1673,0,16,7),(1674,0,17,7),(1675,0,18,7),(1676,0,19,7),(1677,0,20,7),(1678,0,21,7),(1679,0,22,7),(1680,0,23,7),(1681,1,24,7),(1682,1,25,7),(1683,0,1,8),(1684,0,2,8),(1685,0,3,8),(1686,0,5,8),(1687,1,8,8),(1688,1,10,8),(1689,0,11,8),(1690,0,12,8),(1691,0,13,8),(1692,0,14,8),(1693,0,15,8),(1694,0,16,8),(1695,0,17,8),(1696,0,18,8),(1697,0,19,8),(1698,0,20,8),(1699,0,21,8),(1700,0,22,8),(1701,0,23,8),(1702,1,24,8),(1703,1,25,8),(1704,1,29,1),(1705,1,29,2),(1706,1,29,3),(1707,1,29,4),(1708,1,29,5),(1709,1,29,6),(1710,1,29,7),(1711,1,29,8),(1712,1,30,1),(1713,1,30,2),(1714,1,30,3),(1715,1,30,4),(1716,1,30,5),(1717,1,30,6),(1718,1,30,7),(1719,1,30,8),(1720,1,31,1),(1721,1,31,2),(1722,1,31,3),(1723,1,31,4),(1724,1,31,5),(1725,1,31,6),(1726,1,31,7),(1727,1,31,8),(1728,1,33,1),(1729,1,33,2),(1730,1,33,3),(1731,0,33,4),(1732,1,33,5),(1733,0,33,6),(1734,1,33,7),(1735,0,33,8),(1736,1,34,1),(1737,1,34,2),(1738,0,34,3),(1739,0,34,4),(1740,0,34,5),(1741,0,34,6),(1742,0,34,7),(1743,0,34,8),(1744,1,35,1),(1745,1,35,2),(1746,0,35,3),(1747,0,35,4),(1748,0,35,5),(1749,0,35,6),(1750,0,35,7),(1751,0,35,8),(1752,0,1,5),(1753,0,2,5),(1754,0,3,5),(1755,0,5,5),(1756,0,8,5),(1757,0,10,5),(1758,0,11,5),(1759,0,12,5),(1760,0,13,5),(1761,0,14,5),(1762,0,15,5),(1763,0,16,5),(1764,0,17,5),(1765,0,18,5),(1766,0,19,5),(1767,0,20,5),(1768,0,21,5),(1769,0,22,5),(1770,0,23,5),(1771,0,24,5),(1772,0,25,5),(1773,0,29,5),(1774,0,30,5),(1775,0,31,5),(1776,0,33,5),(1777,0,34,5),(1778,0,35,5),(1779,0,1,4),(1780,0,2,4),(1781,0,3,4),(1782,0,5,4),(1783,0,8,4),(1784,0,10,4),(1785,0,11,4),(1786,0,12,4),(1787,0,13,4),(1788,0,14,4),(1789,0,15,4),(1790,0,16,4),(1791,0,17,4),(1792,0,18,4),(1793,0,19,4),(1794,0,20,4),(1795,0,21,4),(1796,0,22,4),(1797,0,23,4),(1798,0,24,4),(1799,0,25,4),(1800,0,29,4),(1801,0,30,4),(1802,0,31,4),(1803,0,33,4),(1804,0,34,4),(1805,0,35,4),(1806,0,1,6),(1807,0,2,6),(1808,0,3,6),(1809,0,5,6),(1810,0,8,6),(1811,0,10,6),(1812,0,11,6),(1813,0,12,6),(1814,0,13,6),(1815,0,14,6),(1816,0,15,6),(1817,0,16,6),(1818,0,17,6),(1819,0,18,6),(1820,0,19,6),(1821,0,20,6),(1822,0,21,6),(1823,0,22,6),(1824,0,23,6),(1825,0,24,6),(1826,0,25,6),(1827,0,29,6),(1828,0,30,6),(1829,0,31,6),(1830,0,33,6),(1831,0,34,6),(1832,0,35,6),(1833,0,1,8),(1834,0,2,8),(1835,0,3,8),(1836,0,5,8),(1837,0,8,8),(1838,0,10,8),(1839,0,11,8),(1840,0,12,8),(1841,0,13,8),(1842,0,14,8),(1843,0,15,8),(1844,0,16,8),(1845,0,17,8),(1846,0,18,8),(1847,0,19,8),(1848,0,20,8),(1849,0,21,8),(1850,0,22,8),(1851,0,23,8),(1852,0,24,8),(1853,0,25,8),(1854,0,29,8),(1855,0,30,8),(1856,0,31,8),(1857,0,33,8),(1858,0,34,8),(1859,0,35,8),(1860,0,1,9),(1861,0,2,9),(1862,0,3,9),(1863,0,5,9),(1864,1,8,9),(1865,1,10,9),(1866,0,11,9),(1867,0,12,9),(1868,0,13,9),(1869,0,14,9),(1870,0,15,9),(1871,0,16,9),(1872,0,17,9),(1873,0,18,9),(1874,0,19,9),(1875,0,20,9),(1876,0,21,9),(1877,0,22,9),(1878,0,23,9),(1879,1,24,9),(1880,1,25,9),(1881,1,29,9),(1882,1,30,9),(1883,1,31,9),(1884,1,33,9),(1885,0,34,9),(1886,0,35,9),(1887,0,1,10),(1888,0,2,10),(1889,0,3,10),(1890,0,5,10),(1891,1,8,10),(1892,1,10,10),(1893,0,11,10),(1894,0,12,10),(1895,0,13,10),(1896,0,14,10),(1897,0,15,10),(1898,0,16,10),(1899,0,17,10),(1900,0,18,10),(1901,0,19,10),(1902,0,20,10),(1903,0,21,10),(1904,0,22,10),(1905,0,23,10),(1906,1,24,10),(1907,1,25,10),(1908,1,29,10),(1909,1,30,10),(1910,1,31,10),(1911,1,33,10),(1912,0,34,10),(1913,0,35,10),(1914,0,1,11),(1915,0,2,11),(1916,0,3,11),(1917,0,5,11),(1918,1,8,11),(1919,1,10,11),(1920,0,11,11),(1921,0,12,11),(1922,0,13,11),(1923,0,14,11),(1924,0,15,11),(1925,0,16,11),(1926,0,17,11),(1927,0,18,11),(1928,0,19,11),(1929,0,20,11),(1930,0,21,11),(1931,0,22,11),(1932,0,23,11),(1933,1,24,11),(1934,1,25,11),(1935,1,29,11),(1936,1,30,11),(1937,1,31,11),(1938,1,33,11),(1939,0,34,11),(1940,0,35,11);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_schedule_list`
--

LOCK TABLES `aoa_schedule_list` WRITE;
/*!40000 ALTER TABLE `aoa_schedule_list` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_sys_menu`
--

LOCK TABLES `aoa_sys_menu` WRITE;
/*!40000 ALTER TABLE `aoa_sys_menu` DISABLE KEYS */;
INSERT INTO `aoa_sys_menu` VALUES (1,1,NULL,'glyphicon-cog','系统管理','##',0,0),(2,1,NULL,'glyphicon-education','用户管理','#',0,2),(3,1,NULL,'glyphicon-user','角色列表','#',0,3),(5,0,NULL,'glyphicon-hourglass','流程管理','#',0,5),(8,1,NULL,'glyphicon-flag','任务管理','#',0,8),(10,1,NULL,'glyphicon-earphone','通讯录','#',0,13),(11,1,NULL,'glyphicon-record','菜单管理','/testsysmenu',1,1),(12,0,NULL,'glyphicon-record','类型管理','/testsystype',0,0),(13,1,NULL,'glyphicon-record','状态管理','/testsysstatus',1,2),(14,0,NULL,'glyphicon-record','部门管理','/deptmanage',0,1),(15,1,NULL,'glyphicon-record','职位管理','/positionmanage',2,3),(16,1,NULL,'glyphicon-record','用户管理','/usermanage',2,4),(17,1,NULL,'glyphicon-record','在线用户','/morelogrecord',2,2),(18,1,NULL,'glyphicon-record','角色列表','/rolemanage',3,1),(19,0,NULL,'glyphicon-record','我的申请','/flowmanage',0,1),(20,0,NULL,'glyphicon-record','流程审核','/audit',0,2),(21,0,NULL,'glyphicon-record','新建流程','/xinxeng',0,0),(22,1,NULL,'glyphicon-record','账号管理','/accountmanage',7,1),(23,1,NULL,'glyphicon-record','任务管理','/taskmanage',8,1),(24,1,NULL,'glyphicon-record','我的任务','/mytask',8,2),(25,1,NULL,'glyphicon-record','通讯录','/addrmanage',10,1),(29,1,NULL,'glyphicon glyphicon-file','总台账','#',0,9),(30,1,NULL,'glyphicon-record','三单一览','/threebookmanage',29,0),(31,1,NULL,'glyphicon-record','细化一览','/detaildrawmanage',29,1),(33,1,NULL,'glyphicon-record','审核管理','/shenqingmanage',8,3),(34,1,NULL,'glyphicon-record','专业管理','/testsysprofession',1,3),(35,1,NULL,'glyphicon-record','图纸类型管理','/testsysdrawtype',1,4);
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
  `identify_responsible_person` varchar(200) DEFAULT NULL,
  `process_person` varchar(200) DEFAULT NULL,
  `audit_person` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`task_id`),
  KEY `FK7qch0fh6s2y73dvngy1m87aw7` (`task_push_user_id`),
  KEY `aoa_task_list_ao_three_book_book_id_fk` (`book_id`),
  KEY `aoa_task_list_ao_detail_draw_book_id_fk` (`detail_book_id`),
  CONSTRAINT `FK7qch0fh6s2y73dvngy1m87aw7` FOREIGN KEY (`task_push_user_id`) REFERENCES `aoa_user` (`user_id`),
  CONSTRAINT `aoa_task_list_ao_detail_draw_book_id_fk` FOREIGN KEY (`detail_book_id`) REFERENCES `ao_detail_draw` (`book_id`),
  CONSTRAINT `aoa_task_list_ao_three_book_book_id_fk` FOREIGN KEY (`book_id`) REFERENCES `ao_three_book` (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5329 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_list`
--

LOCK TABLES `aoa_task_list` WRITE;
/*!40000 ALTER TABLE `aoa_task_list` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5159 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_logger`
--

LOCK TABLES `aoa_task_logger` WRITE;
/*!40000 ALTER TABLE `aoa_task_logger` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11194 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user`
--

LOCK TABLES `aoa_user` WRITE;
/*!40000 ALTER TABLE `aoa_user` DISABLE KEYS */;
INSERT INTO `aoa_user` VALUES (1,NULL,NULL,NULL,'10574444@qq.com',NULL,'2017-09-22 19:35:40',NULL,'/d6242233-05de-462c-a919-ca8bcfa82773.jpg',0,NULL,NULL,NULL,NULL,'123456','康兴',NULL,NULL,'男','blue',NULL,'cni23097133','康兴','好好','13272143450',2,1,1,1,NULL,'kangxing'),(42,NULL,NULL,NULL,'1263490405@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'232141996zZ@','曾蓉',NULL,NULL,'女','green',NULL,'cni23280191','曾蓉','滴','18222835895',2,1,2,0,NULL,'cengrong'),(43,NULL,NULL,NULL,'853094060@qq.com',NULL,NULL,NULL,'/cf381883-cefe-4bdd-8b9f-2ce7b3a9854a.gif',0,NULL,NULL,NULL,NULL,'cni23SB+','李季',NULL,NULL,'男','blue',NULL,'cni23256467','李季','Dirty Deeds Done Dirt Cheap','17611267520',2,1,3,0,NULL,'liji'),(46,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','朱建国',NULL,NULL,'男','blue',NULL,'cni23032591','朱建国',NULL,'13272143450',2,1,5,0,NULL,'zhujianguo'),(47,NULL,NULL,NULL,'16555@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','冉英男',NULL,NULL,'男','blue',NULL,'cni23367322','冉英男',NULL,'13272143450',2,1,6,0,NULL,'ranyingnan'),(48,NULL,NULL,NULL,'16555@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','谷晓雨',NULL,NULL,'男','blue',NULL,'cni23437637','谷晓雨',NULL,'13272143450',2,1,6,0,NULL,'guxiaoyu'),(49,NULL,NULL,NULL,'16555@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','颉古宝',NULL,NULL,'男','blue',NULL,'cni23328925','颉古宝',NULL,'13272143450',2,1,6,0,NULL,'jiegubao'),(50,NULL,NULL,NULL,'16555@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','张春芳',NULL,NULL,'男','blue',NULL,'cni23240616','张春芳',NULL,'13272143450',2,1,6,0,NULL,'zhangchunfang'),(52,NULL,NULL,NULL,'1823797179@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','李晶',NULL,NULL,'女','blue',NULL,'cni23257236','李晶',NULL,'15040931509',2,1,6,0,NULL,'lijing'),(53,NULL,NULL,NULL,'572544508@qq.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','李文静',NULL,NULL,'女','blue',NULL,'cni23255785','李文静',NULL,'15040931509',2,1,6,0,NULL,'liwenjing'),(54,NULL,NULL,NULL,'572544508@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','朱定意',NULL,NULL,'男','blue',NULL,'cni23109156','朱定意',NULL,'15040931509',2,1,7,0,NULL,'zhudingyi'),(55,NULL,NULL,NULL,'572544508@qq.com',1,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','刘翔宇',NULL,NULL,'男','blue',NULL,'cni23475342','刘翔宇',NULL,'15659971152',2,1,8,0,NULL,'liuxiangyu'),(56,NULL,NULL,NULL,'163@163.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','赵圣炎',NULL,NULL,'男','blue',NULL,'cni23427567','赵圣炎',NULL,'17600001111',2,1,6,0,NULL,'zhaoshengyan'),(57,NULL,NULL,NULL,'163@163.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'123456','崔德鑫',NULL,NULL,'男','blue',NULL,'cni23152468','崔德鑫',NULL,'17600001111',2,1,9,0,NULL,'cuidexin'),(58,NULL,NULL,NULL,'00000@163.com',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'232141996zZ@','设计室',NULL,NULL,'女','blue',NULL,'tmd','设计室','滴滴','17600000000',2,1,11,0,NULL,'shejishi'),(59,NULL,NULL,NULL,'1438920548@qq.com',NULL,NULL,NULL,'/aa359eb1-f449-49b9-9f67-44fb76106033.jpg',0,NULL,NULL,NULL,NULL,'czb521184','陈之彬',NULL,NULL,'男','blue',NULL,'cni23497766','陈之彬','远在远方的风比远方更远','17530374017',2,1,6,0,NULL,'chenzhibin');
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
) ENGINE=InnoDB AUTO_INCREMENT=2384 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_log`
--

LOCK TABLES `aoa_user_log` WRITE;
/*!40000 ALTER TABLE `aoa_user_log` DISABLE KEYS */;
INSERT INTO `aoa_user_log` VALUES (1,'10.33.197.35','2024-11-19 15:13:57','细化一览','/detaildrawmanage',43),(2,'10.33.197.35','2024-11-19 15:13:58','三单一览','/threebookmanage',43),(3,'10.33.197.35','2024-11-19 15:14:05','我的任务','/mytask',43),(4,'10.33.197.35','2024-11-19 15:14:16','审核管理','/shenqingmanage',43),(5,'10.33.197.35','2024-11-19 15:14:18','我的任务','/mytask',43),(6,'10.33.197.35','2024-11-19 17:23:42','我的任务','/mytask',52),(7,'10.33.197.35','2024-11-20 08:18:34','我的任务','/mytask',49),(8,'10.33.197.35','2024-11-20 08:46:44','细化一览','/detaildrawmanage',52),(9,'10.33.197.35','2024-11-20 09:01:55','三单一览','/threebookmanage',42),(10,'10.33.197.35','2024-11-20 09:04:06','细化一览','/detaildrawmanage',42),(11,'10.33.197.35','2024-11-20 09:06:02','三单一览','/threebookmanage',42),(12,'10.33.197.35','2024-11-20 09:58:02','细化一览','/detaildrawmanage',42),(13,'10.33.197.35','2024-11-20 09:59:00','任务管理','/taskmanage',42),(14,'10.33.197.35','2024-11-20 10:00:16','三单一览','/threebookmanage',42),(15,'10.33.197.35','2024-11-20 14:20:13','三单一览','/threebookmanage',43),(16,'10.33.197.35','2024-11-20 14:21:31','细化一览','/detaildrawmanage',43),(17,'10.33.197.35','2024-11-20 14:22:33','三单一览','/threebookmanage',43),(18,'10.33.197.35','2024-11-20 14:22:59','我的任务','/mytask',43),(19,'10.33.197.35','2024-11-20 14:23:00','审核管理','/shenqingmanage',43),(20,'10.33.197.35','2024-11-20 14:23:02','细化一览','/detaildrawmanage',43),(21,'10.33.197.35','2024-11-20 14:23:05','三单一览','/threebookmanage',43),(22,'10.33.197.35','2024-11-20 14:24:56','细化一览','/detaildrawmanage',43),(23,'10.33.197.35','2024-11-20 14:27:51','三单一览','/threebookmanage',43),(24,'10.33.197.35','2024-11-20 14:27:51','我的任务','/mytask',43),(25,'10.33.197.35','2024-11-20 15:21:35','我的任务','/mytask',43),(26,'10.33.197.35','2024-11-20 15:21:35','审核管理','/shenqingmanage',43),(27,'10.33.197.35','2024-11-20 15:33:21','审核管理','/shenqingmanage',43),(28,'10.33.197.35','2024-11-20 15:33:25','我的任务','/mytask',43),(29,'10.33.197.35','2024-11-20 16:27:04','审核管理','/shenqingmanage',43),(30,'10.33.197.35','2024-11-20 16:27:05','我的任务','/mytask',43),(31,'10.33.197.35','2024-11-20 16:27:12','三单一览','/threebookmanage',43),(32,'10.33.197.35','2024-11-20 16:27:12','我的任务','/mytask',43),(33,'10.33.197.35','2024-11-20 16:27:18','审核管理','/shenqingmanage',43),(34,'10.33.197.35','2024-11-20 16:27:19','我的任务','/mytask',43),(35,'10.33.197.35','2024-11-20 16:28:08','审核管理','/shenqingmanage',43),(36,'10.33.197.35','2024-11-20 16:28:12','三单一览','/threebookmanage',43),(37,'10.33.197.35','2024-11-20 16:28:12','细化一览','/detaildrawmanage',43),(38,'10.33.197.35','2024-11-20 16:28:22','通讯录','/addrmanage',43),(39,'10.33.197.35','2024-11-20 16:28:23','我的任务','/mytask',43),(40,'10.33.197.35','2024-11-21 08:51:11','我的任务','/mytask',52),(41,'10.33.197.35','2024-11-21 09:17:32','三单一览','/threebookmanage',1),(42,'10.33.197.35','2024-11-21 09:40:22','细化一览','/detaildrawmanage',42),(43,'10.33.197.35','2024-11-21 09:40:31','任务管理','/taskmanage',42),(44,'10.33.197.35','2024-11-21 09:41:13','我的任务','/mytask',54),(45,'10.33.197.35','2024-11-21 09:41:16','审核管理','/shenqingmanage',54),(46,'10.33.197.35','2024-11-21 11:07:17','三单一览','/threebookmanage',42),(47,'10.33.197.35','2024-11-21 11:57:33','三单一览','/threebookmanage',49),(48,'10.33.197.35','2024-11-21 11:58:01','我的任务','/mytask',49),(49,'10.33.197.35','2024-11-21 14:16:09','三单一览','/threebookmanage',43),(50,'10.33.197.35','2024-11-21 14:16:11','我的任务','/mytask',43),(51,'10.33.197.35','2024-11-21 14:16:12','审核管理','/shenqingmanage',43),(52,'10.33.197.35','2024-11-21 14:16:12','我的任务','/mytask',43),(53,'10.33.197.35','2024-11-21 14:18:39','我的任务','/mytask',43),(54,'10.33.197.35','2024-11-21 14:18:39','审核管理','/shenqingmanage',43),(55,'10.33.197.35','2024-11-21 14:18:42','审核管理','/shenqingmanage',43),(56,'10.33.197.35','2024-11-21 14:18:43','我的任务','/mytask',43),(57,'10.33.197.35','2024-11-21 14:18:43','审核管理','/shenqingmanage',43),(58,'10.33.197.35','2024-11-21 14:18:44','审核管理','/shenqingmanage',43),(59,'10.33.197.35','2024-11-21 14:18:44','我的任务','/mytask',43),(60,'10.33.197.35','2024-11-22 08:23:44','我的任务','/mytask',43),(61,'10.33.197.35','2024-11-22 08:59:08','通讯录','/addrmanage',43),(62,'10.33.197.35','2024-11-22 10:20:03','我的任务','/mytask',43),(63,'10.33.197.35','2024-11-22 10:20:05','审核管理','/shenqingmanage',43),(64,'10.33.197.35','2024-11-22 10:20:06','我的任务','/mytask',43),(65,'10.33.197.35','2024-11-22 10:32:41','通讯录','/addrmanage',42),(66,'10.33.197.35','2024-11-22 11:36:38','任务管理','/taskmanage',42),(67,'10.33.197.35','2024-11-22 11:38:27','三单一览','/threebookmanage',42),(68,'10.33.197.35','2024-11-22 17:07:29','任务管理','/taskmanage',42),(69,'10.33.197.35','2024-11-22 17:17:27','角色列表','/rolemanage',1),(70,'10.33.197.35','2024-11-22 17:17:31','用户管理','/usermanage',1),(71,'10.33.197.35','2024-11-22 17:18:54','职位管理','/positionmanage',1),(72,'10.33.197.35','2024-11-22 17:18:56','用户管理','/usermanage',1),(73,'10.33.197.35','2024-11-22 17:18:57','在线用户','/morelogrecord',1),(74,'10.33.197.35','2024-11-22 17:19:00','用户管理','/usermanage',1),(75,'10.33.197.35','2024-11-22 17:19:01','在线用户','/morelogrecord',1),(76,'10.33.197.35','2024-11-22 17:19:06','用户管理','/usermanage',1),(77,'10.33.197.35','2024-11-22 17:19:49','任务管理','/taskmanage',1),(78,'10.33.197.35','2024-11-22 17:19:58','三单一览','/threebookmanage',1),(79,'10.33.197.35','2024-11-22 17:20:11','细化一览','/detaildrawmanage',1),(80,'10.33.197.35','2024-11-22 17:24:55','专业管理','/testsysprofession',42),(81,'10.33.197.35','2024-11-22 17:25:08','用户管理','/usermanage',1),(82,'10.33.197.35','2024-11-25 08:13:42','审核管理','/shenqingmanage',43),(83,'10.33.197.35','2024-11-25 08:13:43','我的任务','/mytask',43),(84,'10.33.197.35','2024-11-25 08:13:46','三单一览','/threebookmanage',43),(85,'10.33.197.35','2024-11-25 08:13:46','细化一览','/detaildrawmanage',43),(86,'10.33.197.35','2024-11-25 08:13:47','我的任务','/mytask',43),(87,'10.33.197.35','2024-11-25 08:13:47','审核管理','/shenqingmanage',43),(88,'10.33.197.35','2024-11-25 08:16:06','任务管理','/taskmanage',42),(89,'10.33.197.35','2024-11-25 08:16:56','三单一览','/threebookmanage',43),(90,'10.33.197.35','2024-11-25 08:16:56','细化一览','/detaildrawmanage',43),(91,'10.33.197.35','2024-11-25 08:16:56','三单一览','/threebookmanage',42),(92,'10.33.197.35','2024-11-25 08:16:57','我的任务','/mytask',43),(93,'10.33.197.35','2024-11-25 08:17:29','细化一览','/detaildrawmanage',52),(94,'10.33.197.35','2024-11-25 08:17:34','我的任务','/mytask',52),(95,'10.33.197.35','2024-11-25 09:09:31','审核管理','/shenqingmanage',43),(96,'10.33.197.35','2024-11-25 09:30:39','我的任务','/mytask',43),(97,'10.33.197.35','2024-11-25 10:16:03','在线用户','/morelogrecord',1),(98,'10.33.197.35','2024-11-25 15:13:27','审核管理','/shenqingmanage',43),(99,'10.33.197.35','2024-11-25 15:13:31','我的任务','/mytask',43),(100,'10.33.197.35','2024-11-25 15:14:25','审核管理','/shenqingmanage',43),(101,'10.33.197.35','2024-11-25 15:14:26','我的任务','/mytask',43),(102,'10.33.197.35','2024-11-26 08:06:20','三单一览','/threebookmanage',43),(103,'10.33.197.35','2024-11-26 08:06:21','我的任务','/mytask',43),(104,'10.33.197.35','2024-11-26 08:06:22','三单一览','/threebookmanage',43),(105,'10.33.197.35','2024-11-26 08:06:40','我的任务','/mytask',43),(106,'10.33.197.35','2024-11-26 08:06:48','审核管理','/shenqingmanage',43),(107,'10.33.197.35','2024-11-26 08:06:50','三单一览','/threebookmanage',43),(108,'10.33.197.35','2024-11-26 08:06:51','细化一览','/detaildrawmanage',43),(109,'10.33.197.35','2024-11-26 08:07:02','我的任务','/mytask',43),(110,'10.33.197.35','2024-11-26 08:09:58','三单一览','/threebookmanage',43),(111,'10.33.197.35','2024-11-26 08:14:23','角色列表','/rolemanage',1),(112,'10.33.197.35','2024-11-26 08:14:25','任务管理','/taskmanage',1),(113,'10.33.197.35','2024-11-26 08:14:26','我的任务','/mytask',1),(114,'10.33.197.35','2024-11-26 08:14:26','审核管理','/shenqingmanage',1),(115,'10.33.197.35','2024-11-26 08:14:28','细化一览','/detaildrawmanage',1),(116,'10.33.197.35','2024-11-26 08:18:27','任务管理','/taskmanage',42),(117,'10.33.197.35','2024-11-26 08:20:30','三单一览','/threebookmanage',42),(118,'10.33.197.35','2024-11-26 08:22:13','三单一览','/threebookmanage',56),(119,'10.33.197.35','2024-11-26 08:27:05','我的任务','/mytask',46),(120,'10.33.197.35','2024-11-26 08:32:02','我的任务','/mytask',59),(121,'10.33.197.35','2024-11-26 08:33:04','三单一览','/threebookmanage',59),(122,'10.33.197.35','2024-11-26 08:33:08','细化一览','/detaildrawmanage',59),(123,'10.33.197.35','2024-11-26 08:33:09','我的任务','/mytask',59),(124,'10.33.197.35','2024-11-26 08:35:58','我的任务','/mytask',47),(125,'10.33.197.35','2024-11-26 08:46:28','三单一览','/threebookmanage',46),(126,'10.33.197.35','2024-11-26 08:51:30','三单一览','/threebookmanage',47),(127,'10.33.197.35','2024-11-26 09:06:28','细化一览','/detaildrawmanage',42),(128,'10.33.197.35','2024-11-26 11:46:41','细化一览','/detaildrawmanage',59),(129,'10.33.197.35','2024-11-26 11:47:01','我的任务','/mytask',59),(130,'10.33.197.35','2024-11-26 14:00:14','我的任务','/mytask',43),(131,'10.33.197.35','2024-11-26 17:27:30','审核管理','/shenqingmanage',43),(132,'10.33.197.35','2024-11-26 17:27:32','我的任务','/mytask',43),(133,'10.33.197.35','2024-11-26 17:27:33','审核管理','/shenqingmanage',43),(134,'10.33.197.35','2024-11-26 17:27:42','通讯录','/addrmanage',43),(135,'10.33.197.35','2024-11-27 08:10:19','我的任务','/mytask',43),(136,'10.33.197.35','2024-11-27 08:10:20','审核管理','/shenqingmanage',43),(137,'10.33.197.35','2024-11-27 08:10:20','我的任务','/mytask',43),(138,'10.33.197.35','2024-11-27 08:13:57','我的任务','/mytask',43),(139,'10.33.197.35','2024-11-27 08:13:58','审核管理','/shenqingmanage',43),(140,'10.33.197.35','2024-11-27 08:13:58','我的任务','/mytask',43),(141,'10.33.197.35','2024-11-27 08:13:59','我的任务','/mytask',43),(142,'10.33.197.35','2024-11-27 08:14:15','三单一览','/threebookmanage',43),(143,'10.33.197.35','2024-11-27 08:15:19','我的任务','/mytask',43),(144,'10.33.197.35','2024-11-27 08:32:26','审核管理','/shenqingmanage',43),(145,'10.33.197.35','2024-11-27 08:32:27','我的任务','/mytask',43),(146,'10.33.197.35','2024-11-27 09:06:35','我的任务','/mytask',46),(147,'10.33.197.35','2024-11-27 09:39:35','细化一览','/detaildrawmanage',59),(148,'10.33.197.35','2024-11-27 09:54:59','我的任务','/mytask',59),(149,'10.33.197.35','2024-11-27 10:18:26','三单一览','/threebookmanage',43),(150,'10.33.197.35','2024-11-27 10:24:45','我的任务','/mytask',43),(151,'10.33.197.35','2024-11-27 10:27:38','三单一览','/threebookmanage',43),(152,'10.33.197.35','2024-11-27 14:27:21','三单一览','/threebookmanage',46),(153,'10.33.197.35','2024-11-27 17:07:46','我的任务','/mytask',47),(154,'10.33.197.35','2024-11-28 14:11:38','我的任务','/mytask',46),(155,'10.33.197.35','2024-11-29 09:24:18','细化一览','/detaildrawmanage',52),(156,'10.33.197.35','2024-11-29 09:24:27','三单一览','/threebookmanage',52),(157,'10.33.197.35','2024-11-29 09:28:59','我的任务','/mytask',52),(158,'10.33.197.35','2024-11-29 09:49:04','任务管理','/taskmanage',42),(159,'10.33.197.35','2024-11-29 09:50:18','三单一览','/threebookmanage',42),(160,'10.33.197.35','2024-11-29 10:51:37','任务管理','/taskmanage',42),(161,'10.33.197.35','2024-11-29 10:51:38','三单一览','/threebookmanage',42),(162,'10.33.197.35','2024-11-29 10:51:51','任务管理','/taskmanage',42),(163,'10.33.197.35','2024-11-29 11:04:36','细化一览','/detaildrawmanage',42),(164,'10.33.197.35','2024-11-29 11:24:18','任务管理','/taskmanage',42),(165,'10.33.197.35','2024-11-29 13:42:29','三单一览','/threebookmanage',42),(166,'10.33.197.35','2024-11-29 14:10:00','细化一览','/detaildrawmanage',42),(167,'10.33.197.35','2024-11-29 17:15:35','三单一览','/threebookmanage',59),(168,'10.33.197.35','2024-11-29 17:15:49','细化一览','/detaildrawmanage',59),(169,'10.33.197.35','2024-11-29 17:17:53','我的任务','/mytask',59),(170,'10.33.197.35','2024-12-02 08:49:46','三单一览','/threebookmanage',42),(171,'10.33.197.35','2024-12-02 14:24:12','我的任务','/mytask',43),(172,'10.33.197.35','2024-12-02 16:47:45','任务管理','/taskmanage',42),(173,'10.33.197.35','2024-12-02 16:50:11','三单一览','/threebookmanage',42),(174,'10.33.197.35','2024-12-03 13:29:35','三单一览','/threebookmanage',1),(175,'10.33.197.35','2024-12-03 13:44:15','任务管理','/taskmanage',42),(176,'10.33.197.35','2024-12-03 13:45:37','我的任务','/mytask',55),(177,'10.33.197.35','2024-12-03 13:48:47','三单一览','/threebookmanage',55),(178,'10.33.197.35','2024-12-03 13:49:12','我的任务','/mytask',55),(179,'10.33.197.35','2024-12-03 13:50:25','细化一览','/detaildrawmanage',52),(180,'10.33.197.35','2024-12-03 13:51:17','我的任务','/mytask',52),(181,'10.33.197.35','2024-12-03 13:52:02','三单一览','/threebookmanage',59),(182,'10.33.197.35','2024-12-03 13:52:16','我的任务','/mytask',59),(183,'10.33.197.35','2024-12-03 13:58:37','通讯录','/addrmanage',43),(184,'10.33.197.35','2024-12-03 13:58:52','我的任务','/mytask',53),(185,'10.33.197.35','2024-12-03 14:05:44','我的任务','/mytask',54),(186,'10.33.197.35','2024-12-03 14:05:52','审核管理','/shenqingmanage',54),(187,'10.33.197.35','2024-12-03 14:05:58','我的任务','/mytask',54),(188,'10.33.197.35','2024-12-03 14:06:06','审核管理','/shenqingmanage',54),(189,'10.33.197.35','2024-12-03 14:06:21','我的任务','/mytask',54),(190,'10.33.197.35','2024-12-03 14:06:31','审核管理','/shenqingmanage',54),(191,'10.33.197.35','2024-12-03 14:06:34','我的任务','/mytask',54),(192,'10.33.197.35','2024-12-03 14:06:37','审核管理','/shenqingmanage',54),(193,'10.33.197.35','2024-12-03 14:06:41','我的任务','/mytask',54),(194,'10.33.197.35','2024-12-03 14:06:43','审核管理','/shenqingmanage',54),(195,'10.33.197.35','2024-12-03 14:06:45','我的任务','/mytask',54),(196,'10.33.197.35','2024-12-03 14:06:48','审核管理','/shenqingmanage',54),(197,'10.33.197.35','2024-12-03 14:07:04','我的任务','/mytask',54),(198,'10.33.197.35','2024-12-03 14:07:07','审核管理','/shenqingmanage',54),(199,'10.33.197.35','2024-12-03 14:07:10','我的任务','/mytask',54),(200,'10.33.197.35','2024-12-03 14:07:45','审核管理','/shenqingmanage',54),(201,'10.33.197.35','2024-12-03 14:07:49','我的任务','/mytask',54),(202,'10.33.197.35','2024-12-03 14:07:58','我的任务','/mytask',43),(203,'10.33.197.35','2024-12-03 14:10:51','审核管理','/shenqingmanage',54),(204,'10.33.197.35','2024-12-03 14:10:56','我的任务','/mytask',54),(205,'10.33.197.35','2024-12-03 14:11:01','审核管理','/shenqingmanage',54),(206,'10.33.197.35','2024-12-03 14:11:07','我的任务','/mytask',54),(207,'10.33.197.35','2024-12-03 14:11:10','审核管理','/shenqingmanage',54),(208,'10.33.197.35','2024-12-03 14:11:13','我的任务','/mytask',54),(209,'10.33.197.35','2024-12-03 14:11:19','审核管理','/shenqingmanage',54),(210,'10.33.197.35','2024-12-03 14:11:22','我的任务','/mytask',54),(211,'10.33.197.35','2024-12-03 14:11:26','审核管理','/shenqingmanage',54),(212,'10.33.197.35','2024-12-03 14:11:29','我的任务','/mytask',54),(213,'10.33.197.35','2024-12-03 14:11:32','审核管理','/shenqingmanage',54),(214,'10.33.197.35','2024-12-03 14:11:35','我的任务','/mytask',54),(215,'10.33.197.35','2024-12-03 14:11:43','审核管理','/shenqingmanage',54),(216,'10.33.197.35','2024-12-03 14:11:47','我的任务','/mytask',54),(217,'10.33.197.35','2024-12-03 14:11:50','审核管理','/shenqingmanage',54),(218,'10.33.197.35','2024-12-03 14:11:53','我的任务','/mytask',54),(219,'10.33.197.35','2024-12-03 14:11:57','审核管理','/shenqingmanage',54),(220,'10.33.197.35','2024-12-03 14:12:00','我的任务','/mytask',54),(221,'10.33.197.35','2024-12-03 14:12:02','审核管理','/shenqingmanage',54),(222,'10.33.197.35','2024-12-03 14:12:05','我的任务','/mytask',54),(223,'10.33.197.35','2024-12-03 14:12:06','审核管理','/shenqingmanage',54),(224,'10.33.197.35','2024-12-03 14:12:08','我的任务','/mytask',54),(225,'10.33.197.35','2024-12-03 14:12:12','审核管理','/shenqingmanage',54),(226,'10.33.197.35','2024-12-03 14:12:15','我的任务','/mytask',54),(227,'10.33.197.35','2024-12-03 14:12:18','审核管理','/shenqingmanage',54),(228,'10.33.197.35','2024-12-03 14:12:22','我的任务','/mytask',54),(229,'10.33.197.35','2024-12-03 14:21:13','审核管理','/shenqingmanage',54),(230,'10.33.197.35','2024-12-03 14:21:20','我的任务','/mytask',54),(231,'10.33.197.35','2024-12-03 14:21:24','审核管理','/shenqingmanage',54),(232,'10.33.197.35','2024-12-03 14:21:31','我的任务','/mytask',54),(233,'10.33.197.35','2024-12-03 14:26:02','审核管理','/shenqingmanage',43),(234,'10.33.197.35','2024-12-03 14:26:08','我的任务','/mytask',43),(235,'10.33.197.35','2024-12-03 14:27:00','审核管理','/shenqingmanage',43),(236,'10.33.197.35','2024-12-03 14:28:07','我的任务','/mytask',42),(237,'10.33.197.35','2024-12-03 14:28:25','我的任务','/mytask',43),(238,'10.33.197.35','2024-12-03 14:28:42','审核管理','/shenqingmanage',43),(239,'10.33.197.35','2024-12-03 14:29:14','我的任务','/mytask',43),(240,'10.33.197.35','2024-12-03 14:29:16','审核管理','/shenqingmanage',43),(241,'10.33.197.35','2024-12-03 14:29:18','我的任务','/mytask',43),(242,'10.33.197.35','2024-12-03 14:29:19','审核管理','/shenqingmanage',43),(243,'10.33.197.35','2024-12-03 14:29:21','我的任务','/mytask',43),(244,'10.33.197.35','2024-12-03 14:29:22','审核管理','/shenqingmanage',43),(245,'10.33.197.35','2024-12-03 14:29:24','我的任务','/mytask',43),(246,'10.33.197.35','2024-12-03 14:29:25','审核管理','/shenqingmanage',43),(247,'10.33.197.35','2024-12-03 14:29:27','我的任务','/mytask',43),(248,'10.33.197.35','2024-12-03 14:29:28','审核管理','/shenqingmanage',43),(249,'10.33.197.35','2024-12-03 14:29:30','我的任务','/mytask',43),(250,'10.33.197.35','2024-12-03 14:29:31','审核管理','/shenqingmanage',43),(251,'10.33.197.35','2024-12-03 14:29:32','我的任务','/mytask',43),(252,'10.33.197.35','2024-12-03 14:43:43','任务管理','/taskmanage',42),(253,'10.33.197.35','2024-12-03 14:43:47','三单一览','/threebookmanage',42),(254,'10.33.197.35','2024-12-03 14:44:02','细化一览','/detaildrawmanage',42),(255,'10.33.197.35','2024-12-03 14:45:25','三单一览','/threebookmanage',42),(256,'10.33.197.35','2024-12-03 15:00:52','审核管理','/shenqingmanage',54),(257,'10.33.197.35','2024-12-03 15:02:33','我的任务','/mytask',54),(258,'10.33.197.35','2024-12-03 15:02:40','审核管理','/shenqingmanage',54),(259,'10.33.197.35','2024-12-03 15:03:18','我的任务','/mytask',54),(260,'10.33.197.35','2024-12-03 15:03:22','审核管理','/shenqingmanage',54),(261,'10.33.197.35','2024-12-03 15:03:27','我的任务','/mytask',54),(262,'10.33.197.35','2024-12-03 15:03:32','审核管理','/shenqingmanage',54),(263,'10.33.197.35','2024-12-03 15:03:35','我的任务','/mytask',54),(264,'10.33.197.35','2024-12-03 15:07:04','审核管理','/shenqingmanage',54),(265,'10.33.197.35','2024-12-03 15:07:11','我的任务','/mytask',54),(266,'10.33.197.35','2024-12-03 15:07:20','审核管理','/shenqingmanage',54),(267,'10.33.197.35','2024-12-03 15:07:27','我的任务','/mytask',54),(268,'10.33.197.35','2024-12-03 15:30:46','三单一览','/threebookmanage',55),(269,'10.33.197.35','2024-12-03 15:34:38','我的任务','/mytask',55),(270,'10.33.197.35','2024-12-03 16:54:03','三单一览','/threebookmanage',55),(271,'10.33.197.35','2024-12-03 16:56:42','我的任务','/mytask',55),(272,'10.33.197.35','2024-12-04 08:56:07','任务管理','/taskmanage',42),(273,'10.33.197.35','2024-12-04 08:56:43','三单一览','/threebookmanage',42),(274,'10.33.197.35','2024-12-04 09:02:37','细化一览','/detaildrawmanage',42),(275,'10.33.197.35','2024-12-06 10:07:17','三单一览','/threebookmanage',43),(276,'10.33.197.35','2024-12-06 10:27:31','细化一览','/detaildrawmanage',43),(277,'10.33.197.35','2024-12-06 10:28:44','三单一览','/threebookmanage',43),(278,'10.33.197.35','2024-12-06 14:15:34','三单一览','/threebookmanage',46),(279,'10.33.197.35','2024-12-06 14:16:44','我的任务','/mytask',46),(280,'10.33.197.35','2024-12-06 14:18:20','三单一览','/threebookmanage',46),(281,'10.33.197.35','2024-12-06 14:51:09','三单一览','/threebookmanage',59),(282,'10.33.197.35','2024-12-06 14:51:17','我的任务','/mytask',59),(283,'10.33.197.35','2024-12-07 09:19:53','我的任务','/mytask',43),(284,'10.33.197.35','2024-12-09 09:04:46','我的任务','/mytask',46),(285,'10.33.197.35','2024-12-09 10:24:25','任务管理','/taskmanage',42),(286,'10.33.197.35','2024-12-09 10:26:09','三单一览','/threebookmanage',42),(287,'10.33.197.35','2024-12-09 11:09:30','细化一览','/detaildrawmanage',52),(288,'10.33.197.35','2024-12-09 11:10:01','我的任务','/mytask',52),(289,'10.33.197.35','2024-12-09 13:42:37','细化一览','/detaildrawmanage',42),(290,'10.33.197.35','2024-12-10 09:08:49','三单一览','/threebookmanage',43),(291,'10.33.197.35','2024-12-10 09:19:06','任务管理','/taskmanage',42),(292,'10.33.197.35','2024-12-10 09:21:17','三单一览','/threebookmanage',42),(293,'10.33.197.35','2024-12-10 09:22:19','细化一览','/detaildrawmanage',43),(294,'10.33.197.35','2024-12-10 10:28:59','任务管理','/taskmanage',42),(295,'10.33.197.35','2024-12-10 13:07:37','三单一览','/threebookmanage',42),(296,'10.33.197.35','2024-12-10 13:43:49','任务管理','/taskmanage',42),(297,'10.33.197.35','2024-12-10 13:45:03','三单一览','/threebookmanage',42),(298,'10.33.197.35','2024-12-10 17:12:52','任务管理','/taskmanage',42),(299,'10.33.197.35','2024-12-10 17:14:52','三单一览','/threebookmanage',42),(300,'10.33.197.35','2024-12-11 08:23:17','细化一览','/detaildrawmanage',42),(301,'10.33.197.35','2024-12-11 08:42:41','我的任务','/mytask',43),(302,'10.33.197.35','2024-12-11 11:28:01','三单一览','/threebookmanage',47),(303,'10.33.197.35','2024-12-11 11:40:48','我的任务','/mytask',47),(304,'10.33.197.35','2024-12-11 13:39:19','三单一览','/threebookmanage',42),(305,'10.33.197.35','2024-12-11 13:45:45','审核管理','/shenqingmanage',54),(306,'10.33.197.35','2024-12-11 13:45:51','我的任务','/mytask',54),(307,'10.33.197.35','2024-12-11 13:45:55','审核管理','/shenqingmanage',54),(308,'10.33.197.35','2024-12-11 13:45:58','我的任务','/mytask',54),(309,'10.33.197.35','2024-12-11 13:46:03','审核管理','/shenqingmanage',54),(310,'10.33.197.35','2024-12-11 13:46:05','我的任务','/mytask',54),(311,'10.33.197.35','2024-12-11 13:46:08','审核管理','/shenqingmanage',54),(312,'10.33.197.35','2024-12-11 13:46:18','我的任务','/mytask',54),(313,'10.33.197.35','2024-12-11 13:46:21','审核管理','/shenqingmanage',54),(314,'10.33.197.35','2024-12-11 13:46:23','我的任务','/mytask',54),(315,'10.33.197.35','2024-12-11 13:46:25','审核管理','/shenqingmanage',54),(316,'10.33.197.35','2024-12-11 13:46:27','我的任务','/mytask',54),(317,'10.33.197.35','2024-12-11 13:46:30','审核管理','/shenqingmanage',54),(318,'10.33.197.35','2024-12-11 13:46:34','我的任务','/mytask',54),(319,'10.33.197.35','2024-12-11 13:46:37','审核管理','/shenqingmanage',54),(320,'10.33.197.35','2024-12-11 13:46:41','我的任务','/mytask',54),(321,'10.33.197.35','2024-12-11 13:46:43','审核管理','/shenqingmanage',54),(322,'10.33.197.35','2024-12-11 13:46:46','我的任务','/mytask',54),(323,'10.33.197.35','2024-12-11 13:46:49','审核管理','/shenqingmanage',54),(324,'10.33.197.35','2024-12-11 13:46:52','我的任务','/mytask',54),(325,'10.33.197.35','2024-12-11 13:47:58','审核管理','/shenqingmanage',54),(326,'10.33.197.35','2024-12-11 13:48:01','我的任务','/mytask',54),(327,'10.33.197.35','2024-12-11 13:48:03','审核管理','/shenqingmanage',54),(328,'10.33.197.35','2024-12-11 13:58:51','细化一览','/detaildrawmanage',42),(329,'10.33.197.35','2024-12-11 14:51:30','三单一览','/threebookmanage',42),(330,'10.33.197.35','2024-12-11 18:18:54','任务管理','/taskmanage',42),(331,'10.33.197.35','2024-12-11 18:18:54','三单一览','/threebookmanage',42),(332,'10.33.197.35','2024-12-12 15:24:11','三单一览','/threebookmanage',42),(333,'10.33.197.35','2024-12-12 15:47:00','任务管理','/taskmanage',42),(334,'10.33.197.35','2024-12-13 08:11:36','任务管理','/taskmanage',1),(335,'10.33.197.35','2024-12-13 08:11:38','我的任务','/mytask',1),(336,'10.33.197.35','2024-12-13 08:11:39','审核管理','/shenqingmanage',1),(337,'10.33.197.35','2024-12-13 08:11:55','三单一览','/threebookmanage',1),(338,'10.33.197.35','2024-12-13 08:52:49','三单一览','/threebookmanage',42),(339,'10.33.197.35','2024-12-14 17:18:22','任务管理','/taskmanage',42),(340,'10.33.197.35','2024-12-14 17:20:16','三单一览','/threebookmanage',42),(341,'10.33.197.35','2024-12-16 10:35:53','细化一览','/detaildrawmanage',54),(342,'10.33.197.35','2024-12-16 10:36:00','审核管理','/shenqingmanage',54),(343,'10.33.197.35','2024-12-16 10:36:04','我的任务','/mytask',54),(344,'10.33.197.35','2024-12-16 10:36:07','审核管理','/shenqingmanage',54),(345,'10.33.197.35','2024-12-16 10:36:10','我的任务','/mytask',54),(346,'10.33.197.35','2024-12-16 10:37:18','审核管理','/shenqingmanage',54),(347,'10.33.197.35','2024-12-16 10:37:24','我的任务','/mytask',54),(348,'10.33.197.35','2024-12-16 10:37:26','审核管理','/shenqingmanage',54),(349,'10.33.197.35','2024-12-16 10:37:52','我的任务','/mytask',54),(350,'10.33.197.35','2024-12-16 10:39:22','审核管理','/shenqingmanage',54),(351,'10.33.197.35','2024-12-16 10:39:27','我的任务','/mytask',54),(352,'10.33.197.35','2024-12-16 10:40:11','三单一览','/threebookmanage',54),(353,'10.33.197.35','2024-12-16 11:46:12','审核管理','/shenqingmanage',54),(354,'10.33.197.35','2024-12-16 11:46:16','我的任务','/mytask',54),(355,'10.33.197.35','2024-12-16 11:46:26','审核管理','/shenqingmanage',54),(356,'10.33.197.35','2024-12-16 11:46:30','我的任务','/mytask',54),(357,'10.33.197.35','2024-12-16 11:47:26','审核管理','/shenqingmanage',54),(358,'10.33.197.35','2024-12-16 11:47:29','我的任务','/mytask',54),(359,'10.33.197.35','2024-12-16 11:48:15','审核管理','/shenqingmanage',54),(360,'10.33.197.35','2024-12-16 11:48:18','我的任务','/mytask',54),(361,'10.33.197.35','2024-12-16 13:53:21','审核管理','/shenqingmanage',46),(362,'10.33.197.35','2024-12-16 13:53:22','我的任务','/mytask',46),(363,'10.33.197.35','2024-12-17 10:53:14','三单一览','/threebookmanage',43),(364,'10.33.197.35','2024-12-17 15:33:58','任务管理','/taskmanage',42),(365,'10.33.197.35','2024-12-17 15:54:37','我的任务','/mytask',42),(366,'10.33.197.35','2024-12-17 15:54:38','任务管理','/taskmanage',42),(367,'10.33.197.35','2024-12-17 16:05:45','审核管理','/shenqingmanage',54),(368,'10.33.197.35','2024-12-17 16:05:49','我的任务','/mytask',54),(369,'10.33.197.35','2024-12-17 16:05:51','审核管理','/shenqingmanage',54),(370,'10.33.197.35','2024-12-17 16:05:54','我的任务','/mytask',54),(371,'10.33.197.35','2024-12-17 16:06:01','审核管理','/shenqingmanage',54),(372,'10.33.197.35','2024-12-17 16:07:07','我的任务','/mytask',54),(373,'10.33.197.35','2024-12-17 16:07:08','审核管理','/shenqingmanage',54),(374,'10.33.197.35','2024-12-17 16:07:13','我的任务','/mytask',54),(375,'10.33.197.35','2024-12-17 16:07:26','审核管理','/shenqingmanage',54),(376,'10.33.197.35','2024-12-17 16:07:29','我的任务','/mytask',54),(377,'10.33.197.35','2024-12-17 16:07:31','审核管理','/shenqingmanage',54),(378,'10.33.197.35','2024-12-17 16:07:34','我的任务','/mytask',54),(379,'10.33.197.35','2024-12-17 16:07:37','审核管理','/shenqingmanage',54),(380,'10.33.197.35','2024-12-17 16:07:40','我的任务','/mytask',54),(381,'10.33.197.35','2024-12-17 16:07:43','审核管理','/shenqingmanage',54),(382,'10.33.197.35','2024-12-17 16:07:47','我的任务','/mytask',54),(383,'10.33.197.35','2024-12-17 16:07:50','审核管理','/shenqingmanage',54),(384,'10.33.197.35','2024-12-17 16:07:52','我的任务','/mytask',54),(385,'10.33.197.35','2024-12-17 16:10:37','审核管理','/shenqingmanage',54),(386,'10.33.197.35','2024-12-17 16:10:40','我的任务','/mytask',54),(387,'10.33.197.35','2024-12-17 16:10:45','审核管理','/shenqingmanage',54),(388,'10.33.197.35','2024-12-17 16:10:51','我的任务','/mytask',54),(389,'10.33.197.35','2024-12-17 16:10:55','审核管理','/shenqingmanage',54),(390,'10.33.197.35','2024-12-17 16:10:58','我的任务','/mytask',54),(391,'10.33.197.35','2024-12-17 16:11:01','审核管理','/shenqingmanage',54),(392,'10.33.197.35','2024-12-17 16:11:04','我的任务','/mytask',54),(393,'10.33.197.35','2024-12-17 16:11:06','审核管理','/shenqingmanage',54),(394,'10.33.197.35','2024-12-17 16:11:09','我的任务','/mytask',54),(395,'10.33.197.35','2024-12-17 16:11:12','审核管理','/shenqingmanage',54),(396,'10.33.197.35','2024-12-17 16:11:24','我的任务','/mytask',54),(397,'10.33.197.35','2024-12-17 16:11:29','审核管理','/shenqingmanage',54),(398,'10.33.197.35','2024-12-17 16:12:06','我的任务','/mytask',54),(399,'10.33.197.35','2024-12-17 16:12:09','审核管理','/shenqingmanage',54),(400,'10.33.197.35','2024-12-17 16:12:12','我的任务','/mytask',54),(401,'10.33.197.35','2024-12-17 16:12:13','审核管理','/shenqingmanage',54),(402,'10.33.197.35','2024-12-17 16:12:16','我的任务','/mytask',54),(403,'10.33.197.35','2024-12-17 16:12:18','审核管理','/shenqingmanage',54),(404,'10.33.197.35','2024-12-17 16:12:20','我的任务','/mytask',54),(405,'10.33.197.35','2024-12-17 16:12:22','审核管理','/shenqingmanage',54),(406,'10.33.197.35','2024-12-17 16:12:24','我的任务','/mytask',54),(407,'10.33.197.35','2024-12-17 16:12:26','审核管理','/shenqingmanage',54),(408,'10.33.197.35','2024-12-17 16:12:28','我的任务','/mytask',54),(409,'10.33.197.35','2024-12-17 16:12:29','审核管理','/shenqingmanage',54),(410,'10.33.197.35','2024-12-17 16:12:32','我的任务','/mytask',54),(411,'10.33.197.35','2024-12-17 16:12:33','审核管理','/shenqingmanage',54),(412,'10.33.197.35','2024-12-17 16:12:35','我的任务','/mytask',54),(413,'10.33.197.35','2024-12-17 16:12:37','审核管理','/shenqingmanage',54),(414,'10.33.197.35','2024-12-17 16:14:15','我的任务','/mytask',54),(415,'10.33.197.35','2024-12-17 16:14:17','审核管理','/shenqingmanage',54),(416,'10.33.197.35','2024-12-17 16:14:20','我的任务','/mytask',54),(417,'10.33.197.35','2024-12-17 16:14:21','审核管理','/shenqingmanage',54),(418,'10.33.197.35','2024-12-17 16:14:23','我的任务','/mytask',54),(419,'10.33.197.35','2024-12-17 16:14:25','审核管理','/shenqingmanage',54),(420,'10.33.197.35','2024-12-17 16:14:27','我的任务','/mytask',54),(421,'10.33.197.35','2024-12-17 16:14:30','审核管理','/shenqingmanage',54),(422,'10.33.197.35','2024-12-17 16:14:33','我的任务','/mytask',54),(423,'10.33.197.35','2024-12-17 16:14:34','审核管理','/shenqingmanage',54),(424,'10.33.197.35','2024-12-17 16:14:36','我的任务','/mytask',54),(425,'10.33.197.35','2024-12-17 16:14:44','审核管理','/shenqingmanage',54),(426,'10.33.197.35','2024-12-17 16:14:48','我的任务','/mytask',54),(427,'10.33.197.35','2024-12-17 16:14:49','审核管理','/shenqingmanage',54),(428,'10.33.197.35','2024-12-17 16:14:52','我的任务','/mytask',54),(429,'10.33.197.35','2024-12-17 16:14:53','审核管理','/shenqingmanage',54),(430,'10.33.197.35','2024-12-17 16:14:57','我的任务','/mytask',54),(431,'10.33.197.35','2024-12-17 16:15:03','审核管理','/shenqingmanage',54),(432,'10.33.197.35','2024-12-17 16:15:05','我的任务','/mytask',54),(433,'10.33.197.35','2024-12-17 16:15:06','审核管理','/shenqingmanage',54),(434,'10.33.197.35','2024-12-17 16:15:09','我的任务','/mytask',54),(435,'10.33.197.35','2024-12-17 16:15:12','审核管理','/shenqingmanage',54),(436,'10.33.197.35','2024-12-17 16:15:15','我的任务','/mytask',54),(437,'10.33.197.35','2024-12-17 16:15:16','审核管理','/shenqingmanage',54),(438,'10.33.197.35','2024-12-17 16:15:18','我的任务','/mytask',54),(439,'10.33.197.35','2024-12-17 16:15:19','审核管理','/shenqingmanage',54),(440,'10.33.197.35','2024-12-17 16:15:22','我的任务','/mytask',54),(441,'10.33.197.35','2024-12-17 16:15:23','审核管理','/shenqingmanage',54),(442,'10.33.197.35','2024-12-17 16:15:25','我的任务','/mytask',54),(443,'10.33.197.35','2024-12-17 16:15:26','审核管理','/shenqingmanage',54),(444,'10.33.197.35','2024-12-17 16:15:29','我的任务','/mytask',54),(445,'10.33.197.35','2024-12-17 16:15:30','审核管理','/shenqingmanage',54),(446,'10.33.197.35','2024-12-17 16:15:33','我的任务','/mytask',54),(447,'10.33.197.35','2024-12-17 16:15:34','审核管理','/shenqingmanage',54),(448,'10.33.197.35','2024-12-17 16:15:37','我的任务','/mytask',54),(449,'10.33.197.35','2024-12-17 16:15:38','审核管理','/shenqingmanage',54),(450,'10.33.197.35','2024-12-17 16:15:40','我的任务','/mytask',54),(451,'10.33.197.35','2024-12-17 16:15:41','审核管理','/shenqingmanage',54),(452,'10.33.197.35','2024-12-17 16:15:44','我的任务','/mytask',54),(453,'10.33.197.35','2024-12-17 16:15:46','审核管理','/shenqingmanage',54),(454,'10.33.197.35','2024-12-17 16:15:49','我的任务','/mytask',54),(455,'10.33.197.35','2024-12-17 16:15:52','审核管理','/shenqingmanage',54),(456,'10.33.197.35','2024-12-17 16:15:54','我的任务','/mytask',54),(457,'10.33.197.35','2024-12-17 16:15:56','审核管理','/shenqingmanage',54),(458,'10.33.197.35','2024-12-17 16:15:58','我的任务','/mytask',54),(459,'10.33.197.35','2024-12-17 16:15:59','审核管理','/shenqingmanage',54),(460,'10.33.197.35','2024-12-17 16:16:02','我的任务','/mytask',54),(461,'10.33.197.35','2024-12-17 16:16:03','审核管理','/shenqingmanage',54),(462,'10.33.197.35','2024-12-17 16:16:06','我的任务','/mytask',54),(463,'10.33.197.35','2024-12-17 16:16:08','审核管理','/shenqingmanage',54),(464,'10.33.197.35','2024-12-17 16:16:10','我的任务','/mytask',54),(465,'10.33.197.35','2024-12-17 16:16:13','审核管理','/shenqingmanage',54),(466,'10.33.197.35','2024-12-17 16:16:15','我的任务','/mytask',54),(467,'10.33.197.35','2024-12-17 16:16:18','审核管理','/shenqingmanage',54),(468,'10.33.197.35','2024-12-17 16:16:20','我的任务','/mytask',54),(469,'10.33.197.35','2024-12-17 16:16:21','审核管理','/shenqingmanage',54),(470,'10.33.197.35','2024-12-17 16:16:24','我的任务','/mytask',54),(471,'10.33.197.35','2024-12-17 16:16:27','审核管理','/shenqingmanage',54),(472,'10.33.197.35','2024-12-17 16:16:30','我的任务','/mytask',54),(473,'10.33.197.35','2024-12-17 16:16:31','审核管理','/shenqingmanage',54),(474,'10.33.197.35','2024-12-17 16:16:34','我的任务','/mytask',54),(475,'10.33.197.35','2024-12-17 16:16:35','审核管理','/shenqingmanage',54),(476,'10.33.197.35','2024-12-17 16:16:37','我的任务','/mytask',54),(477,'10.33.197.35','2024-12-17 16:16:39','审核管理','/shenqingmanage',54),(478,'10.33.197.35','2024-12-17 16:16:41','我的任务','/mytask',54),(479,'10.33.197.35','2024-12-17 16:16:43','审核管理','/shenqingmanage',54),(480,'10.33.197.35','2024-12-17 16:16:47','我的任务','/mytask',54),(481,'10.33.197.35','2024-12-17 16:16:48','审核管理','/shenqingmanage',54),(482,'10.33.197.35','2024-12-17 16:16:50','我的任务','/mytask',54),(483,'10.33.197.35','2024-12-17 16:16:51','审核管理','/shenqingmanage',54),(484,'10.33.197.35','2024-12-17 16:16:54','我的任务','/mytask',54),(485,'10.33.197.35','2024-12-17 16:16:55','审核管理','/shenqingmanage',54),(486,'10.33.197.35','2024-12-17 16:16:58','我的任务','/mytask',54),(487,'10.33.197.35','2024-12-17 16:16:59','审核管理','/shenqingmanage',54),(488,'10.33.197.35','2024-12-17 16:17:01','我的任务','/mytask',54),(489,'10.33.197.35','2024-12-17 16:17:02','审核管理','/shenqingmanage',54),(490,'10.33.197.35','2024-12-17 16:17:04','我的任务','/mytask',54),(491,'10.33.197.35','2024-12-17 16:17:05','审核管理','/shenqingmanage',54),(492,'10.33.197.35','2024-12-17 16:17:07','我的任务','/mytask',54),(493,'10.33.197.35','2024-12-17 16:17:08','审核管理','/shenqingmanage',54),(494,'10.33.197.35','2024-12-17 16:17:11','我的任务','/mytask',54),(495,'10.33.197.35','2024-12-17 16:17:12','审核管理','/shenqingmanage',54),(496,'10.33.197.35','2024-12-17 16:17:14','我的任务','/mytask',54),(497,'10.33.197.35','2024-12-17 16:17:15','审核管理','/shenqingmanage',54),(498,'10.33.197.35','2024-12-17 16:17:17','我的任务','/mytask',54),(499,'10.33.197.35','2024-12-17 16:17:19','审核管理','/shenqingmanage',54),(500,'10.33.197.35','2024-12-17 16:17:20','我的任务','/mytask',54),(501,'10.33.197.35','2024-12-17 16:17:22','审核管理','/shenqingmanage',54),(502,'10.33.197.35','2024-12-17 16:17:24','我的任务','/mytask',54),(503,'10.33.197.35','2024-12-17 16:17:25','审核管理','/shenqingmanage',54),(504,'10.33.197.35','2024-12-17 16:17:27','我的任务','/mytask',54),(505,'10.33.197.35','2024-12-17 16:17:28','审核管理','/shenqingmanage',54),(506,'10.33.197.35','2024-12-17 16:17:31','我的任务','/mytask',54),(507,'10.33.197.35','2024-12-17 16:17:32','审核管理','/shenqingmanage',54),(508,'10.33.197.35','2024-12-17 16:17:34','我的任务','/mytask',54),(509,'10.33.197.35','2024-12-17 16:17:36','审核管理','/shenqingmanage',54),(510,'10.33.197.35','2024-12-17 16:17:38','我的任务','/mytask',54),(511,'10.33.197.35','2024-12-17 16:17:40','审核管理','/shenqingmanage',54),(512,'10.33.197.35','2024-12-17 16:17:42','我的任务','/mytask',54),(513,'10.33.197.35','2024-12-17 16:17:45','审核管理','/shenqingmanage',54),(514,'10.33.197.35','2024-12-17 16:17:48','我的任务','/mytask',54),(515,'10.33.197.35','2024-12-17 16:17:51','审核管理','/shenqingmanage',54),(516,'10.33.197.35','2024-12-17 16:17:54','我的任务','/mytask',54),(517,'10.33.197.35','2024-12-17 16:17:56','审核管理','/shenqingmanage',54),(518,'10.33.197.35','2024-12-17 16:18:00','我的任务','/mytask',54),(519,'10.33.197.35','2024-12-17 16:18:02','审核管理','/shenqingmanage',54),(520,'10.33.197.35','2024-12-17 16:18:04','我的任务','/mytask',54),(521,'10.33.197.35','2024-12-17 16:18:06','审核管理','/shenqingmanage',54),(522,'10.33.197.35','2024-12-17 16:18:08','我的任务','/mytask',54),(523,'10.33.197.35','2024-12-17 16:18:09','审核管理','/shenqingmanage',54),(524,'10.33.197.35','2024-12-17 16:18:12','我的任务','/mytask',54),(525,'10.33.197.35','2024-12-17 16:18:13','审核管理','/shenqingmanage',54),(526,'10.33.197.35','2024-12-17 16:18:15','我的任务','/mytask',54),(527,'10.33.197.35','2024-12-17 16:18:16','审核管理','/shenqingmanage',54),(528,'10.33.197.35','2024-12-17 16:18:19','我的任务','/mytask',54),(529,'10.33.197.35','2024-12-17 16:18:20','审核管理','/shenqingmanage',54),(530,'10.33.197.35','2024-12-17 16:18:23','我的任务','/mytask',54),(531,'10.33.197.35','2024-12-17 16:18:24','审核管理','/shenqingmanage',54),(532,'10.33.197.35','2024-12-17 16:18:27','我的任务','/mytask',54),(533,'10.33.197.35','2024-12-17 16:18:29','审核管理','/shenqingmanage',54),(534,'10.33.197.35','2024-12-17 16:18:31','我的任务','/mytask',54),(535,'10.33.197.35','2024-12-17 16:18:33','审核管理','/shenqingmanage',54),(536,'10.33.197.35','2024-12-17 16:18:35','我的任务','/mytask',54),(537,'10.33.197.35','2024-12-17 16:18:36','审核管理','/shenqingmanage',54),(538,'10.33.197.35','2024-12-17 16:18:38','我的任务','/mytask',54),(539,'10.33.197.35','2024-12-17 16:18:39','审核管理','/shenqingmanage',54),(540,'10.33.197.35','2024-12-17 16:18:41','我的任务','/mytask',54),(541,'10.33.197.35','2024-12-17 16:18:43','审核管理','/shenqingmanage',54),(542,'10.33.197.35','2024-12-17 16:18:45','我的任务','/mytask',54),(543,'10.33.197.35','2024-12-17 16:18:49','审核管理','/shenqingmanage',54),(544,'10.33.197.35','2024-12-17 16:18:51','我的任务','/mytask',54),(545,'10.33.197.35','2024-12-17 16:18:54','审核管理','/shenqingmanage',54),(546,'10.33.197.35','2024-12-17 16:18:56','我的任务','/mytask',54),(547,'10.33.197.35','2024-12-17 16:18:57','审核管理','/shenqingmanage',54),(548,'10.33.197.35','2024-12-17 16:18:59','我的任务','/mytask',54),(549,'10.33.197.35','2024-12-17 16:19:00','审核管理','/shenqingmanage',54),(550,'10.33.197.35','2024-12-17 16:19:03','我的任务','/mytask',54),(551,'10.33.197.35','2024-12-17 16:19:04','审核管理','/shenqingmanage',54),(552,'10.33.197.35','2024-12-17 16:19:06','我的任务','/mytask',54),(553,'10.33.197.35','2024-12-17 16:19:09','审核管理','/shenqingmanage',54),(554,'10.33.197.35','2024-12-17 16:19:12','我的任务','/mytask',54),(555,'10.33.197.35','2024-12-17 16:19:15','审核管理','/shenqingmanage',54),(556,'10.33.197.35','2024-12-17 16:19:17','我的任务','/mytask',54),(557,'10.33.197.35','2024-12-17 16:19:20','审核管理','/shenqingmanage',54),(558,'10.33.197.35','2024-12-17 16:19:24','我的任务','/mytask',54),(559,'10.33.197.35','2024-12-17 16:19:25','审核管理','/shenqingmanage',54),(560,'10.33.197.35','2024-12-17 16:19:28','我的任务','/mytask',54),(561,'10.33.197.35','2024-12-17 16:19:29','审核管理','/shenqingmanage',54),(562,'10.33.197.35','2024-12-17 16:19:32','我的任务','/mytask',54),(563,'10.33.197.35','2024-12-17 16:19:34','审核管理','/shenqingmanage',54),(564,'10.33.197.35','2024-12-17 16:19:36','我的任务','/mytask',54),(565,'10.33.197.35','2024-12-17 16:19:38','审核管理','/shenqingmanage',54),(566,'10.33.197.35','2024-12-17 16:19:40','我的任务','/mytask',54),(567,'10.33.197.35','2024-12-17 16:19:44','审核管理','/shenqingmanage',54),(568,'10.33.197.35','2024-12-17 16:19:46','我的任务','/mytask',54),(569,'10.33.197.35','2024-12-17 16:19:48','审核管理','/shenqingmanage',54),(570,'10.33.197.35','2024-12-17 16:19:50','我的任务','/mytask',54),(571,'10.33.197.35','2024-12-17 16:19:52','审核管理','/shenqingmanage',54),(572,'10.33.197.35','2024-12-17 16:19:55','我的任务','/mytask',54),(573,'10.33.197.35','2024-12-17 16:19:56','审核管理','/shenqingmanage',54),(574,'10.33.197.35','2024-12-17 16:19:59','我的任务','/mytask',54),(575,'10.33.197.35','2024-12-17 16:20:00','审核管理','/shenqingmanage',54),(576,'10.33.197.35','2024-12-17 16:20:02','我的任务','/mytask',54),(577,'10.33.197.35','2024-12-17 16:20:05','审核管理','/shenqingmanage',54),(578,'10.33.197.35','2024-12-17 16:20:11','我的任务','/mytask',54),(579,'10.33.197.35','2024-12-17 16:20:12','审核管理','/shenqingmanage',54),(580,'10.33.197.35','2024-12-17 16:20:14','我的任务','/mytask',54),(581,'10.33.197.35','2024-12-17 16:20:16','审核管理','/shenqingmanage',54),(582,'10.33.197.35','2024-12-17 16:20:18','我的任务','/mytask',54),(583,'10.33.197.35','2024-12-17 16:20:20','审核管理','/shenqingmanage',54),(584,'10.33.197.35','2024-12-17 16:20:22','我的任务','/mytask',54),(585,'10.33.197.35','2024-12-17 16:20:24','审核管理','/shenqingmanage',54),(586,'10.33.197.35','2024-12-17 16:20:27','我的任务','/mytask',54),(587,'10.33.197.35','2024-12-17 16:20:28','审核管理','/shenqingmanage',54),(588,'10.33.197.35','2024-12-17 16:20:30','我的任务','/mytask',54),(589,'10.33.197.35','2024-12-17 16:20:31','审核管理','/shenqingmanage',54),(590,'10.33.197.35','2024-12-17 16:20:34','我的任务','/mytask',54),(591,'10.33.197.35','2024-12-17 16:20:35','审核管理','/shenqingmanage',54),(592,'10.33.197.35','2024-12-17 16:20:38','我的任务','/mytask',54),(593,'10.33.197.35','2024-12-17 16:20:39','审核管理','/shenqingmanage',54),(594,'10.33.197.35','2024-12-17 16:20:41','我的任务','/mytask',54),(595,'10.33.197.35','2024-12-17 16:20:42','审核管理','/shenqingmanage',54),(596,'10.33.197.35','2024-12-17 16:20:44','我的任务','/mytask',54),(597,'10.33.197.35','2024-12-17 16:20:47','审核管理','/shenqingmanage',54),(598,'10.33.197.35','2024-12-17 16:20:50','我的任务','/mytask',54),(599,'10.33.197.35','2024-12-17 16:20:51','审核管理','/shenqingmanage',54),(600,'10.33.197.35','2024-12-17 16:20:53','我的任务','/mytask',54),(601,'10.33.197.35','2024-12-17 16:20:55','审核管理','/shenqingmanage',54),(602,'10.33.197.35','2024-12-17 16:20:57','我的任务','/mytask',54),(603,'10.33.197.35','2024-12-17 16:20:58','审核管理','/shenqingmanage',54),(604,'10.33.197.35','2024-12-17 16:21:02','我的任务','/mytask',54),(605,'10.33.197.35','2024-12-17 16:21:03','审核管理','/shenqingmanage',54),(606,'10.33.197.35','2024-12-17 16:21:05','我的任务','/mytask',54),(607,'10.33.197.35','2024-12-17 16:21:07','审核管理','/shenqingmanage',54),(608,'10.33.197.35','2024-12-17 16:21:09','我的任务','/mytask',54),(609,'10.33.197.35','2024-12-17 16:21:10','审核管理','/shenqingmanage',54),(610,'10.33.197.35','2024-12-17 16:21:13','我的任务','/mytask',54),(611,'10.33.197.35','2024-12-17 16:21:15','审核管理','/shenqingmanage',54),(612,'10.33.197.35','2024-12-17 16:21:20','我的任务','/mytask',54),(613,'10.33.197.35','2024-12-17 16:21:22','审核管理','/shenqingmanage',54),(614,'10.33.197.35','2024-12-17 16:21:24','我的任务','/mytask',54),(615,'10.33.197.35','2024-12-17 16:21:25','审核管理','/shenqingmanage',54),(616,'10.33.197.35','2024-12-17 16:21:27','我的任务','/mytask',54),(617,'10.33.197.35','2024-12-17 16:21:28','审核管理','/shenqingmanage',54),(618,'10.33.197.35','2024-12-17 16:21:30','我的任务','/mytask',54),(619,'10.33.197.35','2024-12-17 16:21:31','审核管理','/shenqingmanage',54),(620,'10.33.197.35','2024-12-17 16:21:34','我的任务','/mytask',54),(621,'10.33.197.35','2024-12-17 16:21:37','审核管理','/shenqingmanage',54),(622,'10.33.197.35','2024-12-17 16:21:40','我的任务','/mytask',54),(623,'10.33.197.35','2024-12-17 16:21:41','审核管理','/shenqingmanage',54),(624,'10.33.197.35','2024-12-17 16:21:44','我的任务','/mytask',54),(625,'10.33.197.35','2024-12-17 16:21:46','审核管理','/shenqingmanage',54),(626,'10.33.197.35','2024-12-17 16:21:48','我的任务','/mytask',54),(627,'10.33.197.35','2024-12-17 16:21:49','审核管理','/shenqingmanage',54),(628,'10.33.197.35','2024-12-17 16:21:52','我的任务','/mytask',54),(629,'10.33.197.35','2024-12-17 16:21:53','审核管理','/shenqingmanage',54),(630,'10.33.197.35','2024-12-17 16:21:56','我的任务','/mytask',54),(631,'10.33.197.35','2024-12-17 16:21:57','审核管理','/shenqingmanage',54),(632,'10.33.197.35','2024-12-17 16:21:59','我的任务','/mytask',54),(633,'10.33.197.35','2024-12-17 16:22:01','审核管理','/shenqingmanage',54),(634,'10.33.197.35','2024-12-17 16:22:03','我的任务','/mytask',54),(635,'10.33.197.35','2024-12-17 16:22:05','审核管理','/shenqingmanage',54),(636,'10.33.197.35','2024-12-17 16:22:08','我的任务','/mytask',54),(637,'10.33.197.35','2024-12-17 16:22:09','审核管理','/shenqingmanage',54),(638,'10.33.197.35','2024-12-17 16:22:13','我的任务','/mytask',54),(639,'10.33.197.35','2024-12-17 16:25:19','审核管理','/shenqingmanage',54),(640,'10.33.197.35','2024-12-17 16:25:21','我的任务','/mytask',54),(641,'10.33.197.35','2024-12-17 16:25:23','审核管理','/shenqingmanage',54),(642,'10.33.197.35','2024-12-17 16:25:28','我的任务','/mytask',54),(643,'10.33.197.35','2024-12-17 16:37:36','我的任务','/mytask',42),(644,'10.33.197.35','2024-12-17 16:37:40','任务管理','/taskmanage',42),(645,'10.33.197.35','2024-12-17 16:37:44','我的任务','/mytask',42),(646,'10.33.197.35','2024-12-17 16:37:52','三单一览','/threebookmanage',42),(647,'10.33.197.35','2024-12-17 16:37:57','细化一览','/detaildrawmanage',42),(648,'10.33.197.35','2024-12-17 16:38:25','任务管理','/taskmanage',42),(649,'10.33.197.35','2024-12-17 16:38:25','三单一览','/threebookmanage',42),(650,'10.33.197.35','2024-12-17 16:43:23','审核管理','/shenqingmanage',54),(651,'10.33.197.35','2024-12-17 16:43:24','我的任务','/mytask',54),(652,'10.33.197.35','2024-12-18 09:22:33','三单一览','/threebookmanage',42),(653,'10.33.197.35','2024-12-18 11:10:35','细化一览','/detaildrawmanage',42),(654,'10.33.197.35','2024-12-18 15:44:16','三单一览','/threebookmanage',46),(655,'10.33.197.35','2024-12-19 08:27:15','任务管理','/taskmanage',42),(656,'10.33.197.35','2024-12-19 08:28:45','我的任务','/mytask',46),(657,'10.33.197.35','2024-12-19 08:39:00','三单一览','/threebookmanage',42),(658,'10.33.197.35','2024-12-19 11:47:55','三单一览','/threebookmanage',47),(659,'10.33.197.35','2024-12-19 11:47:57','细化一览','/detaildrawmanage',47),(660,'10.33.197.35','2024-12-19 11:58:32','三单一览','/threebookmanage',47),(661,'10.33.197.35','2024-12-19 13:36:05','我的任务','/mytask',47),(662,'10.33.197.35','2024-12-19 15:32:48','三单一览','/threebookmanage',46),(663,'10.33.197.35','2024-12-19 15:34:27','任务管理','/taskmanage',42),(664,'10.33.197.35','2024-12-19 15:34:29','三单一览','/threebookmanage',42),(665,'10.33.197.35','2024-12-19 15:34:48','任务管理','/taskmanage',42),(666,'10.33.197.35','2024-12-19 15:36:23','三单一览','/threebookmanage',42),(667,'10.33.197.35','2024-12-19 16:15:23','任务管理','/taskmanage',42),(668,'10.33.197.35','2024-12-19 16:22:08','三单一览','/threebookmanage',42),(669,'10.33.197.35','2024-12-19 18:01:50','三单一览','/threebookmanage',47),(670,'10.33.197.35','2024-12-20 08:46:04','我的任务','/mytask',47),(671,'10.33.197.35','2024-12-20 09:12:41','我的任务','/mytask',46),(672,'10.33.197.35','2024-12-20 09:12:48','三单一览','/threebookmanage',46),(673,'10.33.197.35','2024-12-20 09:15:46','我的任务','/mytask',46),(674,'10.33.197.35','2024-12-20 09:31:04','三单一览','/threebookmanage',46),(675,'10.33.197.35','2024-12-20 13:57:27','三单一览','/threebookmanage',47),(676,'10.33.197.35','2024-12-20 14:08:33','我的任务','/mytask',46),(677,'10.33.197.35','2024-12-20 16:22:01','任务管理','/taskmanage',42),(678,'10.33.197.35','2024-12-20 16:27:23','三单一览','/threebookmanage',42),(679,'10.33.197.35','2024-12-23 08:18:45','三单一览','/threebookmanage',46),(680,'10.33.197.35','2024-12-23 08:20:36','我的任务','/mytask',46),(681,'10.33.197.35','2024-12-25 09:41:42','任务管理','/taskmanage',42),(682,'10.33.197.35','2024-12-25 09:42:37','三单一览','/threebookmanage',42),(683,'10.33.197.35','2024-12-25 09:49:28','细化一览','/detaildrawmanage',42),(684,'10.33.197.35','2024-12-25 11:43:54','我的任务','/mytask',47),(685,'10.33.197.35','2024-12-25 11:45:19','三单一览','/threebookmanage',47),(686,'10.33.197.35','2024-12-25 16:44:55','我的任务','/mytask',47),(687,'10.33.197.35','2024-12-26 15:21:07','三单一览','/threebookmanage',42),(688,'10.33.197.35','2024-12-26 15:21:08','任务管理','/taskmanage',42),(689,'10.33.197.35','2024-12-26 15:21:08','三单一览','/threebookmanage',42),(690,'10.33.197.35','2024-12-26 15:22:34','三单一览','/threebookmanage',42),(691,'10.33.197.35','2024-12-26 16:15:08','我的任务','/mytask',43),(692,'10.33.197.35','2024-12-28 08:14:50','审核管理','/shenqingmanage',54),(693,'10.33.197.35','2024-12-28 08:14:54','我的任务','/mytask',54),(694,'10.33.197.35','2024-12-28 08:14:56','审核管理','/shenqingmanage',54),(695,'10.33.197.35','2024-12-28 08:15:01','我的任务','/mytask',54),(696,'10.33.197.35','2024-12-28 08:15:02','审核管理','/shenqingmanage',54),(697,'10.33.197.35','2024-12-28 08:15:06','我的任务','/mytask',54),(698,'10.33.197.35','2024-12-28 08:15:06','审核管理','/shenqingmanage',54),(699,'10.33.197.35','2024-12-28 08:15:31','审核管理','/shenqingmanage',54),(700,'10.33.197.35','2024-12-28 08:58:07','我的任务','/mytask',54),(701,'10.33.197.35','2024-12-28 08:58:09','审核管理','/shenqingmanage',54),(702,'10.33.197.35','2024-12-28 08:58:12','我的任务','/mytask',54),(703,'10.33.197.35','2024-12-28 10:00:16','任务管理','/taskmanage',42),(704,'10.33.197.35','2024-12-28 10:06:05','三单一览','/threebookmanage',42),(705,'10.33.197.35','2024-12-28 15:08:43','通讯录','/addrmanage',59),(706,'10.33.197.35','2024-12-28 15:25:25','我的任务','/mytask',59),(707,'10.33.197.35','2024-12-30 09:43:00','三单一览','/threebookmanage',54),(708,'10.33.197.35','2024-12-31 09:43:51','任务管理','/taskmanage',42),(709,'10.33.197.35','2024-12-31 09:44:22','三单一览','/threebookmanage',42),(710,'10.33.197.35','2024-12-31 17:02:14','通讯录','/addrmanage',59),(711,'10.33.197.35','2024-12-31 17:02:42','我的任务','/mytask',59),(712,'10.33.197.35','2025-01-01 11:32:55','三单一览','/threebookmanage',47),(713,'10.33.197.35','2025-01-01 11:40:20','我的任务','/mytask',47),(714,'10.33.197.35','2025-01-02 15:44:45','审核管理','/shenqingmanage',46),(715,'10.33.197.35','2025-01-02 18:19:24','我的任务','/mytask',46),(716,'10.33.197.35','2025-01-03 16:28:41','任务管理','/taskmanage',42),(717,'10.33.197.35','2025-01-03 16:30:34','三单一览','/threebookmanage',42),(718,'10.33.197.35','2025-01-04 10:45:17','细化一览','/detaildrawmanage',42),(719,'10.33.197.35','2025-01-04 11:55:18','三单一览','/threebookmanage',46),(720,'10.33.197.35','2025-01-04 14:48:56','任务管理','/taskmanage',42),(721,'10.33.197.35','2025-01-04 15:27:26','我的任务','/mytask',46),(722,'10.33.197.35','2025-01-04 16:09:44','三单一览','/threebookmanage',42),(723,'10.33.197.35','2025-01-07 14:46:22','三单一览','/threebookmanage',43),(724,'10.33.197.35','2025-01-07 14:50:39','我的任务','/mytask',43),(725,'10.33.197.35','2025-01-07 14:51:02','三单一览','/threebookmanage',43),(726,'10.33.197.35','2025-01-07 17:01:06','任务管理','/taskmanage',42),(727,'10.33.197.35','2025-01-08 08:55:08','三单一览','/threebookmanage',42),(728,'10.33.197.35','2025-01-08 08:55:14','任务管理','/taskmanage',42),(729,'10.33.197.35','2025-01-08 08:55:14','三单一览','/threebookmanage',42),(730,'10.33.197.35','2025-01-08 08:57:16','三单一览','/threebookmanage',42),(731,'10.33.197.35','2025-01-08 08:57:50','任务管理','/taskmanage',42),(732,'10.33.197.35','2025-01-08 09:01:18','三单一览','/threebookmanage',42),(733,'10.33.197.35','2025-01-08 09:02:13','任务管理','/taskmanage',42),(734,'10.33.197.35','2025-01-08 09:10:14','我的任务','/mytask',43),(735,'10.33.197.35','2025-01-08 09:38:34','三单一览','/threebookmanage',42),(736,'10.33.197.35','2025-01-08 10:10:31','任务管理','/taskmanage',42),(737,'10.33.197.35','2025-01-08 10:32:40','审核管理','/shenqingmanage',54),(738,'10.33.197.35','2025-01-08 10:32:44','我的任务','/mytask',54),(739,'10.33.197.35','2025-01-08 10:32:46','审核管理','/shenqingmanage',54),(740,'10.33.197.35','2025-01-08 10:32:49','我的任务','/mytask',54),(741,'10.33.197.35','2025-01-08 10:33:48','审核管理','/shenqingmanage',54),(742,'10.33.197.35','2025-01-08 10:33:51','我的任务','/mytask',54),(743,'10.33.197.35','2025-01-08 10:33:52','审核管理','/shenqingmanage',54),(744,'10.33.197.35','2025-01-08 10:33:55','我的任务','/mytask',54),(745,'10.33.197.35','2025-01-08 10:33:57','审核管理','/shenqingmanage',54),(746,'10.33.197.35','2025-01-08 10:33:59','我的任务','/mytask',54),(747,'10.33.197.35','2025-01-08 10:34:01','审核管理','/shenqingmanage',54),(748,'10.33.197.35','2025-01-08 10:34:03','我的任务','/mytask',54),(749,'10.33.197.35','2025-01-08 10:34:04','审核管理','/shenqingmanage',54),(750,'10.33.197.35','2025-01-08 10:34:07','我的任务','/mytask',54),(751,'10.33.197.35','2025-01-08 10:34:08','审核管理','/shenqingmanage',54),(752,'10.33.197.35','2025-01-08 10:34:11','我的任务','/mytask',54),(753,'10.33.197.35','2025-01-08 10:34:12','审核管理','/shenqingmanage',54),(754,'10.33.197.35','2025-01-08 10:34:15','我的任务','/mytask',54),(755,'10.33.197.35','2025-01-08 10:34:16','审核管理','/shenqingmanage',54),(756,'10.33.197.35','2025-01-08 10:34:19','我的任务','/mytask',54),(757,'10.33.197.35','2025-01-08 10:34:20','审核管理','/shenqingmanage',54),(758,'10.33.197.35','2025-01-08 10:34:23','我的任务','/mytask',54),(759,'10.33.197.35','2025-01-08 10:34:25','审核管理','/shenqingmanage',54),(760,'10.33.197.35','2025-01-08 10:34:28','我的任务','/mytask',54),(761,'10.33.197.35','2025-01-08 10:34:30','审核管理','/shenqingmanage',54),(762,'10.33.197.35','2025-01-08 10:34:37','我的任务','/mytask',54),(763,'10.33.197.35','2025-01-08 10:34:42','审核管理','/shenqingmanage',54),(764,'10.33.197.35','2025-01-08 10:34:45','我的任务','/mytask',54),(765,'10.33.197.35','2025-01-08 10:34:46','审核管理','/shenqingmanage',54),(766,'10.33.197.35','2025-01-08 10:34:49','我的任务','/mytask',54),(767,'10.33.197.35','2025-01-08 10:34:50','审核管理','/shenqingmanage',54),(768,'10.33.197.35','2025-01-08 10:34:53','我的任务','/mytask',54),(769,'10.33.197.35','2025-01-08 10:34:55','审核管理','/shenqingmanage',54),(770,'10.33.197.35','2025-01-08 10:34:57','我的任务','/mytask',54),(771,'10.33.197.35','2025-01-08 10:34:59','审核管理','/shenqingmanage',54),(772,'10.33.197.35','2025-01-08 10:35:01','我的任务','/mytask',54),(773,'10.33.197.35','2025-01-08 10:35:03','审核管理','/shenqingmanage',54),(774,'10.33.197.35','2025-01-08 10:35:05','我的任务','/mytask',54),(775,'10.33.197.35','2025-01-08 10:35:09','审核管理','/shenqingmanage',54),(776,'10.33.197.35','2025-01-08 10:35:13','我的任务','/mytask',54),(777,'10.33.197.35','2025-01-08 10:35:15','审核管理','/shenqingmanage',54),(778,'10.33.197.35','2025-01-08 10:35:17','我的任务','/mytask',54),(779,'10.33.197.35','2025-01-08 10:35:18','审核管理','/shenqingmanage',54),(780,'10.33.197.35','2025-01-08 10:35:21','我的任务','/mytask',54),(781,'10.33.197.35','2025-01-08 10:35:22','审核管理','/shenqingmanage',54),(782,'10.33.197.35','2025-01-08 10:35:25','我的任务','/mytask',54),(783,'10.33.197.35','2025-01-08 10:35:27','审核管理','/shenqingmanage',54),(784,'10.33.197.35','2025-01-08 10:35:29','我的任务','/mytask',54),(785,'10.33.197.35','2025-01-08 10:35:31','审核管理','/shenqingmanage',54),(786,'10.33.197.35','2025-01-08 10:35:33','我的任务','/mytask',54),(787,'10.33.197.35','2025-01-08 10:35:35','审核管理','/shenqingmanage',54),(788,'10.33.197.35','2025-01-08 10:35:37','我的任务','/mytask',54),(789,'10.33.197.35','2025-01-08 10:35:39','审核管理','/shenqingmanage',54),(790,'10.33.197.35','2025-01-08 10:35:42','我的任务','/mytask',54),(791,'10.33.197.35','2025-01-08 10:35:43','审核管理','/shenqingmanage',54),(792,'10.33.197.35','2025-01-08 10:35:45','我的任务','/mytask',54),(793,'10.33.197.35','2025-01-08 10:35:51','审核管理','/shenqingmanage',54),(794,'10.33.197.35','2025-01-08 10:35:54','我的任务','/mytask',54),(795,'10.33.197.35','2025-01-08 10:35:55','审核管理','/shenqingmanage',54),(796,'10.33.197.35','2025-01-08 10:35:58','我的任务','/mytask',54),(797,'10.33.197.35','2025-01-08 10:35:59','审核管理','/shenqingmanage',54),(798,'10.33.197.35','2025-01-08 10:36:02','我的任务','/mytask',54),(799,'10.33.197.35','2025-01-08 10:36:03','审核管理','/shenqingmanage',54),(800,'10.33.197.35','2025-01-08 10:36:06','我的任务','/mytask',54),(801,'10.33.197.35','2025-01-08 10:36:08','审核管理','/shenqingmanage',54),(802,'10.33.197.35','2025-01-08 10:36:10','我的任务','/mytask',54),(803,'10.33.197.35','2025-01-08 10:36:12','审核管理','/shenqingmanage',54),(804,'10.33.197.35','2025-01-08 10:36:14','我的任务','/mytask',54),(805,'10.33.197.35','2025-01-08 10:36:16','审核管理','/shenqingmanage',54),(806,'10.33.197.35','2025-01-08 10:36:19','我的任务','/mytask',54),(807,'10.33.197.35','2025-01-08 10:36:21','审核管理','/shenqingmanage',54),(808,'10.33.197.35','2025-01-08 10:36:24','我的任务','/mytask',54),(809,'10.33.197.35','2025-01-08 10:36:26','审核管理','/shenqingmanage',54),(810,'10.33.197.35','2025-01-08 10:36:29','我的任务','/mytask',54),(811,'10.33.197.35','2025-01-08 10:36:30','审核管理','/shenqingmanage',54),(812,'10.33.197.35','2025-01-08 10:36:33','我的任务','/mytask',54),(813,'10.33.197.35','2025-01-08 10:36:35','审核管理','/shenqingmanage',54),(814,'10.33.197.35','2025-01-08 10:36:37','我的任务','/mytask',54),(815,'10.33.197.35','2025-01-08 10:36:39','审核管理','/shenqingmanage',54),(816,'10.33.197.35','2025-01-08 10:36:41','我的任务','/mytask',54),(817,'10.33.197.35','2025-01-08 10:36:43','审核管理','/shenqingmanage',54),(818,'10.33.197.35','2025-01-08 10:36:45','我的任务','/mytask',54),(819,'10.33.197.35','2025-01-08 10:36:47','审核管理','/shenqingmanage',54),(820,'10.33.197.35','2025-01-08 10:36:50','我的任务','/mytask',54),(821,'10.33.197.35','2025-01-08 10:36:52','审核管理','/shenqingmanage',54),(822,'10.33.197.35','2025-01-08 10:36:55','我的任务','/mytask',54),(823,'10.33.197.35','2025-01-08 10:37:26','审核管理','/shenqingmanage',54),(824,'10.33.197.35','2025-01-08 10:37:29','我的任务','/mytask',54),(825,'10.33.197.35','2025-01-08 10:37:31','审核管理','/shenqingmanage',54),(826,'10.33.197.35','2025-01-08 10:37:34','我的任务','/mytask',54),(827,'10.33.197.35','2025-01-08 10:37:34','审核管理','/shenqingmanage',54),(828,'10.33.197.35','2025-01-08 10:37:35','审核管理','/shenqingmanage',54),(829,'10.33.197.35','2025-01-08 10:37:37','我的任务','/mytask',54),(830,'10.33.197.35','2025-01-08 10:37:38','审核管理','/shenqingmanage',54),(831,'10.33.197.35','2025-01-08 10:37:40','我的任务','/mytask',54),(832,'10.33.197.35','2025-01-08 10:37:42','审核管理','/shenqingmanage',54),(833,'10.33.197.35','2025-01-08 10:37:44','我的任务','/mytask',54),(834,'10.33.197.35','2025-01-08 10:37:45','审核管理','/shenqingmanage',54),(835,'10.33.197.35','2025-01-08 10:37:48','我的任务','/mytask',54),(836,'10.33.197.35','2025-01-08 10:37:49','审核管理','/shenqingmanage',54),(837,'10.33.197.35','2025-01-08 10:37:53','我的任务','/mytask',54),(838,'10.33.197.35','2025-01-08 10:37:54','审核管理','/shenqingmanage',54),(839,'10.33.197.35','2025-01-08 10:38:00','我的任务','/mytask',54),(840,'10.33.197.35','2025-01-08 10:38:01','审核管理','/shenqingmanage',54),(841,'10.33.197.35','2025-01-08 10:38:03','我的任务','/mytask',54),(842,'10.33.197.35','2025-01-08 10:38:05','审核管理','/shenqingmanage',54),(843,'10.33.197.35','2025-01-08 10:38:08','我的任务','/mytask',54),(844,'10.33.197.35','2025-01-08 10:38:10','审核管理','/shenqingmanage',54),(845,'10.33.197.35','2025-01-08 10:38:15','我的任务','/mytask',54),(846,'10.33.197.35','2025-01-08 10:38:16','审核管理','/shenqingmanage',54),(847,'10.33.197.35','2025-01-08 10:38:19','我的任务','/mytask',54),(848,'10.33.197.35','2025-01-08 10:38:20','审核管理','/shenqingmanage',54),(849,'10.33.197.35','2025-01-08 10:38:22','我的任务','/mytask',54),(850,'10.33.197.35','2025-01-08 10:38:23','审核管理','/shenqingmanage',54),(851,'10.33.197.35','2025-01-08 10:38:26','我的任务','/mytask',54),(852,'10.33.197.35','2025-01-08 10:38:27','审核管理','/shenqingmanage',54),(853,'10.33.197.35','2025-01-08 10:38:29','我的任务','/mytask',54),(854,'10.33.197.35','2025-01-08 10:38:30','审核管理','/shenqingmanage',54),(855,'10.33.197.35','2025-01-08 10:38:33','我的任务','/mytask',54),(856,'10.33.197.35','2025-01-08 10:38:36','审核管理','/shenqingmanage',54),(857,'10.33.197.35','2025-01-08 10:38:41','我的任务','/mytask',54),(858,'10.33.197.35','2025-01-08 10:38:46','审核管理','/shenqingmanage',54),(859,'10.33.197.35','2025-01-08 10:38:49','我的任务','/mytask',54),(860,'10.33.197.35','2025-01-08 10:38:50','审核管理','/shenqingmanage',54),(861,'10.33.197.35','2025-01-08 10:38:53','我的任务','/mytask',54),(862,'10.33.197.35','2025-01-08 10:38:55','审核管理','/shenqingmanage',54),(863,'10.33.197.35','2025-01-08 10:38:58','我的任务','/mytask',54),(864,'10.33.197.35','2025-01-08 10:39:02','审核管理','/shenqingmanage',54),(865,'10.33.197.35','2025-01-08 10:39:04','我的任务','/mytask',54),(866,'10.33.197.35','2025-01-08 10:39:05','审核管理','/shenqingmanage',54),(867,'10.33.197.35','2025-01-08 10:39:07','我的任务','/mytask',54),(868,'10.33.197.35','2025-01-08 10:39:09','审核管理','/shenqingmanage',54),(869,'10.33.197.35','2025-01-08 10:39:11','我的任务','/mytask',54),(870,'10.33.197.35','2025-01-08 10:39:13','审核管理','/shenqingmanage',54),(871,'10.33.197.35','2025-01-08 10:39:16','我的任务','/mytask',54),(872,'10.33.197.35','2025-01-08 10:39:21','审核管理','/shenqingmanage',54),(873,'10.33.197.35','2025-01-08 10:39:25','我的任务','/mytask',54),(874,'10.33.197.35','2025-01-08 10:39:28','审核管理','/shenqingmanage',54),(875,'10.33.197.35','2025-01-08 10:39:36','我的任务','/mytask',54),(876,'10.33.197.35','2025-01-08 10:39:38','审核管理','/shenqingmanage',54),(877,'10.33.197.35','2025-01-08 10:39:42','我的任务','/mytask',54),(878,'10.33.197.35','2025-01-08 10:39:44','审核管理','/shenqingmanage',54),(879,'10.33.197.35','2025-01-08 10:39:46','我的任务','/mytask',54),(880,'10.33.197.35','2025-01-08 10:39:47','审核管理','/shenqingmanage',54),(881,'10.33.197.35','2025-01-08 10:39:51','我的任务','/mytask',54),(882,'10.33.197.35','2025-01-08 10:39:52','审核管理','/shenqingmanage',54),(883,'10.33.197.35','2025-01-08 10:39:55','我的任务','/mytask',54),(884,'10.33.197.35','2025-01-08 10:39:56','审核管理','/shenqingmanage',54),(885,'10.33.197.35','2025-01-08 10:40:00','我的任务','/mytask',54),(886,'10.33.197.35','2025-01-08 10:40:18','审核管理','/shenqingmanage',54),(887,'10.33.197.35','2025-01-08 10:40:22','我的任务','/mytask',54),(888,'10.33.197.35','2025-01-08 10:40:23','审核管理','/shenqingmanage',54),(889,'10.33.197.35','2025-01-08 10:40:26','我的任务','/mytask',54),(890,'10.33.197.35','2025-01-08 10:40:27','审核管理','/shenqingmanage',54),(891,'10.33.197.35','2025-01-08 10:40:30','我的任务','/mytask',54),(892,'10.33.197.35','2025-01-08 10:40:31','审核管理','/shenqingmanage',54),(893,'10.33.197.35','2025-01-08 10:40:34','我的任务','/mytask',54),(894,'10.33.197.35','2025-01-08 10:40:36','审核管理','/shenqingmanage',54),(895,'10.33.197.35','2025-01-08 10:40:38','我的任务','/mytask',54),(896,'10.33.197.35','2025-01-08 10:40:39','审核管理','/shenqingmanage',54),(897,'10.33.197.35','2025-01-08 10:40:42','我的任务','/mytask',54),(898,'10.33.197.35','2025-01-08 10:40:43','审核管理','/shenqingmanage',54),(899,'10.33.197.35','2025-01-08 10:40:46','我的任务','/mytask',54),(900,'10.33.197.35','2025-01-08 10:40:48','审核管理','/shenqingmanage',54),(901,'10.33.197.35','2025-01-08 10:40:50','我的任务','/mytask',54),(902,'10.33.197.35','2025-01-08 10:40:51','审核管理','/shenqingmanage',54),(903,'10.33.197.35','2025-01-08 10:40:53','我的任务','/mytask',54),(904,'10.33.197.35','2025-01-08 10:40:55','审核管理','/shenqingmanage',54),(905,'10.33.197.35','2025-01-08 10:40:58','我的任务','/mytask',54),(906,'10.33.197.35','2025-01-08 10:40:59','审核管理','/shenqingmanage',54),(907,'10.33.197.35','2025-01-08 10:41:02','我的任务','/mytask',54),(908,'10.33.197.35','2025-01-08 10:41:04','审核管理','/shenqingmanage',54),(909,'10.33.197.35','2025-01-08 10:41:07','我的任务','/mytask',54),(910,'10.33.197.35','2025-01-08 10:41:08','审核管理','/shenqingmanage',54),(911,'10.33.197.35','2025-01-08 10:41:10','我的任务','/mytask',54),(912,'10.33.197.35','2025-01-08 10:41:12','审核管理','/shenqingmanage',54),(913,'10.33.197.35','2025-01-08 10:41:15','我的任务','/mytask',54),(914,'10.33.197.35','2025-01-08 10:41:16','审核管理','/shenqingmanage',54),(915,'10.33.197.35','2025-01-08 10:41:18','我的任务','/mytask',54),(916,'10.33.197.35','2025-01-08 10:41:20','审核管理','/shenqingmanage',54),(917,'10.33.197.35','2025-01-08 10:41:22','我的任务','/mytask',54),(918,'10.33.197.35','2025-01-08 10:41:23','审核管理','/shenqingmanage',54),(919,'10.33.197.35','2025-01-08 10:41:25','我的任务','/mytask',54),(920,'10.33.197.35','2025-01-08 10:41:26','审核管理','/shenqingmanage',54),(921,'10.33.197.35','2025-01-08 10:41:29','我的任务','/mytask',54),(922,'10.33.197.35','2025-01-08 10:41:30','审核管理','/shenqingmanage',54),(923,'10.33.197.35','2025-01-08 10:41:32','我的任务','/mytask',54),(924,'10.33.197.35','2025-01-08 10:41:36','审核管理','/shenqingmanage',54),(925,'10.33.197.35','2025-01-08 10:41:39','我的任务','/mytask',54),(926,'10.33.197.35','2025-01-08 10:41:40','审核管理','/shenqingmanage',54),(927,'10.33.197.35','2025-01-08 10:41:46','我的任务','/mytask',54),(928,'10.33.197.35','2025-01-08 10:41:47','审核管理','/shenqingmanage',54),(929,'10.33.197.35','2025-01-08 10:41:49','我的任务','/mytask',54),(930,'10.33.197.35','2025-01-08 10:41:51','审核管理','/shenqingmanage',54),(931,'10.33.197.35','2025-01-08 10:41:53','我的任务','/mytask',54),(932,'10.33.197.35','2025-01-08 10:41:54','审核管理','/shenqingmanage',54),(933,'10.33.197.35','2025-01-08 10:41:56','我的任务','/mytask',54),(934,'10.33.197.35','2025-01-08 10:41:57','审核管理','/shenqingmanage',54),(935,'10.33.197.35','2025-01-08 10:41:59','我的任务','/mytask',54),(936,'10.33.197.35','2025-01-08 10:42:03','审核管理','/shenqingmanage',54),(937,'10.33.197.35','2025-01-08 10:42:06','我的任务','/mytask',54),(938,'10.33.197.35','2025-01-08 10:42:07','审核管理','/shenqingmanage',54),(939,'10.33.197.35','2025-01-08 10:42:10','我的任务','/mytask',54),(940,'10.33.197.35','2025-01-08 10:42:11','审核管理','/shenqingmanage',54),(941,'10.33.197.35','2025-01-08 10:42:14','我的任务','/mytask',54),(942,'10.33.197.35','2025-01-08 10:42:15','审核管理','/shenqingmanage',54),(943,'10.33.197.35','2025-01-08 10:42:17','我的任务','/mytask',54),(944,'10.33.197.35','2025-01-08 10:42:18','审核管理','/shenqingmanage',54),(945,'10.33.197.35','2025-01-08 10:42:24','我的任务','/mytask',54),(946,'10.33.197.35','2025-01-08 10:42:25','审核管理','/shenqingmanage',54),(947,'10.33.197.35','2025-01-08 10:42:29','我的任务','/mytask',54),(948,'10.33.197.35','2025-01-08 10:42:31','审核管理','/shenqingmanage',54),(949,'10.33.197.35','2025-01-08 10:42:34','我的任务','/mytask',54),(950,'10.33.197.35','2025-01-08 10:42:35','审核管理','/shenqingmanage',54),(951,'10.33.197.35','2025-01-08 10:42:38','我的任务','/mytask',54),(952,'10.33.197.35','2025-01-08 10:42:39','审核管理','/shenqingmanage',54),(953,'10.33.197.35','2025-01-08 10:42:42','我的任务','/mytask',54),(954,'10.33.197.35','2025-01-08 10:42:43','审核管理','/shenqingmanage',54),(955,'10.33.197.35','2025-01-08 10:42:46','我的任务','/mytask',54),(956,'10.33.197.35','2025-01-08 10:42:47','审核管理','/shenqingmanage',54),(957,'10.33.197.35','2025-01-08 10:42:50','我的任务','/mytask',54),(958,'10.33.197.35','2025-01-08 10:42:51','审核管理','/shenqingmanage',54),(959,'10.33.197.35','2025-01-08 10:42:53','我的任务','/mytask',54),(960,'10.33.197.35','2025-01-08 10:42:55','审核管理','/shenqingmanage',54),(961,'10.33.197.35','2025-01-08 10:42:59','我的任务','/mytask',54),(962,'10.33.197.35','2025-01-08 10:43:01','审核管理','/shenqingmanage',54),(963,'10.33.197.35','2025-01-08 10:43:04','我的任务','/mytask',54),(964,'10.33.197.35','2025-01-08 10:43:05','审核管理','/shenqingmanage',54),(965,'10.33.197.35','2025-01-08 10:43:08','我的任务','/mytask',54),(966,'10.33.197.35','2025-01-08 10:43:10','审核管理','/shenqingmanage',54),(967,'10.33.197.35','2025-01-08 10:43:13','我的任务','/mytask',54),(968,'10.33.197.35','2025-01-08 10:43:14','审核管理','/shenqingmanage',54),(969,'10.33.197.35','2025-01-08 10:43:17','我的任务','/mytask',54),(970,'10.33.197.35','2025-01-08 10:43:22','审核管理','/shenqingmanage',54),(971,'10.33.197.35','2025-01-08 10:43:43','我的任务','/mytask',54),(972,'10.33.197.35','2025-01-08 10:43:48','审核管理','/shenqingmanage',54),(973,'10.33.197.35','2025-01-08 10:43:51','我的任务','/mytask',54),(974,'10.33.197.35','2025-01-08 10:43:52','审核管理','/shenqingmanage',54),(975,'10.33.197.35','2025-01-08 10:43:55','我的任务','/mytask',54),(976,'10.33.197.35','2025-01-08 10:43:57','审核管理','/shenqingmanage',54),(977,'10.33.197.35','2025-01-08 10:44:00','我的任务','/mytask',54),(978,'10.33.197.35','2025-01-08 10:44:01','审核管理','/shenqingmanage',54),(979,'10.33.197.35','2025-01-08 10:44:04','我的任务','/mytask',54),(980,'10.33.197.35','2025-01-08 10:44:06','审核管理','/shenqingmanage',54),(981,'10.33.197.35','2025-01-08 10:44:09','我的任务','/mytask',54),(982,'10.33.197.35','2025-01-08 10:44:10','审核管理','/shenqingmanage',54),(983,'10.33.197.35','2025-01-08 10:44:13','我的任务','/mytask',54),(984,'10.33.197.35','2025-01-08 10:44:14','审核管理','/shenqingmanage',54),(985,'10.33.197.35','2025-01-08 10:44:16','我的任务','/mytask',54),(986,'10.33.197.35','2025-01-08 10:44:18','审核管理','/shenqingmanage',54),(987,'10.33.197.35','2025-01-08 10:44:21','我的任务','/mytask',54),(988,'10.33.197.35','2025-01-08 10:44:22','审核管理','/shenqingmanage',54),(989,'10.33.197.35','2025-01-08 10:44:25','我的任务','/mytask',54),(990,'10.33.197.35','2025-01-08 10:44:26','审核管理','/shenqingmanage',54),(991,'10.33.197.35','2025-01-08 10:44:29','我的任务','/mytask',54),(992,'10.33.197.35','2025-01-08 10:44:39','审核管理','/shenqingmanage',54),(993,'10.33.197.35','2025-01-08 10:44:43','我的任务','/mytask',54),(994,'10.33.197.35','2025-01-08 10:44:45','审核管理','/shenqingmanage',54),(995,'10.33.197.35','2025-01-08 10:44:48','我的任务','/mytask',54),(996,'10.33.197.35','2025-01-08 10:44:49','审核管理','/shenqingmanage',54),(997,'10.33.197.35','2025-01-08 10:44:51','我的任务','/mytask',54),(998,'10.33.197.35','2025-01-08 10:44:59','审核管理','/shenqingmanage',54),(999,'10.33.197.35','2025-01-08 10:45:03','我的任务','/mytask',54),(1000,'10.33.197.35','2025-01-08 10:45:05','审核管理','/shenqingmanage',54),(1001,'10.33.197.35','2025-01-08 10:45:11','我的任务','/mytask',54),(1002,'10.33.197.35','2025-01-08 10:45:39','审核管理','/shenqingmanage',54),(1003,'10.33.197.35','2025-01-08 10:45:42','我的任务','/mytask',54),(1004,'10.33.197.35','2025-01-08 10:45:43','审核管理','/shenqingmanage',54),(1005,'10.33.197.35','2025-01-08 10:45:46','我的任务','/mytask',54),(1006,'10.33.197.35','2025-01-08 10:45:47','审核管理','/shenqingmanage',54),(1007,'10.33.197.35','2025-01-08 10:45:50','我的任务','/mytask',54),(1008,'10.33.197.35','2025-01-08 10:45:51','审核管理','/shenqingmanage',54),(1009,'10.33.197.35','2025-01-08 10:45:53','我的任务','/mytask',54),(1010,'10.33.197.35','2025-01-08 10:45:55','审核管理','/shenqingmanage',54),(1011,'10.33.197.35','2025-01-08 10:45:57','我的任务','/mytask',54),(1012,'10.33.197.35','2025-01-08 10:45:58','审核管理','/shenqingmanage',54),(1013,'10.33.197.35','2025-01-08 10:46:01','我的任务','/mytask',54),(1014,'10.33.197.35','2025-01-08 10:46:02','审核管理','/shenqingmanage',54),(1015,'10.33.197.35','2025-01-08 10:46:05','我的任务','/mytask',54),(1016,'10.33.197.35','2025-01-08 10:46:06','审核管理','/shenqingmanage',54),(1017,'10.33.197.35','2025-01-08 10:46:09','我的任务','/mytask',54),(1018,'10.33.197.35','2025-01-08 10:46:10','审核管理','/shenqingmanage',54),(1019,'10.33.197.35','2025-01-08 10:46:13','我的任务','/mytask',54),(1020,'10.33.197.35','2025-01-08 10:46:14','审核管理','/shenqingmanage',54),(1021,'10.33.197.35','2025-01-08 10:46:17','我的任务','/mytask',54),(1022,'10.33.197.35','2025-01-08 10:46:18','审核管理','/shenqingmanage',54),(1023,'10.33.197.35','2025-01-08 10:46:21','我的任务','/mytask',54),(1024,'10.33.197.35','2025-01-08 10:46:22','审核管理','/shenqingmanage',54),(1025,'10.33.197.35','2025-01-08 10:46:25','我的任务','/mytask',54),(1026,'10.33.197.35','2025-01-08 10:46:26','审核管理','/shenqingmanage',54),(1027,'10.33.197.35','2025-01-08 10:46:29','我的任务','/mytask',54),(1028,'10.33.197.35','2025-01-08 10:46:30','审核管理','/shenqingmanage',54),(1029,'10.33.197.35','2025-01-08 10:46:32','我的任务','/mytask',54),(1030,'10.33.197.35','2025-01-08 10:46:33','审核管理','/shenqingmanage',54),(1031,'10.33.197.35','2025-01-08 10:46:36','我的任务','/mytask',54),(1032,'10.33.197.35','2025-01-08 10:46:37','审核管理','/shenqingmanage',54),(1033,'10.33.197.35','2025-01-08 10:46:40','我的任务','/mytask',54),(1034,'10.33.197.35','2025-01-08 10:46:44','审核管理','/shenqingmanage',54),(1035,'10.33.197.35','2025-01-08 10:46:47','我的任务','/mytask',54),(1036,'10.33.197.35','2025-01-08 10:46:48','审核管理','/shenqingmanage',54),(1037,'10.33.197.35','2025-01-08 10:46:51','我的任务','/mytask',54),(1038,'10.33.197.35','2025-01-08 10:46:52','审核管理','/shenqingmanage',54),(1039,'10.33.197.35','2025-01-08 10:46:56','我的任务','/mytask',54),(1040,'10.33.197.35','2025-01-08 10:46:57','审核管理','/shenqingmanage',54),(1041,'10.33.197.35','2025-01-08 10:47:00','我的任务','/mytask',54),(1042,'10.33.197.35','2025-01-08 10:47:01','审核管理','/shenqingmanage',54),(1043,'10.33.197.35','2025-01-08 10:47:04','我的任务','/mytask',54),(1044,'10.33.197.35','2025-01-08 10:47:05','审核管理','/shenqingmanage',54),(1045,'10.33.197.35','2025-01-08 10:47:07','我的任务','/mytask',54),(1046,'10.33.197.35','2025-01-08 10:47:12','审核管理','/shenqingmanage',54),(1047,'10.33.197.35','2025-01-08 10:47:14','我的任务','/mytask',54),(1048,'10.33.197.35','2025-01-08 10:47:16','审核管理','/shenqingmanage',54),(1049,'10.33.197.35','2025-01-08 10:47:18','我的任务','/mytask',54),(1050,'10.33.197.35','2025-01-08 10:47:19','审核管理','/shenqingmanage',54),(1051,'10.33.197.35','2025-01-08 10:47:22','我的任务','/mytask',54),(1052,'10.33.197.35','2025-01-08 10:47:23','审核管理','/shenqingmanage',54),(1053,'10.33.197.35','2025-01-08 10:47:26','我的任务','/mytask',54),(1054,'10.33.197.35','2025-01-08 10:47:28','审核管理','/shenqingmanage',54),(1055,'10.33.197.35','2025-01-08 10:47:30','我的任务','/mytask',54),(1056,'10.33.197.35','2025-01-08 10:47:37','审核管理','/shenqingmanage',54),(1057,'10.33.197.35','2025-01-08 10:47:44','我的任务','/mytask',54),(1058,'10.33.197.35','2025-01-08 10:47:45','审核管理','/shenqingmanage',54),(1059,'10.33.197.35','2025-01-08 10:47:47','我的任务','/mytask',54),(1060,'10.33.197.35','2025-01-08 10:47:48','审核管理','/shenqingmanage',54),(1061,'10.33.197.35','2025-01-08 10:48:03','我的任务','/mytask',54),(1062,'10.33.197.35','2025-01-08 10:48:05','审核管理','/shenqingmanage',54),(1063,'10.33.197.35','2025-01-08 10:48:07','我的任务','/mytask',54),(1064,'10.33.197.35','2025-01-08 10:48:08','审核管理','/shenqingmanage',54),(1065,'10.33.197.35','2025-01-08 10:48:11','我的任务','/mytask',54),(1066,'10.33.197.35','2025-01-08 10:48:12','审核管理','/shenqingmanage',54),(1067,'10.33.197.35','2025-01-08 10:48:14','我的任务','/mytask',54),(1068,'10.33.197.35','2025-01-08 10:48:15','审核管理','/shenqingmanage',54),(1069,'10.33.197.35','2025-01-08 10:48:17','我的任务','/mytask',54),(1070,'10.33.197.35','2025-01-08 10:48:20','审核管理','/shenqingmanage',54),(1071,'10.33.197.35','2025-01-08 10:48:26','我的任务','/mytask',54),(1072,'10.33.197.35','2025-01-08 10:48:27','审核管理','/shenqingmanage',54),(1073,'10.33.197.35','2025-01-08 10:48:29','我的任务','/mytask',54),(1074,'10.33.197.35','2025-01-08 10:48:31','审核管理','/shenqingmanage',54),(1075,'10.33.197.35','2025-01-08 10:48:33','我的任务','/mytask',54),(1076,'10.33.197.35','2025-01-08 10:48:34','审核管理','/shenqingmanage',54),(1077,'10.33.197.35','2025-01-08 10:48:36','我的任务','/mytask',54),(1078,'10.33.197.35','2025-01-08 10:48:37','审核管理','/shenqingmanage',54),(1079,'10.33.197.35','2025-01-08 10:48:40','我的任务','/mytask',54),(1080,'10.33.197.35','2025-01-08 10:48:40','审核管理','/shenqingmanage',54),(1081,'10.33.197.35','2025-01-08 10:48:41','审核管理','/shenqingmanage',54),(1082,'10.33.197.35','2025-01-08 10:48:43','我的任务','/mytask',54),(1083,'10.33.197.35','2025-01-08 10:48:44','审核管理','/shenqingmanage',54),(1084,'10.33.197.35','2025-01-08 10:48:46','我的任务','/mytask',54),(1085,'10.33.197.35','2025-01-08 10:48:49','审核管理','/shenqingmanage',54),(1086,'10.33.197.35','2025-01-08 10:48:52','我的任务','/mytask',54),(1087,'10.33.197.35','2025-01-08 10:48:53','审核管理','/shenqingmanage',54),(1088,'10.33.197.35','2025-01-08 10:48:55','我的任务','/mytask',54),(1089,'10.33.197.35','2025-01-08 10:48:57','审核管理','/shenqingmanage',54),(1090,'10.33.197.35','2025-01-08 10:49:00','我的任务','/mytask',54),(1091,'10.33.197.35','2025-01-08 10:49:01','审核管理','/shenqingmanage',54),(1092,'10.33.197.35','2025-01-08 10:49:04','我的任务','/mytask',54),(1093,'10.33.197.35','2025-01-08 10:49:06','审核管理','/shenqingmanage',54),(1094,'10.33.197.35','2025-01-08 10:49:08','我的任务','/mytask',54),(1095,'10.33.197.35','2025-01-08 10:49:09','审核管理','/shenqingmanage',54),(1096,'10.33.197.35','2025-01-08 10:49:12','我的任务','/mytask',54),(1097,'10.33.197.35','2025-01-08 10:49:13','审核管理','/shenqingmanage',54),(1098,'10.33.197.35','2025-01-08 10:49:16','我的任务','/mytask',54),(1099,'10.33.197.35','2025-01-08 10:49:17','审核管理','/shenqingmanage',54),(1100,'10.33.197.35','2025-01-08 10:49:20','我的任务','/mytask',54),(1101,'10.33.197.35','2025-01-08 10:49:21','审核管理','/shenqingmanage',54),(1102,'10.33.197.35','2025-01-08 10:49:23','我的任务','/mytask',54),(1103,'10.33.197.35','2025-01-08 10:49:29','审核管理','/shenqingmanage',54),(1104,'10.33.197.35','2025-01-08 10:49:34','我的任务','/mytask',54),(1105,'10.33.197.35','2025-01-08 10:49:37','审核管理','/shenqingmanage',54),(1106,'10.33.197.35','2025-01-08 10:49:40','我的任务','/mytask',54),(1107,'10.33.197.35','2025-01-08 10:49:41','审核管理','/shenqingmanage',54),(1108,'10.33.197.35','2025-01-08 10:49:43','我的任务','/mytask',54),(1109,'10.33.197.35','2025-01-08 10:49:44','审核管理','/shenqingmanage',54),(1110,'10.33.197.35','2025-01-08 10:49:46','我的任务','/mytask',54),(1111,'10.33.197.35','2025-01-08 10:49:47','审核管理','/shenqingmanage',54),(1112,'10.33.197.35','2025-01-08 10:49:50','我的任务','/mytask',54),(1113,'10.33.197.35','2025-01-08 10:49:51','审核管理','/shenqingmanage',54),(1114,'10.33.197.35','2025-01-08 10:49:53','我的任务','/mytask',54),(1115,'10.33.197.35','2025-01-08 10:49:54','审核管理','/shenqingmanage',54),(1116,'10.33.197.35','2025-01-08 10:49:57','我的任务','/mytask',54),(1117,'10.33.197.35','2025-01-08 10:49:59','审核管理','/shenqingmanage',54),(1118,'10.33.197.35','2025-01-08 10:50:02','我的任务','/mytask',54),(1119,'10.33.197.35','2025-01-08 10:50:03','审核管理','/shenqingmanage',54),(1120,'10.33.197.35','2025-01-08 10:50:06','我的任务','/mytask',54),(1121,'10.33.197.35','2025-01-08 10:50:08','审核管理','/shenqingmanage',54),(1122,'10.33.197.35','2025-01-08 10:50:11','我的任务','/mytask',54),(1123,'10.33.197.35','2025-01-08 10:50:12','审核管理','/shenqingmanage',54),(1124,'10.33.197.35','2025-01-08 10:50:15','我的任务','/mytask',54),(1125,'10.33.197.35','2025-01-08 10:50:16','审核管理','/shenqingmanage',54),(1126,'10.33.197.35','2025-01-08 10:50:19','我的任务','/mytask',54),(1127,'10.33.197.35','2025-01-08 10:50:22','审核管理','/shenqingmanage',54),(1128,'10.33.197.35','2025-01-08 10:50:25','我的任务','/mytask',54),(1129,'10.33.197.35','2025-01-08 10:50:26','审核管理','/shenqingmanage',54),(1130,'10.33.197.35','2025-01-08 10:50:29','我的任务','/mytask',54),(1131,'10.33.197.35','2025-01-08 10:50:31','审核管理','/shenqingmanage',54),(1132,'10.33.197.35','2025-01-08 10:50:35','我的任务','/mytask',54),(1133,'10.33.197.35','2025-01-08 10:50:38','审核管理','/shenqingmanage',54),(1134,'10.33.197.35','2025-01-08 10:50:40','我的任务','/mytask',54),(1135,'10.33.197.35','2025-01-08 10:50:42','审核管理','/shenqingmanage',54),(1136,'10.33.197.35','2025-01-08 10:50:45','我的任务','/mytask',54),(1137,'10.33.197.35','2025-01-08 10:50:46','审核管理','/shenqingmanage',54),(1138,'10.33.197.35','2025-01-08 10:50:49','我的任务','/mytask',54),(1139,'10.33.197.35','2025-01-08 10:50:56','审核管理','/shenqingmanage',54),(1140,'10.33.197.35','2025-01-08 10:50:58','我的任务','/mytask',54),(1141,'10.33.197.35','2025-01-08 10:51:01','审核管理','/shenqingmanage',54),(1142,'10.33.197.35','2025-01-08 10:51:03','我的任务','/mytask',54),(1143,'10.33.197.35','2025-01-08 10:51:05','审核管理','/shenqingmanage',54),(1144,'10.33.197.35','2025-01-08 10:51:07','我的任务','/mytask',54),(1145,'10.33.197.35','2025-01-08 10:51:09','审核管理','/shenqingmanage',54),(1146,'10.33.197.35','2025-01-08 10:51:11','我的任务','/mytask',54),(1147,'10.33.197.35','2025-01-08 10:51:13','审核管理','/shenqingmanage',54),(1148,'10.33.197.35','2025-01-08 10:51:15','我的任务','/mytask',54),(1149,'10.33.197.35','2025-01-08 10:51:17','审核管理','/shenqingmanage',54),(1150,'10.33.197.35','2025-01-08 10:51:20','我的任务','/mytask',54),(1151,'10.33.197.35','2025-01-08 10:51:21','审核管理','/shenqingmanage',54),(1152,'10.33.197.35','2025-01-08 10:51:23','我的任务','/mytask',54),(1153,'10.33.197.35','2025-01-08 10:51:25','审核管理','/shenqingmanage',54),(1154,'10.33.197.35','2025-01-08 10:51:27','我的任务','/mytask',54),(1155,'10.33.197.35','2025-01-08 10:51:29','审核管理','/shenqingmanage',54),(1156,'10.33.197.35','2025-01-08 10:51:31','我的任务','/mytask',54),(1157,'10.33.197.35','2025-01-08 10:51:33','审核管理','/shenqingmanage',54),(1158,'10.33.197.35','2025-01-08 10:51:36','我的任务','/mytask',54),(1159,'10.33.197.35','2025-01-08 10:51:38','审核管理','/shenqingmanage',54),(1160,'10.33.197.35','2025-01-08 10:51:40','我的任务','/mytask',54),(1161,'10.33.197.35','2025-01-08 10:51:41','审核管理','/shenqingmanage',54),(1162,'10.33.197.35','2025-01-08 10:51:44','我的任务','/mytask',54),(1163,'10.33.197.35','2025-01-08 10:51:45','审核管理','/shenqingmanage',54),(1164,'10.33.197.35','2025-01-08 10:51:48','我的任务','/mytask',54),(1165,'10.33.197.35','2025-01-08 10:51:57','审核管理','/shenqingmanage',54),(1166,'10.33.197.35','2025-01-08 10:52:00','我的任务','/mytask',54),(1167,'10.33.197.35','2025-01-08 10:52:02','审核管理','/shenqingmanage',54),(1168,'10.33.197.35','2025-01-08 10:52:06','我的任务','/mytask',54),(1169,'10.33.197.35','2025-01-08 10:52:07','审核管理','/shenqingmanage',54),(1170,'10.33.197.35','2025-01-08 10:52:09','我的任务','/mytask',54),(1171,'10.33.197.35','2025-01-08 10:52:11','审核管理','/shenqingmanage',54),(1172,'10.33.197.35','2025-01-08 10:52:13','我的任务','/mytask',54),(1173,'10.33.197.35','2025-01-08 10:52:14','审核管理','/shenqingmanage',54),(1174,'10.33.197.35','2025-01-08 10:52:17','我的任务','/mytask',54),(1175,'10.33.197.35','2025-01-08 10:52:18','审核管理','/shenqingmanage',54),(1176,'10.33.197.35','2025-01-08 10:52:19','我的任务','/mytask',54),(1177,'10.33.197.35','2025-01-08 10:52:20','审核管理','/shenqingmanage',54),(1178,'10.33.197.35','2025-01-08 10:52:23','我的任务','/mytask',54),(1179,'10.33.197.35','2025-01-08 10:52:24','审核管理','/shenqingmanage',54),(1180,'10.33.197.35','2025-01-08 10:52:26','我的任务','/mytask',54),(1181,'10.33.197.35','2025-01-08 10:52:31','审核管理','/shenqingmanage',54),(1182,'10.33.197.35','2025-01-08 10:52:34','我的任务','/mytask',54),(1183,'10.33.197.35','2025-01-08 10:52:35','审核管理','/shenqingmanage',54),(1184,'10.33.197.35','2025-01-08 10:52:43','我的任务','/mytask',54),(1185,'10.33.197.35','2025-01-08 10:52:44','审核管理','/shenqingmanage',54),(1186,'10.33.197.35','2025-01-08 10:52:46','我的任务','/mytask',54),(1187,'10.33.197.35','2025-01-08 10:52:47','审核管理','/shenqingmanage',54),(1188,'10.33.197.35','2025-01-08 10:52:50','我的任务','/mytask',54),(1189,'10.33.197.35','2025-01-08 10:52:50','审核管理','/shenqingmanage',54),(1190,'10.33.197.35','2025-01-08 10:52:51','审核管理','/shenqingmanage',54),(1191,'10.33.197.35','2025-01-08 10:52:53','我的任务','/mytask',54),(1192,'10.33.197.35','2025-01-08 10:52:54','审核管理','/shenqingmanage',54),(1193,'10.33.197.35','2025-01-08 10:52:57','我的任务','/mytask',54),(1194,'10.33.197.35','2025-01-08 10:52:58','审核管理','/shenqingmanage',54),(1195,'10.33.197.35','2025-01-08 10:53:00','我的任务','/mytask',54),(1196,'10.33.197.35','2025-01-08 10:53:01','审核管理','/shenqingmanage',54),(1197,'10.33.197.35','2025-01-08 10:53:03','我的任务','/mytask',54),(1198,'10.33.197.35','2025-01-08 10:53:05','审核管理','/shenqingmanage',54),(1199,'10.33.197.35','2025-01-08 10:53:07','我的任务','/mytask',54),(1200,'10.33.197.35','2025-01-08 10:53:08','审核管理','/shenqingmanage',54),(1201,'10.33.197.35','2025-01-08 10:53:10','我的任务','/mytask',54),(1202,'10.33.197.35','2025-01-08 10:53:12','审核管理','/shenqingmanage',54),(1203,'10.33.197.35','2025-01-08 10:53:14','我的任务','/mytask',54),(1204,'10.33.197.35','2025-01-08 10:53:16','审核管理','/shenqingmanage',54),(1205,'10.33.197.35','2025-01-08 10:53:19','我的任务','/mytask',54),(1206,'10.33.197.35','2025-01-08 10:53:20','审核管理','/shenqingmanage',54),(1207,'10.33.197.35','2025-01-08 10:53:22','我的任务','/mytask',54),(1208,'10.33.197.35','2025-01-08 10:53:23','审核管理','/shenqingmanage',54),(1209,'10.33.197.35','2025-01-08 10:53:25','我的任务','/mytask',54),(1210,'10.33.197.35','2025-01-08 10:53:26','审核管理','/shenqingmanage',54),(1211,'10.33.197.35','2025-01-08 10:53:28','我的任务','/mytask',54),(1212,'10.33.197.35','2025-01-08 10:53:29','审核管理','/shenqingmanage',54),(1213,'10.33.197.35','2025-01-08 10:53:32','我的任务','/mytask',54),(1214,'10.33.197.35','2025-01-08 10:53:33','审核管理','/shenqingmanage',54),(1215,'10.33.197.35','2025-01-08 10:53:35','我的任务','/mytask',54),(1216,'10.33.197.35','2025-01-08 10:53:36','审核管理','/shenqingmanage',54),(1217,'10.33.197.35','2025-01-08 10:53:39','我的任务','/mytask',54),(1218,'10.33.197.35','2025-01-08 10:54:04','审核管理','/shenqingmanage',54),(1219,'10.33.197.35','2025-01-08 10:54:07','我的任务','/mytask',54),(1220,'10.33.197.35','2025-01-08 10:54:08','审核管理','/shenqingmanage',54),(1221,'10.33.197.35','2025-01-08 10:54:10','我的任务','/mytask',54),(1222,'10.33.197.35','2025-01-08 10:54:12','审核管理','/shenqingmanage',54),(1223,'10.33.197.35','2025-01-08 10:54:14','我的任务','/mytask',54),(1224,'10.33.197.35','2025-01-08 10:54:16','审核管理','/shenqingmanage',54),(1225,'10.33.197.35','2025-01-08 10:54:18','我的任务','/mytask',54),(1226,'10.33.197.35','2025-01-08 10:54:20','审核管理','/shenqingmanage',54),(1227,'10.33.197.35','2025-01-08 10:54:22','我的任务','/mytask',54),(1228,'10.33.197.35','2025-01-08 10:54:23','审核管理','/shenqingmanage',54),(1229,'10.33.197.35','2025-01-08 10:54:26','我的任务','/mytask',54),(1230,'10.33.197.35','2025-01-08 10:54:27','审核管理','/shenqingmanage',54),(1231,'10.33.197.35','2025-01-08 10:54:29','我的任务','/mytask',54),(1232,'10.33.197.35','2025-01-08 10:54:31','审核管理','/shenqingmanage',54),(1233,'10.33.197.35','2025-01-08 10:54:34','我的任务','/mytask',54),(1234,'10.33.197.35','2025-01-08 10:54:40','审核管理','/shenqingmanage',54),(1235,'10.33.197.35','2025-01-08 10:54:43','我的任务','/mytask',54),(1236,'10.33.197.35','2025-01-08 10:54:46','审核管理','/shenqingmanage',54),(1237,'10.33.197.35','2025-01-08 10:54:49','我的任务','/mytask',54),(1238,'10.33.197.35','2025-01-08 10:54:50','审核管理','/shenqingmanage',54),(1239,'10.33.197.35','2025-01-08 10:54:52','我的任务','/mytask',54),(1240,'10.33.197.35','2025-01-08 10:54:56','审核管理','/shenqingmanage',54),(1241,'10.33.197.35','2025-01-08 10:55:02','我的任务','/mytask',54),(1242,'10.33.197.35','2025-01-08 10:55:03','审核管理','/shenqingmanage',54),(1243,'10.33.197.35','2025-01-08 10:55:05','我的任务','/mytask',54),(1244,'10.33.197.35','2025-01-08 10:55:07','审核管理','/shenqingmanage',54),(1245,'10.33.197.35','2025-01-08 10:55:10','我的任务','/mytask',54),(1246,'10.33.197.35','2025-01-08 10:55:11','审核管理','/shenqingmanage',54),(1247,'10.33.197.35','2025-01-08 10:55:13','我的任务','/mytask',54),(1248,'10.33.197.35','2025-01-08 10:55:14','审核管理','/shenqingmanage',54),(1249,'10.33.197.35','2025-01-08 10:55:17','我的任务','/mytask',54),(1250,'10.33.197.35','2025-01-08 10:55:28','审核管理','/shenqingmanage',54),(1251,'10.33.197.35','2025-01-08 10:55:30','我的任务','/mytask',54),(1252,'10.33.197.35','2025-01-08 10:55:34','审核管理','/shenqingmanage',54),(1253,'10.33.197.35','2025-01-08 10:55:37','我的任务','/mytask',54),(1254,'10.33.197.35','2025-01-08 10:55:38','审核管理','/shenqingmanage',54),(1255,'10.33.197.35','2025-01-08 10:55:41','我的任务','/mytask',54),(1256,'10.33.197.35','2025-01-08 10:55:42','审核管理','/shenqingmanage',54),(1257,'10.33.197.35','2025-01-08 10:55:44','我的任务','/mytask',54),(1258,'10.33.197.35','2025-01-08 10:55:47','审核管理','/shenqingmanage',54),(1259,'10.33.197.35','2025-01-08 10:55:49','我的任务','/mytask',54),(1260,'10.33.197.35','2025-01-08 10:55:51','审核管理','/shenqingmanage',54),(1261,'10.33.197.35','2025-01-08 10:55:53','我的任务','/mytask',54),(1262,'10.33.197.35','2025-01-08 10:55:59','审核管理','/shenqingmanage',54),(1263,'10.33.197.35','2025-01-08 10:56:01','我的任务','/mytask',54),(1264,'10.33.197.35','2025-01-08 10:56:02','审核管理','/shenqingmanage',54),(1265,'10.33.197.35','2025-01-08 10:56:05','我的任务','/mytask',54),(1266,'10.33.197.35','2025-01-08 10:56:07','审核管理','/shenqingmanage',54),(1267,'10.33.197.35','2025-01-08 10:56:10','我的任务','/mytask',54),(1268,'10.33.197.35','2025-01-08 10:56:10','审核管理','/shenqingmanage',54),(1269,'10.33.197.35','2025-01-08 10:56:11','审核管理','/shenqingmanage',54),(1270,'10.33.197.35','2025-01-08 10:56:12','我的任务','/mytask',54),(1271,'10.33.197.35','2025-01-08 10:56:14','审核管理','/shenqingmanage',54),(1272,'10.33.197.35','2025-01-08 10:56:18','我的任务','/mytask',54),(1273,'10.33.197.35','2025-01-08 10:56:20','审核管理','/shenqingmanage',54),(1274,'10.33.197.35','2025-01-08 10:56:22','我的任务','/mytask',54),(1275,'10.33.197.35','2025-01-08 10:56:23','审核管理','/shenqingmanage',54),(1276,'10.33.197.35','2025-01-08 10:56:25','我的任务','/mytask',54),(1277,'10.33.197.35','2025-01-08 10:56:28','审核管理','/shenqingmanage',54),(1278,'10.33.197.35','2025-01-08 10:56:30','我的任务','/mytask',54),(1279,'10.33.197.35','2025-01-08 10:56:31','审核管理','/shenqingmanage',54),(1280,'10.33.197.35','2025-01-08 10:56:34','我的任务','/mytask',54),(1281,'10.33.197.35','2025-01-08 10:56:36','审核管理','/shenqingmanage',54),(1282,'10.33.197.35','2025-01-08 10:56:39','我的任务','/mytask',54),(1283,'10.33.197.35','2025-01-08 10:56:40','审核管理','/shenqingmanage',54),(1284,'10.33.197.35','2025-01-08 10:56:43','我的任务','/mytask',54),(1285,'10.33.197.35','2025-01-08 10:56:46','审核管理','/shenqingmanage',54),(1286,'10.33.197.35','2025-01-08 10:56:49','我的任务','/mytask',54),(1287,'10.33.197.35','2025-01-08 10:57:00','审核管理','/shenqingmanage',54),(1288,'10.33.197.35','2025-01-08 10:57:03','我的任务','/mytask',54),(1289,'10.33.197.35','2025-01-08 10:57:04','审核管理','/shenqingmanage',54),(1290,'10.33.197.35','2025-01-08 10:57:07','我的任务','/mytask',54),(1291,'10.33.197.35','2025-01-08 10:57:08','审核管理','/shenqingmanage',54),(1292,'10.33.197.35','2025-01-08 10:57:11','我的任务','/mytask',54),(1293,'10.33.197.35','2025-01-08 10:57:13','审核管理','/shenqingmanage',54),(1294,'10.33.197.35','2025-01-08 10:57:15','我的任务','/mytask',54),(1295,'10.33.197.35','2025-01-08 10:57:20','审核管理','/shenqingmanage',54),(1296,'10.33.197.35','2025-01-08 10:57:23','我的任务','/mytask',54),(1297,'10.33.197.35','2025-01-08 10:57:24','审核管理','/shenqingmanage',54),(1298,'10.33.197.35','2025-01-08 10:57:27','我的任务','/mytask',54),(1299,'10.33.197.35','2025-01-08 10:57:29','审核管理','/shenqingmanage',54),(1300,'10.33.197.35','2025-01-08 10:57:34','我的任务','/mytask',54),(1301,'10.33.197.35','2025-01-08 10:57:36','审核管理','/shenqingmanage',54),(1302,'10.33.197.35','2025-01-08 10:57:39','我的任务','/mytask',54),(1303,'10.33.197.35','2025-01-08 10:57:40','审核管理','/shenqingmanage',54),(1304,'10.33.197.35','2025-01-08 10:57:43','我的任务','/mytask',54),(1305,'10.33.197.35','2025-01-08 10:57:50','审核管理','/shenqingmanage',54),(1306,'10.33.197.35','2025-01-08 10:57:54','我的任务','/mytask',54),(1307,'10.33.197.35','2025-01-08 10:57:55','审核管理','/shenqingmanage',54),(1308,'10.33.197.35','2025-01-08 10:57:57','我的任务','/mytask',54),(1309,'10.33.197.35','2025-01-08 10:58:01','审核管理','/shenqingmanage',54),(1310,'10.33.197.35','2025-01-08 10:58:06','我的任务','/mytask',54),(1311,'10.33.197.35','2025-01-08 10:58:10','审核管理','/shenqingmanage',54),(1312,'10.33.197.35','2025-01-08 10:58:13','我的任务','/mytask',54),(1313,'10.33.197.35','2025-01-08 10:58:14','审核管理','/shenqingmanage',54),(1314,'10.33.197.35','2025-01-08 10:58:17','我的任务','/mytask',54),(1315,'10.33.197.35','2025-01-08 10:58:18','审核管理','/shenqingmanage',54),(1316,'10.33.197.35','2025-01-08 10:58:20','我的任务','/mytask',54),(1317,'10.33.197.35','2025-01-08 10:58:34','审核管理','/shenqingmanage',54),(1318,'10.33.197.35','2025-01-08 10:58:36','我的任务','/mytask',54),(1319,'10.33.197.35','2025-01-08 10:58:37','审核管理','/shenqingmanage',54),(1320,'10.33.197.35','2025-01-08 10:58:40','我的任务','/mytask',54),(1321,'10.33.197.35','2025-01-08 10:58:42','审核管理','/shenqingmanage',54),(1322,'10.33.197.35','2025-01-08 10:58:46','我的任务','/mytask',54),(1323,'10.33.197.35','2025-01-08 10:58:47','审核管理','/shenqingmanage',54),(1324,'10.33.197.35','2025-01-08 10:58:49','我的任务','/mytask',54),(1325,'10.33.197.35','2025-01-08 10:58:50','审核管理','/shenqingmanage',54),(1326,'10.33.197.35','2025-01-08 10:58:55','我的任务','/mytask',54),(1327,'10.33.197.35','2025-01-08 10:58:56','审核管理','/shenqingmanage',54),(1328,'10.33.197.35','2025-01-08 10:58:59','我的任务','/mytask',54),(1329,'10.33.197.35','2025-01-08 10:59:01','审核管理','/shenqingmanage',54),(1330,'10.33.197.35','2025-01-08 10:59:05','我的任务','/mytask',54),(1331,'10.33.197.35','2025-01-08 10:59:07','审核管理','/shenqingmanage',54),(1332,'10.33.197.35','2025-01-08 10:59:09','我的任务','/mytask',54),(1333,'10.33.197.35','2025-01-08 10:59:12','审核管理','/shenqingmanage',54),(1334,'10.33.197.35','2025-01-08 10:59:15','我的任务','/mytask',54),(1335,'10.33.197.35','2025-01-08 10:59:16','审核管理','/shenqingmanage',54),(1336,'10.33.197.35','2025-01-08 10:59:19','我的任务','/mytask',54),(1337,'10.33.197.35','2025-01-08 10:59:20','审核管理','/shenqingmanage',54),(1338,'10.33.197.35','2025-01-08 10:59:23','我的任务','/mytask',54),(1339,'10.33.197.35','2025-01-08 10:59:24','审核管理','/shenqingmanage',54),(1340,'10.33.197.35','2025-01-08 10:59:27','我的任务','/mytask',54),(1341,'10.33.197.35','2025-01-08 10:59:28','审核管理','/shenqingmanage',54),(1342,'10.33.197.35','2025-01-08 10:59:31','我的任务','/mytask',54),(1343,'10.33.197.35','2025-01-08 10:59:32','审核管理','/shenqingmanage',54),(1344,'10.33.197.35','2025-01-08 10:59:36','我的任务','/mytask',54),(1345,'10.33.197.35','2025-01-08 10:59:37','审核管理','/shenqingmanage',54),(1346,'10.33.197.35','2025-01-08 10:59:40','我的任务','/mytask',54),(1347,'10.33.197.35','2025-01-08 10:59:46','审核管理','/shenqingmanage',54),(1348,'10.33.197.35','2025-01-08 10:59:49','我的任务','/mytask',54),(1349,'10.33.197.35','2025-01-08 10:59:50','审核管理','/shenqingmanage',54),(1350,'10.33.197.35','2025-01-08 10:59:53','我的任务','/mytask',54),(1351,'10.33.197.35','2025-01-08 10:59:54','审核管理','/shenqingmanage',54),(1352,'10.33.197.35','2025-01-08 10:59:57','我的任务','/mytask',54),(1353,'10.33.197.35','2025-01-08 10:59:58','审核管理','/shenqingmanage',54),(1354,'10.33.197.35','2025-01-08 11:00:00','我的任务','/mytask',54),(1355,'10.33.197.35','2025-01-08 11:00:03','审核管理','/shenqingmanage',54),(1356,'10.33.197.35','2025-01-08 11:00:05','我的任务','/mytask',54),(1357,'10.33.197.35','2025-01-08 11:00:06','审核管理','/shenqingmanage',54),(1358,'10.33.197.35','2025-01-08 11:00:09','我的任务','/mytask',54),(1359,'10.33.197.35','2025-01-08 11:00:11','审核管理','/shenqingmanage',54),(1360,'10.33.197.35','2025-01-08 11:00:14','我的任务','/mytask',54),(1361,'10.33.197.35','2025-01-08 11:00:15','审核管理','/shenqingmanage',54),(1362,'10.33.197.35','2025-01-08 11:00:18','我的任务','/mytask',54),(1363,'10.33.197.35','2025-01-08 11:00:25','审核管理','/shenqingmanage',54),(1364,'10.33.197.35','2025-01-08 11:00:28','我的任务','/mytask',54),(1365,'10.33.197.35','2025-01-08 11:00:29','审核管理','/shenqingmanage',54),(1366,'10.33.197.35','2025-01-08 11:00:32','我的任务','/mytask',54),(1367,'10.33.197.35','2025-01-08 11:00:33','审核管理','/shenqingmanage',54),(1368,'10.33.197.35','2025-01-08 11:00:36','我的任务','/mytask',54),(1369,'10.33.197.35','2025-01-08 11:00:38','审核管理','/shenqingmanage',54),(1370,'10.33.197.35','2025-01-08 11:00:42','我的任务','/mytask',54),(1371,'10.33.197.35','2025-01-08 11:00:43','审核管理','/shenqingmanage',54),(1372,'10.33.197.35','2025-01-08 11:00:45','我的任务','/mytask',54),(1373,'10.33.197.35','2025-01-08 11:01:08','审核管理','/shenqingmanage',54),(1374,'10.33.197.35','2025-01-08 11:01:11','我的任务','/mytask',54),(1375,'10.33.197.35','2025-01-08 11:01:14','审核管理','/shenqingmanage',54),(1376,'10.33.197.35','2025-01-08 11:01:16','我的任务','/mytask',54),(1377,'10.33.197.35','2025-01-08 11:01:18','审核管理','/shenqingmanage',54),(1378,'10.33.197.35','2025-01-08 11:01:21','我的任务','/mytask',54),(1379,'10.33.197.35','2025-01-08 11:01:26','审核管理','/shenqingmanage',54),(1380,'10.33.197.35','2025-01-08 11:01:29','我的任务','/mytask',54),(1381,'10.33.197.35','2025-01-08 11:01:35','审核管理','/shenqingmanage',54),(1382,'10.33.197.35','2025-01-08 11:01:41','我的任务','/mytask',54),(1383,'10.33.197.35','2025-01-08 11:01:42','审核管理','/shenqingmanage',54),(1384,'10.33.197.35','2025-01-08 11:01:45','我的任务','/mytask',54),(1385,'10.33.197.35','2025-01-08 11:01:47','审核管理','/shenqingmanage',54),(1386,'10.33.197.35','2025-01-08 11:01:49','我的任务','/mytask',54),(1387,'10.33.197.35','2025-01-08 11:01:51','审核管理','/shenqingmanage',54),(1388,'10.33.197.35','2025-01-08 11:01:53','我的任务','/mytask',54),(1389,'10.33.197.35','2025-01-08 11:01:54','审核管理','/shenqingmanage',54),(1390,'10.33.197.35','2025-01-08 11:01:57','我的任务','/mytask',54),(1391,'10.33.197.35','2025-01-08 11:02:10','审核管理','/shenqingmanage',54),(1392,'10.33.197.35','2025-01-08 11:02:12','我的任务','/mytask',54),(1393,'10.33.197.35','2025-01-08 11:02:14','审核管理','/shenqingmanage',54),(1394,'10.33.197.35','2025-01-08 11:02:17','我的任务','/mytask',54),(1395,'10.33.197.35','2025-01-08 11:02:19','审核管理','/shenqingmanage',54),(1396,'10.33.197.35','2025-01-08 11:02:23','我的任务','/mytask',54),(1397,'10.33.197.35','2025-01-08 11:02:26','审核管理','/shenqingmanage',54),(1398,'10.33.197.35','2025-01-08 11:02:29','我的任务','/mytask',54),(1399,'10.33.197.35','2025-01-08 11:02:40','审核管理','/shenqingmanage',54),(1400,'10.33.197.35','2025-01-08 11:02:43','我的任务','/mytask',54),(1401,'10.33.197.35','2025-01-08 11:02:48','审核管理','/shenqingmanage',54),(1402,'10.33.197.35','2025-01-08 11:02:50','我的任务','/mytask',54),(1403,'10.33.197.35','2025-01-08 11:02:51','审核管理','/shenqingmanage',54),(1404,'10.33.197.35','2025-01-08 11:02:54','我的任务','/mytask',54),(1405,'10.33.197.35','2025-01-08 11:02:56','审核管理','/shenqingmanage',54),(1406,'10.33.197.35','2025-01-08 11:03:40','我的任务','/mytask',54),(1407,'10.33.197.35','2025-01-08 11:03:41','审核管理','/shenqingmanage',54),(1408,'10.33.197.35','2025-01-08 11:03:43','我的任务','/mytask',54),(1409,'10.33.197.35','2025-01-08 11:03:45','审核管理','/shenqingmanage',54),(1410,'10.33.197.35','2025-01-08 11:03:47','我的任务','/mytask',54),(1411,'10.33.197.35','2025-01-08 11:03:48','审核管理','/shenqingmanage',54),(1412,'10.33.197.35','2025-01-08 11:03:50','我的任务','/mytask',54),(1413,'10.33.197.35','2025-01-08 11:03:51','审核管理','/shenqingmanage',54),(1414,'10.33.197.35','2025-01-08 11:03:54','我的任务','/mytask',54),(1415,'10.33.197.35','2025-01-08 11:04:09','审核管理','/shenqingmanage',54),(1416,'10.33.197.35','2025-01-08 11:04:11','我的任务','/mytask',54),(1417,'10.33.197.35','2025-01-08 11:04:12','审核管理','/shenqingmanage',54),(1418,'10.33.197.35','2025-01-08 11:04:14','我的任务','/mytask',54),(1419,'10.33.197.35','2025-01-08 11:04:16','审核管理','/shenqingmanage',54),(1420,'10.33.197.35','2025-01-08 11:04:18','我的任务','/mytask',54),(1421,'10.33.197.35','2025-01-08 11:04:19','审核管理','/shenqingmanage',54),(1422,'10.33.197.35','2025-01-08 11:04:22','我的任务','/mytask',54),(1423,'10.33.197.35','2025-01-08 11:04:23','审核管理','/shenqingmanage',54),(1424,'10.33.197.35','2025-01-08 11:04:26','我的任务','/mytask',54),(1425,'10.33.197.35','2025-01-08 11:04:28','审核管理','/shenqingmanage',54),(1426,'10.33.197.35','2025-01-08 11:04:30','我的任务','/mytask',54),(1427,'10.33.197.35','2025-01-08 11:04:32','审核管理','/shenqingmanage',54),(1428,'10.33.197.35','2025-01-08 11:04:35','我的任务','/mytask',54),(1429,'10.33.197.35','2025-01-08 11:04:36','审核管理','/shenqingmanage',54),(1430,'10.33.197.35','2025-01-08 11:04:39','我的任务','/mytask',54),(1431,'10.33.197.35','2025-01-08 11:04:40','审核管理','/shenqingmanage',54),(1432,'10.33.197.35','2025-01-08 11:04:42','我的任务','/mytask',54),(1433,'10.33.197.35','2025-01-08 11:04:47','审核管理','/shenqingmanage',54),(1434,'10.33.197.35','2025-01-08 11:04:54','我的任务','/mytask',54),(1435,'10.33.197.35','2025-01-08 11:04:56','审核管理','/shenqingmanage',54),(1436,'10.33.197.35','2025-01-08 11:04:59','我的任务','/mytask',54),(1437,'10.33.197.35','2025-01-08 11:05:00','审核管理','/shenqingmanage',54),(1438,'10.33.197.35','2025-01-08 11:05:02','我的任务','/mytask',54),(1439,'10.33.197.35','2025-01-08 11:05:05','审核管理','/shenqingmanage',54),(1440,'10.33.197.35','2025-01-08 11:05:08','我的任务','/mytask',54),(1441,'10.33.197.35','2025-01-08 11:05:10','审核管理','/shenqingmanage',54),(1442,'10.33.197.35','2025-01-08 11:05:12','我的任务','/mytask',54),(1443,'10.33.197.35','2025-01-08 11:05:14','审核管理','/shenqingmanage',54),(1444,'10.33.197.35','2025-01-08 11:05:17','我的任务','/mytask',54),(1445,'10.33.197.35','2025-01-08 11:05:18','审核管理','/shenqingmanage',54),(1446,'10.33.197.35','2025-01-08 11:05:20','我的任务','/mytask',54),(1447,'10.33.197.35','2025-01-08 11:05:25','审核管理','/shenqingmanage',54),(1448,'10.33.197.35','2025-01-08 11:05:29','我的任务','/mytask',54),(1449,'10.33.197.35','2025-01-08 11:05:30','审核管理','/shenqingmanage',54),(1450,'10.33.197.35','2025-01-08 11:05:33','我的任务','/mytask',54),(1451,'10.33.197.35','2025-01-08 11:05:39','审核管理','/shenqingmanage',54),(1452,'10.33.197.35','2025-01-08 11:05:43','我的任务','/mytask',54),(1453,'10.33.197.35','2025-01-08 11:05:45','审核管理','/shenqingmanage',54),(1454,'10.33.197.35','2025-01-08 11:05:48','我的任务','/mytask',54),(1455,'10.33.197.35','2025-01-08 11:05:56','审核管理','/shenqingmanage',54),(1456,'10.33.197.35','2025-01-08 11:05:59','我的任务','/mytask',54),(1457,'10.33.197.35','2025-01-08 11:06:00','审核管理','/shenqingmanage',54),(1458,'10.33.197.35','2025-01-08 11:06:03','我的任务','/mytask',54),(1459,'10.33.197.35','2025-01-08 11:06:06','审核管理','/shenqingmanage',54),(1460,'10.33.197.35','2025-01-08 11:06:08','我的任务','/mytask',54),(1461,'10.33.197.35','2025-01-08 11:06:11','审核管理','/shenqingmanage',54),(1462,'10.33.197.35','2025-01-08 11:06:13','我的任务','/mytask',54),(1463,'10.33.197.35','2025-01-08 11:06:15','审核管理','/shenqingmanage',54),(1464,'10.33.197.35','2025-01-08 11:06:18','我的任务','/mytask',54),(1465,'10.33.197.35','2025-01-08 11:06:19','审核管理','/shenqingmanage',54),(1466,'10.33.197.35','2025-01-08 11:06:22','我的任务','/mytask',54),(1467,'10.33.197.35','2025-01-08 11:06:23','审核管理','/shenqingmanage',54),(1468,'10.33.197.35','2025-01-08 11:06:26','我的任务','/mytask',54),(1469,'10.33.197.35','2025-01-08 11:06:31','审核管理','/shenqingmanage',54),(1470,'10.33.197.35','2025-01-08 11:06:33','我的任务','/mytask',54),(1471,'10.33.197.35','2025-01-08 11:06:34','审核管理','/shenqingmanage',54),(1472,'10.33.197.35','2025-01-08 11:06:37','我的任务','/mytask',54),(1473,'10.33.197.35','2025-01-08 11:06:38','审核管理','/shenqingmanage',54),(1474,'10.33.197.35','2025-01-08 11:06:40','我的任务','/mytask',54),(1475,'10.33.197.35','2025-01-08 11:06:42','审核管理','/shenqingmanage',54),(1476,'10.33.197.35','2025-01-08 11:06:44','我的任务','/mytask',54),(1477,'10.33.197.35','2025-01-08 11:06:45','审核管理','/shenqingmanage',54),(1478,'10.33.197.35','2025-01-08 11:06:49','我的任务','/mytask',54),(1479,'10.33.197.35','2025-01-08 11:06:50','审核管理','/shenqingmanage',54),(1480,'10.33.197.35','2025-01-08 11:06:54','我的任务','/mytask',54),(1481,'10.33.197.35','2025-01-08 11:06:56','审核管理','/shenqingmanage',54),(1482,'10.33.197.35','2025-01-08 11:06:58','我的任务','/mytask',54),(1483,'10.33.197.35','2025-01-08 11:06:59','审核管理','/shenqingmanage',54),(1484,'10.33.197.35','2025-01-08 11:07:01','我的任务','/mytask',54),(1485,'10.33.197.35','2025-01-08 11:07:01','审核管理','/shenqingmanage',54),(1486,'10.33.197.35','2025-01-08 11:07:07','审核管理','/shenqingmanage',54),(1487,'10.33.197.35','2025-01-08 11:07:09','我的任务','/mytask',54),(1488,'10.33.197.35','2025-01-08 11:07:10','审核管理','/shenqingmanage',54),(1489,'10.33.197.35','2025-01-08 11:07:13','我的任务','/mytask',54),(1490,'10.33.197.35','2025-01-08 11:07:15','审核管理','/shenqingmanage',54),(1491,'10.33.197.35','2025-01-08 11:07:19','我的任务','/mytask',54),(1492,'10.33.197.35','2025-01-08 11:07:20','审核管理','/shenqingmanage',54),(1493,'10.33.197.35','2025-01-08 11:07:22','我的任务','/mytask',54),(1494,'10.33.197.35','2025-01-08 11:07:24','审核管理','/shenqingmanage',54),(1495,'10.33.197.35','2025-01-08 11:07:27','我的任务','/mytask',54),(1496,'10.33.197.35','2025-01-08 11:07:37','审核管理','/shenqingmanage',54),(1497,'10.33.197.35','2025-01-08 11:07:39','我的任务','/mytask',54),(1498,'10.33.197.35','2025-01-08 11:07:40','审核管理','/shenqingmanage',54),(1499,'10.33.197.35','2025-01-08 11:07:43','我的任务','/mytask',54),(1500,'10.33.197.35','2025-01-08 11:08:00','审核管理','/shenqingmanage',54),(1501,'10.33.197.35','2025-01-08 11:08:03','我的任务','/mytask',54),(1502,'10.33.197.35','2025-01-08 11:08:04','审核管理','/shenqingmanage',54),(1503,'10.33.197.35','2025-01-08 11:08:06','我的任务','/mytask',54),(1504,'10.33.197.35','2025-01-08 11:08:07','审核管理','/shenqingmanage',54),(1505,'10.33.197.35','2025-01-08 11:08:10','我的任务','/mytask',54),(1506,'10.33.197.35','2025-01-08 11:08:10','审核管理','/shenqingmanage',54),(1507,'10.33.197.35','2025-01-08 11:08:16','审核管理','/shenqingmanage',54),(1508,'10.33.197.35','2025-01-08 11:08:18','我的任务','/mytask',54),(1509,'10.33.197.35','2025-01-08 11:08:20','审核管理','/shenqingmanage',54),(1510,'10.33.197.35','2025-01-08 11:08:27','我的任务','/mytask',54),(1511,'10.33.197.35','2025-01-08 11:08:51','审核管理','/shenqingmanage',54),(1512,'10.33.197.35','2025-01-08 11:08:54','我的任务','/mytask',54),(1513,'10.33.197.35','2025-01-08 11:08:55','审核管理','/shenqingmanage',54),(1514,'10.33.197.35','2025-01-08 11:08:59','我的任务','/mytask',54),(1515,'10.33.197.35','2025-01-08 11:09:01','审核管理','/shenqingmanage',54),(1516,'10.33.197.35','2025-01-08 11:09:05','我的任务','/mytask',54),(1517,'10.33.197.35','2025-01-08 11:09:06','审核管理','/shenqingmanage',54),(1518,'10.33.197.35','2025-01-08 11:09:08','我的任务','/mytask',54),(1519,'10.33.197.35','2025-01-08 11:09:10','审核管理','/shenqingmanage',54),(1520,'10.33.197.35','2025-01-08 11:09:35','我的任务','/mytask',54),(1521,'10.33.197.35','2025-01-08 11:09:37','审核管理','/shenqingmanage',54),(1522,'10.33.197.35','2025-01-08 11:09:39','我的任务','/mytask',54),(1523,'10.33.197.35','2025-01-08 11:09:40','审核管理','/shenqingmanage',54),(1524,'10.33.197.35','2025-01-08 11:09:44','我的任务','/mytask',54),(1525,'10.33.197.35','2025-01-08 11:09:45','审核管理','/shenqingmanage',54),(1526,'10.33.197.35','2025-01-08 11:09:48','我的任务','/mytask',54),(1527,'10.33.197.35','2025-01-08 11:09:49','审核管理','/shenqingmanage',54),(1528,'10.33.197.35','2025-01-08 11:09:51','我的任务','/mytask',54),(1529,'10.33.197.35','2025-01-08 11:09:52','审核管理','/shenqingmanage',54),(1530,'10.33.197.35','2025-01-08 11:09:54','我的任务','/mytask',54),(1531,'10.33.197.35','2025-01-08 11:09:55','审核管理','/shenqingmanage',54),(1532,'10.33.197.35','2025-01-08 11:10:00','我的任务','/mytask',54),(1533,'10.33.197.35','2025-01-08 11:10:03','审核管理','/shenqingmanage',54),(1534,'10.33.197.35','2025-01-08 11:10:07','我的任务','/mytask',54),(1535,'10.33.197.35','2025-01-08 11:10:26','审核管理','/shenqingmanage',54),(1536,'10.33.197.35','2025-01-08 11:10:28','我的任务','/mytask',54),(1537,'10.33.197.35','2025-01-08 11:10:32','审核管理','/shenqingmanage',54),(1538,'10.33.197.35','2025-01-08 11:10:36','我的任务','/mytask',54),(1539,'10.33.197.35','2025-01-08 11:10:38','审核管理','/shenqingmanage',54),(1540,'10.33.197.35','2025-01-08 11:10:40','我的任务','/mytask',54),(1541,'10.33.197.35','2025-01-08 11:10:41','审核管理','/shenqingmanage',54),(1542,'10.33.197.35','2025-01-08 11:10:43','我的任务','/mytask',54),(1543,'10.33.197.35','2025-01-08 11:11:13','审核管理','/shenqingmanage',54),(1544,'10.33.197.35','2025-01-08 11:11:19','我的任务','/mytask',54),(1545,'10.33.197.35','2025-01-08 11:11:21','审核管理','/shenqingmanage',54),(1546,'10.33.197.35','2025-01-08 11:11:25','我的任务','/mytask',54),(1547,'10.33.197.35','2025-01-08 11:11:26','审核管理','/shenqingmanage',54),(1548,'10.33.197.35','2025-01-08 11:11:28','我的任务','/mytask',54),(1549,'10.33.197.35','2025-01-08 11:11:29','审核管理','/shenqingmanage',54),(1550,'10.33.197.35','2025-01-08 11:11:35','我的任务','/mytask',54),(1551,'10.33.197.35','2025-01-08 11:11:37','审核管理','/shenqingmanage',54),(1552,'10.33.197.35','2025-01-08 11:11:39','我的任务','/mytask',54),(1553,'10.33.197.35','2025-01-08 11:11:40','审核管理','/shenqingmanage',54),(1554,'10.33.197.35','2025-01-08 11:11:43','我的任务','/mytask',54),(1555,'10.33.197.35','2025-01-08 11:11:56','审核管理','/shenqingmanage',54),(1556,'10.33.197.35','2025-01-08 11:11:59','我的任务','/mytask',54),(1557,'10.33.197.35','2025-01-08 11:12:00','审核管理','/shenqingmanage',54),(1558,'10.33.197.35','2025-01-08 11:12:03','我的任务','/mytask',54),(1559,'10.33.197.35','2025-01-08 11:12:08','审核管理','/shenqingmanage',54),(1560,'10.33.197.35','2025-01-08 11:12:12','我的任务','/mytask',54),(1561,'10.33.197.35','2025-01-08 11:12:16','审核管理','/shenqingmanage',54),(1562,'10.33.197.35','2025-01-08 11:12:18','我的任务','/mytask',54),(1563,'10.33.197.35','2025-01-08 11:12:19','审核管理','/shenqingmanage',54),(1564,'10.33.197.35','2025-01-08 11:12:21','我的任务','/mytask',54),(1565,'10.33.197.35','2025-01-08 11:12:22','审核管理','/shenqingmanage',54),(1566,'10.33.197.35','2025-01-08 11:12:25','我的任务','/mytask',54),(1567,'10.33.197.35','2025-01-08 11:12:25','审核管理','/shenqingmanage',54),(1568,'10.33.197.35','2025-01-08 11:12:25','审核管理','/shenqingmanage',54),(1569,'10.33.197.35','2025-01-08 11:12:28','审核管理','/shenqingmanage',54),(1570,'10.33.197.35','2025-01-08 11:12:31','我的任务','/mytask',54),(1571,'10.33.197.35','2025-01-08 11:12:32','审核管理','/shenqingmanage',54),(1572,'10.33.197.35','2025-01-08 11:12:34','我的任务','/mytask',54),(1573,'10.33.197.35','2025-01-08 11:12:35','审核管理','/shenqingmanage',54),(1574,'10.33.197.35','2025-01-08 11:12:37','我的任务','/mytask',54),(1575,'10.33.197.35','2025-01-08 11:12:38','审核管理','/shenqingmanage',54),(1576,'10.33.197.35','2025-01-08 11:12:41','我的任务','/mytask',54),(1577,'10.33.197.35','2025-01-08 11:12:42','审核管理','/shenqingmanage',54),(1578,'10.33.197.35','2025-01-08 11:12:44','我的任务','/mytask',54),(1579,'10.33.197.35','2025-01-08 11:12:46','审核管理','/shenqingmanage',54),(1580,'10.33.197.35','2025-01-08 11:12:48','我的任务','/mytask',54),(1581,'10.33.197.35','2025-01-08 11:12:49','审核管理','/shenqingmanage',54),(1582,'10.33.197.35','2025-01-08 11:12:52','我的任务','/mytask',54),(1583,'10.33.197.35','2025-01-08 11:12:53','审核管理','/shenqingmanage',54),(1584,'10.33.197.35','2025-01-08 11:12:56','我的任务','/mytask',54),(1585,'10.33.197.35','2025-01-08 11:12:58','审核管理','/shenqingmanage',54),(1586,'10.33.197.35','2025-01-08 11:13:01','我的任务','/mytask',54),(1587,'10.33.197.35','2025-01-08 11:13:02','审核管理','/shenqingmanage',54),(1588,'10.33.197.35','2025-01-08 11:13:04','我的任务','/mytask',54),(1589,'10.33.197.35','2025-01-08 11:13:05','审核管理','/shenqingmanage',54),(1590,'10.33.197.35','2025-01-08 11:13:07','我的任务','/mytask',54),(1591,'10.33.197.35','2025-01-08 11:13:08','审核管理','/shenqingmanage',54),(1592,'10.33.197.35','2025-01-08 11:13:11','我的任务','/mytask',54),(1593,'10.33.197.35','2025-01-08 11:13:12','审核管理','/shenqingmanage',54),(1594,'10.33.197.35','2025-01-08 11:13:14','我的任务','/mytask',54),(1595,'10.33.197.35','2025-01-08 11:13:17','审核管理','/shenqingmanage',54),(1596,'10.33.197.35','2025-01-08 11:13:18','我的任务','/mytask',54),(1597,'10.33.197.35','2025-01-08 11:13:20','审核管理','/shenqingmanage',54),(1598,'10.33.197.35','2025-01-08 11:13:22','我的任务','/mytask',54),(1599,'10.33.197.35','2025-01-08 11:13:27','审核管理','/shenqingmanage',54),(1600,'10.33.197.35','2025-01-08 11:13:33','我的任务','/mytask',54),(1601,'10.33.197.35','2025-01-08 11:13:34','审核管理','/shenqingmanage',54),(1602,'10.33.197.35','2025-01-08 11:13:35','我的任务','/mytask',54),(1603,'10.33.197.35','2025-01-08 11:13:37','审核管理','/shenqingmanage',54),(1604,'10.33.197.35','2025-01-08 11:13:41','我的任务','/mytask',54),(1605,'10.33.197.35','2025-01-08 11:13:42','审核管理','/shenqingmanage',54),(1606,'10.33.197.35','2025-01-08 11:13:44','我的任务','/mytask',54),(1607,'10.33.197.35','2025-01-08 11:13:46','审核管理','/shenqingmanage',54),(1608,'10.33.197.35','2025-01-08 11:13:48','我的任务','/mytask',54),(1609,'10.33.197.35','2025-01-08 11:13:52','审核管理','/shenqingmanage',54),(1610,'10.33.197.35','2025-01-08 11:13:54','我的任务','/mytask',54),(1611,'10.33.197.35','2025-01-08 11:13:58','审核管理','/shenqingmanage',54),(1612,'10.33.197.35','2025-01-08 11:14:01','我的任务','/mytask',54),(1613,'10.33.197.35','2025-01-08 11:14:04','审核管理','/shenqingmanage',54),(1614,'10.33.197.35','2025-01-08 11:14:07','我的任务','/mytask',54),(1615,'10.33.197.35','2025-01-08 11:14:08','审核管理','/shenqingmanage',54),(1616,'10.33.197.35','2025-01-08 11:14:14','我的任务','/mytask',54),(1617,'10.33.197.35','2025-01-08 11:14:15','审核管理','/shenqingmanage',54),(1618,'10.33.197.35','2025-01-08 11:14:21','我的任务','/mytask',54),(1619,'10.33.197.35','2025-01-08 11:14:23','审核管理','/shenqingmanage',54),(1620,'10.33.197.35','2025-01-08 11:14:25','我的任务','/mytask',54),(1621,'10.33.197.35','2025-01-08 11:14:27','审核管理','/shenqingmanage',54),(1622,'10.33.197.35','2025-01-08 11:14:30','我的任务','/mytask',54),(1623,'10.33.197.35','2025-01-08 11:14:38','审核管理','/shenqingmanage',54),(1624,'10.33.197.35','2025-01-08 11:14:41','我的任务','/mytask',54),(1625,'10.33.197.35','2025-01-08 11:14:42','审核管理','/shenqingmanage',54),(1626,'10.33.197.35','2025-01-08 11:14:45','我的任务','/mytask',54),(1627,'10.33.197.35','2025-01-08 11:14:46','审核管理','/shenqingmanage',54),(1628,'10.33.197.35','2025-01-08 11:14:48','我的任务','/mytask',54),(1629,'10.33.197.35','2025-01-08 11:14:51','审核管理','/shenqingmanage',54),(1630,'10.33.197.35','2025-01-08 11:14:56','我的任务','/mytask',54),(1631,'10.33.197.35','2025-01-08 11:14:58','审核管理','/shenqingmanage',54),(1632,'10.33.197.35','2025-01-08 11:15:00','我的任务','/mytask',54),(1633,'10.33.197.35','2025-01-08 11:15:02','审核管理','/shenqingmanage',54),(1634,'10.33.197.35','2025-01-08 11:15:03','我的任务','/mytask',54),(1635,'10.33.197.35','2025-01-08 11:15:04','审核管理','/shenqingmanage',54),(1636,'10.33.197.35','2025-01-08 11:15:06','我的任务','/mytask',54),(1637,'10.33.197.35','2025-01-08 11:15:13','审核管理','/shenqingmanage',54),(1638,'10.33.197.35','2025-01-08 11:15:17','我的任务','/mytask',54),(1639,'10.33.197.35','2025-01-08 11:15:21','审核管理','/shenqingmanage',54),(1640,'10.33.197.35','2025-01-08 11:15:23','我的任务','/mytask',54),(1641,'10.33.197.35','2025-01-08 11:15:24','审核管理','/shenqingmanage',54),(1642,'10.33.197.35','2025-01-08 11:15:27','我的任务','/mytask',54),(1643,'10.33.197.35','2025-01-08 11:15:28','审核管理','/shenqingmanage',54),(1644,'10.33.197.35','2025-01-08 11:15:30','我的任务','/mytask',54),(1645,'10.33.197.35','2025-01-08 11:15:31','审核管理','/shenqingmanage',54),(1646,'10.33.197.35','2025-01-08 11:15:33','我的任务','/mytask',54),(1647,'10.33.197.35','2025-01-08 11:15:35','审核管理','/shenqingmanage',54),(1648,'10.33.197.35','2025-01-08 11:15:38','我的任务','/mytask',54),(1649,'10.33.197.35','2025-01-08 11:15:38','审核管理','/shenqingmanage',54),(1650,'10.33.197.35','2025-01-08 11:15:39','审核管理','/shenqingmanage',54),(1651,'10.33.197.35','2025-01-08 11:15:41','我的任务','/mytask',54),(1652,'10.33.197.35','2025-01-08 11:15:43','审核管理','/shenqingmanage',54),(1653,'10.33.197.35','2025-01-08 11:15:45','我的任务','/mytask',54),(1654,'10.33.197.35','2025-01-08 11:15:46','审核管理','/shenqingmanage',54),(1655,'10.33.197.35','2025-01-08 11:15:52','我的任务','/mytask',54),(1656,'10.33.197.35','2025-01-08 11:15:54','审核管理','/shenqingmanage',54),(1657,'10.33.197.35','2025-01-08 11:16:06','我的任务','/mytask',54),(1658,'10.33.197.35','2025-01-08 11:16:07','审核管理','/shenqingmanage',54),(1659,'10.33.197.35','2025-01-08 11:16:16','我的任务','/mytask',54),(1660,'10.33.197.35','2025-01-08 11:16:17','审核管理','/shenqingmanage',54),(1661,'10.33.197.35','2025-01-08 11:16:20','我的任务','/mytask',54),(1662,'10.33.197.35','2025-01-08 11:16:21','审核管理','/shenqingmanage',54),(1663,'10.33.197.35','2025-01-08 11:16:24','我的任务','/mytask',54),(1664,'10.33.197.35','2025-01-08 11:16:25','审核管理','/shenqingmanage',54),(1665,'10.33.197.35','2025-01-08 11:16:28','我的任务','/mytask',54),(1666,'10.33.197.35','2025-01-08 11:16:29','审核管理','/shenqingmanage',54),(1667,'10.33.197.35','2025-01-08 11:16:32','我的任务','/mytask',54),(1668,'10.33.197.35','2025-01-08 11:16:33','审核管理','/shenqingmanage',54),(1669,'10.33.197.35','2025-01-08 11:16:36','我的任务','/mytask',54),(1670,'10.33.197.35','2025-01-08 11:16:38','审核管理','/shenqingmanage',54),(1671,'10.33.197.35','2025-01-08 11:16:40','我的任务','/mytask',54),(1672,'10.33.197.35','2025-01-08 11:16:47','审核管理','/shenqingmanage',54),(1673,'10.33.197.35','2025-01-08 11:16:50','我的任务','/mytask',54),(1674,'10.33.197.35','2025-01-08 11:16:51','审核管理','/shenqingmanage',54),(1675,'10.33.197.35','2025-01-08 11:16:53','我的任务','/mytask',54),(1676,'10.33.197.35','2025-01-08 11:16:54','审核管理','/shenqingmanage',54),(1677,'10.33.197.35','2025-01-08 11:16:57','我的任务','/mytask',54),(1678,'10.33.197.35','2025-01-08 11:16:58','审核管理','/shenqingmanage',54),(1679,'10.33.197.35','2025-01-08 11:17:00','我的任务','/mytask',54),(1680,'10.33.197.35','2025-01-08 11:17:04','审核管理','/shenqingmanage',54),(1681,'10.33.197.35','2025-01-08 11:17:07','我的任务','/mytask',54),(1682,'10.33.197.35','2025-01-08 11:17:08','审核管理','/shenqingmanage',54),(1683,'10.33.197.35','2025-01-08 11:17:10','我的任务','/mytask',54),(1684,'10.33.197.35','2025-01-08 11:17:11','审核管理','/shenqingmanage',54),(1685,'10.33.197.35','2025-01-08 11:17:14','我的任务','/mytask',54),(1686,'10.33.197.35','2025-01-08 11:17:15','审核管理','/shenqingmanage',54),(1687,'10.33.197.35','2025-01-08 11:17:18','我的任务','/mytask',54),(1688,'10.33.197.35','2025-01-08 11:17:19','审核管理','/shenqingmanage',54),(1689,'10.33.197.35','2025-01-08 11:17:21','我的任务','/mytask',54),(1690,'10.33.197.35','2025-01-08 11:17:26','审核管理','/shenqingmanage',54),(1691,'10.33.197.35','2025-01-08 11:17:29','我的任务','/mytask',54),(1692,'10.33.197.35','2025-01-08 11:17:30','审核管理','/shenqingmanage',54),(1693,'10.33.197.35','2025-01-08 11:17:34','我的任务','/mytask',54),(1694,'10.33.197.35','2025-01-08 11:17:35','审核管理','/shenqingmanage',54),(1695,'10.33.197.35','2025-01-08 11:17:37','我的任务','/mytask',54),(1696,'10.33.197.35','2025-01-08 11:17:38','审核管理','/shenqingmanage',54),(1697,'10.33.197.35','2025-01-08 11:17:40','我的任务','/mytask',54),(1698,'10.33.197.35','2025-01-08 11:17:41','审核管理','/shenqingmanage',54),(1699,'10.33.197.35','2025-01-08 11:17:44','我的任务','/mytask',54),(1700,'10.33.197.35','2025-01-08 11:17:45','审核管理','/shenqingmanage',54),(1701,'10.33.197.35','2025-01-08 11:17:48','我的任务','/mytask',54),(1702,'10.33.197.35','2025-01-08 11:17:50','审核管理','/shenqingmanage',54),(1703,'10.33.197.35','2025-01-08 11:17:52','我的任务','/mytask',54),(1704,'10.33.197.35','2025-01-08 11:17:54','审核管理','/shenqingmanage',54),(1705,'10.33.197.35','2025-01-08 11:17:57','我的任务','/mytask',54),(1706,'10.33.197.35','2025-01-08 11:17:58','审核管理','/shenqingmanage',54),(1707,'10.33.197.35','2025-01-08 11:18:01','我的任务','/mytask',54),(1708,'10.33.197.35','2025-01-08 11:18:09','审核管理','/shenqingmanage',54),(1709,'10.33.197.35','2025-01-08 11:18:12','我的任务','/mytask',54),(1710,'10.33.197.35','2025-01-08 11:20:08','审核管理','/shenqingmanage',54),(1711,'10.33.197.35','2025-01-08 11:20:10','我的任务','/mytask',54),(1712,'10.33.197.35','2025-01-08 11:20:12','审核管理','/shenqingmanage',54),(1713,'10.33.197.35','2025-01-08 11:20:14','我的任务','/mytask',54),(1714,'10.33.197.35','2025-01-08 11:20:15','审核管理','/shenqingmanage',54),(1715,'10.33.197.35','2025-01-08 11:22:03','我的任务','/mytask',54),(1716,'10.33.197.35','2025-01-08 11:22:07','审核管理','/shenqingmanage',54),(1717,'10.33.197.35','2025-01-08 11:22:10','我的任务','/mytask',54),(1718,'10.33.197.35','2025-01-08 11:22:12','审核管理','/shenqingmanage',54),(1719,'10.33.197.35','2025-01-08 11:22:14','我的任务','/mytask',54),(1720,'10.33.197.35','2025-01-08 11:26:48','审核管理','/shenqingmanage',54),(1721,'10.33.197.35','2025-01-08 11:26:51','我的任务','/mytask',54),(1722,'10.33.197.35','2025-01-08 11:26:52','审核管理','/shenqingmanage',54),(1723,'10.33.197.35','2025-01-08 11:29:34','我的任务','/mytask',54),(1724,'10.33.197.35','2025-01-08 11:29:35','审核管理','/shenqingmanage',54),(1725,'10.33.197.35','2025-01-08 11:29:38','我的任务','/mytask',54),(1726,'10.33.197.35','2025-01-08 11:29:39','审核管理','/shenqingmanage',54),(1727,'10.33.197.35','2025-01-08 11:29:41','我的任务','/mytask',54),(1728,'10.33.197.35','2025-01-08 11:29:43','审核管理','/shenqingmanage',54),(1729,'10.33.197.35','2025-01-08 11:29:46','我的任务','/mytask',54),(1730,'10.33.197.35','2025-01-08 11:29:47','审核管理','/shenqingmanage',54),(1731,'10.33.197.35','2025-01-08 11:29:49','我的任务','/mytask',54),(1732,'10.33.197.35','2025-01-08 11:29:50','审核管理','/shenqingmanage',54),(1733,'10.33.197.35','2025-01-08 11:29:57','我的任务','/mytask',54),(1734,'10.33.197.35','2025-01-08 11:29:58','审核管理','/shenqingmanage',54),(1735,'10.33.197.35','2025-01-08 11:30:09','我的任务','/mytask',54),(1736,'10.33.197.35','2025-01-08 11:30:10','审核管理','/shenqingmanage',54),(1737,'10.33.197.35','2025-01-08 11:30:13','我的任务','/mytask',54),(1738,'10.33.197.35','2025-01-08 11:30:16','审核管理','/shenqingmanage',54),(1739,'10.33.197.35','2025-01-08 11:30:19','我的任务','/mytask',54),(1740,'10.33.197.35','2025-01-08 11:30:20','审核管理','/shenqingmanage',54),(1741,'10.33.197.35','2025-01-08 11:30:22','我的任务','/mytask',54),(1742,'10.33.197.35','2025-01-08 11:30:23','审核管理','/shenqingmanage',54),(1743,'10.33.197.35','2025-01-08 11:30:26','我的任务','/mytask',54),(1744,'10.33.197.35','2025-01-08 11:30:27','审核管理','/shenqingmanage',54),(1745,'10.33.197.35','2025-01-08 11:30:30','我的任务','/mytask',54),(1746,'10.33.197.35','2025-01-08 11:30:31','审核管理','/shenqingmanage',54),(1747,'10.33.197.35','2025-01-08 11:30:34','我的任务','/mytask',54),(1748,'10.33.197.35','2025-01-08 11:30:35','审核管理','/shenqingmanage',54),(1749,'10.33.197.35','2025-01-08 11:30:37','我的任务','/mytask',54),(1750,'10.33.197.35','2025-01-08 11:30:39','审核管理','/shenqingmanage',54),(1751,'10.33.197.35','2025-01-08 11:30:44','我的任务','/mytask',54),(1752,'10.33.197.35','2025-01-08 11:30:44','审核管理','/shenqingmanage',54),(1753,'10.33.197.35','2025-01-08 11:30:45','审核管理','/shenqingmanage',54),(1754,'10.33.197.35','2025-01-08 11:30:47','我的任务','/mytask',54),(1755,'10.33.197.35','2025-01-08 11:31:56','审核管理','/shenqingmanage',54),(1756,'10.33.197.35','2025-01-08 11:31:59','我的任务','/mytask',54),(1757,'10.33.197.35','2025-01-08 11:32:00','审核管理','/shenqingmanage',54),(1758,'10.33.197.35','2025-01-08 11:32:05','我的任务','/mytask',54),(1759,'10.33.197.35','2025-01-08 11:32:06','审核管理','/shenqingmanage',54),(1760,'10.33.197.35','2025-01-08 11:32:10','我的任务','/mytask',54),(1761,'10.33.197.35','2025-01-08 11:32:12','审核管理','/shenqingmanage',54),(1762,'10.33.197.35','2025-01-08 11:32:27','我的任务','/mytask',54),(1763,'10.33.197.35','2025-01-08 11:32:28','审核管理','/shenqingmanage',54),(1764,'10.33.197.35','2025-01-08 11:32:31','我的任务','/mytask',54),(1765,'10.33.197.35','2025-01-08 11:32:32','审核管理','/shenqingmanage',54),(1766,'10.33.197.35','2025-01-08 11:32:34','我的任务','/mytask',54),(1767,'10.33.197.35','2025-01-08 11:32:35','审核管理','/shenqingmanage',54),(1768,'10.33.197.35','2025-01-08 11:32:38','我的任务','/mytask',54),(1769,'10.33.197.35','2025-01-08 11:32:40','审核管理','/shenqingmanage',54),(1770,'10.33.197.35','2025-01-08 11:32:47','我的任务','/mytask',54),(1771,'10.33.197.35','2025-01-08 11:32:49','审核管理','/shenqingmanage',54),(1772,'10.33.197.35','2025-01-08 11:32:53','我的任务','/mytask',54),(1773,'10.33.197.35','2025-01-08 11:32:54','审核管理','/shenqingmanage',54),(1774,'10.33.197.35','2025-01-08 11:33:06','我的任务','/mytask',54),(1775,'10.33.197.35','2025-01-08 11:33:14','审核管理','/shenqingmanage',54),(1776,'10.33.197.35','2025-01-08 11:33:17','我的任务','/mytask',54),(1777,'10.33.197.35','2025-01-08 11:33:18','审核管理','/shenqingmanage',54),(1778,'10.33.197.35','2025-01-08 11:33:20','我的任务','/mytask',54),(1779,'10.33.197.35','2025-01-08 11:33:22','审核管理','/shenqingmanage',54),(1780,'10.33.197.35','2025-01-08 11:33:25','我的任务','/mytask',54),(1781,'10.33.197.35','2025-01-08 11:33:26','审核管理','/shenqingmanage',54),(1782,'10.33.197.35','2025-01-08 11:33:29','我的任务','/mytask',54),(1783,'10.33.197.35','2025-01-08 11:33:30','审核管理','/shenqingmanage',54),(1784,'10.33.197.35','2025-01-08 11:33:33','我的任务','/mytask',54),(1785,'10.33.197.35','2025-01-08 11:33:34','审核管理','/shenqingmanage',54),(1786,'10.33.197.35','2025-01-08 11:33:36','我的任务','/mytask',54),(1787,'10.33.197.35','2025-01-08 11:33:37','审核管理','/shenqingmanage',54),(1788,'10.33.197.35','2025-01-08 11:33:42','我的任务','/mytask',54),(1789,'10.33.197.35','2025-01-08 11:33:43','审核管理','/shenqingmanage',54),(1790,'10.33.197.35','2025-01-08 11:33:45','我的任务','/mytask',54),(1791,'10.33.197.35','2025-01-08 11:33:47','审核管理','/shenqingmanage',54),(1792,'10.33.197.35','2025-01-08 11:33:49','我的任务','/mytask',54),(1793,'10.33.197.35','2025-01-08 11:33:50','审核管理','/shenqingmanage',54),(1794,'10.33.197.35','2025-01-08 11:33:52','我的任务','/mytask',54),(1795,'10.33.197.35','2025-01-08 11:33:54','审核管理','/shenqingmanage',54),(1796,'10.33.197.35','2025-01-08 11:33:56','我的任务','/mytask',54),(1797,'10.33.197.35','2025-01-08 11:33:57','审核管理','/shenqingmanage',54),(1798,'10.33.197.35','2025-01-08 11:34:00','我的任务','/mytask',54),(1799,'10.33.197.35','2025-01-08 11:34:01','审核管理','/shenqingmanage',54),(1800,'10.33.197.35','2025-01-08 11:34:03','我的任务','/mytask',54),(1801,'10.33.197.35','2025-01-08 11:34:04','审核管理','/shenqingmanage',54),(1802,'10.33.197.35','2025-01-08 11:34:09','我的任务','/mytask',54),(1803,'10.33.197.35','2025-01-08 11:34:10','审核管理','/shenqingmanage',54),(1804,'10.33.197.35','2025-01-08 11:34:12','我的任务','/mytask',54),(1805,'10.33.197.35','2025-01-08 11:34:13','审核管理','/shenqingmanage',54),(1806,'10.33.197.35','2025-01-08 11:34:15','我的任务','/mytask',54),(1807,'10.33.197.35','2025-01-08 11:34:17','审核管理','/shenqingmanage',54),(1808,'10.33.197.35','2025-01-08 11:34:19','我的任务','/mytask',54),(1809,'10.33.197.35','2025-01-08 11:34:20','审核管理','/shenqingmanage',54),(1810,'10.33.197.35','2025-01-08 11:34:22','我的任务','/mytask',54),(1811,'10.33.197.35','2025-01-08 11:34:23','审核管理','/shenqingmanage',54),(1812,'10.33.197.35','2025-01-08 11:34:27','我的任务','/mytask',54),(1813,'10.33.197.35','2025-01-08 11:34:28','审核管理','/shenqingmanage',54),(1814,'10.33.197.35','2025-01-08 11:34:34','我的任务','/mytask',54),(1815,'10.33.197.35','2025-01-08 11:34:34','审核管理','/shenqingmanage',54),(1816,'10.33.197.35','2025-01-08 11:34:35','审核管理','/shenqingmanage',54),(1817,'10.33.197.35','2025-01-08 11:34:37','我的任务','/mytask',54),(1818,'10.33.197.35','2025-01-08 11:34:38','审核管理','/shenqingmanage',54),(1819,'10.33.197.35','2025-01-08 11:35:07','我的任务','/mytask',54),(1820,'10.33.197.35','2025-01-08 11:35:08','审核管理','/shenqingmanage',54),(1821,'10.33.197.35','2025-01-08 11:35:11','我的任务','/mytask',54),(1822,'10.33.197.35','2025-01-08 11:35:12','审核管理','/shenqingmanage',54),(1823,'10.33.197.35','2025-01-08 11:35:14','我的任务','/mytask',54),(1824,'10.33.197.35','2025-01-08 11:35:15','审核管理','/shenqingmanage',54),(1825,'10.33.197.35','2025-01-08 11:35:17','我的任务','/mytask',54),(1826,'10.33.197.35','2025-01-08 11:35:19','审核管理','/shenqingmanage',54),(1827,'10.33.197.35','2025-01-08 11:35:21','我的任务','/mytask',54),(1828,'10.33.197.35','2025-01-08 11:35:22','审核管理','/shenqingmanage',54),(1829,'10.33.197.35','2025-01-08 11:35:24','我的任务','/mytask',54),(1830,'10.33.197.35','2025-01-08 11:35:25','审核管理','/shenqingmanage',54),(1831,'10.33.197.35','2025-01-08 11:35:27','我的任务','/mytask',54),(1832,'10.33.197.35','2025-01-08 11:35:28','审核管理','/shenqingmanage',54),(1833,'10.33.197.35','2025-01-08 11:35:30','我的任务','/mytask',54),(1834,'10.33.197.35','2025-01-08 11:35:32','审核管理','/shenqingmanage',54),(1835,'10.33.197.35','2025-01-08 11:35:34','我的任务','/mytask',54),(1836,'10.33.197.35','2025-01-08 11:35:35','审核管理','/shenqingmanage',54),(1837,'10.33.197.35','2025-01-08 11:35:37','我的任务','/mytask',54),(1838,'10.33.197.35','2025-01-08 11:35:39','审核管理','/shenqingmanage',54),(1839,'10.33.197.35','2025-01-08 11:35:41','我的任务','/mytask',54),(1840,'10.33.197.35','2025-01-08 11:35:42','审核管理','/shenqingmanage',54),(1841,'10.33.197.35','2025-01-08 11:35:44','我的任务','/mytask',54),(1842,'10.33.197.35','2025-01-08 11:35:46','审核管理','/shenqingmanage',54),(1843,'10.33.197.35','2025-01-08 11:35:49','我的任务','/mytask',54),(1844,'10.33.197.35','2025-01-08 11:35:50','审核管理','/shenqingmanage',54),(1845,'10.33.197.35','2025-01-08 11:35:52','我的任务','/mytask',54),(1846,'10.33.197.35','2025-01-08 11:35:53','审核管理','/shenqingmanage',54),(1847,'10.33.197.35','2025-01-08 11:35:56','我的任务','/mytask',54),(1848,'10.33.197.35','2025-01-08 11:35:57','审核管理','/shenqingmanage',54),(1849,'10.33.197.35','2025-01-08 11:35:59','我的任务','/mytask',54),(1850,'10.33.197.35','2025-01-08 11:36:00','审核管理','/shenqingmanage',54),(1851,'10.33.197.35','2025-01-08 11:36:03','我的任务','/mytask',54),(1852,'10.33.197.35','2025-01-08 11:36:04','审核管理','/shenqingmanage',54),(1853,'10.33.197.35','2025-01-08 11:36:06','我的任务','/mytask',54),(1854,'10.33.197.35','2025-01-08 11:36:07','审核管理','/shenqingmanage',54),(1855,'10.33.197.35','2025-01-08 11:36:10','我的任务','/mytask',54),(1856,'10.33.197.35','2025-01-08 11:36:13','审核管理','/shenqingmanage',54),(1857,'10.33.197.35','2025-01-08 11:36:16','我的任务','/mytask',54),(1858,'10.33.197.35','2025-01-08 11:36:17','审核管理','/shenqingmanage',54),(1859,'10.33.197.35','2025-01-08 11:36:19','我的任务','/mytask',54),(1860,'10.33.197.35','2025-01-08 11:36:20','审核管理','/shenqingmanage',54),(1861,'10.33.197.35','2025-01-08 11:36:22','我的任务','/mytask',54),(1862,'10.33.197.35','2025-01-08 11:36:23','审核管理','/shenqingmanage',54),(1863,'10.33.197.35','2025-01-08 11:36:27','我的任务','/mytask',54),(1864,'10.33.197.35','2025-01-08 11:36:28','审核管理','/shenqingmanage',54),(1865,'10.33.197.35','2025-01-08 11:36:30','我的任务','/mytask',54),(1866,'10.33.197.35','2025-01-08 11:36:31','审核管理','/shenqingmanage',54),(1867,'10.33.197.35','2025-01-08 11:36:37','我的任务','/mytask',54),(1868,'10.33.197.35','2025-01-08 11:36:39','审核管理','/shenqingmanage',54),(1869,'10.33.197.35','2025-01-08 11:36:41','我的任务','/mytask',54),(1870,'10.33.197.35','2025-01-08 11:36:41','审核管理','/shenqingmanage',54),(1871,'10.33.197.35','2025-01-08 11:36:42','审核管理','/shenqingmanage',54),(1872,'10.33.197.35','2025-01-08 11:36:44','我的任务','/mytask',54),(1873,'10.33.197.35','2025-01-08 11:36:45','审核管理','/shenqingmanage',54),(1874,'10.33.197.35','2025-01-08 11:36:49','我的任务','/mytask',54),(1875,'10.33.197.35','2025-01-08 11:36:51','审核管理','/shenqingmanage',54),(1876,'10.33.197.35','2025-01-08 11:36:53','我的任务','/mytask',54),(1877,'10.33.197.35','2025-01-08 11:36:54','审核管理','/shenqingmanage',54),(1878,'10.33.197.35','2025-01-08 11:36:57','我的任务','/mytask',54),(1879,'10.33.197.35','2025-01-08 11:36:58','审核管理','/shenqingmanage',54),(1880,'10.33.197.35','2025-01-08 11:37:01','我的任务','/mytask',54),(1881,'10.33.197.35','2025-01-08 11:37:02','审核管理','/shenqingmanage',54),(1882,'10.33.197.35','2025-01-08 11:37:04','我的任务','/mytask',54),(1883,'10.33.197.35','2025-01-08 11:37:10','审核管理','/shenqingmanage',54),(1884,'10.33.197.35','2025-01-08 11:37:12','我的任务','/mytask',54),(1885,'10.33.197.35','2025-01-08 11:37:14','审核管理','/shenqingmanage',54),(1886,'10.33.197.35','2025-01-08 11:37:16','我的任务','/mytask',54),(1887,'10.33.197.35','2025-01-08 11:37:17','审核管理','/shenqingmanage',54),(1888,'10.33.197.35','2025-01-08 11:37:19','我的任务','/mytask',54),(1889,'10.33.197.35','2025-01-08 11:37:20','审核管理','/shenqingmanage',54),(1890,'10.33.197.35','2025-01-08 11:37:23','我的任务','/mytask',54),(1891,'10.33.197.35','2025-01-08 11:37:24','审核管理','/shenqingmanage',54),(1892,'10.33.197.35','2025-01-08 11:37:27','我的任务','/mytask',54),(1893,'10.33.197.35','2025-01-08 11:37:29','审核管理','/shenqingmanage',54),(1894,'10.33.197.35','2025-01-08 11:37:31','我的任务','/mytask',54),(1895,'10.33.197.35','2025-01-08 11:37:32','审核管理','/shenqingmanage',54),(1896,'10.33.197.35','2025-01-08 11:37:34','我的任务','/mytask',54),(1897,'10.33.197.35','2025-01-08 11:37:35','审核管理','/shenqingmanage',54),(1898,'10.33.197.35','2025-01-08 11:37:37','我的任务','/mytask',54),(1899,'10.33.197.35','2025-01-08 11:37:38','审核管理','/shenqingmanage',54),(1900,'10.33.197.35','2025-01-08 11:37:40','我的任务','/mytask',54),(1901,'10.33.197.35','2025-01-08 11:37:42','审核管理','/shenqingmanage',54),(1902,'10.33.197.35','2025-01-08 11:37:44','我的任务','/mytask',54),(1903,'10.33.197.35','2025-01-08 11:37:45','审核管理','/shenqingmanage',54),(1904,'10.33.197.35','2025-01-08 11:37:47','我的任务','/mytask',54),(1905,'10.33.197.35','2025-01-08 11:37:48','审核管理','/shenqingmanage',54),(1906,'10.33.197.35','2025-01-08 11:37:50','我的任务','/mytask',54),(1907,'10.33.197.35','2025-01-08 11:37:52','审核管理','/shenqingmanage',54),(1908,'10.33.197.35','2025-01-08 11:37:54','我的任务','/mytask',54),(1909,'10.33.197.35','2025-01-08 11:37:55','审核管理','/shenqingmanage',54),(1910,'10.33.197.35','2025-01-08 11:37:58','我的任务','/mytask',54),(1911,'10.33.197.35','2025-01-08 11:38:00','审核管理','/shenqingmanage',54),(1912,'10.33.197.35','2025-01-08 11:38:03','我的任务','/mytask',54),(1913,'10.33.197.35','2025-01-08 11:38:04','审核管理','/shenqingmanage',54),(1914,'10.33.197.35','2025-01-08 11:38:50','我的任务','/mytask',54),(1915,'10.33.197.35','2025-01-08 11:38:52','审核管理','/shenqingmanage',54),(1916,'10.33.197.35','2025-01-08 11:39:12','我的任务','/mytask',54),(1917,'10.33.197.35','2025-01-08 11:42:23','审核管理','/shenqingmanage',54),(1918,'10.33.197.35','2025-01-08 11:42:26','我的任务','/mytask',54),(1919,'10.33.197.35','2025-01-08 11:42:28','审核管理','/shenqingmanage',54),(1920,'10.33.197.35','2025-01-08 11:42:30','我的任务','/mytask',54),(1921,'10.33.197.35','2025-01-08 11:42:31','审核管理','/shenqingmanage',54),(1922,'10.33.197.35','2025-01-08 11:42:34','我的任务','/mytask',54),(1923,'10.33.197.35','2025-01-08 11:42:35','审核管理','/shenqingmanage',54),(1924,'10.33.197.35','2025-01-08 11:42:37','我的任务','/mytask',54),(1925,'10.33.197.35','2025-01-08 11:42:38','审核管理','/shenqingmanage',54),(1926,'10.33.197.35','2025-01-08 11:42:40','我的任务','/mytask',54),(1927,'10.33.197.35','2025-01-08 11:42:41','审核管理','/shenqingmanage',54),(1928,'10.33.197.35','2025-01-08 11:42:43','我的任务','/mytask',54),(1929,'10.33.197.35','2025-01-08 11:42:45','审核管理','/shenqingmanage',54),(1930,'10.33.197.35','2025-01-08 11:42:47','我的任务','/mytask',54),(1931,'10.33.197.35','2025-01-08 11:42:48','审核管理','/shenqingmanage',54),(1932,'10.33.197.35','2025-01-08 11:42:50','我的任务','/mytask',54),(1933,'10.33.197.35','2025-01-08 11:42:51','审核管理','/shenqingmanage',54),(1934,'10.33.197.35','2025-01-08 11:42:53','我的任务','/mytask',54),(1935,'10.33.197.35','2025-01-08 11:42:53','审核管理','/shenqingmanage',54),(1936,'10.33.197.35','2025-01-08 11:42:54','审核管理','/shenqingmanage',54),(1937,'10.33.197.35','2025-01-08 11:42:56','我的任务','/mytask',54),(1938,'10.33.197.35','2025-01-08 11:42:57','审核管理','/shenqingmanage',54),(1939,'10.33.197.35','2025-01-08 11:43:01','我的任务','/mytask',54),(1940,'10.33.197.35','2025-01-08 11:43:02','审核管理','/shenqingmanage',54),(1941,'10.33.197.35','2025-01-08 11:43:04','我的任务','/mytask',54),(1942,'10.33.197.35','2025-01-08 11:43:05','审核管理','/shenqingmanage',54),(1943,'10.33.197.35','2025-01-08 11:43:07','我的任务','/mytask',54),(1944,'10.33.197.35','2025-01-08 11:43:08','审核管理','/shenqingmanage',54),(1945,'10.33.197.35','2025-01-08 11:43:10','我的任务','/mytask',54),(1946,'10.33.197.35','2025-01-08 11:43:11','审核管理','/shenqingmanage',54),(1947,'10.33.197.35','2025-01-08 11:43:13','我的任务','/mytask',54),(1948,'10.33.197.35','2025-01-08 11:43:14','审核管理','/shenqingmanage',54),(1949,'10.33.197.35','2025-01-08 11:43:17','我的任务','/mytask',54),(1950,'10.33.197.35','2025-01-08 11:43:18','审核管理','/shenqingmanage',54),(1951,'10.33.197.35','2025-01-08 11:43:20','我的任务','/mytask',54),(1952,'10.33.197.35','2025-01-08 11:43:21','审核管理','/shenqingmanage',54),(1953,'10.33.197.35','2025-01-08 11:43:23','我的任务','/mytask',54),(1954,'10.33.197.35','2025-01-08 11:43:24','审核管理','/shenqingmanage',54),(1955,'10.33.197.35','2025-01-08 11:43:27','我的任务','/mytask',54),(1956,'10.33.197.35','2025-01-08 11:43:29','审核管理','/shenqingmanage',54),(1957,'10.33.197.35','2025-01-08 11:43:32','我的任务','/mytask',54),(1958,'10.33.197.35','2025-01-08 11:43:33','审核管理','/shenqingmanage',54),(1959,'10.33.197.35','2025-01-08 11:43:35','我的任务','/mytask',54),(1960,'10.33.197.35','2025-01-08 11:43:36','审核管理','/shenqingmanage',54),(1961,'10.33.197.35','2025-01-08 11:43:38','我的任务','/mytask',54),(1962,'10.33.197.35','2025-01-08 11:43:41','审核管理','/shenqingmanage',54),(1963,'10.33.197.35','2025-01-08 11:43:46','我的任务','/mytask',54),(1964,'10.33.197.35','2025-01-08 11:43:46','审核管理','/shenqingmanage',54),(1965,'10.33.197.35','2025-01-08 11:43:47','审核管理','/shenqingmanage',54),(1966,'10.33.197.35','2025-01-08 11:43:50','我的任务','/mytask',54),(1967,'10.33.197.35','2025-01-08 11:43:50','审核管理','/shenqingmanage',54),(1968,'10.33.197.35','2025-01-08 11:43:51','审核管理','/shenqingmanage',54),(1969,'10.33.197.35','2025-01-08 11:43:53','我的任务','/mytask',54),(1970,'10.33.197.35','2025-01-08 11:43:54','审核管理','/shenqingmanage',54),(1971,'10.33.197.35','2025-01-08 11:43:57','我的任务','/mytask',54),(1972,'10.33.197.35','2025-01-08 11:43:58','审核管理','/shenqingmanage',54),(1973,'10.33.197.35','2025-01-08 11:44:00','我的任务','/mytask',54),(1974,'10.33.197.35','2025-01-08 11:44:01','审核管理','/shenqingmanage',54),(1975,'10.33.197.35','2025-01-08 11:44:03','我的任务','/mytask',54),(1976,'10.33.197.35','2025-01-08 11:44:04','审核管理','/shenqingmanage',54),(1977,'10.33.197.35','2025-01-08 11:44:07','我的任务','/mytask',54),(1978,'10.33.197.35','2025-01-08 11:44:07','审核管理','/shenqingmanage',54),(1979,'10.33.197.35','2025-01-08 11:44:08','审核管理','/shenqingmanage',54),(1980,'10.33.197.35','2025-01-08 11:44:10','我的任务','/mytask',54),(1981,'10.33.197.35','2025-01-08 11:44:11','审核管理','/shenqingmanage',54),(1982,'10.33.197.35','2025-01-08 11:44:14','我的任务','/mytask',54),(1983,'10.33.197.35','2025-01-08 11:44:16','审核管理','/shenqingmanage',54),(1984,'10.33.197.35','2025-01-08 11:44:19','我的任务','/mytask',54),(1985,'10.33.197.35','2025-01-08 11:44:20','审核管理','/shenqingmanage',54),(1986,'10.33.197.35','2025-01-08 11:44:22','我的任务','/mytask',54),(1987,'10.33.197.35','2025-01-08 11:44:23','审核管理','/shenqingmanage',54),(1988,'10.33.197.35','2025-01-08 11:44:25','我的任务','/mytask',54),(1989,'10.33.197.35','2025-01-08 11:44:26','审核管理','/shenqingmanage',54),(1990,'10.33.197.35','2025-01-08 11:44:29','我的任务','/mytask',54),(1991,'10.33.197.35','2025-01-08 11:44:30','审核管理','/shenqingmanage',54),(1992,'10.33.197.35','2025-01-08 11:44:33','我的任务','/mytask',54),(1993,'10.33.197.35','2025-01-08 11:44:33','审核管理','/shenqingmanage',54),(1994,'10.33.197.35','2025-01-08 11:44:34','审核管理','/shenqingmanage',54),(1995,'10.33.197.35','2025-01-08 11:44:36','我的任务','/mytask',54),(1996,'10.33.197.35','2025-01-08 11:44:37','审核管理','/shenqingmanage',54),(1997,'10.33.197.35','2025-01-08 11:44:41','我的任务','/mytask',54),(1998,'10.33.197.35','2025-01-08 11:44:42','审核管理','/shenqingmanage',54),(1999,'10.33.197.35','2025-01-08 11:44:45','我的任务','/mytask',54),(2000,'10.33.197.35','2025-01-08 11:44:46','审核管理','/shenqingmanage',54),(2001,'10.33.197.35','2025-01-08 11:44:48','我的任务','/mytask',54),(2002,'10.33.197.35','2025-01-08 11:44:49','审核管理','/shenqingmanage',54),(2003,'10.33.197.35','2025-01-08 11:44:51','我的任务','/mytask',54),(2004,'10.33.197.35','2025-01-08 11:44:52','审核管理','/shenqingmanage',54),(2005,'10.33.197.35','2025-01-08 11:44:54','我的任务','/mytask',54),(2006,'10.33.197.35','2025-01-08 11:44:55','审核管理','/shenqingmanage',54),(2007,'10.33.197.35','2025-01-08 11:44:57','我的任务','/mytask',54),(2008,'10.33.197.35','2025-01-08 11:44:58','审核管理','/shenqingmanage',54),(2009,'10.33.197.35','2025-01-08 11:45:01','我的任务','/mytask',54),(2010,'10.33.197.35','2025-01-08 11:45:02','审核管理','/shenqingmanage',54),(2011,'10.33.197.35','2025-01-08 11:45:04','我的任务','/mytask',54),(2012,'10.33.197.35','2025-01-08 11:45:06','审核管理','/shenqingmanage',54),(2013,'10.33.197.35','2025-01-08 11:45:09','我的任务','/mytask',54),(2014,'10.33.197.35','2025-01-08 11:45:09','审核管理','/shenqingmanage',54),(2015,'10.33.197.35','2025-01-08 11:45:09','审核管理','/shenqingmanage',54),(2016,'10.33.197.35','2025-01-08 11:45:14','审核管理','/shenqingmanage',54),(2017,'10.33.197.35','2025-01-08 11:45:16','我的任务','/mytask',54),(2018,'10.33.197.35','2025-01-08 11:45:18','审核管理','/shenqingmanage',54),(2019,'10.33.197.35','2025-01-08 11:45:21','我的任务','/mytask',54),(2020,'10.33.197.35','2025-01-08 11:45:22','审核管理','/shenqingmanage',54),(2021,'10.33.197.35','2025-01-08 11:45:25','我的任务','/mytask',54),(2022,'10.33.197.35','2025-01-08 11:45:26','审核管理','/shenqingmanage',54),(2023,'10.33.197.35','2025-01-08 11:45:28','我的任务','/mytask',54),(2024,'10.33.197.35','2025-01-08 11:45:29','审核管理','/shenqingmanage',54),(2025,'10.33.197.35','2025-01-08 11:45:31','我的任务','/mytask',54),(2026,'10.33.197.35','2025-01-08 11:45:32','审核管理','/shenqingmanage',54),(2027,'10.33.197.35','2025-01-08 11:45:38','我的任务','/mytask',54),(2028,'10.33.197.35','2025-01-08 11:45:40','审核管理','/shenqingmanage',54),(2029,'10.33.197.35','2025-01-08 11:45:42','我的任务','/mytask',54),(2030,'10.33.197.35','2025-01-08 11:45:46','审核管理','/shenqingmanage',54),(2031,'10.33.197.35','2025-01-08 11:45:49','我的任务','/mytask',54),(2032,'10.33.197.35','2025-01-08 11:45:50','审核管理','/shenqingmanage',54),(2033,'10.33.197.35','2025-01-08 11:45:52','我的任务','/mytask',54),(2034,'10.33.197.35','2025-01-08 11:45:54','审核管理','/shenqingmanage',54),(2035,'10.33.197.35','2025-01-08 11:45:58','我的任务','/mytask',54),(2036,'10.33.197.35','2025-01-08 11:45:59','审核管理','/shenqingmanage',54),(2037,'10.33.197.35','2025-01-08 11:46:01','我的任务','/mytask',54),(2038,'10.33.197.35','2025-01-08 11:46:02','审核管理','/shenqingmanage',54),(2039,'10.33.197.35','2025-01-08 11:46:05','我的任务','/mytask',54),(2040,'10.33.197.35','2025-01-08 11:46:07','审核管理','/shenqingmanage',54),(2041,'10.33.197.35','2025-01-08 11:46:10','我的任务','/mytask',54),(2042,'10.33.197.35','2025-01-08 11:46:11','审核管理','/shenqingmanage',54),(2043,'10.33.197.35','2025-01-08 11:46:13','我的任务','/mytask',54),(2044,'10.33.197.35','2025-01-08 11:46:14','审核管理','/shenqingmanage',54),(2045,'10.33.197.35','2025-01-08 11:46:16','我的任务','/mytask',54),(2046,'10.33.197.35','2025-01-08 11:46:18','审核管理','/shenqingmanage',54),(2047,'10.33.197.35','2025-01-08 11:46:22','我的任务','/mytask',54),(2048,'10.33.197.35','2025-01-08 11:46:24','审核管理','/shenqingmanage',54),(2049,'10.33.197.35','2025-01-08 11:46:26','我的任务','/mytask',54),(2050,'10.33.197.35','2025-01-08 11:46:27','审核管理','/shenqingmanage',54),(2051,'10.33.197.35','2025-01-08 11:46:29','我的任务','/mytask',54),(2052,'10.33.197.35','2025-01-08 11:46:30','审核管理','/shenqingmanage',54),(2053,'10.33.197.35','2025-01-08 11:46:32','我的任务','/mytask',54),(2054,'10.33.197.35','2025-01-08 11:46:34','审核管理','/shenqingmanage',54),(2055,'10.33.197.35','2025-01-08 11:46:36','我的任务','/mytask',54),(2056,'10.33.197.35','2025-01-08 11:46:37','审核管理','/shenqingmanage',54),(2057,'10.33.197.35','2025-01-08 11:46:40','我的任务','/mytask',54),(2058,'10.33.197.35','2025-01-08 11:46:41','审核管理','/shenqingmanage',54),(2059,'10.33.197.35','2025-01-08 11:46:43','我的任务','/mytask',54),(2060,'10.33.197.35','2025-01-08 11:46:44','审核管理','/shenqingmanage',54),(2061,'10.33.197.35','2025-01-08 11:46:47','我的任务','/mytask',54),(2062,'10.33.197.35','2025-01-08 11:46:50','审核管理','/shenqingmanage',54),(2063,'10.33.197.35','2025-01-08 11:46:53','我的任务','/mytask',54),(2064,'10.33.197.35','2025-01-08 11:46:54','审核管理','/shenqingmanage',54),(2065,'10.33.197.35','2025-01-08 11:46:57','我的任务','/mytask',54),(2066,'10.33.197.35','2025-01-08 11:46:58','审核管理','/shenqingmanage',54),(2067,'10.33.197.35','2025-01-08 11:47:00','我的任务','/mytask',54),(2068,'10.33.197.35','2025-01-08 11:47:04','审核管理','/shenqingmanage',54),(2069,'10.33.197.35','2025-01-08 11:47:06','我的任务','/mytask',54),(2070,'10.33.197.35','2025-01-08 11:47:08','审核管理','/shenqingmanage',54),(2071,'10.33.197.35','2025-01-08 11:47:10','我的任务','/mytask',54),(2072,'10.33.197.35','2025-01-08 11:47:11','审核管理','/shenqingmanage',54),(2073,'10.33.197.35','2025-01-08 11:47:14','我的任务','/mytask',54),(2074,'10.33.197.35','2025-01-08 11:47:16','审核管理','/shenqingmanage',54),(2075,'10.33.197.35','2025-01-08 11:47:20','我的任务','/mytask',54),(2076,'10.33.197.35','2025-01-08 11:47:21','审核管理','/shenqingmanage',54),(2077,'10.33.197.35','2025-01-08 11:47:23','我的任务','/mytask',54),(2078,'10.33.197.35','2025-01-08 11:47:24','审核管理','/shenqingmanage',54),(2079,'10.33.197.35','2025-01-08 11:47:28','我的任务','/mytask',54),(2080,'10.33.197.35','2025-01-08 11:47:29','审核管理','/shenqingmanage',54),(2081,'10.33.197.35','2025-01-08 11:47:31','我的任务','/mytask',54),(2082,'10.33.197.35','2025-01-08 11:47:33','审核管理','/shenqingmanage',54),(2083,'10.33.197.35','2025-01-08 11:47:35','我的任务','/mytask',54),(2084,'10.33.197.35','2025-01-08 11:47:36','审核管理','/shenqingmanage',54),(2085,'10.33.197.35','2025-01-08 11:47:39','我的任务','/mytask',54),(2086,'10.33.197.35','2025-01-08 11:47:40','审核管理','/shenqingmanage',54),(2087,'10.33.197.35','2025-01-08 11:47:43','我的任务','/mytask',54),(2088,'10.33.197.35','2025-01-08 11:47:44','审核管理','/shenqingmanage',54),(2089,'10.33.197.35','2025-01-08 11:47:47','我的任务','/mytask',54),(2090,'10.33.197.35','2025-01-08 11:47:48','审核管理','/shenqingmanage',54),(2091,'10.33.197.35','2025-01-08 11:47:50','我的任务','/mytask',54),(2092,'10.33.197.35','2025-01-08 11:47:53','审核管理','/shenqingmanage',54),(2093,'10.33.197.35','2025-01-08 11:47:57','我的任务','/mytask',54),(2094,'10.33.197.35','2025-01-08 11:48:12','审核管理','/shenqingmanage',54),(2095,'10.33.197.35','2025-01-08 11:48:14','我的任务','/mytask',54),(2096,'10.33.197.35','2025-01-08 11:48:15','审核管理','/shenqingmanage',54),(2097,'10.33.197.35','2025-01-08 11:48:17','我的任务','/mytask',54),(2098,'10.33.197.35','2025-01-08 11:48:18','审核管理','/shenqingmanage',54),(2099,'10.33.197.35','2025-01-08 11:48:21','我的任务','/mytask',54),(2100,'10.33.197.35','2025-01-08 11:48:21','审核管理','/shenqingmanage',54),(2101,'10.33.197.35','2025-01-08 11:48:22','审核管理','/shenqingmanage',54),(2102,'10.33.197.35','2025-01-08 11:48:24','我的任务','/mytask',54),(2103,'10.33.197.35','2025-01-08 11:48:25','审核管理','/shenqingmanage',54),(2104,'10.33.197.35','2025-01-08 11:48:27','我的任务','/mytask',54),(2105,'10.33.197.35','2025-01-08 11:48:28','审核管理','/shenqingmanage',54),(2106,'10.33.197.35','2025-01-08 11:48:32','我的任务','/mytask',54),(2107,'10.33.197.35','2025-01-08 11:48:33','审核管理','/shenqingmanage',54),(2108,'10.33.197.35','2025-01-08 11:48:36','我的任务','/mytask',54),(2109,'10.33.197.35','2025-01-08 11:48:37','审核管理','/shenqingmanage',54),(2110,'10.33.197.35','2025-01-08 11:48:40','我的任务','/mytask',54),(2111,'10.33.197.35','2025-01-08 11:48:41','审核管理','/shenqingmanage',54),(2112,'10.33.197.35','2025-01-08 11:48:47','我的任务','/mytask',54),(2113,'10.33.197.35','2025-01-08 11:48:49','审核管理','/shenqingmanage',54),(2114,'10.33.197.35','2025-01-08 11:48:51','我的任务','/mytask',54),(2115,'10.33.197.35','2025-01-08 11:48:52','审核管理','/shenqingmanage',54),(2116,'10.33.197.35','2025-01-08 11:48:55','我的任务','/mytask',54),(2117,'10.33.197.35','2025-01-08 11:48:56','审核管理','/shenqingmanage',54),(2118,'10.33.197.35','2025-01-08 11:48:58','我的任务','/mytask',54),(2119,'10.33.197.35','2025-01-08 11:48:59','审核管理','/shenqingmanage',54),(2120,'10.33.197.35','2025-01-08 11:49:02','我的任务','/mytask',54),(2121,'10.33.197.35','2025-01-08 11:49:06','审核管理','/shenqingmanage',54),(2122,'10.33.197.35','2025-01-08 11:49:09','我的任务','/mytask',54),(2123,'10.33.197.35','2025-01-08 11:49:10','审核管理','/shenqingmanage',54),(2124,'10.33.197.35','2025-01-08 11:49:12','我的任务','/mytask',54),(2125,'10.33.197.35','2025-01-08 11:49:13','审核管理','/shenqingmanage',54),(2126,'10.33.197.35','2025-01-08 11:49:16','我的任务','/mytask',54),(2127,'10.33.197.35','2025-01-08 11:49:26','审核管理','/shenqingmanage',54),(2128,'10.33.197.35','2025-01-08 11:49:28','我的任务','/mytask',54),(2129,'10.33.197.35','2025-01-08 11:49:31','审核管理','/shenqingmanage',54),(2130,'10.33.197.35','2025-01-08 11:49:34','我的任务','/mytask',54),(2131,'10.33.197.35','2025-01-08 11:49:37','审核管理','/shenqingmanage',54),(2132,'10.33.197.35','2025-01-08 11:49:40','我的任务','/mytask',54),(2133,'10.33.197.35','2025-01-08 11:49:42','审核管理','/shenqingmanage',54),(2134,'10.33.197.35','2025-01-08 11:49:44','我的任务','/mytask',54),(2135,'10.33.197.35','2025-01-08 11:49:45','审核管理','/shenqingmanage',54),(2136,'10.33.197.35','2025-01-08 11:49:48','我的任务','/mytask',54),(2137,'10.33.197.35','2025-01-08 11:49:49','审核管理','/shenqingmanage',54),(2138,'10.33.197.35','2025-01-08 11:49:51','我的任务','/mytask',54),(2139,'10.33.197.35','2025-01-08 11:49:52','审核管理','/shenqingmanage',54),(2140,'10.33.197.35','2025-01-08 11:49:54','我的任务','/mytask',54),(2141,'10.33.197.35','2025-01-08 11:49:55','审核管理','/shenqingmanage',54),(2142,'10.33.197.35','2025-01-08 11:49:57','我的任务','/mytask',54),(2143,'10.33.197.35','2025-01-08 11:50:00','审核管理','/shenqingmanage',54),(2144,'10.33.197.35','2025-01-08 11:50:04','我的任务','/mytask',54),(2145,'10.33.197.35','2025-01-08 11:50:05','审核管理','/shenqingmanage',54),(2146,'10.33.197.35','2025-01-08 11:50:08','我的任务','/mytask',54),(2147,'10.33.197.35','2025-01-08 11:50:09','审核管理','/shenqingmanage',54),(2148,'10.33.197.35','2025-01-08 11:50:12','我的任务','/mytask',54),(2149,'10.33.197.35','2025-01-08 11:50:13','审核管理','/shenqingmanage',54),(2150,'10.33.197.35','2025-01-08 11:50:15','我的任务','/mytask',54),(2151,'10.33.197.35','2025-01-08 11:50:16','审核管理','/shenqingmanage',54),(2152,'10.33.197.35','2025-01-08 11:50:20','我的任务','/mytask',54),(2153,'10.33.197.35','2025-01-08 12:29:12','三单一览','/threebookmanage',42),(2154,'10.33.197.35','2025-01-08 13:51:17','三单一览','/threebookmanage',52),(2155,'10.33.197.35','2025-01-08 13:52:25','我的任务','/mytask',52),(2156,'10.33.197.35','2025-01-08 13:52:40','三单一览','/threebookmanage',52),(2157,'10.33.197.35','2025-01-08 13:54:27','三单一览','/threebookmanage',47),(2158,'10.33.197.35','2025-01-08 13:55:55','我的任务','/mytask',47),(2159,'10.33.197.35','2025-01-08 14:13:00','审核管理','/shenqingmanage',54),(2160,'10.33.197.35','2025-01-08 14:13:03','我的任务','/mytask',54),(2161,'10.33.197.35','2025-01-08 14:13:05','审核管理','/shenqingmanage',54),(2162,'10.33.197.35','2025-01-08 14:13:07','我的任务','/mytask',54),(2163,'10.33.197.35','2025-01-08 14:13:09','审核管理','/shenqingmanage',54),(2164,'10.33.197.35','2025-01-08 14:13:11','我的任务','/mytask',54),(2165,'10.33.197.35','2025-01-08 14:13:12','审核管理','/shenqingmanage',54),(2166,'10.33.197.35','2025-01-08 14:13:15','我的任务','/mytask',54),(2167,'10.33.197.35','2025-01-08 14:13:16','审核管理','/shenqingmanage',54),(2168,'10.33.197.35','2025-01-08 14:13:18','我的任务','/mytask',54),(2169,'10.33.197.35','2025-01-08 14:13:20','审核管理','/shenqingmanage',54),(2170,'10.33.197.35','2025-01-08 14:13:22','我的任务','/mytask',54),(2171,'10.33.197.35','2025-01-08 14:13:24','审核管理','/shenqingmanage',54),(2172,'10.33.197.35','2025-01-08 14:13:28','我的任务','/mytask',54),(2173,'10.33.197.35','2025-01-08 14:13:29','审核管理','/shenqingmanage',54),(2174,'10.33.197.35','2025-01-08 14:13:32','我的任务','/mytask',54),(2175,'10.33.197.35','2025-01-08 14:13:33','审核管理','/shenqingmanage',54),(2176,'10.33.197.35','2025-01-08 14:13:35','我的任务','/mytask',54),(2177,'10.33.197.35','2025-01-08 14:13:36','审核管理','/shenqingmanage',54),(2178,'10.33.197.35','2025-01-08 14:13:39','我的任务','/mytask',54),(2179,'10.33.197.35','2025-01-08 14:13:40','审核管理','/shenqingmanage',54),(2180,'10.33.197.35','2025-01-08 14:13:42','我的任务','/mytask',54),(2181,'10.33.197.35','2025-01-08 14:13:44','审核管理','/shenqingmanage',54),(2182,'10.33.197.35','2025-01-08 14:13:46','我的任务','/mytask',54),(2183,'10.33.197.35','2025-01-08 14:13:47','审核管理','/shenqingmanage',54),(2184,'10.33.197.35','2025-01-08 14:13:49','我的任务','/mytask',54),(2185,'10.33.197.35','2025-01-08 14:13:51','审核管理','/shenqingmanage',54),(2186,'10.33.197.35','2025-01-08 14:13:53','我的任务','/mytask',54),(2187,'10.33.197.35','2025-01-08 14:13:54','审核管理','/shenqingmanage',54),(2188,'10.33.197.35','2025-01-08 14:13:56','我的任务','/mytask',54),(2189,'10.33.197.35','2025-01-08 14:13:57','审核管理','/shenqingmanage',54),(2190,'10.33.197.35','2025-01-08 14:14:02','我的任务','/mytask',54),(2191,'10.33.197.35','2025-01-08 14:14:03','审核管理','/shenqingmanage',54),(2192,'10.33.197.35','2025-01-08 14:14:05','我的任务','/mytask',54),(2193,'10.33.197.35','2025-01-08 14:14:06','审核管理','/shenqingmanage',54),(2194,'10.33.197.35','2025-01-08 14:14:09','我的任务','/mytask',54),(2195,'10.33.197.35','2025-01-08 14:14:11','审核管理','/shenqingmanage',54),(2196,'10.33.197.35','2025-01-08 14:14:13','我的任务','/mytask',54),(2197,'10.33.197.35','2025-01-08 14:14:14','审核管理','/shenqingmanage',54),(2198,'10.33.197.35','2025-01-08 14:14:16','我的任务','/mytask',54),(2199,'10.33.197.35','2025-01-08 14:14:18','审核管理','/shenqingmanage',54),(2200,'10.33.197.35','2025-01-08 14:14:20','我的任务','/mytask',54),(2201,'10.33.197.35','2025-01-08 14:14:22','审核管理','/shenqingmanage',54),(2202,'10.33.197.35','2025-01-08 14:14:24','我的任务','/mytask',54),(2203,'10.33.197.35','2025-01-08 14:14:25','审核管理','/shenqingmanage',54),(2204,'10.33.197.35','2025-01-08 14:14:29','我的任务','/mytask',54),(2205,'10.33.197.35','2025-01-08 14:14:30','审核管理','/shenqingmanage',54),(2206,'10.33.197.35','2025-01-08 14:14:32','我的任务','/mytask',54),(2207,'10.33.197.35','2025-01-08 14:14:33','审核管理','/shenqingmanage',54),(2208,'10.33.197.35','2025-01-08 14:14:35','我的任务','/mytask',54),(2209,'10.33.197.35','2025-01-08 14:14:37','审核管理','/shenqingmanage',54),(2210,'10.33.197.35','2025-01-08 14:14:39','我的任务','/mytask',54),(2211,'10.33.197.35','2025-01-08 14:14:40','审核管理','/shenqingmanage',54),(2212,'10.33.197.35','2025-01-08 14:14:43','我的任务','/mytask',54),(2213,'10.33.197.35','2025-01-08 14:14:43','审核管理','/shenqingmanage',54),(2214,'10.33.197.35','2025-01-08 14:14:44','审核管理','/shenqingmanage',54),(2215,'10.33.197.35','2025-01-08 14:14:47','我的任务','/mytask',54),(2216,'10.33.197.35','2025-01-08 14:14:47','审核管理','/shenqingmanage',54),(2217,'10.33.197.35','2025-01-08 14:14:48','审核管理','/shenqingmanage',54),(2218,'10.33.197.35','2025-01-08 14:14:50','我的任务','/mytask',54),(2219,'10.33.197.35','2025-01-08 14:14:51','审核管理','/shenqingmanage',54),(2220,'10.33.197.35','2025-01-08 14:14:54','我的任务','/mytask',54),(2221,'10.33.197.35','2025-01-08 14:14:55','审核管理','/shenqingmanage',54),(2222,'10.33.197.35','2025-01-08 14:14:58','我的任务','/mytask',54),(2223,'10.33.197.35','2025-01-08 14:14:59','审核管理','/shenqingmanage',54),(2224,'10.33.197.35','2025-01-08 14:15:01','我的任务','/mytask',54),(2225,'10.33.197.35','2025-01-08 14:15:02','审核管理','/shenqingmanage',54),(2226,'10.33.197.35','2025-01-08 14:15:05','我的任务','/mytask',54),(2227,'10.33.197.35','2025-01-08 14:15:08','审核管理','/shenqingmanage',54),(2228,'10.33.197.35','2025-01-08 14:15:12','我的任务','/mytask',54),(2229,'10.33.197.35','2025-01-08 14:15:13','审核管理','/shenqingmanage',54),(2230,'10.33.197.35','2025-01-08 14:15:15','我的任务','/mytask',54),(2231,'10.33.197.35','2025-01-08 14:15:16','审核管理','/shenqingmanage',54),(2232,'10.33.197.35','2025-01-08 14:15:18','我的任务','/mytask',54),(2233,'10.33.197.35','2025-01-08 14:15:18','审核管理','/shenqingmanage',54),(2234,'10.33.197.35','2025-01-08 14:15:19','审核管理','/shenqingmanage',54),(2235,'10.33.197.35','2025-01-08 14:15:21','我的任务','/mytask',54),(2236,'10.33.197.35','2025-01-08 14:15:22','审核管理','/shenqingmanage',54),(2237,'10.33.197.35','2025-01-08 14:15:24','我的任务','/mytask',54),(2238,'10.33.197.35','2025-01-08 14:15:26','审核管理','/shenqingmanage',54),(2239,'10.33.197.35','2025-01-08 14:15:28','我的任务','/mytask',54),(2240,'10.33.197.35','2025-01-08 14:15:29','审核管理','/shenqingmanage',54),(2241,'10.33.197.35','2025-01-08 14:15:31','我的任务','/mytask',54),(2242,'10.33.197.35','2025-01-08 14:15:32','审核管理','/shenqingmanage',54),(2243,'10.33.197.35','2025-01-08 14:15:35','我的任务','/mytask',54),(2244,'10.33.197.35','2025-01-08 14:15:36','审核管理','/shenqingmanage',54),(2245,'10.33.197.35','2025-01-08 14:15:39','我的任务','/mytask',54),(2246,'10.33.197.35','2025-01-08 14:15:40','审核管理','/shenqingmanage',54),(2247,'10.33.197.35','2025-01-08 14:15:42','我的任务','/mytask',54),(2248,'10.33.197.35','2025-01-08 14:15:44','审核管理','/shenqingmanage',54),(2249,'10.33.197.35','2025-01-08 14:15:46','我的任务','/mytask',54),(2250,'10.33.197.35','2025-01-08 14:15:46','审核管理','/shenqingmanage',54),(2251,'10.33.197.35','2025-01-08 14:15:47','审核管理','/shenqingmanage',54),(2252,'10.33.197.35','2025-01-08 14:15:49','我的任务','/mytask',54),(2253,'10.33.197.35','2025-01-08 14:15:50','审核管理','/shenqingmanage',54),(2254,'10.33.197.35','2025-01-08 14:15:52','我的任务','/mytask',54),(2255,'10.33.197.35','2025-01-08 14:15:53','审核管理','/shenqingmanage',54),(2256,'10.33.197.35','2025-01-08 14:15:56','我的任务','/mytask',54),(2257,'10.33.197.35','2025-01-08 14:15:57','审核管理','/shenqingmanage',54),(2258,'10.33.197.35','2025-01-08 14:15:59','我的任务','/mytask',54),(2259,'10.33.197.35','2025-01-08 14:15:59','审核管理','/shenqingmanage',54),(2260,'10.33.197.35','2025-01-08 14:16:04','审核管理','/shenqingmanage',54),(2261,'10.33.197.35','2025-01-08 14:16:06','我的任务','/mytask',54),(2262,'10.33.197.35','2025-01-08 14:16:07','审核管理','/shenqingmanage',54),(2263,'10.33.197.35','2025-01-08 14:16:10','我的任务','/mytask',54),(2264,'10.33.197.35','2025-01-08 14:16:10','审核管理','/shenqingmanage',54),(2265,'10.33.197.35','2025-01-08 14:16:11','审核管理','/shenqingmanage',54),(2266,'10.33.197.35','2025-01-08 14:16:13','我的任务','/mytask',54),(2267,'10.33.197.35','2025-01-08 14:16:14','审核管理','/shenqingmanage',54),(2268,'10.33.197.35','2025-01-08 14:16:16','我的任务','/mytask',54),(2269,'10.33.197.35','2025-01-08 14:16:17','审核管理','/shenqingmanage',54),(2270,'10.33.197.35','2025-01-08 14:16:20','我的任务','/mytask',54),(2271,'10.33.197.35','2025-01-08 14:16:21','审核管理','/shenqingmanage',54),(2272,'10.33.197.35','2025-01-08 14:16:23','我的任务','/mytask',54),(2273,'10.33.197.35','2025-01-08 14:16:24','审核管理','/shenqingmanage',54),(2274,'10.33.197.35','2025-01-08 14:16:27','我的任务','/mytask',54),(2275,'10.33.197.35','2025-01-08 14:16:28','审核管理','/shenqingmanage',54),(2276,'10.33.197.35','2025-01-08 14:16:30','我的任务','/mytask',54),(2277,'10.33.197.35','2025-01-08 14:16:32','审核管理','/shenqingmanage',54),(2278,'10.33.197.35','2025-01-08 14:16:34','我的任务','/mytask',54),(2279,'10.33.197.35','2025-01-08 14:16:36','审核管理','/shenqingmanage',54),(2280,'10.33.197.35','2025-01-08 14:16:38','我的任务','/mytask',54),(2281,'10.33.197.35','2025-01-08 14:16:38','审核管理','/shenqingmanage',54),(2282,'10.33.197.35','2025-01-08 14:16:39','审核管理','/shenqingmanage',54),(2283,'10.33.197.35','2025-01-08 14:16:40','我的任务','/mytask',54),(2284,'10.33.197.35','2025-01-08 14:16:42','审核管理','/shenqingmanage',54),(2285,'10.33.197.35','2025-01-08 14:16:44','我的任务','/mytask',54),(2286,'10.33.197.35','2025-01-08 14:16:46','审核管理','/shenqingmanage',54),(2287,'10.33.197.35','2025-01-08 14:16:49','我的任务','/mytask',54),(2288,'10.33.197.35','2025-01-08 14:16:50','审核管理','/shenqingmanage',54),(2289,'10.33.197.35','2025-01-08 14:16:52','我的任务','/mytask',54),(2290,'10.33.197.35','2025-01-08 14:16:53','审核管理','/shenqingmanage',54),(2291,'10.33.197.35','2025-01-08 14:16:56','我的任务','/mytask',54),(2292,'10.33.197.35','2025-01-08 14:16:57','审核管理','/shenqingmanage',54),(2293,'10.33.197.35','2025-01-08 14:16:59','我的任务','/mytask',54),(2294,'10.33.197.35','2025-01-08 14:17:00','审核管理','/shenqingmanage',54),(2295,'10.33.197.35','2025-01-08 14:17:03','我的任务','/mytask',54),(2296,'10.33.197.35','2025-01-08 14:17:04','审核管理','/shenqingmanage',54),(2297,'10.33.197.35','2025-01-08 14:17:07','我的任务','/mytask',54),(2298,'10.33.197.35','2025-01-08 14:17:08','审核管理','/shenqingmanage',54),(2299,'10.33.197.35','2025-01-08 14:17:11','我的任务','/mytask',54),(2300,'10.33.197.35','2025-01-08 14:17:14','审核管理','/shenqingmanage',54),(2301,'10.33.197.35','2025-01-08 14:17:16','我的任务','/mytask',54),(2302,'10.33.197.35','2025-01-08 14:17:17','审核管理','/shenqingmanage',54),(2303,'10.33.197.35','2025-01-08 14:17:20','我的任务','/mytask',54),(2304,'10.33.197.35','2025-01-08 14:17:22','审核管理','/shenqingmanage',54),(2305,'10.33.197.35','2025-01-08 14:17:25','我的任务','/mytask',54),(2306,'10.33.197.35','2025-01-08 14:17:25','审核管理','/shenqingmanage',54),(2307,'10.33.197.35','2025-01-08 14:17:26','审核管理','/shenqingmanage',54),(2308,'10.33.197.35','2025-01-08 14:17:28','我的任务','/mytask',54),(2309,'10.33.197.35','2025-01-08 14:17:29','审核管理','/shenqingmanage',54),(2310,'10.33.197.35','2025-01-08 14:17:31','我的任务','/mytask',54),(2311,'10.33.197.35','2025-01-08 14:17:32','审核管理','/shenqingmanage',54),(2312,'10.33.197.35','2025-01-08 14:17:35','我的任务','/mytask',54),(2313,'10.33.197.35','2025-01-08 14:17:36','审核管理','/shenqingmanage',54),(2314,'10.33.197.35','2025-01-08 14:17:38','我的任务','/mytask',54),(2315,'10.33.197.35','2025-01-08 14:17:39','审核管理','/shenqingmanage',54),(2316,'10.33.197.35','2025-01-08 14:17:42','我的任务','/mytask',54),(2317,'10.33.197.35','2025-01-08 14:17:43','审核管理','/shenqingmanage',54),(2318,'10.33.197.35','2025-01-08 14:17:45','我的任务','/mytask',54),(2319,'10.33.197.35','2025-01-08 14:17:46','审核管理','/shenqingmanage',54),(2320,'10.33.197.35','2025-01-08 14:17:51','我的任务','/mytask',54),(2321,'10.33.197.35','2025-01-08 14:17:52','审核管理','/shenqingmanage',54),(2322,'10.33.197.35','2025-01-08 14:17:54','我的任务','/mytask',54),(2323,'10.33.197.35','2025-01-08 14:17:55','审核管理','/shenqingmanage',54),(2324,'10.33.197.35','2025-01-08 14:17:58','我的任务','/mytask',54),(2325,'10.33.197.35','2025-01-08 14:17:59','审核管理','/shenqingmanage',54),(2326,'10.33.197.35','2025-01-08 14:18:01','我的任务','/mytask',54),(2327,'10.33.197.35','2025-01-08 14:18:02','审核管理','/shenqingmanage',54),(2328,'10.33.197.35','2025-01-08 14:18:04','我的任务','/mytask',54),(2329,'10.33.197.35','2025-01-08 14:18:05','审核管理','/shenqingmanage',54),(2330,'10.33.197.35','2025-01-08 14:18:07','我的任务','/mytask',54),(2331,'10.33.197.35','2025-01-08 14:18:08','审核管理','/shenqingmanage',54),(2332,'10.33.197.35','2025-01-08 14:18:10','我的任务','/mytask',54),(2333,'10.33.197.35','2025-01-08 14:18:11','审核管理','/shenqingmanage',54),(2334,'10.33.197.35','2025-01-08 14:18:14','我的任务','/mytask',54),(2335,'10.33.197.35','2025-01-08 14:18:15','审核管理','/shenqingmanage',54),(2336,'10.33.197.35','2025-01-08 14:18:20','我的任务','/mytask',54),(2337,'10.33.197.35','2025-01-08 14:18:21','审核管理','/shenqingmanage',54),(2338,'10.33.197.35','2025-01-08 14:18:23','我的任务','/mytask',54),(2339,'10.33.197.35','2025-01-08 14:18:25','审核管理','/shenqingmanage',54),(2340,'10.33.197.35','2025-01-08 14:18:27','我的任务','/mytask',54),(2341,'10.33.197.35','2025-01-08 14:18:28','审核管理','/shenqingmanage',54),(2342,'10.33.197.35','2025-01-08 14:18:30','我的任务','/mytask',54),(2343,'10.33.197.35','2025-01-08 14:18:31','审核管理','/shenqingmanage',54),(2344,'10.33.197.35','2025-01-08 14:18:39','我的任务','/mytask',54),(2345,'10.33.197.35','2025-01-08 14:18:41','审核管理','/shenqingmanage',54),(2346,'10.33.197.35','2025-01-08 14:18:51','我的任务','/mytask',54),(2347,'10.33.197.35','2025-01-08 16:09:29','通讯录','/addrmanage',59),(2348,'10.33.197.35','2025-01-08 16:10:05','我的任务','/mytask',59),(2349,'10.33.197.35','2025-01-09 09:06:42','审核管理','/shenqingmanage',54),(2350,'10.33.197.35','2025-01-09 09:06:45','我的任务','/mytask',54),(2351,'10.33.197.35','2025-01-09 14:35:56','审核管理','/shenqingmanage',54),(2352,'10.33.197.35','2025-01-09 14:35:59','我的任务','/mytask',54),(2353,'10.33.197.35','2025-01-09 14:37:02','三单一览','/threebookmanage',54),(2354,'10.33.197.35','2025-01-09 15:24:16','我的任务','/mytask',52),(2355,'10.33.197.35','2025-01-09 15:36:42','任务管理','/taskmanage',42),(2356,'10.33.197.35','2025-01-09 15:38:34','三单一览','/threebookmanage',42),(2357,'10.33.197.35','2025-01-09 15:39:43','任务管理','/taskmanage',42),(2358,'10.33.197.35','2025-01-09 15:39:43','三单一览','/threebookmanage',42),(2359,'10.33.197.35','2025-01-10 15:00:37','三单一览','/threebookmanage',42),(2360,'10.33.197.35','2025-01-10 15:14:59','任务管理','/taskmanage',42),(2361,'10.33.197.35','2025-01-10 17:10:49','三单一览','/threebookmanage',42),(2362,'192.168.2.47','2025-01-13 19:55:12','三单一览','/threebookmanage',59),(2363,'192.168.2.47','2025-01-13 20:08:04','细化一览','/detaildrawmanage',59),(2364,'192.168.2.47','2025-01-13 20:08:07','三单一览','/threebookmanage',59),(2365,'192.168.2.47','2025-01-13 20:10:28','细化一览','/detaildrawmanage',59),(2366,'192.168.2.47','2025-01-13 20:10:30','三单一览','/threebookmanage',59),(2367,'192.168.2.47','2025-01-13 20:30:18','细化一览','/detaildrawmanage',59),(2368,'192.168.2.47','2025-01-13 20:31:52','三单一览','/threebookmanage',59),(2369,'192.168.2.47','2025-01-13 20:31:58','细化一览','/detaildrawmanage',59),(2370,'192.168.2.47','2025-01-13 20:31:58','三单一览','/threebookmanage',59),(2371,'192.168.2.47','2025-01-13 20:32:00','三单一览','/threebookmanage',59),(2372,'192.168.2.47','2025-01-14 20:44:50','审核管理','/shenqingmanage',43),(2373,'192.168.2.47','2025-01-14 20:44:52','我的任务','/mytask',43),(2374,'192.168.2.47','2025-01-15 22:39:55','三单一览','/threebookmanage',43),(2375,'192.168.2.47','2025-01-15 22:41:47','我的任务','/mytask',43),(2376,'192.168.2.47','2025-01-15 22:42:41','我的任务','/mytask',59),(2377,'192.168.2.47','2025-01-15 22:43:50','审核管理','/shenqingmanage',46),(2378,'192.168.2.47','2025-01-15 22:44:04','我的任务','/mytask',46),(2379,'192.168.2.47','2025-01-15 22:44:12','审核管理','/shenqingmanage',46),(2380,'192.168.2.47','2025-01-15 22:44:29','我的任务','/mytask',46),(2381,'192.168.2.47','2025-01-15 22:49:13','审核管理','/shenqingmanage',46),(2382,'192.168.2.47','2025-01-15 22:49:25','我的任务','/mytask',46),(2383,'192.168.2.47','2025-01-19 22:09:01','三单一览','/threebookmanage',43);
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
) ENGINE=InnoDB AUTO_INCREMENT=1819 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_login_record`
--

LOCK TABLES `aoa_user_login_record` WRITE;
/*!40000 ALTER TABLE `aoa_user_login_record` DISABLE KEYS */;
INSERT INTO `aoa_user_login_record` VALUES (1244,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-19 10:02:36',NULL,43),(1245,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-19 10:07:50',NULL,1),(1246,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 10:21:44',NULL,43),(1247,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 10:22:15',NULL,42),(1248,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 11:10:24',NULL,52),(1249,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 11:10:37',NULL,52),(1250,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-19 13:47:47',NULL,1),(1251,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 14:29:26',NULL,52),(1252,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-19 14:58:18',NULL,1),(1253,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-19 15:01:52',NULL,1),(1254,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-19 15:08:18',NULL,43),(1255,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-19 15:57:18',NULL,43),(1256,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 17:12:43',NULL,52),(1257,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-19 17:23:40',NULL,52),(1258,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-19 18:51:29',NULL,43),(1259,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-20 08:06:17',NULL,52),(1260,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-20 08:14:03',NULL,1),(1261,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-20 08:16:04',NULL,43),(1262,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-20 08:16:58',NULL,49),(1263,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-20 09:01:19',NULL,42),(1264,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-20 09:51:19',NULL,42),(1265,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-20 11:29:42',NULL,42),(1266,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-20 11:31:24',NULL,42),(1267,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-20 13:35:35',NULL,49),(1268,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-20 13:46:16',NULL,43),(1269,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-20 14:19:51',NULL,43),(1270,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-20 16:27:00',NULL,43),(1271,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-21 08:48:18',NULL,43),(1272,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 08:51:00',NULL,42),(1273,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-21 08:51:03',NULL,1),(1274,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 08:51:09',NULL,52),(1275,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 09:28:38',NULL,42),(1276,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-21 09:40:04',NULL,49),(1277,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-21 09:40:17',NULL,1),(1278,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 09:40:56',NULL,54),(1279,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 09:42:01',NULL,52),(1280,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 11:06:42',NULL,42),(1281,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-21 11:30:47',NULL,43),(1282,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 11:41:58',NULL,52),(1283,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-21 11:56:51',NULL,49),(1284,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-21 13:40:19',NULL,43),(1285,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 13:47:21',NULL,52),(1286,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-21 14:15:06',NULL,43),(1287,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-21 14:16:11',NULL,49),(1288,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-21 16:20:43',NULL,43),(1289,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-21 16:49:55',NULL,52),(1290,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-21 18:06:22',NULL,49),(1291,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-22 08:19:12',NULL,49),(1292,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-22 08:20:32',NULL,1),(1293,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 08:21:23',NULL,43),(1294,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-22 08:23:21',NULL,52),(1295,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 10:12:40',NULL,43),(1296,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 10:31:07',NULL,43),(1297,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 10:32:23',NULL,42),(1298,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 10:33:07',NULL,58),(1299,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 10:36:11',NULL,43),(1300,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-22 10:55:03',NULL,42),(1301,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-22 11:36:24',NULL,42),(1302,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 11:57:07',NULL,43),(1303,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-22 17:03:06',NULL,47),(1304,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-22 17:03:38',NULL,43),(1305,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-22 17:04:22',NULL,1),(1306,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-22 17:04:22',NULL,42),(1307,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-22 17:05:25',NULL,52),(1308,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-22 17:05:59',NULL,49),(1309,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-22 17:06:35',NULL,54),(1310,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-22 17:11:11',NULL,52),(1311,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-22 17:12:29',NULL,52),(1312,'Chrome 11/114.0.0.0','10.33.197.35','2024-11-22 17:15:19',NULL,46),(1313,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-22 17:16:34',NULL,52),(1314,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-22 17:24:53',NULL,42),(1315,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-22 17:25:03',NULL,1),(1316,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-22 17:25:08',NULL,49),(1317,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-22 17:25:10',NULL,46),(1318,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-25 08:07:29',NULL,52),(1319,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-25 08:08:21',NULL,1),(1320,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-25 08:08:55',NULL,43),(1321,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-25 08:09:41',NULL,1),(1322,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-25 08:13:26',NULL,52),(1323,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-25 08:13:55',NULL,52),(1324,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-25 08:14:34',NULL,1),(1325,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-25 08:16:04',NULL,42),(1326,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-25 08:30:04',NULL,49),(1327,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-25 09:05:49',NULL,43),(1328,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-25 09:06:18',NULL,42),(1329,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-25 09:06:48',NULL,52),(1330,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-25 09:07:34',NULL,49),(1331,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-25 09:46:23',NULL,42),(1332,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-25 10:12:23',NULL,43),(1333,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-25 10:15:52',NULL,1),(1334,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-25 13:41:38',NULL,43),(1335,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-25 15:13:25',NULL,43),(1336,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-25 15:14:34',NULL,52),(1337,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-25 16:38:14',NULL,52),(1338,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-25 17:12:21',NULL,47),(1339,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-25 17:13:10',NULL,43),(1340,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-25 17:13:11',NULL,49),(1341,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 08:06:13',NULL,43),(1342,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 08:07:52',NULL,52),(1343,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 08:09:07',NULL,52),(1344,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-26 08:09:17',NULL,43),(1345,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-26 08:14:10',NULL,1),(1346,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 08:17:58',NULL,42),(1347,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-26 08:19:06',NULL,49),(1348,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-26 08:19:23',NULL,56),(1349,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-26 08:23:37',NULL,42),(1350,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 08:26:07',NULL,54),(1351,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-26 08:26:53',NULL,46),(1352,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 08:31:51',NULL,59),(1353,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-26 08:35:09',NULL,47),(1354,'Chrome 12/122.0.6261.95','10.33.197.35','2024-11-26 08:35:18',NULL,47),(1355,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-26 09:06:11',NULL,42),(1356,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 09:08:40',NULL,42),(1357,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-26 11:43:40',NULL,43),(1358,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 11:44:30',NULL,59),(1359,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-26 13:36:08',NULL,56),(1360,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-26 13:41:32',NULL,43),(1361,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 13:44:02',NULL,43),(1362,'Chrome 12/128.0.0.0','10.33.197.35','2024-11-26 13:51:07',NULL,1),(1363,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-26 13:59:45',NULL,49),(1364,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 13:59:51',NULL,52),(1365,'Chrome 12/127.0.0.0','10.33.197.35','2024-11-26 16:04:22',NULL,46),(1366,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-26 17:03:54',NULL,49),(1367,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-26 17:27:27',NULL,43),(1368,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 17:32:21',NULL,59),(1369,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-26 17:58:48',NULL,43),(1370,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-26 18:11:13',NULL,59),(1371,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-27 08:08:39',NULL,43),(1372,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-27 08:09:56',NULL,43),(1373,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-27 08:17:42',NULL,47),(1374,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-27 09:05:25',NULL,46),(1375,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 09:05:44',NULL,52),(1376,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 09:05:56',NULL,59),(1377,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-27 09:06:52',NULL,47),(1378,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 09:39:30',NULL,59),(1379,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-27 09:44:16',NULL,43),(1380,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-27 10:17:38',NULL,43),(1381,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 10:26:53',NULL,52),(1382,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 10:35:12',NULL,52),(1383,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 11:25:20',NULL,59),(1384,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-27 13:35:44',NULL,59),(1385,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-27 13:37:31',NULL,49),(1386,'Chrome 12/127.0.0.0','10.33.197.35','2024-11-27 14:27:07',NULL,46),(1387,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-27 14:29:24',NULL,46),(1388,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-27 14:43:47',NULL,43),(1389,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-27 16:46:39',NULL,47),(1390,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-27 17:07:06',NULL,49),(1391,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-28 08:18:31',NULL,52),(1392,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-28 08:21:26',NULL,43),(1393,'Chrome 13/130.0.0.0','10.33.197.35','2024-11-28 09:31:59',NULL,43),(1394,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-28 09:55:42',NULL,59),(1395,'Chrome 12/127.0.0.0','10.33.197.35','2024-11-28 14:04:24',NULL,46),(1396,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-28 14:06:01',NULL,49),(1397,'Chrome 12/127.0.0.0','10.33.197.35','2024-11-28 14:11:35',NULL,46),(1398,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-28 15:38:32',NULL,49),(1399,'Chrome 12/127.0.0.0','10.33.197.35','2024-11-28 16:36:23',NULL,46),(1400,'Chrome 12/127.0.0.0','10.33.197.35','2024-11-28 18:22:20',NULL,46),(1401,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-29 08:47:26',NULL,47),(1402,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-29 09:24:07',NULL,52),(1403,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-29 09:32:46',NULL,42),(1404,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-29 10:25:38',NULL,42),(1405,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-29 12:00:39',NULL,47),(1406,'Chrome 8/86.0.4240.198','10.33.197.35','2024-11-29 13:41:15',NULL,42),(1407,'Chrome 9/92.0.4515.131','10.33.197.35','2024-11-29 14:59:30',NULL,49),(1408,'Chrome 10/108.0.0.0','10.33.197.35','2024-11-29 15:00:05',NULL,47),(1409,'Chrome 13/131.0.0.0','10.33.197.35','2024-11-29 17:12:14',NULL,59),(1410,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-02 08:49:39',NULL,42),(1411,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-02 09:05:19',NULL,43),(1412,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-02 09:41:28',NULL,43),(1413,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-02 11:37:48',NULL,46),(1414,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-02 13:50:50',NULL,43),(1415,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-02 14:24:08',NULL,43),(1416,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-02 15:46:57',NULL,43),(1417,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-02 16:47:41',NULL,42),(1418,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 08:17:07',NULL,52),(1419,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-03 08:28:09',NULL,47),(1420,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 08:59:32',NULL,59),(1421,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-03 09:07:39',NULL,56),(1422,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 10:16:02',NULL,52),(1423,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-03 10:35:50',NULL,56),(1424,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 11:26:44',NULL,59),(1425,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-03 13:28:11',NULL,1),(1426,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-03 13:30:33',NULL,56),(1427,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 13:41:30',NULL,52),(1428,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-03 13:44:12',NULL,42),(1429,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-03 13:45:08',NULL,43),(1430,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-03 13:45:18',NULL,47),(1431,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 13:45:35',NULL,55),(1432,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 13:45:51',NULL,59),(1433,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-03 13:47:43',NULL,43),(1434,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 13:49:48',NULL,55),(1435,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-03 13:58:49',NULL,53),(1436,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 14:05:06',NULL,54),(1437,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-03 14:07:56',NULL,43),(1438,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-03 14:52:29',NULL,56),(1439,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-03 15:00:32',NULL,43),(1440,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 15:00:47',NULL,54),(1441,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 15:06:34',NULL,55),(1442,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 16:53:51',NULL,55),(1443,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-03 18:01:04',NULL,43),(1444,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-03 18:21:39',NULL,59),(1445,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-04 08:55:59',NULL,42),(1446,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-04 13:42:22',NULL,49),(1447,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-04 14:13:12',NULL,55),(1448,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-04 18:03:55',NULL,49),(1449,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-05 08:55:10',NULL,59),(1450,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-05 13:52:26',NULL,46),(1451,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-05 13:53:11',NULL,49),(1452,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-05 13:56:50',NULL,43),(1453,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-05 14:36:10',NULL,46),(1454,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-05 15:07:24',NULL,49),(1455,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-05 15:07:28',NULL,47),(1456,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-05 15:07:56',NULL,43),(1457,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-05 16:07:09',NULL,46),(1458,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-05 17:15:19',NULL,47),(1459,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-05 17:50:49',NULL,43),(1460,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-06 10:05:59',NULL,43),(1461,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-06 11:42:06',NULL,59),(1462,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-06 13:47:32',NULL,55),(1463,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-06 14:15:09',NULL,46),(1464,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-06 14:51:01',NULL,59),(1465,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-06 16:59:07',NULL,46),(1466,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-07 09:19:51',NULL,43),(1467,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-07 13:58:49',NULL,43),(1468,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-09 08:17:16',NULL,59),(1469,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-09 08:23:37',NULL,52),(1470,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-09 08:25:29',NULL,47),(1471,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-09 08:29:36',NULL,43),(1472,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-09 08:40:26',NULL,1),(1473,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-09 08:41:56',NULL,42),(1474,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-09 08:55:29',NULL,1),(1475,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-09 09:03:06',NULL,49),(1476,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-09 09:03:33',NULL,46),(1477,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-09 09:04:44',NULL,46),(1478,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-09 09:05:22',NULL,59),(1479,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-09 09:08:27',NULL,1),(1480,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-09 09:18:04',NULL,46),(1481,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-09 09:44:27',NULL,1),(1482,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-09 09:52:26',NULL,43),(1483,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-09 10:24:22',NULL,42),(1484,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-09 10:55:26',NULL,46),(1485,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-09 13:42:20',NULL,42),(1486,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-09 13:45:49',NULL,52),(1487,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-09 14:38:48',NULL,1),(1488,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-09 14:52:46',NULL,52),(1489,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-09 15:39:24',NULL,52),(1490,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 08:09:06',NULL,42),(1491,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-10 08:16:38',NULL,43),(1492,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 09:03:14',NULL,56),(1493,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-10 09:10:30',NULL,46),(1494,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-10 09:11:42',NULL,46),(1495,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 09:19:04',NULL,42),(1496,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-10 09:21:54',NULL,52),(1497,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 10:28:17',NULL,42),(1498,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-10 10:55:20',NULL,52),(1499,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 12:59:07',NULL,42),(1500,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 13:42:41',NULL,42),(1501,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-10 13:45:31',NULL,59),(1502,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-10 13:47:50',NULL,47),(1503,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-10 14:07:48',NULL,52),(1504,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-10 15:40:57',NULL,52),(1505,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-10 16:25:27',NULL,52),(1506,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-10 16:34:02',NULL,47),(1507,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 17:12:50',NULL,42),(1508,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-10 17:53:25',NULL,47),(1509,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-10 18:07:15',NULL,42),(1510,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-11 08:18:30',NULL,43),(1511,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-11 08:19:10',NULL,42),(1512,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 10:45:11',NULL,52),(1513,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 10:53:17',NULL,52),(1514,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-11 11:27:20',NULL,47),(1515,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 11:49:10',NULL,52),(1516,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-11 13:39:14',NULL,42),(1517,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 13:45:10',NULL,54),(1518,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 13:46:00',NULL,55),(1519,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 13:48:26',NULL,59),(1520,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-11 14:11:58',NULL,47),(1521,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 14:24:34',NULL,52),(1522,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-11 14:48:02',NULL,47),(1523,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-11 14:50:13',NULL,42),(1524,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 15:26:34',NULL,59),(1525,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 15:35:02',NULL,52),(1526,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-11 15:47:17',NULL,43),(1527,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 16:04:42',NULL,59),(1528,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 16:21:18',NULL,52),(1529,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-11 16:22:35',NULL,59),(1530,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-11 16:48:49',NULL,47),(1531,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-11 18:15:30',NULL,42),(1532,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-12 08:17:00',NULL,59),(1533,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-12 10:52:54',NULL,42),(1534,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-12 15:00:39',NULL,59),(1535,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-12 15:22:51',NULL,42),(1536,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-12 16:46:02',NULL,47),(1537,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-12 18:20:13',NULL,46),(1538,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-12 18:21:36',NULL,47),(1539,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-12 18:31:10',NULL,47),(1540,'Chrome 12/128.0.0.0','10.33.197.35','2024-12-13 08:11:24',NULL,1),(1541,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-13 08:13:14',NULL,59),(1542,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-13 08:13:54',NULL,42),(1543,'Chrome 12/122.0.6261.95','10.33.197.35','2024-12-13 08:21:35',NULL,47),(1544,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-13 08:21:48',NULL,46),(1545,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-13 08:51:06',NULL,42),(1546,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-13 09:10:45',NULL,47),(1547,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-13 10:38:49',NULL,59),(1548,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-13 10:54:43',NULL,47),(1549,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-13 11:13:34',NULL,46),(1550,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-13 11:22:29',NULL,59),(1551,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-13 13:37:16',NULL,46),(1552,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-13 13:49:41',NULL,47),(1553,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-13 14:25:28',NULL,46),(1554,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-13 15:36:19',NULL,43),(1555,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-14 08:40:35',NULL,46),(1556,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-14 08:56:39',NULL,59),(1557,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-14 10:23:20',NULL,59),(1558,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-14 14:08:10',NULL,59),(1559,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-14 16:35:11',NULL,46),(1560,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-14 17:12:40',NULL,42),(1561,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-16 09:18:57',NULL,42),(1562,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-16 10:28:04',NULL,55),(1563,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-16 10:31:46',NULL,42),(1564,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-16 10:34:32',NULL,55),(1565,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-16 10:35:49',NULL,54),(1566,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-16 11:46:09',NULL,54),(1567,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-16 13:43:58',NULL,47),(1568,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-16 13:46:21',NULL,46),(1569,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-16 14:35:42',NULL,47),(1570,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-16 15:24:13',NULL,47),(1571,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-16 16:43:07',NULL,42),(1572,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-16 16:59:58',NULL,46),(1573,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-17 08:10:07',NULL,46),(1574,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-17 10:17:20',NULL,47),(1575,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-17 10:40:01',NULL,52),(1576,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-17 10:49:00',NULL,59),(1577,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-17 10:50:54',NULL,59),(1578,'Chrome 13/130.0.0.0','10.33.197.35','2024-12-17 10:52:35',NULL,43),(1579,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-17 14:36:22',NULL,46),(1580,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-17 15:30:18',NULL,42),(1581,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-17 15:50:34',NULL,59),(1582,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-17 15:58:16',NULL,59),(1583,'Chrome 12/122.0.6261.95','10.33.197.35','2024-12-17 16:05:42',NULL,54),(1584,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-17 16:14:08',NULL,54),(1585,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-17 16:29:26',NULL,42),(1586,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-17 16:42:34',NULL,54),(1587,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-17 16:44:20',NULL,47),(1588,'Chrome 9/92.0.4515.131','10.33.197.35','2024-12-17 16:59:14',NULL,49),(1589,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-17 17:06:41',NULL,59),(1590,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-17 17:12:29',NULL,42),(1591,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-18 08:09:12',NULL,46),(1592,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-18 08:18:33',NULL,59),(1593,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-18 09:06:47',NULL,42),(1594,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 10:01:27',NULL,47),(1595,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-18 11:10:14',NULL,42),(1596,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 11:21:41',NULL,47),(1597,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 13:56:48',NULL,47),(1598,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-18 14:05:59',NULL,59),(1599,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 14:31:42',NULL,47),(1600,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 15:10:02',NULL,47),(1601,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-18 15:44:12',NULL,46),(1602,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 16:05:55',NULL,47),(1603,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-18 16:54:06',NULL,52),(1604,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-18 17:10:07',NULL,59),(1605,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-18 17:19:16',NULL,42),(1606,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-18 17:32:01',NULL,47),(1607,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-19 08:25:26',NULL,47),(1608,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-19 08:25:50',NULL,42),(1609,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-19 08:28:43',NULL,46),(1610,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-19 09:41:10',NULL,59),(1611,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-19 09:50:02',NULL,52),(1612,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-19 11:47:39',NULL,47),(1613,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-19 13:36:03',NULL,47),(1614,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-19 15:32:40',NULL,46),(1615,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-19 15:33:27',NULL,42),(1616,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-19 16:10:31',NULL,47),(1617,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-19 16:15:19',NULL,42),(1618,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-19 18:01:35',NULL,47),(1619,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-20 08:44:19',NULL,47),(1620,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-20 09:05:37',NULL,46),(1621,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-20 09:11:18',NULL,46),(1622,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-20 09:15:14',NULL,42),(1623,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-20 09:32:54',NULL,47),(1624,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-20 09:46:29',NULL,46),(1625,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-20 09:58:40',NULL,55),(1626,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-20 10:04:24',NULL,42),(1627,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-20 11:14:59',NULL,47),(1628,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-20 13:56:47',NULL,47),(1629,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-20 14:08:31',NULL,46),(1630,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-20 16:21:24',NULL,42),(1631,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-20 17:09:38',NULL,46),(1632,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-20 18:22:24',NULL,59),(1633,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-21 08:07:25',NULL,46),(1634,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-21 08:41:29',NULL,46),(1635,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-21 10:29:14',NULL,46),(1636,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-23 08:18:14',NULL,46),(1637,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-23 14:47:15',NULL,52),(1638,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-24 10:25:38',NULL,43),(1639,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-24 14:41:21',NULL,52),(1640,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-24 15:13:53',NULL,59),(1641,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-25 09:41:06',NULL,42),(1642,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-25 11:43:52',NULL,47),(1643,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-25 16:12:24',NULL,59),(1644,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-25 16:44:52',NULL,47),(1645,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-25 17:45:13',NULL,59),(1646,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-26 15:20:56',NULL,42),(1647,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-26 16:05:58',NULL,43),(1648,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-27 08:39:56',NULL,43),(1649,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-27 11:28:31',NULL,47),(1650,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-27 16:33:52',NULL,47),(1651,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-27 16:37:51',NULL,42),(1652,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 08:14:39',NULL,54),(1653,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 08:55:09',NULL,54),(1654,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-28 10:00:13',NULL,42),(1655,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 10:01:16',NULL,54),(1656,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 10:17:47',NULL,59),(1657,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 15:08:10',NULL,59),(1658,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 16:36:21',NULL,59),(1659,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-28 16:36:50',NULL,59),(1660,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-30 09:12:02',NULL,47),(1661,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-30 09:13:40',NULL,54),(1662,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-30 09:13:49',NULL,55),(1663,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-30 09:14:10',NULL,46),(1664,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-30 09:14:50',NULL,42),(1665,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-30 11:42:05',NULL,46),(1666,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-30 13:59:40',NULL,46),(1667,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-30 14:31:38',NULL,59),(1668,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-30 14:55:20',NULL,47),(1669,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-30 15:13:40',NULL,46),(1670,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-30 17:22:25',NULL,47),(1671,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-31 08:14:00',NULL,46),(1672,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-31 08:14:43',NULL,46),(1673,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-31 08:17:11',NULL,59),(1674,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-31 09:16:03',NULL,55),(1675,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-31 09:32:44',NULL,42),(1676,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-31 10:21:02',NULL,47),(1677,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-31 10:30:20',NULL,59),(1678,'Chrome 12/127.0.0.0','10.33.197.35','2024-12-31 11:05:50',NULL,46),(1679,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-31 11:33:11',NULL,59),(1680,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-31 11:53:09',NULL,47),(1681,'Chrome 8/86.0.4240.198','10.33.197.35','2024-12-31 13:36:10',NULL,56),(1682,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-31 14:18:01',NULL,59),(1683,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-31 16:53:58',NULL,47),(1684,'Chrome 13/131.0.0.0','10.33.197.35','2024-12-31 17:02:02',NULL,59),(1685,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-31 17:43:27',NULL,47),(1686,'Chrome 10/108.0.0.0','10.33.197.35','2024-12-31 18:21:32',NULL,47),(1687,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-01 11:30:24',NULL,47),(1688,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-01 15:07:08',NULL,47),(1689,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-01 16:23:57',NULL,47),(1690,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 08:31:32',NULL,59),(1691,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 08:43:27',NULL,42),(1692,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 08:47:20',NULL,43),(1693,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 08:59:41',NULL,52),(1694,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 09:16:47',NULL,59),(1695,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-02 09:22:34',NULL,47),(1696,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-02 10:37:08',NULL,47),(1697,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 13:33:22',NULL,59),(1698,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-02 14:08:07',NULL,47),(1699,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-02 15:43:55',NULL,46),(1700,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-02 16:49:56',NULL,47),(1701,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 16:50:08',NULL,52),(1702,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 18:07:32',NULL,59),(1703,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-02 18:19:22',NULL,46),(1704,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-02 18:29:19',NULL,59),(1705,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-02 18:29:39',NULL,46),(1706,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-03 08:19:43',NULL,59),(1707,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-03 08:25:40',NULL,47),(1708,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-03 11:45:10',NULL,59),(1709,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-03 11:45:43',NULL,47),(1710,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-03 13:45:42',NULL,42),(1711,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-03 13:56:03',NULL,47),(1712,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-03 15:27:04',NULL,47),(1713,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-03 16:28:38',NULL,42),(1714,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-03 16:28:57',NULL,55),(1715,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-03 16:50:36',NULL,46),(1716,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-03 17:05:52',NULL,59),(1717,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-03 17:22:14',NULL,47),(1718,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-04 08:23:15',NULL,55),(1719,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-04 09:08:01',NULL,46),(1720,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-04 09:25:48',NULL,55),(1721,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-04 09:28:05',NULL,42),(1722,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-04 10:44:55',NULL,42),(1723,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-04 10:47:49',NULL,46),(1724,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-04 12:43:21',NULL,42),(1725,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-04 13:29:37',NULL,46),(1726,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-04 13:45:02',NULL,55),(1727,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-04 14:01:19',NULL,42),(1728,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-04 14:13:37',NULL,46),(1729,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-04 14:45:52',NULL,42),(1730,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-04 15:27:24',NULL,46),(1731,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-04 15:51:56',NULL,42),(1732,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-04 16:15:08',NULL,55),(1733,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-06 10:02:36',NULL,59),(1734,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-06 13:45:51',NULL,46),(1735,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-06 14:50:15',NULL,59),(1736,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-06 15:19:46',NULL,47),(1737,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-06 16:20:42',NULL,46),(1738,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-06 16:50:25',NULL,47),(1739,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-06 17:02:00',NULL,59),(1740,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-07 08:23:36',NULL,52),(1741,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-07 09:24:13',NULL,47),(1742,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-07 10:41:01',NULL,47),(1743,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-07 14:05:44',NULL,47),(1744,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-07 14:40:03',NULL,56),(1745,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-07 14:44:39',NULL,43),(1746,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-07 15:11:10',NULL,43),(1747,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-07 15:13:55',NULL,42),(1748,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-07 15:38:07',NULL,46),(1749,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-07 15:39:06',NULL,47),(1750,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-07 15:46:19',NULL,47),(1751,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-07 16:05:33',NULL,52),(1752,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-07 17:01:04',NULL,42),(1753,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-07 17:03:22',NULL,52),(1754,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-07 17:56:32',NULL,42),(1755,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-08 08:29:28',NULL,47),(1756,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-08 08:33:25',NULL,42),(1757,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 09:10:12',NULL,43),(1758,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 09:11:08',NULL,59),(1759,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 09:11:45',NULL,54),(1760,'Chrome 9/92.0.4515.131','10.33.197.35','2025-01-08 09:21:03',NULL,55),(1761,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-08 09:37:15',NULL,42),(1762,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 09:43:34',NULL,52),(1763,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-08 10:14:43',NULL,47),(1764,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 10:28:03',NULL,59),(1765,'Chrome 9/92.0.4515.131','10.33.197.35','2025-01-08 10:32:26',NULL,54),(1766,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-08 11:42:17',NULL,47),(1767,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-08 12:27:23',NULL,42),(1768,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 13:49:37',NULL,52),(1769,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 13:52:23',NULL,52),(1770,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 13:53:50',NULL,47),(1771,'Chrome 10/108.0.0.0','10.33.197.35','2025-01-08 13:57:48',NULL,47),(1772,'Chrome 9/92.0.4515.131','10.33.197.35','2025-01-08 14:11:43',NULL,54),(1773,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 16:02:03',NULL,59),(1774,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 16:58:57',NULL,59),(1775,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-08 18:01:11',NULL,59),(1776,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 08:14:07',NULL,59),(1777,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-09 08:49:22',NULL,46),(1778,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 09:06:40',NULL,54),(1779,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 09:58:28',NULL,59),(1780,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-09 11:17:53',NULL,46),(1781,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 11:30:18',NULL,59),(1782,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 11:34:01',NULL,52),(1783,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 14:14:43',NULL,43),(1784,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 14:35:53',NULL,54),(1785,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-09 14:43:20',NULL,42),(1786,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 15:12:00',NULL,43),(1787,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-09 15:21:14',NULL,42),(1788,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-09 15:22:16',NULL,46),(1789,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 15:23:52',NULL,59),(1790,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 15:24:14',NULL,52),(1791,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-09 16:20:40',NULL,59),(1792,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-09 16:46:54',NULL,46),(1793,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 09:09:59',NULL,52),(1794,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 11:29:32',NULL,52),(1795,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 11:30:48',NULL,52),(1796,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 11:46:01',NULL,52),(1797,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-10 14:14:16',NULL,46),(1798,'Chrome 12/122.0.6261.95','10.33.197.35','2025-01-10 14:36:56',NULL,47),(1799,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 14:41:31',NULL,59),(1800,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 14:42:07',NULL,47),(1801,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 14:47:01',NULL,59),(1802,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-10 15:00:29',NULL,42),(1803,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 15:18:08',NULL,52),(1804,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-10 15:20:03',NULL,52),(1805,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-10 16:09:16',NULL,42),(1806,'Chrome 8/86.0.4240.198','10.33.197.35','2025-01-10 17:08:53',NULL,42),(1807,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-11 08:13:08',NULL,59),(1808,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-11 08:49:59',NULL,46),(1809,'Chrome 12/127.0.0.0','10.33.197.35','2025-01-11 09:25:26',NULL,46),(1810,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-11 16:04:48',NULL,59),(1811,'Chrome 13/131.0.0.0','10.33.197.35','2025-01-11 16:47:33',NULL,59),(1812,'Chrome 13/131.0.0.0','192.168.2.47','2025-01-13 19:26:29',NULL,59),(1813,'Chrome 13/131.0.0.0','192.168.2.47','2025-01-14 20:44:28',NULL,43),(1814,'Chrome 13/131.0.0.0','192.168.2.47','2025-01-14 20:59:50',NULL,43),(1815,'Chrome 13/131.0.0.0','192.168.2.47','2025-01-15 22:17:03',NULL,43),(1816,'Chrome 13/131.0.0.0','192.168.2.47','2025-01-15 22:42:38',NULL,59),(1817,'Chrome 13/131.0.0.0','192.168.2.47','2025-01-15 22:43:45',NULL,46),(1818,'Chrome 13/132.0.0.0','192.168.2.47','2025-01-19 22:08:56',NULL,43);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_list`
--

LOCK TABLES `aoa_vote_list` WRITE;
/*!40000 ALTER TABLE `aoa_vote_list` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_title_user`
--

LOCK TABLES `aoa_vote_title_user` WRITE;
/*!40000 ALTER TABLE `aoa_vote_title_user` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_vote_titles`
--

LOCK TABLES `aoa_vote_titles` WRITE;
/*!40000 ALTER TABLE `aoa_vote_titles` DISABLE KEYS */;
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

-- Dump completed on 2025-01-31 16:19:12
