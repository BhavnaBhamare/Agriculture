/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.8-log : Database - agriculturedatabase
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`agriculturedatabase` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `agriculturedatabase`;

/*Table structure for table `addcrop` */

DROP TABLE IF EXISTS `addcrop`;

CREATE TABLE `addcrop` (
  `cid` int(20) NOT NULL AUTO_INCREMENT,
  `cropname` varchar(200) DEFAULT NULL,
  `cropdetail` varchar(500) DEFAULT NULL,
  `cropimage` varchar(500) DEFAULT NULL,
  `cropseason` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `addcrop` */

insert  into `addcrop`(`cid`,`cropname`,`cropdetail`,`cropimage`,`cropseason`) values (1,'tomato','tomato is fruit vegitable','img6.jpg','winter'),(2,'tomato','tomato is fruit veg','fruit.jpg','winter'),(3,'brocali','very good for health','broccoli.jpg','summer'),(4,'greenbeans','Very good vegitable','greenbeans.jpg','any');

/*Table structure for table `addfertilizer` */

DROP TABLE IF EXISTS `addfertilizer`;

CREATE TABLE `addfertilizer` (
  `fid` int(20) NOT NULL AUTO_INCREMENT,
  `fertilizername` varchar(500) DEFAULT NULL,
  `fertilizerdetails` varchar(500) DEFAULT NULL,
  `fertilizerquantity` varchar(500) DEFAULT NULL,
  `fertilizerimage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `addfertilizer` */

insert  into `addfertilizer`(`fid`,`fertilizername`,`fertilizerdetails`,`fertilizerquantity`,`fertilizerimage`) values (1,'XYZ','hsgsjj\r\nasghasahjsg ghssslsk gsjhs','1kg','img1.JPG'),(2,'organic Fertilizer','Very useful plat growth','5kg','organicfer.jpg');

/*Table structure for table `addmachinery` */

DROP TABLE IF EXISTS `addmachinery`;

CREATE TABLE `addmachinery` (
  `mid` int(20) NOT NULL AUTO_INCREMENT,
  `machinename` varchar(200) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `machineimage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `addmachinery` */

insert  into `addmachinery`(`mid`,`machinename`,`description`,`machineimage`) values (1,NULL,NULL,NULL),(2,'abc','XYZ','img2.jpg');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`) values (1,'sara@gmail.com','12345');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `rid` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `passsword` varchar(200) DEFAULT NULL,
  `confirmpassword` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `registeras` varchar(200) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `phonenumber` varchar(200) DEFAULT NULL,
  `mobilenumber` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`rid`,`username`,`email`,`passsword`,`confirmpassword`,`gender`,`registeras`,`address`,`phonenumber`,`mobilenumber`) values (1,'sarala','sar@gmail.com','sar123','sara123','on','Supplier','pune','546567787','566778'),(2,'kranti godase','kranti.godase@gmail.com','kranti123','kranti123','on','Supplier','pune','334545565','456577676767');

/*Table structure for table `sellcrops` */

DROP TABLE IF EXISTS `sellcrops`;

CREATE TABLE `sellcrops` (
  `cid` int(20) NOT NULL AUTO_INCREMENT,
  `cropname` varchar(200) DEFAULT NULL,
  `quaintity` varchar(200) DEFAULT NULL,
  `cropimage` varchar(500) DEFAULT NULL,
  `contact` int(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sellcrops` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
