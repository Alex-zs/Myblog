-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: localhost    Database: MyBlog
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',2,'add_logentry'),(2,'Can change log entry',2,'change_logentry'),(3,'Can delete log entry',2,'delete_logentry'),(4,'Can add permission',3,'add_permission'),(5,'Can change permission',3,'change_permission'),(6,'Can delete permission',3,'delete_permission'),(7,'Can add group',4,'add_group'),(8,'Can change group',4,'change_group'),(9,'Can delete group',4,'delete_group'),(10,'Can add content type',5,'add_contenttype'),(11,'Can change content type',5,'change_contenttype'),(12,'Can delete content type',5,'delete_contenttype'),(13,'Can add session',6,'add_session'),(14,'Can change session',6,'change_session'),(15,'Can delete session',6,'delete_session'),(16,'Can add User',1,'add_user'),(17,'Can change User',1,'change_user'),(18,'Can delete User',1,'delete_user'),(19,'Can add article',7,'add_article'),(20,'Can change article',7,'change_article'),(21,'Can delete article',7,'delete_article'),(22,'Can add person',8,'add_person'),(23,'Can change person',8,'change_person'),(24,'Can delete person',8,'delete_person'),(25,'Can add comment',9,'add_comment'),(26,'Can change comment',9,'change_comment'),(27,'Can delete comment',9,'delete_comment'),(28,'Can add message_list',10,'add_message_list'),(29,'Can change message_list',10,'change_message_list'),(30,'Can delete message_list',10,'delete_message_list');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_article`
--

DROP TABLE IF EXISTS `blog_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `content` longtext NOT NULL,
  `pub_date` datetime(6) NOT NULL,
  `update_time` datetime(6) DEFAULT NULL,
  `article_cate` varchar(5) NOT NULL,
  `abstract` varchar(256) DEFAULT NULL,
  `views` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_article`
--

