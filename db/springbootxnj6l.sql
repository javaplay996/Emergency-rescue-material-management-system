-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springbootxnj6l
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springbootxnj6l`
--

/*!40000 DROP DATABASE IF EXISTS `springbootxnj6l`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springbootxnj6l` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springbootxnj6l`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `gonggaotupian` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2022-05-06 13:09:16','公告标题1','资讯','upload/gonggaoxinxi_gonggaotupian1.jpg','公告内容1','2022-05-06'),(12,'2022-05-06 13:09:16','公告标题2','资讯','upload/gonggaoxinxi_gonggaotupian2.jpg','公告内容2','2022-05-06'),(13,'2022-05-06 13:09:16','公告标题3','资讯','upload/gonggaoxinxi_gonggaotupian3.jpg','公告内容3','2022-05-06'),(14,'2022-05-06 13:09:16','公告标题4','资讯','upload/gonggaoxinxi_gonggaotupian4.jpg','公告内容4','2022-05-06'),(15,'2022-05-06 13:09:16','公告标题5','资讯','upload/gonggaoxinxi_gonggaotupian5.jpg','公告内容5','2022-05-06'),(16,'2022-05-06 13:09:16','公告标题6','资讯','upload/gonggaoxinxi_gonggaotupian6.jpg','公告内容6','2022-05-06');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-05-06 13:09:17');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzichuku`
--

DROP TABLE IF EXISTS `wuzichuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzichuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chukubianhao` varchar(200) DEFAULT NULL COMMENT '出库编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzitupian` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuzishuliang` int(11) NOT NULL COMMENT '物资数量',
  `chukuriqi` date DEFAULT NULL COMMENT '出库日期',
  `chukuleixing` varchar(200) DEFAULT NULL COMMENT '出库类型',
  `chukubeizhu` longtext COMMENT '出库备注',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chukubianhao` (`chukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='物资出库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzichuku`
--

