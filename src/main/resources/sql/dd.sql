-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for projec
CREATE DATABASE IF NOT EXISTS `projec` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `projec`;

-- Dumping structure for table projec.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `B_ID` varchar(10) DEFAULT NULL COMMENT 'รหัสใบเสร็จ',
  `B_Date` date DEFAULT NULL COMMENT 'วันทีออกใบเสร็จ',
  `B_Price` int(5) DEFAULT NULL COMMENT 'ราคา',
  `M_IDCard` varchar(13) DEFAULT NULL COMMENT 'รหัสสมาชิก',
  `E_IDCard` varchar(13) DEFAULT NULL COMMENT 'รหัสเจ้าหน้าที่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลใบเสร็จ';

-- Dumping data for table projec.bill: ~0 rows (approximately)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;

-- Dumping structure for table projec.container
CREATE TABLE IF NOT EXISTS `container` (
  `C_ID` varchar(5) NOT NULL COMMENT 'รหัสภาชนะ',
  `C_Name` varchar(30) DEFAULT NULL COMMENT 'ชื่อภาชนะ',
  `C_Price` float DEFAULT NULL COMMENT 'ราคา',
  `Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลภาชนะ';

-- Dumping data for table projec.container: ~4 rows (approximately)
/*!40000 ALTER TABLE `container` DISABLE KEYS */;
INSERT INTO `container` (`C_ID`, `C_Name`, `C_Price`, `Number`) VALUES
	('CB001', 'ชาม', 2, 2000),
	('CC001', 'ถ้วย', 2, 2000),
	('CC002', 'ถ้วยน้ำจิ้ม', 2, 2000),
	('CD001', 'จาน', 2, 2000);
/*!40000 ALTER TABLE `container` ENABLE KEYS */;

-- Dumping structure for table projec.detailrent
CREATE TABLE IF NOT EXISTS `detailrent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Card` varchar(13) DEFAULT NULL,
  `CB001` int(5) DEFAULT NULL,
  `CC001` int(5) DEFAULT NULL COMMENT 'รหัสภาชนะ',
  `CC002` int(5) DEFAULT NULL COMMENT 'รหัสการเช่า',
  `CD001` int(5) DEFAULT NULL,
  `Number` int(5) DEFAULT NULL COMMENT 'จำนวนเช่า',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='ข้อมูลรายละเอียดการเช่า';

-- Dumping data for table projec.detailrent: ~2 rows (approximately)
/*!40000 ALTER TABLE `detailrent` DISABLE KEYS */;
INSERT INTO `detailrent` (`ID`, `ID_Card`, `CB001`, `CC001`, `CC002`, `CD001`, `Number`) VALUES
	(1, NULL, 1, 1, 1, 1, NULL),
	(13, NULL, 44, 66, 33, 555555, NULL),
	(17, 'bb', 6546, 654, 654, 654, NULL);
/*!40000 ALTER TABLE `detailrent` ENABLE KEYS */;

-- Dumping structure for table projec.detailwithdrawal
CREATE TABLE IF NOT EXISTS `detailwithdrawal` (
  `W_ID` varchar(10) DEFAULT NULL COMMENT 'รหัสการเบิก',
  `C_ID` varchar(5) DEFAULT NULL COMMENT 'รหัสภาชนะ',
  `W_Number` int(5) DEFAULT NULL COMMENT 'จำนวนเบิกภาชนะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลรายละเอียดการเบิก';

-- Dumping data for table projec.detailwithdrawal: ~0 rows (approximately)
/*!40000 ALTER TABLE `detailwithdrawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailwithdrawal` ENABLE KEYS */;

-- Dumping structure for table projec.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `E_IDCard` varchar(13) DEFAULT NULL,
  `E_Name` varchar(50) DEFAULT NULL,
  `E_Address` varchar(100) DEFAULT NULL,
  `E_Telaphone` varchar(10) DEFAULT NULL,
  `E_Gender` enum('F','M') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลเจ้าหน้าที่';

-- Dumping data for table projec.employees: ~0 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table projec.login
CREATE TABLE IF NOT EXISTS `login` (
  `user` varchar(11) NOT NULL,
  `passwor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table projec.login: ~0 rows (approximately)
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;

-- Dumping structure for table projec.member
CREATE TABLE IF NOT EXISTS `member` (
  `M_IDCard` varchar(13) DEFAULT NULL,
  `M_Name` varchar(50) DEFAULT NULL,
  `M_Address` varchar(100) DEFAULT NULL,
  `M_TelePhone` varchar(10) DEFAULT NULL,
  `M_Gender` enum('F','M') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลสมาชิก';

-- Dumping data for table projec.member: ~0 rows (approximately)
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- Dumping structure for table projec.rent
CREATE TABLE IF NOT EXISTS `rent` (
  `R_ID` varchar(10) NOT NULL,
  `R_Date` datetime NOT NULL,
  `R_Price` int(5) NOT NULL,
  `M_IDCard` varchar(13) NOT NULL,
  PRIMARY KEY (`R_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลการเช่าภาชนะ';

-- Dumping data for table projec.rent: ~0 rows (approximately)
/*!40000 ALTER TABLE `rent` DISABLE KEYS */;
/*!40000 ALTER TABLE `rent` ENABLE KEYS */;

-- Dumping structure for table projec.report
CREATE TABLE IF NOT EXISTS `report` (
  `id_member` varchar(13) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table projec.report: ~0 rows (approximately)
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;

-- Dumping structure for table projec.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcard` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '0',
  `status` varchar(20) DEFAULT '0',
  `fristname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='ผู้ใช้';

-- Dumping data for table projec.user: ~3 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `idcard`, `password`, `status`, `fristname`, `lastname`, `address`, `telephone`, `gender`) VALUES
	(1, 'yy', '11', '1', NULL, NULL, NULL, NULL, NULL),
	(2, 'bb', '22', '2', NULL, NULL, NULL, NULL, 'Value A'),
	(3, '1', '1', '1', '1', '1', '1', '1', '1'),
	(4, '1425', '445', '2', 'sd', 'gf', 'sd', '456456', 'female');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table projec.withdrawal
CREATE TABLE IF NOT EXISTS `withdrawal` (
  `W_ID` varchar(10) DEFAULT NULL COMMENT 'รหัสการเบิก',
  `W_Date` date DEFAULT NULL COMMENT 'วันที่เบิก',
  `E_IDCard` varchar(13) DEFAULT NULL COMMENT 'รหัสเจ้าหน้าที่',
  `R_ID` varchar(10) DEFAULT NULL COMMENT 'รหัสการเช่าภาชนะ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลการเบิกภาชนะ';

-- Dumping data for table projec.withdrawal: ~0 rows (approximately)
/*!40000 ALTER TABLE `withdrawal` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawal` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
