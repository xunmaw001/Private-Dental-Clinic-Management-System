-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmm1dva
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
-- Current Database: `jspmm1dva`
--

/*!40000 DROP DATABASE IF EXISTS `jspmm1dva`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jspmm1dva` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `jspmm1dva`;

--
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aboutus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2023-02-05 13:13:56','你是最棒的','ABOUT US','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?\r\n你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。测试</p>','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `binglixinxi`
--

DROP TABLE IF EXISTS `binglixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `binglixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `binglibianhao` varchar(200) DEFAULT NULL COMMENT '病例编号',
  `binglimingcheng` varchar(200) DEFAULT NULL COMMENT '病例名称',
  `binglileixing` varchar(200) DEFAULT NULL COMMENT '病例类型',
  `tupian` longtext COMMENT '图片',
  `binglishipin` longtext COMMENT '病例视频',
  `binglijiangjie` longtext COMMENT '病例讲解',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `binglibianhao` (`binglibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603241823 DEFAULT CHARSET=utf8 COMMENT='病例信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `binglixinxi`
--

LOCK TABLES `binglixinxi` WRITE;
/*!40000 ALTER TABLE `binglixinxi` DISABLE KEYS */;
INSERT INTO `binglixinxi` VALUES (31,'2023-02-05 13:13:55','1111111111','病例名称1','历史病例','upload/binglixinxi_tupian1.jpg,upload/binglixinxi_tupian2.jpg,upload/binglixinxi_tupian3.jpg','','病例讲解1','2023-02-05 21:13:55',1),(32,'2023-02-05 13:13:55','2222222222','病例名称2','历史病例','upload/binglixinxi_tupian2.jpg,upload/binglixinxi_tupian3.jpg,upload/binglixinxi_tupian4.jpg','','病例讲解2','2023-02-05 21:13:55',2),(33,'2023-02-05 13:13:55','3333333333','病例名称3','历史病例','upload/binglixinxi_tupian3.jpg,upload/binglixinxi_tupian4.jpg,upload/binglixinxi_tupian5.jpg','','病例讲解3','2023-02-05 21:13:55',3),(34,'2023-02-05 13:13:55','4444444444','病例名称4','历史病例','upload/binglixinxi_tupian4.jpg,upload/binglixinxi_tupian5.jpg,upload/binglixinxi_tupian6.jpg','','病例讲解4','2023-02-05 21:13:55',4),(35,'2023-02-05 13:13:55','5555555555','病例名称5','历史病例','upload/binglixinxi_tupian5.jpg,upload/binglixinxi_tupian6.jpg,upload/binglixinxi_tupian7.jpg','','病例讲解5','2023-02-05 21:13:55',5),(36,'2023-02-05 13:13:55','6666666666','病例名称6','历史病例','upload/binglixinxi_tupian6.jpg,upload/binglixinxi_tupian7.jpg,upload/binglixinxi_tupian8.jpg','','病例讲解6','2023-02-05 21:13:55',6),(37,'2023-02-05 13:13:55','7777777777','病例名称7','历史病例','upload/binglixinxi_tupian7.jpg,upload/binglixinxi_tupian8.jpg,upload/binglixinxi_tupian9.jpg','','病例讲解7','2023-02-05 21:13:55',7),(38,'2023-02-05 13:13:55','8888888888','病例名称8','历史病例','upload/binglixinxi_tupian8.jpg,upload/binglixinxi_tupian9.jpg,upload/binglixinxi_tupian10.jpg','','病例讲解8','2023-02-05 21:13:55',8),(1675603241822,'2023-02-05 13:20:41','1675603208','新冠新病历','新增病例','upload/1675603218123.jpeg','upload/1675603238781.mp4','<p><img src=\"http://localhost:8080/jspmm1dva/upload/1675603223275.jpeg\" width=\"900\" height=\"560\"/></p><p>这里可以发布一些相关介绍内容的。。。</p>','2023-02-05 21:20:08',21);
/*!40000 ALTER TABLE `binglixinxi` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `discussbinglixinxi`
--

DROP TABLE IF EXISTS `discussbinglixinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussbinglixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603306162 DEFAULT CHARSET=utf8 COMMENT='病例信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussbinglixinxi`
--

LOCK TABLES `discussbinglixinxi` WRITE;
/*!40000 ALTER TABLE `discussbinglixinxi` DISABLE KEYS */;
INSERT INTO `discussbinglixinxi` VALUES (1675603306161,'2023-02-05 13:21:45',1675603241822,1675602944410,'upload/1675602935415.jpeg','2','好可怕','不要怕做好防护');
/*!40000 ALTER TABLE `discussbinglixinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyaopinxinxi`
--

DROP TABLE IF EXISTS `discussyaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyaopinxinxi`
--

LOCK TABLES `discussyaopinxinxi` WRITE;
/*!40000 ALTER TABLE `discussyaopinxinxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussyaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussyisheng`
--

DROP TABLE IF EXISTS `discussyisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussyisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603280988 DEFAULT CHARSET=utf8 COMMENT='医生评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussyisheng`
--

LOCK TABLES `discussyisheng` WRITE;
/*!40000 ALTER TABLE `discussyisheng` DISABLE KEYS */;
INSERT INTO `discussyisheng` VALUES (1675603280987,'2023-02-05 13:21:20',21,1675602944410,'upload/1675602935415.jpeg','2','医生很棒的',NULL);
/*!40000 ALTER TABLE `discussyisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huanzhe`
--

DROP TABLE IF EXISTS `huanzhe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huanzhe` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1675602944411 DEFAULT CHARSET=utf8 COMMENT='患者';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huanzhe`
--

LOCK TABLES `huanzhe` WRITE;
/*!40000 ALTER TABLE `huanzhe` DISABLE KEYS */;
INSERT INTO `huanzhe` VALUES (11,'2023-02-05 13:13:55','1','1','姓名1','女','upload/huanzhe_touxiang1.jpg','年龄1','13823888881'),(12,'2023-02-05 13:13:55','用户名2','123456','姓名2','男','upload/huanzhe_touxiang2.jpg','年龄2','13823888882'),(13,'2023-02-05 13:13:55','用户名3','123456','姓名3','男','upload/huanzhe_touxiang3.jpg','年龄3','13823888883'),(14,'2023-02-05 13:13:55','用户名4','123456','姓名4','男','upload/huanzhe_touxiang4.jpg','年龄4','13823888884'),(15,'2023-02-05 13:13:55','用户名5','123456','姓名5','男','upload/huanzhe_touxiang5.jpg','年龄5','13823888885'),(16,'2023-02-05 13:13:55','用户名6','123456','姓名6','男','upload/huanzhe_touxiang6.jpg','年龄6','13823888886'),(17,'2023-02-05 13:13:55','用户名7','123456','姓名7','男','upload/huanzhe_touxiang7.jpg','年龄7','13823888887'),(18,'2023-02-05 13:13:55','用户名8','123456','姓名8','男','upload/huanzhe_touxiang8.jpg','年龄8','13823888888'),(1675602944410,'2023-02-05 13:15:44','2','1','张莉','女','upload/1675602935415.jpeg','18','15214121411');
/*!40000 ALTER TABLE `huanzhe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huanzhebingli`
--

DROP TABLE IF EXISTS `huanzhebingli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huanzhebingli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `binglibianhao` varchar(200) DEFAULT NULL COMMENT '病历编号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) NOT NULL COMMENT '性别',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) NOT NULL COMMENT '住址',
  `guominshi` varchar(200) NOT NULL COMMENT '过敏史',
  `zhenduanqingkuang` longtext NOT NULL COMMENT '诊断情况',
  `yaodanxinxi` longtext NOT NULL COMMENT '药单信息',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `binglibianhao` (`binglibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603408018 DEFAULT CHARSET=utf8 COMMENT='患者病历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huanzhebingli`
--

LOCK TABLES `huanzhebingli` WRITE;
/*!40000 ALTER TABLE `huanzhebingli` DISABLE KEYS */;
INSERT INTO `huanzhebingli` VALUES (51,'2023-02-05 13:13:56','1111111111','用户名1','姓名1','男','年龄1','13823888881','住址1','过敏史1','诊断情况1','药单信息1','账号1','医生姓名1',1,1),(52,'2023-02-05 13:13:56','2222222222','用户名2','姓名2','男','年龄2','13823888882','住址2','过敏史2','诊断情况2','药单信息2','账号2','医生姓名2',2,2),(53,'2023-02-05 13:13:56','3333333333','用户名3','姓名3','男','年龄3','13823888883','住址3','过敏史3','诊断情况3','药单信息3','账号3','医生姓名3',3,3),(54,'2023-02-05 13:13:56','4444444444','用户名4','姓名4','男','年龄4','13823888884','住址4','过敏史4','诊断情况4','药单信息4','账号4','医生姓名4',4,4),(55,'2023-02-05 13:13:56','5555555555','用户名5','姓名5','男','年龄5','13823888885','住址5','过敏史5','诊断情况5','药单信息5','账号5','医生姓名5',5,5),(56,'2023-02-05 13:13:56','6666666666','用户名6','姓名6','男','年龄6','13823888886','住址6','过敏史6','诊断情况6','药单信息6','账号6','医生姓名6',6,6),(57,'2023-02-05 13:13:56','7777777777','用户名7','姓名7','男','年龄7','13823888887','住址7','过敏史7','诊断情况7','药单信息7','账号7','医生姓名7',7,7),(58,'2023-02-05 13:13:56','8888888888','用户名8','姓名8','男','年龄8','13823888888','住址8','过敏史8','诊断情况8','药单信息8','账号8','医生姓名8',8,8),(1675603408017,'2023-02-05 13:23:27','1675603384','2','张莉','女','18','15214121411','上海市','没有','小感冒','吃点999感冒灵就好了','1','王医生',21,1675603271908);
/*!40000 ALTER TABLE `huanzhebingli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `avatarurl` longtext COMMENT '头像',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` longtext COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` longtext COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1675602973732 DEFAULT CHARSET=utf8 COMMENT='留言反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (131,'2023-02-05 13:13:56',1,'用户名1','upload/messages_avatarurl1.jpg','留言内容1','upload/messages_cpicture1.jpg','回复内容1','upload/messages_rpicture1.jpg'),(132,'2023-02-05 13:13:56',2,'用户名2','upload/messages_avatarurl2.jpg','留言内容2','upload/messages_cpicture2.jpg','回复内容2','upload/messages_rpicture2.jpg'),(133,'2023-02-05 13:13:56',3,'用户名3','upload/messages_avatarurl3.jpg','留言内容3','upload/messages_cpicture3.jpg','回复内容3','upload/messages_rpicture3.jpg'),(134,'2023-02-05 13:13:56',4,'用户名4','upload/messages_avatarurl4.jpg','留言内容4','upload/messages_cpicture4.jpg','回复内容4','upload/messages_rpicture4.jpg'),(135,'2023-02-05 13:13:56',5,'用户名5','upload/messages_avatarurl5.jpg','留言内容5','upload/messages_cpicture5.jpg','回复内容5','upload/messages_rpicture5.jpg'),(136,'2023-02-05 13:13:56',6,'用户名6','upload/messages_avatarurl6.jpg','留言内容6','upload/messages_cpicture6.jpg','回复内容6','upload/messages_rpicture6.jpg'),(137,'2023-02-05 13:13:56',7,'用户名7','upload/messages_avatarurl7.jpg','留言内容7','upload/messages_cpicture7.jpg','回复内容7','upload/messages_rpicture7.jpg'),(138,'2023-02-05 13:13:56',8,'用户名8','upload/messages_avatarurl8.jpg','留言内容8','upload/messages_cpicture8.jpg','回复内容8','upload/messages_rpicture8.jpg'),(1675602973731,'2023-02-05 13:16:13',1675602944410,'2','upload/1675602935415.jpeg','有什么问题或者意见都是可以在这里进行反馈给管理员的，管理员可以进行回复','upload/1675602972621.jpeg','好的可以的','upload/1675603125266.jpeg');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2023-02-05 13:13:56','公告信息','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。这里可以发布一些相关公告或者资讯等内容的</p>'),(102,'2023-02-05 13:13:56','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(103,'2023-02-05 13:13:56','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(104,'2023-02-05 13:13:56','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(105,'2023-02-05 13:13:56','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(106,'2023-02-05 13:13:56','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(107,'2023-02-05 13:13:56','Leave未必是一种痛苦','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture7.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(108,'2023-02-05 13:13:56','坚持才会成功','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture8.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603323449 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemintro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2023-02-05 13:13:56','系统简介','SYSTEM INTRODUCTION','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','gzho49h3lbrqqbzl9v77lwz199ps4y5q','2023-02-05 13:14:30','2023-02-05 14:23:59'),(2,1675602944410,'2','huanzhe','患者','1l5y47j42ueiwjzs874vngyyzr82ryfn','2023-02-05 13:15:49','2023-02-05 14:20:49'),(3,21,'1','yisheng','医生','e5dqwm4al3holdep31xczmd1my1mnkm6','2023-02-05 13:19:34','2023-02-05 14:24:14');
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-05 13:13:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopingoumai`
--

DROP TABLE IF EXISTS `yaopingoumai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopingoumai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) DEFAULT NULL COMMENT '药品类型',
  `jiage` float DEFAULT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` float DEFAULT NULL COMMENT '总价格',
  `goumairiqi` date DEFAULT NULL COMMENT '购买日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603330144 DEFAULT CHARSET=utf8 COMMENT='药品购买';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopingoumai`
--

LOCK TABLES `yaopingoumai` WRITE;
/*!40000 ALTER TABLE `yaopingoumai` DISABLE KEYS */;
INSERT INTO `yaopingoumai` VALUES (81,'2023-02-05 13:13:56','药品名称1','药品类型1',1,1,1,'2023-02-05','用户名1','姓名1','13823888881','未支付'),(82,'2023-02-05 13:13:56','药品名称2','药品类型2',2,2,2,'2023-02-05','用户名2','姓名2','13823888882','未支付'),(83,'2023-02-05 13:13:56','药品名称3','药品类型3',3,3,3,'2023-02-05','用户名3','姓名3','13823888883','未支付'),(84,'2023-02-05 13:13:56','药品名称4','药品类型4',4,4,4,'2023-02-05','用户名4','姓名4','13823888884','未支付'),(85,'2023-02-05 13:13:56','药品名称5','药品类型5',5,5,5,'2023-02-05','用户名5','姓名5','13823888885','未支付'),(86,'2023-02-05 13:13:56','药品名称6','药品类型6',6,6,6,'2023-02-05','用户名6','姓名6','13823888886','未支付'),(87,'2023-02-05 13:13:56','药品名称7','药品类型7',7,7,7,'2023-02-05','用户名7','姓名7','13823888887','未支付'),(88,'2023-02-05 13:13:56','药品名称8','药品类型8',8,8,8,'2023-02-05','用户名8','姓名8','13823888888','未支付'),(1675603330143,'2023-02-05 13:22:09','999感冒灵','感冒药',15,2,30,'2023-02-05','2','张莉','15214121411','已支付');
/*!40000 ALTER TABLE `yaopingoumai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinleixing`
--

DROP TABLE IF EXISTS `yaopinleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinleixing` varchar(200) NOT NULL COMMENT '药品类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='药品类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinleixing`
--

LOCK TABLES `yaopinleixing` WRITE;
/*!40000 ALTER TABLE `yaopinleixing` DISABLE KEYS */;
INSERT INTO `yaopinleixing` VALUES (61,'2023-02-05 13:13:56','感冒药'),(62,'2023-02-05 13:13:56','药品类型2'),(63,'2023-02-05 13:13:56','药品类型3'),(64,'2023-02-05 13:13:56','药品类型4'),(65,'2023-02-05 13:13:56','药品类型5'),(66,'2023-02-05 13:13:56','药品类型6'),(67,'2023-02-05 13:13:56','药品类型7'),(68,'2023-02-05 13:13:56','药品类型8');
/*!40000 ALTER TABLE `yaopinleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yaopinxinxi`
--

DROP TABLE IF EXISTS `yaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `yaopinleixing` varchar(200) NOT NULL COMMENT '药品类型',
  `tupian` longtext COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `jiage` float NOT NULL COMMENT '价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `shengchanriqi` date NOT NULL COMMENT '生产日期',
  `shiyongshuoming` longtext COMMENT '使用说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='药品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yaopinxinxi`
--

LOCK TABLES `yaopinxinxi` WRITE;
/*!40000 ALTER TABLE `yaopinxinxi` DISABLE KEYS */;
INSERT INTO `yaopinxinxi` VALUES (71,'2023-02-05 13:13:56','1111111111','999感冒灵','感冒药','upload/yaopinxinxi_tupian1.jpg,upload/yaopinxinxi_tupian2.jpg','小',15,98,'121212','2023-02-02','使用说明1测试'),(72,'2023-02-05 13:13:56','2222222222','药品名称2','感冒药','upload/yaopinxinxi_tupian2.jpg,upload/yaopinxinxi_tupian3.jpg,upload/yaopinxinxi_tupian4.jpg','规格2',2,2,'批次号2','2023-02-05','使用说明2'),(73,'2023-02-05 13:13:56','3333333333','药品名称3','药品类型3','upload/yaopinxinxi_tupian3.jpg,upload/yaopinxinxi_tupian4.jpg,upload/yaopinxinxi_tupian5.jpg','规格3',3,3,'批次号3','2023-02-05','使用说明3'),(74,'2023-02-05 13:13:56','4444444444','药品名称4','药品类型4','upload/yaopinxinxi_tupian4.jpg,upload/yaopinxinxi_tupian5.jpg,upload/yaopinxinxi_tupian6.jpg','规格4',4,4,'批次号4','2023-02-05','使用说明4'),(75,'2023-02-05 13:13:56','5555555555','药品名称5','药品类型5','upload/yaopinxinxi_tupian5.jpg,upload/yaopinxinxi_tupian6.jpg,upload/yaopinxinxi_tupian7.jpg','规格5',5,5,'批次号5','2023-02-05','使用说明5'),(76,'2023-02-05 13:13:56','6666666666','药品名称6','药品类型6','upload/yaopinxinxi_tupian6.jpg,upload/yaopinxinxi_tupian7.jpg,upload/yaopinxinxi_tupian8.jpg','规格6',6,6,'批次号6','2023-02-05','使用说明6'),(77,'2023-02-05 13:13:56','7777777777','药品名称7','药品类型7','upload/yaopinxinxi_tupian7.jpg,upload/yaopinxinxi_tupian8.jpg,upload/yaopinxinxi_tupian9.jpg','规格7',7,7,'批次号7','2023-02-05','使用说明7'),(78,'2023-02-05 13:13:56','8888888888','药品名称8','药品类型8','upload/yaopinxinxi_tupian8.jpg,upload/yaopinxinxi_tupian9.jpg,upload/yaopinxinxi_tupian10.jpg','规格8',8,8,'批次号8','2023-02-05','使用说明8');
/*!40000 ALTER TABLE `yaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `yiling` varchar(200) NOT NULL COMMENT '医龄',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `guahaofei` float NOT NULL COMMENT '挂号费',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `yishengjianjie` longtext COMMENT '医生简介',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2023-02-05 13:13:55','1','1','王医生','男','upload/yisheng_touxiang1.jpg','3年','教授','小儿科',15,'13823888881','医生简介1一个有灵床丰富经验的医生'),(22,'2023-02-05 13:13:55','账号2','123456','医生姓名2','男','upload/yisheng_touxiang2.jpg','医龄2','职称2','科室2',2,'13823888882','医生简介2'),(23,'2023-02-05 13:13:55','账号3','123456','医生姓名3','男','upload/yisheng_touxiang3.jpg','医龄3','职称3','科室3',3,'13823888883','医生简介3'),(24,'2023-02-05 13:13:55','账号4','123456','医生姓名4','男','upload/yisheng_touxiang4.jpg','医龄4','职称4','科室4',4,'13823888884','医生简介4'),(25,'2023-02-05 13:13:55','账号5','123456','医生姓名5','男','upload/yisheng_touxiang5.jpg','医龄5','职称5','科室5',5,'13823888885','医生简介5'),(26,'2023-02-05 13:13:55','账号6','123456','医生姓名6','男','upload/yisheng_touxiang6.jpg','医龄6','职称6','科室6',6,'13823888886','医生简介6'),(27,'2023-02-05 13:13:55','账号7','123456','医生姓名7','男','upload/yisheng_touxiang7.jpg','医龄7','职称7','科室7',7,'13823888887','医生简介7'),(28,'2023-02-05 13:13:55','账号8','123456','医生姓名8','男','upload/yisheng_touxiang8.jpg','医龄8','职称8','科室8',8,'13823888888','医生简介8');
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuexinxi`
--

DROP TABLE IF EXISTS `yuyuexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `guahaofei` float DEFAULT NULL COMMENT '挂号费',
  `yuyueneirong` varchar(200) NOT NULL COMMENT '预约内容',
  `yuyueshijian` date DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1675603271909 DEFAULT CHARSET=utf8 COMMENT='预约信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuexinxi`
--

LOCK TABLES `yuyuexinxi` WRITE;
/*!40000 ALTER TABLE `yuyuexinxi` DISABLE KEYS */;
INSERT INTO `yuyuexinxi` VALUES (41,'2023-02-05 13:13:55','1111111111','账号1','医生姓名1',1,'预约内容1','2023-02-05','用户名1','姓名1','13823888881','是','','未支付'),(42,'2023-02-05 13:13:55','2222222222','账号2','医生姓名2',2,'预约内容2','2023-02-05','用户名2','姓名2','13823888882','是','','未支付'),(43,'2023-02-05 13:13:55','3333333333','账号3','医生姓名3',3,'预约内容3','2023-02-05','用户名3','姓名3','13823888883','是','','未支付'),(44,'2023-02-05 13:13:56','4444444444','账号4','医生姓名4',4,'预约内容4','2023-02-05','用户名4','姓名4','13823888884','是','','未支付'),(45,'2023-02-05 13:13:56','5555555555','账号5','医生姓名5',5,'预约内容5','2023-02-05','用户名5','姓名5','13823888885','是','','未支付'),(46,'2023-02-05 13:13:56','6666666666','账号6','医生姓名6',6,'预约内容6','2023-02-05','用户名6','姓名6','13823888886','是','','未支付'),(47,'2023-02-05 13:13:56','7777777777','账号7','医生姓名7',7,'预约内容7','2023-02-05','用户名7','姓名7','13823888887','是','','未支付'),(48,'2023-02-05 13:13:56','8888888888','账号8','医生姓名8',8,'预约内容8','2023-02-05','用户名8','姓名8','13823888888','是','','未支付'),(1675603271908,'2023-02-05 13:21:11','20232521216222','1','王医生',15,'医生我要预约看病','2023-02-05','2','张莉','15214121411','是','预约成功','已支付');
/*!40000 ALTER TABLE `yuyuexinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-06 14:52:04