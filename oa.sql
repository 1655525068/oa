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
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COMMENT='图纸细化';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_detail_draw`
--

LOCK TABLES `ao_detail_draw` WRITE;
/*!40000 ALTER TABLE `ao_detail_draw` DISABLE KEYS */;
INSERT INTO `ao_detail_draw` VALUES (112,NULL,'LDX-1211-SH-101-B513-TM-Q','/','1116XVBSNTS03','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-7-20','李季',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(113,NULL,'LDX-1211-SH-103-B513-TM-Q','/','1116XVBSNTS03','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-7-20','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(114,NULL,'LDX-VAS-MD-131-B513-TM-Q','/','1116XVASNTS01','通风','D1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-08','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(115,NULL,'LDX-VAS-MD-141-B513-TM-Q','/','1116XVASNTS01','通风','D1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-08','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(116,NULL,'LDX-VAS-MD-151-B513-TM-Q','/','1116XVASNTS01','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-08','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(117,NULL,'LDX-VAS-MD-161-B513-TM-Q','/','1116XVASNTS01','通风','D1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-08','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(118,NULL,'LDX-VAS-MD-231-B513-TM-Q','/','1116XVASNTS06','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-16','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(119,NULL,'LDX-VAS-MD-241-B513-TM-Q','/','1116XVASNTS06','通风','D1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-16','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(120,NULL,'LDX-VAS-MD-251-B513-TM-Q','/','1116XVASNTS06','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-16','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(121,NULL,'LDX-VAS-MD-261-B513-TM-Q','/','1116XVASNTS06','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-16','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(122,NULL,'LDX-VAS-MD-271-B513-TM-Q','/','1116XVASNTS06','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-16','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(123,NULL,'LDX-VAS-MD-341-B513-TM-Q','/','1116XVASNTS22','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(124,NULL,'LDX-VAS-MD-351-B513-TM-Q','/','1116XVASNTS22','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(125,NULL,'LDX-VAS-MD-361-B513-TM-Q','/','1116XVASNTS22','通风','C1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(126,NULL,'LDX-VAS-MD-531-B513-TM-Q','/','1116XVASNTS42','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(127,NULL,'LDX-VAS-MD-542-B513-TM-Q','/','1116XVASNTS42','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(128,NULL,'LDX-VAS-MD-545-B513-TM-Q','/','1116XVASNTS42','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(129,NULL,'LDX-VAS-MD-551-B513-TM-Q','/','1116XVASNTS42','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(130,NULL,'LDX-VAS-MD-561-B513-TM-Q','/','1116XVASNTS42','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(131,NULL,'LDX-1265-SH-102-B513-TM-Q','/','1116XVASNTS49','通风','B1','Y','CFC','通风锚板清单','/','/','/','/','2024-8-18','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ao_draw_type`
--

