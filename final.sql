# Host: 127.0.0.1  (Version: 5.5.20)
# Date: 2017-02-09 16:31:56
# Generator: MySQL-Front 5.3  (Build 4.89)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "admin"
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '管理员编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gbk COMMENT='管理员信息表';

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'李林','123'),(2,'黄林','111');

#
# Structure for table "article"
#

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发表时间',
  `content` varchar(20000) NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='文章信息表';

#
# Data for table "article"
#

INSERT INTO `article` VALUES (1,'李林','2017-02-09 00:00:00','蔷薇开飞机打开了房间打扫房间发动骚乱'),(2,'李林','2017-02-08 00:00:00','富三代福克斯的恢复和思考和福克斯的合法化');

#
# Structure for table "diagnose"
#

DROP TABLE IF EXISTS `diagnose`;
CREATE TABLE `diagnose` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `prescription` varchar(300) NOT NULL DEFAULT '' COMMENT '处方',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '就诊时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='诊断信息表';

#
# Data for table "diagnose"
#

INSERT INTO `diagnose` VALUES (1,'窒息现象','2016-03-23 00:00:00'),(2,'沙门氏菌中毒症状','2013-12-29 00:00:00');

#
# Structure for table "doctor"
#

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '医生编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `sex` varchar(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `age` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `work_age` int(3) NOT NULL DEFAULT '0' COMMENT '工龄',
  `tel` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系方式',
  `office` varchar(50) NOT NULL DEFAULT '' COMMENT '所属科室',
  `pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='医生信息表';

#
# Data for table "doctor"
#

INSERT INTO `doctor` VALUES (1,'林立','男',26,1,'87909284','美容','556677'),(2,'胡安华','女',34,5,'18873646578','病诊','123456');

#
# Structure for table "order"
#

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '业务流水号',
  `pet_id` int(11) NOT NULL DEFAULT '0' COMMENT '宠物id',
  `order_date` date DEFAULT '0000-00-00' COMMENT '预约时间',
  `program` varchar(50) NOT NULL DEFAULT '' COMMENT '预约项目',
  `petintro` varchar(200) NOT NULL DEFAULT '' COMMENT '病情描述',
  `deal` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否处理，默认否',
  `doctor_name` varchar(50) NOT NULL DEFAULT '0' COMMENT '预约医生',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='病历表';

#
# Data for table "order"
#

INSERT INTO `order` VALUES (1,1,'2016-02-07','美容','修剪毛发',0,'胡安华'),(2,2,'2016-01-04','病诊','发烧，无食欲',1,'林立');

#
# Structure for table "pet"
#

DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '宠物编号',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `owner_id` int(4) NOT NULL DEFAULT '0' COMMENT '主人编号',
  `class` varchar(50) NOT NULL DEFAULT '' COMMENT '类别',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='宠物信息表';

#
# Data for table "pet"
#

INSERT INTO `pet` VALUES (1,'小小',1,'狗'),(2,'妮妮',1,'猫');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `Id` int(4) NOT NULL AUTO_INCREMENT COMMENT '客户编码',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` varchar(50) NOT NULL DEFAULT '男' COMMENT '性别',
  `tel` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系方式',
  `adress` varchar(50) NOT NULL DEFAULT '地址不详' COMMENT '家庭住址',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `pwd` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='客户信息表';

#
# Data for table "user"
#

INSERT INTO `user` VALUES (1,'黄玉','男','87909277','地址不详','123@163.com','2341'),(2,'李琳','女','726374837','广东省广州市白云区','3333@163.com','678954');
