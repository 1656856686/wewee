/*
SQLyog Ultimate v8.32 
MySQL - 5.1.51-community : Database - zc
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `zc`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '管理员ID(主键)',
  `admin_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '管理员名字',
  `admin_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admin` */

/*Table structure for table `Comments` */

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `cm_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '评论ID(主键)',
  `cm_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `cm_ps_id` int(10) DEFAULT NULL COMMENT '项目ID',
  `cm_content` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '评论内容',
  PRIMARY KEY (`cm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `Comments` */

/*Table structure for table `funding` */

DROP TABLE IF EXISTS `funding`;

CREATE TABLE `funding` (
  `fd_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '支持ID(主键)',
  `fd_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `fd_ps_id` int(10) DEFAULT NULL COMMENT '项目ID',
  `fd_money` double(50,2) DEFAULT NULL COMMENT '捐赠金额',
  `fd_time` date DEFAULT NULL COMMENT '捐赠时间',
  PRIMARY KEY (`fd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `funding` */

/*Table structure for table `letter` */

DROP TABLE IF EXISTS `letter`;

CREATE TABLE `letter` (
  `le_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '信息的ID(主键)',
  `le_us_addresserid` int(10) DEFAULT NULL COMMENT '发件人的ID',
  `le_us_recipientsid` int(10) DEFAULT NULL COMMENT '收件人的ID',
  `le_content` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '信息内容',
  PRIMARY KEY (`le_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `letter` */

/*Table structure for table `logs` */

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `log_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '日志ID(主键)',
  `log_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `log_content` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日志内容',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `logs` */

/*Table structure for table `pro_a` */

DROP TABLE IF EXISTS `pro_a`;

CREATE TABLE `pro_a` (
  `pro_a_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '基本信息ID(主键)',
  `pro_a_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `pro_a_cust_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客服姓名',
  `pro_a_cust_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客服电话',
  `pro_a_pst_id` int(10) DEFAULT NULL COMMENT '公益类型',
  `pro_a_cust_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '客服地址',
  PRIMARY KEY (`pro_a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pro_a` */

/*Table structure for table `pro_b` */

DROP TABLE IF EXISTS `pro_b`;

CREATE TABLE `pro_b` (
  `pro_b_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '项目信息ID(主键)',
  `pro_b_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `pro_b_file` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `pro_b_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '项目标题',
  `pro_b_goal` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '项目目的',
  `pro_b_address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '项目地点',
  `pro_b_money` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '募资金额',
  `pro_b_datenum` int(50) DEFAULT NULL COMMENT '筹资天数',
  PRIMARY KEY (`pro_b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pro_b` */

/*Table structure for table `pro_c` */

DROP TABLE IF EXISTS `pro_c`;

CREATE TABLE `pro_c` (
  `pro_c_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '项目详情ID(主键)',
  `pro_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `pro_c_vedio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '视频路径',
  `pro_c_story` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '项目故事',
  `pro_c_support` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更多支持',
  `pro_c_repay` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '提供回报',
  `pro_c_aboutme` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关于我',
  PRIMARY KEY (`pro_c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `pro_c` */

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `ps_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '项目ID(主键)',
  `ps_us_id` int(10) NOT NULL COMMENT '用户ID',
  `ps_cust_name` varchar(20) DEFAULT NULL COMMENT '客服姓名',
  `ps_cust_phone` varchar(14) DEFAULT NULL COMMENT '客服电话',
  `ps_cust_address` varchar(50) DEFAULT NULL COMMENT '客服地址',
  `ps_pst_id` int(10) DEFAULT NULL COMMENT '项目类型ID',
  `ps_file` varchar(20) DEFAULT NULL COMMENT '文件名称',
  `ps_name` varchar(30) DEFAULT NULL COMMENT '项目标题',
  `ps_goal` varchar(200) DEFAULT NULL COMMENT '筹款目的',
  `ps_address` varchar(200) DEFAULT NULL COMMENT '项目地址',
  `ps_money` double DEFAULT NULL COMMENT '筹资金额',
  `ps_days` int(10) DEFAULT NULL COMMENT '筹资天数',
  `ps_video` varchar(200) DEFAULT NULL COMMENT '宣传视频地址',
  `ps_story` varchar(2000) DEFAULT NULL COMMENT '项目故事',
  `ps_support` varchar(200) DEFAULT NULL COMMENT '更多支持',
  `ps_repay` varchar(200) DEFAULT NULL COMMENT '提供回报简述',
  `ps_aboutme` varchar(200) DEFAULT NULL COMMENT '关于自己',
  `ps_type` int(1) DEFAULT NULL COMMENT '项目状态(0.待审核1.待上架2.众筹中3.众筹成功4.众筹失败5.审核未通过)',
  `ps_starttime` date DEFAULT NULL COMMENT '项目开始的时间',
  `ps_endtime` date DEFAULT NULL COMMENT '项目结束的时间',
  `ps_getmoney` double DEFAULT NULL COMMENT '项目已筹资金额',
  `ps_getpeople` int(10) DEFAULT NULL COMMENT '项目支持人数',
  PRIMARY KEY (`ps_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gbk;

/*Data for the table `projects` */

insert  into `projects`(`ps_id`,`ps_us_id`,`ps_cust_name`,`ps_cust_phone`,`ps_cust_address`,`ps_pst_id`,`ps_file`,`ps_name`,`ps_goal`,`ps_address`,`ps_money`,`ps_days`,`ps_video`,`ps_story`,`ps_support`,`ps_repay`,`ps_aboutme`,`ps_type`,`ps_starttime`,`ps_endtime`,`ps_getmoney`,`ps_getpeople`) values (1,1,'王五','12843774821','河北石家庄',1,'a','支教助学','帮助贫穷地区孩子上学','河北石家庄',322222,15,'北京','儿童','政府','网易','百度',0,'2019-02-11','2019-03-11',NULL,23),(2,2,'张三','38928731641','河北保定',2,'b','儿童关爱','关爱儿童','河北保定',456676,15,'河北保定','上学','政府','网易','度娘',1,NULL,NULL,NULL,13),(3,3,'李四','92847837411','北京',3,'c','扶老助孤','关爱老人','北京',534232,15,'河北石家庄','老人','政府','网易','百度一下',2,NULL,NULL,NULL,35),(4,4,'刘六','89324781737','天津',4,'d','支教助学','关爱儿童','河南郑州',4231435,15,'河南郑州','儿童','政府','网易','度娘',3,NULL,NULL,NULL,5),(5,5,'孙琪','21829374874','宁夏',5,'e','儿童关爱','帮助贫穷地区孩子上学','苏州',54234,15,'苏州','上学','政府','网易','度娘',4,NULL,NULL,NULL,5),(6,6,'广泛','12343545522','东北',6,'f','扶老助孤','关爱老人','杭州',34324,15,'杭州','上学','政府','网易','度娘',5,NULL,NULL,NULL,5),(7,7,'示意图','43523532646','恩恩',7,'g','支教助学','帮助贫穷地区孩子上学','河北石家庄',42314,15,'恩恩','上学','政府','政府','度娘',1,NULL,NULL,NULL,55);

/*Table structure for table `projectstype` */

DROP TABLE IF EXISTS `projectstype`;

CREATE TABLE `projectstype` (
  `pst_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '公益类型ID(主键)',
  `pst_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公益类型名字',
  `pst_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公益类型描述',
  `pst_stardate` date DEFAULT NULL COMMENT '公益类型创建时间',
  `pst_type` int(10) DEFAULT NULL COMMENT '公益类型状态(0.可用1.禁用)',
  PRIMARY KEY (`pst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `projectstype` */

/*Table structure for table `questionall` */

DROP TABLE IF EXISTS `questionall`;

CREATE TABLE `questionall` (
  `questionid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '父问题ID(主键)',
  `questionname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '问题的名字',
  PRIMARY KEY (`questionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `questionall` */

/*Table structure for table `questionother` */

DROP TABLE IF EXISTS `questionother`;

CREATE TABLE `questionother` (
  `questionotherid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '子问题ID(主键)',
  `questionid` int(10) DEFAULT NULL COMMENT '主问题ID',
  `questionothername` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '子问题名字',
  `questionanswer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '问题的答案',
  `questiondate` date DEFAULT NULL COMMENT '问题创建的时间',
  PRIMARY KEY (`questionotherid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `questionother` */

/*Table structure for table `repay` */

DROP TABLE IF EXISTS `repay`;

CREATE TABLE `repay` (
  `ry_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '回报ID(主键)',
  `ry_us_id` int(10) DEFAULT NULL COMMENT '用户ID',
  `ry_type` int(10) DEFAULT NULL COMMENT '回报类型(0.虚拟回报1.实物回报)',
  `ry_paymoney` double(50,2) DEFAULT NULL COMMENT '支付金额',
  `ry_rule` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '具体规则',
  `ry_content` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '汇报内容',
  `ry_number` int(50) DEFAULT NULL COMMENT '人数上限',
  `ry_time` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回报时间',
  `ry_ps_id` int(20) DEFAULT NULL COMMENT '项目ID',
  `ry_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '随机数',
  PRIMARY KEY (`ry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `repay` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `us_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户ID(主键)',
  `us_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `us_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户姓名',
  `us_password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录密码',
  `us_money` double(50,2) DEFAULT NULL COMMENT '账户金额',
  `us_idcard` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户身份证号码',
  `us_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户手机号',
  `us_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户地址',
  `us_role` int(10) DEFAULT NULL COMMENT '用户状态(0.未激活 1.已激活)',
  `us_sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户性别',
  `us_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '随机码',
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