LOCK TABLES `wuzichuku` WRITE;
/*!40000 ALTER TABLE `wuzichuku` DISABLE KEYS */;
INSERT INTO `wuzichuku` VALUES (61,'2022-05-06 13:09:17','1111111111','物资名称1','物资分类1','upload/wuzichuku_wuzitupian1.jpg',1,'2022-05-06','出库类型1','出库备注1','用户名1','姓名1','13823888881'),(62,'2022-05-06 13:09:17','2222222222','物资名称2','物资分类2','upload/wuzichuku_wuzitupian2.jpg',2,'2022-05-06','出库类型2','出库备注2','用户名2','姓名2','13823888882'),(63,'2022-05-06 13:09:17','3333333333','物资名称3','物资分类3','upload/wuzichuku_wuzitupian3.jpg',3,'2022-05-06','出库类型3','出库备注3','用户名3','姓名3','13823888883'),(64,'2022-05-06 13:09:17','4444444444','物资名称4','物资分类4','upload/wuzichuku_wuzitupian4.jpg',4,'2022-05-06','出库类型4','出库备注4','用户名4','姓名4','13823888884'),(65,'2022-05-06 13:09:17','5555555555','物资名称5','物资分类5','upload/wuzichuku_wuzitupian5.jpg',5,'2022-05-06','出库类型5','出库备注5','用户名5','姓名5','13823888885'),(66,'2022-05-06 13:09:17','6666666666','物资名称6','物资分类6','upload/wuzichuku_wuzitupian6.jpg',6,'2022-05-06','出库类型6','出库备注6','用户名6','姓名6','13823888886');
/*!40000 ALTER TABLE `wuzichuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuziruku`
--

DROP TABLE IF EXISTS `wuziruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuziruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzitupian` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuzishuliang` int(11) NOT NULL COMMENT '物资数量',
  `rukuriqi` date DEFAULT NULL COMMENT '入库日期',
  `rukubeizhu` longtext COMMENT '入库备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='物资入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuziruku`
--

LOCK TABLES `wuziruku` WRITE;
/*!40000 ALTER TABLE `wuziruku` DISABLE KEYS */;
INSERT INTO `wuziruku` VALUES (41,'2022-05-06 13:09:16','1111111111','物资名称1','物资分类1','upload/wuziruku_wuzitupian1.jpg',1,'2022-05-06','入库备注1'),(42,'2022-05-06 13:09:16','2222222222','物资名称2','物资分类2','upload/wuziruku_wuzitupian2.jpg',2,'2022-05-06','入库备注2'),(43,'2022-05-06 13:09:16','3333333333','物资名称3','物资分类3','upload/wuziruku_wuzitupian3.jpg',3,'2022-05-06','入库备注3'),(44,'2022-05-06 13:09:16','4444444444','物资名称4','物资分类4','upload/wuziruku_wuzitupian4.jpg',4,'2022-05-06','入库备注4'),(45,'2022-05-06 13:09:16','5555555555','物资名称5','物资分类5','upload/wuziruku_wuzitupian5.jpg',5,'2022-05-06','入库备注5'),(46,'2022-05-06 13:09:16','6666666666','物资名称6','物资分类6','upload/wuziruku_wuzitupian6.jpg',6,'2022-05-06','入库备注6');
/*!40000 ALTER TABLE `wuziruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzishenling`
--

DROP TABLE IF EXISTS `wuzishenling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzishenling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenlingdanhao` varchar(200) DEFAULT NULL COMMENT '申领单号',
  `wuzimingcheng` varchar(200) DEFAULT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) DEFAULT NULL COMMENT '物资分类',
  `wuzitupian` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuzishuliang` int(11) DEFAULT NULL COMMENT '物资数量',
  `shenlingshuliang` int(11) NOT NULL COMMENT '申领数量',
  `shenlingshuoming` longtext COMMENT '申领说明',
  `shenlingriqi` date DEFAULT NULL COMMENT '申领日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenlingdanhao` (`shenlingdanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='物资申领';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzishenling`
--

LOCK TABLES `wuzishenling` WRITE;
/*!40000 ALTER TABLE `wuzishenling` DISABLE KEYS */;
INSERT INTO `wuzishenling` VALUES (51,'2022-05-06 13:09:16','1111111111','物资名称1','物资分类1','upload/wuzishenling_wuzitupian1.jpg',1,1,'申领说明1','2022-05-06','用户名1','姓名1','13823888881','是',''),(52,'2022-05-06 13:09:16','2222222222','物资名称2','物资分类2','upload/wuzishenling_wuzitupian2.jpg',2,2,'申领说明2','2022-05-06','用户名2','姓名2','13823888882','是',''),(53,'2022-05-06 13:09:16','3333333333','物资名称3','物资分类3','upload/wuzishenling_wuzitupian3.jpg',3,3,'申领说明3','2022-05-06','用户名3','姓名3','13823888883','是',''),(54,'2022-05-06 13:09:17','4444444444','物资名称4','物资分类4','upload/wuzishenling_wuzitupian4.jpg',4,4,'申领说明4','2022-05-06','用户名4','姓名4','13823888884','是',''),(55,'2022-05-06 13:09:17','5555555555','物资名称5','物资分类5','upload/wuzishenling_wuzitupian5.jpg',5,5,'申领说明5','2022-05-06','用户名5','姓名5','13823888885','是',''),(56,'2022-05-06 13:09:17','6666666666','物资名称6','物资分类6','upload/wuzishenling_wuzitupian6.jpg',6,6,'申领说明6','2022-05-06','用户名6','姓名6','13823888886','是','');
/*!40000 ALTER TABLE `wuzishenling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuzixinxi`
--

DROP TABLE IF EXISTS `wuzixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wuzixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wuzimingcheng` varchar(200) NOT NULL COMMENT '物资名称',
  `wuzifenlei` varchar(200) NOT NULL COMMENT '物资分类',
  `wuzitupian` varchar(200) DEFAULT NULL COMMENT '物资图片',
  `wuziguige` varchar(200) DEFAULT NULL COMMENT '物资规格',
  `wuzipinpai` varchar(200) DEFAULT NULL COMMENT '物资品牌',
  `wuzishuliang` int(11) NOT NULL COMMENT '物资数量',
  `wuzixiangqing` longtext COMMENT '物资详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='物资信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuzixinxi`
--

LOCK TABLES `wuzixinxi` WRITE;
/*!40000 ALTER TABLE `wuzixinxi` DISABLE KEYS */;
INSERT INTO `wuzixinxi` VALUES (31,'2022-05-06 13:09:16','物资名称1','物资分类1','upload/wuzixinxi_wuzitupian1.jpg','物资规格1','物资品牌1',1,'物资详情1'),(32,'2022-05-06 13:09:16','物资名称2','物资分类2','upload/wuzixinxi_wuzitupian2.jpg','物资规格2','物资品牌2',2,'物资详情2'),(33,'2022-05-06 13:09:16','物资名称3','物资分类3','upload/wuzixinxi_wuzitupian3.jpg','物资规格3','物资品牌3',3,'物资详情3'),(34,'2022-05-06 13:09:16','物资名称4','物资分类4','upload/wuzixinxi_wuzitupian4.jpg','物资规格4','物资品牌4',4,'物资详情4'),(35,'2022-05-06 13:09:16','物资名称5','物资分类5','upload/wuzixinxi_wuzitupian5.jpg','物资规格5','物资品牌5',5,'物资详情5'),(36,'2022-05-06 13:09:16','物资名称6','物资分类6','upload/wuzixinxi_wuzitupian6.jpg','物资规格6','物资品牌6',6,'物资详情6');
/*!40000 ALTER TABLE `wuzixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2022-05-06 13:09:16','用户名1','123456','姓名1','男','upload/yonghu_touxiang1.jpg','13823888881'),(22,'2022-05-06 13:09:16','用户名2','123456','姓名2','男','upload/yonghu_touxiang2.jpg','13823888882'),(23,'2022-05-06 13:09:16','用户名3','123456','姓名3','男','upload/yonghu_touxiang3.jpg','13823888883'),(24,'2022-05-06 13:09:16','用户名4','123456','姓名4','男','upload/yonghu_touxiang4.jpg','13823888884'),(25,'2022-05-06 13:09:16','用户名5','123456','姓名5','男','upload/yonghu_touxiang5.jpg','13823888885'),(26,'2022-05-06 13:09:16','用户名6','123456','姓名6','男','upload/yonghu_touxiang6.jpg','13823888886');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 21:10:14
