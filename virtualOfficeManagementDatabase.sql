/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - office_manager
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`office_manager` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `office_manager`;

/*Table structure for table `emp_attendance` */

DROP TABLE IF EXISTS `emp_attendance`;

CREATE TABLE `emp_attendance` (
  `ecode` int(4) DEFAULT NULL,
  `atnd_date` date DEFAULT NULL,
  `time_in` varchar(30) DEFAULT NULL,
  `time_out` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_attendance` */

insert  into `emp_attendance`(`ecode`,`atnd_date`,`time_in`,`time_out`) values (2100,'2024-08-30','5:8:13','11:33:41'),(2100,'2024-08-31','4:41:45','4:45:52'),(2100,'2024-08-31','4:45:10','4:45:52'),(2101,'2024-08-31','10:16:44','10:18:21'),(123,'2024-09-06','10:7:48','11:14:28');

/*Table structure for table `emp_mstr` */

DROP TABLE IF EXISTS `emp_mstr`;

CREATE TABLE `emp_mstr` (
  `ecode` int(4) NOT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `edob` date DEFAULT NULL,
  `egender` varchar(10) DEFAULT NULL,
  `epost` varchar(30) DEFAULT NULL,
  `eaddr` varchar(50) DEFAULT NULL,
  `ecity` varchar(30) DEFAULT NULL,
  `econt` decimal(10,0) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `idname` varchar(30) DEFAULT NULL,
  `idno` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_mstr` */

insert  into `emp_mstr`(`ecode`,`ename`,`edob`,`egender`,`epost`,`eaddr`,`ecity`,`econt`,`email`,`idname`,`idno`) values (123,'Sonu Verma','2003-08-02','Male','Senior Manager','Lakhimpur','Kheri','7408150206','sonu@gmail.com','564','1262'),(456,'Ayush Gupta','2024-08-05','Male','SE','Gola','Kheri','9580915947','ayush@gmail.com','abc','123'),(2100,'Sachin Chaudhary','2024-08-05','Male','Engineer','BCC Apartment','Lucknow','1425369581','sachin@gmail.com','258','1425'),(2101,'Nikhil Gupta','2002-03-05','Male','Engineer','Lucknow','Lucknow','1456325412','nikhil@gmail.com','nikhil','123');

/*Table structure for table `emp_status` */

DROP TABLE IF EXISTS `emp_status`;

CREATE TABLE `emp_status` (
  `ecode` int(4) NOT NULL,
  `join_date` date DEFAULT NULL,
  `last_work_date` date DEFAULT NULL,
  `emp_status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ecode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `emp_status` */

insert  into `emp_status`(`ecode`,`join_date`,`last_work_date`,`emp_status`) values (123,'2024-08-25',NULL,'working'),(456,'2024-08-26',NULL,'working'),(2100,'2024-08-26',NULL,'working'),(2101,'2024-08-31',NULL,'working');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` varchar(30) NOT NULL,
  `pswd` varchar(20) DEFAULT NULL,
  `utype` varchar(20) DEFAULT NULL,
  `ac_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`user`,`pswd`,`utype`,`ac_status`) values ('admin','admin','Admin',1),('ayush@gmail.com','efg','Employee',0),('nikhil@gmail.com','15632','Employee',0),('sachin@gmail.com','78549','Employee',1),('shivam','1526','Admin',1),('sonu@gmail.com','abc','Employee',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
