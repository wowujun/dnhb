-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: dnhb_development
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'admin','$2a$10$VsSR.diDhgY3ZfszSvjuKuU5IEZ631c6UOb8pRQRUxMmtVJRfuHMS',NULL,1,'2015-12-02 08:29:56','2015-12-02 08:29:56');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertisements`
--

DROP TABLE IF EXISTS `advertisements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisements`
--

LOCK TABLES `advertisements` WRITE;
/*!40000 ALTER TABLE `advertisements` DISABLE KEYS */;
INSERT INTO `advertisements` VALUES (7,'滚动条','','2015-12-04 08:22:27','2015-12-04 08:22:27','54d96fd9baeb9.jpg'),(8,'滚动图','','2015-12-04 08:25:55','2015-12-04 08:25:55','5500df76e4e1c.gif'),(9,'滚动条','','2015-12-04 08:26:15','2015-12-04 08:26:15','550005d816e36.gif'),(10,'滚动图','','2015-12-04 08:26:33','2015-12-04 08:26:33','54d96fd9baeb9.jpg'),(11,'滚动条','','2015-12-04 08:27:05','2015-12-04 08:27:05','5500df76e4e1c.gif');
/*!40000 ALTER TABLE `advertisements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clas`
--

DROP TABLE IF EXISTS `clas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clas`
--

LOCK TABLES `clas` WRITE;
/*!40000 ALTER TABLE `clas` DISABLE KEYS */;
INSERT INTO `clas` VALUES (1,'产品','product','2015-12-02 07:13:26','2015-12-02 07:13:34'),(2,'新闻','news','2015-12-02 07:13:43','2015-12-02 07:13:43');
/*!40000 ALTER TABLE `clas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kindeditor_assets`
--

DROP TABLE IF EXISTS `kindeditor_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kindeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset` varchar(255) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `asset_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kindeditor_assets`
--

LOCK TABLES `kindeditor_assets` WRITE;
/*!40000 ALTER TABLE `kindeditor_assets` DISABLE KEYS */;
INSERT INTO `kindeditor_assets` VALUES (1,'a05b6edd202f.png',18019,'image/png',0,'image','2015-12-02 03:46:10','2015-12-02 03:46:10'),(2,'f72baebc07b8.jpg',27272,'image/jpeg',0,'image','2015-12-02 06:09:24','2015-12-02 06:09:24'),(3,'c4d1bd42a32e.png',18019,'image/png',0,'image','2015-12-02 06:12:08','2015-12-02 06:12:08'),(4,'8fe484518a10.jpg',27272,'image/jpeg',0,'image','2015-12-02 07:20:40','2015-12-02 07:20:40'),(5,'255c82d123e3.png',18019,'image/png',0,'image','2015-12-02 07:21:26','2015-12-02 07:21:26'),(6,'67a83ba02f1c.png',18019,'image/png',0,'image','2015-12-03 06:08:11','2015-12-03 06:08:11'),(7,'0f26085cc0f8.jpg',163707,'image/jpeg',0,'image','2015-12-04 02:51:51','2015-12-04 02:51:51'),(8,'74121c767d8d.gif',2042470,'image/gif',0,'image','2015-12-04 02:54:31','2015-12-04 02:54:31'),(9,'c068e92343ca.gif',778938,'image/gif',0,'image','2015-12-04 02:55:26','2015-12-04 02:55:26'),(10,'01a839843e8f.jpg',26310,'image/jpeg',0,'image','2015-12-04 02:57:39','2015-12-04 02:57:39'),(11,'c2d6afc99b00.jpg',25313,'image/jpeg',0,'image','2015-12-04 02:59:20','2015-12-04 02:59:20'),(12,'d3e07d76935f.jpg',23893,'image/jpeg',0,'image','2015-12-04 03:00:44','2015-12-04 03:00:44'),(13,'372e3c4b0425.jpg',21666,'image/jpeg',0,'image','2015-12-04 03:01:41','2015-12-04 03:01:41'),(14,'5054f3f31a4f.jpg',25942,'image/jpeg',0,'image','2015-12-04 03:02:35','2015-12-04 03:02:35'),(15,'2c7cab69b73b.png',160506,'image/png',0,'image','2015-12-04 03:03:31','2015-12-04 03:03:31'),(16,'0c248b20b84c.jpg',307110,'application/octet-stream',0,'image','2015-12-04 03:13:20','2015-12-04 03:13:20'),(17,'740f08aa6f12.jpg',199067,'application/octet-stream',0,'image','2015-12-04 03:13:20','2015-12-04 03:13:20'),(18,'72cb7e4df3b7.gif',2042470,'image/gif',0,'image','2015-12-04 03:22:42','2015-12-04 03:22:42'),(19,'197b56e592ed.gif',778938,'image/gif',0,'image','2015-12-04 03:23:04','2015-12-04 03:23:04'),(20,'9d2ed24d9610.gif',2042470,'image/gif',0,'image','2015-12-04 03:23:28','2015-12-04 03:23:28'),(21,'cf78f98f43f0.jpg',163707,'image/jpeg',0,'image','2015-12-04 03:23:47','2015-12-04 03:23:47'),(22,'1385b7770cc3.jpg',163707,'image/jpeg',0,'image','2015-12-04 03:45:33','2015-12-04 03:45:33'),(23,'21f90d94da54.gif',2042470,'image/gif',0,'image','2015-12-04 06:48:01','2015-12-04 06:48:01'),(24,'986003ac72d2.jpg',24350,'image/jpeg',0,'image','2015-12-06 01:19:13','2015-12-06 01:19:13');
/*!40000 ALTER TABLE `kindeditor_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20151129024559'),('20151129024735'),('20151129025037'),('20151129025743'),('20151129025927'),('20151201021158'),('20151201021354'),('20151202014939'),('20151202033459'),('20151202071104'),('20151202071205'),('20151202071813'),('20151202081053'),('20151203014524'),('20151203035117'),('20151203060038'),('20151204074716'),('20151204080649');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sideabouts`
--

