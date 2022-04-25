/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.7.21-log : Database - dianshang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`dianshang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `dianshang`;

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `dd_id` int(64) NOT NULL,
  `uid` int(64) DEFAULT NULL,
  `dizhi_id` int(64) DEFAULT NULL,
  `sh_id` int(64) DEFAULT NULL,
  `d_time` varchar(64) NOT NULL,
  PRIMARY KEY (`dd_id`),
  KEY `FK_Reference_2` (`uid`),
  KEY `FK_Reference_6` (`dizhi_id`),
  KEY `FK_Reference_7` (`sh_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`dizhi_id`) REFERENCES `dizhi` (`dizhi_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`sh_id`) REFERENCES `shop` (`sh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dingdan` */

/*Table structure for table `dizhi` */

DROP TABLE IF EXISTS `dizhi`;

CREATE TABLE `dizhi` (
  `dizhi_id` int(64) NOT NULL,
  `uid` int(64) DEFAULT NULL,
  `dizhi_text` varchar(64) NOT NULL,
  `dizhi_phone` varchar(64) NOT NULL,
  PRIMARY KEY (`dizhi_id`),
  KEY `FK_Reference_5` (`uid`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dizhi` */

/*Table structure for table `gongsi` */

DROP TABLE IF EXISTS `gongsi`;

CREATE TABLE `gongsi` (
  `gs_id` int(64) NOT NULL,
  `gs_name` varchar(64) NOT NULL,
  PRIMARY KEY (`gs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gongsi` */

/*Table structure for table `gouwuche` */

DROP TABLE IF EXISTS `gouwuche`;

CREATE TABLE `gouwuche` (
  `gwc_id` int(64) NOT NULL,
  `uid` int(64) DEFAULT NULL,
  `sh_id` int(64) DEFAULT NULL,
  PRIMARY KEY (`gwc_id`),
  KEY `FK_Reference_3` (`uid`),
  KEY `FK_Reference_4` (`sh_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`sh_id`) REFERENCES `shop` (`sh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `gouwuche` */

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `sh_id` int(64) NOT NULL,
  `zl_id` int(64) DEFAULT NULL,
  `gs_id` int(64) DEFAULT NULL,
  `sh_price` int(64) NOT NULL,
  `sh_text` varchar(64) NOT NULL,
  `sh_img` varchar(64) NOT NULL,
  PRIMARY KEY (`sh_id`),
  KEY `FK_Reference_1` (`zl_id`),
  KEY `FK_Reference_8` (`gs_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`zl_id`) REFERENCES `zhonglei` (`zl_id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`gs_id`) REFERENCES `gongsi` (`gs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `shop` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*Table structure for table `zhonglei` */

DROP TABLE IF EXISTS `zhonglei`;

CREATE TABLE `zhonglei` (
  `zl_id` int(64) NOT NULL,
  `zl_type` varchar(64) NOT NULL,
  PRIMARY KEY (`zl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `zhonglei` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
