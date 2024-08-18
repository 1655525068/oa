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
  `responsible_person` varchar(200) DEFAULT NULL COMMENT '细化责任人',
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='图纸细化';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_detail_draw`
--

LOCK TABLES `ao_detail_draw` WRITE;
/*!40000 ALTER TABLE `ao_detail_draw` DISABLE KEYS */;
INSERT INTO `ao_detail_draw` VALUES (2,'sdfg ','的','给','管道','A','CFC','时担任法国','2024-08-08','给','2024-08-08','啊的官方','/','','阿斯顿飞过','爱的色放','啊手动阀','ICR-PT-1-12-00049','是','烦烦烦','2024-08-08','22','3',NULL,0);
/*!40000 ALTER TABLE `ao_detail_draw` ENABLE KEYS */;
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
  `should_handle` varchar(200) DEFAULT '' COMMENT '是否需要处理',
  `handle_method` varchar(200) DEFAULT '' COMMENT '处理方式\n(ICR/细化)',
  `process_order_number` varchar(200) DEFAULT '' COMMENT '处理单号',
  `process_completion_time` varchar(200) DEFAULT '' COMMENT '处理完成时间',
  `process_responsible_party` varchar(200) DEFAULT '' COMMENT '责任方',
  `remarks` varchar(200) DEFAULT '' COMMENT '备注',
  `should_claim` varchar(200) DEFAULT '' COMMENT '是否涉及索赔',
  `plan_to_close_time` varchar(200) DEFAULT '' COMMENT '计划关闭时间（CR关闭时间）直接关闭/转FCR/转DEN',
  `actual_close_time` varchar(200) DEFAULT '' COMMENT '实际关闭时间',
  `design_point_value` varchar(200) DEFAULT '' COMMENT '设计点值',
  `audit_point_value` varchar(200) DEFAULT '' COMMENT '审核点值',
  `logger_ticking` varchar(200) DEFAULT '',
  `is_lock` int(11) NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `ao_three_book_aoa_user_user_id_fk` (`identify_responsible_person`),
  KEY `ao_three_book_aoa_user_user_id_fk_2` (`process_person`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_three_book`
--