DROP TABLE IF EXISTS `sideabouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sideabouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about` text,
  `culture` text,
  `qualification` text,
  `concept` text,
  `speech` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sideabouts`
--

LOCK TABLES `sideabouts` WRITE;
/*!40000 ALTER TABLE `sideabouts` DISABLE KEYS */;
INSERT INTO `sideabouts` VALUES (1,'<span style=\"font-size:16px;\"> 云南得能环保科技有限公司一家专业从事水处理工艺设计、生活污水、废气 \r\n、废物等工程的设计、安装施工、与调试和验收、环境评估、环保咨询为一体的高科技现代化环保公司，国内知名品牌“碧水源”膜组件云南区域总代理及德国凤凰\r\n量子管通环云南总代理。现正研发、生产、销售中国市场环保净化的新型高科技系列产品，专业从事各类环境保护工程治理工作。</span> \r\n<div>\r\n	<span style=\"font-size:16px;\">公司位于云南省玉溪市红塔区，我们拥有专业技术人才、熟练的生产和工程施工人\r\n员。 \r\n以德国专业纳米净化技术和生产工艺为依托，以高新环保技术产业为主营业务，全心致力于科研成果转化为产品的销售与服务，兢兢业业为顾客提供环保、安全、健\r\n康的产品及服务，以改善工作和生活空间的环境品质，提高民众健康水平和生活质量。&nbsp;</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp; \r\n我们技术力量雄厚，拥有符合国际标准的先进实验室及高、精、尖实验室设备，具备有研制和开发最新技术和产品的能力。目前，施工销售的系列净化治理产品和污\r\n水、废气、除尘、油烟处理设备，吸纳了国际先进纳米技术，采用德国精湛生产工艺，严格按照国际标准生产制造。 \r\n其技术性、安全性和功能性均达到国内同类产品先进水平。&nbsp;</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp; \r\n德国凤凰量子管通环以德国科学家在量子物理领域独具特色的技术领先优势，专用于流体处理，具有二十多年的行业历史。量子管通环主要应用于水等流体系统的\r\n垢、锈、菌藻的综合防治，无需电源，也非磁性材料，功能强大，性能稳定，引领了物理水处理行业的技术革命，远销世界一百多个国家和地区。</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; \r\n公司根据工程项目的实际情况及要求，以专业角度充分考虑可行性及性价比进行方案设计，并且严格执行相关规范及标准进行工程施工、设备调试及维护保养。同时\r\n还提供专业而优质的售后、运营指导、技术咨询等多方面的专业服务。公司本着“诚信经营”的原则，“认真、严格、主动、高效”的做事风格，“诚实做人、注重\r\n信誉，坦诚相待、开诚布公”的道德准则，立足于水处理行业；并以“换位思考，感动客户”为口号，为不断改善人们的生活品质而努力。有着雄厚技术力量、合理\r\n组织架构及先进管理理念的我们自信能带给您的不仅仅是值得信赖的产品，持续完善的售后服务。更是一种保护自然、回归自然及节能环保的生活方式。我们将把世\r\n界水行业中的先进科技带到您身边，以专业的水处理技术与周到的服务让您充分享受水的柔情和纯净，我们愿与您一起为维护人类的生存环境和水资源循环利用而共\r\n同努力！</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 云南得能环保科技有限公司真诚希望与您建立合作关系，共展鸿图，打造一个真正绿色无污染的环保生存环境。 <br />\r\n</span> \r\n</div>','<span style=\"font-size:16px;\">&nbsp;公司根据工程项目的实际情况及要求，以专业角度充分考虑可行性及性价比进行方\r\n案设计，并且严格执行相关规范及标准进行工程施工、设备调试及维护保养。同时还提供专业而优质的售后、运营指导、技术咨询等多方面的专业服务。公司本着\r\n“诚信经营”的原则，“认真、严格、主动、高效”的做事风格，“诚实做人、注重信誉，坦诚相待、开诚布公”的道德准则，立足于水处理行业；并以“换位思\r\n考，感动客户”为口号，为不断改善人们的生活品质而努力。有着雄厚技术力量、合理组织架构及先进管理理念的我们自信能带给您的不仅仅是值得信赖的产品，持\r\n续完善的售后服务。更是一种保护自然、回归自然及节能环保的生活方式。我们将把世界水行业中的先进科技带到您身边，以专业的水处理技术与周到的服务让您充\r\n分享受水的柔情和纯净，我们愿与您一起为维护人类的生存环境和水资源循环利用而共同努力！</span> \r\n<div>\r\n	&nbsp;\r\n</div>','<img title=\"\" src=\"/uploads/image/201512/0c248b20b84c.jpg\" alt=\"\" align=\"\" height=\"283\" width=\"400\" /><img title=\"\" src=\"/uploads/image/201512/740f08aa6f12.jpg\" alt=\"\" align=\"\" height=\"289\" width=\"400\" />','<span style=\"font-size:16px;\">（1）、使命追求&nbsp;</span> \r\n<div>\r\n	<span style=\"font-size:16px;\">公司决心树立中国环保行业净水产业品牌，将为改善人类的饮水、用水及社会环境质\r\n量，为人与环境和谐共处贡献全部的力量，成为令人尊敬的“四满意企业”: 客户满意:用专家级的服务，为客户度身定制全方位环境问题解决方案 \r\n员工满意:给为企业做出贡献的员工以实惠、舞台和未来。 股东与合作伙伴满意:为股东与战略合作伙伴创造最大价值，共生双赢，和谐发展。 \r\n社会满意:为社会提供认真负责的环境治理服务，诚信经营，为政府排忧解难。<br />\r\n<br />\r\n（2）、核心价值观</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">:创新、完美、诚信、责任 持续创新: \r\n创新，是公司的缘起要素，是公司持续发展的永恒主题。 \r\n得能的胸怀接受一切先进的知识和经验，点滴积累，持续创新，引领行业潮流，努力营造有利于创新的组织氛围与机制。 追求完美 \r\n追求完美意味着从高起点、以高标准、向更高的目标无限接近。完美意味着要以更大的责任和诚信，以孜孜以求、尽善尽美之心，把能力发挥到极致，不断寻求人\r\n才、技术和组织等资源配置的最佳组合。 诚朴取信 \r\n以信用做事，以真诚合作。公司崇尚讷于言而敏于行，言必行、行必果的诚信准则，也是桑德员工的行为和道德准则。 勇担责任 \r\n勤智可托，勇担责任。公司各级组织和员工要持续学习，依靠自身的勤劳和智慧，不断提高承担社会责任、企业责任、个人责任所需的能力。</span> \r\n</div>\r\n<div>\r\n	<br />\r\n<span style=\"font-size:16px;\">（3）、公司精神</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">&nbsp;精细主义 天下之难，作于易;天下之大，作于细。 \r\n管理思想就是精细主义。精于心，简于形，以最精细的态度，直指最简单的态势。 \r\n精细主义的实质就是凡事都要以最精细的态度寻找规律，在解决问题关键点上精心、细心用力，以效率和效果为出发点，追求用最简洁、最直接的方式解决问题。</span> \r\n</div>\r\n<div>\r\n	<br />\r\n<span style=\"font-size:16px;\">（4）、公司管理理念&nbsp;</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">移动打靶论 \r\n追求完美意味着从高起点、以高标准、向更高的目标无限接近。最高、最难的目标是处于不断移动中的目标。在对移动的目标进行“射击”时，要根据目标移动的情\r\n况及时、迅速地组织与目标相匹配的各项资源。通俗的讲就是移动打靶。各级管理者必须对事物有全局观和洞察力，不断地调整和控制团队的工作方向和工作方式以\r\n保证目标的完成。 精</span> \r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">神贵族论&nbsp;</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">我们肩负着为改善人类的饮水、生活和社会环境质量安全，为人与环境和谐共处贡献\r\n全部力量的美好使命。在追求经济利益与物质富足的同时，我们更加满足于一种来自使命的荣誉感和自豪感。我们应当自觉地融入到这种企业价值观中，融入面向人\r\n类和子孙后代生存环境的宽广胸怀从而创展我们富有意义的人生，最大限度地延伸我们的人生价值。&nbsp;</span> \r\n</div>\r\n<div>\r\n	<br />\r\n<span style=\"font-size:16px;\">女娲补天论</span> \r\n</div>\r\n<div>\r\n	<span style=\"font-size:16px;\">&nbsp;我是一块女娲补天的五彩石。没有我，天便要漏。没有他人，我便无处落脚。他人\r\n是我的骨架，我亦是他人的支撑。为支撑他人，我自应强壮;为支撑他人，我需多伸出一块与之搭接。若他人有短，我须长;若他人长，我要配合其长，共同补齐他\r\n人之短---这就是女娲补天。天是好多五彩石一块块组成的，天漏了，要补。每一块石头之间必须严丝合缝。 \r\n企业是天，员工就是那补天的五彩石;产业是天，企业就是那补天的五彩石。员工对于企业，企业对于产业，也同样要有这种五彩石的使命和责任。&nbsp;</span> \r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<span style=\"font-size:16px;\">公司愿景--------净化每一滴水！ 让污水变清！ 让城市更美！</span>','<div class=\"detail\">\r\n	<span style=\"font-size:16px;\">总经理致辞</span> \r\n	<div>\r\n		<span style=\"font-size:16px;\">各位老总、朋友：</span> \r\n	</div>\r\n	<div>\r\n		<span style=\"font-size:16px;\">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 大家好！很欣慰各位在百忙中抽出时间阅览我公司。我代表全体员工对此表示感谢！欢迎大家有空到公司座谈、参观。</span> \r\n	</div>\r\n	<div>\r\n		<span style=\"font-size:16px;\">我公司是云南省专业从事各种水污染处理和净水设备安装、批发、售后为一体的新型\r\n环保公司，工程业务范围涉及工业中各种废水处理、市政及生活污水处理、农业废水废弃物处理、水务运营中水回用及水处理专用设备等。 \r\n我们的生活离不开水，我们的城市离不开水。节约用水，废水回用是我们的职责。希望我们共同行动起来，保护每一滴水，与水结缘，期待与您合作。</span> \r\n	</div>\r\n	<div>\r\n		<span style=\"font-size:16px;\">&nbsp;祝您生活愉快！事业步步高升！&nbsp;</span> \r\n	</div>\r\n	<div>\r\n		&nbsp;\r\n	</div>\r\n	<div style=\"text-align:right;\">\r\n		&nbsp;云南得能环保科技有限公司<br />\r\n2015年1月1日\r\n	</div>\r\n</div>','2015-12-04 02:30:04','2015-12-04 03:14:01');
/*!40000 ALTER TABLE `sideabouts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidecfgs`
--

DROP TABLE IF EXISTS `sidecfgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidecfgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dingyuhao` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidecfgs`
--

