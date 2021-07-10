/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - socialmonitor
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `socialmonitor`;

USE `socialmonitor`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category` varchar(100) NOT NULL,
  PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `frequest` */

DROP TABLE IF EXISTS `frequest`;

CREATE TABLE `frequest` (
  `ufrom` varchar(300) NOT NULL,
  `uto` varchar(300) NOT NULL,
  `requ` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `friends` */

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `user1` varchar(100) NOT NULL,
  `user2` varchar(100) NOT NULL,
  PRIMARY KEY (`user1`,`user2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `msgs` */

DROP TABLE IF EXISTS `msgs`;

CREATE TABLE `msgs` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `msg` longtext,
  `user_` varchar(100) DEFAULT NULL,
  `time_` varchar(100) DEFAULT NULL,
  `chatbw` varchar(200) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'non',
  `ver` varbinary(100) DEFAULT 'non',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(3) DEFAULT NULL,
  `msg` varchar(500) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `img` longblob,
  `pdate` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT 'non',
  `color` varchar(100) DEFAULT 'blue'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `profilepic` */

DROP TABLE IF EXISTS `profilepic`;

CREATE TABLE `profilepic` (
  `email` varchar(200) NOT NULL,
  `pic` longblob,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `v1` varchar(10000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `temp2` */

DROP TABLE IF EXISTS `temp2`;

CREATE TABLE `temp2` (
  `CAT` varchar(100) DEFAULT NULL,
  `sc` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `name` varchar(200) DEFAULT NULL,
  `pwd` varchar(200) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `ph` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `st_` int(11) DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `words` */

DROP TABLE IF EXISTS `words`;

CREATE TABLE `words` (
  `sno` int(11) DEFAULT NULL,
  `cat` varchar(111) DEFAULT NULL,
  `subject_` varchar(500) NOT NULL,
  PRIMARY KEY (`subject_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
