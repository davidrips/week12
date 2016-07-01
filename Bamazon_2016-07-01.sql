# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.12)
# Database: Bamazon
# Generation Time: 2016-07-01 21:18:58 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Products`;

CREATE TABLE `Products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(255) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `StockQuantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;

INSERT INTO `Products` (`id`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`)
VALUES
	(1,'Sneaker','Shoe','20',8),
	(2,'Dress Shoes','Shoe','50',8),
	(3,'Sandals','Shoe','12',25),
	(4,'iPod','Gadgets','100',15),
	(5,'computer','Gadgets','650',8),
	(6,'phone','Gadgets','50',20),
	(7,'bagels','food','5',60),
	(8,'chips','food','3',50),
	(9,'pretzels','food','6',80),
	(10,'pasta','food','1',200);

/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
