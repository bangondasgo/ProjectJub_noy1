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

-- Dumping structure for table projec.adddis
CREATE TABLE IF NOT EXISTS `adddis` (
  `ad_day` int(11) DEFAULT NULL,
  `ad_mouth` int(11) DEFAULT NULL,
  `ad_year` int(11) DEFAULT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `ad_add` int(11) DEFAULT NULL,
  `ad_dis` int(11) DEFAULT NULL,
  `ad_balance` int(11) DEFAULT NULL,
  `ad_result` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='เพิ่มและลบภาชนะ';

-- Dumping data for table projec.adddis: ~0 rows (approximately)
/*!40000 ALTER TABLE `adddis` DISABLE KEYS */;
/*!40000 ALTER TABLE `adddis` ENABLE KEYS */;

-- Dumping structure for table projec.bill
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_year` int(11) DEFAULT NULL,
  `bill_mounth` int(11) DEFAULT NULL,
  `bill_number` int(3) unsigned zerofill DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='id bill';

-- Dumping data for table projec.bill: ~0 rows (approximately)
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;

-- Dumping structure for table projec.container
CREATE TABLE IF NOT EXISTS `container` (
  `C_ID` varchar(5) NOT NULL COMMENT 'รหัสภาชนะ',
  `C_Name` varchar(30) DEFAULT NULL COMMENT 'ชื่อภาชนะ',
  `C_Price` int(11) DEFAULT NULL COMMENT 'ราคา',
  `Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`C_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ข้อมูลภาชนะ';

-- Dumping data for table projec.container: ~4 rows (approximately)
/*!40000 ALTER TABLE `container` DISABLE KEYS */;
INSERT INTO `container` (`C_ID`, `C_Name`, `C_Price`, `Number`) VALUES
	('CB001', 'ชาม', 2, 3782),
	('CC001', 'ถ้วยน้ำซุป', 2, 1681),
	('CC002', 'ถ้วยน้ำจิ้ม', 2, 2160),
	('CD001', 'จาน', 2, 2670);
/*!40000 ALTER TABLE `container` ENABLE KEYS */;

-- Dumping structure for table projec.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `cu_id` int(11) NOT NULL AUTO_INCREMENT,
  `cu_idcard` varchar(50) DEFAULT NULL,
  `cu_fname` varchar(50) DEFAULT NULL,
  `cu_lastname` varchar(50) DEFAULT NULL,
  `cu_address` text,
  `cu_telephone` varchar(50) DEFAULT NULL,
  `cu_gender` varchar(50) DEFAULT NULL,
  `cu_member` int(11) DEFAULT NULL,
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='ประวัติลูกค้า';

-- Dumping data for table projec.customer: ~7 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`cu_id`, `cu_idcard`, `cu_fname`, `cu_lastname`, `cu_address`, `cu_telephone`, `cu_gender`, `cu_member`) VALUES
	(9, '1310600362154', 'นารี', 'สายยาง', '292 moo 18 tumbon tagong\r\n', '0879770616', '', 2),
	(11, '1310600355115', 'ละออ', 'เนียง', 'พพพพพ', '0955521471', NULL, 2),
	(24, '1310600244763', 'กิตินัน', 'บุญกัน', 'บ้านหนองหงส์', '0856011236', 'นาง', 7),
	(25, '1310600355115', 'ewqewqewq', 'qwewqe', 'eqwewqe', '1111111111', 'นาง', 2),
	(26, '3301501024789', 'xcz', 'xz', 'xz', '1111111111', 'นาย', 2),
	(27, '3310701073278', 'มานี', 'กำนำ', 'หหหหหหหหห', '0904432123', 'นาง', 2),
	(28, '1301500241933', 'กันยา', 'ตุลา', 'กกก', '0547521453', 'นาย', 6);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table projec.detailcontainer
CREATE TABLE IF NOT EXISTS `detailcontainer` (
  `date` date DEFAULT NULL,
  `c_id` varchar(50) DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `add` int(10) DEFAULT NULL,
  `dis` int(10) DEFAULT NULL,
  `balance` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='รายละเอียดการเพิ่มภาชนะ';

-- Dumping data for table projec.detailcontainer: ~0 rows (approximately)
/*!40000 ALTER TABLE `detailcontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailcontainer` ENABLE KEYS */;

-- Dumping structure for table projec.detailrent
CREATE TABLE IF NOT EXISTS `detailrent` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Card` varchar(13) DEFAULT NULL,
  `CB001` int(5) DEFAULT NULL,
  `CC001` int(5) DEFAULT NULL COMMENT 'รหัสภาชนะ',
  `CC002` int(5) DEFAULT NULL COMMENT 'รหัสการเช่า',
  `CD001` int(5) DEFAULT NULL,
  `Number` int(5) DEFAULT NULL COMMENT 'จำนวนเช่า',
  `dateday` int(11) DEFAULT NULL,
  `datemont` int(11) DEFAULT NULL,
  `dateyear` int(11) DEFAULT NULL,
  `alloder` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='ข้อมูลรายละเอียดการเช่า';

-- Dumping data for table projec.detailrent: ~45 rows (approximately)
/*!40000 ALTER TABLE `detailrent` DISABLE KEYS */;
INSERT INTO `detailrent` (`ID`, `ID_Card`, `CB001`, `CC001`, `CC002`, `CD001`, `Number`, `dateday`, `datemont`, `dateyear`, `alloder`, `status`) VALUES
	(1, NULL, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, '1'),
	(13, NULL, 44, 66, 33, 555555, NULL, NULL, NULL, NULL, NULL, '1'),
	(17, 'bb', 6546, 654, 654, 654, NULL, NULL, NULL, NULL, NULL, '1'),
	(18, 'bb', 56, 55, 55, 55, NULL, NULL, NULL, NULL, NULL, '1'),
	(19, 'bb', 5, 5, 5, 5, 40, 14, 0, 2561, NULL, '2'),
	(20, 'bb', 33, 33, 33, 33, 264, 14, 0, 2561, NULL, '1'),
	(21, '343242', 2, 3, 4, 1, 20, 15, 8, 2561, 10, '1'),
	(22, '343242', 5, 5, 5, 5, 40, 15, 8, 2561, 20, '1'),
	(32, '343242', 4, 2, 1, 3, 20, 15, 8, 2561, 10, '1'),
	(33, '343242', 100, 200, 300, 400, 2000, 20, 8, 2561, 1000, '2'),
	(34, '343242', 100, 100, 100, 100, 800, 20, 8, 2561, 400, '1'),
	(35, '343242', 3, 3, 0, 0, 12, 20, 8, 2561, 6, '1'),
	(36, '343242', 3, 0, 0, 0, 6, 20, 8, 2561, 3, '2'),
	(37, '343242', 120, 50, 50, 50, 540, 24, 8, 2561, 270, '2'),
	(38, '343242', 100, 50, 30, 0, 360, 24, 8, 2561, 180, '1'),
	(39, '343242', 50, 10, 0, 0, 120, 4, 9, 2561, 60, '1'),
	(40, '343242', 55, 0, 0, 0, 110, 9, 9, 2561, 55, '1'),
	(41, '343242', 25, 54, 0, 0, 158, 12, 9, 2561, 79, '2'),
	(42, '343242', 2, 5, 55, 0, 124, 15, 9, 2561, 62, '1'),
	(43, '343242', 20, 50, 25, 30, 250, 16, 9, 2561, 125, '1'),
	(44, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(45, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(46, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(47, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(48, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(49, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(50, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(51, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(52, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(53, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(54, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(55, '343242', 20, 50, 25, 30, 250, 17, 9, 2561, 125, '1'),
	(56, '343242', 44, 11, 55, 40, 300, 17, 9, 2561, 150, '1'),
	(57, '1310600244763', 40, 36, 52, 10, 207, 18, 9, 2561, 138, '1'),
	(58, '1310600362154', 50, 30, 20, 70, 255, 18, 9, 2561, 170, '1'),
	(59, '1310600362154', 50, 30, 20, 70, 255, 18, 9, 2561, 170, '1'),
	(60, '1310600355115', 50, 40, 60, 30, 270, 19, 9, 2561, 180, '1'),
	(61, '1310600355115', 53, 60, 53, 100, 399, 20, 9, 2561, 266, '2'),
	(62, '1310600355115', 100, 50, 50, 0, 300, 22, 9, 2561, 200, '2'),
	(63, '1310600244763', 50, 20, 20, 100, 285, 24, 9, 2561, 190, '1'),
	(64, '1310600355115', 20, 40, 20, 50, 195, 24, 9, 2561, 130, '1'),
	(65, '1310600355115', 50, 60, 0, 50, 240, 25, 9, 2561, 160, '2'),
	(66, '1310600355115', 100, 0, 0, 0, 150, 28, 9, 2561, 100, '1'),
	(67, '1310600355115', 100, 0, 0, 0, 150, 28, 9, 2561, 100, '1'),
	(68, '1310600355115', 100, 0, 50, 0, 225, 31, 9, 2561, 150, '1');
/*!40000 ALTER TABLE `detailrent` ENABLE KEYS */;

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

-- Dumping structure for table projec.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '0',
  `status` varchar(20) DEFAULT '0',
  `fristname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='ผู้ใช้';

-- Dumping data for table projec.user: ~9 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `status`, `fristname`, `lastname`, `address`, `telephone`, `gender`) VALUES
	(2, 'bb', '22', '2', 'dasda', 'aasdasd', 'dasdasd', 'adasdasd', 'Value A'),
	(3, '1', '1', '1', '1', '1', '1', '1', '1'),
	(4, '1425', '445', '2', 'sd', 'gf', 'sd', '456456', 'female'),
	(5, '11', '11', '3', 'ff', 'dasd', 'dasdas', 'asdad', 'asdsa'),
	(6, '123456', '123456', '2', 'ยวนใจ', 'แก้วสี', '12 47', '0605478965', 'นาง'),
	(7, '555', '5555', '2', 'ดดด', 'เนียง', '44444', '0524', 'นาย'),
	(9, '44', '555', '3', 'bbb', 'bbbb', 'ฟฟฟ', '0870097433', 'นาย'),
	(13, '224401', '104422', '', 'บุญฐา', 'มาสารถ', '23 หมู่ 5 บ้าน ดอนนาง ตำบลสามสี อำเภอสามรถ จังหวัดสามบาท', '0387459541', ''),
	(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
