# Host: 127.0.0.1  (Version: 5.5.20)
# Date: 2017-03-08 20:58:59
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='管理员信息表';

#
# Data for table "admin"
#

INSERT INTO `admin` VALUES (1,'李林','123'),(2,'黄林','111');

#
# Structure for table "announcement"
#

DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `nId` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告表',
  `context` varchar(500) NOT NULL DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`nId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='公告表';

#
# Data for table "announcement"
#

INSERT INTO `announcement` VALUES (1,'                                          各位尊敬的客户，4月27号本店即将举办优惠大酬宾，欢迎惠临！\r\n');

#
# Structure for table "article"
#

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `aId` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发表时间',
  `content` varchar(20000) NOT NULL DEFAULT '' COMMENT '内容',
  `fen` varchar(255) NOT NULL DEFAULT '转发' COMMENT '类别',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '题目',
  PRIMARY KEY (`aId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='文章信息表';

#
# Data for table "article"
#

INSERT INTO `article` VALUES (1,'hjh','2017-01-03 00:00:00','dsfsdf','转发','fdsfdf'),(2,'李林','2017-02-08 00:00:00','富三代福克斯的恢复和思考和福克斯的合法化','转发','猫猫'),(3,'fsdfsdf','2017-01-03 00:00:00','sdfsfsd','转发','fdsfsd'),(4,'dfdsfsd','2017-01-03 00:00:00','fdsfsdf','转发','dsfsdf'),(5,'sadasds','2017-01-03 00:00:00','dsfdsfsd','转发','dfdsfdsdf'),(6,'gfhgjgj','2017-01-03 00:00:00','kkjhkjk','转发','jhkh');

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
  `dId` int(4) NOT NULL AUTO_INCREMENT COMMENT '医生编号',
  `dname` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `dsex` varchar(2) NOT NULL DEFAULT '男' COMMENT '性别',
  `dage` int(3) NOT NULL DEFAULT '0' COMMENT '年龄',
  `wage` int(3) NOT NULL DEFAULT '0' COMMENT '工龄',
  `dtel` varchar(20) NOT NULL DEFAULT '0' COMMENT '联系方式',
  `office` varchar(50) NOT NULL DEFAULT '' COMMENT '所属科室',
  `dpwd` varchar(50) DEFAULT NULL COMMENT '密码',
  `adress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gbk COMMENT='医生信息表';

#
# Data for table "doctor"
#

INSERT INTO `doctor` VALUES (1,'林立','男',26,1,'87909284','美容','556677','广东汕头'),(2,'胡安华','女',34,5,'18873646578','病诊','123456','广东广州');

#
# Structure for table "pet"
#

DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet` (
  `PId` int(4) NOT NULL AUTO_INCREMENT COMMENT '宠物编号',
  `tname` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `owid` int(4) NOT NULL DEFAULT '0' COMMENT '主人编号',
  `identity` varchar(50) NOT NULL DEFAULT '' COMMENT '类别',
  `age` int(11) DEFAULT NULL COMMENT 'age',
  PRIMARY KEY (`PId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gbk COMMENT='宠物信息表';

#
# Data for table "pet"
#

INSERT INTO `pet` VALUES (1,'小小',1,'狗',2),(2,'妮妮',1,'猫',2),(3,'猫猫',2,'狗',3);

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

#
# Structure for table "yuyue"
#

DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `oId` int(4) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `pid` int(4) NOT NULL DEFAULT '0' COMMENT '宠物id',
  `uid` int(4) NOT NULL DEFAULT '0' COMMENT '用户id',
  `did` int(4) NOT NULL DEFAULT '0' COMMENT '医生id',
  `lei` varchar(20) NOT NULL DEFAULT '美容' COMMENT '预约类型',
  `bing` varchar(500) NOT NULL DEFAULT '' COMMENT '病情描述',
  `deal` varchar(10) NOT NULL DEFAULT '否' COMMENT '是否处理',
  `ordertime` datetime DEFAULT NULL COMMENT '就诊时间',
  `advice` varchar(255) DEFAULT NULL COMMENT '通过',
  PRIMARY KEY (`oId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=gbk COMMENT='预约表';

#
# Data for table "yuyue"
#

INSERT INTO `yuyue` VALUES (1,'2017-03-03 15:01:15',1,1,1,'美容','<p>剪发</p>','是','2017-03-04 00:00:00','<p>通过</p>'),(2,'2017-03-02 20:21:15',2,1,2,'病诊','发烧','否','2017-03-02 00:00:00','1'),(3,'2017-03-03 15:48:45',3,2,1,'美容','<p>洗澡</p>','否','2017-02-03 00:00:00','<p>释怀普通</p>'),(4,'2017-03-02 20:21:19',2,1,1,'美容','剪发','是','2017-03-02 00:00:00','1'),(9,'2017-03-04 11:12:43',0,1,0,'美容','','否',NULL,NULL),(10,'2017-03-04 11:14:36',2,1,0,'美容','','否',NULL,NULL),(11,'2017-03-04 11:16:01',1,1,0,'美容','','否',NULL,NULL),(12,'2017-03-04 11:16:27',2,1,0,'美容','','否',NULL,NULL),(13,'2017-03-04 12:33:39',1,1,0,'病诊','','否',NULL,NULL),(14,'2017-03-04 12:47:44',1,1,0,'病诊','','否',NULL,NULL);