LOCK TABLES `blog_article` WRITE;
/*!40000 ALTER TABLE `blog_article` DISABLE KEYS */;
INSERT INTO `blog_article` VALUES (8,'习近平春节前夕赴四川看望慰问各族干部群众','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　央视网消息：中华民族传统节日农历春节来临之际，中共中央总书记、国家主席、中央军委主席习近平来到四川，就贯彻落实党的十九大精神以及中央经济工作会议、中央农村工作会议精神进行调研，看望慰问各族干部群众，向全国各族人民致以美好的新春祝福。<br/></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　初春的巴蜀大地，春寒料峭，蕴含着勃勃生机。2月10日至13日，习近平在四川省委书记王东明、省长尹力陪同下，来到凉山彝族自治州、阿坝藏族羌族自治州、成都市等地，深入村镇、企业、社区，考察脱贫攻坚和经济社会发展工作，在汶川考察灾后恢复重建发展情况，给各族干部群众送去党中央的亲切关怀。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　地处四川西南部的凉山彝族自治州，是全国最大的彝族聚居区和四川省民族类别、少数民族人口最多的地区。由于自然条件差和发展相对不足，该州是全国集中连片深度贫困地区之一，17个县市中11个为国家扶贫开发工作重点县。习近平十分惦记这里的群众。11日上午，雪后的大凉山艳阳高照，沿途雾凇银光闪闪。习近平乘车沿着坡急沟深的盘山公路，往返4个多小时，深入大凉山腹地的昭觉县三岔河乡三河村和解放乡火普村看望贫困群众。</p><p><br/></p>','2018-02-13 14:42:30.832919','2018-02-13 14:42:30.832954','life','央视网消息：中华民族传统节日农历春节来临之际，中共中央总书记、国家主席、中央军委主席习近平来到四川，就贯彻落实党的十九大精神以及中央经济工作会议、中央农村工作会议精神进行调研，看望慰问各族干部群众，向全国各族人民致以美好的新春祝福。',23),(9,'中宣部原副部长中央网信办原主任鲁炜被双开','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700 !important;\">中央宣传部原副部长、中央网信办原主任鲁炜</span><span style=\"font-weight: 700 !important;\">严重违纪被开除党籍和公职</span></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　日前，经中共中央批准，中共中央纪委对中央宣传部原副部长、中央网信办原主任鲁炜严重违纪问题立案审查。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　经查，鲁炜严重违反政治纪律和政治规矩，阳奉阴违、欺骗中央，目无规矩、肆意妄为，妄议中央，干扰中央巡视，野心膨胀，公器私用，不择手段为个人造势，品行恶劣、匿名诬告他人，拉帮结派、搞“小圈子”；严重违反中央八项规定精神和群众纪律，频繁出入私人会所，大搞特权，作风粗暴、专横跋扈；违反组织纪律，组织谈话函询时不如实说明问题；违反廉洁纪律，以权谋私，收钱敛财；违反工作纪律，对中央关于网信工作的战略部署搞选择性执行；以权谋色、毫无廉耻。利用职务上的便利为他人谋取利益并收受巨额财物涉嫌受贿犯罪。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　鲁炜身为党的高级干部，理想信念缺失，毫无党性原则，对党中央极端不忠诚，“四个意识”个个皆无，“六大纪律”项项违反，是典型的“两面人”，是党的十八大后不收敛、不知止，问题严重集中，群众反映强烈，政治问题与经济问题相互交织的典型，性质十分恶劣、情节特别严重。依据《中国共产党纪律处分条例》等有关规定，经中央纪委常委会会议研究并报中共中央批准，决定给予鲁炜开除党籍、开除公职处分；收缴其违纪所得；将其涉嫌犯罪问题、线索及所涉款物移送有关国家机关依法处理。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<span style=\"font-weight: 700 !important;\">鲁炜简历</span></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　鲁炜，男，汉族，1960年1月生，安徽巢湖人，中共党员。1978年10月参加工作，研究生学历，硕士学位，高级记者。2000年起为享受国务院特殊津贴专家。中共十八大代表。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1978.07——1978.10 安徽巢县庙岗乡鲁集大队回乡知青；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1978.10——1984.09 安徽巢县小学、中学教师，桂林风动工具厂机械工人、宣传干事（1982.09-1985.08在广西广播电视大学语文专业学习）；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1984.09——1991.04 桂林市中级人民法院书记员、干事，广西法制报记者、总编辑助理；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1991.04——1994.06 新华社桂林记者站站长、桂林支社社长；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1994.06——1997.11 新华社广西分社副社长、党组成员；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　1997.11——2001.10 新华社广西分社社长、党组书记（1997.09-2001.06在广西大学研究生班学习）；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2001.10——2001.11 新华社副秘书长，兼任总经理室总经理；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2001.11——2004.05 新华社党组成员、副秘书长、秘书长，兼总经理室总经理、中国经济信息社社长、新闻信息中心主任；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2004.05——2011.03 新华社副社长、党组成员，先后兼任秘书长、经济信息编辑部主任、中经社控股董事长兼总经理、金融信息交易所理事长、中国金融信息大厦有限公司董事长、金融信息交易所理事长、国家金融信息中心有限责任公司董事长兼总经理（06.09-09.01在中央党校研究生班学习，06.09-06.11在中央党校省部级进修班学习，08.11-11.07在中国人民大学攻读硕士学位）；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2011.03——2013.04 中共北京市委常委、宣传部部长，北京市副市长；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2013.04——2014.05 国家互联网信息办公室主任兼中央外宣办、国务院新闻办副主任；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2014.05 中宣部副部长、中央网络安全和信息化领导小组办公室主任、国家互联网信息办公室主任；</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2016.06——，中共中央宣传部副部长。（简历摘自中国共产党新闻网）</p><p><br/></p>','2018-02-13 14:45:35.706077','2018-02-13 14:45:35.706113','code','日前，经中共中央批准，中共中央纪委对中央宣传部原副部长、中央网信办原主任鲁炜严重违纪问题立案审查。  　　经查，鲁炜严重违反政治纪律和政治规矩，阳奉阴违、欺骗中央，目无规矩、肆意妄为，妄议中央，干扰中央巡视，野心膨胀，公器私用，不择手段为个人造势，品行恶劣、匿名诬告他人，拉帮结派、搞“小圈子”；严重违反中央八项规定精神和群众纪律，频繁出入私人会所，大搞特权，作风粗暴、专横跋扈；违反组织纪律，组织谈话函询时不如实说明问题；违反廉洁纪律，以权谋私，收钱敛财；违反工作纪律，对中央关于网信工作的战略部署搞选择性执行',0),(10,'中国在马尔代夫已拥17岛屿是在掠夺土地?中方回应','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">原标题 中国在马尔代夫已拥17岛屿是在掠夺土地？！ 中方回应：纯属捏造，荒唐可笑　　</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　[环球网综合报道]2018年2月13日外交部发言人耿爽主持例行记者会，部分内容如下：</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　问：据报道，近日，马尔代夫前总统纳希德接受《印度时报》采访时称，中国在马已拥有17个岛屿，这是“掠夺土地”，不是中马双边问题，而是“国际问题和国际人权问题”，与分离和殖民主义有关，应通过多边渠道解决，亚明是该问题内因，中国是外因；若其重新上台，将就“土地掠夺”问题寻求国际社会帮助。请问中方对此有何回应？</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　答：我上周曾就纳希德先生的类似言论作出过回应。他的最新表态与他此前的言论如出一辙，纯属捏造，荒唐可笑。我这里需要提醒纳希德先生注意的是，中马合作是否符合双方利益，是否给两国和两国人民带来福祉，最终评判权和发言权在两国广大人民，不是个别人的片面之词可以诋毁的。</p><p><br/></p>','2018-02-13 14:46:26.744005','2018-02-13 14:46:26.744081','code','原标题 中国在马尔代夫已拥17岛屿是在掠夺土地？！ 中方回应：纯属捏造，荒唐可笑　　  　　[环球网综合报道]2018年2月13日外交部发言人耿爽主持例行记者会，部分内容如下：  　　问：据报道，近日，马尔代夫前总统纳希德接受《印度时报》采访时称，中国在马已拥有17个岛屿，这是“掠夺土地”，不是中马双边问题，而是“国际问题和国际人权问题”，与分离和殖民主义有关，应通过多边渠道解决，亚明是该问题内因，中国是外因；若其重新上台，将就“土地掠夺”问题寻求国际社会帮助。请问中方对此有何回应？',0),(11,'崔顺实一审获刑20年 韩媒：将成朴槿惠案风向标','<p><span style=\"color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; background-color: rgb(255, 255, 255); font-weight: 700 !important;\">海外网2月13日电</span><span style=\"color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">&nbsp;韩国“亲信干政”事件关键人物、朴槿惠的闺蜜崔顺实今天（13日）迎来“命运审判”！据韩联社报道，韩国首尔中央地方法院13日下午对崔顺实涉嫌滥用权力与强迫等“干政门”案件作出一审宣判，崔顺实获刑20年，处以罚款180亿韩元。法院认定崔顺实多项罪名与朴槿惠构成共谋关系。去年12月，检方曾要求法院判处崔顺实25年监禁，处以巨额罚款并追缴犯罪所得。</span></p><p><span style=\"color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">现年63岁的崔顺实遭到18项罪名的指控，包括滥用权力、欺诈未遂、强迫、强迫未遂等。韩媒认为，崔顺实有13项罪名与朴槿惠构成共谋，因此崔顺实的一审获刑情况，将成为朴槿惠案审理和定罪的风向标。朴槿惠案一审有望在3月末或4月初宣判。</span></p><p><span style=\"color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">检方认为，崔顺实与朴槿惠、青瓦台前首席秘书安钟范共谋，强迫50多家大企业向崔顺实控制的两家基金会捐款774亿韩元（约合人民币4.5亿元）。此外，崔顺实还涉嫌与朴槿惠共谋，向三星电子副会长李在镕索要巨额资金，用于赞助女儿的马术活动等。李在镕提供或承诺提供的金额达433亿韩元（约合人民币2.5亿元）。</span></p>','2018-02-13 14:47:17.737721','2018-02-13 17:08:29.406403','life','海外网2月13日电 韩国“亲信干政”事件关键人物、朴槿惠的闺蜜崔顺实今天（13日）迎来“命运审判”！据韩联社报道，韩国首尔中央地方法院13日下午对崔顺实涉嫌滥用权力与强迫等“干政门”案件作出一审宣判，崔顺实获刑20年，处以罚款180亿韩元。法院认定崔顺实多项罪名与朴槿惠构成共谋关系。去年12月，检方曾要求法院判处崔顺实25年监禁，处以巨额罚款并追缴犯罪所得。',55),(12,'重庆市委：孙政才是占据重要岗位的腐败分子典型','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">原标题：传达中办关于对孙政才涉嫌犯罪提起公诉的通报精神</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　本报讯 （记者 杨帆 张珺）2月12日，市委常委会召开扩大会议，传达学习中共中央办公厅关于对孙政才涉嫌犯罪提起公诉的通报精神。会议强调，要切实把思想和行动统一到中央精神上来，坚决维护以习近平同志为核心的党中央权威和集中统一领导，坚决贯彻党中央关于全面从严治党的战略部署，始终在思想上政治上行动上同以习近平同志为核心的党中央保持高度一致。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　市委书记陈敏尔主持会议并讲话。市委副书记、市长唐良智，市委常委，市人大常委会、市政府、市政协班子成员，市高法院、市检察院、重庆大学主要负责同志，部分市级老领导参加会议。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　会上，大家结合学习中办通报精神的认识和体会纷纷发言。大家一致表示，坚决拥护党中央的决定，坚决维护以习近平同志为核心的党中央权威和集中统一领导，坚决肃清孙政才恶劣影响和“薄、王”思想遗毒，始终严格要求自己，对党忠诚老实，当好党内政治生态的“护林员”，扎实做好重庆各项工作。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　会议指出，<span style=\"font-weight: 700 !important;\">孙政才政治野心和个人私欲极度膨胀，“十个必须”条条触犯，“七个有之”样样皆占，腐化堕落、触犯法律，是党的十八大后仍然不收敛、不收手，问题严重突出、群众反映强烈、占据重要岗位的腐败分子典型，严重损害党的形象，严重损害国家利益，严重损害法律尊严，必须依法予以严惩。</span>对孙政才涉嫌犯罪案件依法提起公诉，充分表明以习近平同志为核心的党中央将反腐败斗争进行到底的坚定决心，充分体现了我们党全面从严治党的根本要求和全面依法治国的执政理念，充分体现了我们党在党纪国法面前人人平等、决不允许任何人有任何特权的坚强意志。全市各级党组织和广大党员干部要牢固树立“四个意识”，坚定“四个自信”，坚决维护以习近平同志为核心的党中央权威和集中统一领导，坚决贯彻党中央关于全面从严治党的战略部署，始终在思想上政治上行动上同以习近平同志为核心的党中央保持高度一致。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　会议强调，全市各级党组织和全体党员特别是各级领导干部要认真学习贯彻中办通报精神，深刻汲取教训，切实引以为戒，做政治上的明白人、老实人。要旗帜鲜明讲政治，把维护以习近平同志为核心的党中央权威和集中统一领导作为最高政治原则和根本政治规矩，不断增强忠诚核心、拥戴核心、维护核心、捍卫核心的政治、思想和行动自觉，把“四个意识”转化为听党指挥、为党尽责的实际行动。要对宪法法律始终保持敬畏之心，带头尊崇宪法、学习宪法、遵守宪法、维护宪法、运用宪法，按法定权限、规则、程序办事，坚决防止以言代法、以权压法、逐利违法、徇私枉法。要加强对权力运行的制约和监督，确保权力在阳光下运行，切实把党和人民赋予的权力造福于人民。要重整行装再出发，以永远在路上的勇气和决心，坚决把党风廉政建设和反腐败斗争进行到底。要以更高的政治站位和更大的工作力度，按照“十破十立”的要求，全面彻底干净肃清孙政才恶劣影响和“薄、王”思想遗毒。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　<span style=\"font-weight: 700 !important;\">相关新闻</span></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　重温习近平总书记强调的“七个有之”</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px;\">　　习近平的“十个必须” 您做到了吗？</p><p class=\"show_author\" style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; text-align: right;\">责任编辑：初晓慧</p><p><label style=\"font-weight: 700; color: rgb(77, 79, 83);\">关键字 :&nbsp;</label>孙政才 中办党 中央</p><p><br/></p>','2018-02-13 14:48:34.036489','2018-02-13 14:48:34.036524','code','原标题：传达中办关于对孙政才涉嫌犯罪提起公诉的通报精神  　　本报讯 （记者 杨帆 张珺）2月12日，市委常委会召开扩大会议，传达学习中共中央办公厅关于对孙政才涉嫌犯罪提起公诉的通报精神。会议强调，要切实把思想和行动统一到中央精神上来，坚决维护以习近平同志为核心的党中央权威和集中统一领导，坚决贯彻党中央关于全面从严治党的战略部署，始终在思想上政治上行动上同以习近平同志为核心的党中央保持高度一致。',1),(13,'中纪委机关刊：党内有人别有用心 对反腐高级黑','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">原标题：官媒：警惕“两面人”对党中央的决策部署说的多、做的少</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　白广磊</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　“全面从严治党必须持之以恒、毫不动摇。”这是习近平总书记在十九届中央纪委二次全会上，从当前我们党管党治党形势的严峻复杂性出发，向全党提出的明确要求。其中，违反政治纪律和政治规矩、对党不忠诚的“两面人”恶性难改，就是这种严峻复杂性的重要表现之一，值得全党警惕。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　政治纪律是最重要、最根本、最关键的纪律，是维护党的团结统一的根本保证。我们党从诞生之日起，就高度重视严明政治纪律，以此保持党的团结统一，保证党的凝聚力和战斗力。党的十八大以来，以习近平同志为核心的党中央把严明政治纪律放在从严管党治党、加强纪律建设的首位来抓。在党的十八大后第一次出席中央纪委全会时，习近平总书记就突出强调政治纪律，指出“严明党的纪律，首要的就是严明政治纪律”。总书记不仅强调重要性，还点问题、指路径、教方法。党的十八届四中全会上，列举了违反政治纪律的“七个有之”问题；中央纪委五次全会上，在政治纪律基础上首次明确提出遵守政治规矩的要求，并用“五个必须”对政治纪律和政治规矩作出规范；中央纪委六次全会上，又突出强调防治“两面人”问题。党的十九大上，习近平总书记高瞻远瞩，把严明政治纪律和政治规矩作为党的政治建设的重要内容，要求全党切实遵守……总书记反复强调、谆谆告诫、步步深入，给全党拧紧了严明政治纪律的发条。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　言出必行，让铁规生威。从严肃查处周永康、郭伯雄、徐才厚、<a href=\"http://news.sina.com.cn/c/nd/2018-01-10/doc-ifyqiwuw8976136.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">孙政才</a>、令计划等严重违纪违法案件，到严肃查处湖南衡阳破坏选举案和四川南充、辽宁拉票贿选案，再到把严明党的政治纪律作为一部分，写入《关于新形势下党内政治生活的若干准则》，党中央严明政治纪律的决心坚如磐石、步伐坚定有力。贯彻落实党中央要求，中央纪委和各级纪检监察机关坚决把维护政治纪律放在首位，五年来共立案审查违反政治纪律案件1.5万件，处分1.5万人，其中包括中管干部112人。经过不懈努力，广大党员干部绷紧了政治纪律这根弦，在全党逐渐形成了讲政治、守纪律的良好氛围。各级党委（党组）贯彻落实党中央决策部署更加坚决、高效、到位，抓政治纪律的责任意识明显增强。过去在很多人看来比较“虚”、“软”、“空”的政治纪律，现在正逐步做深做实、抓出成效。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　然而，昨天的成绩决不意味着可以高枕无忧，虽然党中央对严明政治纪律和政治规矩三令五申，但仍有少数党员干部不讲政治、违规逾矩。例如，去年以来中央纪委通报的省部级干部违纪情况中，<a href=\"http://news.sina.com.cn/c/2018-01-10/doc-ifyqptqv6961803.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">王三运</a>“丧失政治立场，妄议党中央大政方针”；<a href=\"http://news.sina.com.cn/c/nd/2018-01-12/doc-ifyqqieu6011663.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">李嘉</a>“阳奉阴违、结党营私、拉帮结派，进行非组织活动”；<a href=\"http://news.sina.com.cn/c/nd/2017-12-20/doc-ifyptkyk5536867.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">魏民洲</a>“搞政治投机和政治攀附，政治品行败坏”；<a href=\"http://news.sina.com.cn/c/nd/2017-09-10/doc-ifykuffc4925143.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">虞海燕</a>“搞团团伙伙，培植私人势力”。而党的十九大后中央纪委通报的第一个被“双开”的省部级干部——辽宁省原副省长<a href=\"http://news.sina.com.cn/c/nd/2018-02-05/doc-ifyreyvz9222321.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">刘强</a>，则存在“利用职权搞有组织的拉票贿选活动”、“长期卖官鬻爵”等情形。这些问题都在“七个有之”之列。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　“七个有之”本质上是政治问题，概括起来是两个方面：一个是政治问题和经济问题交织形成利益集团，妄图攫取党和国家权力；一个是山头主义和宗派主义作祟，大搞非组织活动。它造成党员干部与党离心离德，严重破坏了党的团结统一，危害党和国家政治安全。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　除了老问题，一些新表现、新特点同样值得警惕。一是违反政治纪律更加隐蔽。有基层纪检监察干部反映，过去，那些习惯于“拉天线”、织“人情网”的党员领导干部多是通过聚会、吃饭、联谊等方式搞，动静大、易发现，现在纪律严了，有的便通过“业务交流”、“商会聚餐”等方式变相搞，不再像过去那样明目张胆，却更隐蔽。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　二是表态多调门高、行动少落实差，搞政治上的形式主义。对党中央的决策部署说的多、做的少，表态多、行动少，甚至光说不练，“光打雷不下雨”，名为拥护实为软抵抗。这种行为往往占据“政治正确”的制高点，搞堂而皇之的“政治排场”，让批评者有所顾忌、无从下手，欺骗性更大。其实，搞政治上的形式主义，就是“两面人”。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　三是制造杂音噪音，妄图干扰视听。随着全面从严治党的推进，党内对正风肃纪反腐重要性的认识趋于一致，但也不乏有些“高级黑”，不断在释放杂音噪音。例如，有人说反腐败是搞权力斗争，排除异己；有的认为这导致人人自危、为官不为，影响经济发展；有的认为这是自曝家丑，有损党和政府的形象；有的认为查了这么多，影响了党内民主和谐的氛围。出现这些杂音噪音，有的是政治上糊涂，头脑不清醒；更多的则是别有用心，企图浑水摸鱼。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　面对老问题新挑战，首要的就是聚焦“七个有之”严明政治纪律和政治规矩。各级党组织既要严肃党内政治生活，把纪律和规矩挺在前面，发现苗头及时制止和纠正，又要发展积极健康的党内政治文化，弘扬对党忠诚、老实的价值观。党员干部必须提高思想境界和政治觉悟，增强政治警觉性和政治鉴别力，自觉抵制“七个有之”的腐蚀，避免成为“两面人”。从各级纪检监察机关角度来讲，必须从关系党和国家生死存亡的高度，对“七个有之”问题高度警觉，旗帜鲜明同违规逾矩、搞团团伙伙的行为作斗争，把政治上蜕变、对党不忠诚的“两面人”从党内及时辨别出来、清除出去，促进党员干部队伍不断纯洁起来。</p><p><br/></p>','2018-02-13 14:49:22.933642','2018-02-13 17:08:19.425267','life','“全面从严治党必须持之以恒、毫不动摇。”这是习近平总书记在十九届中央纪委二次全会上，从当前我们党管党治党形势的严峻复杂性出发，向全党提出的明确要求。其中，违反政治纪律和政治规矩、对党不忠诚的“两面人”恶性难改，就是这种严峻复杂性的重要表现之一，值得全党警惕。',1),(15,'中共中央、国务院举行春节团拜会 习近平发表重要讲话','<p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\"><strong>央视网消息</strong>：（新闻联播）中共中央、国务院14日上午在人民大会堂举行2018年春节团拜会。中共中央总书记、国家主席、中央军委主席习近平发表重要讲话，代表党中央、国务院，向全国各族人民，向香港特别行政区同胞、澳门特别行政区同胞、台湾同胞和海外侨胞拜年。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　党和国家领导人李克强、张德江、俞正声、张高丽、栗战书、汪洋、王沪宁、赵乐际、韩正等出席团拜会，李克强主持。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　人民大会堂宴会厅灯火辉煌、暖意融融，各界人士2000多人欢聚一堂、共迎新春，欢声笑语间洋溢着喜庆祥和的节日气氛。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　上午10时，在欢快的乐曲声中，习近平等党和国家领导人步入大厅，全场响起热烈掌声。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平在讲话中指出，时间是最客观的见证者。过去的一年，全党全军全国各族人民团结一心、锐意进取，推动中国特色社会主义各项事业取得新的重大成就。我国经济发展独领风骚，深化改革多点突破，依法治国深入实施，人民生活继续改善，脱贫攻坚有力推进，国防和军队建设开创新局，全方位外交成果丰硕，从严治党全面推进。特别是我们召开了党的十九大，全面总结了党的十八大以来党和国家各项事业取得的成就和经验，指明了新时代中国特色社会主义发展方向，擘画了到本世纪中叶我国发展的宏伟蓝图，开启了全面建设社会主义现代化国家新征程。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平强调，这些成绩，同党和人民长期奋斗的成就一起，像涓涓细流汇成江海，推动“中国号”巨轮驶入新的水域。近代以后久经磨难的中华民族，在百折不挠的奋斗中迎来了从站起来、富起来到强起来的伟大飞跃。中国的伟大发展成就是中国人民用自己的双手创造的，是一代又一代中国人接力奋斗创造的。让我们向所有为伟大祖国发展进步、为中华民族独立强盛作出贡献的老英雄、老模范、老战士、老同志、老前辈致以最崇高的敬意。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平指出，春节是新的开始，预示着新的希望。2018年是全面贯彻中共十九大精神的开局之年，是决胜全面建成小康社会、实施“十三五”规划承上启下的关键之年，也是改革开放40周年。面对波谲云诡的国际形势、艰巨繁重的国内改革发展稳定任务，全党全军全国各族人民要紧密团结在党中央周围，全面贯彻党的十九大精神，坚持以马克思列宁主义、毛泽东思想、邓小平理论、“三个代表”重要思想、科学发展观、新时代中国特色社会主义思想为指导，增强“四个意识”，坚定“四个自信”，坚持稳中求进工作总基调，以真抓的实劲、敢抓的狠劲、善抓的巧劲、常抓的韧劲，统筹推进“五位一体”总体布局，协调推进“四个全面”战略布局，一步一个脚印把既定的行动纲领、战略决策、工作部署变为现实，继续朝着我们确立的伟大目标奋勇前进。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平强调，团聚最喜悦，团圆最幸福，团结最有力。春节是万家团圆的日子。中华民族历来重视家庭，家和万事兴。国家富强，民族复兴，最终要体现在千千万万个家庭都幸福美满上，体现在亿万人民生活不断改善上。千家万户都好，国家才能好，民族才能好。我们要积极培育和践行社会主义核心价值观，弘扬中华民族传统美德，把爱家和爱国统一起来，把实现个人梦、家庭梦融入国家梦、民族梦之中，用我们4亿多家庭、13亿多人民的智慧和力量，汇聚起夺取新时代中国特色社会主义伟大胜利、实现中华民族伟大复兴中国梦的磅礴力量。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平指出，只有奋斗的人生才称得上幸福的人生。奋斗是艰辛的，艰难困苦、玉汝于成，没有艰辛就不是真正的奋斗，我们要勇于在艰苦奋斗中净化灵魂、磨砺意志、坚定信念。奋斗是长期的，前人栽树、后人乘凉，伟大事业需要几代人、十几代人、几十代人持续奋斗。奋斗是曲折的，“为有牺牲多壮志，敢教日月换新天”，要奋斗就会有牺牲，我们要始终发扬大无畏精神和无私奉献精神。奋斗者是精神最为富足的人，也是最懂得幸福、最享受幸福的人。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平强调，新时代是奋斗者的时代。我们要坚持把人民对美好生活的向往作为我们的奋斗目标，始终为人民不懈奋斗、同人民一起奋斗，切实把奋斗精神贯彻到进行伟大斗争、建设伟大工程、推进伟大事业、实现伟大梦想全过程，形成竞相奋斗、团结奋斗的生动局面。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　习近平指出，改革开放40年来，我们以敢闯敢干的勇气和自我革新的担当，闯出了一条新路、好路，实现了从“赶上时代”到“引领时代”的伟大跨越。今天，我们要不忘初心、牢记使命，继续以逢山开路、遇水架桥的开拓精神，开新局于伟大的社会革命，强体魄于伟大的自我革命，在我们广袤的国土上继续书写13亿多中国人民伟大奋斗的历史新篇章！</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　团拜会上，习近平等党和国家领导人来到大家中间，同大家亲切握手，互致问候、祝福新春。文艺工作者表演了精彩的节目。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　中共中央、全国人大常委会、国务院、最高人民法院、最高人民检察院、全国政协、中央军委领导同志和老同志出席团拜会。</p><p style=\"margin-top: 0px; margin-bottom: 28px; padding: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-stretch: normal; line-height: 1.75em; font-family: Arial, 宋体; color: rgb(51, 51, 51); white-space: normal; background-color: rgb(255, 255, 255);\">　　参加团拜会的还有中央党政军群各部门及北京市负责同志，各民主党派中央、全国工商联负责人和无党派人士代表，离退休老同志代表，著名专家学者及首都各界人士代表。</p><p><br/></p>','2018-02-14 13:15:10.694873','2018-02-14 13:15:10.694908','code','央视网消息：（新闻联播）中共中央、国务院14日上午在人民大会堂举行2018年春节团拜会。中共中央总书记、国家主席、中央军委主席习近平发表重要讲话，代表党中央、国务院，向全国各族人民，向香港特别行政区同胞、澳门特别行政区同胞、台湾同胞和海外侨胞拜年。',0),(16,'中央看望老同志 名单上有了这些变化','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">春节前夕，中共中央总书记、国家主席、中央军委主席习近平等党和国家领导人分别看望或委托有关方面负责同志看望了江泽民、胡锦涛、李鹏、朱镕基、李瑞环、吴邦国、温家宝、贾庆林、宋平、李岚清、曾庆红、吴官正、李长春、罗干、贺国强、刘云山和田纪云、迟浩田、姜春云、王乐泉、王兆国、回良玉、刘淇、吴仪、曹刚川、曾培炎、王刚、孟建柱、郭金龙、王汉斌、何勇、赵洪祝、王丙乾、邹家华、王光英、铁木尔·达瓦买提、彭珮云、周光召、曹志、李铁映、司马义·艾买提、何鲁丽、丁石孙、许嘉璐、蒋正华、顾秀莲、热地、盛华仁、路甬祥、乌云其木格、华建敏、陈至立、周铁农、司马义·铁力瓦尔地、蒋树声、桑国卫、唐家璇、梁光烈、戴秉国、肖扬、韩杼滨、贾春旺、叶选平、杨汝岱、任建新、宋健、钱正英、孙孚凌、胡启立、赵南起、毛致用、王忠禹、李贵鲜、张思卿、张克辉、郝建秀、徐匡迪、张怀西、李蒙、廖晖、白立忱、陈奎元、阿不来提·阿不都热西提、李兆焯、黄孟复、张梅颖、张榕明、钱运录、孙家正、李金华、郑万通、邓朴方、厉无畏、陈宗兴、王志珍等老同志，向老同志们致以诚挚的节日问候，衷心祝愿老同志们新春愉快、健康长寿。老同志们对此表示感谢，高度评价以习近平同志为核心的党中央带领全党全军全国各族人民开创新时代中国特色社会主义事业新局面所取得的历史性成就，对习近平总书记作为党中央的核心、全党的核心表示衷心拥护。老同志们希望全党全国各族人民更加紧密地团结在以习近平同志为核心的党中央周围，高举中国特色社会主义伟大旗帜，以习近平新时代中国特色社会主义思想为指导，全面深入贯彻党的十九大精神，锐意进取，埋头苦干，为决胜全面建成小康社会、夺取新时代中国特色社会主义伟大胜利作出新的贡献。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　与2017年<a href=\"http://news.sina.com.cn/c/nd/2018-02-13/doc-ifyrkrva8513017.shtml\" target=\"_blank\" style=\"margin: 0px; padding: 0px; text-decoration-line: none; color: rgb(94, 111, 170); outline: none;\">老同志</a>名单对比：</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　其中，卸任中央政治局常委中，刘云山在看望名单中。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　张德江现任全国人大常委会委员长，俞正声现任全国政协主席，王岐山此前在湖南当选十三届全国人大代表，张高丽现任国务院副总理。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　卸任中央政治局委员中，孟建柱，郭金龙在看望名单中。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　马凯现任国务院副总理，刘延东现任国务院副总理，刘奇葆入列中国人民政治协商会议第十三届全国委员会委员，李建国现任全国人大常委会副委员长，李源潮现任国家副主席，张春贤在湖北当选十三届全国人大代表，范长龙还任职中华人民共和国中央军事委员会副主席。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　卸任中央书记处书记中，赵洪祝在看望名单中。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　杜青林现任全国政协副主席，杨晶现任国务委员兼国务院秘书长。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　另外，过去一年有四人去世：钱其琛、布赫、万国权、罗豪才。</p><p><br/></p>','2018-02-14 13:16:57.399058','2018-02-14 13:16:57.399092','code','春节前夕，中共中央总书记、国家主席、中央军委主席习近平等党和国家领导人分别看望或委托有关方面负责同志看望了江泽民、胡锦涛、李鹏、朱镕基、李瑞环、吴邦国、温家宝、',3),(17,'五大战区主官揭晓 6位将军去年履新5位跨单位提任','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">政知圈（微信ID：wepolitics）终于可以说，在去年8月原中部战区司令员韩卫国被曝转任陆军司令员之后，接任者终于正式披露。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　接任的正是军委联合参谋部原副参谋长乙晓光上将。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　其实在去年10月份十九大期间，就有媒体注意到，乙晓光佩戴中部战区臂章出席解放军和武警部队代表团讨论会，当时其就座于中部战区政委殷方龙上将右侧。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">1958年6月出生的乙晓光曾是特级飞行员，飞过多种先进机型。据其家乡江苏宿迁市双拥协会官网披露，乙晓光“系统地飞过米格15、歼5、歼6、歼7、苏27、苏30等飞机，1997年在美国飞过F15飞机，2000年在希腊飞过幻影2000、F1模拟机，参加过“和平使命——2005”演习。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　40年行伍生涯，他辗转空军司令部、成都军区、广州军区、南京军区等多个大单位。2012年12月，他出任总参谋长助理，是当时“解放军最年轻现役中将”。不到两年，又升任副总参谋长。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　政知圈（微信ID：wepolitics）印象很深的是，军改后出任中央军委联合参谋部副参谋长的乙晓光，曾作为军委派出的代表，接连承担两项特别任务。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2016年6月，中国驻马里共和国维和部队遭遇恐怖袭击，年仅29岁的申亮亮不幸牺牲。乙晓光赶往吉林省长春市龙嘉机场迎接烈士灵柩。他当时透露，这是我国首次派出军用运输机、跨越11个国家、往返飞行两万七千公里接烈士灵柩回国。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　一个月后，中国赴南苏丹维和步兵营一辆装甲车在执行任务时被炮弹击中，造成李磊、杨树朋两名中国战士牺牲。当年7月20日，乙晓光又被军委派往河南新郑国际机场迎接伤亡人员回国。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　9天后，在八一大楼，他被授予上将军衔，又成为解放军最年轻的现役上将。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　一年后，这名年轻上将职务再次调整。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2017年9月份左右，媒体披露军方高级将领“一系列调整”，因为其不仅涉及军委十多个部门，还涵盖兵种、战区等各大单位。例如两大战区司令员先后履新：中部战区司令员韩卫国调任陆军司令员、北部战区司令员宋普选调任军委后勤保障部部长。两人都是十八大以来两次盛大阅兵的总指挥，宋普选担任北京战区司令员时，是2015年“9·3”阅兵总指挥；韩卫国则是在朱日和的建军节阅兵总指挥。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　随后乙晓光接替韩卫国，执掌中部战区。至此，几大战区主官终于正式揭晓。</p><p><br/></p>','2018-02-14 13:18:24.747616','2018-02-14 13:18:24.747654','code','政知圈（微信ID：wepolitics）终于可以说，在去年8月原中部战区司令员韩卫国被曝转任陆军司令员之后，接任者终于正式披露。  　　接任的正是军委联合参谋部原副参谋长乙晓光上将。  　　其实在去年10月份十九大期间，就有媒体注意到，乙晓光佩戴中部战区臂章出席解放军和武警部队代表团讨论会，当时其就座于中部战区政委殷方龙上将右侧。',10),(18,'中国冬奥队4人被罚出局 媒体:冰场冷但我们血很热','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">“短道速滑的一个比赛日，中国队任子威、韩天宇、范可新、曲春雨四名选手被判了犯规。。。。。。韩国的冰场特别冷！”@CCTV5 如是评价中国队昨天的遭遇。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　<span style=\"font-weight: 700 !important;\">能想到开头但想不到结尾：“最稳的金牌”被罚掉</span></p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　短道速滑女子500米项目，过去四次冬奥会中国获得了四连冠，分别是2002盐湖城的大杨扬，2006都灵、2010温哥华的王濛，2014索契的李坚柔。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　然而在昨晚的江陵滑冰馆，中国短道队丢掉了已保持16年的冬奥会女子短道速滑500米金牌，无法继续“五连冠”。不过，中国队丢掉金牌的原因是范可新和曲春雨双双被判犯规出局，导致中国队无人晋级最终的决赛。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　中国队以这样的方式丢掉了这枚原本最稳的金牌，让队员们感到憋屈</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">男子1000米预赛第四组，任子威被判犯规，被取消比赛成绩，赛后的录像回放显示，任子威与其他选手之间有轻微的身体接触，却因此引来被取消成绩的重罚，任子威在赛后表示“这种判罚莫名其妙”。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　第六组上场的韩天宇，也是因为与其他队员之间有轻微的身体接触，也被取消比赛成绩。最终，中国队只有武大靖一人晋级到男子1000米四分之一决赛。此后进行的女子500米第一组半决赛，范可新再次领到了被取消比赛成绩的处罚；第二场半决赛，中国选手曲春雨看似是被对手侵犯的一个过程，最终也被裁判认定是曲春雨犯规。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　在整个短道速滑比赛日，中国队任子威、韩天宇、范可新、曲春雨四名选手被判了犯规，中国队主帅李琰赛后直接离场。</p><p><br/></p>','2018-02-14 13:19:20.931462','2018-02-14 13:19:20.931501','code','短道速滑的一个比赛日，中国队任子威、韩天宇、范可新、曲春雨四名选手被判了犯规。。。。。。韩国的冰场特别冷！”@CCTV5 如是评价中国队昨天的遭遇。',6),(19,'中宣部:与鲁炜划清界限 全面肃清其恶劣影响','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">2月13日，中央宣传部召开专题会议，传达学习党中央关于给予鲁炜开除党籍、开除公职处分的决定。一致认为，党中央决定充分体现了以习近平同志为核心的党中央坚持党要管党、全面从严治党的鲜明立场，充分体现了我们党深入推进党风廉政建设和反腐败斗争的坚强意志。一致表示，坚决拥护党中央决定，坚决维护习近平总书记在党中央和全党的核心地位，坚决维护党中央权威和集中统一领导，在政治立场、政治方向、政治原则、政治道路上同以习近平同志为核心的党中央保持高度一致。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　会议认为，鲁炜严重背离党性原则，对党毫无忠诚，对政治纪律和政治规矩、中央八项规定精神、组织纪律、廉洁纪律、群众纪律、工作纪律、生活纪律样样违反，道德品质恶劣，以网谋私、挟网自大，是典型的“两面人”。这样的毒瘤必须割除、影响必须肃清。一致表示，要切实增强政治意识、大局意识、核心意识、看齐意识，坚定政治立场、明辨大是大非，深刻反思、吸取教训，旗帜鲜明与鲁炜划清界限，坚决全面彻底肃清鲁炜的恶劣影响。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　会议强调，要深入学习贯彻习近平新时代中国特色社会主义思想和党的十九大精神，坚决维护习近平总书记的核心地位，坚决维护以习近平同志为核心的党中央权威和集中统一领导。要深入学习贯彻党的十九大关于加强党的建设的战略部署，切实加强中央宣传部党的建设和全面从严治党各项工作，坚决落实全面从严治党主体责任。要以鲁炜为反面教材，在全体党员干部中开展警示教育，引导党员干部引以为戒，筑牢思想防线，遵纪守法，守住底线。要坚持对腐败“零容忍”，坚决查处违纪违法行为，持之以恒抓好中央八项规定精神和实施细则贯彻落实，使全面从严治党常态化。要坚决贯彻习近平总书记关于宣传思想文化工作的一系列重要指示精神，全面落实党中央有关决策部署，振奋精神，凝聚力量，同心协力开创新时代宣传思想文化工作新局面。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　中央网信办坚决拥护中央对鲁炜严重违纪给予开除党籍和公职的决定坚决清除鲁炜对网信事业造成的恶劣影响</p><p><br/></p>','2018-02-14 13:20:13.098353','2018-02-14 13:20:13.098384','code','2月13日，中央宣传部召开专题会议，传达学习党中央关于给予鲁炜开除党籍、开除公职处分的决定。一致认为，党中央决定充分体现了以习近平同志为核心的党中央坚持党要管党、全面从严治党的鲜明立场，充分体现了我们党深入推进党风廉政建设和反腐败斗争的坚强意志。一致表示，坚决拥护党中央决定，坚决维护习近平总书记在党中央和全党的核心地位，坚决维护党中央权威和集中统一领导，在政治立场、政治方向、政治原则、政治道路上同以习近平同志为核心的党中央保持高度一致。',52),(20,'印媒：莫迪将于2018年农历除夕再访藏南地区','<p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">印度媒体“阿鲁纳恰尔24”14日称，印度总理莫迪将在2月15日（即中国农历大年三十）对所谓的“阿鲁纳恰尔邦”首府伊塔那噶进行访问。印度将其非法占领的中国藏南地区设为“阿鲁纳恰尔邦”。中方从来不承认所谓的“阿鲁纳恰尔邦”。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">“阿鲁纳恰尔24”称，这是莫迪作为印度总理，第二次视察该地区。2015年2月，莫迪曾访问该地区，并在此参加了国家日活动。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　报道称，在15日为期一天的访问期间，莫迪将出席多个公共设施的落成和奠基仪式，还会在当地的英德拉•甘地公园（IG park）发表公开演说。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">今年年初，印度媒体就传出莫迪或访问藏南地区（印方所谓“阿鲁那恰尔邦”）的消息。而印度防长西塔拉曼和总统科温德曾于2017年11月访问藏南地区，中方都已严正表示反对。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　2017年11月5日，印度国防部长西塔拉曼访问印度非法占领的中国藏南地区（印度称“阿鲁纳恰尔邦”），视察印军边防哨所的战备情况。对此，中国外交部发言人华春莹在6日的例行记者会上回应表示，“中方在中印边界上的立场非常清楚。中印边界东段是存在争议的，这是客观事实。我们认为印方官员去中印边界争议地区活动，可能会使边界问题复杂化，不利于双方维护边境地区和平与安宁的努力。希望印方能和中方一道共同努力，继续为双方通过谈判妥善解决边界问题创造良好的条件和氛围，维护好两国关系发展大局”。</p><p style=\"margin-top: 0px; margin-bottom: 18px; padding: 0px; color: rgb(77, 79, 83); font-family: &quot;Microsoft Yahei&quot;, &quot;\\\\5FAE软雅黑&quot;, &quot;STHeiti Light&quot;, &quot;\\\\534E文细黑&quot;, SimSun, &quot;\\\\5B8B体&quot;, Arial, sans-serif; font-size: 18px; letter-spacing: 1px; white-space: normal; background-color: rgb(255, 255, 255);\">　　随后，据印度媒体报道，印度总统科温德于11月19日赴所谓“阿鲁纳恰尔邦”活动。中国外交部发言人陆慷在20日的例行记者会上重申，中方从不承认所谓的“阿鲁纳恰尔邦”。中方在中印边界问题上的立场是一贯和明确的。当前，中印双方正在通过谈判协商解决两国边界问题，寻求公平合理和双方都能接受的解决方案。在边界问题解决之前，双方应共同维护边境地区的和平与安宁。中方坚决反对印度领导人到争议区活动。当前中印关系正处于发展的重要时刻，希望印方与中方相向而行，维护双边关系大局，不要采取使边界问题复杂化的举动，而是应当为边界谈判和两国关系的健康稳定发展创造有利条件。</p><p><br/></p>','2018-02-14 13:21:05.189404','2018-02-14 13:21:05.189438','code','印度媒体“阿鲁纳恰尔24”14日称，印度总理莫迪将在2月15日（即中国农历大年三十）对所谓的“阿鲁纳恰尔邦”首府伊塔那噶进行访问。印度将其非法占领的中国藏南地区设为“阿鲁纳恰尔邦”。中方从来不承认所谓的“阿鲁纳恰尔邦”。',102);
/*!40000 ALTER TABLE `blog_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `text` longtext NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `article_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_article_id_94fe60a2_fk_blog_article_id` (`article_id`),
  CONSTRAINT `comments_comment_article_id_94fe60a2_fk_blog_article_id` FOREIGN KEY (`article_id`) REFERENCES `blog_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
INSERT INTO `comments_comment` VALUES (1,'ckt','330953853@qq.com','评论测试','2018-02-20 09:49:46.988468',20),(2,'陈开拓','330953853@qq.com','评论测试2','2018-02-20 09:50:39.511118',20),(3,'Alex','330953853@qq.com','评论测试','2018-02-20 18:06:10.493785',19),(4,'Alex','330953853@qq.com','nihao','2018-02-20 18:42:03.747581',20),(5,'陈开拓','330953853@qq.com','评论测试','2018-02-20 18:54:02.235281',18),(7,'陈开拓','330953853@qq.com','评论测试','2018-02-20 20:48:26.795350',8),(8,'ckt','330953853@qq.com','评论测试1','2018-02-20 20:52:58.600002',8),(9,'陈开拓','330953853@qq.com','评论测试2','2018-02-20 23:40:05.903394',19);
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-02-11 08:06:16.100223','1','第一篇',1,'[{\"added\": {}}]',7,2),(2,'2018-02-11 09:25:18.642628','1','Person object',1,'[{\"added\": {}}]',8,2),(3,'2018-02-11 09:25:38.609000','1','第一篇',3,'',7,2),(4,'2018-02-11 10:47:38.667838','2','第一篇',1,'[{\"added\": {}}]',7,2),(5,'2018-02-12 09:47:19.498304','3','hhh',1,'[{\"added\": {}}]',7,2),(6,'2018-02-12 09:51:42.730706','3','hhh',3,'',7,2),(7,'2018-02-12 09:51:42.733678','2','第一篇',3,'',7,2),(8,'2018-02-12 09:51:56.274964','4','llll',1,'[{\"added\": {}}]',7,2),(9,'2018-02-12 14:11:49.019023','5','富文本编辑器',1,'[{\"added\": {}}]',7,2),(10,'2018-02-12 14:13:19.308472','4','llll',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(11,'2018-02-12 14:19:03.309364','5','富文本编辑器',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(12,'2018-02-12 19:06:02.067394','6','aaa',1,'[{\"added\": {}}]',7,2),(13,'2018-02-13 06:22:14.395299','6','aaa',3,'',7,2),(14,'2018-02-13 06:22:35.791771','4','llll',3,'',7,2),(15,'2018-02-13 06:24:02.434500','7','Hello World',1,'[{\"added\": {}}]',7,2),(16,'2018-02-13 14:29:37.733568','7','Hello World',3,'',7,2),(17,'2018-02-13 14:29:37.738487','5','富文本编辑器',3,'',7,2),(18,'2018-02-13 14:42:30.840861','8','习近平春节前夕赴四川看望慰问各族干部群众',1,'[{\"added\": {}}]',7,2),(19,'2018-02-13 14:45:35.708102','9','中宣部原副部长中央网信办原主任鲁炜被双开',1,'[{\"added\": {}}]',7,2),(20,'2018-02-13 14:46:26.744730','10','中国在马尔代夫已拥17岛屿是在掠夺土地?中方回应',1,'[{\"added\": {}}]',7,2),(21,'2018-02-13 14:47:17.738465','11','崔顺实一审获刑20年 韩媒：将成朴槿惠案风向标',1,'[{\"added\": {}}]',7,2),(22,'2018-02-13 14:48:34.037963','12','重庆市委：孙政才是占据重要岗位的腐败分子典型',1,'[{\"added\": {}}]',7,2),(23,'2018-02-13 14:49:22.935079','13','中纪委机关刊：党内有人别有用心 对反腐高级黑',1,'[{\"added\": {}}]',7,2),(24,'2018-02-13 17:08:19.429988','13','中纪委机关刊：党内有人别有用心 对反腐高级黑',2,'[{\"changed\": {\"fields\": [\"article_cate\"]}}]',7,2),(25,'2018-02-13 17:08:29.407465','11','崔顺实一审获刑20年 韩媒：将成朴槿惠案风向标',2,'[{\"changed\": {\"fields\": [\"article_cate\"]}}]',7,2),(26,'2018-02-14 13:09:13.388646','14','陈开创是小屁孩',1,'[{\"added\": {}}]',7,2),(27,'2018-02-14 13:09:50.741268','14','陈开创是小屁孩',3,'',7,2),(28,'2018-02-14 13:15:10.696135','15','中共中央、国务院举行春节团拜会 习近平发表重要讲话',1,'[{\"added\": {}}]',7,2),(29,'2018-02-14 13:16:57.401003','16','中央看望老同志 名单上有了这些变化',1,'[{\"added\": {}}]',7,2),(30,'2018-02-14 13:18:24.748492','17','五大战区主官揭晓 6位将军去年履新5位跨单位提任',1,'[{\"added\": {}}]',7,2),(31,'2018-02-14 13:19:20.932868','18','中国冬奥队4人被罚出局 媒体:冰场冷但我们血很热',1,'[{\"added\": {}}]',7,2),(32,'2018-02-14 13:20:13.099088','19','中宣部:与鲁炜划清界限 全面肃清其恶劣影响',1,'[{\"added\": {}}]',7,2),(33,'2018-02-14 13:21:05.190058','20','印媒：莫迪将于2018年农历除夕再访藏南地区',1,'[{\"added\": {}}]',7,2),(34,'2018-02-21 13:22:15.661056','21','测试数据',1,'[{\"added\": {}}]',7,2),(35,'2018-02-21 13:22:57.714251','21','测试数据',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(36,'2018-02-21 13:23:24.890299','21','测试数据',3,'',7,2),(37,'2018-02-21 14:45:25.379213','22','第一篇文章',1,'[{\"added\": {}}]',7,2),(38,'2018-02-21 14:46:41.716275','22','第一篇文章',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(39,'2018-02-21 14:50:06.381454','22','第一篇文章',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(40,'2018-02-21 14:50:27.323413','22','第一篇文章',3,'',7,2),(41,'2018-02-21 15:13:13.563592','23','测试',1,'[{\"added\": {}}]',7,2),(42,'2018-02-21 15:14:36.196862','23','测试',3,'',7,2),(43,'2018-02-21 15:14:59.429384','24','测试2',1,'[{\"added\": {}}]',7,2),(44,'2018-02-21 15:18:23.050881','24','测试2',3,'',7,2),(45,'2018-02-21 15:18:48.678492','25','测试',1,'[{\"added\": {}}]',7,2),(46,'2018-02-21 15:42:11.654116','26','测试3',1,'[{\"added\": {}}]',7,2),(47,'2018-02-21 15:44:34.239343','26','测试3',3,'',7,2),(48,'2018-02-21 15:44:34.242368','25','测试',3,'',7,2),(49,'2018-02-21 15:44:45.413227','27','cash',1,'[{\"added\": {}}]',7,2),(50,'2018-02-21 18:59:51.031819','27','cash',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(51,'2018-02-21 20:05:05.957035','27','cash',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,2),(52,'2018-02-21 23:04:04.568369','28','你好',1,'[{\"added\": {}}]',7,2),(53,'2018-02-21 23:05:19.192306','28','你好',3,'',7,2),(54,'2018-02-21 23:07:15.952713','29','nihao',1,'[{\"added\": {}}]',7,2),(55,'2018-02-21 23:10:04.520718','30','nihao2',1,'[{\"added\": {}}]',7,2),(56,'2018-02-21 23:11:57.003408','31','hh',1,'[{\"added\": {}}]',7,2),(57,'2018-02-21 23:18:24.841111','31','hh',3,'',7,2),(58,'2018-02-21 23:18:24.843727','30','nihao2',3,'',7,2),(59,'2018-02-21 23:18:24.845241','29','nihao',3,'',7,2),(60,'2018-02-21 23:18:24.846637','27','cash',3,'',7,2),(61,'2018-02-21 23:18:38.578460','32','nihao',1,'[{\"added\": {}}]',7,2),(62,'2018-02-21 23:33:12.150433','32','nihao',3,'',7,2),(63,'2018-02-21 23:33:42.324474','33','123',1,'[{\"added\": {}}]',7,2),(64,'2018-02-21 23:37:56.691899','34','图片',1,'[{\"added\": {}}]',7,2),(65,'2018-02-21 23:38:38.833553','34','图片',3,'',7,2),(66,'2018-02-21 23:38:38.836407','33','123',3,'',7,2),(67,'2018-02-21 23:40:49.250891','35','高兴',1,'[{\"added\": {}}]',7,2),(68,'2018-02-21 23:53:45.197388','36','哈哈',1,'[{\"added\": {}}]',7,2),(69,'2018-02-21 23:55:13.835625','36','哈哈',3,'',7,2),(70,'2018-02-21 23:55:31.298281','37','啦啦啦',1,'[{\"added\": {}}]',7,2),(71,'2018-02-21 23:57:43.224226','37','啦啦啦',3,'',7,2),(72,'2018-02-21 23:57:43.226923','35','高兴',3,'',7,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(7,'blog','article'),(8,'blog','person'),(9,'comments','comment'),(5,'contenttypes','contenttype'),(10,'messageboard','message_list'),(6,'sessions','session'),(1,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-02-07 14:42:34.521040'),(2,'auth','0001_initial','2018-02-07 14:42:34.606286'),(3,'users','0001_initial','2018-02-07 14:42:34.717952'),(4,'admin','0001_initial','2018-02-07 14:42:34.764081'),(5,'admin','0002_logentry_remove_auto_add','2018-02-07 14:42:34.803983'),(6,'contenttypes','0002_remove_content_type_name','2018-02-07 14:42:34.864929'),(7,'auth','0002_alter_permission_name_max_length','2018-02-07 14:42:34.890141'),(8,'auth','0003_alter_user_email_max_length','2018-02-07 14:42:34.899921'),(9,'auth','0004_alter_user_username_opts','2018-02-07 14:42:34.913486'),(10,'auth','0005_alter_user_last_login_null','2018-02-07 14:42:34.927714'),(11,'auth','0006_require_contenttypes_0002','2018-02-07 14:42:34.932668'),(12,'auth','0007_alter_validators_add_error_messages','2018-02-07 14:42:34.946943'),(13,'auth','0008_alter_user_username_max_length','2018-02-07 14:42:34.958498'),(14,'sessions','0001_initial','2018-02-07 14:42:34.979899'),(15,'users','0002_alter_user_last_login_null','2018-02-07 14:42:35.000569'),(16,'users','0003_auto_20180207_0924','2018-02-07 14:43:36.086099'),(17,'blog','0001_initial','2018-02-11 08:04:36.115030'),(18,'blog','0002_auto_20180211_0804','2018-02-11 08:04:36.156432'),(19,'blog','0003_person','2018-02-11 09:24:31.944097'),(20,'blog','0004_auto_20180212_0945','2018-02-12 09:46:03.487924'),(21,'blog','0005_auto_20180212_0950','2018-02-12 09:50:48.253507'),(22,'blog','0006_auto_20180212_1401','2018-02-12 14:01:36.292938'),(23,'blog','0007_auto_20180212_1418','2018-02-12 14:18:25.578949'),(24,'blog','0008_auto_20180213_1440','2018-02-13 14:40:30.459757'),(25,'blog','0009_article_views','2018-02-18 08:36:00.009756'),(26,'comments','0001_initial','2018-02-19 14:07:54.054152'),(27,'comments','0002_remove_comment_url','2018-02-20 21:20:28.472011'),(28,'messageboard','0001_initial','2018-02-22 14:35:48.893629');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ajr84m22qfsbesu54ghkvuxlxn5qf0av','ZTk2ZjU3MjQ3YWFlNmU1YTE0YTdiMWIyMTdjODNhMzAzMTljZjgyMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWE3MjdiOWZkNDVjZDRlODIxZWRjNzQxYzM3Nzc1ODc5Y2NhY2JiIn0=','2018-02-25 10:51:41.744720'),('dadoo6tntlbscipwdpdsv0g8171pvqn1','ZTk2ZjU3MjQ3YWFlNmU1YTE0YTdiMWIyMTdjODNhMzAzMTljZjgyMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWE3MjdiOWZkNDVjZDRlODIxZWRjNzQxYzM3Nzc1ODc5Y2NhY2JiIn0=','2018-02-24 06:45:34.477209'),('ecdyaqitenhv9adnn2hv059cquzmunrm','ZTk2ZjU3MjQ3YWFlNmU1YTE0YTdiMWIyMTdjODNhMzAzMTljZjgyMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWE3MjdiOWZkNDVjZDRlODIxZWRjNzQxYzM3Nzc1ODc5Y2NhY2JiIn0=','2018-03-07 15:41:40.676263'),('lgptpnulkq0q3trjmpq6t3cddy2i081s','ZTk2ZjU3MjQ3YWFlNmU1YTE0YTdiMWIyMTdjODNhMzAzMTljZjgyMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWE3MjdiOWZkNDVjZDRlODIxZWRjNzQxYzM3Nzc1ODc5Y2NhY2JiIn0=','2018-03-07 13:21:35.898646'),('t79k9ifo4y9z9mxcygp1ekh3o75l7tnv','ZTk2ZjU3MjQ3YWFlNmU1YTE0YTdiMWIyMTdjODNhMzAzMTljZjgyMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWE3MjdiOWZkNDVjZDRlODIxZWRjNzQxYzM3Nzc1ODc5Y2NhY2JiIn0=','2018-03-06 23:46:30.093260'),('xry0kqjd3fisbzguj2natze6el3oafa2','ZTk2ZjU3MjQ3YWFlNmU1YTE0YTdiMWIyMTdjODNhMzAzMTljZjgyMjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyYWE3MjdiOWZkNDVjZDRlODIxZWRjNzQxYzM3Nzc1ODc5Y2NhY2JiIn0=','2018-03-07 18:59:38.051941');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messageboard_message_list`
--

DROP TABLE IF EXISTS `messageboard_message_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageboard_message_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `content` longtext NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messageboard_message_list`
--

LOCK TABLES `messageboard_message_list` WRITE;
/*!40000 ALTER TABLE `messageboard_message_list` DISABLE KEYS */;
INSERT INTO `messageboard_message_list` VALUES (1,'陈开拓','330953853@qq.com','<p>留言测试</p>','2018-02-22 16:37:19.094927'),(2,'Alex','alex-zs@foxmail.com','<p>留言测试3</p>','2018-02-22 16:39:03.012063'),(3,'ckt','alex-zs@foxmail.com','<p>你好</p>','2018-02-22 16:39:19.520690'),(4,'陈开拓','330953853@qq.com','<p>测试4</p>','2018-02-22 16:39:29.527340'),(5,'ckt','alex-zs@foxmail.com','<p>测试5</p>','2018-02-22 16:39:38.595218'),(6,'陈开拓','alex-zs@foxmail.com','<p><img src=\"/static/img/p01_20180222164013_262.jpg\" title=\"\" alt=\"p01.jpg\"/></p>','2018-02-22 16:40:18.612377'),(7,'ckt','330953853@qq.com','<p>&nbsp;图片：）&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p><img src=\"/static/img/IMG_2100_20180222164900_426.jpg\" title=\"\" alt=\"IMG_2100.jpg\" width=\"128\" height=\"187\" style=\"width: 128px; height: 187px;\"/></p>','2018-02-22 16:50:11.935510');
/*!40000 ALTER TABLE `messageboard_message_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `birthday` varchar(20) NOT NULL,
  `job` varchar(30) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `sex` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_user_user_type_id_483066d0_fk_django_content_type_id` (`user_type_id`),
  CONSTRAINT `users_user_user_type_id_483066d0_fk_django_content_type_id` FOREIGN KEY (`user_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'pbkdf2_sha256$36000$wTE2xKEltN0O$dbREYyEkEEFJkxQBlwtkmCcaf/FqQO7yaXwGlXh/4iU=','2018-02-07 14:43:36.096828',1,'superuser@djangoproject.com',1,1,'2018-02-07 14:43:36.096828',1,'1998-12-24','员工','第一次登录','17852417983','男'),(2,'pbkdf2_sha256$36000$BR2VZqnTMFCw$HIWNeP6R8IYFJuJn9pVco6iHKM779QFTQZPgbuP9yzc=','2018-02-21 18:59:38.049819',1,'330953853@qq.com',1,1,'2018-02-07 14:45:09.656999',1,'2018-08-07','学生','Alex','17852417983','男'),(3,'pbkdf2_sha256$36000$WX0um8NqnQQj$apFghHfNALRKtGNsqqadqgNI0s0cnh1eAGp5k1GGC4Y=','2018-02-09 18:15:03.364889',0,'alex-zs@foxmail.com',0,1,'2018-02-07 16:25:07.914541',1,'1998-12-24','员工','陈开拓','17852417983','男');
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_groups`
--

DROP TABLE IF EXISTS `users_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_groups_user_id_group_id_b88eab82_uniq` (`user_id`,`group_id`),
  KEY `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_user_groups_group_id_9afc8d0e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_user_groups_user_id_5f6f5a90_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_groups`
--

LOCK TABLES `users_user_groups` WRITE;
/*!40000 ALTER TABLE `users_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user_user_permissions`
--

DROP TABLE IF EXISTS `users_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_user_user_permissions_user_id_permission_id_43338c45_uniq` (`user_id`,`permission_id`),
  KEY `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_user_user_perm_permission_id_0b93982e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_user_user_permissions_user_id_20aca447_fk_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `users_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user_user_permissions`
--

LOCK TABLES `users_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-23 21:10:08