LOCK TABLES `ao_three_book` WRITE;
/*!40000 ALTER TABLE `ao_three_book` DISABLE KEYS */;
INSERT INTO `ao_three_book` VALUES (40,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-05-15','2024-05-15','N','LDX-ML05-V2-317-B213','1116XML05BZS07-054','D','管道','建安承包商','朱建国','冉英男','是','ICR','ICR-PT-1-12-00049','2024-7-3','施工承包商',NULL,'否',NULL,NULL,NULL,NULL,'',0),(41,NULL,'CR','CR-LD-X-CN23-000154','关于1116X1215BZS02-051等图纸问题的澄清','A','有效','冉英男','Y','2024-05-21','2024-05-21','N','LDX-WRS-PLW-664-B213','1116X1215BZS02','B','管道','其他','冉英男','谷晓雨','/','/','/','/','/','/','/','转FCR（FCR-LD-1-CN23-000354/FCR-LD-1-CN23-000164）',NULL,NULL,NULL,'',0),(42,NULL,'DEN','DEN-LD-X-B24K-000102','关于1116X12X8BZS02-008图纸修改。','A','有效',NULL,'Y','2024-05-24','2024-05-27','N','LDX-PCS-PLW-050-B24K','1116X12X8BZS02-008','A','管道','工程公司','颉古宝','张春芳','是','ICR','ICR-TM-1-12-00297/ICR-TM-2-12-00298','2024-7-18','设计院',NULL,NULL,NULL,NULL,NULL,NULL,'',0),(43,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(62,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(63,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(64,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(65,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(66,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(67,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(68,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0),(69,NULL,'FCR','FCR-LD-X-CN23-000096','关于1116XML05BZS07贯穿件图册钢板材质和厚度替换的变更（管道）','A','有效','马文灿','Y','2024-08-08','2024-08-12','Y','LDX-ML05-V2-317-B213','1116XML05BZS07-054','A','管道','建安承包','李季','王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33','',0);
/*!40000 ALTER TABLE `ao_three_book` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_attends_list`
--

LOCK TABLES `aoa_attends_list` WRITE;
/*!40000 ALTER TABLE `aoa_attends_list` DISABLE KEYS */;
INSERT INTO `aoa_attends_list` VALUES (49,'192.168.2.2',NULL,'2024-08-04 14:17:15',11,8,1,'14:17','星期日',NULL,NULL),(50,'192.168.2.2',NULL,'2024-08-04 14:17:23',12,9,1,'14:17','星期日',NULL,NULL),(51,'192.168.2.2',NULL,'2024-08-06 10:37:36',11,8,1,'10:37','星期二',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=1728 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_power_list`
--

LOCK TABLES `aoa_role_power_list` WRITE;
/*!40000 ALTER TABLE `aoa_role_power_list` DISABLE KEYS */;
INSERT INTO `aoa_role_power_list` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,5,1),(5,1,8,1),(7,1,10,1),(8,1,11,1),(9,1,12,1),(10,1,13,1),(11,1,14,1),(12,1,15,1),(13,1,16,1),(14,1,17,1),(15,1,18,1),(16,1,19,1),(17,1,20,1),(18,1,21,1),(19,1,22,1),(20,1,23,1),(21,1,24,1),(22,1,25,1),(1536,0,1,2),(1537,0,2,2),(1538,0,3,2),(1539,1,5,2),(1540,1,8,2),(1541,0,10,2),(1542,0,11,2),(1543,0,12,2),(1544,0,13,2),(1545,0,14,2),(1546,0,15,2),(1547,0,16,2),(1548,0,17,2),(1549,0,18,2),(1550,1,19,2),(1551,1,20,2),(1552,1,21,2),(1553,0,22,2),(1554,1,23,2),(1555,1,24,2),(1556,0,25,2),(1557,0,1,3),(1558,0,2,3),(1559,0,3,3),(1560,0,5,3),(1561,1,8,3),(1562,1,10,3),(1563,0,11,3),(1564,0,12,3),(1565,0,13,3),(1566,0,14,3),(1567,0,15,3),(1568,0,16,3),(1569,0,17,3),(1570,0,18,3),(1571,0,19,3),(1572,0,20,3),(1573,0,21,3),(1574,0,22,3),(1575,0,23,3),(1576,1,24,3),(1577,1,25,3),(1578,0,1,4),(1579,0,2,4),(1580,0,3,4),(1581,1,5,4),(1582,1,8,4),(1583,0,10,4),(1584,0,11,4),(1585,0,12,4),(1586,0,13,4),(1587,0,14,4),(1588,0,15,4),(1589,0,16,4),(1590,0,17,4),(1591,0,18,4),(1592,1,19,4),(1593,1,20,4),(1594,1,21,4),(1595,0,22,4),(1596,1,23,4),(1597,1,24,4),(1598,0,25,4),(1620,0,1,5),(1621,0,2,5),(1622,0,3,5),(1623,0,5,5),(1624,0,8,5),(1625,0,10,5),(1626,0,11,5),(1627,0,12,5),(1628,0,13,5),(1629,0,14,5),(1630,0,15,5),(1631,0,16,5),(1632,0,17,5),(1633,0,18,5),(1634,0,19,5),(1635,0,20,5),(1636,0,21,5),(1637,0,22,5),(1638,0,23,5),(1639,0,24,5),(1640,0,25,5),(1641,0,1,6),(1642,0,2,6),(1643,0,3,6),(1644,0,5,6),(1645,0,8,6),(1646,0,10,6),(1647,0,11,6),(1648,0,12,6),(1649,0,13,6),(1650,0,14,6),(1651,0,15,6),(1652,0,16,6),(1653,0,17,6),(1654,0,18,6),(1655,0,19,6),(1656,0,20,6),(1657,0,21,6),(1658,0,22,6),(1659,0,23,6),(1660,0,24,6),(1661,0,25,6),(1662,0,1,7),(1663,0,2,7),(1664,0,3,7),(1665,0,5,7),(1666,0,8,7),(1667,0,10,7),(1668,0,11,7),(1669,0,12,7),(1670,0,13,7),(1671,0,14,7),(1672,0,15,7),(1673,0,16,7),(1674,0,17,7),(1675,0,18,7),(1676,0,19,7),(1677,0,20,7),(1678,0,21,7),(1679,0,22,7),(1680,0,23,7),(1681,0,24,7),(1682,0,25,7),(1683,0,1,8),(1684,0,2,8),(1685,0,3,8),(1686,0,5,8),(1687,0,8,8),(1688,0,10,8),(1689,0,11,8),(1690,0,12,8),(1691,0,13,8),(1692,0,14,8),(1693,0,15,8),(1694,0,16,8),(1695,0,17,8),(1696,0,18,8),(1697,0,19,8),(1698,0,20,8),(1699,0,21,8),(1700,0,22,8),(1701,0,23,8),(1702,0,24,8),(1703,0,25,8),(1704,1,29,1),(1705,0,29,2),(1706,0,29,3),(1707,0,29,4),(1708,0,29,5),(1709,0,29,6),(1710,0,29,7),(1711,0,29,8),(1712,1,30,1),(1713,0,30,2),(1714,0,30,3),(1715,0,30,4),(1716,0,30,5),(1717,0,30,6),(1718,0,30,7),(1719,0,30,8),(1720,1,31,1),(1721,0,31,2),(1722,0,31,3),(1723,0,31,4),(1724,0,31,5),(1725,0,31,6),(1726,0,31,7),(1727,0,31,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_sys_menu`
--

LOCK TABLES `aoa_sys_menu` WRITE;
/*!40000 ALTER TABLE `aoa_sys_menu` DISABLE KEYS */;
INSERT INTO `aoa_sys_menu` VALUES (1,1,NULL,'glyphicon-cog','系统管理','##',0,0),(2,1,NULL,'glyphicon-education','用户管理','#',0,2),(3,1,NULL,'glyphicon-user','角色列表','#',0,3),(5,0,NULL,'glyphicon-hourglass','流程管理','#',0,5),(8,1,NULL,'glyphicon-flag','任务管理','#',0,8),(10,1,NULL,'glyphicon-earphone','通讯录','#',0,13),(11,1,NULL,'glyphicon-record','菜单管理','/testsysmenu',1,2),(12,1,NULL,'glyphicon-record','类型管理','/testsystype',1,1),(13,1,NULL,'glyphicon-record','状态管理','/testsysstatus',1,3),(14,1,NULL,'glyphicon-record','部门管理','/deptmanage',2,1),(15,1,NULL,'glyphicon-record','职位管理','/positionmanage',2,3),(16,1,NULL,'glyphicon-record','用户管理','/usermanage',2,4),(17,1,NULL,'glyphicon-record','在线用户','/morelogrecord',2,2),(18,1,NULL,'glyphicon-record','角色列表','/rolemanage',3,1),(19,0,NULL,'glyphicon-record','我的申请','/flowmanage',0,1),(20,0,NULL,'glyphicon-record','流程审核','/audit',0,2),(21,0,NULL,'glyphicon-record','新建流程','/xinxeng',0,0),(22,1,NULL,'glyphicon-record','账号管理','/accountmanage',7,1),(23,1,NULL,'glyphicon-record','任务管理','/taskmanage',8,1),(24,1,NULL,'glyphicon-record','我的任务','/mytask',8,2),(25,1,NULL,'glyphicon-record','通讯录','/addrmanage',10,1),(29,1,NULL,'glyphicon glyphicon-file','文件管理','#',0,9),(30,1,NULL,'glyphicon-record','三单一览','/threebookmanage',29,0),(31,1,NULL,'glyphicon-record','图纸细化一览','/detaildrawmanage',29,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_list`
--

LOCK TABLES `aoa_task_list` WRITE;
/*!40000 ALTER TABLE `aoa_task_list` DISABLE KEYS */;
INSERT INTO `aoa_task_list` VALUES (101,'评价33','2024-08-14 15:43:31',0,0,'2024-08-13 15:49:15','2024-08-13 15:49:15','2024-08-13 15:43:31',7,'描述33',NULL,'45678',1,42,'李季',NULL,41),(103,'评价','2024-08-16 12:59:02',0,0,'2024-08-15 12:59:38','2024-08-15 12:59:38','2024-08-15 12:59:02',3,'描述',NULL,'7527852',2,42,'',2,NULL);
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
  PRIMARY KEY (`logger_id`),
  KEY `FK5gu0thq54i7ujc6cict009h4y` (`task_id`),
  CONSTRAINT `FK5gu0thq54i7ujc6cict009h4y` FOREIGN KEY (`task_id`) REFERENCES `aoa_task_list` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_logger`
--

LOCK TABLES `aoa_task_logger` WRITE;
/*!40000 ALTER TABLE `aoa_task_logger` DISABLE KEYS */;
INSERT INTO `aoa_task_logger` VALUES (163,'2024-08-13 09:12:41','',101,'王博辰',4,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(164,'2024-08-13 09:19:47','',101,'李季',3,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(165,'2024-08-13 09:21:11','',101,'王博辰',4,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(166,'2024-08-13 09:33:35','',101,'李季',3,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(167,'2024-08-13 09:41:33','',101,'李季',3,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(168,'2024-08-13 09:42:59','',101,'李季',3,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(169,'2024-08-13 09:43:21','',101,'李季',4,NULL,'王博辰','','','','','','','',NULL,NULL,'',''),(170,'2024-08-13 09:44:48','',101,'王博辰',4,NULL,'王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33'),(171,'2024-08-13 09:45:52','',101,'李季',6,NULL,'王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33'),(172,'2024-08-13 10:13:39','',101,'李季',7,NULL,'王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33'),(173,'2024-08-13 10:27:25','',101,'李季',5,NULL,'王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33'),(174,'2024-08-13 10:28:40','',101,'王博辰',6,NULL,'王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33'),(175,'2024-08-13 11:17:56','',101,'李季',7,NULL,'王博辰','是','细化','ICR-PT-1-12-00049','2024-7-3',' 方法士大夫','烦烦烦','否',NULL,NULL,'22','33');
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
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_user`
--

LOCK TABLES `aoa_task_user` WRITE;
/*!40000 ALTER TABLE `aoa_task_user` DISABLE KEYS */;
INSERT INTO `aoa_task_user` VALUES (155,7,101,NULL,43),(165,7,101,NULL,44);
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
) ENGINE=InnoDB AUTO_INCREMENT=3367 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_log`
--

LOCK TABLES `aoa_user_log` WRITE;
/*!40000 ALTER TABLE `aoa_user_log` DISABLE KEYS */;
INSERT INTO `aoa_user_log` VALUES (2776,'192.168.2.2','2024-08-06 10:59:41','新建流程','/xinxeng',1),(2777,'192.168.2.2','2024-08-06 10:59:42','我的申请','/flowmanage',1),(2778,'192.168.2.2','2024-08-06 10:59:44','流程审核','/audit',1),(2779,'192.168.2.2','2024-08-06 10:59:46','任务管理','/taskmanage',1),(2780,'192.168.2.2','2024-08-06 10:59:47','我的任务','/mytask',1),(2781,'192.168.2.2','2024-08-06 10:59:50','新建流程','/xinxeng',1),(2782,'192.168.2.2','2024-08-06 10:59:51','流程审核','/audit',1),(2783,'192.168.2.2','2024-08-06 10:59:52','我的申请','/flowmanage',1),(2784,'192.168.2.2','2024-08-06 10:59:52','流程审核','/audit',1),(2785,'192.168.2.2','2024-08-06 10:59:53','我的申请','/flowmanage',1),(2786,'192.168.2.2','2024-08-06 11:00:07','新建流程','/xinxeng',1),(2787,'192.168.2.2','2024-08-06 11:00:54','类型管理','/testsystype',1),(2788,'192.168.2.2','2024-08-06 11:03:43','菜单管理','/testsysmenu',1),(2789,'192.168.2.2','2024-08-06 11:04:49','类型管理','/testsystype',1),(2790,'192.168.2.2','2024-08-06 11:04:50','菜单管理','/testsysmenu',1),(2791,'192.168.2.2','2024-08-06 11:06:47','状态管理','/testsysstatus',1),(2792,'192.168.2.2','2024-08-06 11:06:48','在线用户','/morelogrecord',1),(2793,'192.168.2.2','2024-08-06 11:06:50','部门管理','/deptmanage',1),(2794,'192.168.2.2','2024-08-06 11:06:51','职位管理','/positionmanage',1),(2795,'192.168.2.2','2024-08-06 11:06:54','用户管理','/usermanage',1),(2796,'192.168.2.2','2024-08-06 11:12:13','类型管理','/testsystype',1),(2797,'192.168.2.2','2024-08-06 11:12:14','菜单管理','/testsysmenu',1),(2798,'192.168.2.2','2024-08-06 11:12:16','状态管理','/testsysstatus',1),(2799,'192.168.2.2','2024-08-06 11:12:17','部门管理','/deptmanage',1),(2800,'192.168.2.2','2024-08-06 11:12:53','用户管理','/usermanage',1),(2801,'192.168.2.2','2024-08-06 11:17:10','部门管理','/deptmanage',1),(2802,'192.168.2.2','2024-08-06 11:17:15','角色列表','/rolemanage',1),(2803,'192.168.2.2','2024-08-06 11:17:59','类型管理','/testsystype',1),(2804,'192.168.2.2','2024-08-06 11:18:00','菜单管理','/testsysmenu',1),(2805,'192.168.2.2','2024-08-06 11:18:02','状态管理','/testsysstatus',1),(2806,'192.168.2.2','2024-08-06 11:18:03','菜单管理','/testsysmenu',1),(2807,'192.168.2.2','2024-08-06 11:18:03','类型管理','/testsystype',1),(2808,'192.168.2.2','2024-08-06 11:18:05','部门管理','/deptmanage',1),(2809,'192.168.2.2','2024-08-06 11:18:05','在线用户','/morelogrecord',1),(2810,'192.168.2.2','2024-08-06 11:18:07','职位管理','/positionmanage',1),(2811,'192.168.2.2','2024-08-06 11:18:13','用户管理','/usermanage',1),(2812,'192.168.2.2','2024-08-06 11:18:18','角色列表','/rolemanage',1),(2813,'192.168.2.2','2024-08-06 11:22:47','新建流程','/xinxeng',1),(2814,'192.168.2.2','2024-08-06 11:22:48','我的申请','/flowmanage',1),(2815,'192.168.2.2','2024-08-06 11:22:49','新建流程','/xinxeng',1),(2816,'192.168.2.2','2024-08-06 11:22:50','流程审核','/audit',1),(2817,'192.168.2.2','2024-08-06 11:22:50','新建流程','/xinxeng',1),(2818,'192.168.2.2','2024-08-06 11:26:35','新建流程','/xinxeng',43),(2819,'192.168.2.2','2024-08-06 11:45:24','任务管理','/taskmanage',43),(2820,'192.168.2.2','2024-08-06 11:45:25','我的申请','/flowmanage',43),(2821,'192.168.2.2','2024-08-06 11:45:26','新建流程','/xinxeng',43),(2822,'192.168.2.2','2024-08-06 13:41:38','任务管理','/taskmanage',43),(2823,'192.168.2.2','2024-08-06 13:41:45','我的申请','/flowmanage',43),(2824,'192.168.2.2','2024-08-06 13:41:46','新建流程','/xinxeng',43),(2825,'192.168.2.2','2024-08-06 14:19:25','通讯录','/addrmanage',43),(2826,'192.168.2.2','2024-08-06 14:22:01','用户管理','/usermanage',1),(2827,'192.168.2.2','2024-08-06 14:24:20','部门管理','/deptmanage',1),(2828,'192.168.2.2','2024-08-06 14:29:37','角色列表','/rolemanage',1),(2829,'192.168.2.2','2024-08-06 14:29:43','菜单管理','/testsysmenu',1),(2830,'192.168.2.2','2024-08-06 14:29:46','部门管理','/deptmanage',1),(2831,'192.168.2.2','2024-08-06 14:30:48','用户管理','/usermanage',1),(2832,'192.168.2.2','2024-08-06 14:33:03','新建流程','/xinxeng',43),(2833,'192.168.2.2','2024-08-06 14:33:09','我的申请','/flowmanage',43),(2834,'192.168.2.2','2024-08-06 14:34:22','我的任务','/mytask',1),(2835,'192.168.2.2','2024-08-06 14:34:28','流程审核','/audit',1),(2836,'192.168.2.2','2024-08-06 14:43:40','我的任务','/mytask',1),(2837,'192.168.2.2','2024-08-06 14:44:44','任务管理','/taskmanage',43),(2838,'192.168.2.2','2024-08-06 14:45:38','我的任务','/mytask',43),(2839,'192.168.2.2','2024-08-06 14:45:53','任务管理','/taskmanage',43),(2840,'192.168.2.2','2024-08-06 14:46:40','新建流程','/xinxeng',43),(2841,'192.168.2.2','2024-08-06 14:46:52','任务管理','/taskmanage',43),(2842,'192.168.2.2','2024-08-06 14:47:22','任务管理','/taskmanage',1),(2843,'192.168.2.2','2024-08-06 14:47:24','我的任务','/mytask',1),(2844,'192.168.2.2','2024-08-06 14:47:38','我的任务','/mytask',43),(2845,'192.168.2.2','2024-08-06 14:47:40','任务管理','/taskmanage',43),(2846,'192.168.2.2','2024-08-06 14:47:42','我的任务','/mytask',43),(2847,'192.168.2.2','2024-08-06 14:48:42','新建流程','/xinxeng',43),(2848,'192.168.2.2','2024-08-06 14:48:47','任务管理','/taskmanage',43),(2849,'192.168.2.2','2024-08-06 14:55:54','任务管理','/taskmanage',1),(2850,'192.168.2.2','2024-08-06 14:57:38','我的任务','/mytask',43),(2851,'192.168.2.2','2024-08-06 14:57:39','任务管理','/taskmanage',43),(2852,'192.168.2.2','2024-08-06 14:57:39','我的任务','/mytask',43),(2853,'192.168.2.2','2024-08-06 14:57:41','任务管理','/taskmanage',43),(2854,'192.168.2.2','2024-08-06 14:57:44','我的任务','/mytask',43),(2855,'192.168.2.2','2024-08-06 14:57:44','任务管理','/taskmanage',43),(2856,'192.168.2.2','2024-08-06 14:58:25','我的任务','/mytask',43),(2857,'192.168.2.2','2024-08-06 14:58:38','任务管理','/taskmanage',43),(2858,'192.168.2.2','2024-08-06 14:58:40','我的任务','/mytask',43),(2859,'192.168.2.2','2024-08-06 14:58:41','任务管理','/taskmanage',43),(2860,'192.168.2.2','2024-08-06 15:00:14','我的任务','/mytask',43),(2861,'192.168.2.2','2024-08-06 15:00:14','任务管理','/taskmanage',43),(2862,'192.168.2.2','2024-08-06 15:00:14','任务管理','/taskmanage',43),(2863,'192.168.2.2','2024-08-06 15:00:15','任务管理','/taskmanage',43),(2864,'192.168.2.2','2024-08-06 15:00:18','我的任务','/mytask',43),(2865,'192.168.2.2','2024-08-06 15:00:19','任务管理','/taskmanage',43),(2866,'192.168.2.2','2024-08-06 15:12:49','我的任务','/mytask',43),(2867,'192.168.2.2','2024-08-06 15:12:53','任务管理','/taskmanage',43),(2868,'192.168.2.2','2024-08-06 15:28:06','用户管理','/usermanage',1),(2869,'192.168.2.2','2024-08-06 15:34:35','我的申请','/flowmanage',43),(2870,'192.168.2.2','2024-08-06 15:34:36','流程审核','/audit',43),(2871,'192.168.2.2','2024-08-06 15:53:15','任务管理','/taskmanage',1),(2872,'192.168.2.2','2024-08-06 15:57:29','用户管理','/usermanage',1),(2873,'192.168.2.2','2024-08-06 16:00:06','在线用户','/morelogrecord',1),(2874,'192.168.2.2','2024-08-06 16:00:07','职位管理','/positionmanage',1),(2875,'192.168.2.2','2024-08-06 16:00:09','用户管理','/usermanage',1),(2876,'192.168.2.2','2024-08-06 16:00:10','部门管理','/deptmanage',1),(2877,'192.168.2.2','2024-08-06 16:00:44','职位管理','/positionmanage',1),(2878,'192.168.2.2','2024-08-06 16:00:45','在线用户','/morelogrecord',1),(2879,'192.168.2.2','2024-08-06 16:00:49','用户管理','/usermanage',1),(2880,'192.168.2.2','2024-08-06 16:05:01','角色列表','/rolemanage',1),(2881,'192.168.2.2','2024-08-06 16:05:07','新建流程','/xinxeng',1),(2882,'192.168.2.2','2024-08-06 16:08:23','用户管理','/usermanage',1),(2883,'192.168.2.2','2024-08-06 16:14:48','任务管理','/taskmanage',1),(2884,'192.168.2.2','2024-08-06 16:26:37','我的任务','/mytask',1),(2885,'192.168.2.2','2024-08-06 16:28:52','任务管理','/taskmanage',1),(2886,'192.168.2.2','2024-08-06 16:55:51','我的任务','/mytask',1),(2887,'192.168.2.2','2024-08-06 16:55:53','任务管理','/taskmanage',1),(2888,'192.168.2.2','2024-08-06 17:23:08','用户管理','/usermanage',1),(2889,'192.168.2.2','2024-08-06 17:26:14','任务管理','/taskmanage',1),(2890,'192.168.2.2','2024-08-06 17:32:53','我的任务','/mytask',1),(2891,'192.168.2.2','2024-08-06 17:33:00','任务管理','/taskmanage',1),(2892,'192.168.2.2','2024-08-06 17:33:02','我的任务','/mytask',1),(2893,'192.168.2.2','2024-08-06 17:33:03','任务管理','/taskmanage',1),(2894,'192.168.2.2','2024-08-06 17:33:04','我的任务','/mytask',1),(2895,'192.168.2.2','2024-08-06 17:33:04','任务管理','/taskmanage',1),(2896,'192.168.2.2','2024-08-06 17:33:08','任务管理','/taskmanage',1),(2897,'192.168.2.2','2024-08-06 17:33:11','我的任务','/mytask',1),(2898,'192.168.2.2','2024-08-06 17:33:14','任务管理','/taskmanage',1),(2899,'192.168.2.2','2024-08-06 17:33:14','我的任务','/mytask',1),(2900,'192.168.2.2','2024-08-06 17:34:30','任务管理','/taskmanage',1),(2901,'192.168.2.2','2024-08-06 17:34:31','我的任务','/mytask',1),(2902,'192.168.2.2','2024-08-06 17:34:57','任务管理','/taskmanage',1),(2903,'192.168.2.2','2024-08-06 17:35:35','我的任务','/mytask',1),(2904,'192.168.2.2','2024-08-06 17:37:19','用户管理','/usermanage',1),(2905,'192.168.2.2','2024-08-06 18:12:57','新建流程','/xinxeng',43),(2906,'192.168.2.2','2024-08-06 18:12:59','我的申请','/flowmanage',43),(2907,'192.168.2.2','2024-08-06 18:13:01','流程审核','/audit',43),(2908,'192.168.2.2','2024-08-06 18:13:03','我的任务','/mytask',43),(2909,'192.168.2.2','2024-08-06 18:13:05','任务管理','/taskmanage',43),(2910,'192.168.2.2','2024-08-06 18:13:06','我的任务','/mytask',43),(2911,'192.168.2.2','2024-08-06 18:14:08','任务管理','/taskmanage',43),(2912,'192.168.2.2','2024-08-06 18:14:10','我的任务','/mytask',43),(2913,'192.168.2.2','2024-08-06 18:14:13','任务管理','/taskmanage',43),(2914,'192.168.2.2','2024-08-06 18:14:36','我的任务','/mytask',43),(2915,'192.168.2.2','2024-08-06 18:14:40','任务管理','/taskmanage',43),(2916,'192.168.2.2','2024-08-06 18:14:41','我的任务','/mytask',43),(2917,'192.168.2.2','2024-08-06 18:14:43','任务管理','/taskmanage',43),(2918,'192.168.2.2','2024-08-06 18:14:43','我的任务','/mytask',43),(2919,'192.168.2.2','2024-08-06 18:15:02','我的任务','/mytask',43),(2920,'192.168.2.2','2024-08-06 18:16:05','职位管理','/positionmanage',1),(2921,'192.168.2.2','2024-08-06 18:16:06','用户管理','/usermanage',1),(2922,'192.168.2.2','2024-08-06 18:16:09','职位管理','/positionmanage',1),(2923,'192.168.2.2','2024-08-06 18:16:12','菜单管理','/testsysmenu',1),(2924,'192.168.2.2','2024-08-06 18:16:14','职位管理','/positionmanage',1),(2925,'192.168.2.2','2024-08-06 18:16:16','部门管理','/deptmanage',1),(2926,'192.168.2.2','2024-08-06 18:16:17','在线用户','/morelogrecord',1),(2927,'192.168.2.2','2024-08-06 18:16:19','用户管理','/usermanage',1),(2928,'192.168.2.2','2024-08-06 18:16:22','角色列表','/rolemanage',1),(2929,'192.168.2.2','2024-08-06 18:57:19','类型管理','/testsystype',1),(2930,'192.168.2.2','2024-08-06 18:57:28','我的任务','/mytask',1),(2931,'192.168.2.2','2024-08-06 18:57:30','任务管理','/taskmanage',1),(2932,'192.168.2.2','2024-08-06 18:57:33','我的任务','/mytask',1),(2933,'192.168.2.2','2024-08-06 18:57:41','角色列表','/rolemanage',1),(2934,'192.168.2.2','2024-08-06 18:58:22','我的任务','/mytask',44),(2935,'192.168.2.2','2024-08-07 12:10:09','类型管理','/testsystype',1),(2936,'192.168.2.2','2024-08-07 12:10:15','新建流程','/xinxeng',1),(2937,'192.168.2.2','2024-08-07 12:10:16','我的申请','/flowmanage',1),(2938,'192.168.2.2','2024-08-07 12:10:18','新建流程','/xinxeng',1),(2939,'192.168.2.2','2024-08-07 12:16:31','流程审核','/audit',1),(2940,'192.168.2.2','2024-08-07 12:17:12','新建流程','/xinxeng',1),(2941,'192.168.2.2','2024-08-07 12:23:31','我的申请','/flowmanage',1),(2942,'192.168.2.2','2024-08-07 12:23:31','新建流程','/xinxeng',1),(2943,'192.168.2.2','2024-08-07 12:41:04','新建流程','/xinxeng',1),(2944,'192.168.2.2','2024-08-07 12:41:07','菜单管理','/testsysmenu',1),(2945,'192.168.2.2','2024-08-07 12:41:09','状态管理','/testsysstatus',1),(2946,'192.168.2.2','2024-08-07 12:41:12','用户管理','/usermanage',1),(2947,'192.168.2.2','2024-08-07 12:41:13','角色列表','/rolemanage',1),(2948,'192.168.2.2','2024-08-07 12:42:07','任务管理','/taskmanage',43),(2949,'192.168.2.2','2024-08-07 12:42:08','新建流程','/xinxeng',43),(2950,'192.168.2.2','2024-08-07 12:42:22','我的申请','/flowmanage',43),(2951,'192.168.2.2','2024-08-07 12:44:22','新建流程','/xinxeng',42),(2952,'192.168.2.2','2024-08-07 12:44:49','任务管理','/taskmanage',42),(2953,'192.168.2.2','2024-08-07 12:45:46','我的任务','/mytask',42),(2954,'192.168.2.2','2024-08-07 12:45:47','任务管理','/taskmanage',42),(2955,'192.168.2.2','2024-08-07 12:45:51','流程审核','/audit',42),(2956,'192.168.2.2','2024-08-07 12:45:52','任务管理','/taskmanage',42),(2957,'192.168.2.2','2024-08-07 12:45:53','我的任务','/mytask',42),(2958,'192.168.2.2','2024-08-07 12:45:55','任务管理','/taskmanage',42),(2959,'192.168.2.2','2024-08-07 12:46:07','我的任务','/mytask',42),(2960,'192.168.2.2','2024-08-07 12:46:08','任务管理','/taskmanage',42),(2961,'192.168.2.2','2024-08-07 12:46:39','我的任务','/mytask',42),(2962,'192.168.2.2','2024-08-07 12:46:39','任务管理','/taskmanage',42),(2963,'192.168.2.2','2024-08-07 13:17:13','任务管理','/taskmanage',1),(2964,'192.168.2.2','2024-08-07 13:20:14','我的任务','/mytask',43),(2965,'192.168.2.2','2024-08-07 13:22:28','任务管理','/taskmanage',43),(2966,'192.168.2.2','2024-08-07 13:23:03','我的任务','/mytask',43),(2967,'192.168.2.2','2024-08-07 13:23:05','任务管理','/taskmanage',43),(2968,'192.168.2.2','2024-08-07 13:23:15','我的任务','/mytask',43),(2969,'192.168.2.2','2024-08-07 13:23:32','任务管理','/taskmanage',43),(2970,'192.168.2.2','2024-08-07 13:27:03','我的任务','/mytask',43),(2971,'192.168.2.2','2024-08-07 13:27:09','任务管理','/taskmanage',43),(2972,'192.168.2.2','2024-08-07 13:27:17','我的任务','/mytask',43),(2973,'192.168.2.2','2024-08-07 13:27:20','任务管理','/taskmanage',43),(2974,'192.168.2.2','2024-08-07 13:27:21','我的任务','/mytask',43),(2975,'192.168.2.2','2024-08-07 13:27:22','任务管理','/taskmanage',43),(2976,'192.168.2.2','2024-08-07 13:28:29','我的任务','/mytask',43),(2977,'192.168.2.2','2024-08-07 13:28:30','任务管理','/taskmanage',43),(2978,'192.168.2.2','2024-08-07 13:48:59','我的任务','/mytask',43),(2979,'192.168.2.2','2024-08-07 13:49:00','任务管理','/taskmanage',43),(2980,'192.168.2.2','2024-08-07 13:50:08','我的任务','/mytask',43),(2981,'192.168.2.2','2024-08-07 13:50:10','任务管理','/taskmanage',43),(2982,'192.168.2.2','2024-08-07 14:07:06','我的任务','/mytask',43),(2983,'192.168.2.2','2024-08-07 14:07:06','任务管理','/taskmanage',43),(2984,'192.168.2.2','2024-08-07 14:07:12','任务管理','/taskmanage',43),(2985,'192.168.2.2','2024-08-07 14:07:28','我的任务','/mytask',1),(2986,'192.168.2.2','2024-08-07 14:07:28','任务管理','/taskmanage',1),(2987,'192.168.2.2','2024-08-07 14:07:50','任务管理','/taskmanage',1),(2988,'192.168.2.2','2024-08-07 14:08:08','我的任务','/mytask',43),(2989,'192.168.2.2','2024-08-07 14:08:10','任务管理','/taskmanage',43),(2990,'192.168.2.2','2024-08-07 14:08:11','我的任务','/mytask',43),(2991,'192.168.2.2','2024-08-07 14:08:14','任务管理','/taskmanage',43),(2992,'192.168.2.2','2024-08-07 14:08:29','我的任务','/mytask',43),(2993,'192.168.2.2','2024-08-07 14:08:30','任务管理','/taskmanage',43),(2994,'192.168.2.2','2024-08-07 14:08:37','我的任务','/mytask',43),(2995,'192.168.2.2','2024-08-07 14:11:02','任务管理','/taskmanage',43),(2996,'192.168.2.2','2024-08-07 14:11:04','我的任务','/mytask',43),(2997,'192.168.2.2','2024-08-07 14:11:04','任务管理','/taskmanage',43),(2998,'192.168.2.2','2024-08-07 14:11:43','任务管理','/taskmanage',43),(2999,'192.168.2.2','2024-08-07 14:11:44','我的任务','/mytask',43),(3000,'192.168.2.2','2024-08-07 14:12:13','我的任务','/mytask',1),(3001,'192.168.2.2','2024-08-07 14:12:14','任务管理','/taskmanage',1),(3002,'192.168.2.2','2024-08-07 14:12:54','新建流程','/xinxeng',1),(3003,'192.168.2.2','2024-08-07 14:13:17','我的申请','/flowmanage',1),(3004,'192.168.2.2','2024-08-07 14:13:19','流程审核','/audit',1),(3005,'192.168.2.2','2024-08-07 14:16:01','我的申请','/flowmanage',1),(3006,'192.168.2.2','2024-08-07 14:16:02','新建流程','/xinxeng',1),(3007,'192.168.2.2','2024-08-07 14:16:20','我的申请','/flowmanage',1),(3008,'192.168.2.2','2024-08-07 14:16:22','任务管理','/taskmanage',1),(3009,'192.168.2.2','2024-08-07 14:16:23','我的任务','/mytask',1),(3010,'192.168.2.2','2024-08-07 14:16:25','通讯录','/addrmanage',1),(3011,'192.168.2.2','2024-08-07 14:18:53','任务管理','/taskmanage',1),(3012,'192.168.2.2','2024-08-07 14:26:16','我的任务','/mytask',1),(3013,'192.168.2.2','2024-08-07 14:26:17','任务管理','/taskmanage',1),(3014,'192.168.2.2','2024-08-07 14:30:41','我的任务','/mytask',1),(3015,'192.168.2.2','2024-08-07 14:30:42','任务管理','/taskmanage',1),(3016,'192.168.2.2','2024-08-07 16:37:56','任务管理','/taskmanage',43),(3017,'192.168.2.2','2024-08-07 17:03:40','通讯录','/addrmanage',43),(3018,'192.168.2.2','2024-08-07 17:08:56','任务管理','/taskmanage',43),(3019,'192.168.2.2','2024-08-07 17:08:57','我的任务','/mytask',43),(3020,'192.168.2.2','2024-08-07 17:08:57','任务管理','/taskmanage',43),(3021,'192.168.2.2','2024-08-07 17:10:40','任务管理','/taskmanage',43),(3022,'192.168.2.2','2024-08-07 17:46:57','我的任务','/mytask',43),(3023,'192.168.2.2','2024-08-07 17:46:58','任务管理','/taskmanage',43),(3024,'192.168.2.2','2024-08-07 17:51:03','新建流程','/xinxeng',43),(3025,'192.168.2.2','2024-08-07 17:54:23','任务管理','/taskmanage',43),(3026,'192.168.2.2','2024-08-07 17:57:39','新建流程','/xinxeng',43),(3027,'192.168.2.2','2024-08-07 17:58:44','我的申请','/flowmanage',43),(3028,'192.168.2.2','2024-08-07 17:58:46','流程审核','/audit',43),(3029,'192.168.2.2','2024-08-07 17:58:49','任务管理','/taskmanage',43),(3030,'192.168.2.2','2024-08-07 17:58:48','任务管理','/taskmanage',43),(3031,'192.168.2.2','2024-08-07 18:03:30','我的任务','/mytask',43),(3032,'192.168.2.2','2024-08-07 18:03:31','任务管理','/taskmanage',43),(3033,'192.168.2.2','2024-08-07 18:04:05','我的任务','/mytask',43),(3034,'192.168.2.2','2024-08-07 18:04:06','任务管理','/taskmanage',43),(3035,'192.168.2.2','2024-08-07 18:16:28','我的任务','/mytask',43),(3036,'192.168.2.2','2024-08-07 18:16:28','任务管理','/taskmanage',43),(3037,'192.168.2.2','2024-08-07 18:18:28','任务管理','/taskmanage',43),(3038,'192.168.2.2','2024-08-07 19:56:26','我的申请','/flowmanage',43),(3039,'192.168.2.2','2024-08-07 19:56:28','新建流程','/xinxeng',43),(3040,'192.168.2.2','2024-08-07 20:03:35','任务管理','/taskmanage',43),(3041,'192.168.2.2','2024-08-07 20:10:37','新建流程','/xinxeng',43),(3042,'192.168.2.2','2024-08-07 20:20:30','任务管理','/taskmanage',43),(3043,'192.168.2.2','2024-08-08 06:40:32','我的任务','/mytask',43),(3044,'192.168.2.2','2024-08-08 06:40:33','任务管理','/taskmanage',43),(3045,'192.168.2.2','2024-08-08 06:40:35','我的任务','/mytask',43),(3046,'192.168.2.2','2024-08-08 06:40:35','任务管理','/taskmanage',43),(3047,'192.168.2.2','2024-08-08 06:40:40','任务管理','/taskmanage',43),(3048,'192.168.2.2','2024-08-08 06:41:20','我的任务','/mytask',43),(3049,'192.168.2.2','2024-08-08 06:41:38','通讯录','/addrmanage',43),(3050,'192.168.2.2','2024-08-08 07:33:49','我的任务','/mytask',1),(3051,'192.168.2.2','2024-08-08 07:33:50','任务管理','/taskmanage',1),(3052,'192.168.2.2','2024-08-08 07:34:14','新建流程','/xinxeng',1),(3053,'192.168.2.2','2024-08-08 07:36:22','任务管理','/taskmanage',1),(3054,'192.168.2.2','2024-08-08 08:24:12','任务管理','/taskmanage',42),(3055,'192.168.2.2','2024-08-08 08:29:28','我的任务','/mytask',42),(3056,'192.168.2.2','2024-08-08 08:29:30','任务管理','/taskmanage',42),(3057,'192.168.2.2','2024-08-08 08:30:16','我的任务','/mytask',43),(3058,'192.168.2.2','2024-08-08 13:13:41','任务管理','/taskmanage',43),(3059,'192.168.2.2','2024-08-08 13:13:42','我的任务','/mytask',43),(3060,'192.168.2.2','2024-08-08 13:28:56','任务管理','/taskmanage',43),(3061,'192.168.2.2','2024-08-08 18:27:07','我的任务','/mytask',1),(3062,'192.168.2.2','2024-08-08 18:27:08','任务管理','/taskmanage',1),(3063,'192.168.2.2','2024-08-08 18:29:18','我的任务','/mytask',1),(3064,'192.168.2.2','2024-08-08 18:29:19','任务管理','/taskmanage',1),(3065,'192.168.2.2','2024-08-08 18:40:44','我的任务','/mytask',1),(3066,'192.168.2.2','2024-08-08 18:40:46','任务管理','/taskmanage',1),(3067,'192.168.2.2','2024-08-09 08:58:58','我的任务','/mytask',43),(3068,'192.168.2.2','2024-08-09 08:58:59','任务管理','/taskmanage',43),(3069,'192.168.2.2','2024-08-09 08:59:42','任务管理','/taskmanage',44),(3070,'192.168.2.2','2024-08-09 08:59:43','我的任务','/mytask',44),(3071,'192.168.2.2','2024-08-09 08:59:45','任务管理','/taskmanage',44),(3072,'192.168.2.2','2024-08-09 08:59:46','我的任务','/mytask',44),(3073,'192.168.2.2','2024-08-09 08:59:59','我的任务','/mytask',42),(3074,'192.168.2.2','2024-08-09 09:00:00','任务管理','/taskmanage',42),(3075,'192.168.2.2','2024-08-09 09:31:36','我的任务','/mytask',1),(3076,'192.168.2.2','2024-08-09 09:31:37','任务管理','/taskmanage',1),(3077,'192.168.2.2','2024-08-09 09:42:00','角色列表','/rolemanage',1),(3078,'192.168.2.2','2024-08-09 09:42:38','任务管理','/taskmanage',1),(3079,'192.168.2.2','2024-08-09 10:12:30','角色列表','/rolemanage',1),(3080,'192.168.2.2','2024-08-09 10:17:10','我的任务','/mytask',43),(3081,'192.168.2.2','2024-08-09 10:17:11','任务管理','/taskmanage',43),(3082,'192.168.2.2','2024-08-09 10:17:12','我的任务','/mytask',43),(3083,'192.168.2.2','2024-08-09 10:18:36','任务管理','/taskmanage',43),(3084,'192.168.2.2','2024-08-09 10:22:16','我的任务','/mytask',43),(3085,'192.168.2.2','2024-08-09 10:25:01','我的任务','/mytask',1),(3086,'192.168.2.2','2024-08-09 10:25:06','任务管理','/taskmanage',1),(3087,'192.168.2.2','2024-08-09 10:26:39','我的任务','/mytask',42),(3088,'192.168.2.2','2024-08-09 10:27:20','任务管理','/taskmanage',43),(3089,'192.168.2.2','2024-08-09 10:27:26','我的任务','/mytask',43),(3090,'192.168.2.2','2024-08-09 10:54:38','任务管理','/taskmanage',42),(3091,'192.168.2.2','2024-08-09 10:54:43','我的任务','/mytask',42),(3092,'192.168.2.2','2024-08-09 10:54:47','任务管理','/taskmanage',42),(3093,'192.168.2.2','2024-08-09 11:36:17','我的申请','/flowmanage',42),(3094,'192.168.2.2','2024-08-09 11:36:21','任务管理','/taskmanage',42),(3095,'192.168.2.2','2024-08-09 13:47:12','任务管理','/taskmanage',43),(3096,'192.168.2.2','2024-08-09 13:47:20','我的任务','/mytask',43),(3097,'192.168.2.2','2024-08-09 14:00:58','任务管理','/taskmanage',43),(3098,'192.168.2.2','2024-08-09 14:01:04','我的任务','/mytask',43),(3099,'192.168.2.2','2024-08-10 06:53:29','我的任务','/mytask',42),(3100,'192.168.2.2','2024-08-10 06:53:39','任务管理','/taskmanage',42),(3101,'192.168.2.2','2024-08-10 08:47:43','任务管理','/taskmanage',43),(3102,'192.168.2.2','2024-08-10 08:47:49','我的任务','/mytask',43),(3103,'192.168.2.2','2024-08-10 09:11:12','新建流程','/xinxeng',43),(3104,'192.168.2.2','2024-08-10 09:11:18','我的任务','/mytask',43),(3105,'192.168.2.2','2024-08-10 09:32:13','我的任务','/mytask',1),(3106,'192.168.2.2','2024-08-10 09:44:30','任务管理','/taskmanage',43),(3107,'192.168.2.2','2024-08-10 09:44:41','我的任务','/mytask',43),(3108,'192.168.2.2','2024-08-11 06:17:47','任务管理','/taskmanage',43),(3109,'192.168.2.2','2024-08-11 06:19:18','我的任务','/mytask',43),(3110,'192.168.2.2','2024-08-11 06:39:52','任务管理','/taskmanage',43),(3111,'192.168.2.2','2024-08-11 06:39:55','我的任务','/mytask',43),(3112,'192.168.2.2','2024-08-11 07:45:17','任务管理','/taskmanage',43),(3113,'192.168.2.2','2024-08-11 07:45:19','我的任务','/mytask',43),(3114,'192.168.2.2','2024-08-11 08:02:35','我的任务','/mytask',42),(3115,'192.168.2.2','2024-08-11 08:02:37','任务管理','/taskmanage',42),(3116,'192.168.2.2','2024-08-11 08:03:21','我的任务','/mytask',42),(3117,'192.168.2.2','2024-08-11 08:03:23','任务管理','/taskmanage',42),(3118,'192.168.2.2','2024-08-11 08:05:05','我的任务','/mytask',42),(3119,'192.168.2.2','2024-08-11 08:05:06','任务管理','/taskmanage',42),(3120,'192.168.2.2','2024-08-11 08:24:06','我的任务','/mytask',42),(3121,'192.168.2.2','2024-08-11 08:24:07','任务管理','/taskmanage',42),(3122,'192.168.2.2','2024-08-11 08:24:40','任务管理','/taskmanage',44),(3123,'192.168.2.2','2024-08-11 08:24:41','我的任务','/mytask',44),(3124,'192.168.2.2','2024-08-11 11:15:21','任务管理','/taskmanage',44),(3125,'192.168.2.2','2024-08-11 11:15:21','我的任务','/mytask',44),(3126,'192.168.2.2','2024-08-11 11:15:23','我的任务','/mytask',44),(3127,'192.168.2.2','2024-08-11 11:17:33','我的任务','/mytask',42),(3128,'192.168.2.2','2024-08-11 11:17:56','任务管理','/taskmanage',44),(3129,'192.168.2.2','2024-08-11 11:17:57','我的任务','/mytask',44),(3130,'192.168.2.2','2024-08-11 11:28:54','任务管理','/taskmanage',42),(3131,'192.168.2.2','2024-08-11 11:32:39','任务管理','/taskmanage',44),(3132,'192.168.2.2','2024-08-11 11:34:29','我的任务','/mytask',42),(3133,'192.168.2.2','2024-08-11 11:35:14','我的任务','/mytask',44),(3134,'192.168.2.2','2024-08-11 11:51:32','任务管理','/taskmanage',43),(3135,'192.168.2.2','2024-08-11 11:51:33','我的任务','/mytask',43),(3136,'192.168.2.2','2024-08-11 11:53:43','我的任务','/mytask',45),(3137,'192.168.2.2','2024-08-11 11:56:30','任务管理','/taskmanage',42),(3138,'192.168.2.2','2024-08-11 11:57:17','我的任务','/mytask',42),(3139,'192.168.2.2','2024-08-11 11:57:18','任务管理','/taskmanage',42),(3140,'192.168.2.2','2024-08-11 11:57:34','我的任务','/mytask',42),(3141,'192.168.2.2','2024-08-11 11:57:35','任务管理','/taskmanage',42),(3142,'192.168.2.2','2024-08-11 11:58:09','我的任务','/mytask',42),(3143,'192.168.2.2','2024-08-11 11:58:10','任务管理','/taskmanage',42),(3144,'192.168.2.2','2024-08-11 11:58:15','我的任务','/mytask',42),(3145,'192.168.2.2','2024-08-11 11:58:18','任务管理','/taskmanage',42),(3146,'192.168.2.2','2024-08-11 12:00:19','任务管理','/taskmanage',45),(3147,'192.168.2.2','2024-08-11 12:00:20','我的任务','/mytask',45),(3148,'192.168.2.2','2024-08-11 12:00:21','任务管理','/taskmanage',45),(3149,'192.168.2.2','2024-08-11 12:00:35','任务管理','/taskmanage',44),(3150,'192.168.2.2','2024-08-11 12:00:36','我的任务','/mytask',44),(3151,'192.168.2.2','2024-08-11 12:01:35','我的任务','/mytask',45),(3152,'192.168.2.2','2024-08-11 12:03:37','任务管理','/taskmanage',44),(3153,'192.168.2.2','2024-08-11 12:03:38','我的任务','/mytask',44),(3154,'192.168.2.2','2024-08-11 12:10:23','任务管理','/taskmanage',44),(3155,'192.168.2.2','2024-08-11 12:10:51','我的任务','/mytask',42),(3156,'192.168.2.2','2024-08-11 12:10:53','任务管理','/taskmanage',42),(3157,'192.168.2.2','2024-08-11 12:11:50','我的任务','/mytask',44),(3158,'192.168.2.2','2024-08-11 12:11:51','任务管理','/taskmanage',44),(3159,'192.168.2.2','2024-08-11 12:11:52','我的任务','/mytask',44),(3160,'192.168.2.2','2024-08-11 12:13:28','任务管理','/taskmanage',44),(3161,'192.168.2.2','2024-08-11 12:13:29','我的任务','/mytask',44),(3162,'192.168.2.2','2024-08-11 12:21:25','任务管理','/taskmanage',44),(3163,'192.168.2.2','2024-08-11 12:21:26','我的任务','/mytask',44),(3164,'192.168.2.2','2024-08-11 12:23:25','任务管理','/taskmanage',44),(3165,'192.168.2.2','2024-08-11 12:23:26','我的任务','/mytask',44),(3166,'192.168.2.2','2024-08-11 12:30:29','任务管理','/taskmanage',44),(3167,'192.168.2.2','2024-08-11 12:30:29','我的任务','/mytask',44),(3168,'192.168.2.2','2024-08-11 12:30:32','我的任务','/mytask',44),(3169,'192.168.2.2','2024-08-11 12:39:49','任务管理','/taskmanage',44),(3170,'192.168.2.2','2024-08-11 12:39:50','我的任务','/mytask',44),(3171,'192.168.2.2','2024-08-11 12:43:49','任务管理','/taskmanage',44),(3172,'192.168.2.2','2024-08-11 12:43:50','我的任务','/mytask',44),(3173,'192.168.2.2','2024-08-11 12:44:46','任务管理','/taskmanage',43),(3174,'192.168.2.2','2024-08-11 12:44:47','我的任务','/mytask',43),(3175,'192.168.2.2','2024-08-11 12:46:01','任务管理','/taskmanage',43),(3176,'192.168.2.2','2024-08-11 12:46:02','我的任务','/mytask',43),(3177,'192.168.2.2','2024-08-11 13:01:27','任务管理','/taskmanage',43),(3178,'192.168.2.2','2024-08-11 13:01:27','我的任务','/mytask',43),(3179,'192.168.2.2','2024-08-11 13:01:43','我的任务','/mytask',43),(3180,'192.168.2.2','2024-08-11 13:02:55','任务管理','/taskmanage',43),(3181,'192.168.2.2','2024-08-11 13:02:56','我的任务','/mytask',43),(3182,'192.168.2.2','2024-08-12 08:05:00','用户管理','/usermanage',1),(3183,'192.168.2.2','2024-08-12 08:07:19','职位管理','/positionmanage',1),(3184,'192.168.2.2','2024-08-12 08:07:20','用户管理','/usermanage',1),(3185,'192.168.2.2','2024-08-12 08:07:37','职位管理','/positionmanage',1),(3186,'192.168.2.2','2024-08-12 08:07:38','在线用户','/morelogrecord',1),(3187,'192.168.2.2','2024-08-12 08:07:47','用户管理','/usermanage',1),(3188,'192.168.2.2','2024-08-12 08:07:48','职位管理','/positionmanage',1),(3189,'192.168.2.2','2024-08-12 08:07:49','在线用户','/morelogrecord',1),(3190,'192.168.2.2','2024-08-12 08:07:50','部门管理','/deptmanage',1),(3191,'192.168.2.2','2024-08-12 08:07:51','用户管理','/usermanage',1),(3192,'192.168.2.2','2024-08-12 08:08:18','我的任务','/mytask',42),(3193,'192.168.2.2','2024-08-12 08:08:18','任务管理','/taskmanage',42),(3194,'192.168.2.2','2024-08-12 08:08:43','任务管理','/taskmanage',42),(3195,'192.168.2.2','2024-08-12 08:11:40','我的申请','/flowmanage',42),(3196,'192.168.2.2','2024-08-12 08:11:41','新建流程','/xinxeng',42),(3197,'192.168.2.2','2024-08-12 08:11:41','我的申请','/flowmanage',42),(3198,'192.168.2.2','2024-08-12 08:11:50','任务管理','/taskmanage',42),(3199,'192.168.2.2','2024-08-12 08:20:58','我的任务','/mytask',42),(3200,'192.168.2.2','2024-08-12 08:21:08','任务管理','/taskmanage',42),(3201,'192.168.2.2','2024-08-12 08:28:46','我的任务','/mytask',42),(3202,'192.168.2.2','2024-08-12 08:28:58','任务管理','/taskmanage',42),(3203,'192.168.2.2','2024-08-12 08:33:48','我的任务','/mytask',42),(3204,'192.168.2.2','2024-08-12 08:33:51','任务管理','/taskmanage',42),(3205,'192.168.2.2','2024-08-12 08:34:23','我的任务','/mytask',46),(3206,'192.168.2.2','2024-08-12 08:38:43','流程审核','/audit',47),(3207,'192.168.2.2','2024-08-12 08:38:45','我的任务','/mytask',47),(3208,'192.168.2.2','2024-08-12 09:37:54','我的任务','/mytask',42),(3209,'192.168.2.2','2024-08-12 09:37:56','任务管理','/taskmanage',42),(3210,'192.168.2.2','2024-08-12 09:39:09','我的任务','/mytask',42),(3211,'192.168.2.2','2024-08-12 09:59:53','任务管理','/taskmanage',43),(3212,'192.168.2.2','2024-08-12 09:59:53','我的任务','/mytask',43),(3213,'192.168.2.2','2024-08-13 08:13:26','任务管理','/taskmanage',42),(3214,'192.168.2.2','2024-08-13 08:13:32','新建流程','/xinxeng',42),(3215,'192.168.2.2','2024-08-13 08:13:35','我的申请','/flowmanage',42),(3216,'192.168.2.2','2024-08-13 08:13:37','流程审核','/audit',42),(3217,'192.168.2.2','2024-08-13 08:14:38','新建流程','/xinxeng',42),(3218,'192.168.2.2','2024-08-13 08:18:51','任务管理','/taskmanage',42),(3219,'192.168.2.2','2024-08-13 08:19:52','我的任务','/mytask',42),(3220,'192.168.2.2','2024-08-13 08:21:26','任务管理','/taskmanage',44),(3221,'192.168.2.2','2024-08-13 08:21:26','我的任务','/mytask',44),(3222,'192.168.2.2','2024-08-13 08:21:30','我的任务','/mytask',44),(3223,'192.168.2.2','2024-08-13 08:31:10','任务管理','/taskmanage',45),(3224,'192.168.2.2','2024-08-13 08:31:11','我的任务','/mytask',45),(3225,'192.168.2.2','2024-08-13 08:34:58','任务管理','/taskmanage',44),(3226,'192.168.2.2','2024-08-13 08:35:20','我的任务','/mytask',44),(3227,'192.168.2.2','2024-08-13 08:35:20','任务管理','/taskmanage',44),(3228,'192.168.2.2','2024-08-13 08:35:20','任务管理','/taskmanage',44),(3229,'192.168.2.2','2024-08-13 08:35:30','任务管理','/taskmanage',44),(3230,'192.168.2.2','2024-08-13 08:35:43','我的任务','/mytask',44),(3231,'192.168.2.2','2024-08-13 08:41:06','任务管理','/taskmanage',42),(3232,'192.168.2.2','2024-08-13 08:49:55','我的任务','/mytask',42),(3233,'192.168.2.2','2024-08-13 08:49:56','任务管理','/taskmanage',42),(3234,'192.168.2.2','2024-08-13 08:49:56','我的任务','/mytask',42),(3235,'192.168.2.2','2024-08-13 08:50:40','任务管理','/taskmanage',45),(3236,'192.168.2.2','2024-08-13 08:50:40','我的任务','/mytask',45),(3237,'192.168.2.2','2024-08-13 09:01:19','我的任务','/mytask',42),(3238,'192.168.2.2','2024-08-13 09:01:21','任务管理','/taskmanage',42),(3239,'192.168.2.2','2024-08-13 09:07:24','我的任务','/mytask',42),(3240,'192.168.2.2','2024-08-13 09:07:38','我的任务','/mytask',43),(3241,'192.168.2.2','2024-08-13 09:09:53','任务管理','/taskmanage',42),(3242,'192.168.2.2','2024-08-13 09:44:24','任务管理','/taskmanage',44),(3243,'192.168.2.2','2024-08-13 09:44:25','我的任务','/mytask',44),(3244,'192.168.2.2','2024-08-13 09:47:25','我的任务','/mytask',42),(3245,'192.168.2.2','2024-08-13 09:47:27','任务管理','/taskmanage',42),(3246,'192.168.2.2','2024-08-13 09:47:38','我的任务','/mytask',42),(3247,'192.168.2.2','2024-08-13 09:47:39','任务管理','/taskmanage',42),(3248,'192.168.2.2','2024-08-13 09:54:21','我的任务','/mytask',42),(3249,'192.168.2.2','2024-08-13 10:17:49','通讯录','/addrmanage',43),(3250,'192.168.2.2','2024-08-13 10:18:02','我的任务','/mytask',43),(3251,'192.168.2.2','2024-08-13 11:19:36','任务管理','/taskmanage',43),(3252,'192.168.2.2','2024-08-13 11:19:37','我的任务','/mytask',43),(3253,'192.168.2.2','2024-08-13 11:19:42','任务管理','/taskmanage',43),(3254,'192.168.2.2','2024-08-13 11:19:43','我的任务','/mytask',43),(3255,'192.168.2.2','2024-08-13 11:19:44','任务管理','/taskmanage',43),(3256,'192.168.2.2','2024-08-13 11:19:45','我的任务','/mytask',43),(3257,'192.168.2.2','2024-08-13 11:19:51','任务管理','/taskmanage',43),(3258,'192.168.2.2','2024-08-13 11:19:51','我的任务','/mytask',43),(3259,'192.168.2.2','2024-08-13 11:19:53','我的任务','/mytask',43),(3260,'192.168.2.2','2024-08-13 11:30:05','任务管理','/taskmanage',43),(3261,'192.168.2.2','2024-08-13 11:30:07','我的任务','/mytask',43),(3262,'192.168.2.2','2024-08-13 11:30:09','任务管理','/taskmanage',43),(3263,'192.168.2.2','2024-08-13 11:30:10','我的任务','/mytask',43),(3264,'192.168.2.2','2024-08-13 11:30:11','任务管理','/taskmanage',43),(3265,'192.168.2.2','2024-08-13 11:30:12','我的任务','/mytask',43),(3266,'192.168.2.2','2024-08-13 11:30:12','任务管理','/taskmanage',43),(3267,'192.168.2.2','2024-08-13 11:30:13','任务管理','/taskmanage',43),(3268,'192.168.2.2','2024-08-13 11:30:14','我的任务','/mytask',43),(3269,'192.168.2.2','2024-08-13 11:30:14','任务管理','/taskmanage',43),(3270,'192.168.2.2','2024-08-13 11:30:26','任务管理','/taskmanage',43),(3271,'192.168.2.2','2024-08-13 11:30:26','我的任务','/mytask',43),(3272,'192.168.2.2','2024-08-13 11:30:46','我的任务','/mytask',43),(3273,'192.168.2.2','2024-08-13 11:34:23','任务管理','/taskmanage',43),(3274,'192.168.2.2','2024-08-13 11:34:54','我的任务','/mytask',43),(3275,'192.168.2.2','2024-08-13 11:34:55','任务管理','/taskmanage',43),(3276,'192.168.2.2','2024-08-13 11:34:55','我的任务','/mytask',43),(3277,'192.168.2.2','2024-08-13 11:35:10','职位管理','/positionmanage',1),(3278,'192.168.2.2','2024-08-13 11:35:11','在线用户','/morelogrecord',1),(3279,'192.168.2.2','2024-08-13 11:35:11','用户管理','/usermanage',1),(3280,'192.168.2.2','2024-08-13 11:35:19','角色列表','/rolemanage',1),(3281,'192.168.2.2','2024-08-13 11:35:57','我的任务','/mytask',43),(3282,'192.168.2.2','2024-08-13 11:38:57','任务管理','/taskmanage',42),(3283,'192.168.2.2','2024-08-13 11:42:39','我的任务','/mytask',42),(3284,'192.168.2.2','2024-08-13 11:42:41','任务管理','/taskmanage',42),(3285,'192.168.2.2','2024-08-13 11:46:08','我的任务','/mytask',42),(3286,'192.168.2.2','2024-08-13 11:46:09','任务管理','/taskmanage',42),(3287,'192.168.2.2','2024-08-13 11:56:51','我的任务','/mytask',42),(3288,'192.168.2.2','2024-08-13 11:56:53','三单任务管理','/taskmanage',42),(3289,'192.168.2.2','2024-08-13 11:58:00','三单任务管理','/taskmanage',44),(3290,'192.168.2.2','2024-08-13 11:58:03','我的任务','/mytask',44),(3291,'192.168.2.2','2024-08-13 12:22:07','三单任务管理','/taskmanage',44),(3292,'192.168.2.2','2024-08-13 12:22:08','我的任务','/mytask',44),(3293,'192.168.2.2','2024-08-13 15:06:55','我的任务','/mytask',42),(3294,'192.168.2.2','2024-08-13 15:06:56','三单任务管理','/taskmanage',42),(3295,'192.168.2.2','2024-08-13 15:06:59','我的任务','/mytask',42),(3296,'192.168.2.2','2024-08-13 15:07:00','三单任务管理','/taskmanage',42),(3297,'192.168.2.2','2024-08-13 16:10:37','我的任务','/mytask',42),(3298,'192.168.2.2','2024-08-13 16:10:41','三单任务管理','/taskmanage',42),(3299,'192.168.2.2','2024-08-15 09:26:24','我的任务','/mytask',42),(3300,'192.168.2.2','2024-08-15 09:26:24','任务管理','/taskmanage',42),(3301,'192.168.2.2','2024-08-15 09:26:29','任务管理','/taskmanage',42),(3302,'192.168.2.2','2024-08-15 09:29:28','我的任务','/mytask',42),(3303,'192.168.2.2','2024-08-15 09:29:32','任务管理','/taskmanage',42),(3304,'192.168.2.2','2024-08-15 13:18:20','我的任务','/mytask',42),(3305,'192.168.2.2','2024-08-15 13:18:22','任务管理','/taskmanage',42),(3306,'192.168.2.2','2024-08-15 16:34:03','用户管理','/usermanage',1),(3307,'192.168.2.2','2024-08-15 16:34:07','角色列表','/rolemanage',1),(3308,'192.168.2.2','2024-08-15 16:34:32','在线用户','/morelogrecord',1),(3309,'192.168.2.2','2024-08-15 16:34:35','菜单管理','/testsysmenu',1),(3310,'192.168.2.2','2024-08-15 16:34:59','状态管理','/testsysstatus',1),(3311,'192.168.2.2','2024-08-15 16:35:01','角色列表','/rolemanage',1),(3312,'192.168.2.2','2024-08-15 16:35:25','菜单管理','/testsysmenu',1),(3313,'192.168.2.2','2024-08-15 16:36:48','类型管理','/testsystype',1),(3314,'192.168.2.2','2024-08-15 16:36:53','状态管理','/testsysstatus',1),(3315,'192.168.2.2','2024-08-15 16:36:57','在线用户','/morelogrecord',1),(3316,'192.168.2.2','2024-08-15 16:36:58','部门管理','/deptmanage',1),(3317,'192.168.2.2','2024-08-15 16:37:01','职位管理','/positionmanage',1),(3318,'192.168.2.2','2024-08-15 16:37:02','用户管理','/usermanage',1),(3319,'192.168.2.2','2024-08-15 16:37:05','角色列表','/rolemanage',1),(3320,'192.168.2.2','2024-08-15 16:37:23','部门管理','/deptmanage',1),(3321,'192.168.2.2','2024-08-15 16:37:24','在线用户','/morelogrecord',1),(3322,'192.168.2.2','2024-08-15 16:37:25','职位管理','/positionmanage',1),(3323,'192.168.2.2','2024-08-15 16:37:27','菜单管理','/testsysmenu',1),(3324,'192.168.2.2','2024-08-15 16:55:11','角色列表','/rolemanage',1),(3325,'192.168.2.2','2024-08-15 17:02:21','菜单管理','/testsysmenu',1),(3326,'192.168.2.2','2024-08-15 18:25:28','三单一览','/threebookmanage',1),(3327,'192.168.2.2','2024-08-15 18:26:09','用户管理','/usermanage',1),(3328,'192.168.2.2','2024-08-15 18:26:17','三单一览','/threebookmanage',1),(3329,'192.168.2.2','2024-08-15 18:50:55','用户管理','/usermanage',1),(3330,'192.168.2.2','2024-08-15 18:55:33','三单一览','/threebookmanage',1),(3331,'192.168.2.2','2024-08-15 19:09:16','用户管理','/usermanage',1),(3332,'192.168.2.2','2024-08-15 19:10:30','三单一览','/threebookmanage',1),(3333,'192.168.2.2','2024-08-15 19:36:42','用户管理','/usermanage',1),(3334,'192.168.2.2','2024-08-15 19:37:47','三单一览','/threebookmanage',1),(3335,'192.168.2.2','2024-08-15 19:38:01','用户管理','/usermanage',1),(3336,'192.168.2.2','2024-08-15 19:46:44','三单一览','/threebookmanage',1),(3337,'192.168.2.2','2024-08-18 14:18:14','类型管理','/testsystype',1),(3338,'192.168.2.2','2024-08-18 14:18:22','菜单管理','/testsysmenu',1),(3339,'192.168.2.2','2024-08-18 14:18:42','状态管理','/testsysstatus',1),(3340,'192.168.2.2','2024-08-18 14:18:45','类型管理','/testsystype',1),(3341,'192.168.2.2','2024-08-18 14:29:29','三单一览','/threebookmanage',1),(3342,'192.168.2.2','2024-08-18 19:31:25','任务管理','/taskmanage',1),(3343,'192.168.2.2','2024-08-18 19:31:57','三单一览','/threebookmanage',1),(3344,'192.168.2.2','2024-08-18 20:55:25','任务管理','/taskmanage',1),(3345,'192.168.2.2','2024-08-18 20:55:27','我的任务','/mytask',1),(3346,'192.168.2.2','2024-08-18 20:55:30','三单一览','/threebookmanage',1),(3347,'192.168.2.2','2024-08-18 20:55:34','通讯录','/addrmanage',1),(3348,'192.168.2.2','2024-08-18 20:55:43','部门管理','/deptmanage',1),(3349,'192.168.2.2','2024-08-18 20:55:43','在线用户','/morelogrecord',1),(3350,'192.168.2.2','2024-08-18 20:55:44','职位管理','/positionmanage',1),(3351,'192.168.2.2','2024-08-18 20:55:47','用户管理','/usermanage',1),(3352,'192.168.2.2','2024-08-18 20:55:50','角色列表','/rolemanage',1),(3353,'192.168.2.2','2024-08-18 20:55:53','新建流程','/xinxeng',1),(3354,'192.168.2.2','2024-08-18 20:55:58','我的申请','/flowmanage',1),(3355,'192.168.2.2','2024-08-18 20:56:13','状态管理','/testsysstatus',1),(3356,'192.168.2.2','2024-08-18 20:56:14','菜单管理','/testsysmenu',1),(3357,'192.168.2.2','2024-08-18 20:57:27','任务管理','/taskmanage',1),(3358,'192.168.2.2','2024-08-18 20:57:28','我的任务','/mytask',1),(3359,'192.168.2.2','2024-08-18 20:57:30','三单一览','/threebookmanage',1),(3360,'192.168.2.2','2024-08-18 20:57:38','类型管理','/testsystype',1),(3361,'192.168.2.2','2024-08-18 20:57:39','菜单管理','/testsysmenu',1),(3362,'192.168.2.2','2024-08-18 20:57:41','部门管理','/deptmanage',1),(3363,'192.168.2.2','2024-08-18 20:57:43','角色列表','/rolemanage',1),(3364,'192.168.2.2','2024-08-18 20:57:45','我的任务','/mytask',1),(3365,'192.168.2.2','2024-08-18 20:57:46','任务管理','/taskmanage',1),(3366,'192.168.2.2','2024-08-18 20:59:15','三单一览','/threebookmanage',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_login_record`
--

LOCK TABLES `aoa_user_login_record` WRITE;
/*!40000 ALTER TABLE `aoa_user_login_record` DISABLE KEYS */;
INSERT INTO `aoa_user_login_record` VALUES (152,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 10:26:02',NULL,1),(153,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 11:25:24',NULL,43),(154,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 14:02:17',NULL,43),(155,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 14:21:56',NULL,1),(156,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 15:28:03',NULL,1),(157,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 15:57:25',NULL,1),(158,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:37:16',NULL,1),(159,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:39:50',NULL,44),(160,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:45:38',NULL,45),(161,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:10:07',NULL,45),(162,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:12:22',NULL,43),(163,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:15:43',NULL,44),(164,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:16:01',NULL,1),(165,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:58:19',NULL,44),(166,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:10:02',NULL,1),(167,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:42:04',NULL,43),(168,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:42:39',NULL,1),(169,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:44:19',NULL,42),(170,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 13:17:10',NULL,1),(171,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 13:20:11',NULL,43),(172,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:07:21',NULL,1),(173,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:08:04',NULL,43),(174,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:11:56',NULL,1),(175,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:30:56',NULL,43),(176,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 16:37:47',NULL,43),(177,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 19:49:38',NULL,43),(178,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 06:40:29',NULL,43),(179,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 07:32:50',NULL,1),(180,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 08:24:08',NULL,42),(181,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 08:30:14',NULL,43),(182,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 11:48:48',NULL,42),(183,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 13:13:10',NULL,42),(184,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 13:13:35',NULL,43),(185,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:06:55',NULL,43),(186,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:14:31',NULL,1),(187,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:44:21',NULL,1),(188,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:58:53',NULL,43),(189,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:12',NULL,1),(190,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:40',NULL,44),(191,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:55',NULL,42),(192,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 09:00:11',NULL,1),(193,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:17:08',NULL,43),(194,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:24:49',NULL,1),(195,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:25:34',NULL,42),(196,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:26:49',NULL,43),(197,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:54:33',NULL,42),(198,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:59:20',NULL,43),(199,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 11:36:15',NULL,42),(200,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 12:35:48',NULL,42),(201,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:39:13',NULL,42),(202,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:47:01',NULL,43),(203,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:49:17',NULL,42),(204,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:50:27',NULL,43),(205,'Chrome Mobile/127.0.6533.107','192.168.2.2','2024-08-10 06:53:17',NULL,42),(206,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 08:47:34',NULL,43),(207,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:11:09',NULL,43),(208,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:31:31',NULL,44),(209,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:32:08',NULL,1),(210,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:40:54',NULL,43),(211,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:08:28',NULL,44),(212,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:10:44',NULL,43),(213,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:20:11',NULL,44),(214,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:18:15',NULL,43),(215,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:44:18',NULL,44),(216,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:46:44',NULL,43),(217,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:59:39',NULL,43),(218,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:32:05',NULL,42),(219,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:38:07',NULL,43),(220,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:41:31',NULL,42),(221,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:43:15',NULL,43),(222,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:48:07',NULL,42),(223,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:50:37',NULL,43),(224,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:57:59',NULL,43),(225,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:01:31',NULL,42),(226,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:07:29',NULL,43),(227,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:07:57',NULL,42),(228,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:13:08',NULL,42),(229,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:19:34',NULL,42),(230,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:24:16',NULL,43),(231,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:24:37',NULL,44),(232,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 09:39:35',NULL,43),(233,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 09:49:34',NULL,44),(234,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 10:37:33',NULL,43),(235,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:13:44',NULL,42),(236,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:15:16',NULL,44),(237,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:15:48',NULL,42),(238,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:17:53',NULL,44),(239,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:28:50',NULL,42),(240,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:29:43',NULL,44),(241,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:32:49',NULL,42),(242,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:35:08',NULL,44),(243,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:51:27',NULL,43),(244,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:53:40',NULL,45),(245,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:56:27',NULL,42),(246,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:00:17',NULL,45),(247,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:00:33',NULL,44),(248,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:01:31',NULL,45),(249,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:03:34',NULL,44),(250,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:10:49',NULL,42),(251,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:11:48',NULL,44),(252,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:12:17',NULL,42),(253,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:13:26',NULL,44),(254,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:21:22',NULL,44),(255,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:23:23',NULL,44),(256,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:44:03',NULL,45),(257,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:44:44',NULL,43),(258,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:04:57',NULL,1),(259,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:08:06',NULL,42),(260,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:11:36',NULL,42),(261,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:12:58',NULL,42),(262,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:14:40',NULL,42),(263,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:20:55',NULL,42),(264,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:34:21',NULL,46),(265,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:38:40',NULL,47),(266,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:25:11',NULL,44),(267,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:37:51',NULL,42),(268,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:39:33',NULL,43),(269,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:13:20',NULL,42),(270,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:20:08',NULL,44),(271,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:23:22',NULL,45),(272,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:28:08',NULL,44),(273,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:31:07',NULL,45),(274,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:34:56',NULL,44),(275,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:37:25',NULL,45),(276,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:41:01',NULL,42),(277,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:50:36',NULL,45),(278,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:51:01',NULL,42),(279,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:07:36',NULL,43),(280,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:09:49',NULL,42),(281,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:12:29',NULL,44),(282,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:19:34',NULL,43),(283,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:20:44',NULL,44),(284,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:33:27',NULL,43),(285,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:44:21',NULL,44),(286,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:45:29',NULL,43),(287,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:46:33',NULL,42),(288,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:54:33',NULL,43),(289,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:14:03',NULL,44),(290,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:16:39',NULL,43),(291,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:27:50',NULL,44),(292,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:29:00',NULL,43),(293,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:17:36',NULL,43),(294,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:35:07',NULL,1),(295,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:35:54',NULL,43),(296,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:38:55',NULL,42),(297,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:57:58',NULL,44),(298,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 15:06:45',NULL,42),(299,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 16:11:59',NULL,43),(300,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 08:55:19',NULL,43),(301,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 09:16:26',NULL,42),(302,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 10:19:01',NULL,42),(303,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 12:35:40',NULL,42),(304,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 13:39:13',NULL,42),(305,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 13:41:12',NULL,42),(306,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 16:33:58',NULL,1),(307,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 18:25:19',NULL,1),(308,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 20:29:17',NULL,1),(309,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 14:00:27',NULL,1),(310,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 15:30:15',NULL,1),(311,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 18:00:40',NULL,1),(312,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 20:59:13',NULL,1);
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

-- Dump completed on 2024-08-18 21:13:43
