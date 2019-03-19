/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.1.62-community : Database - skweb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skweb` /*!40100 DEFAULT CHARACTER SET utf8 */;

/*Table structure for table `modifyapply` */

DROP TABLE IF EXISTS `modifyapply`;

CREATE TABLE `modifyapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `Applicant` int(11) DEFAULT NULL,
  `passTime` date DEFAULT NULL,
  `passerId` int(11) DEFAULT NULL,
  `ifPass` int(11) DEFAULT NULL,
  `modifyProductId` varchar(50) DEFAULT NULL,
  `modifySpecifications` varchar(50) DEFAULT NULL,
  `modifyMaterial` varchar(50) DEFAULT NULL,
  `modifyNumber` int(11) DEFAULT NULL,
  `modify1` int(11) DEFAULT NULL,
  `modify2` int(11) DEFAULT NULL,
  `modify3` int(11) DEFAULT NULL,
  `modify4` int(11) DEFAULT NULL,
  `modify5` int(11) DEFAULT NULL,
  `modify6` int(11) DEFAULT NULL,
  `modify7` int(11) DEFAULT NULL,
  `modifyDate` date DEFAULT NULL,
  `ApplicantName` varchar(50) DEFAULT NULL,
  `productId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `modifyapply` */

insert  into `modifyapply`(`id`,`pid`,`Applicant`,`passTime`,`passerId`,`ifPass`,`modifyProductId`,`modifySpecifications`,`modifyMaterial`,`modifyNumber`,`modify1`,`modify2`,`modify3`,`modify4`,`modify5`,`modify6`,`modify7`,`modifyDate`,`ApplicantName`,`productId`) values (1,1,2,'2019-02-02',NULL,0,'1',NULL,NULL,NULL,NULL,NULL,111,NULL,NULL,NULL,NULL,'2019-02-02','shaoke','AH01'),(2,4,2,'2019-02-03',NULL,1,'4',NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-02-03','shaoke','AK48'),(3,7,2,'2019-02-03',NULL,0,NULL,'11','Cu',11,44,55,NULL,11,22,33,NULL,NULL,'shaoke','98K2');

/*Table structure for table `supplier_code_table` */

DROP TABLE IF EXISTS `supplier_code_table`;

CREATE TABLE `supplier_code_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SupplierName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `supplier_code_table` */

insert  into `supplier_code_table`(`id`,`SupplierName`) values (1,'刘厂'),(2,'张厂'),(3,'叶厂'),(4,'竺厂'),(5,'董厂'),(6,'备用1'),(7,'备用2');

/*Table structure for table `t_jurisdiction` */

DROP TABLE IF EXISTS `t_jurisdiction`;

CREATE TABLE `t_jurisdiction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `accountNumber` varchar(50) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Reference_1` (`userId`,`accountNumber`),
  KEY `FK_Reference_2` (`productId`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`userId`, `accountNumber`) REFERENCES `t_user` (`userId`, `accountNumber`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`productId`) REFERENCES `t_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `t_jurisdiction` */

insert  into `t_jurisdiction`(`id`,`userId`,`accountNumber`,`productId`) values (1,2,'empl',1),(2,2,'empl',6),(3,2,'empl',7),(4,2,'empl',8),(5,2,'empl',9);

/*Table structure for table `t_modifyapply` */

DROP TABLE IF EXISTS `t_modifyapply`;

CREATE TABLE `t_modifyapply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `ProductId` varchar(50) DEFAULT NULL,
  `Applicant` int(11) DEFAULT NULL,
  `ApplicantName` varchar(50) DEFAULT NULL,
  `applyTime` date DEFAULT NULL,
  `passerId` int(11) DEFAULT NULL,
  `ifPass` int(11) DEFAULT NULL,
  `modifySpecifications` varchar(50) DEFAULT NULL,
  `modifyMaterial` varchar(50) DEFAULT NULL,
  `modifyNumber` int(11) DEFAULT NULL,
  `modify1` int(11) DEFAULT NULL,
  `modify2` int(11) DEFAULT NULL,
  `modify3` int(11) DEFAULT NULL,
  `modify4` int(11) DEFAULT NULL,
  `modify5` int(11) DEFAULT NULL,
  `modify6` int(11) DEFAULT NULL,
  `modify7` int(11) DEFAULT NULL,
  `modifyDate` date DEFAULT NULL,
  `specifications` varchar(50) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `Number` int(11) DEFAULT NULL,
  `supplier1` int(11) DEFAULT NULL,
  `supplier2` int(11) DEFAULT NULL,
  `supplier3` int(11) DEFAULT NULL,
  `supplier4` int(11) DEFAULT NULL,
  `supplier5` int(11) DEFAULT NULL,
  `supplier6` int(11) DEFAULT NULL,
  `supplier7` int(11) DEFAULT NULL,
  `originalDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_modifyapply` */

insert  into `t_modifyapply`(`id`,`pid`,`ProductId`,`Applicant`,`ApplicantName`,`applyTime`,`passerId`,`ifPass`,`modifySpecifications`,`modifyMaterial`,`modifyNumber`,`modify1`,`modify2`,`modify3`,`modify4`,`modify5`,`modify6`,`modify7`,`modifyDate`,`specifications`,`material`,`Number`,`supplier1`,`supplier2`,`supplier3`,`supplier4`,`supplier5`,`supplier6`,`supplier7`,`originalDate`) values (1,11,'98K',1,'邵可','2019-02-07',NULL,0,'12','Zn',123,12,NULL,11,NULL,NULL,33,NULL,NULL,'12','Zn',123,NULL,NULL,11,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_product` */

DROP TABLE IF EXISTS `t_product`;

CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` varchar(50) DEFAULT NULL,
  `specifications` varchar(20) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `Supplier1` int(11) DEFAULT NULL,
  `Supplier2` int(11) DEFAULT NULL,
  `Supplier3` int(11) DEFAULT NULL,
  `Supplier4` int(11) DEFAULT NULL,
  `Supplier5` int(11) DEFAULT NULL,
  `Supplier6` int(11) DEFAULT NULL,
  `Supplier7` int(11) DEFAULT NULL,
  `productDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `t_product` */

insert  into `t_product`(`id`,`productId`,`specifications`,`material`,`number`,`Supplier1`,`Supplier2`,`Supplier3`,`Supplier4`,`Supplier5`,`Supplier6`,`Supplier7`,`productDate`) values (1,'AH01','16cm','car',10,10,2,11,4,5,6,7,'2019-01-22'),(2,'ZJ91','16*12','Fe',12,4,6,23,6,6,12,4,'2019-01-22'),(4,'AK48','12','Cu',22,43,NULL,12,11,43,NULL,NULL,'2019-02-01'),(5,'M4A1','15CM','Zn',11,22,NULL,44,NULL,NULL,22,NULL,'2019-02-03'),(6,'98K','11cm','He',23,11,42,NULL,12,NULL,2,NULL,'2019-02-03'),(7,'98K2','11','Cu',11,44,55,NULL,11,22,33,NULL,'2019-02-01'),(8,'AK482','17CM','11',12,34,NULL,23,NULL,23,43,NULL,NULL),(9,'IML12','15CM','Li',32,53,63,36,45,22,35,NULL,'2019-02-03'),(10,'98K','12','He',11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'98K','12','Zn',123,12,NULL,11,NULL,NULL,33,NULL,NULL),(12,'98k','11a','Cu',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `accountNumber` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`,`accountNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`userId`,`userName`,`position`,`accountNumber`,`password`) values (1,'邵可','管理员','admin','123456'),(2,'shaoke','业务员','empl','111111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
