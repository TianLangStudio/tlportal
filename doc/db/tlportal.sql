-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: tlportal
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `t_app`
--

DROP TABLE IF EXISTS `t_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app` (
  `id` varchar(255) NOT NULL,
  `categoryId` varchar(255) DEFAULT NULL,
  `createAt` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `updateAt` datetime DEFAULT NULL,
  `updater` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app`
--

LOCK TABLES `t_app` WRITE;
/*!40000 ALTER TABLE `t_app` DISABLE KEYS */;
INSERT INTO `t_app` VALUES ('416732076411326464','416731388298006528','2020-05-03 09:11:20','admin','https://as.zbjimg.com/static/nodejs-zbj-utopiacs-web/widget/header-bd-v1/img/newlogo_5b91b4a.png','猪八戒',NULL,1,'2020-05-03 09:11:20','admin','https://shop.zbj.com/5678348/','定制开发管理类应用'),('416729994283323392','415791583410130944','2020-05-03 09:03:03','admin','','学编程',NULL,1,'2020-05-03 09:03:03','admin','https://edu.51cto.com/sd/aca72','在线学编程链接测试'),('416730354964107264','415791930077745152','2020-05-03 09:04:29','admin','','简书',NULL,1,'2020-05-03 09:04:29','admin','https://www.jianshu.com/','在线写小说写博客等');
/*!40000 ALTER TABLE `t_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_area`
--

DROP TABLE IF EXISTS `t_sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `area_code` varchar(40) NOT NULL COMMENT '区代码',
  `city_code` varchar(40) DEFAULT NULL COMMENT '父级市代码',
  `area_name` varchar(40) NOT NULL COMMENT '市名称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`area_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2013 DEFAULT CHARSET=utf8 COMMENT='地区设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_area`
--

LOCK TABLES `t_sys_area` WRITE;
/*!40000 ALTER TABLE `t_sys_area` DISABLE KEYS */;
INSERT INTO `t_sys_area` VALUES (1975,'500101','500100','万州区','万州','108.380249','30.807808',28,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1976,'500102','500100','涪陵区','涪陵','107.394905','29.703651',11,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1977,'500103','500100','渝中区','渝中','106.562881','29.556742',37,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1978,'500104','500100','大渡口区','大渡口','106.48613','29.481003',6,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1979,'500105','500100','江北区','江北','106.532845','29.575352',13,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1980,'500106','500100','沙坪坝区','沙坪坝','106.454201','29.541224',24,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1981,'500107','500100','九龙坡区','九龙坡','106.480988','29.523493',15,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1982,'500108','500100','南岸区','南岸','106.560814','29.523993',18,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1983,'500109','500100','北碚区','北碚','106.437866','29.82543',2,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1984,'500112','500100','渝北区','渝北','106.512848','29.601452',35,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1985,'500113','500100','巴南区','巴南','106.519424','29.38192',1,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1986,'500114','500100','黔江区','黔江','108.782578','29.527548',21,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1987,'500115','500100','长寿区','长寿','107.074852','29.833672',4,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1988,'500222','500100','綦江区','綦江','106.651421','29.028091',22,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1989,'500223','500100','潼南县','潼南','105.84182','30.189554',27,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1990,'500224','500100','铜梁县','铜梁','106.054947','29.839945',26,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1991,'500225','500100','大足区','大足','105.715317','29.700499',7,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1992,'500226','500100','荣昌县','荣昌','105.594063','29.403627',23,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1993,'500227','500100','璧山县','璧山','106.231125','29.59358',3,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1994,'500228','500100','梁平县','梁平','107.800034','30.672169',17,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1995,'500229','500100','城口县','城口','108.664902','31.946293',5,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1996,'500230','500100','丰都县','丰都','107.732483','29.866425',9,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1997,'500231','500100','垫江县','垫江','107.348694','30.330011',8,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1998,'500232','500100','武隆县','武隆','107.756554','29.323759',29,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(1999,'500233','500100','忠县','忠县','108.037521','30.291536',38,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2000,'500234','500100','开县','开县','108.413315','31.167734',16,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2001,'500235','500100','云阳县','云阳','108.697701','30.930529',36,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2002,'500236','500100','奉节县','奉节','109.465775','31.019966',10,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2003,'500237','500100','巫山县','巫山','109.878929','31.074842',30,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2004,'500238','500100','巫溪县','巫溪','109.628914','31.396601',31,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2005,'500240','500100','石柱土家族自治县','石柱','108.11245','29.998529',25,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2006,'500241','500100','秀山土家族苗族自治县','秀山','108.99604','28.444773',32,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2007,'500242','500100','酉阳土家族苗族自治县','酉阳','108.767204','28.839828',34,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2008,'500243','500100','彭水苗族土家族自治县','彭水','108.16655','29.293856',20,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2009,'500381','500100','江津区','江津','106.253159','29.283386',14,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2010,'500382','500100','合川区','合川','106.265556','29.990993',12,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2011,'500383','500100','永川区','永川','105.894714','29.348747',33,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0),(2012,'500384','500100','南川区','南川','107.098152','29.156647',19,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0);
/*!40000 ALTER TABLE `t_sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_city`
--

DROP TABLE IF EXISTS `t_sys_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `city_code` varchar(40) NOT NULL COMMENT '市代码',
  `city_name` varchar(40) NOT NULL COMMENT '市名称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `province_code` varchar(40) DEFAULT NULL COMMENT '省代码',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`city_code`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COMMENT='城市设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_city`
--

LOCK TABLES `t_sys_city` WRITE;
/*!40000 ALTER TABLE `t_sys_city` DISABLE KEYS */;
INSERT INTO `t_sys_city` VALUES (255,'500100','重庆市','重庆','500000','106.504959','29.533155',1,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0);
/*!40000 ALTER TABLE `t_sys_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_datas`
--

DROP TABLE IF EXISTS `t_sys_datas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_datas` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_path` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '文件地址',
  `file_suffix` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '后缀',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件表存储表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_datas`
--

LOCK TABLES `t_sys_datas` WRITE;
/*!40000 ALTER TABLE `t_sys_datas` DISABLE KEYS */;
INSERT INTO `t_sys_datas` VALUES ('354984152409444352','static/images_upload/655e075657837d5f18a8371b66b8a230.jpg','.jpg'),('374456487097012224','D:/profile/5a749ab9655eebe637329f04ef70f907.gif','.gif'),('411525457691938816','static/images_upload/4fa2108ce19bc1afdece569e29b49d4d.log','.log'),('411525604173811712','static/images_upload/5636358eb8fa2c46c3107406385d215b.zip','.zip');
/*!40000 ALTER TABLE `t_sys_datas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_department`
--

DROP TABLE IF EXISTS `t_sys_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` varchar(255) DEFAULT NULL COMMENT '父id',
  `dept_name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `leader` varchar(255) DEFAULT NULL COMMENT '部门负责人',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `status` int(255) DEFAULT NULL COMMENT '状态',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_department`
--

LOCK TABLES `t_sys_department` WRITE;
/*!40000 ALTER TABLE `t_sys_department` DISABLE KEYS */;
INSERT INTO `t_sys_department` VALUES (1,'0','v2','v2','13012345678','v2@qq.com',1,1),(2,'1','技术部门','x某某','13012345678','v2@qq.com',1,2),(3,'1','人事部门','a某某','13012345678','v2@qq.com',1,3),(4,'2','开发一小组','b某某','13012345678','v2@qq.com',1,4),(5,'3','销售部门','d某某','13012345678','v2@qq.com',1,5),(6,'5','销售一组','e某某','13012345678','v2@qq.com',1,6);
/*!40000 ALTER TABLE `t_sys_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_dict_data`
--

DROP TABLE IF EXISTS `t_sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_dict_data` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_dict_data`
--

LOCK TABLES `t_sys_dict_data` WRITE;
/*!40000 ALTER TABLE `t_sys_dict_data` DISABLE KEYS */;
INSERT INTO `t_sys_dict_data` VALUES ('331043380933038080',1,'一般','1','sys_notice_type','','info','Y','0','admin','2019-09-09 22:15:03','admin','2019-09-09 22:15:43',''),('331043525137403904',2,'重要','2','sys_notice_type','','important','N','0','admin','2019-09-09 22:15:37','admin','2019-09-11 00:30:04',''),('340080322395901952',1,'开启','0','sys_province_state','','info','Y','0','admin','2019-10-04 20:44:37','admin','2019-10-04 20:46:41',''),('340080779201744896',2,'关闭','-1','sys_province_state','','important','Y','0','admin','2019-10-04 20:46:26','admin','2019-10-04 20:46:45',''),('373494384659927040',0,'GET请求','1','sys_inter_url_type','','primary','Y','0','admin','2020-01-05 01:40:11','admin','2020-03-29 23:23:58',''),('373494483465146368',1,'POST请求','2','sys_inter_url_type','','info','Y','0','admin','2020-01-05 01:40:34','admin','2020-03-29 23:23:25',''),('415791583410130944',0,'教育','app_category_edu','app_category','','default','Y','0','admin','2020-04-30 18:54:09','','2020-04-30 18:54:09','教育类应用'),('415791930077745152',1,'写作','app_category_write','app_category','','default','Y','0','admin','2020-04-30 18:55:31','','2020-04-30 18:55:31','写作类应用'),('415792194402783232',2,'网盘','app_category_cloud_disk','app_category','','default','Y','0','admin','2020-04-30 18:56:34','','2020-04-30 18:56:34','网络云盘类应用'),('416731388298006528',4,'应用开发','app_category_app_develop','app_category','','default','Y','0','admin','2020-05-03 09:08:36','','2020-05-03 09:08:36','应用开发相关应用');
/*!40000 ALTER TABLE `t_sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_dict_type`
--

DROP TABLE IF EXISTS `t_sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_dict_type` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_dict_type`
--

LOCK TABLES `t_sys_dict_type` WRITE;
/*!40000 ALTER TABLE `t_sys_dict_type` DISABLE KEYS */;
INSERT INTO `t_sys_dict_type` VALUES ('340079827459641344','省份状态','sys_province_state','0','admin','2019-10-04 20:42:39','','2019-10-04 20:42:39','省份状态'),('373493952487231488','拦截器类型','sys_inter_url_type','0','admin','2020-01-05 01:38:28','admin','2020-03-29 23:23:43','拦截器类型'),('415791235324841984','应用分类','app_category','0','admin','2020-04-30 18:52:46','','2020-04-30 18:52:46','应用类别：教育、办公等'),('6','通知类型','sys_notice_type','0','admin','2018-03-16 11:33:00','admin','2019-09-15 00:29:19','通知类型列表');
/*!40000 ALTER TABLE `t_sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_email`
--

DROP TABLE IF EXISTS `t_sys_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_email` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `receivers_email` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '接收人电子邮件',
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '邮件标题',
  `content` text COLLATE utf8_bin COMMENT '内容',
  `send_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人id',
  `send_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '发送人账号',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='电子邮件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_email`
--

LOCK TABLES `t_sys_email` WRITE;
/*!40000 ALTER TABLE `t_sys_email` DISABLE KEYS */;
INSERT INTO `t_sys_email` VALUES ('595001021625794560','87766867@qq.com','springbootv2测试邮件','<p>测试测测测</p>','1','admin','2019-06-30 21:21:38');
/*!40000 ALTER TABLE `t_sys_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_file`
--

DROP TABLE IF EXISTS `t_sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_file` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `file_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片名字',
  `create_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '创建人名字',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人',
  `update_user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '修改人名字',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_file`
--

LOCK TABLES `t_sys_file` WRITE;
/*!40000 ALTER TABLE `t_sys_file` DISABLE KEYS */;
INSERT INTO `t_sys_file` VALUES ('354984159875305472','3333','1','admin','2019-11-14 23:47:09',NULL,NULL,NULL),('374456499247910912','666','1','admin','2020-01-07 17:23:17',NULL,NULL,NULL),('411525465866637312','烦烦烦','1','admin','2020-04-19 00:22:07',NULL,NULL,NULL),('411525609936785408','烦烦烦2','1','admin','2020-04-19 00:22:41',NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_file_data`
--

DROP TABLE IF EXISTS `t_sys_file_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_file_data` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `data_id` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '数据id',
  `file_id` varchar(255) COLLATE utf8_bin DEFAULT '文件id' COMMENT '文件id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文件数据外键绑定表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_file_data`
--

LOCK TABLES `t_sys_file_data` WRITE;
/*!40000 ALTER TABLE `t_sys_file_data` DISABLE KEYS */;
INSERT INTO `t_sys_file_data` VALUES ('354984159875305473','354984152409444352','354984159875305472'),('374456499247910913','374456487097012224','374456499247910912'),('411525465866637313','411525457691938816','411525465866637312'),('411525609936785409','411525604173811712','411525609936785408');
/*!40000 ALTER TABLE `t_sys_file_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_inter_url`
--

DROP TABLE IF EXISTS `t_sys_inter_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_inter_url` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `inter_name` varchar(255) DEFAULT NULL COMMENT '拦截名称',
  `url` varchar(255) DEFAULT NULL COMMENT '拦截url',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拦截url表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_inter_url`
--

LOCK TABLES `t_sys_inter_url` WRITE;
/*!40000 ALTER TABLE `t_sys_inter_url` DISABLE KEYS */;
INSERT INTO `t_sys_inter_url` VALUES ('373496755515428864','用户添加','/UserController/add',2),('373497670557372416','用户删除','/UserController/remove',2),('373497840930000896','用户修改','/UserController/edit',2),('373497897913815040','用户修改密码','/UserController/editPwd',2),('373498025491959808','自动生成添加','/autoCodeController/addGlobal',2),('373498096644132864','自动生成保存','/autoCodeController/saveOne',2),('373498292627181568','字典表添加','/DictDataController/add',2),('373498349552275456','字典表删除','/DictDataController/remove',2),('373498496684265472','字典表修改','/DictDataController/edit',2),('373498567521865728','字典表类型添加','/DictTypeController/add',2),('373498625474564096','字典表类型删除','/DictTypeController/remove',2),('373498715475939328','字典表类型修改','/DictTypeController/edit',2),('373498811429031936','邮箱添加','/EmailController/add',2),('373498868127633408','邮箱修改','/EmailController/edit',2),('373498918975180800','邮箱删除','/EmailController/remove',2),('373498988751622144','文件上传','/FileController/upload',2),('373499051250946048','文件上传添加','/FileController/add',2),('373499108104736768','文件上传删除','/FileController/remove',2),('373499205047685120','文件上传删除2','/FileController/del_file',2),('373499263713415168','文件上传修改','/FileController/edit',2),('373499326967713792','日志删除','/LogController/remove',2),('373499404776247296','权限添加','/PermissionController/add',2),('373499452364820480','权限删除','/PermissionController/remove',2),('373499526859853824','权限修改','/PermissionController/edit',2),('373499613015052288','定时器添加','/SysQuartzJobController/add',2),('373499677636694016','定时器删除','/SysQuartzJobController/remove',2),('373499748591734784','定时器修改','/SysQuartzJobController/edit',2),('373499825582379008','定时器状态切换','/SysQuartzJobController/changeStatus',2),('373499894721286144','定时器启动','/SysQuartzJobController/run',2),('373499948769087488','定时器日志删除','/SysQuartzJobLogController/remove',2),('373500039596740608','角色添加','/RoleController/add',2),('373500088284221440','角色删除','/RoleController/remove',2),('373500133054222336','角色修改','/RoleController/edit',2),('373500178268819456','公告添加','/SysNoticeController/add',2),('373500217934352384','公告删除','/SysNoticeController/remove',2),('373500268949671936','公告展示','/SysNoticeController/viewinfo',2),('373500319365206016','公告修改','/SysNoticeController/edit',2),('373500397240848384','省份添加','/SysProvinceController/add',2),('373500437623607296','省份删除','/SysProvinceController/remove',2),('373500524961599488','省份修改','/SysProvinceController/edit',2),('373500569433804800','地区添加','/SysAreaController/add',2),('373500609669763072','地区删除','/SysAreaController/remove',2),('373500648181862400','地区修改','/SysAreaController/edit',2),('373500706268778496','城市添加','/SysCityController/add',2),('373500743581306880','城市删除','/SysCityController/remove',2),('373500781405540352','城市修改','/SysCityController/edit',2),('373500835193294848','街道添加','/SysStreetController/add',2),('373500877971001344','街道删除','/SysStreetController/remove',2),('373500915308695552','街道修改','/SysStreetController/edit',2),('373501029066608640','百度编辑器添加','/UeditorController/ueditor',2),('373501103570030592','百度编辑器','/UeditorController/',2),('373501147362758656','百度编辑器上传','/UeditorController/imgUpload',2),('373501199686701056','七牛文件上传','/QiNiuCloudController/uploadToQiNiu',2),('373501333854097408','定时器停止','/quartz/stop',1),('373501434756468736','定时器继续','/quartz/resume',1),('373501545595146240','定时器状态修改','/quartz/update',1),('373501599198351360','定时器删除2','/quartz/delete',1),('411485475971403776','岗位添加','/SysPositionController/add',2),('411490182756438016','岗位删除','/SysPositionController/remove',2),('411490841580933120','岗位修改','/SysPositionController/edit',2),('411492914938646528','部门添加','/SysDepartmentController/add',2),('411493078512308224','部门删除','/SysDepartmentController/remove',2),('411494526608347136','部门修改','/SysDepartmentController/edit',2),('411495018801532928','拦截器新增','/SysInterUrlController/add',2),('411495038321823744','拦截器复制','/SysInterUrlController/copy',1),('411495141359095808','拦截器删除','/SysInterUrlController/remove',2),('411495220283314176','拦截器修改','/SysInterUrlController/edit',2);
/*!40000 ALTER TABLE `t_sys_inter_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_notice`
--

DROP TABLE IF EXISTS `t_sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_notice` (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `type` int(5) DEFAULT NULL COMMENT '类型',
  `create_id` varchar(255) DEFAULT NULL COMMENT '创建人id',
  `create_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '创建人name',
  `create_time` datetime DEFAULT NULL COMMENT '发信时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_notice`
--

LOCK TABLES `t_sys_notice` WRITE;
/*!40000 ALTER TABLE `t_sys_notice` DISABLE KEYS */;
INSERT INTO `t_sys_notice` VALUES ('330381411007729664','测试公告','<p>啊啊啊<img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>',1,'1','admin','2019-09-08 02:24:37'),('330381806358630400','鲜花视频','<p>哈哈哈哈<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>',2,'1','admin','2019-09-08 02:26:11'),('373478036928073728','顶顶顶顶顶顶顶顶顶','<p>顶顶顶顶顶顶顶顶顶顶<img src=\"http://img.baidu.com/hi/jx2/j_0014.gif\"/></p>',1,'1','admin','2020-01-05 00:35:13');
/*!40000 ALTER TABLE `t_sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_notice_user`
--

DROP TABLE IF EXISTS `t_sys_notice_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_notice_user` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `notice_id` varchar(255) DEFAULT NULL COMMENT '公告id',
  `user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `state` int(2) DEFAULT NULL COMMENT '0未阅读 1 阅读',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告_用户外键';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_notice_user`
--

LOCK TABLES `t_sys_notice_user` WRITE;
/*!40000 ALTER TABLE `t_sys_notice_user` DISABLE KEYS */;
INSERT INTO `t_sys_notice_user` VALUES ('330381411037089792','330381411007729664','1',1),('330381411045478400','330381411007729664','488294747442511872',0),('330381806375407616','330381806358630400','1',1),('330381806379601920','330381806358630400','488294747442511872',0),('330622143622680576','330622143597514752','1',1),('330622143626874880','330622143597514752','488294747442511872',0),('354984345649418240','354984345632641024','1',1),('373478037158760448','373478036928073728','1',1),('373478037162954752','373478036928073728','368026921239449600',0),('373478037171343360','373478036928073728','368026937181999104',0),('373478037175537664','373478036928073728','368027013392502784',0),('373478037183926272','373478036928073728','368027030899527680',0),('373478037192314880','373478036928073728','368027048402358272',0),('373478037204897792','373478036928073728','368027066563694592',0),('373478037213286400','373478036928073728','368027087866564608',0),('373478037217480704','373478036928073728','368027104895438848',0),('373478037225869312','373478036928073728','368027130728157184',0),('373478037230063616','373478036928073728','368027151624179712',0),('373478037238452224','373478036928073728','368382463233363968',0);
/*!40000 ALTER TABLE `t_sys_notice_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_oper_log`
--

DROP TABLE IF EXISTS `t_sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_oper_log` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `method` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '方法',
  `oper_name` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '操作人',
  `oper_url` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT 'url',
  `oper_param` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '参数',
  `error_msg` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `oper_time` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='日志记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_oper_log`
--

LOCK TABLES `t_sys_oper_log` WRITE;
/*!40000 ALTER TABLE `t_sys_oper_log` DISABLE KEYS */;
INSERT INTO `t_sys_oper_log` VALUES ('353711021405376512','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin1111\"],\"password\":[\"admin11111111111111\"],\"nickname\":[\"111111111111\"],\"roles\":[\"488289006124007424\"]}',NULL,'2019-11-11'),('353711251710414848','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"]}',NULL,'2019-11-11'),('353711483206635520','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin1111111111111\"],\"password\":[\"admin1111111111111\"],\"nickname\":[\"111\"]}',NULL,'2019-11-11'),('353890395106709504','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/springboot_v2/UserController/add','{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"2\"]}',NULL,'2019-11-11'),('354984005894017024','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin22\"],\"password\":[\"admin22\"],\"nickname\":[\"222\"],\"roles\":[\"488243256161730560\"]}',NULL,'2019-11-14'),('354988722611163136','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin222\"],\"password\":[\"admin22\"],\"nickname\":[\"22222\"],\"roles\":[\"488243256161730560\"]}',NULL,'2019-11-15'),('354989789822455808','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin33\"],\"password\":[\"admin33\"],\"nickname\":[\"333\"],\"roles\":[\"488305788310257664\"]}',NULL,'2019-11-15'),('368026921411416064','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin1\"],\"password\":[\"admin1\"],\"nickname\":[\"\"]}',NULL,'2019-12-20'),('368026937215553536','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"admin2\"],\"password\":[\"admin2\"],\"nickname\":[\"\"]}',NULL,'2019-12-20'),('368026972204437504','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"33333\"],\"password\":[\"3333333\"],\"nickname\":[\"333\"]}',NULL,'2019-12-20'),('368027013421862912','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"44\"],\"password\":[\"444444\"],\"nickname\":[\"444\"]}',NULL,'2019-12-20'),('368027030928887808','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"5555555\"],\"password\":[\"555555555555\"],\"nickname\":[\"5555555555555\"]}',NULL,'2019-12-20'),('368027048427524096','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"66\"],\"password\":[\"666666666\"],\"nickname\":[\"6666666666\"]}',NULL,'2019-12-20'),('368027066593054720','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"2222\"],\"password\":[\"222222222\"],\"nickname\":[\"2222222222222222\"]}',NULL,'2019-12-20'),('368027087887536128','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"4444\"],\"password\":[\"44444444444444\"],\"nickname\":[\"44444444444\"]}',NULL,'2019-12-20'),('368027104924798976','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"5555\"],\"password\":[\"55555555555555\"],\"nickname\":[\"555555555555\"]}',NULL,'2019-12-20'),('368027130757517312','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"666\"],\"password\":[\"66666666666\"],\"nickname\":[\"666666666\"]}',NULL,'2019-12-20'),('368027151649345536','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"33333333333333\"],\"password\":[\"333333333333\"],\"nickname\":[\"33333333333333\"]}',NULL,'2019-12-20'),('368382463388553216','用户新增','com.fc.test.controller.admin.UserController.add()','admin','/UserController/add','{\"username\":[\"adminpppoooo\"],\"password\":[\"adminppp\"],\"nickname\":[\"pppppppppp\"]}',NULL,'2019-12-21');
/*!40000 ALTER TABLE `t_sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_permission`
--

DROP TABLE IF EXISTS `t_sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_permission` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `descripion` varchar(255) DEFAULT NULL COMMENT '权限描述',
  `url` varchar(255) DEFAULT NULL COMMENT '授权链接',
  `is_blank` int(255) DEFAULT '0' COMMENT '是否跳转 0 不跳转 1跳转',
  `pid` varchar(255) DEFAULT NULL COMMENT '父节点id',
  `perms` varchar(255) DEFAULT NULL COMMENT '权限标识',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `visible` int(255) DEFAULT NULL COMMENT '是否可见',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_permission`
--

LOCK TABLES `t_sys_permission` WRITE;
/*!40000 ALTER TABLE `t_sys_permission` DISABLE KEYS */;
INSERT INTO `t_sys_permission` VALUES ('1','首页','首页','#',0,'0','#',0,'fa fa-home',1,0),('10','角色集合','角色集合','/RoleController/list',0,'9','system:role:list',2,'',NULL,0),('11','角色添加','角色添加','/RoleController/add',0,'9','system:role:add',2,'entypo-plus-squared',NULL,0),('12','角色删除','角色删除','/RoleController/remove',0,'9','system:role:remove',2,'entypo-trash',NULL,0),('13','角色修改','角色修改','/RoleController/edit',0,'9','system:role:edit',2,'fa fa-wrench',NULL,0),('14','权限展示','目录管理','/PermissionController/view',0,'411522822607867904','system:permission:view',1,'fa fa-key',3,0),('15','权限集合','权限集合','/PermissionController/list',0,'14','system:permission:list',2,'',NULL,0),('16','权限添加','权限添加','/permissionController/add',0,'14','system:permission:add',2,'entypo-plus-squared',NULL,0),('17','权限删除','权限删除','/PermissionController/remove',0,'14','system:permission:remove',2,'entypo-trash',NULL,0),('18','权限修改','权限修改','/PermissionController/edit',0,'14','system:permission:edit',2,'fa fa-wrench',NULL,0),('19','文件管理','文件管理','/FileController/view',0,'592059865673760768','system:file:view',1,'fa fa-file-image-o',4,0),('20','文件添加','文件添加','/FileController/add',0,'19','system:file:add',2,'entypo-plus-squared',NULL,0),('21','文件删除','文件删除','/FileController/remove',0,'19','system:file:remove',2,'entypo-trash',NULL,0),('22','文件修改','文件修改','/FileController/edit',0,'19','system:file:edit',2,'fa fa-wrench',NULL,0),('23','文件集合','文件集合','/FileController/list',0,'19','system:file:list',2,'',NULL,0),('330365026642825216','公告管理','公告展示','/SysNoticeController/view',0,'592059865673760768','gen:sysNotice:view',1,'fa fa-telegram',10,0),('3303650266428252171','公告集合','公告集合','/SysNoticeController/list',0,'330365026642825216','gen:sysNotice:list',2,'',NULL,0),('3303650266428252182','公告添加','公告添加','/SysNoticeController/add',0,'330365026642825216','gen:sysNotice:add',2,'entypo-plus-squared',NULL,0),('3303650266428252193','公告删除','公告删除','/SysNoticeController/remove',0,'330365026642825216','gen:sysNotice:remove',2,'entypo-trash',NULL,0),('3303650266428252204','公告修改','公告修改','/SysNoticeController/edit',0,'330365026642825216','gen:sysNotice:edit',2,'fa fa-wrench',NULL,0),('331778807298134016','定时器表达式','','/quartz/view',0,'592059865673760768','#',1,'fa fa-flash',12,0),('332157860920299520','定时任务','定时任务调度表展示','/SysQuartzJobController/view',0,'592059865673760768','gen:sysQuartzJob:view',1,'fa fa-hourglass-1',13,0),('3321578609202995211','定时任务调度表集合','定时任务调度表集合','/SysQuartzJobController/list',0,'332157860920299520','gen:sysQuartzJob:list',2,'',NULL,0),('3321578609202995222','定时任务调度表添加','定时任务调度表添加','/SysQuartzJobController/add',0,'332157860920299520','gen:sysQuartzJob:add',2,'entypo-plus-squared',NULL,0),('3321578609202995233','定时任务调度表删除','定时任务调度表删除','/SysQuartzJobController/remove',0,'332157860920299520','gen:sysQuartzJob:remove',2,'entypo-trash',NULL,0),('3321578609202995244','定时任务调度表修改','定时任务调度表修改','/SysQuartzJobController/edit',0,'332157860920299520','gen:sysQuartzJob:edit',2,'fa fa-wrench',NULL,0),('332857281479839744','定时任务日志','定时任务日志','/SysQuartzJobLogController/view',0,'592059865673760768','gen:sysQuartzJobLog:view',1,'fa fa-database',14,0),('3328572814798397451','定时任务调度日志表集合','定时任务调度日志表集合','/SysQuartzJobLogController/list',0,'332857281479839744','gen:sysQuartzJobLog:list',2,'',NULL,0),('3328572814798397473','定时任务调度日志表删除','定时任务调度日志表删除','/SysQuartzJobLogController/remove',0,'332857281479839744','gen:sysQuartzJobLog:remove',2,'entypo-trash',NULL,0),('335330315113467904','Json工具','Json格式化工具','/Json/view',1,'617766548966211584','#',1,'fa fa-retweet',10,0),('340066503263129600','省份设置','省份设置',NULL,0,'1',NULL,0,'fa fa-building',4,1),('340067579836108800','省份管理','','#',0,'340066503263129600','#',1,'fa fa-building-o',NULL,0),('340068151804956672','省份表管理','省份表展示','/SysProvinceController/view',0,'340067579836108800','gen:sysProvince:view',1,'fa fa-quora',2,0),('3400681518049566731','省份表集合','省份表集合','/SysProvinceController/list',0,'340068151804956672','gen:sysProvince:list',2,'',NULL,0),('3400681518049566742','省份表添加','省份表添加','/SysProvinceController/add',0,'340068151804956672','gen:sysProvince:add',2,'entypo-plus-squared',NULL,0),('3400681518049566753','省份表删除','省份表删除','/SysProvinceController/remove',0,'340068151804956672','gen:sysProvince:remove',2,'entypo-trash',NULL,0),('3400681518049566764','省份表修改','省份表修改','/SysProvinceController/edit',0,'340068151804956672','gen:sysProvince:edit',2,'fa fa-wrench',NULL,0),('340088022018166784','城市表管理','城市设置展示','/SysCityController/view',0,'340067579836108800','gen:sysCity:view',1,'fa fa-quora',3,0),('3400880220181667851','城市设置集合','城市设置集合','/SysCityController/list',0,'340088022018166784','gen:sysCity:list',2,'',NULL,0),('3400880220181667862','城市设置添加','城市设置添加','/SysCityController/add',0,'340088022018166784','gen:sysCity:add',2,'entypo-plus-squared',NULL,0),('3400880220181667873','城市设置删除','城市设置删除','/SysCityController/remove',0,'340088022018166784','gen:sysCity:remove',2,'entypo-trash',NULL,0),('3400880220181667884','城市设置修改','城市设置修改','/SysCityController/edit',0,'340088022018166784','gen:sysCity:edit',2,'fa fa-wrench',NULL,0),('340096183135506432','地区设置管理','地区设置展示','/SysAreaController/view',0,'340067579836108800','gen:sysArea:view',1,'fa fa-quora',4,0),('3400961831355064331','地区设置集合','地区设置集合','/SysAreaController/list',0,'340096183135506432','gen:sysArea:list',2,'',NULL,0),('3400961831355064342','地区设置添加','地区设置添加','/SysAreaController/add',0,'340096183135506432','gen:sysArea:add',2,'entypo-plus-squared',NULL,0),('3400961831355064353','地区设置删除','地区设置删除','/SysAreaController/remove',0,'340096183135506432','gen:sysArea:remove',2,'entypo-trash',NULL,0),('3400961831355064364','地区设置修改','地区设置修改','/SysAreaController/edit',0,'340096183135506432','gen:sysArea:edit',2,'fa fa-wrench',NULL,0),('340127412270534656','街道设置管理','街道设置展示','/SysStreetController/view',0,'340067579836108800','gen:sysStreet:view',1,'fa fa-quora',5,0),('3401274122705346571','街道设置集合','街道设置集合','/SysStreetController/list',0,'340127412270534656','gen:sysStreet:list',2,'',NULL,0),('3401274122705346582','街道设置添加','街道设置添加','/SysStreetController/add',0,'340127412270534656','gen:sysStreet:add',2,'entypo-plus-squared',NULL,0),('3401274122705346593','街道设置删除','街道设置删除','/SysStreetController/remove',0,'340127412270534656','gen:sysStreet:remove',2,'entypo-trash',NULL,0),('3401274122705346604','街道设置修改','街道设置修改','/SysStreetController/edit',0,'340127412270534656','gen:sysStreet:edit',2,'fa fa-wrench',NULL,0),('340301160042860544','省份联动','省份联动','/ProvinceLinkageController/view',0,'340067579836108800','#',1,'fa fa-etsy',1,0),('340381240911859712','JavaScript格式化','JavaScript格式化','/static/admin/htmlformat/javascriptFormat.html',1,'617766548966211584','#',1,'fa fa-magic',11,0),('354851114446884864','七牛文件上传','七牛文件上传','/QiNiuCloudController/view',0,'592059865673760768','system:qiNiuCloud:view',1,'fa fa-globe',15,1),('354865752219717632','云文件集合','云文件集合','/QiNiuCloudController/list',0,'354851114446884864','system:qiNiuCloud:list',2,NULL,NULL,0),('373489907429150720','URL拦截管理','拦截url表展示','/SysInterUrlController/view',0,'617766548966211584','gen:sysInterUrl:view',1,'fa fa-hand-stop-o',16,0),('3734899074291507211','拦截url表集合','拦截url表集合','/SysInterUrlController/list',0,'373489907429150720','gen:sysInterUrl:list',2,'',NULL,0),('3734899074291507222','拦截url表添加','拦截url表添加','/SysInterUrlController/add',0,'373489907429150720','gen:sysInterUrl:add',2,'entypo-plus-squared',NULL,0),('3734899074291507233','拦截url表删除','拦截url表删除','/SysInterUrlController/remove',0,'373489907429150720','gen:sysInterUrl:remove',2,'entypo-trash',NULL,0),('3734899074291507244','拦截url表修改','拦截url表修改','/SysInterUrlController/edit',0,'373489907429150720','gen:sysInterUrl:edit',2,'fa fa-wrench',NULL,0),('379959240841891840','测试表管理','测试表展示','/TestController/view',0,'589559748521623552','gen:test:view',1,'fa fa-quora',NULL,0),('3799592408418918411','测试表集合','测试表集合','/TestController/list',0,'379959240841891840','gen:test:list',2,'',NULL,0),('3799592408418918422','测试表添加','测试表添加','/TestController/add',0,'379959240841891840','gen:test:add',2,'entypo-plus-squared',NULL,0),('3799592408418918433','测试表删除','测试表删除','/TestController/remove',0,'379959240841891840','gen:test:remove',2,'entypo-trash',NULL,0),('3799592408418918444','测试表修改','测试表修改','/TestController/edit',0,'379959240841891840','gen:test:edit',2,'fa fa-wrench',NULL,0),('4','用户管理','用户展示','/UserController/view',0,'411522822607867904','system:user:view',1,'icon icon-user',1,0),('410791701859405824','岗位管理','岗位展示','/SysPositionController/view',0,'411522822607867904','gen:sysPosition:view',1,'fa fa-vcard',17,0),('4107917018594058251','岗位表集合','岗位集合','/SysPositionController/list',0,'410791701859405824','gen:sysPosition:list',2,'',NULL,0),('4107917018594058262','岗位表添加','岗位添加','/SysPositionController/add',0,'410791701859405824','gen:sysPosition:add',2,'entypo-plus-squared',NULL,0),('4107917018594058273','岗位表删除','岗位删除','/SysPositionController/remove',0,'410791701859405824','gen:sysPosition:remove',2,'entypo-trash',NULL,0),('4107917018594058284','岗位表修改','岗位修改','/SysPositionController/edit',0,'410791701859405824','gen:sysPosition:edit',2,'fa fa-wrench',NULL,0),('410989805699207168','部门管理','部门展示','/SysDepartmentController/view',0,'411522822607867904','gen:sysDepartment:view',1,'fa fa-odnoklassniki',18,0),('4109898056992071691','部门集合','部门集合','/SysDepartmentController/list',0,'410989805699207168','gen:sysDepartment:list',2,'',NULL,0),('4109898056992071702','部门添加','部门添加','/SysDepartmentController/add',0,'410989805699207168','gen:sysDepartment:add',2,'entypo-plus-squared',NULL,0),('4109898056992071713','部门删除','部门删除','/SysDepartmentController/remove',0,'410989805699207168','gen:sysDepartment:remove',2,'entypo-trash',NULL,0),('4109898056992071724','部门修改','部门修改','/SysDepartmentController/edit',0,'410989805699207168','gen:sysDepartment:edit',2,'fa fa-wrench',NULL,0),('411522822607867904','用户管理','用户管理','#',0,'496782496638173184','#',1,'fa fa-id-badge',3,0),('416728309741785088','应用管理','','/portal/app/view',0,'592059865673760768','portal:app:save',1,'fa fa-window-restore',0,0),('486690002869157888','用户密码修改','用户密码修改','/UserController/editPwd',0,'4','system:user:editPwd',2,'entypo-tools',3,0),('496126970468237312','日志展示','日志管理','/LogController/view',0,'592059865673760768','system:log:view',1,'fa fa-info',9,0),('496127240363311104','日志删除','日志删除','/LogController/remove',0,'496126970468237312','system:log:remove',2,'entypo-trash',NULL,0),('496127794879660032','日志集合','日志集合','/LogController/list',0,'496126970468237312','system:log:list',2,NULL,NULL,0),('496782496638173184','系统设置','后台设置',NULL,0,'1',NULL,0,'fa fa-gear',3,0),('5','用户集合','用户集合','/UserController/list',0,'4','system:user:list',2,'',NULL,0),('581541547099553792','druid监控','druid监控','/druid/',0,'617766548966211584','user:list',1,'fa fa-line-chart',6,0),('583063272123531264','API文档','API文档','/swagger-ui.html',1,'617766548966211584','--',1,'fa fa-font',8,0),('586003694080753664','表单构建','表单构建','/ToolController/view',0,'617766548966211584','system:tool:view',1,'fa fa-list-alt',5,0),('587453033487532032','后台模板','后台模板','/static/admin/bootstarp/index.html',1,'617766548966211584','system:htmb:view',1,'fa fa-telegram',9,0),('589559475422101504','测试目录','测试目录',NULL,0,'1',NULL,0,'fa fa-etsy',5,1),('589559748521623552','一级菜单','测试菜单','#',0,'589559475422101504','#',1,'fa fa-address-book',NULL,0),('589559916704825344','二级菜单','二级菜单','#',0,'589559748521623552','#',1,'fa fa-address-book',1,0),('592059865673760768','系统管理','后台管理','#',0,'496782496638173184','#',1,'fa fa-home',1,0),('592067570522128384','测试跳转','测试跳转','http://www.baidu.com',1,'589559748521623552','#',1,'fa fa-address-book',NULL,0),('592167738407911424','系统监控','系统监控','/ServiceController/view',0,'617766548966211584','system:service:view',1,'fa fa-video-camera',7,0),('594691026430459904','电子邮件管理','电子邮件展示','/EmailController/view',0,'592059865673760768','system:email:view',1,'fa fa-envelope',8,0),('5946910264304599041','电子邮件集合','电子邮件集合','/EmailController/list',0,'594691026430459904','system:email:list',2,'',NULL,0),('5946910264304599042','电子邮件添加','电子邮件添加','/EmailController/add',0,'594691026430459904','system:email:add',2,'entypo-plus-squared',NULL,0),('5946910264304599043','电子邮件删除','电子邮件删除','/EmailController/remove',0,'594691026430459904','system:email:remove',2,'entypo-trash',NULL,0),('5946910264304599044','电子邮件修改','电子邮件修改','/EmailController/edit',0,'594691026430459904','system:email:edit',2,'fa fa-wrench',NULL,0),('6','用户添加','用户添加','/UserController/add',0,'4','system:user:add',2,'entypo-plus-squared',NULL,0),('610635485890478080','代码生成新','代码生成2','#',0,'617751079701970944','#',1,'fa fa-blind',1,0),('610635950447394816','全局配置','','/autoCodeController/global',0,'610635485890478080','system:autocode:global',1,'fa fa-university',NULL,0),('610983815791247360','单表生成','','/autoCodeController/one',0,'610635485890478080','system:autocode:one',1,'fa fa-hand-peace-o',NULL,0),('617751079701970944','代码生成','代码生成',NULL,0,'1',NULL,0,'fa fa-500px',4,1),('617766548966211584','系统工具','系统工具','#',0,'496782496638173184','#',1,'fa fa-th-large',2,0),('618918631769636864','字典管理','字典类型表展示','/DictTypeController/view',0,'592059865673760768','system:dictType:view',1,'fa fa-puzzle-piece',11,0),('6189186317738311681','字典类型表集合','字典类型表集合','/DictTypeController/list',0,'618918631769636864','system:dictType:list',2,NULL,NULL,0),('6189186317948026882','字典类型表添加','字典类型表添加','/DictTypeController/add',0,'618918631769636864','system:dictType:add',2,NULL,NULL,0),('6189186317948026883','字典类型表删除','字典类型表删除','/DictTypeController/remove',0,'618918631769636864','system:dictType:remove',2,NULL,NULL,0),('6189186317989969924','字典类型表修改','字典类型表修改','/DictTypeController/edit',0,'618918631769636864','system:dictType:edit',2,NULL,NULL,0),('6192095214866268161','字典数据表集合','字典数据表集合','/DictDataController/list',0,'618918631769636864','system:dictData:list',2,NULL,NULL,0),('6192095214866268162','字典数据表添加','字典数据表添加','/DictDataController/add',0,'618918631769636864','system:dictData:add',2,NULL,NULL,0),('6192095215075983363','字典数据表删除','字典数据表删除','/DictDataController/remove',0,'618918631769636864','system:dictData:remove',2,NULL,NULL,0),('6192095215075983364','字典数据表修改','字典数据表修改','/DictDataController/edit',0,'618918631769636864','system:dictData:edit',2,NULL,NULL,0),('619836559427895296','字典数据视图','字典数据视图','/DictDataController/view',0,'618918631769636864','system:dictData:view',2,NULL,NULL,0),('7','用户删除','用户删除','/UserController/remove',0,'4','system:user:remove',2,'entypo-trash',NULL,0),('8','用户修改','用户修改','/UserController/edit',0,'4','system:user:edit',2,'fa fa-wrench',NULL,0),('9','角色管理','角色展示','/RoleController/view',0,'411522822607867904','system:role:view',1,'fa fa-group',2,0);
/*!40000 ALTER TABLE `t_sys_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_permission_role`
--

DROP TABLE IF EXISTS `t_sys_permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_permission_role` (
  `id` varchar(255) NOT NULL,
  `role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(255) DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_permission_role`
--

LOCK TABLES `t_sys_permission_role` WRITE;
/*!40000 ALTER TABLE `t_sys_permission_role` DISABLE KEYS */;
INSERT INTO `t_sys_permission_role` VALUES ('01336bc3-bd7c-4b00-b3b5-bb33f5d037ec','488243256161730560','410989805699207168'),('030f0cdf-ac93-42d1-bdf4-bef906a7d049','488243256161730560','15'),('03395c76-4905-460e-90ff-727663d6b087','488243256161730560','340066503263129600'),('0594d836-3479-4ae7-86bc-5a01cb7335b4','488243256161730560','3400961831355064364'),('07336b37-4042-42c2-a0e7-af841070ea1b','488243256161730560','340127412270534656'),('0896d5bf-f6ac-46fd-94fa-11123f1b7205','488243256161730560','6189186317989969924'),('0c486375-7905-4701-8214-ca73112da5ff','488243256161730560','332857281479839744'),('0eebe423-7c40-4dc7-9d55-0fa37833d560','488243256161730560','379959240841891840'),('12002494-d796-4962-aabc-5eae99091696','488243256161730560','592067570522128384'),('12255fc6-1094-487c-a03a-5f1c927e471c','488243256161730560','617766548966211584'),('149c2408-291d-405b-a59a-475ca59a98fd','488243256161730560','3401274122705346571'),('1c3c3905-50d2-4fd3-8f13-dfcce46a4e54','488243256161730560','21'),('1c5c7918-cf35-48ef-b31e-59f34ae00b02','488243256161730560','13'),('216e672e-626a-4e7b-8611-7b0645183b4c','488243256161730560','7'),('218e072f-5098-469a-88f4-5428dfa946b7','488243256161730560','3799592408418918411'),('21a04abc-4efd-4ae1-9157-a896d6182281','488243256161730560','592167738407911424'),('22cecc1e-1f4d-4262-b405-c57cd96e74e9','488243256161730560','3734899074291507222'),('25019d48-59fc-4456-9a25-8aa90c065128','488243256161730560','610635485890478080'),('2531d3b6-7d56-4c64-bb18-e7e63e0d184c','488243256161730560','3401274122705346604'),('266f5a2b-d85b-4893-a01c-7f5fc201e0aa','488243256161730560','4109898056992071713'),('267e13ff-b616-419b-9cc8-6efa5b35d275','488243256161730560','618918631769636864'),('2d715ba9-e6b3-4553-9243-dad4c32d0450','488243256161730560','330365026642825216'),('3075faf6-cad8-4af6-bf5d-15a5aca24d6a','488243256161730560','3400681518049566764'),('31eee237-a208-48ee-bf90-247c725a6369','488243256161730560','610983815791247360'),('33a2d79d-b0b7-42bd-abe9-eae360531e6c','488243256161730560','16'),('34ab4f93-b9e3-48aa-85b8-34fbfceb6a75','488243256161730560','619836559427895296'),('37ffa259-9c03-4989-a88b-fa40297b4634','488243256161730560','3400681518049566731'),('3947c4e5-6024-42d7-afd4-af39c67e37bf','488243256161730560','610635950447394816'),('3b1769a2-dcc2-4adf-96f3-ee2af28c0204','488243256161730560','4107917018594058273'),('3b492ba8-965b-431a-8af4-66cac9503b42','488243256161730560','3401274122705346582'),('3c690f49-e6a6-4637-9947-75f1e509fbad','488243256161730560','340096183135506432'),('3dcc26b9-f9e1-48d7-910f-8e2c44d8c52e','488243256161730560','354851114446884864'),('3dea6d48-5bcc-4f7c-93e9-3fa47edf888d','488243256161730560','496782496638173184'),('40532049-385c-41cf-b300-dd48774a4edd','488243256161730560','5'),('421ed77e-4e95-45e3-821e-f6b9cf3d1930','488243256161730560','6192095215075983363'),('4642b934-619b-40d5-aebf-635ce90b7a4e','488243256161730560','19'),('48950c92-da7c-4d50-af45-de34f5f4ed68','488243256161730560','373489907429150720'),('48bec011-ed4e-4bbb-836e-f57e9ca868ce','488243256161730560','4109898056992071702'),('4bf3aba8-4732-4208-9693-d8becb4d069b','488243256161730560','4107917018594058284'),('4c2051d4-2dc4-4ad9-89b0-a58f0f13759f','488243256161730560','17'),('56332c7c-9654-42c5-81e7-b40c7e677899','488243256161730560','587453033487532032'),('593db3b6-e54d-4dae-b212-acc23b797300','488243256161730560','589559475422101504'),('5a10a322-0361-4917-8e5f-d487c6074bed','488243256161730560','411522822607867904'),('5dc8ea13-f61e-448a-a0b7-aa69d8aabefc','488243256161730560','3799592408418918422'),('5eb4d61b-73cb-4bff-8a4e-a6a237fd3d99','488243256161730560','581541547099553792'),('5f0efe7c-84a3-4aa2-9ab7-3ab516526ecd','488243256161730560','5946910264304599042'),('60b0b279-afee-4a7e-967d-01d6bbbb9584','488243256161730560','3321578609202995244'),('61ef5d6c-901e-44c0-9abf-c8bc69eb07c1','488243256161730560','3328572814798397451'),('63f987dd-6766-496e-9d35-8ca8d6be2349','488243256161730560','3400681518049566753'),('6696f1e2-2ed0-4e4d-b505-a0939e43685f','488243256161730560','416728309741785088'),('67c28b3d-af3c-4b98-acd2-fa2367bc6f83','488243256161730560','340068151804956672'),('6a2ff83d-a93e-4077-b15d-f1a925072610','488243256161730560','496127240363311104'),('70c6c52d-a7d0-4b87-8a11-0a735fcbd885','488243256161730560','486690002869157888'),('744263ad-1504-4329-b965-b5c439785276','488243256161730560','617751079701970944'),('74ed5856-4eb0-4943-b10b-8d0f07f88cd7','488243256161730560','3303650266428252193'),('75a5763b-9e9c-4079-a677-589242e5e09d','488243256161730560','3401274122705346593'),('76ef8cff-45a2-415d-b51c-572159a5d9c4','488243256161730560','12'),('778ab6b6-5627-4d98-81b6-a5ec0389bf40','488243256161730560','340301160042860544'),('7885578f-ac35-4d73-9558-ad3f4153abad','488243256161730560','6189186317948026882'),('796be95e-429c-4f50-b2b1-a6afe8577850','488243256161730560','3303650266428252204'),('79cb0563-8443-454f-91a7-3316f27490a8','488243256161730560','6192095214866268161'),('7a64b294-53de-4f1a-9395-9a378dcd2d9d','488243256161730560','354865752219717632'),('7abda4d1-543c-4e40-8345-2c1e393cfbe4','488243256161730560','14'),('7b1d27b8-4c53-4e62-86c0-5267eab4e012','488243256161730560','594691026430459904'),('829f95d6-3165-482d-b005-31984dc3ea11','488243256161730560','6189186317948026883'),('82b1916d-94ac-4750-bfab-704c0fd63ef2','488243256161730560','6189186317738311681'),('83b19d08-222c-4ec8-8a94-1d6c14826988','488243256161730560','5946910264304599044'),('83bf0ab5-e06d-42a0-8d63-46cc4cb968c9','488243256161730560','6'),('84d5085b-852d-459f-878f-ae32f1ef20c0','488243256161730560','3400961831355064342'),('85848fda-869c-4565-99b6-99b5245c402e','488243256161730560','410791701859405824'),('867f633e-36cc-4305-9ba8-93c88779f2ef','488243256161730560','3321578609202995222'),('874c297a-47e2-4d4c-8904-6501b9c91ec4','488243256161730560','20'),('891d2363-8a99-47fd-b49b-aab3b0c8443b','488243256161730560','3799592408418918433'),('8a1f4910-3fb2-4f8e-9c15-32c2e08c0c02','488243256161730560','8'),('8a64eca9-f395-4d8d-be9f-b591e0cb01b6','488243256161730560','3400961831355064353'),('8e41db17-7b1b-44c7-b127-8ad7f0736256','488243256161730560','332157860920299520'),('8f063226-5f3a-4029-beec-b30700278832','488243256161730560','4107917018594058251'),('915b4745-3944-43dc-8a85-3242df616315','488243256161730560','586003694080753664'),('92c8b786-bcee-4369-a72e-74c7898200b9','488243256161730560','3734899074291507211'),('983a29a0-c980-4395-a962-aedb3dce6019','488243256161730560','4'),('9a151fd5-f033-4af0-9ebc-20fe7b3a71d4','488243256161730560','10'),('a1360b36-6c9c-4a5c-b0b0-3b927e9d3cf1','488243256161730560','18'),('a14719d9-59ad-4d5d-b4f6-32f284ce2087','488243256161730560','3328572814798397473'),('a85e3271-8ce3-4d5e-90cb-7ccc7a0de832','488243256161730560','340088022018166784'),('aa90d73f-10f7-4a5c-9f52-86d0e69cf76f','488243256161730560','5946910264304599041'),('ad2fa3de-e7d2-4c80-9165-be3c3c068436','488243256161730560','3400880220181667884'),('aee9c0b0-ae40-4cae-8b0a-19196fa4646b','488243256161730560','3321578609202995233'),('b4b762bc-3f45-4541-9bfe-fcc4e8137897','488243256161730560','3303650266428252171'),('b60fabb0-482e-4700-8748-b9a6f5e727f8','488243256161730560','3303650266428252182'),('b647d51c-fb01-4fa8-a1dd-2eda96afac61','488243256161730560','4107917018594058262'),('b699ae92-74d5-4edf-bb98-15349db5754d','488243256161730560','589559916704825344'),('be6a9fba-5736-4039-9a01-3a0b3610dae3','488243256161730560','6192095214866268162'),('bf63f095-d7df-48fe-81f3-549c5dc85dae','488243256161730560','583063272123531264'),('c08a400f-a9db-4d30-9a1f-2d4d31fe353f','488243256161730560','11'),('c25328eb-1f0a-46f4-8635-d6e3e9a61b09','488243256161730560','335330315113467904'),('c5001ab1-ba9d-40d0-a0c0-f0b0d9b595b2','488243256161730560','331778807298134016'),('c7be331f-e653-4a82-9347-b300d652ba06','488243256161730560','3400880220181667851'),('c857823d-eaf1-4e96-9fa4-3b3f5df6c673','488243256161730560','3400880220181667873'),('cd688067-5b73-4ca3-8b69-ba9ff9835c2d','488243256161730560','592059865673760768'),('cda42b56-d4a0-4cfb-a919-3d6848501518','488243256161730560','496127794879660032'),('d0c105a4-d093-4230-a057-973d041d6462','488243256161730560','6192095215075983364'),('d517699e-cadb-4de4-8ffb-eaa93d3ecac6','488243256161730560','3400880220181667862'),('d5d5fce0-4f84-4ddd-93e1-fdb1d92ae524','488243256161730560','5946910264304599043'),('d63c025e-0514-44ad-ba73-07ba906a52f6','488243256161730560','3400681518049566742'),('d755790f-0ed7-4c22-a10f-28eb95826f1d','488243256161730560','4109898056992071691'),('d8f9c1ef-ca1c-458f-9f06-fb90704ff85b','488243256161730560','22'),('db0b7ad9-e75e-4d0c-b241-5dbb8e20e270','488243256161730560','4109898056992071724'),('e2c423a7-7d32-48ba-b3ac-119cce20ad58','488243256161730560','3799592408418918444'),('e56d30fa-3709-49ac-88a6-3ca1ac2ef3af','488243256161730560','340381240911859712'),('ea625e66-10f1-4ff9-a43a-725a8b6fa4ef','488243256161730560','496126970468237312'),('edccedcd-56b4-4110-a12f-e2fd67bdbe5b','488243256161730560','3321578609202995211'),('ee97f713-32fc-4e42-b14f-1b3a886787da','488243256161730560','589559748521623552'),('f315c1bd-a7fd-4b65-a84d-f6fc6f307990','488243256161730560','3734899074291507244'),('f347ca43-c0ad-40e4-8a1d-905f7eee841e','488243256161730560','9'),('f3af6753-deb9-4904-94cd-cd44d319d410','488243256161730560','3400961831355064331'),('f5d4479f-8e69-4b49-9abb-c4324b80ad9c','488243256161730560','23'),('f7548fd6-637a-4686-a2f9-674c38c5bffc','488243256161730560','3734899074291507233'),('f94cca17-d20a-400d-899d-a129762b4bea','488243256161730560','340067579836108800'),('fa09c261-5171-41ad-883e-f16f41aab5ac','488243256161730560','1');
/*!40000 ALTER TABLE `t_sys_permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_position`
--

DROP TABLE IF EXISTS `t_sys_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_position` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `post_name` varchar(255) DEFAULT NULL COMMENT '岗位名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='岗位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_position`
--

LOCK TABLES `t_sys_position` WRITE;
/*!40000 ALTER TABLE `t_sys_position` DISABLE KEYS */;
INSERT INTO `t_sys_position` VALUES ('410792368778907648','总经理',1,1),('410792443127140352','技术经理',2,1),('410792478929719296','人事经理',3,1),('411477874382606336','员工',4,1);
/*!40000 ALTER TABLE `t_sys_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_province`
--

DROP TABLE IF EXISTS `t_sys_province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_province` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `province_code` varchar(40) NOT NULL COMMENT '省份代码',
  `province_name` varchar(50) NOT NULL COMMENT '省份名称',
  `short_name` varchar(20) NOT NULL COMMENT '简称',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`province_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='省份表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_province`
--

LOCK TABLES `t_sys_province` WRITE;
/*!40000 ALTER TABLE `t_sys_province` DISABLE KEYS */;
INSERT INTO `t_sys_province` VALUES (22,'500000','重庆','重庆','106.504959','29.533155',22,'2019-02-28 17:16:58','2019-02-28 17:17:05','',0);
/*!40000 ALTER TABLE `t_sys_province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_quartz_job`
--

DROP TABLE IF EXISTS `t_sys_quartz_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_quartz_job` (
  `id` varchar(255) NOT NULL COMMENT '日志id',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) DEFAULT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` varchar(255) DEFAULT NULL COMMENT 'cron计划策略',
  `concurrent` varchar(255) DEFAULT NULL COMMENT '是否并发执行（0允许 1禁止）',
  `status` int(11) DEFAULT NULL COMMENT '任务状态（0正常 1暂停）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_quartz_job`
--

LOCK TABLES `t_sys_quartz_job` WRITE;
/*!40000 ALTER TABLE `t_sys_quartz_job` DISABLE KEYS */;
INSERT INTO `t_sys_quartz_job` VALUES ('332182389491109888','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','*/10 * * * * ?','12','1',1);
/*!40000 ALTER TABLE `t_sys_quartz_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_quartz_job_log`
--

DROP TABLE IF EXISTS `t_sys_quartz_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_quartz_job_log` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `job_name` varchar(255) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(255) DEFAULT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) DEFAULT NULL COMMENT '调用目标字符串',
  `job_message` varchar(255) DEFAULT NULL COMMENT '日志信息',
  `status` int(11) DEFAULT NULL COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(255) DEFAULT NULL COMMENT '异常信息',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_quartz_job_log`
--

LOCK TABLES `t_sys_quartz_job_log` WRITE;
/*!40000 ALTER TABLE `t_sys_quartz_job_log` DISABLE KEYS */;
INSERT INTO `t_sys_quartz_job_log` VALUES ('333610541354455040','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：3毫秒',0,NULL,'2019-09-17 00:16:01','2019-09-17 00:16:01'),('333610547549442048','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：1毫秒',0,NULL,'2019-09-17 00:16:03','2019-09-17 00:16:03'),('333610553832509440','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：0毫秒',0,NULL,'2019-09-17 00:16:04','2019-09-17 00:16:04'),('333610558995697664','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：0毫秒',0,NULL,'2019-09-17 00:16:06','2019-09-17 00:16:06'),('333610566486724608','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：0毫秒',0,NULL,'2019-09-17 00:16:07','2019-09-17 00:16:07'),('333610572270669824','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：0毫秒',0,NULL,'2019-09-17 00:16:09','2019-09-17 00:16:09'),('354984595927732224','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：3毫秒',0,NULL,'2019-11-14 23:48:53','2019-11-14 23:48:53'),('354990312722141184','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：2毫秒',0,NULL,'2019-11-15 00:11:36','2019-11-15 00:11:36'),('354996339316232192','v2Task2','SYSTEM','v2Task.runTask2(1,2l,\'asa\',true,2D)','v2Task2 总共耗时：3毫秒',0,NULL,'2019-11-15 00:35:33','2019-11-15 00:35:33');
/*!40000 ALTER TABLE `t_sys_quartz_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_role`
--

DROP TABLE IF EXISTS `t_sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_role` (
  `id` varchar(255) NOT NULL COMMENT 'id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_role`
--

LOCK TABLES `t_sys_role` WRITE;
/*!40000 ALTER TABLE `t_sys_role` DISABLE KEYS */;
INSERT INTO `t_sys_role` VALUES ('488243256161730560','管理员'),('488289006124007424','用户'),('488305788310257664','能修改用户密码角色');
/*!40000 ALTER TABLE `t_sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_role_user`
--

DROP TABLE IF EXISTS `t_sys_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_role_user` (
  `id` varchar(255) NOT NULL,
  `sys_user_id` varchar(255) DEFAULT NULL COMMENT '用户id',
  `sys_role_id` varchar(255) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色中间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_role_user`
--

LOCK TABLES `t_sys_role_user` WRITE;
/*!40000 ALTER TABLE `t_sys_role_user` DISABLE KEYS */;
INSERT INTO `t_sys_role_user` VALUES ('353711021275353089','353711021275353088','488289006124007424'),('353714370687143936','488294747442511872','488289006124007424'),('354984037766533120','354984005751410688','488243256161730560'),('354988722443390977','354988722443390976','488243256161730560'),('354989789679849472','354989789675655168','488305788310257664'),('594342089710370816','1','488243256161730560'),('612107905532952576','612107905532952576','488289006124007424'),('612107905537146880','612107905532952576','488305788310257664');
/*!40000 ALTER TABLE `t_sys_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_street`
--

DROP TABLE IF EXISTS `t_sys_street`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_street` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增列',
  `street_code` varchar(40) NOT NULL COMMENT '街道代码',
  `area_code` varchar(40) DEFAULT NULL COMMENT '父级区代码',
  `street_name` varchar(50) NOT NULL COMMENT '街道名称',
  `short_name` varchar(30) NOT NULL COMMENT '简称',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `sort` int(6) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  `memo` varchar(250) DEFAULT NULL COMMENT '备注',
  `data_state` int(11) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `Index_1` (`street_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='街道设置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_street`
--

LOCK TABLES `t_sys_street` WRITE;
/*!40000 ALTER TABLE `t_sys_street` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sys_street` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_user`
--

DROP TABLE IF EXISTS `t_sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_user` (
  `id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '主键',
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_user`
--

LOCK TABLES `t_sys_user` WRITE;
/*!40000 ALTER TABLE `t_sys_user` DISABLE KEYS */;
INSERT INTO `t_sys_user` VALUES ('1','admin','21232f297a57a5a743894a0e4a801fc3','管理员');
/*!40000 ALTER TABLE `t_sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_test`
--

DROP TABLE IF EXISTS `t_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_test` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `age` int(11) DEFAULT NULL COMMENT '性别',
  `crate_time` datetime DEFAULT NULL COMMENT '创建时间',
  `tes_name` varchar(255) DEFAULT NULL COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_test`
--

LOCK TABLES `t_test` WRITE;
/*!40000 ALTER TABLE `t_test` DISABLE KEYS */;
INSERT INTO `t_test` VALUES ('382894613100367872','111',11,'2020-01-31 00:00:00','1'),('382894651864125440','22',22,'2020-01-31 00:00:00','22'),('382895269890625536','333',33,'1899-12-31 00:00:00','3333'),('382895290488852480','4',44444,'2020-01-31 00:00:00','4444444444');
/*!40000 ALTER TABLE `t_test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-03  9:19:28