LOCK TABLES `ao_draw_type` WRITE;
/*!40000 ALTER TABLE `ao_draw_type` DISABLE KEYS */;
INSERT INTO `ao_draw_type` VALUES (1,'电缆托盘装配图'),(2,'供电方案示意图'),(3,'油份浓度仪安装图'),(4,'/'),(9,'IO清单'),(10,'V直流系统接线图'),(11,'安装示意'),(12,'安装详图'),(13,'保温总图'),(14,'报警系统图'),(15,'闭路电视平面图'),(16,'编码清单'),(17,'标准接线图'),(18,'标准图集'),(19,'材料清单'),(20,'超声波液位计安装图'),(21,'尺寸图'),(22,'次托盘及小电气设备布置图'),(23,'弹簧支吊架、恒力支架吊架、阻尼器数据清单'),(24,'导管清册'),(25,'电磁流量计安装图'),(26,'电话系统图'),(27,'电缆表'),(28,'电缆吊支架布置图'),(29,'电缆敷设平面图'),(30,'电缆敷设图'),(31,'电缆管ISO图'),(32,'电缆管布置图'),(33,'电缆管剖面图'),(34,'电缆管图纸'),(35,'电缆管支架布置图'),(36,'电缆管支架图'),(37,'电缆桥架布置图'),(38,'电缆桥架平面布置图'),(39,'电缆桥架平面图'),(40,'电缆桥架支架平面图'),(41,'电缆桥架支架详表'),(42,'电缆桥架支架详图'),(43,'电缆桥组件'),(44,'电缆清册'),(45,'电缆套管平面图'),(46,'电缆托盘布置图'),(47,'电气贯穿件'),(48,'电气规格书'),(49,'电气埋件图'),(50,'电气设备布置示意图'),(51,'电气设备布置图'),(52,'电气设备埋件图'),(53,'电气设备平面布置图'),(54,'电气托盘装配图'),(55,'电气主接线及保护配置图'),(56,'电梯机房层平面图'),(57,'动力配电箱系统图'),(58,'动力平面图'),(59,'端子接线图'),(60,'二次电路图'),(61,'防雷接地图'),(62,'防雷平面图'),(63,'风管布置蓝图'),(64,'风管附件详图'),(65,'风管三维图'),(66,'风管细化材料清单'),(67,'风管细化图'),(68,'风管详图'),(69,'风管轴测图'),(70,'风管装配图'),(71,'风机控制原理图'),(72,'封面'),(73,'浮球磁性液位计安装图'),(74,'负荷计算表'),(75,'盖板'),(76,'供暖蓝图'),(77,'管道焊接附件图'),(78,'管道三维图'),(79,'管道三维图（小管）'),(80,'管道三维图材料清单'),(81,'贯穿件制作图'),(82,'广播系统图'),(83,'火灾自动报警平面图'),(84,'火灾自动报警施工图'),(85,'火灾自动报警系统平面图'),(86,'火灾自动报警系统图'),(87,'技术规格书'),(88,'接地平面图'),(89,'接地系统图'),(90,'接线图'),(91,'警报系统图'),(92,'就地压力表安装图'),(93,'开关柜配置图'),(94,'开口项清单'),(95,'可燃有毒气体报警系统平面布置图'),(96,'控制连接图'),(97,'控制器安装图'),(98,'控制原理图'),(99,'缆清单'),(100,'联合泵房负荷计算表'),(101,'逻辑图'),(102,'模块管道布置图'),(103,'目录'),(104,'配电盘系统图'),(105,'配电箱系统图'),(106,'平面图'),(107,'其它'),(108,'气体灭火二层平面图'),(109,'气体灭火系统图'),(110,'气体灭火一层平面图'),(111,'桥架布置图'),(112,'桥架接地平面图'),(113,'桥架接地图'),(114,'桥架平面图'),(115,'桥架支架图'),(116,'桥架支架详图'),(117,'上游技术规格书'),(118,'上游技术文件'),(119,'设备布置图'),(120,'设备规格书'),(121,'设备清单'),(122,'设备图'),(123,'设备位置图'),(124,'设计说明'),(125,'施工图'),(126,'时钟系统图'),(127,'视频监控系统图'),(128,'数据表'),(129,'数据清单'),(130,'水质在线分析仪安装图'),(131,'通风ISO图'),(132,'通风锚板清单'),(133,'通风系统流程图'),(134,'通风支架布置详图'),(135,'通风支架埋板定位图'),(136,'通风支架清单'),(137,'通风支架索引'),(138,'通风支架图'),(139,'通风支架详图'),(140,'通风轴线布置图'),(141,'通信接地图'),(142,'通信接地系统图'),(143,'通信平面图'),(144,'通信设计说明'),(145,'通信图例'),(146,'通信系统平面图'),(147,'通信系统图'),(148,'图册封面'),(149,'图册目录'),(150,'图例'),(151,'图纸目录'),(152,'托盘布置剖面图'),(153,'托盘布置图'),(154,'屋面防雷保护详图'),(155,'系统单线图'),(156,'系统端接图'),(157,'系统配置图'),(158,'系统图'),(159,'详细功能图'),(160,'消防切非控制原理图'),(161,'压力变送器安装图'),(162,'仪表安装清单'),(163,'仪表安装图'),(164,'仪表布置图'),(165,'仪表管布置图'),(166,'仪表管道布置图'),(167,'仪表管敷设图'),(168,'仪表管线布置图'),(169,'仪表管线敷设图'),(170,'仪表图纸设计说明'),(171,'仪表支架图'),(172,'仪控电缆清单'),(173,'仪控设计说明'),(174,'有线广播、警报系统图'),(175,'有线广播系统图'),(176,'预埋套管图'),(177,'原理图'),(178,'照明配电箱系统图'),(179,'照明平面图'),(180,'照明剖面图'),(181,'照明设备清单'),(182,'支吊架组装图'),(183,'支吊架组装图（小管）'),(184,'支吊架组装图材料清单'),(185,'支架布置图'),(186,'支架清单'),(187,'支架图'),(188,'直流设备间埋件图'),(189,'质量计划'),(190,'主接线及保护配置图'),(191,'综合布线系统图'),(192,'总体布置图');
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
INSERT INTO `ao_profession` VALUES (1,'电气'),(2,'管道'),(3,'其他'),(4,'通风'),(5,'仪控');
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
INSERT INTO `ao_three_book` VALUES (26,NULL,'CR','CR CN23031XXXX0002','关于海水淡化厂房焊接专业相关问题的澄清','A','关闭','','Y','2013-12-10','未分发','N','数字化平台无','数字化平台无','','其它','其他','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(27,NULL,'CR','CR CN230661XXX0001','661子项变压器、盘柜及桥架支吊架预埋件相关问题的澄清','A','关闭','王叶','Y','2013-10-21','未分发','N','LD0-661-E0-001-B513','11160661-DQS01-001','B','电气','其他','朱定意',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(28,NULL,'CR','CR CN230661XXX0001','661子项变压器、盘柜及桥架支吊架预埋件相关问题的澄清','A','关闭','王叶','Y','2013-10-21','未分发','N','LD0-661-PA0-003-B5131','11160661-JZS01-003','A','电气','其他','朱定意',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(29,NULL,'CR','CR CN230661XXX0002','661子项电缆管预埋相关问题的澄清','A','关闭','吴可丽','Y','2013-10-23','未分发','N','LD0-661-JN-003-B513','11160661-DQS01-011','B','电气','其他','朱定意',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(30,NULL,'CR','CR CN230661XXX0002','661子项电缆管预埋相关问题的澄清','A','关闭','吴可丽','Y','2013-10-23','未分发','N','LD0-661-EO-011-B513','11160661-TXS01-020','C','电气','其他','朱定意',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(31,NULL,'CR','CR CN230661XXX0004','661子项电缆管预埋相关问题的澄清','A','关闭','曾可永','Y','2013-10-24','未分发','N','LD0-661-E0Y-001-B513','11160661-DQS01','A','电气','其他','朱定意',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(32,NULL,'CR','CR CN230662XXX0001','关于仓库子项焊接材料选用的澄清','A','关闭','','Y','2013-11-21','未分发','N','数字化平台无','数字化平台无','','其它','其他','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(33,NULL,'CR','CR CN2308034XX0003','关于8034子项焊接无损检测的澄清','A','关闭','','Y','2013-11-27','未分发','N','数字化平台无','数字化平台无','','其它','其他','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(34,NULL,'CR','CR CN230803XXX0002','关于803子项加药装置问题的澄清','A','关闭','','Y','2013-11-07','未分发','N','数字化平台无','数字化平台无','','通风','其他','李季',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(35,NULL,'CR','CR CN230803XXX0005','关于803施工供水站防腐专业相关问题的澄清','A','关闭','','Y','2013-11-27','未分发','N','数字化平台无','数字化平台无','','其它','其他','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(36,NULL,'CR','CR CN230803XXX0006','803子项电缆管预埋相关问题的澄清','A','关闭','曾可永','Y','2013-11-18','未分发','N','LDX-803-F0-003-B404','1116803-DQS01-003','A','电气','其他','朱定意',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),(37,NULL,'CR','CR CN23082XXXX0001','关于CVCA拼装车间吊车相关技术参数的澄清事宜','A','关闭','','Y','2013-11-05','未分发','N','数字化平台无','数字化平台无','','其它','其他','/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=1752 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_role_power_list`
--

LOCK TABLES `aoa_role_power_list` WRITE;
/*!40000 ALTER TABLE `aoa_role_power_list` DISABLE KEYS */;
INSERT INTO `aoa_role_power_list` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,1,5,1),(5,1,8,1),(7,1,10,1),(8,1,11,1),(9,1,12,1),(10,1,13,1),(11,1,14,1),(12,1,15,1),(13,1,16,1),(14,1,17,1),(15,1,18,1),(16,1,19,1),(17,1,20,1),(18,1,21,1),(19,1,22,1),(20,1,23,1),(21,1,24,1),(22,1,25,1),(1536,1,1,2),(1537,0,2,2),(1538,0,3,2),(1539,0,5,2),(1540,1,8,2),(1541,1,10,2),(1542,0,11,2),(1543,0,12,2),(1544,0,13,2),(1545,0,14,2),(1546,0,15,2),(1547,0,16,2),(1548,0,17,2),(1549,0,18,2),(1550,0,19,2),(1551,0,20,2),(1552,0,21,2),(1553,0,22,2),(1554,1,23,2),(1555,1,24,2),(1556,1,25,2),(1557,0,1,3),(1558,0,2,3),(1559,0,3,3),(1560,0,5,3),(1561,1,8,3),(1562,1,10,3),(1563,0,11,3),(1564,0,12,3),(1565,0,13,3),(1566,0,14,3),(1567,0,15,3),(1568,0,16,3),(1569,0,17,3),(1570,0,18,3),(1571,0,19,3),(1572,0,20,3),(1573,0,21,3),(1574,0,22,3),(1575,0,23,3),(1576,1,24,3),(1577,1,25,3),(1578,0,1,4),(1579,0,2,4),(1580,0,3,4),(1581,1,5,4),(1582,1,8,4),(1583,1,10,4),(1584,0,11,4),(1585,0,12,4),(1586,0,13,4),(1587,0,14,4),(1588,0,15,4),(1589,0,16,4),(1590,0,17,4),(1591,0,18,4),(1592,1,19,4),(1593,1,20,4),(1594,1,21,4),(1595,0,22,4),(1596,0,23,4),(1597,1,24,4),(1598,1,25,4),(1620,0,1,5),(1621,0,2,5),(1622,0,3,5),(1623,0,5,5),(1624,1,8,5),(1625,1,10,5),(1626,0,11,5),(1627,0,12,5),(1628,0,13,5),(1629,0,14,5),(1630,0,15,5),(1631,0,16,5),(1632,0,17,5),(1633,0,18,5),(1634,0,19,5),(1635,0,20,5),(1636,0,21,5),(1637,0,22,5),(1638,0,23,5),(1639,1,24,5),(1640,1,25,5),(1641,0,1,6),(1642,0,2,6),(1643,0,3,6),(1644,0,5,6),(1645,1,8,6),(1646,1,10,6),(1647,0,11,6),(1648,0,12,6),(1649,0,13,6),(1650,0,14,6),(1651,0,15,6),(1652,0,16,6),(1653,0,17,6),(1654,0,18,6),(1655,0,19,6),(1656,0,20,6),(1657,0,21,6),(1658,0,22,6),(1659,0,23,6),(1660,1,24,6),(1661,1,25,6),(1662,0,1,7),(1663,0,2,7),(1664,0,3,7),(1665,0,5,7),(1666,1,8,7),(1667,1,10,7),(1668,0,11,7),(1669,0,12,7),(1670,0,13,7),(1671,0,14,7),(1672,0,15,7),(1673,0,16,7),(1674,0,17,7),(1675,0,18,7),(1676,0,19,7),(1677,0,20,7),(1678,0,21,7),(1679,0,22,7),(1680,0,23,7),(1681,1,24,7),(1682,1,25,7),(1683,0,1,8),(1684,0,2,8),(1685,0,3,8),(1686,0,5,8),(1687,1,8,8),(1688,1,10,8),(1689,0,11,8),(1690,0,12,8),(1691,0,13,8),(1692,0,14,8),(1693,0,15,8),(1694,0,16,8),(1695,0,17,8),(1696,0,18,8),(1697,0,19,8),(1698,0,20,8),(1699,0,21,8),(1700,0,22,8),(1701,0,23,8),(1702,1,24,8),(1703,1,25,8),(1704,1,29,1),(1705,1,29,2),(1706,1,29,3),(1707,1,29,4),(1708,1,29,5),(1709,1,29,6),(1710,1,29,7),(1711,1,29,8),(1712,1,30,1),(1713,1,30,2),(1714,1,30,3),(1715,1,30,4),(1716,1,30,5),(1717,1,30,6),(1718,1,30,7),(1719,1,30,8),(1720,1,31,1),(1721,1,31,2),(1722,1,31,3),(1723,1,31,4),(1724,1,31,5),(1725,1,31,6),(1726,1,31,7),(1727,1,31,8),(1728,1,33,1),(1729,1,33,2),(1730,1,33,3),(1731,0,33,4),(1732,1,33,5),(1733,0,33,6),(1734,1,33,7),(1735,0,33,8),(1736,1,34,1),(1737,1,34,2),(1738,0,34,3),(1739,0,34,4),(1740,0,34,5),(1741,0,34,6),(1742,0,34,7),(1743,0,34,8),(1744,1,35,1),(1745,1,35,2),(1746,0,35,3),(1747,0,35,4),(1748,0,35,5),(1749,0,35,6),(1750,0,35,7),(1751,0,35,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_sys_menu`
--

LOCK TABLES `aoa_sys_menu` WRITE;
/*!40000 ALTER TABLE `aoa_sys_menu` DISABLE KEYS */;
INSERT INTO `aoa_sys_menu` VALUES (1,1,NULL,'glyphicon-cog','系统管理','##',0,0),(2,1,NULL,'glyphicon-education','用户管理','#',0,2),(3,1,NULL,'glyphicon-user','角色列表','#',0,3),(5,0,NULL,'glyphicon-hourglass','流程管理','#',0,5),(8,1,NULL,'glyphicon-flag','任务管理','#',0,8),(10,1,NULL,'glyphicon-earphone','通讯录','#',0,13),(11,1,NULL,'glyphicon-record','菜单管理','/testsysmenu',1,1),(12,1,NULL,'glyphicon-record','类型管理','/testsystype',1,0),(13,1,NULL,'glyphicon-record','状态管理','/testsysstatus',1,2),(14,1,NULL,'glyphicon-record','部门管理','/deptmanage',2,1),(15,1,NULL,'glyphicon-record','职位管理','/positionmanage',2,3),(16,1,NULL,'glyphicon-record','用户管理','/usermanage',2,4),(17,1,NULL,'glyphicon-record','在线用户','/morelogrecord',2,2),(18,1,NULL,'glyphicon-record','角色列表','/rolemanage',3,1),(19,0,NULL,'glyphicon-record','我的申请','/flowmanage',0,1),(20,0,NULL,'glyphicon-record','流程审核','/audit',0,2),(21,0,NULL,'glyphicon-record','新建流程','/xinxeng',0,0),(22,1,NULL,'glyphicon-record','账号管理','/accountmanage',7,1),(23,1,NULL,'glyphicon-record','任务管理','/taskmanage',8,1),(24,1,NULL,'glyphicon-record','我的任务','/mytask',8,2),(25,1,NULL,'glyphicon-record','通讯录','/addrmanage',10,1),(29,1,NULL,'glyphicon glyphicon-file','现场设计室','#',0,9),(30,1,NULL,'glyphicon-record','三单一览','/threebookmanage',29,0),(31,1,NULL,'glyphicon-record','细化一览','/detaildrawmanage',29,1),(33,1,NULL,'glyphicon-record','审核管理','/shenqingmanage',8,3),(34,1,NULL,'glyphicon-record','专业管理','/testsysprofession',1,3),(35,1,NULL,'glyphicon-record','图纸类型管理','/testsysdrawtype',1,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_list`
--

LOCK TABLES `aoa_task_list` WRITE;
/*!40000 ALTER TABLE `aoa_task_list` DISABLE KEYS */;
INSERT INTO `aoa_task_list` VALUES (148,NULL,'2024-09-14 18:24:04',0,0,'2024-09-11 18:24:04','2024-09-11 18:24:04','2024-09-11 18:24:04',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-1',2,42,'李季',112,NULL),(149,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-2',2,42,'',113,NULL),(150,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-3',2,42,'',114,NULL),(151,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-4',2,42,'',115,NULL),(152,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-5',2,42,'',116,NULL),(153,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-6',2,42,'',117,NULL),(154,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-7',2,42,'',118,NULL),(155,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-8',2,42,'',119,NULL),(156,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-9',2,42,'',120,NULL),(157,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-10',2,42,'',121,NULL),(158,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-11',2,42,'',122,NULL),(159,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-12',2,42,'',123,NULL),(160,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-13',2,42,'',124,NULL),(161,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-14',2,42,'',125,NULL),(162,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-15',2,42,'',126,NULL),(163,NULL,'2024-09-14 18:24:05',0,0,'2024-09-11 18:24:05','2024-09-11 18:24:05','2024-09-11 18:24:05',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-16',2,42,'',127,NULL),(164,NULL,'2024-09-14 18:24:06',0,0,'2024-09-11 18:24:06','2024-09-11 18:24:06','2024-09-11 18:24:06',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-17',2,42,'',128,NULL),(165,NULL,'2024-09-14 18:24:06',0,0,'2024-09-11 18:24:06','2024-09-11 18:24:06','2024-09-11 18:24:06',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-18',2,42,'',129,NULL),(166,NULL,'2024-09-14 18:24:06',0,0,'2024-09-11 18:24:06','2024-09-11 18:24:06','2024-09-11 18:24:06',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-19',2,42,'',130,NULL),(167,NULL,'2024-09-14 18:24:06',0,0,'2024-09-11 18:24:06','2024-09-11 18:24:06','2024-09-11 18:24:06',5,'@@',NULL,'现场设计室图纸细化管理台账22024/09/11-20',2,42,'',131,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
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
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_task_user`
--

LOCK TABLES `aoa_task_user` WRITE;
/*!40000 ALTER TABLE `aoa_task_user` DISABLE KEYS */;
INSERT INTO `aoa_task_user` VALUES (191,5,148,'李季',43);
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
) ENGINE=InnoDB AUTO_INCREMENT=4921 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_log`
--

LOCK TABLES `aoa_user_log` WRITE;
/*!40000 ALTER TABLE `aoa_user_log` DISABLE KEYS */;
INSERT INTO `aoa_user_log` VALUES (4690,'192.168.2.2','2024-09-07 10:10:44','任务管理','/taskmanage',42),(4691,'192.168.2.2','2024-09-07 10:10:44','任务管理','/taskmanage',42),(4692,'192.168.2.2','2024-09-07 10:25:09','我的任务','/mytask',43),(4693,'192.168.2.2','2024-09-07 10:29:47','审核管理','/shenqingmanage',43),(4694,'192.168.2.2','2024-09-07 10:29:48','我的任务','/mytask',43),(4695,'192.168.2.2','2024-09-07 10:29:50','审核管理','/shenqingmanage',43),(4696,'192.168.2.2','2024-09-07 10:29:50','我的任务','/mytask',43),(4697,'192.168.2.2','2024-09-07 10:30:13','我的任务','/mytask',43),(4698,'192.168.2.2','2024-09-07 10:38:24','审核管理','/shenqingmanage',43),(4699,'192.168.2.2','2024-09-07 10:38:25','我的任务','/mytask',43),(4700,'192.168.2.2','2024-09-07 10:38:26','审核管理','/shenqingmanage',43),(4701,'192.168.2.2','2024-09-07 10:38:27','我的任务','/mytask',43),(4702,'192.168.2.2','2024-09-07 10:38:35','审核管理','/shenqingmanage',43),(4703,'192.168.2.2','2024-09-07 10:38:36','我的任务','/mytask',43),(4704,'192.168.2.2','2024-09-07 11:22:10','我的任务','/mytask',44),(4705,'192.168.2.2','2024-09-07 11:26:52','三单一览','/threebookmanage',44),(4706,'192.168.2.2','2024-09-07 11:27:15','细化一览','/detaildrawmanage',44),(4707,'192.168.2.2','2024-09-08 09:24:01','细化一览','/detaildrawmanage',43),(4708,'192.168.2.2','2024-09-08 09:24:03','我的任务','/mytask',43),(4709,'192.168.2.2','2024-09-08 09:24:40','审核管理','/shenqingmanage',43),(4710,'192.168.2.2','2024-09-08 09:24:42','我的任务','/mytask',43),(4711,'192.168.2.2','2024-09-08 09:25:39','类型管理','/testsystype',1),(4712,'192.168.2.2','2024-09-08 09:25:47','任务管理','/taskmanage',1),(4713,'192.168.2.2','2024-09-08 09:25:48','我的任务','/mytask',1),(4714,'192.168.2.2','2024-09-08 10:58:43','我的任务','/mytask',42),(4715,'192.168.2.2','2024-09-08 10:58:44','任务管理','/taskmanage',42),(4716,'192.168.2.2','2024-09-08 11:05:52','我的任务','/mytask',42),(4717,'192.168.2.2','2024-09-08 11:05:53','任务管理','/taskmanage',42),(4718,'192.168.2.2','2024-09-08 12:25:51','我的任务','/mytask',42),(4719,'192.168.2.2','2024-09-08 12:25:54','任务管理','/taskmanage',42),(4720,'192.168.2.2','2024-09-08 12:25:54','我的任务','/mytask',42),(4721,'192.168.2.2','2024-09-08 12:26:29','我的任务','/mytask',42),(4722,'192.168.2.2','2024-09-08 12:26:30','任务管理','/taskmanage',42),(4723,'192.168.2.2','2024-09-08 12:26:30','我的任务','/mytask',42),(4724,'192.168.2.2','2024-09-08 12:26:34','我的任务','/mytask',42),(4725,'192.168.2.2','2024-09-08 12:26:35','任务管理','/taskmanage',42),(4726,'192.168.2.2','2024-09-08 12:26:35','我的任务','/mytask',42),(4727,'192.168.2.2','2024-09-08 12:26:46','类型管理','/testsystype',1),(4728,'192.168.2.2','2024-09-08 12:26:47','状态管理','/testsysstatus',1),(4729,'192.168.2.2','2024-09-08 12:26:49','部门管理','/deptmanage',1),(4730,'192.168.2.2','2024-09-08 12:26:50','用户管理','/usermanage',1),(4731,'192.168.2.2','2024-09-08 12:26:51','角色列表','/rolemanage',1),(4732,'192.168.2.2','2024-09-08 12:27:19','审核管理','/shenqingmanage',42),(4733,'192.168.2.2','2024-09-08 12:27:44','我的任务','/mytask',42),(4734,'192.168.2.2','2024-09-08 12:27:44','任务管理','/taskmanage',42),(4735,'192.168.2.2','2024-09-08 12:27:45','审核管理','/shenqingmanage',42),(4736,'192.168.2.2','2024-09-08 12:29:21','我的任务','/mytask',44),(4737,'192.168.2.2','2024-09-08 12:32:04','任务管理','/taskmanage',42),(4738,'192.168.2.2','2024-09-08 12:32:06','审核管理','/shenqingmanage',42),(4739,'192.168.2.2','2024-09-08 12:32:07','任务管理','/taskmanage',42),(4740,'192.168.2.2','2024-09-08 12:32:08','审核管理','/shenqingmanage',42),(4741,'192.168.2.2','2024-09-08 12:32:30','任务管理','/taskmanage',42),(4742,'192.168.2.2','2024-09-08 12:32:59','审核管理','/shenqingmanage',42),(4743,'192.168.2.2','2024-09-08 12:33:58','我的任务','/mytask',42),(4744,'192.168.2.2','2024-09-08 12:34:46','任务管理','/taskmanage',42),(4745,'192.168.2.2','2024-09-08 12:36:28','审核管理','/shenqingmanage',42),(4746,'192.168.2.2','2024-09-08 12:37:09','我的任务','/mytask',42),(4747,'192.168.2.2','2024-09-08 12:37:12','任务管理','/taskmanage',42),(4748,'192.168.2.2','2024-09-08 12:38:42','审核管理','/shenqingmanage',42),(4749,'192.168.2.2','2024-09-08 12:38:43','任务管理','/taskmanage',42),(4750,'192.168.2.2','2024-09-08 12:39:38','审核管理','/shenqingmanage',42),(4751,'192.168.2.2','2024-09-08 12:39:39','我的任务','/mytask',42),(4752,'192.168.2.2','2024-09-08 12:39:44','任务管理','/taskmanage',42),(4753,'192.168.2.2','2024-09-08 12:41:13','我的任务','/mytask',42),(4754,'192.168.2.2','2024-09-08 12:41:13','审核管理','/shenqingmanage',42),(4755,'192.168.2.2','2024-09-08 12:41:14','任务管理','/taskmanage',42),(4756,'192.168.2.2','2024-09-08 12:47:21','我的任务','/mytask',42),(4757,'192.168.2.2','2024-09-08 12:47:21','任务管理','/taskmanage',42),(4758,'192.168.2.2','2024-09-08 12:47:22','任务管理','/taskmanage',42),(4759,'192.168.2.2','2024-09-08 12:47:23','我的任务','/mytask',42),(4760,'192.168.2.2','2024-09-08 12:47:23','任务管理','/taskmanage',42),(4761,'192.168.2.2','2024-09-08 12:47:24','任务管理','/taskmanage',42),(4762,'192.168.2.2','2024-09-08 12:47:53','我的任务','/mytask',42),(4763,'192.168.2.2','2024-09-08 12:47:54','审核管理','/shenqingmanage',42),(4764,'192.168.2.2','2024-09-08 12:47:55','我的任务','/mytask',42),(4765,'192.168.2.2','2024-09-08 12:47:56','任务管理','/taskmanage',42),(4766,'192.168.2.2','2024-09-08 12:47:56','我的任务','/mytask',42),(4767,'192.168.2.2','2024-09-10 20:59:57','类型管理','/testsystype',1),(4768,'192.168.2.2','2024-09-10 20:59:59','菜单管理','/testsysmenu',1),(4769,'192.168.2.2','2024-09-10 21:00:01','状态管理','/testsysstatus',1),(4770,'192.168.2.2','2024-09-10 21:00:06','类型管理','/testsystype',1),(4771,'192.168.2.2','2024-09-10 21:00:16','部门管理','/deptmanage',1),(4772,'192.168.2.2','2024-09-10 21:00:17','职位管理','/positionmanage',1),(4773,'192.168.2.2','2024-09-10 21:00:17','在线用户','/morelogrecord',1),(4774,'192.168.2.2','2024-09-10 21:00:19','用户管理','/usermanage',1),(4775,'192.168.2.2','2024-09-10 21:00:20','部门管理','/deptmanage',1),(4776,'192.168.2.2','2024-09-10 21:00:21','在线用户','/morelogrecord',1),(4777,'192.168.2.2','2024-09-10 21:00:23','角色列表','/rolemanage',1),(4778,'192.168.2.2','2024-09-10 21:00:32','职位管理','/positionmanage',1),(4779,'192.168.2.2','2024-09-10 21:06:03','任务管理','/taskmanage',1),(4780,'192.168.2.2','2024-09-10 21:19:32','类型管理','/testsystype',1),(4781,'192.168.2.2','2024-09-10 21:19:33','菜单管理','/testsysmenu',1),(4782,'192.168.2.2','2024-09-10 21:20:07','类型管理','/testsystype',1),(4783,'192.168.2.2','2024-09-10 21:20:08','菜单管理','/testsysmenu',1),(4784,'192.168.2.2','2024-09-10 21:20:39','专业管理','/testsysprofession',1),(4785,'192.168.2.2','2024-09-10 21:20:51','类型管理','/testsystype',1),(4786,'192.168.2.2','2024-09-10 21:20:53','专业管理','/testsysprofession',1),(4787,'192.168.2.2','2024-09-10 21:20:53','类型管理','/testsystype',1),(4788,'192.168.2.2','2024-09-10 21:20:54','菜单管理','/testsysmenu',1),(4789,'192.168.2.2','2024-09-10 21:21:15','专业管理','/testsysprofession',1),(4790,'192.168.2.2','2024-09-10 21:22:12','任务管理','/taskmanage',1),(4791,'192.168.2.2','2024-09-10 21:22:22','专业管理','/testsysprofession',1),(4792,'192.168.2.2','2024-09-10 21:22:29','任务管理','/taskmanage',1),(4793,'192.168.2.2','2024-09-10 21:22:35','专业管理','/testsysprofession',1),(4794,'192.168.2.2','2024-09-10 21:43:59','状态管理','/testsysstatus',1),(4795,'192.168.2.2','2024-09-10 21:44:00','菜单管理','/testsysmenu',1),(4796,'192.168.2.2','2024-09-10 21:45:21','图纸类型','/testsysdrawtype',1),(4797,'192.168.2.2','2024-09-10 21:51:38','专业管理','/testsysprofession',1),(4798,'192.168.2.2','2024-09-10 21:51:56','图纸类型','/testsysdrawtype',1),(4799,'192.168.2.2','2024-09-10 21:52:12','专业管理','/testsysprofession',1),(4800,'192.168.2.2','2024-09-10 21:52:29','图纸类型','/testsysdrawtype',1),(4801,'192.168.2.2','2024-09-10 21:53:17','专业管理','/testsysprofession',1),(4802,'192.168.2.2','2024-09-10 21:53:18','图纸类型','/testsysdrawtype',1),(4803,'192.168.2.2','2024-09-10 21:54:11','专业管理','/testsysprofession',1),(4804,'192.168.2.2','2024-09-10 21:54:29','图纸类型','/testsysdrawtype',1),(4805,'192.168.2.2','2024-09-10 22:06:21','专业管理','/testsysprofession',1),(4806,'192.168.2.2','2024-09-10 22:06:25','图纸类型','/testsysdrawtype',1),(4807,'192.168.2.2','2024-09-10 22:15:12','专业管理','/testsysprofession',1),(4808,'192.168.2.2','2024-09-10 22:16:34','图纸类型','/testsysdrawtype',1),(4809,'192.168.2.2','2024-09-10 22:25:29','任务管理','/taskmanage',1),(4810,'192.168.2.2','2024-09-10 22:28:02','图纸类型','/testsysdrawtype',1),(4811,'192.168.2.2','2024-09-10 22:28:17','任务管理','/taskmanage',1),(4812,'192.168.2.2','2024-09-10 22:47:39','细化一览','/detaildrawmanage',43),(4813,'192.168.2.2','2024-09-10 22:47:41','三单一览','/threebookmanage',43),(4814,'192.168.2.2','2024-09-10 22:47:53','细化一览','/detaildrawmanage',43),(4815,'192.168.2.2','2024-09-10 22:49:48','角色列表','/rolemanage',1),(4816,'192.168.2.2','2024-09-10 22:50:05','菜单管理','/testsysmenu',1),(4817,'192.168.2.2','2024-09-10 22:50:33','角色列表','/rolemanage',1),(4818,'192.168.2.2','2024-09-10 22:50:52','专业管理','/testsysprofession',42),(4819,'192.168.2.2','2024-09-10 22:50:53','图纸类型','/testsysdrawtype',42),(4820,'192.168.2.2','2024-09-10 22:50:54','专业管理','/testsysprofession',42),(4821,'192.168.2.2','2024-09-10 22:50:57','图纸类型','/testsysdrawtype',42),(4822,'192.168.2.2','2024-09-10 22:51:02','专业管理','/testsysprofession',42),(4823,'192.168.2.2','2024-09-10 22:51:03','图纸类型','/testsysdrawtype',42),(4824,'192.168.2.2','2024-09-10 22:51:04','专业管理','/testsysprofession',42),(4825,'192.168.2.2','2024-09-10 22:51:04','图纸类型','/testsysdrawtype',42),(4826,'192.168.2.2','2024-09-10 22:51:05','图纸类型','/testsysdrawtype',42),(4827,'192.168.2.2','2024-09-10 22:51:06','专业管理','/testsysprofession',42),(4828,'192.168.2.2','2024-09-10 22:51:06','图纸类型','/testsysdrawtype',42),(4829,'192.168.2.2','2024-09-10 22:51:10','图纸类型','/testsysdrawtype',42),(4830,'192.168.2.2','2024-09-10 22:51:14','专业管理','/testsysprofession',42),(4831,'192.168.2.2','2024-09-10 22:51:14','图纸类型','/testsysdrawtype',42),(4832,'192.168.2.2','2024-09-10 22:51:17','图纸类型','/testsysdrawtype',42),(4833,'192.168.2.2','2024-09-10 22:51:36','类型管理','/testsystype',1),(4834,'192.168.2.2','2024-09-10 22:51:37','菜单管理','/testsysmenu',1),(4835,'192.168.2.2','2024-09-10 22:51:38','状态管理','/testsysstatus',1),(4836,'192.168.2.2','2024-09-10 22:51:41','菜单管理','/testsysmenu',1),(4837,'192.168.2.2','2024-09-10 22:52:06','专业管理','/testsysprofession',1),(4838,'192.168.2.2','2024-09-10 22:52:07','图纸类型管理','/testsysdrawtype',1),(4839,'192.168.2.2','2024-09-10 22:52:25','专业管理','/testsysprofession',42),(4840,'192.168.2.2','2024-09-10 22:52:27','图纸类型管理','/testsysdrawtype',42),(4841,'192.168.2.2','2024-09-10 22:52:28','专业管理','/testsysprofession',42),(4842,'192.168.2.2','2024-09-10 22:52:29','图纸类型管理','/testsysdrawtype',42),(4843,'192.168.2.2','2024-09-10 22:52:29','专业管理','/testsysprofession',42),(4844,'192.168.2.2','2024-09-10 22:52:30','专业管理','/testsysprofession',42),(4845,'192.168.2.2','2024-09-10 22:52:30','图纸类型管理','/testsysdrawtype',42),(4846,'192.168.2.2','2024-09-10 22:52:34','图纸类型管理','/testsysdrawtype',42),(4847,'192.168.2.2','2024-09-10 22:55:07','专业管理','/testsysprofession',42),(4848,'192.168.2.2','2024-09-10 22:55:08','任务管理','/taskmanage',42),(4849,'192.168.2.2','2024-09-10 22:55:10','我的任务','/mytask',42),(4850,'192.168.2.2','2024-09-10 22:55:11','任务管理','/taskmanage',42),(4851,'192.168.2.2','2024-09-10 22:55:14','审核管理','/shenqingmanage',42),(4852,'192.168.2.2','2024-09-10 22:55:15','细化一览','/detaildrawmanage',42),(4853,'192.168.2.2','2024-09-10 22:55:16','三单一览','/threebookmanage',42),(4854,'192.168.2.2','2024-09-10 22:55:18','细化一览','/detaildrawmanage',42),(4855,'192.168.2.2','2024-09-10 22:55:20','通讯录','/addrmanage',42),(4856,'192.168.2.2','2024-09-10 23:01:43','任务管理','/taskmanage',42),(4857,'192.168.2.2','2024-09-10 23:01:45','我的任务','/mytask',42),(4858,'192.168.2.2','2024-09-10 23:01:47','任务管理','/taskmanage',42),(4859,'192.168.2.2','2024-09-10 23:02:06','我的任务','/mytask',43),(4860,'192.168.2.2','2024-09-11 09:11:36','专业管理','/testsysprofession',42),(4861,'192.168.2.2','2024-09-11 09:11:37','图纸类型管理','/testsysdrawtype',42),(4862,'192.168.2.2','2024-09-11 09:11:39','任务管理','/taskmanage',42),(4863,'192.168.2.2','2024-09-11 09:11:41','三单一览','/threebookmanage',42),(4864,'192.168.2.2','2024-09-11 09:11:48','细化一览','/detaildrawmanage',42),(4865,'192.168.2.2','2024-09-11 09:12:23','三单一览','/threebookmanage',42),(4866,'192.168.2.2','2024-09-11 09:15:11','任务管理','/taskmanage',42),(4867,'192.168.2.2','2024-09-11 10:28:42','专业管理','/testsysprofession',42),(4868,'192.168.2.2','2024-09-11 10:30:50','三单一览','/threebookmanage',42),(4869,'192.168.2.2','2024-09-11 13:00:10','专业管理','/testsysprofession',42),(4870,'192.168.2.2','2024-09-11 13:00:12','三单一览','/threebookmanage',42),(4871,'192.168.2.2','2024-09-11 13:02:29','细化一览','/detaildrawmanage',42),(4872,'192.168.2.2','2024-09-11 13:02:30','三单一览','/threebookmanage',42),(4873,'192.168.2.2','2024-09-11 14:54:33','细化一览','/detaildrawmanage',42),(4874,'192.168.2.2','2024-09-11 14:54:38','三单一览','/threebookmanage',42),(4875,'192.168.2.2','2024-09-11 14:57:19','细化一览','/detaildrawmanage',42),(4876,'192.168.2.2','2024-09-11 14:57:43','任务管理','/taskmanage',42),(4877,'192.168.2.2','2024-09-11 14:58:01','我的任务','/mytask',42),(4878,'192.168.2.2','2024-09-11 14:58:02','任务管理','/taskmanage',42),(4879,'192.168.2.2','2024-09-11 14:58:12','细化一览','/detaildrawmanage',42),(4880,'192.168.2.2','2024-09-11 14:58:16','三单一览','/threebookmanage',42),(4881,'192.168.2.2','2024-09-11 14:58:18','细化一览','/detaildrawmanage',42),(4882,'192.168.2.2','2024-09-11 15:01:37','三单一览','/threebookmanage',42),(4883,'192.168.2.2','2024-09-11 15:10:24','细化一览','/detaildrawmanage',42),(4884,'192.168.2.2','2024-09-11 15:10:25','三单一览','/threebookmanage',42),(4885,'192.168.2.2','2024-09-11 15:34:44','细化一览','/detaildrawmanage',42),(4886,'192.168.2.2','2024-09-11 15:34:50','任务管理','/taskmanage',42),(4887,'192.168.2.2','2024-09-11 15:41:51','三单一览','/threebookmanage',42),(4888,'192.168.2.2','2024-09-11 15:41:51','细化一览','/detaildrawmanage',42),(4889,'192.168.2.2','2024-09-11 15:41:57','任务管理','/taskmanage',42),(4890,'192.168.2.2','2024-09-11 15:44:09','细化一览','/detaildrawmanage',42),(4891,'192.168.2.2','2024-09-11 15:44:14','任务管理','/taskmanage',42),(4892,'192.168.2.2','2024-09-11 15:45:17','细化一览','/detaildrawmanage',42),(4893,'192.168.2.2','2024-09-11 15:52:08','任务管理','/taskmanage',42),(4894,'192.168.2.2','2024-09-11 15:59:10','细化一览','/detaildrawmanage',42),(4895,'192.168.2.2','2024-09-11 15:59:17','任务管理','/taskmanage',42),(4896,'192.168.2.2','2024-09-11 16:02:16','三单一览','/threebookmanage',42),(4897,'192.168.2.2','2024-09-11 16:02:18','细化一览','/detaildrawmanage',42),(4898,'192.168.2.2','2024-09-11 16:08:16','三单一览','/threebookmanage',42),(4899,'192.168.2.2','2024-09-11 16:08:20','细化一览','/detaildrawmanage',42),(4900,'192.168.2.2','2024-09-11 16:11:48','三单一览','/threebookmanage',42),(4901,'192.168.2.2','2024-09-11 16:12:30','细化一览','/detaildrawmanage',42),(4902,'192.168.2.2','2024-09-11 16:15:10','三单一览','/threebookmanage',42),(4903,'192.168.2.2','2024-09-11 16:15:22','细化一览','/detaildrawmanage',42),(4904,'192.168.2.2','2024-09-11 16:36:12','任务管理','/taskmanage',42),(4905,'192.168.2.2','2024-09-11 16:36:48','细化一览','/detaildrawmanage',42),(4906,'192.168.2.2','2024-09-11 16:36:58','三单一览','/threebookmanage',42),(4907,'192.168.2.2','2024-09-11 18:03:41','任务管理','/taskmanage',42),(4908,'192.168.2.2','2024-09-11 18:12:07','细化一览','/detaildrawmanage',42),(4909,'192.168.2.2','2024-09-11 18:12:28','三单一览','/threebookmanage',42),(4910,'192.168.2.2','2024-09-11 18:12:37','任务管理','/taskmanage',42),(4911,'192.168.2.2','2024-09-11 18:12:49','三单一览','/threebookmanage',42),(4912,'192.168.2.2','2024-09-11 18:15:20','细化一览','/detaildrawmanage',42),(4913,'192.168.2.2','2024-09-11 18:15:21','三单一览','/threebookmanage',42),(4914,'192.168.2.2','2024-09-11 18:15:24','任务管理','/taskmanage',42),(4915,'192.168.2.2','2024-09-11 18:15:28','细化一览','/detaildrawmanage',42),(4916,'192.168.2.2','2024-09-11 18:15:30','三单一览','/threebookmanage',42),(4917,'192.168.2.2','2024-09-11 18:15:32','任务管理','/taskmanage',42),(4918,'192.168.2.2','2024-09-11 18:17:37','三单一览','/threebookmanage',42),(4919,'192.168.2.2','2024-09-11 18:17:39','细化一览','/detaildrawmanage',42),(4920,'192.168.2.2','2024-09-11 18:20:03','任务管理','/taskmanage',42);
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
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aoa_user_login_record`
--

LOCK TABLES `aoa_user_login_record` WRITE;
/*!40000 ALTER TABLE `aoa_user_login_record` DISABLE KEYS */;
INSERT INTO `aoa_user_login_record` VALUES (152,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 10:26:02',NULL,1),(153,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 11:25:24',NULL,43),(154,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 14:02:17',NULL,43),(155,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 14:21:56',NULL,1),(156,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 15:28:03',NULL,1),(157,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 15:57:25',NULL,1),(158,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:37:16',NULL,1),(159,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:39:50',NULL,44),(160,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 17:45:38',NULL,45),(161,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:10:07',NULL,45),(162,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:12:22',NULL,43),(163,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:15:43',NULL,44),(164,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:16:01',NULL,1),(165,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-06 18:58:19',NULL,44),(166,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:10:02',NULL,1),(167,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:42:04',NULL,43),(168,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:42:39',NULL,1),(169,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 12:44:19',NULL,42),(170,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 13:17:10',NULL,1),(171,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 13:20:11',NULL,43),(172,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:07:21',NULL,1),(173,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:08:04',NULL,43),(174,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:11:56',NULL,1),(175,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 14:30:56',NULL,43),(176,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 16:37:47',NULL,43),(177,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-07 19:49:38',NULL,43),(178,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 06:40:29',NULL,43),(179,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 07:32:50',NULL,1),(180,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 08:24:08',NULL,42),(181,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 08:30:14',NULL,43),(182,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 11:48:48',NULL,42),(183,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 13:13:10',NULL,42),(184,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 13:13:35',NULL,43),(185,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:06:55',NULL,43),(186,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:14:31',NULL,1),(187,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-08 17:44:21',NULL,1),(188,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:58:53',NULL,43),(189,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:12',NULL,1),(190,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:40',NULL,44),(191,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 08:59:55',NULL,42),(192,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 09:00:11',NULL,1),(193,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:17:08',NULL,43),(194,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:24:49',NULL,1),(195,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:25:34',NULL,42),(196,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:26:49',NULL,43),(197,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:54:33',NULL,42),(198,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 10:59:20',NULL,43),(199,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 11:36:15',NULL,42),(200,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 12:35:48',NULL,42),(201,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:39:13',NULL,42),(202,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:47:01',NULL,43),(203,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:49:17',NULL,42),(204,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-09 13:50:27',NULL,43),(205,'Chrome Mobile/127.0.6533.107','192.168.2.2','2024-08-10 06:53:17',NULL,42),(206,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 08:47:34',NULL,43),(207,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:11:09',NULL,43),(208,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:31:31',NULL,44),(209,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:32:08',NULL,1),(210,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 09:40:54',NULL,43),(211,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:08:28',NULL,44),(212,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:10:44',NULL,43),(213,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-10 10:20:11',NULL,44),(214,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:18:15',NULL,43),(215,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:44:18',NULL,44),(216,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:46:44',NULL,43),(217,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 05:59:39',NULL,43),(218,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:32:05',NULL,42),(219,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:38:07',NULL,43),(220,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:41:31',NULL,42),(221,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:43:15',NULL,43),(222,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:48:07',NULL,42),(223,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:50:37',NULL,43),(224,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 07:57:59',NULL,43),(225,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:01:31',NULL,42),(226,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:07:29',NULL,43),(227,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:07:57',NULL,42),(228,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:13:08',NULL,42),(229,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:19:34',NULL,42),(230,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:24:16',NULL,43),(231,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 08:24:37',NULL,44),(232,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 09:39:35',NULL,43),(233,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 09:49:34',NULL,44),(234,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 10:37:33',NULL,43),(235,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:13:44',NULL,42),(236,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:15:16',NULL,44),(237,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:15:48',NULL,42),(238,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:17:53',NULL,44),(239,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:28:50',NULL,42),(240,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:29:43',NULL,44),(241,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:32:49',NULL,42),(242,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:35:08',NULL,44),(243,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:51:27',NULL,43),(244,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:53:40',NULL,45),(245,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 11:56:27',NULL,42),(246,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:00:17',NULL,45),(247,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:00:33',NULL,44),(248,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:01:31',NULL,45),(249,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:03:34',NULL,44),(250,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:10:49',NULL,42),(251,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:11:48',NULL,44),(252,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:12:17',NULL,42),(253,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:13:26',NULL,44),(254,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:21:22',NULL,44),(255,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:23:23',NULL,44),(256,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:44:03',NULL,45),(257,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-11 12:44:44',NULL,43),(258,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:04:57',NULL,1),(259,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:08:06',NULL,42),(260,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:11:36',NULL,42),(261,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:12:58',NULL,42),(262,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:14:40',NULL,42),(263,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:20:55',NULL,42),(264,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:34:21',NULL,46),(265,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 08:38:40',NULL,47),(266,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:25:11',NULL,44),(267,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:37:51',NULL,42),(268,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-12 09:39:33',NULL,43),(269,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:13:20',NULL,42),(270,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:20:08',NULL,44),(271,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:23:22',NULL,45),(272,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:28:08',NULL,44),(273,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:31:07',NULL,45),(274,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:34:56',NULL,44),(275,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:37:25',NULL,45),(276,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:41:01',NULL,42),(277,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:50:36',NULL,45),(278,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 08:51:01',NULL,42),(279,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:07:36',NULL,43),(280,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:09:49',NULL,42),(281,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:12:29',NULL,44),(282,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:19:34',NULL,43),(283,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:20:44',NULL,44),(284,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:33:27',NULL,43),(285,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:44:21',NULL,44),(286,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:45:29',NULL,43),(287,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:46:33',NULL,42),(288,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 09:54:33',NULL,43),(289,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:14:03',NULL,44),(290,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:16:39',NULL,43),(291,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:27:50',NULL,44),(292,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 10:29:00',NULL,43),(293,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:17:36',NULL,43),(294,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:35:07',NULL,1),(295,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:35:54',NULL,43),(296,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:38:55',NULL,42),(297,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 11:57:58',NULL,44),(298,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 15:06:45',NULL,42),(299,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-13 16:11:59',NULL,43),(300,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 08:55:19',NULL,43),(301,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 09:16:26',NULL,42),(302,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 10:19:01',NULL,42),(303,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 12:35:40',NULL,42),(304,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 13:39:13',NULL,42),(305,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 13:41:12',NULL,42),(306,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 16:33:58',NULL,1),(307,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 18:25:19',NULL,1),(308,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-15 20:29:17',NULL,1),(309,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 14:00:27',NULL,1),(310,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 15:30:15',NULL,1),(311,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 18:00:40',NULL,1),(312,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-18 20:59:13',NULL,1),(313,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 08:47:35',NULL,1),(314,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 09:18:42',NULL,43),(315,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 09:26:21',NULL,1),(316,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 09:49:05',NULL,44),(317,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:01:58',NULL,1),(318,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:19:39',NULL,1),(319,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:23:26',NULL,43),(320,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:35:10',NULL,42),(321,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:35:25',NULL,43),(322,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:36:36',NULL,1),(323,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-19 10:46:05',NULL,43),(324,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 09:00:56',NULL,43),(325,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 10:10:34',NULL,43),(326,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 11:48:23',NULL,1),(327,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 16:44:13',NULL,1),(328,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-20 17:39:42',NULL,1),(329,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 08:04:39',NULL,1),(330,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 10:34:48',NULL,1),(331,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 11:37:52',NULL,1),(332,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 12:34:40',NULL,1),(333,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 12:47:32',NULL,1),(334,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 14:57:05',NULL,43),(335,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 15:19:31',NULL,1),(336,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 15:32:22',NULL,43),(337,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 15:33:00',NULL,1),(338,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:01:06',NULL,1),(339,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:01:44',NULL,42),(340,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:09:41',NULL,1),(341,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:24:21',NULL,46),(342,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:46:31',NULL,1),(343,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:49:36',NULL,46),(344,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:50:04',NULL,1),(345,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:53:18',NULL,48),(346,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 16:55:00',NULL,1),(347,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:14:08',NULL,47),(348,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:14:39',NULL,44),(349,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:15:51',NULL,1),(350,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 17:38:49',NULL,43),(351,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:24:55',NULL,1),(352,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:26:38',NULL,43),(353,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:27:13',NULL,1),(354,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:28:25',NULL,43),(355,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:31:46',NULL,1),(356,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:36:39',NULL,43),(357,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:54:08',NULL,1),(358,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 18:58:57',NULL,43),(359,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:00:41',NULL,1),(360,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:02:56',NULL,43),(361,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:21:19',NULL,1),(362,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-21 19:22:14',NULL,43),(363,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 09:58:37',NULL,1),(364,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 10:52:03',NULL,1),(365,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 11:57:27',NULL,1),(366,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 15:00:52',NULL,1),(367,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 16:45:03',NULL,1),(368,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 18:23:46',NULL,1),(369,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 19:27:58',NULL,1),(370,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 20:37:01',NULL,1),(371,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 20:43:46',NULL,1),(372,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 21:24:28',NULL,1),(373,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-22 23:52:31',NULL,1),(374,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 09:21:12',NULL,1),(375,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 09:30:08',NULL,44),(376,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:32:28',NULL,1),(377,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:32:45',NULL,44),(378,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:35:13',NULL,44),(379,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:36:02',NULL,1),(380,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:39:14',NULL,1),(381,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:40:00',NULL,1),(382,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:40:59',NULL,44),(383,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:42:23',NULL,1),(384,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:42:54',NULL,44),(385,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:43:44',NULL,1),(386,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:46:32',NULL,1),(387,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:46:45',NULL,44),(388,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:47:40',NULL,1),(389,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:48:08',NULL,44),(390,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:49:12',NULL,46),(391,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:49:44',NULL,43),(392,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:52:46',NULL,43),(393,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:53:37',NULL,1),(394,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 10:57:58',NULL,1),(395,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:07:37',NULL,43),(396,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:15:19',NULL,1),(397,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:15:41',NULL,43),(398,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:23:13',NULL,43),(399,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:23:32',NULL,47),(400,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:52:55',NULL,1),(401,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:53:33',NULL,43),(402,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 11:55:41',NULL,1),(403,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:09:22',NULL,43),(404,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:30:02',NULL,43),(405,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:30:21',NULL,1),(406,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:44:24',NULL,43),(407,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:46:20',NULL,43),(408,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:47:06',NULL,1),(409,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 12:47:41',NULL,1),(410,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 13:31:30',NULL,1),(411,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 13:55:24',NULL,1),(412,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 14:06:15',NULL,1),(413,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-23 22:34:46',NULL,1),(414,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 06:32:10',NULL,1),(415,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 07:48:40',NULL,1),(416,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 07:50:52',NULL,1),(417,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-24 07:54:22',NULL,1),(418,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:25:15',NULL,1),(419,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:37:21',NULL,1),(420,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:39:38',NULL,44),(421,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:42:00',NULL,43),(422,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:42:30',NULL,1),(423,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:45:23',NULL,44),(424,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:46:00',NULL,1),(425,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:46:29',NULL,44),(426,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-24 23:48:32',NULL,1),(427,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:46:05',NULL,1),(428,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:50:02',NULL,1),(429,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:54:50',NULL,1),(430,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 07:58:57',NULL,1),(431,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:03:12',NULL,1),(432,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:04:14',NULL,1),(433,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:05:30',NULL,44),(434,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:07:39',NULL,44),(435,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:16:23',NULL,44),(436,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 08:26:24',NULL,1),(437,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:38:54',NULL,1),(438,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:41:18',NULL,42),(439,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:41:55',NULL,1),(440,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:43:03',NULL,42),(441,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:50:01',NULL,43),(442,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:51:48',NULL,44),(443,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:59:20',NULL,43),(444,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 08:59:46',NULL,43),(445,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 09:00:00',NULL,44),(446,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:49:14',NULL,1),(447,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:50:25',NULL,42),(448,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:50:42',NULL,44),(449,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 21:55:14',NULL,45),(450,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 22:03:39',NULL,1),(451,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 22:03:58',NULL,42),(452,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-25 22:05:23',NULL,43),(453,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-25 22:43:47',NULL,1),(454,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-26 15:48:30',NULL,1),(455,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-26 15:49:24',NULL,43),(456,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-26 15:50:11',NULL,44),(457,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-26 19:27:38',NULL,44),(458,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 07:13:25',NULL,43),(459,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 07:13:48',NULL,1),(460,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 07:15:36',NULL,43),(461,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 12:53:39',NULL,43),(462,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 14:31:24',NULL,44),(463,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 14:32:10',NULL,43),(464,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:07:01',NULL,43),(465,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:17:09',NULL,1),(466,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:17:31',NULL,42),(467,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:18:08',NULL,1),(468,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:18:35',NULL,42),(469,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:19:58',NULL,43),(470,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 16:20:38',NULL,44),(471,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:02:32',NULL,1),(472,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:05:27',NULL,43),(473,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:05:42',NULL,1),(474,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:10:17',NULL,1),(475,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 17:46:50',NULL,43),(476,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 18:37:19',NULL,42),(477,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 18:49:31',NULL,44),(478,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:02:38',NULL,44),(479,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:11:12',NULL,43),(480,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:19:07',NULL,44),(481,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:23:11',NULL,43),(482,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:23:27',NULL,44),(483,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 19:24:24',NULL,42),(484,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-27 20:36:25',NULL,42),(485,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 08:15:28',NULL,42),(486,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:06:40',NULL,1),(487,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:07:23',NULL,42),(488,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:13:02',NULL,43),(489,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:18:26',NULL,44),(490,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 09:21:05',NULL,43),(491,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 19:03:27',NULL,43),(492,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 19:05:19',NULL,1),(493,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 19:05:50',NULL,42),(494,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 19:12:08',NULL,1),(495,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:22:15',NULL,44),(496,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 20:34:00',NULL,42),(497,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 20:34:14',NULL,1),(498,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:34:40',NULL,43),(499,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:35:16',NULL,44),(500,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-28 20:47:08',NULL,1),(501,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:48:23',NULL,43),(502,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:49:00',NULL,44),(503,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:59:07',NULL,43),(504,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 20:59:55',NULL,44),(505,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:00:21',NULL,43),(506,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:01:06',NULL,44),(507,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:02:36',NULL,43),(508,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:03:12',NULL,44),(509,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:08:49',NULL,43),(510,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:09:16',NULL,44),(511,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-28 21:17:29',NULL,43),(512,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:16:15',NULL,1),(513,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 08:19:26',NULL,43),(514,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:20:34',NULL,44),(515,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:54:25',NULL,1),(516,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 08:57:03',NULL,44),(517,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:02:50',NULL,45),(518,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:13:18',NULL,45),(519,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:16:37',NULL,44),(520,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:17:10',NULL,45),(521,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:20:33',NULL,44),(522,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:21:05',NULL,45),(523,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:25:06',NULL,44),(524,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:25:39',NULL,45),(525,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:31:01',NULL,44),(526,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:31:36',NULL,45),(527,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:32:11',NULL,44),(528,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:34:55',NULL,45),(529,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:38:49',NULL,44),(530,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:39:16',NULL,45),(531,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:39:39',NULL,44),(532,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:40:07',NULL,1),(533,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:40:45',NULL,42),(534,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:42:03',NULL,44),(535,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:42:59',NULL,45),(536,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:46:08',NULL,44),(537,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:46:40',NULL,45),(538,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:48:19',NULL,44),(539,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:48:45',NULL,45),(540,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:50:11',NULL,44),(541,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 09:51:02',NULL,45),(542,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:52:02',NULL,45),(543,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:52:48',NULL,43),(544,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:53:44',NULL,43),(545,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:53:56',NULL,45),(546,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:54:12',NULL,43),(547,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:54:45',NULL,43),(548,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:55:25',NULL,44),(549,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:55:52',NULL,43),(550,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 09:59:39',NULL,44),(551,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:00:28',NULL,45),(552,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:01:15',NULL,44),(553,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:01:39',NULL,45),(554,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:02:00',NULL,44),(555,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:02:26',NULL,43),(556,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:02:50',NULL,44),(557,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 10:03:25',NULL,43),(558,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:11:50',NULL,44),(559,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:11:50',NULL,44),(560,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:12:11',NULL,43),(561,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:18:02',NULL,44),(562,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 10:38:20',NULL,43),(563,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:14:45',NULL,42),(564,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:14:45',NULL,42),(565,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:15:07',NULL,44),(566,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-29 16:21:11',NULL,42),(567,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:21:33',NULL,43),(568,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:55:53',NULL,43),(569,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:57:16',NULL,44),(570,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 16:58:29',NULL,43),(571,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:15:33',NULL,1),(572,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:16:11',NULL,43),(573,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:16:32',NULL,42),(574,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-29 18:17:33',NULL,43),(575,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:25:51',NULL,43),(576,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:40:26',NULL,44),(577,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:41:00',NULL,43),(578,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:42:01',NULL,1),(579,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:44:18',NULL,42),(580,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 08:44:36',NULL,43),(581,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 09:35:02',NULL,44),(582,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 09:38:58',NULL,43),(583,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 09:43:40',NULL,1),(584,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 10:07:37',NULL,43),(585,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 10:07:37',NULL,43),(586,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 11:12:49',NULL,43),(587,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 11:17:31',NULL,43),(588,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:13:48',NULL,42),(589,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:32:26',NULL,43),(590,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 12:34:27',NULL,42),(591,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:57:34',NULL,44),(592,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 12:58:30',NULL,43),(593,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 14:36:05',NULL,42),(594,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 14:37:39',NULL,42),(595,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 15:59:56',NULL,42),(596,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:00:21',NULL,42),(597,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:06:38',NULL,43),(598,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:07:20',NULL,44),(599,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:10:41',NULL,43),(600,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:11:42',NULL,44),(601,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:12:22',NULL,43),(602,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:13:19',NULL,47),(603,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:14:01',NULL,43),(604,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:15:30',NULL,42),(605,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:16:30',NULL,44),(606,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:22:04',NULL,44),(607,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:22:43',NULL,43),(608,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:25:49',NULL,42),(609,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 16:31:31',NULL,42),(610,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:31:55',NULL,44),(611,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:32:11',NULL,43),(612,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:32:36',NULL,44),(613,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:33:00',NULL,43),(614,'Chrome 12/127.0.0.0','192.168.2.2','2024-08-30 16:58:06',NULL,44),(615,'Chrome 12/128.0.0.0','192.168.2.2','2024-08-30 17:08:54',NULL,42),(616,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 09:57:07',NULL,42),(617,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 10:40:57',NULL,42),(618,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 10:47:27',NULL,42),(619,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:03:40',NULL,42),(620,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:17:38',NULL,43),(621,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:27:01',NULL,1),(622,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:29:59',NULL,42),(623,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:38:58',NULL,42),(624,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:49:16',NULL,43),(625,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:50:19',NULL,42),(626,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:50:53',NULL,43),(627,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:56:19',NULL,42),(628,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 11:57:05',NULL,43),(629,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:07:32',NULL,42),(630,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:09:13',NULL,43),(631,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:09:52',NULL,44),(632,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:13:00',NULL,43),(633,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:17:36',NULL,42),(634,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-01 12:29:25',NULL,43),(635,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 13:25:34',NULL,42),(636,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 15:56:47',NULL,42),(637,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 16:51:46',NULL,42),(638,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:22:27',NULL,43),(639,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:25:59',NULL,44),(640,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:26:18',NULL,43),(641,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:28:08',NULL,42),(642,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:30:58',NULL,43),(643,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:54:08',NULL,42),(644,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:54:27',NULL,43),(645,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 17:56:36',NULL,44),(646,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-02 18:00:06',NULL,43),(647,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-03 10:55:44',NULL,42),(648,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:39:32',NULL,42),(649,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:39:53',NULL,1),(650,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:45:58',NULL,1),(651,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 08:49:12',NULL,42),(652,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 09:51:02',NULL,42),(653,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 09:56:42',NULL,42),(654,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 10:28:07',NULL,42),(655,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 11:17:17',NULL,42),(656,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:26:07',NULL,44),(657,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:26:36',NULL,43),(658,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:28:05',NULL,44),(659,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:28:29',NULL,43),(660,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:52:57',NULL,44),(661,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 12:58:39',NULL,43),(662,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:16:24',NULL,42),(663,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:17:20',NULL,44),(664,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:17:35',NULL,43),(665,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:17:54',NULL,44),(666,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:18:34',NULL,43),(667,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:24:50',NULL,42),(668,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:25:20',NULL,43),(669,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:25:39',NULL,44),(670,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:26:20',NULL,43),(671,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 13:47:24',NULL,42),(672,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 14:11:28',NULL,42),(673,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:06:09',NULL,42),(674,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:22:49',NULL,43),(675,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:25:01',NULL,1),(676,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:25:24',NULL,43),(677,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:34:03',NULL,44),(678,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:44:57',NULL,42),(679,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:45:30',NULL,43),(680,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:45:56',NULL,44),(681,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-04 21:47:12',NULL,43),(682,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 15:43:35',NULL,43),(683,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 15:45:37',NULL,42),(684,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 15:46:31',NULL,43),(685,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:06:00',NULL,42),(686,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:06:29',NULL,43),(687,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:11:01',NULL,42),(688,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:11:26',NULL,43),(689,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:13:51',NULL,42),(690,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:16:43',NULL,43),(691,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:27:42',NULL,44),(692,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:39:09',NULL,43),(693,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:39:25',NULL,42),(694,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:39:46',NULL,43),(695,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:43:11',NULL,44),(696,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 16:45:24',NULL,43),(697,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 17:16:29',NULL,44),(698,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 17:16:49',NULL,43),(699,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 17:39:47',NULL,42),(700,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:01:06',NULL,43),(701,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:17:47',NULL,42),(702,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:34:39',NULL,43),(703,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:35:18',NULL,42),(704,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:38:42',NULL,43),(705,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:45:58',NULL,42),(706,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:57:07',NULL,43),(707,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 18:58:43',NULL,42),(708,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 19:03:05',NULL,42),(709,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-05 19:41:20',NULL,42),(710,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 09:13:30',NULL,42),(711,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 09:46:32',NULL,43),(712,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 09:48:44',NULL,42),(713,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 09:50:55',NULL,43),(714,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 09:54:49',NULL,42),(715,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 10:15:13',NULL,42),(716,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 10:16:45',NULL,42),(717,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 10:16:45',NULL,42),(718,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 10:25:06',NULL,43),(719,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-07 11:22:07',NULL,44),(720,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 09:18:00',NULL,43),(721,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 09:25:37',NULL,1),(722,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 09:25:56',NULL,42),(723,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 09:36:57',NULL,43),(724,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 10:11:01',NULL,42),(725,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 10:55:46',NULL,42),(726,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 10:59:38',NULL,43),(727,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 11:04:47',NULL,42),(728,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:03:22',NULL,43),(729,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:03:32',NULL,42),(730,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:05:50',NULL,43),(731,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:14:19',NULL,42),(732,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:14:52',NULL,43),(733,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:25:45',NULL,42),(734,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:26:44',NULL,1),(735,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:27:16',NULL,42),(736,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:29:00',NULL,43),(737,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:29:19',NULL,44),(738,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:32:01',NULL,42),(739,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:37:42',NULL,43),(740,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:37:58',NULL,42),(741,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:41:40',NULL,43),(742,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:42:32',NULL,42),(743,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:45:26',NULL,43),(744,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:45:45',NULL,44),(745,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:46:45',NULL,43),(746,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-08 12:47:01',NULL,42),(747,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 18:20:24',NULL,42),(748,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 19:24:34',NULL,42),(749,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 20:54:37',NULL,42),(750,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 20:55:32',NULL,42),(751,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 20:56:59',NULL,42),(752,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 20:59:54',NULL,1),(753,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 21:13:31',NULL,42),(754,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 21:17:44',NULL,43),(755,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 21:19:29',NULL,1),(756,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 21:43:54',NULL,1),(757,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:29:41',NULL,42),(758,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:30:55',NULL,43),(759,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:33:54',NULL,44),(760,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:34:29',NULL,43),(761,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:44:07',NULL,42),(762,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:46:32',NULL,43),(763,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:49:46',NULL,1),(764,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:50:12',NULL,42),(765,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:50:28',NULL,1),(766,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:50:50',NULL,42),(767,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:51:34',NULL,1),(768,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 22:52:23',NULL,42),(769,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-10 23:02:01',NULL,43),(770,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 09:11:33',NULL,42),(771,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 10:28:40',NULL,42),(772,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 13:00:08',NULL,42),(773,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 14:11:37',NULL,42),(774,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 14:17:46',NULL,42),(775,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 14:17:46',NULL,42),(776,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 14:23:38',NULL,42),(777,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 14:32:11',NULL,42),(778,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 14:32:11',NULL,42),(779,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 15:49:25',NULL,42),(780,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 15:49:25',NULL,42),(781,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 18:03:36',NULL,42),(782,'Chrome 12/128.0.0.0','192.168.2.2','2024-09-11 18:11:53',NULL,42);
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

-- Dump completed on 2024-09-11 18:29:20