LOCK TABLES `sidecfgs` WRITE;
/*!40000 ALTER TABLE `sidecfgs` DISABLE KEYS */;
INSERT INTO `sidecfgs` VALUES (2,'云南得能环保科技有限公司','15706940934','0877-2662993','云南省玉溪市红塔区红塔大道24号云兴建材市场一号院内','DNHB2012','2015-12-02 08:29:56','2015-12-03 06:08:12','<img src=\"/uploads/image/201512/67a83ba02f1c.png\" alt=\"\" />');
/*!40000 ALTER TABLE `sidecfgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sideclas`
--

DROP TABLE IF EXISTS `sideclas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sideclas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sideclas`
--

LOCK TABLES `sideclas` WRITE;
/*!40000 ALTER TABLE `sideclas` DISABLE KEYS */;
INSERT INTO `sideclas` VALUES (1,'工业化工纯水设备','2015-11-30 02:32:33','2015-11-30 02:32:33'),(2,'医疗制药纯水设备','2015-11-30 02:33:00','2015-11-30 02:33:00'),(3,'食品行业水处理设备','2015-11-30 02:33:19','2015-11-30 02:33:19'),(4,'工矿污水处理设备','2015-11-30 02:33:43','2015-11-30 02:33:43'),(5,'中水回收运营设备','2015-11-30 02:34:10','2015-11-30 02:34:10'),(6,'别墅小区净水设备','2015-11-30 02:34:38','2015-11-30 02:34:38');
/*!40000 ALTER TABLE `sideclas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sidecontents`
--

DROP TABLE IF EXISTS `sidecontents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sidecontents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sidecontents`
--

LOCK TABLES `sidecontents` WRITE;
/*!40000 ALTER TABLE `sidecontents` DISABLE KEYS */;
INSERT INTO `sidecontents` VALUES (8,'中工国际获污水处理设施建设合同','2015-12-04 02:12:00','12月1日，公司与津巴布韦马欣戈市政府签署了津巴布韦马欣戈污水泵站及<a href=\"http://www.yndnhb.com\">污水处理厂</a>升级改造项目商务合同，合同金额为7350万美元（约合46944万元人民币），合同工期为33个月。合同金额为公司2014年营业总收入的4.92%。\r\n<div>\r\n</div>\r\n<div>\r\n	<p>\r\n		该项目位于津巴布韦马欣戈市，项目内容包括：升级改造马欣戈市现有污水处理厂、污水泵站及其管线；新建一座污水处理厂、污水泵站和其他相关设施，敷设污水管线。\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n</div>\r\n<div>\r\n	本文由云南得能环保有限公司整理与互联网，转载请注明出处<a href=\"http://www.yndnhb.com\">http://www.yndnhb.com</a>\r\n</div>','2015-12-04 02:13:35','2015-12-04 02:13:35'),(9,'校园装直饮机 饮水安全有保障','2015-12-04 02:13:00','<div class=\"detail\">\r\n	<span style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;line-height:30px;\">伴随着下课铃声，学府小学四（3）班的学生们陆续走出教室，其中不少同学手中拿着颜色各异的小水壶，向走廊中间走去，在那里，有一台四四方方的<a href=\"http://yndnhb.com\">直饮水机</a>。</span> \r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		这台<a href=\"http://yndnhb.com\">直饮水机</a>长高各1米左右，宽约半米，由不锈钢组成，共有三个出水口，出水口上方则有一个按钮，只要按下按钮，出水口便会有水流出。\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		“这台饮水机里的水是温的，不会烫到嘴，<a href=\"http://yndnhb.com\">卫生</a>干净接来就能喝。”学生彭筱易先用手中的水壶盖做杯子，喝了一杯水后，她再次按下按钮，不一会儿，手中的水壶就被灌满了。在她身后，还有不少排队等候灌水的同学。\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		对于这台<a href=\"http://yndnhb.com\">直饮水机</a>，该班的陈钟毅十分喜欢，直饮水机投入使用后，他就不用每天都从家里背一罐水来上学了。“我们现在每周都有一个同学负责直饮水机的清洁，大家都很乐意做这个活儿。”陈钟毅笑着说。\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		“以\r\n前学校里用的是桶装水的饮水机，只有热水与冷水两个龙头。”学府小学的校长潘光贤介绍道。因为学生年纪较小，追逐打闹是比较平常的事，学生用桶装水饮水机\r\n取热水时，有可能会因打闹的关系而烫伤。如今，换成直饮水机之后，出水水温全都恒定在40摄氏度，而且教师们会烧好开水放在热水瓶里，若是有学生需要热开\r\n水，可以去办公室问教师要。\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		“不\r\n过最主要的，还是直饮水机不用担心水质的问题。”潘光贤笑着说，虽然用桶装饮水机时，学校会定期对所有饮水机进行消毒、检查、清洗，但桶装水的水质是否有\r\n所保障终究不能明确，而且桶装水饮水机的烧水功能通常无法将水完全烧开。如今，学校里的这些直饮水机均采用过滤系统，能将普通的自来水过滤成饮用水，并有\r\n加热与冷却等功能，可以排除“水被反复加热、冷热水对冲”等问题。安装完毕后，所有直饮水机的出水都经过环保部门的检测，确定达标后方能投入使用。目前，\r\n在学府小学的教学楼里，每层都有一台这样的<a href=\"http://yndnhb.com\">直饮水机</a>。\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		“学校能有这样的<a href=\"http://yndnhb.com\">直饮水机</a>，确实能让家长舒心不少，真是好。”市民陈女士竖起了大拇指，“经常从网上看到桶装饮水机存在卫生安全隐患的信息，所以我基本不用饮水机。”\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		<span>县教育局相关负责人表示，目前，全县中小学直饮水安装工程二期已经启动，预计在今年年底，全县义务教育学校都将拥有<a href=\"http://yndnhb.com\">直饮水机</a>，届时，全县中小学生的饮用水<a href=\"http://yndnhb.com\">卫生</a>安全将会更有保障。</span>\r\n	</p>\r\n</div>','2015-12-04 02:14:20','2015-12-04 02:14:20'),(10,'游仙区将普及污水处理设施','2015-12-04 02:14:00','29日，记者在游仙区新桥镇看到，这里的芙蓉溪比较洁净。而这一切，得益于之前投入使用的新桥镇<a href=\"http://www.yndnhb.com\">污水处理厂</a>，将镇上生活污水全部纳入处理，邻近部分企业也将污水输送到这里集中处理。&nbsp;\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	近日，市政府下发《关于加快推进乡镇生活污水处理设施建设的实施意见》，对加快我市乡镇污水处理设施建设提出了目标和要求。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	各地兴起&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	污水处理热潮&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	日前，记者在安县秀水镇看到，一座罐体结构的污水处理站在秀水河大桥边运行。虽然罐体不大，但处理设施齐备，生活<a href=\"http://www.yndnhb.com\">污水处理</a>后达标排入秀水河。据介绍，秀水场镇一共建有3座这样的污水处理站。迎新乡也建有一座每天能处理上百吨污水的袖珍型污水处理站。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	据介绍，修建污水处理厂有政府财政资金投入，而一些地方尝试通过企业投入资金修建和运行，政府为企业服务买单。近日召开的全市污水处理设施\r\nPPP对接会上，引入了一批污水处理企业与各县沟通，希望通过PPP模式加快我市污水处理设施建设的同时，让投资进入环保产业的企业享受到应有的利益。据\r\n悉，今年已有一家外地环保企业与三台县政府通过PPP模式，建设了7个乡镇污水处理设施项目和配套管网建设。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	市政府要求各地广泛吸纳市场主体和社会力量参与乡镇生活污水处理设施建设运营，建立多元化多渠道投入机制。强化排污者付费、治污者受益的利益机\r\n制，通过特许经营、投资补助、政府购买服务等形式，吸引包括民间资本在内的社会资本参与投资建设（改造）和运营管理生活污水处理设施。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	建设灵活多样&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<a href=\"http://www.yndnhb.com\">污水处理</a>设施建设，各地条件不同，建设方法灵活多样。位于城市生活\r\n污水处理厂或工业园区污水处理厂周边的乡镇，通过管网建设就近纳入统一处理，相邻乡镇可通过联合建设集中处理；场镇人口少、建成区分散且以生活污水处理为\r\n主的乡镇，以及污水管网无法到达的地区，要结合农村环境连片整治，由县市区政府牵头，统筹建设污水处理设施。在建设规模和工艺选取上，不能搞一刀切，要结\r\n合实际、立足长远，结合各乡镇实际情况确定建设规模和工艺。对有大量工业废水进入的乡镇，参照城市污水处理设施工艺进行建设。水质单一乡镇建议采用易于运\r\n营管理的工艺进行建设。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	对于污水处理设施的运行维护，一是可由各县市区政府购买服务，引进专业化的第三方运营公司运行管理辖区内的乡镇污水处理设施；二是可以县城污水\r\n处理厂为技术和管理支撑，运行管理辖区内或邻近乡镇污水处理设施；三是可在县市区国有融资平台下建立专门的乡镇污水处理和管网运营管理公司，运行管理辖区\r\n内乡镇污水处理设施。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	“十三五”普及、污水处理设施&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	记者了解到，我市共有277个乡镇，随着人口增加，排放的污水也越来越多，对河流造成的污染越来越严重。截至目前，全市乡镇已建成污水处理设施\r\n15个，目前还有35个正在修建。此外，城市周边15个乡镇的污水通过管网进入城市污水处理厂，9个乡镇的污水准备进入城市污水处理厂，还有201个乡镇\r\n目前尚未修建污水处理设施。&nbsp;\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	此前，市政府与各县市区政府签订的《“十二五”主要污染物总量削减目标责任书》中，要求重点乡镇污水处理设施在2015年底前全部建成，已建成\r\n的要确保正常运行并不断完善配套管网；涪江干流及其主要支流安昌江、通口河、芙蓉溪、梓潼江、木龙河等沿岸乡镇和“省百镇建设行动试点镇”污水处理设施在\r\n2018年底前全部建成；场镇人口过万的乡镇、有工业集中区的乡镇和“国家、省级风景名胜区”污水处理设施在2019年底前全部建成；全市其他乡镇在\r\n2020年前全面建成生活污水处理设施。“十三五”期间，全市乡镇基本形成设施完善、运营平稳、监管严密的污水处理工作体系，实现与全面建成小康社会相适\r\n应的环保目标。&nbsp;\r\n</div>\r\n<br />\r\n<div>\r\n	本文由云南得能环保有限公司整理与互联网，转载请注明出处<a href=\"http://www.yndnhb.com\">http://www.yndnhb.com</a>\r\n</div>','2015-12-04 02:15:21','2015-12-04 02:15:21'),(11,'“水十条”的影响 治水投资加速','2015-12-04 02:15:00','为大气、水、土壤污染防治三大战役的重中之重，水污染<a href=\"http://yndnhb.com\">整治</a>领域的市场相对成熟。此次发改委下达重点流域水污染治理投资计划进一步贯彻落实了“水十条”，同时，随着环境治理相关政策红包的逐步释放，预计水污染防治领域将迎来更大的发展空间。<br />\r\n<br />\r\n进入8月，水污染治理投资计划接连公布。8月11日，国家发改委下发湖北、四川、重庆、贵州、山东五个省市重点流域水污染治理投资计划，总投资额为\r\n52.24亿元。加上此前公布的上海、江苏、浙江等13个省市212.65亿元的投资计划，整体投资已达264.89亿元。<br />\r\n<br />\r\n具体来看，近期下发18省市2015年重点流域水污染治理投资计划中，河南、内蒙古、江苏地区投资金额较大，分别为54.33亿、38.21亿、\r\n34.20亿元。在所有投资中，新增污水处理投资所占金额较大，其中内蒙古、河南2015年规划的新增污水处理能力，与“十二五”规划计划投资相比，体量\r\n较大。内蒙古、河南2015年单年计划投资的新增<a href=\"http://yndnhb.com\">污水处理</a>规模分别为52.1万吨/日、115.8万吨/日，而其对应的“十二五”规划，城镇新增污水处理规模为104.9万吨/日、190.3万吨/日。<br />\r\n<br />\r\n另外，近期公布的18个省市新增污泥处理规模计划为2893.5吨/日，即105.61万吨/年，仅18个省市一年计划的投资规模，即占到“十二五”规划全国五年污泥总投资(518万吨/年)的20.39%。<br />\r\n<br />\r\n据国海证券研究报告分析，考虑到污泥投资较“十二五”规划进度相对滞后，作为“十二五”收官之年，2015年污泥投资较过往将有较高增速。<br />\r\n<br />\r\n业内人士认为，发改委下达多省份2015年重点流域<a href=\"http://yndnhb.com\">水污染治理</a>投资计划，开启新一轮环保盛宴，将实现环境、经济与社会效益多赢。发改委抓住水污染防治的“牛鼻子”，打出了改善水环境的组合拳，整治与节流并举，预计水务板块将迎来发展新机遇。原文联合网络编撰转载请观看：<a href=\"http://yndnhb.com\">http://yndnhb.com</a>','2015-12-04 02:15:58','2015-12-04 02:15:58'),(12,'二次污染后自来水污染造成的后果 不容小视','2015-12-04 02:16:00','<div class=\"detail\">\r\n	<span style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;line-height:30px;\">什么是<a href=\"http://yndnhb.com\">二次污染</a>？</span> \r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		顾名思义，<a href=\"http://yndnhb.com\">二次污染</a>是指水源经自来水厂净化处理后，在输送到各家各户的过程中产生的污染。主要是一些水管老化出现的铁锈、泥沙、<a href=\"http://yndnhb.com\">细菌</a>、病毒等杂质和自来水厂氯制剂消毒后的副产物。<br />\r\n&nbsp; &nbsp; &nbsp;&nbsp;<span>二次污染的污染源主要有自来水管道、小区二次供水系统和水龙头。</span>\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		第一，自来水管道的污染\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		市\r\n政用于输送自来水的金属管道中，含有铅等重金属，绝大多数年久失修。铁锈、污垢积满管道。在自来水的运输过程中，这些杂质便随着自来水输送到各家各户。有\r\n的水管甚至与生活排污管道并行，经常发生自来水管和排污管破裂，造成自来水受到污染，产生异味、发臭甚至有微生物病菌侵入。<br />\r\n&nbsp; &nbsp;<span>第二，小区二次供水系统的污染</span>\r\n	</p>\r\n	<p style=\"color:#444444;font-family:Tahoma, Verdana;font-size:14px;text-indent:2em;\">\r\n		小区一般采用楼顶水塔或地下水箱等储水设备进行储水和供水。而水塔或水箱常常没有及时清理，灰尘等杂质堆积。有的储水设备甚至会严重老化、长满青苔，产生大量<a href=\"http://yndnhb.com\">细菌</a>滋生。严重的话，就出现了石家庄小区业主集体生病的情况。<br />\r\n&nbsp; &nbsp; &nbsp; 自来水<a href=\"http://yndnhb.com\">二次污染</a>物对身体健康的危害不容小觑。据了解，自来水在煮沸时，残\r\n留的余氯受热后，会产生一种致癌物质三氯甲烷。这种物质能引发前列腺癌和膀胱癌。重金属铅，则危害人体生殖功能、性功能、肾功能和神经系统，造成儿童痴\r\n呆，也是胃癌、食道癌等癌症的主要诱因；细菌、病毒，会造成流行性疾病、急性炎症的感染；泥沙、铁锈将导致人体患结石病，如胆结石、肾结石等<br />\r\n所以自来水二次污染<a href=\"http://yndnhb.com\">整治</a>刻不容缓 &nbsp;建议大家关注健康，有必要给家里安装一台<a href=\"http://yndnhb.com\">家用净水器</a>。\r\n	</p>\r\n</div>','2015-12-04 02:16:59','2015-12-04 02:16:59');
/*!40000 ALTER TABLE `sidecontents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sideproducts`
--

DROP TABLE IF EXISTS `sideproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sideproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sidecla_id` int(11) DEFAULT NULL,
  `cla_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sideproducts`
--

LOCK TABLES `sideproducts` WRITE;
/*!40000 ALTER TABLE `sideproducts` DISABLE KEYS */;
INSERT INTO `sideproducts` VALUES (11,'全自动不锈钢反渗透纯水设备（40m³/D)','<img src=\"/uploads/image/201512/01a839843e8f.jpg\" alt=\"\" />','<div>\r\n	<span style=\"font-size:14px;\"><strong>产品说明</strong></span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp; &nbsp; \r\n日用化工纯水设备采用反渗透过滤技术,反渗透RO技术是当今先进和有效的除盐技术。其原理是在压力的作用下，水分子透过反渗透膜成为纯水，水中的杂质被反\r\n渗透膜截留排出。利用反渗透技术可以有效地去除水中的溶解盐、胶体、细菌、病毒、细菌内毒素和大部分有机物等杂质。反渗透设备系统除盐率一般为\r\n97－99％。一级反渗透设备出水电阻率一般在 \r\n0.05-0.5mω/cm之间。用双级反渗透设备除盐的技术称为两级反渗透技术，两级反渗透装置可除去原水中99％以上的盐分。不同的化工产品要求水质\r\n也不一样,可以根据具体水质要求而定制。</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">应用行业</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">洗护用品生产用纯水</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">化妆品生产用纯水</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">清洗、消毒液生产用水</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">造纸、印刷生产用纯水</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">化学农药生产污水净化处理</span>\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\"><strong>工艺流程</strong></span>\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">&nbsp;A、原水→原水增压泵→多介质过滤器→活性碳过滤器→软水器→精密过滤器→第一级反渗透→中间水箱→输送泵→混合床离子交换器→紫外线杀菌器→微孔过滤器→纯水箱→用水点（推荐工艺电阻率≥5MΩ.CM） </span>\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">原水→原水增压泵→精密过滤器→电渗析过滤器→中间水箱→中间水泵→离子交换设备→紫外线杀菌器→微孔过滤器→纯水箱→用水点（传统工艺电阻率≥5MΩ.CM） </span>\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">原水→原水增压泵→石英砂过滤器→活性碳过滤器→复床系统→中间水箱→中间水泵→混合离子交换设备→紫外线杀菌器→微孔过滤器→纯水箱→用水点（传统工艺电阻率≥5MΩ.CM） </span>\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">B、原水→原水增压泵→多介质过滤器→活性碳过滤器→软水器→精密过滤器→第一级反渗透→紫外线杀菌器→纯水箱→用水点（推荐工艺电导率≤10μS/CM） </span>\r\n</div>\r\n<div>\r\n	&nbsp;\r\n</div>\r\n<div>\r\n	<span style=\"font-size:14px;\">原水→原水增压泵→石英砂过滤器→活性碳过滤器→复床系统→紫外线杀菌器→微孔过滤器→纯水箱→用水点（传统工艺电导率≤10μS/CM）</span>\r\n</div>','2015-12-04 02:57:56','2015-12-04 02:57:56',1,NULL),(12,'医药净水设备','<img src=\"/uploads/image/201512/986003ac72d2.jpg\" alt=\"\" /><br />','<strong>产品详情</strong><br />\r\n&nbsp;利用膜工艺生产纯化水，不仅可以确保处理后的水完全达到药典规定的纯化水标准，而且对原水水质变化的适应能力强，避免了传统方法可能造成的环境污染，并能有效地降低水处理成本。<br />\r\n用于满足医疗需求制取纯净水的设备。整个系统也都由全不锈钢材质组合而成，而且在用水点之前都必须装备杀菌装置。采用反渗透，EDI等最新工艺，比较有针对性地设计出成套高纯水处理工艺，以满足药厂、医院的纯化水制取、大输液制取的用水要求。<br />\r\n应用行业<br />\r\n&nbsp;医用大输液、医药制剂、生物制剂等的生产用水基因工程、肾透析等用水。<br />\r\n工艺流程<br />\r\n&nbsp;传统工艺&nbsp; <br />\r\n原水→原水加压泵→多介质过滤器→活性炭过滤器→软水器→精密过滤器→第一级反渗透→PH调节→中间水箱→第二级反渗透→纯化水箱→纯水泵→紫外线杀菌器→&nbsp;微孔过滤器→用水点&nbsp; <br />\r\n推荐新工艺&nbsp; <br />\r\n原水-原水加压泵→多介质过滤器→活性炭过滤器→软水器→精密过滤器→一级反渗透机→中间水箱→&nbsp;中间水泵→EDI系统→纯化水箱→纯水泵→紫外线杀菌器→微孔过滤器→用水点<br />\r\n技术参数<br />\r\n&nbsp;纯化水水质标准：&nbsp; <br />\r\n电阻率：≥0.5MΩ.CM&nbsp; <br />\r\n电导率：≤2μS&nbsp; <br />\r\n氨≤0.3μg/ml&nbsp; <br />\r\n硝酸盐≤0.06μg/ml&nbsp; <br />\r\n重金属≤0.5μg/ml&nbsp; <br />\r\n微生物&nbsp;10CFU/100ml&nbsp; <br />\r\n内毒素&nbsp;0.25EU/ml&nbsp; <br />\r\n适用范围：&nbsp; <br />\r\n医用大输液、医药制剂、生物制剂等的生产用水基因工程、肾透析等用水。<br />\r\n设备出水特征：&nbsp; <br />\r\n产水水质：符合中华人民共和国医院消毒供应中心WS310.1\\2\\3-2009和2005版本药典纯化水标准及GMP标准；<br />\r\n离子去除率：≥99%；&nbsp;<br />\r\n内毒素、细菌去除率：≥99.9%；&nbsp; <br />\r\n回收率：≥76%；&nbsp; <br />\r\n进水要求：市政供水，<br />\r\n供水压力：0.2Mpa-0.4Mpa，<br />\r\n总硬度≤8mmol/L，<br />\r\n进水温度：5-35℃；&nbsp; <br />\r\n电源电压：AC380V，三相五线、接地可靠；&nbsp; <br />\r\n环境：温度：5-40℃，湿度＜85%，无粉尘和强电磁干扰。&nbsp; <br />\r\n系统优点：&nbsp; <br />\r\n多介质过滤器（配自动冲洗控制阀）：降低水质浊度，去除铁、锰等杂质；&nbsp; <br />\r\n活性炭过滤器（配自动冲洗控制阀）：吸附水中余氯及有机物等；&nbsp; <br />\r\n软化过滤器（配自动冲洗再生装置）：清除钙镁等离子，降低原水硬度；&nbsp; <br />\r\n保安过滤器：精密处理水中杂质，深层过滤，提升RO膜进水水质等；&nbsp; <br />\r\nRO膜处理板块：采用进口反渗透膜部件，有效去除离子、细菌、热源等；&nbsp; <br />\r\n纯水供应部分：全循环恒压供水组成。','2015-12-04 02:59:45','2015-12-06 01:19:37',2,NULL),(13,'30m³/D（软化+反渗透纯水设备）','<img src=\"/uploads/image/201512/d3e07d76935f.jpg\" alt=\"\" />','<div>\r\n	<strong><span style=\"font-size:12px;\">产品说明</span></strong> \r\n</div>\r\n食品级软化水设备，是智能化，全自动的软化水设备，控制阀部分全套由美国进口，整体\r\n结构和相关部件由本公司研制配套。该产品在引进新型控制阀的同时，充分结合了我国水质特点&nbsp;，设计规范和实际运行经验。设备配置系列化，产水量设计合理，\r\n覆盖范围广，选型方便，是具有当代国际先进水平，适合我国使用条件的新一代软水器。&nbsp;&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;本产品可用于各类采暖，供热，供气的锅炉给水软化处理；各类换热器的给水，补水软化处理；中央空调，制冷机组的循环水软化处理；石油，化工，橡胶等行业的工艺用软化水处理；反渗透除盐水，过滤的预处理；高硬度水的软化处理等。&nbsp;<br />\r\n100T软化水技术参数<br />\r\n流量型、时间型：单阀单控<br />\r\n电压要求恒压220V<br />\r\n罐体材质碳钢<br />\r\n标准罐体2400*3600,<br />\r\n一用一备型：<br />\r\n必须采用进口阀头<br />\r\n进口阀单阀双控<br />\r\n实现两个罐体由一个主阀控制。<br />\r\n&nbsp;<br />\r\nLTLD系列全自动软水器具有以下特点&nbsp;<br />\r\n●自动运行，出水稳定&nbsp;<br />\r\n美国进口的控制阀完全实现了水质软化及系统再生过程各阶段的自动转换。设备经过安装调试后，只需定期加入再生剂就可在自动条件下连续供应优质软化水。&nbsp;<br />\r\n●性能可靠&nbsp;<br />\r\n工程塑料和全铜制造的控制阀具有极高的可靠性及耐用性，多路阀门集中一体，消除了人为及其它因素的影响，阀体主要部件使用寿命可达数十年。&nbsp;<br />\r\n●安装方便，结构紧凑&nbsp;<br />\r\n先进的工艺设计使软化水设备结构紧凑，占地面积明显减小。安装地基只需水平，无特殊要求，并可根据场地实际情况，灵活布置，节省土地投资。&nbsp;<br />\r\n●耐腐蚀，抗污染&nbsp;<br />\r\n玻璃钢罐体和工程塑料管件坚固耐用，抗腐蚀，避免了交换剂被污染和系统腐蚀问题。&nbsp;<br />\r\n●高效率，低能耗，运行费用低廉&nbsp;<br />\r\n软水器整体设计先进合理，使树脂交换能力以得充分发挥。微电子电路及计时器能耗极低，射流器精确控制再生盐量，因此运行费用较一般软化水设备大大降低。&nbsp;<br />\r\n设备的自动再生控制方式分时间型和流量型两种，用户可根据需要选择以下4种配置。除自动再生外，控制器还具有手动再生功能，为用户在超定量用水情况下，增加再生提供方便。软水器若与水箱水位控制器配合使用更经济安全。&nbsp;<br />\r\n一、单罐时间控制型，适用于用水量变化不大，用水时间比较固定，允许间断供水的场所。再生时停水2.5小时左右。&nbsp;<br />\r\n二、单罐流量控制型，适用于用水量变化较大，允许间断供水的场所，再生时停水2.5小时左右。&nbsp;<br />\r\n三、双罐流量控制型/多罐流量控制型，一备一用/一备多用（或同时使用分别再生），适用于水量大，需连续供水的场所。&nbsp;<br />\r\n四、双罐流量控制型，单台控制器控制两台饮水器，同时工作，依次再生，适用于用水量变化大，需连续供水的场所，具有最佳性能价格比。<br />\r\n应用行业<br />\r\n&nbsp;&nbsp;&nbsp;广泛应用于蒸汽锅炉、热水锅炉、热交换器、冷凝器、中央空调、直燃机、煤矿井下水等系统的补给水的软化。还可用于宾馆、饭店、写字楼、公寓等生活用\r\n水的处理及食品、饮料、酿酒、洗衣、印染、化工、医院等行业的软化水处理,是工业锅炉、冷却循环水、炼钢、轧钢、大型变压&nbsp;器、民用热水锅炉等场合中应用\r\n最为广泛的硬水软化处理设备。','2015-12-04 03:01:08','2015-12-04 03:08:18',3,NULL),(14,'200T/天净水设备（云南活发集团）','<img src=\"/uploads/image/201512/372e3c4b0425.jpg\" alt=\"\" />','产品说明<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;针对钢铁废水，矿山污水公司提供完整的钢铁废水处理方案、铜铁废水回用方案以及洗矿水分离处理。系统采用膜法处理技术进行废水处理回用，经过超滤\r\n和反渗透等技术可以去处细菌、悬浮物、颜料、胶体和盐等污染物，杂质的去处率高，处理后的水质不仅以达标排放为目的，且可以实现回用。<br />\r\n&nbsp;<br />\r\n&nbsp;<br />\r\n&nbsp;&nbsp;&nbsp;钢矿业同属于高能耗、高水耗、高污染的产业，是能源、资源消耗、污染物排放的大户。钢铁工业废水主要来源于生产工艺过程用水、设备与产品冷却水、烟\r\n气洗涤和场地冲洗等，废水含有工业废渣、油、苯、酚等有机物，有害物质主要是炼焦环节中产生的，另外，在轧钢过程中，水会变成酸性，如果不加处理排放到环\r\n境中，会给人类、动植物带来有害影响。为了缓解水紧张压力、减少企业的废水排放量，减少吨钢的新水耗水量，越来越多的钢铁企业寻求高效的废水处理及回用技\r\n术解决废水回用的难题。<br />\r\n★工艺特点<br />\r\n1、彻底消除低化学药剂的使用，避免二次污染。<br />\r\n2、系统自动化程度和可靠性高，出水率高，运行稳定。<br />\r\n3、占地面积小，与其它水处理技术相比处理费用相当。<br />\r\n应用行业<br />\r\n&nbsp;钢铁厂、采矿厂&nbsp;复烤厂等&nbsp;<br />\r\n工艺流程<br />\r\n&nbsp;本系统采用膜法处理技术进行钢铁废水处理回用，经过超滤和反渗透等技术可以去处细菌、悬浮物、颜料、胶体和盐等污染物，杂质的去处率高，处理后的水质不\r\n仅以达标排放为目的，且可以实现废水回用，有效地帮助钢铁厂实现节能减排，节省用水费用，具有良好的经济效益和环保效益。','2015-12-04 03:01:52','2015-12-04 03:08:34',4,NULL),(15,'2T/H污水处理设备','<img src=\"/uploads/image/201512/5054f3f31a4f.jpg\" alt=\"\" />','污水处理设备概述<br />\r\n污水处理一般分为生产污水处理和生活污水处理。生产污水包括工业污水、农业污水以及医疗污水等，而生活污水就是日常生活产生的污水，是指各种形式的无机物和有机物的复杂混合物，包括：①漂浮和悬浮的大小固体颗粒；②胶状和凝胶状扩散物；③纯溶液。<br />\r\n物理法：主要利用物理作用分离污水中的非溶解性物质，在处理过程中不改变化学性质。常用的有重力分离、离心分离、反渗透、气浮等。物理法处理构筑物较简单、经济，用于村镇水体容量大、自净能力强、污水处理程度要求不高的情况。<br />\r\n生物法：利用微生物的新陈代谢功能，将污水中呈溶解或胶体状态的有机物分解氧化为稳定的无机物质，使污水得到净化。常用的有活性污泥法和生物膜法。生物法处理程度比物理法要高。<br />\r\n化学法：是利用化学反应作用来处理或回收污水的溶解物质或胶体物质的方法，多用于工业废水。常用的有混凝法、中和法、氧化还原法、离子交换法等。化学处理法处理效果好、费用高，多用作生化处理后的出水，作进一步的处理，提高出水水质。','2015-12-04 03:02:58','2015-12-04 03:09:03',5,NULL),(16,'200加仑商用机水器 ','<img src=\"/uploads/image/201512/2c7cab69b73b.png\" alt=\"\" />','<strong>产品说明</strong><br />\r\n<strong>1</strong><strong>、采用名牌</strong><strong>UF</strong><strong>净化主件，运用目前国际上最为先进的中空丝膜水处理技术，可清除原水中的细微杂质、胶体、有机物、重金属、可溶性固体、细菌、病毒、热原和其它有害杂质，仅保留水分子和溶解氧，有效去除率大于等于</strong><strong>96%</strong><strong>。</strong><br />\r\n<strong>2</strong><strong>、采用进口名牌高压静音泵、噪声低、振动小、使用寿命长、运行质量可靠。</strong><br />\r\n<strong>3</strong><strong>、预处理滤芯采用可更换方式，可有效保证预处理效果，且更换方便，换芯价格经济，产水运行成本低。</strong><br />\r\n<strong>4</strong><strong>、具有高压冲洗功能，可有效延长核心部件寿命。</strong><br />\r\n<strong>5</strong><strong>、制水过程自动控制（原水缺水停机，储水桶水满停机）。</strong><br />\r\n<strong>6</strong><strong>、每天产水量</strong><strong>100-200</strong><strong>加仑。</strong><br />\r\n<strong>适用场所：机关、学校、工厂、公司、酒店等公共场合</strong> <strong>。</strong>','2015-12-04 03:03:42','2015-12-04 03:09:15',6,NULL);
/*!40000 ALTER TABLE `sideproducts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-23  9:49:05
