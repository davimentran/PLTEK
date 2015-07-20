-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 18, 2013 at 06:58 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thegioihinhanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet`
--

DROP TABLE IF EXISTS `chitiet`;
CREATE TABLE IF NOT EXISTS `chitiet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `chitiet`
--


-- --------------------------------------------------------

--
-- Table structure for table `city_vietnam`
--

DROP TABLE IF EXISTS `city_vietnam`;
CREATE TABLE IF NOT EXISTS `city_vietnam` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Thành phố',
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ảnh đại diện',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Vị trí',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Quản lý',
  `datecreated` bigint(20) unsigned DEFAULT NULL COMMENT 'Ngày tạo',
  `dateupdated` bigint(20) unsigned DEFAULT NULL COMMENT 'Ngày cập nhật',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=65 ;

--
-- Dumping data for table `city_vietnam`
--

INSERT INTO `city_vietnam` (`id`, `title`, `picture`, `position`, `status`, `datecreated`, `dateupdated`) VALUES
(1, 'Hồ Chí Minh', '/products/imagehere.png', 0, 1, 1366732800, 1366732800),
(2, 'Hà Nội', '/products/imagehere.png', 1, 1, 1236251880, 1236251880),
(3, 'An Giang', '/products/imagehere.png', 2, 1, 1236251880, 1236251880),
(4, 'Bà Rịa Vũng Tàu', '/products/imagehere.png', 3, 1, 1236251880, 1236251880),
(5, 'Bắc Cạn', '/products/imagehere.png', 4, 1, 1236251880, 1236251880),
(6, 'Bắc Giang', '/products/imagehere.png', 5, 1, 1236251880, 1236251880),
(7, 'Bạc Liêu', '/products/imagehere.png', 6, 1, 1236251880, 1236251880),
(8, 'Bắc Ninh', '/products/imagehere.png', 7, 1, 1236251880, 1236251880),
(9, 'Bến Tre', '/products/imagehere.png', 8, 1, 1236251880, 1236251880),
(10, 'Biên Hòa', '/products/imagehere.png', 9, 1, 1236251880, 1236251880),
(11, 'Bình Định', '/products/imagehere.png', 10, 1, 1236251880, 1236251880),
(12, 'Bình Dương', '/products/imagehere.png', 11, 1, 1236251880, 1236251880),
(13, 'Bình Phước', '/products/imagehere.png', 12, 1, 1236251880, 1236251880),
(14, 'Bình THuận', '/products/imagehere.png', 13, 1, 1236251880, 1236251880),
(15, 'Cà Mau', '/products/imagehere.png', 14, 1, 1236251880, 1236251880),
(16, 'Cần Thơ', '/products/imagehere.png', 15, 1, 1236251880, 1236251880),
(17, 'Cao Bằng', '/products/imagehere.png', 16, 1, 1236251880, 1236251880),
(18, 'Đăc Nông', '/products/imagehere.png', 17, 1, 1236251880, 1236251880),
(19, 'Đăc Lăc', '/products/imagehere.png', 18, 1, 1236251880, 1236251880),
(20, 'Đà Nẵng', '/products/imagehere.png', 19, 1, 1236251880, 1236251880),
(21, 'Đồng Nai', '/products/imagehere.png', 20, 1, 1236251880, 1236251880),
(22, 'Điện Biên', '/products/imagehere.png', 21, 1, 1236251880, 1236251880),
(23, 'Đồng Tháp', '/products/imagehere.png', 22, 1, 1236251880, 1236251880),
(24, 'Gia Lai', '/products/imagehere.png', 23, 1, 1236251880, 1236251880),
(25, 'Hà Giang', '/products/imagehere.png', 24, 1, 1236251880, 1236251880),
(26, 'Hà Nam', '/products/imagehere.png', 25, 1, 1236251880, 1236251880),
(27, 'Hà Tây', '/products/imagehere.png', 26, 1, 1236251880, 1236251880),
(28, 'Hà Tĩnh', '/products/imagehere.png', 27, 1, 1236251880, 1236251880),
(29, 'Hải Dương', '/products/imagehere.png', 28, 1, 1236251880, 1236251880),
(30, 'Hải Phòng', '/products/imagehere.png', 29, 1, 1236251880, 1236251880),
(31, 'Hòa Bình', '/products/imagehere.png', 30, 1, 1236251880, 1236251880),
(32, 'Hưng Yên', '/products/imagehere.png', 31, 1, 1236251880, 1236251880),
(33, 'Kiên Giang', '/products/imagehere.png', 32, 1, 1236251880, 1236251880),
(34, 'Khánh Hòa', '/products/imagehere.png', 33, 1, 1236251880, 1236251880),
(35, 'Kon Tum', '/products/imagehere.png', 34, 1, 1236251880, 1236251880),
(36, 'Lai Châu', '/products/imagehere.png', 35, 1, 1236251880, 1236251880),
(37, 'Lâm Đồng', '/products/imagehere.png', 36, 1, 1236251880, 1236251880),
(38, 'Lạng Sơn', '/products/imagehere.png', 37, 1, 1236251880, 1236251880),
(39, 'Lào Cai', '/products/imagehere.png', 38, 1, 1236251880, 1236251880),
(40, 'Long An', '/products/imagehere.png', 39, 1, 1236251880, 1236251880),
(41, 'Nam Định', '/products/imagehere.png', 40, 1, 1236251880, 1236251880),
(42, 'Nghệ An', '/products/imagehere.png', 41, 1, 1236251880, 1236251880),
(43, 'Ninh Bình', '/products/imagehere.png', 42, 1, 1236251880, 1236251880),
(44, 'Ninh Thuận', '/products/imagehere.png', 43, 1, 1236251880, 1236251880),
(45, 'Phú Thọ', '/products/imagehere.png', 44, 1, 1236251880, 1236251880),
(46, 'Phú Yên', '/products/imagehere.png', 45, 1, 1236251880, 1236251880),
(47, 'Quảng Trị', '/products/imagehere.png', 46, 1, 1236251880, 1236251880),
(48, 'Quảng Bình', '/products/imagehere.png', 47, 1, 1236251880, 1236251880),
(49, 'Quảng Ngãi', '/products/imagehere.png', 48, 1, 1236251880, 1236251880),
(50, 'Quảng Ninh', '/products/imagehere.png', 49, 1, 1236251880, 1236251880),
(51, 'Quảng Nam', '/products/imagehere.png', 50, 1, 1236251880, 1236251880),
(52, 'Sóc Trăng', '/products/imagehere.png', 51, 1, 1236251880, 1236251880),
(53, 'Sơn La', '/products/imagehere.png', 52, 1, 1236251880, 1236251880),
(54, 'Tây Ninh', '/products/imagehere.png', 53, 1, 1236251880, 1236251880),
(55, 'Thái Bình', '/products/imagehere.png', 54, 1, 1236251880, 1236251880),
(56, 'Thái Nguyên', '/products/imagehere.png', 55, 1, 1236251880, 1236251880),
(57, 'Thanh Hóa', '/products/imagehere.png', 56, 1, 1236251880, 1236251880),
(58, 'Thừa Thiên Huế', '/products/imagehere.png', 57, 1, 1236251880, 1236251880),
(59, 'Tiền Giang', '/products/imagehere.png', 58, 1, 1236251880, 1236251880),
(60, 'Trà Vinh', '/products/imagehere.png', 59, 1, 1236251880, 1236251880),
(61, 'Tuyên Quang', '/products/imagehere.png', 60, 1, 1236251880, 1236251880),
(62, 'Vĩnh Long', '/products/imagehere.png', 61, 1, 1236251880, 1236251880),
(63, 'Vĩnh Phúc', '/products/imagehere.png', 62, 1, 1236251880, 1236251880),
(64, 'Yên Bái', '/products/imagehere.png', 63, 1, 1236251880, 1236251880);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE IF NOT EXISTS `hoadon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sohoadon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khachang_id` int(10) DEFAULT NULL,
  `fullname_sell` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname_dv` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mst` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thanhtoan_id` int(10) DEFAULT NULL,
  `nhanvien_id` int(10) DEFAULT NULL,
  `nhanvienquay_id` int(10) DEFAULT NULL,
  `array_mathang_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_item_code` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_hanghoa` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_donvitinh` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_soluong` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_dongia` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_giamgia` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_ghichu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongtiendonvi` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(10) DEFAULT NULL,
  `tienthueGTGT` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tongsotien` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tienbangchu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` tinyint(2) DEFAULT NULL,
  `thang` tinyint(2) DEFAULT NULL,
  `nam` int(5) DEFAULT NULL,
  `giotao` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `order_week` int(10) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `datecreated` (`datecreated`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `sohoadon`, `khachang_id`, `fullname_sell`, `fullname_dv`, `address`, `mst`, `thanhtoan_id`, `nhanvien_id`, `nhanvienquay_id`, `array_mathang_id`, `array_item_code`, `array_hanghoa`, `array_donvitinh`, `array_soluong`, `array_dongia`, `array_giamgia`, `array_ghichu`, `tongtiendonvi`, `tax`, `tienthueGTGT`, `tongsotien`, `tienbangchu`, `ngay`, `thang`, `nam`, `giotao`, `datecreated`, `order_week`, `status`) VALUES
(9, '13O41601', 18, '', 'Anh Chi ', 'An Sương', '', 5, 20, NULL, '364|o0o|383|o0o||o0o||o0o||o0o||o0o|', 'TPH3050|o0o|TTHEXLY|o0o||o0o||o0o||o0o||o0o|', 'Phục hồi 30x50|o0o|Scan & x.lý thẻ 4|o0o||o0o||o0o||o0o||o0o|', 'Tấm|o0o|Th.|o0o||o0o||o0o||o0o||o0o|', '2|o0o|2|o0o|0|o0o|0|o0o|0|o0o|0|o0o|', '46000 |o0o|3000 |o0o||o0o||o0o||o0o||o0o|', '0|o0o|0|o0o|0|o0o|0|o0o|0|o0o|0|o0o|', '', '98000', 0, '0', '98000', 'Chín  mươi tám  nghìn đồng', 12, 10, 13, '19:39:22', 1350057600, 0, 1),
(10, '13O41701', 18, '', 'Anh Chi ', 'An Sương', '', 1, 19, NULL, '11|o0o|432|o0o|', 'CHUPIT|o0o|TXH5050|o0o|', 'Chụp ít hơn 10|o0o|Xuất hình 50x50|o0o|', 'Tấm|o0o|Tấm|o0o|', '100|o0o|100|o0o|', '20000 |o0o|33000 |o0o|', '0|o0o|0|o0o|', '', '5300000', 10, '530000', '5830000', 'Năm  triệu, tám  trăm  ba  mươi nghìn đồng', 13, 10, 13, '01:07:58', 1381593600, 0, 1),
(11, '13O41702', 17, '', 'Trần Quốc Thụy', '255/5 Hung Vuong, My Long ward, Long Xuyen city, An Giang', '523423523', 5, 20, NULL, '3|o0o|8|o0o||o0o|', 'AL1318(56)|o0o|BABY1318|o0o||o0o|', 'Album13x18(56)|o0o|Ch.p em bé(13x1)|o0o||o0o|', 'Cuốn|o0o|Tấm|o0o||o0o|', '10|o0o|3|o0o|0|o0o|', '37000 |o0o|20000 |o0o||o0o|', '0|o0o|0|o0o|0|o0o|', '', '430000', 10, '43000', '473000', 'Bốn  trăm  bảy  mươi ba  nghìn đồng', 13, 10, 13, '01:56:10', 1381593600, 0, 1),
(13, '13O42301', 0, '', 'Chi', 'An Sương', '', 1, 18, NULL, '19|o0o|15|o0o|', 'EPLABB2530|o0o|EPLABB1521|o0o|', 'Épla(bo3)25X30|o0o|Épla(bo3)15x21|o0o|', 'Tấm|o0o|Tấm|o0o|', '5|o0o|50|o0o|', '74000 |o0o|42000 |o0o|', '0|o0o|0|o0o|', '', '2470000', 0, '0', '2470000', 'Hai  triệu, bốn  trăm  bảy  mươi nghìn đồng', 16, 10, 13, '07:42:48', 1476288000, 0, 1),
(12, '13O41701', 17, '', 'Trần Quốc Thụy', '255/5 Hung Vuong, My Long ward, Long Xuyen city, An Giang', '523423523', 5, 19, NULL, '13|o0o|2|o0o|13|o0o|', 'EPLABB1015|o0o|AL1015M|o0o|EPLABB1015|o0o|', 'Épla(bo3)10x15|o0o|Album10x15mo|o0o|Épla(bo3)10x15|o0o|', 'Tấm|o0o|Cuốn|o0o|Tấm|o0o|', '5|o0o|4|o0o|4|o0o|', '28000 |o0o|4000 |o0o|28000 |o0o|', '0|o0o|0|o0o|0|o0o|', '', '268000', 10, '26800', '294800', 'Hai  trăm  chín  mươi bốn  nghìn, tám  trăm  đồng', 13, 10, 13, '03:29:21', 1381593600, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachang`
--

DROP TABLE IF EXISTS `khachang`;
CREATE TABLE IF NOT EXISTS `khachang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tinhthanh_id` int(10) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ho ten',
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mst` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=19 ;

--
-- Dumping data for table `khachang`
--

INSERT INTO `khachang` (`id`, `tinhthanh_id`, `title`, `address`, `picture`, `mst`, `email`, `phone`, `fax`, `datecreated`, `status`) VALUES
(17, 3, 'Trần Quốc Thụy', '255/5 Hung Vuong, My Long ward, Long Xuyen city, An Giang', '/products/avata.jpg', '523423523', 'tquocthuy@gmail.com', '0939 262 905', '', 1366732800, 1),
(18, 1, 'Anh Chi ', 'An Sương', '/products/imagehere.png', '', 'info@thegioihinhanh.com', '093 77 87 77 30', '', 1381507200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khogiay`
--

DROP TABLE IF EXISTS `khogiay`;
CREATE TABLE IF NOT EXISTS `khogiay` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `note` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `khogiay`
--


-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `note` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_dichvu` tinyint(3) DEFAULT '1',
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=475 ;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`id`, `item_code`, `item_name`, `unit`, `price`, `quantity`, `note`, `is_dichvu`, `status`) VALUES
(1, 'AL1015(56)', 'Album10x15(56)', 'Cuốn', 34000, 10, '', 0, 1),
(2, 'AL1015M', 'Album10x15mo', 'Cuốn', 4000, 10, '', 0, 1),
(3, 'AL1318(56)', 'Album13x18(56)', 'Cuốn', 37000, 10, '', 0, 1),
(4, 'AL1318M', 'Album13x18mo', 'Cuốn', 5000, 10, '', 0, 1),
(5, 'AL1521M', 'Album15x21mo', 'Cuốn', 8000, 10, '', 0, 1),
(6, 'AL-CD(1)', 'Album 1CD', 'Cái', 22000, 10, '', 0, 1),
(7, 'AL-CD(2)', 'Album 2CD', 'Cái', 26000, 10, '', 0, 1),
(8, 'BABY1318', 'Ch.p em bé(13x1)', 'Tấm', 20000, 1, NULL, 1, 1),
(9, 'BABY1521', 'Ch.p em bé (15x2)', 'Tấm', 25000, 1, NULL, 1, 1),
(10, 'CD-700', 'CD 700mb', 'Cái', 5000, 10, '', 0, 1),
(11, 'CHUPIT', 'Chụp ít hơn 10', 'Tấm', 20000, 1, '', 1, 1),
(12, 'CHUPSN', 'Chụp sinh nhật', 'Tấm', 10000, 1, '', 1, 1),
(13, 'EPLABB1015', 'Épla(bo3)10x15', 'Tấm', 28000, 1, NULL, 1, 1),
(14, 'EPLABB1318', 'Épla(bo3)13x18', 'Tấm', 38000, 1, NULL, 1, 1),
(15, 'EPLABB1521', 'Épla(bo3)15x21', 'Tấm', 42000, 1, NULL, 1, 1),
(16, 'EPLABB1824', 'Épla(bo3)18x24', 'Tấm', 50000, 1, NULL, 1, 1),
(17, 'EPLABB2025', 'Épla(bo3)20x25', 'Tấm', 50000, 1, NULL, 1, 1),
(18, 'EPLABB2030', 'Épla(bo3)20x30', 'Tấm', 64000, 1, NULL, 1, 1),
(19, 'EPLABB2530', 'Épla(bo3)25X30', 'Tấm', 74000, 1, NULL, 1, 1),
(20, 'EPLABB2535', 'Épla(bo3)25x35', 'Tấm', 86000, 1, NULL, 1, 1),
(21, 'EPLABB3040', 'Épla(bo3)30X40', 'Tấm', 100000, 1, NULL, 1, 1),
(22, 'EPLABB3045', 'Épla(bo3)30X45', 'Tấm', 110000, 1, NULL, 1, 1),
(23, 'EPLABB3550', 'Épla(bo3)35X50', 'Tấm', 144000, 1, NULL, 1, 1),
(24, 'EPLABB4050', 'Épla(bo3)40X50', 'Tấm', 170000, 1, NULL, 1, 1),
(25, 'EPLABB4060', 'Épla(bo3)40x60', 'Tấm', 180000, 1, NULL, 1, 1),
(26, 'EPLABB5060', 'Épla(bo3)50x60', 'Tấm', 200000, 1, NULL, 1, 1),
(27, 'EPLABB5070', 'Épla(bo3)50X70', 'Tấm', 220000, 1, NULL, 1, 1),
(28, 'EPLABB5075', 'Épla(bo3)50x75', 'Tấm', 230000, 1, NULL, 1, 1),
(29, 'EPLABB6085', 'Épla(bo3)60X85', 'Tấm', 300000, 1, NULL, 1, 1),
(30, 'EPLABB6090', 'Épla(bo3)60x90', 'Tấm', 330000, 1, NULL, 1, 1),
(31, 'EPLABN1015', 'Épla(bo5)10x15', 'Tấm', 40000, 1, NULL, 1, 1),
(32, 'EPLABN1318', 'Épla(bo5)13x18', 'Tấm', 48000, 1, NULL, 1, 1),
(33, 'EPLABN1521', 'Épla(bo5)15x21', 'Tấm', 54000, 1, NULL, 1, 1),
(34, 'EPLABN1824', 'Épla(bo5)18x24', 'Tấm', 60000, 1, NULL, 1, 1),
(35, 'EPLABN2025', 'Épla(bo5)20x25', 'Tấm', 60000, 1, NULL, 1, 1),
(36, 'EPLABN2030', 'Épla(bo5)20x30', 'Tấm', 76000, 1, NULL, 1, 1),
(37, 'EPLABN2530', 'Épla(bo5)25X30', 'Tấm', 86000, 1, NULL, 1, 1),
(38, 'EPLABN2535', 'Épla(bo5)25x35', 'Tấm', 102000, 1, NULL, 1, 1),
(39, 'EPLABN3040', 'Épla(bo5)30X40', 'Tấm', 120000, 1, NULL, 1, 1),
(40, 'EPLABN3045', 'Épla(bo5)30X45', 'Tấm', 130000, 1, NULL, 1, 1),
(41, 'EPLABN3550', 'Épla(bo5)35X50', 'Tấm', 170000, 1, NULL, 1, 1),
(42, 'EPLABN4050', 'Épla(bo5)40X50', 'Tấm', 190000, 1, NULL, 1, 1),
(43, 'EPLABN4060', 'Épla(bo5)40x60', 'Tấm', 200000, 1, NULL, 1, 1),
(44, 'EPLABN5060', 'Épla(bo5)50x60', 'Tấm', 230000, 1, NULL, 1, 1),
(45, 'EPLABN5070', 'Épla(bo5)50X70', 'Tấm', 240000, 1, NULL, 1, 1),
(46, 'EPLABN5075', 'Épla(bo5)50x75', 'Tấm', 250000, 1, NULL, 1, 1),
(47, 'EPLABN6085', 'Épla(bo5)60X85', 'Tấm', 340000, 1, NULL, 1, 1),
(48, 'EPLABN6090', 'Épla(bo5)60x90', 'Tấm', 360000, 1, NULL, 1, 1),
(49, 'EPLAKB1015', 'Épla(kbo)10x15', 'Tấm', 22000, 1, NULL, 1, 1),
(50, 'EPLAKB1318', 'Épla(kbo)13x18', 'Tấm', 26000, 1, NULL, 1, 1),
(51, 'EPLAKB1521', 'Épla(kbo)15x21', 'Tấm', 30000, 1, NULL, 1, 1),
(52, 'EPLAKB1824', 'Épla(kbo)18x24', 'Tấm', 38000, 1, NULL, 1, 1),
(53, 'EPLAKB2025', 'Épla(kbo)20x25', 'Tấm', 40000, 1, NULL, 1, 1),
(54, 'EPLAKB2030', 'Épla(kbo)20x30', 'Tấm', 50000, 1, NULL, 1, 1),
(55, 'EPLAKB2530', 'Épla(kbo)25X30', 'Tấm', 54000, 1, NULL, 1, 1),
(56, 'EPLAKB2535', 'Épla(kbo)25x35', 'Tấm', 64000, 1, NULL, 1, 1),
(57, 'EPLAKB3040', 'Épla(kbo)30X40', 'Tấm', 80000, 1, NULL, 1, 1),
(58, 'EPLAKB3045', 'Épla(kbo)30X45', 'Tấm', 90000, 1, NULL, 1, 1),
(59, 'EPLAKB3550', 'Épla(kbo)35X50', 'Tấm', 116000, 1, NULL, 1, 1),
(60, 'EPLAKB4050', 'Épla(kbo)40X50', 'Tấm', 140000, 1, NULL, 1, 1),
(61, 'EPLAKB4060', 'Épla(kbo)40x60', 'Tấm', 156000, 1, NULL, 1, 1),
(62, 'EPLAKB5060', 'Épla(kbo)50x60', 'Tấm', 180000, 1, NULL, 1, 1),
(63, 'EPLAKB5070', 'Épla(kbo)50X70', 'Tấm', 190000, 1, NULL, 1, 1),
(64, 'EPLAKB5075', 'Épla(kbo)50x75', 'Tấm', 200000, 1, NULL, 1, 1),
(65, 'EPLAKB6085', 'Épla(kbo)60X85', 'Tấm', 240000, 1, NULL, 1, 1),
(66, 'EPLAKB6090', 'Épla(kbo)60x90', 'Tấm', 250000, 1, NULL, 1, 1),
(67, 'EPLAS1015', 'Ép plas10x15', 'Tấm', 1600, 1, NULL, 1, 1),
(68, 'EPLAS1318', 'Ép plas13x18', 'Tấm', 2000, 1, NULL, 1, 1),
(69, 'EPLAS1521', 'Ép plas15x21', 'Tấm', 3000, 1, NULL, 1, 1),
(70, 'EPLAS1824', 'Ép plas18x24', 'Tấm', 4000, 1, NULL, 1, 1),
(71, 'EPLAS2025', 'Ép plas20x25', 'Tấm', 5000, 1, NULL, 1, 1),
(72, 'EPLAS2030', 'Ép plas20x30', 'Tấm', 6000, 1, NULL, 1, 1),
(73, 'EPLAS2530', 'Ép plas25X30', 'Tấm', 8000, 1, NULL, 1, 1),
(74, 'EPLAS2535', 'Ép plas25x35', 'Tấm', 9000, 1, NULL, 1, 1),
(75, 'EPLAS3040', 'Ép plas30X40', 'Tấm', 20000, 1, NULL, 1, 1),
(76, 'EPLAS3045', 'Ép plas30X45', 'Tấm', 24000, 1, NULL, 1, 1),
(77, 'EPLAS3550', 'Ép plas35X50', 'Tấm', 28000, 1, NULL, 1, 1),
(78, 'EPLAS4050', 'Ép plas40X50', 'Tấm', 32000, 1, NULL, 1, 1),
(79, 'EPLAS4060', 'Ép plas40x60', 'Tấm', 34000, 1, NULL, 1, 1),
(80, 'EPLAS5060', 'Ép plas50x60', 'Tấm', 50000, 1, NULL, 1, 1),
(81, 'EPLAS5070', 'Ép plas50X70', 'Tấm', 56000, 1, NULL, 1, 1),
(82, 'EPLAS5075', 'Ép plas50x75', 'Tấm', 60000, 1, NULL, 1, 1),
(83, 'EPLAS6085', 'Ép plas60X85', 'Tấm', 72000, 1, NULL, 1, 1),
(84, 'EPLAS6090', 'Ép plas60x90', 'Tấm', 76000, 1, NULL, 1, 1),
(85, 'EPLAS70110', 'Ép plas70x110', 'Tấm', 100000, 1, NULL, 1, 1),
(86, 'EPLUBB1015', 'Éplu(bo3)10x15', 'Tấm', 20000, 1, NULL, 1, 1),
(87, 'EPLUBB1318', 'Éplu(bo3)13x18', 'Tấm', 26000, 1, NULL, 1, 1),
(88, 'EPLUBB1521', 'Éplu(bo3)15x21', 'Tấm', 34000, 1, NULL, 1, 1),
(89, 'EPLUBB1824', 'Éplu(bo3)18x24', 'Tấm', 38000, 1, NULL, 1, 1),
(90, 'EPLUBB2025', 'Éplu(bo3)20x25', 'Tấm', 44000, 1, NULL, 1, 1),
(91, 'EPLUBB2030', 'Éplu(bo3)20x30', 'Tấm', 54000, 1, NULL, 1, 1),
(92, 'EPLUBB2530', 'Éplu(bo3)25X30', 'Tấm', 56000, 1, NULL, 1, 1),
(93, 'EPLUBB2535', 'Éplu(bo3)25x35', 'Tấm', 56000, 1, NULL, 1, 1),
(94, 'EPLUBB3040', 'Éplu(bo3)30X40', 'Tấm', 76000, 1, NULL, 1, 1),
(95, 'EPLUBB3045', 'Éplu(bo3)30X45', 'Tấm', 80000, 1, NULL, 1, 1),
(96, 'EPLUBB3550', 'Éplu(bo3)35X50', 'Tấm', 114000, 1, NULL, 1, 1),
(97, 'EPLUBB4050', 'Éplu(bo3)40X50', 'Tấm', 114000, 1, NULL, 1, 1),
(98, 'EPLUBB4060', 'Éplu(bo3)40x60', 'Tấm', 136000, 1, NULL, 1, 1),
(99, 'EPLUBB5060', 'Éplu(bo3)50x60', 'Tấm', 170000, 1, NULL, 1, 1),
(100, 'EPLUBB5070', 'Éplu(bo3)50X70', 'Tấm', 190000, 1, NULL, 1, 1),
(101, 'EPLUBB5075', 'Éplu(bo3)50x75', 'Tấm', 200000, 1, NULL, 1, 1),
(102, 'EPLUBB6085', 'Éplu(bo3)60X85', 'Tấm', 230000, 1, NULL, 1, 1),
(103, 'EPLUBB6090', 'Éplu(bo3)60x90', 'Tấm', 250000, 1, NULL, 1, 1),
(104, 'EPLUBN1015', 'Éplu(bo5)10x15', 'Tấm', 32000, 1, NULL, 1, 1),
(105, 'EPLUBN1318', 'Éplu(bo5)13x18', 'Tấm', 36000, 1, NULL, 1, 1),
(106, 'EPLUBN1521', 'Éplu(bo5)15x21', 'Tấm', 40000, 1, NULL, 1, 1),
(107, 'EPLUBN1824', 'Éplu(bo5)18x24', 'Tấm', 46000, 1, NULL, 1, 1),
(108, 'EPLUBN2025', 'Éplu(bo5)20x25', 'Tấm', 56000, 1, NULL, 1, 1),
(109, 'EPLUBN2030', 'Éplu(bo5)20x30', 'Tấm', 60000, 1, NULL, 1, 1),
(110, 'EPLUBN2530', 'Éplu(bo5)25X30', 'Tấm', 76000, 1, NULL, 1, 1),
(111, 'EPLUBN2535', 'Éplu(bo5)25x35', 'Tấm', 80000, 1, NULL, 1, 1),
(112, 'EPLUBN3040', 'Éplu(bo5)30X40', 'Tấm', 100000, 1, NULL, 1, 1),
(113, 'EPLUBN3045', 'Éplu(bo5)30X45', 'Tấm', 100000, 1, NULL, 1, 1),
(114, 'EPLUBN3550', 'Éplu(bo5)35X50', 'Tấm', 134000, 1, NULL, 1, 1),
(115, 'EPLUBN4050', 'Éplu(bo5)40X50', 'Tấm', 134000, 1, NULL, 1, 1),
(116, 'EPLUBN4060', 'Éplu(bo5)40x60', 'Tấm', 160000, 1, NULL, 1, 1),
(117, 'EPLUBN5060', 'Éplu(bo5)50x60', 'Tấm', 200000, 1, NULL, 1, 1),
(118, 'EPLUBN5070', 'Éplu(bo5)50X70', 'Tấm', 220000, 1, NULL, 1, 1),
(119, 'EPLUBN5075', 'Éplu(bo5)50x75', 'Tấm', 220000, 1, NULL, 1, 1),
(120, 'EPLUBN6085', 'Éplu(bo5)60X85', 'Tấm', 270000, 1, NULL, 1, 1),
(121, 'EPLUBN6090', 'Éplu(bo5)60x90', 'Tấm', 290000, 1, NULL, 1, 1),
(122, 'EPLUKB1015', 'Éplu(kbo)10x15', 'Tấm', 14000, 1, NULL, 1, 1),
(123, 'EPLUKB1318', 'Éplu(kbo)13x18', 'Tấm', 20000, 1, NULL, 1, 1),
(124, 'EPLUKB1521', 'Éplu(kbo)15x21', 'Tấm', 26000, 1, NULL, 1, 1),
(125, 'EPLUKB1824', 'Éplu(kbo)18x24', 'Tấm', 30000, 1, NULL, 1, 1),
(126, 'EPLUKB2025', 'Éplu(kbo)20x25', 'Tấm', 36000, 1, NULL, 1, 1),
(127, 'EPLUKB2030', 'Éplu(kbo)20x30', 'Tấm', 40000, 1, NULL, 1, 1),
(128, 'EPLUKB2530', 'Éplu(kbo)25X30', 'Tấm', 44000, 1, NULL, 1, 1),
(129, 'EPLUKB2535', 'Éplu(kbo)25x35', 'Tấm', 44000, 1, NULL, 1, 1),
(130, 'EPLUKB3040', 'Éplu(kbo)30X40', 'Tấm', 60000, 1, NULL, 1, 1),
(131, 'EPLUKB3045', 'Éplu(kbo)30X45', 'Tấm', 66000, 1, NULL, 1, 1),
(132, 'EPLUKB3550', 'Éplu(kbo)35X50', 'Tấm', 94000, 1, NULL, 1, 1),
(133, 'EPLUKB4050', 'Éplu(kbo)40X50', 'Tấm', 94000, 1, NULL, 1, 1),
(134, 'EPLUKB4060', 'Éplu(kbo)40x60', 'Tấm', 116000, 1, NULL, 1, 1),
(135, 'EPLUKB5060', 'Éplu(kbo)50x60', 'Tấm', 140000, 1, NULL, 1, 1),
(136, 'EPLUKB5070', 'Éplu(kbo)50X70', 'Tấm', 160000, 1, NULL, 1, 1),
(137, 'EPLUKB5075', 'Éplu(kbo)50x75', 'Tấm', 170000, 1, NULL, 1, 1),
(138, 'EPLUKB6085', 'Éplu(kbo)60X85', 'Tấm', 190000, 1, NULL, 1, 1),
(139, 'EPLUKB6090', 'Éplu(kbo)60x90', 'Tấm', 200000, 1, NULL, 1, 1),
(140, 'KH3CK0912', 'Khung3ck9x12', 'Cái', 22000, 1, NULL, 1, 1),
(141, 'KH3CK1015', 'Khung3ck10x15', 'Cái', 24000, 1, NULL, 1, 1),
(142, 'KH3CK1318', 'Khung3ck13x18', 'Cái', 28000, 1, NULL, 1, 1),
(143, 'KH3CK1521', 'Khung3ck15x21', 'Cái', 30000, 1, NULL, 1, 1),
(144, 'KH3CK2025', 'Khung3ck20x25', 'Cái', 36000, 1, NULL, 1, 1),
(145, 'KH3CK2030', 'Khung3ck20x30', 'Cái', 38000, 1, NULL, 1, 1),
(146, 'KH3CK2535', 'Khung3ck25x35', 'Cái', 54000, 1, NULL, 1, 1),
(147, 'KH3CK3040', 'Khung3ck30x40', 'Cái', 64000, 1, NULL, 1, 1),
(148, 'KH3CK3045', 'Khung3ck30x45', 'Cái', 68000, 1, NULL, 1, 1),
(149, 'KH3CK3550', 'Khung3ck35x50', 'Cái', 78000, 1, NULL, 1, 1),
(150, 'KH5CK2025', 'Khung5ck20x25', 'Cái', 60000, 1, NULL, 1, 1),
(151, 'KH5CK2030', 'Khung5ck20x30', 'Cái', 62000, 1, NULL, 1, 1),
(152, 'KH5CK2535', 'Khung5ck25x35', 'Cái', 78000, 1, NULL, 1, 1),
(153, 'KH5CK3040', 'Khung5ck30x40', 'Cái', 90000, 1, NULL, 1, 1),
(154, 'KH5CK3045', 'Khung5ck30x45', 'Cái', 96000, 1, NULL, 1, 1),
(155, 'KH5CK3550', 'Khung5ck35x50', 'Cái', 110000, 1, NULL, 1, 1),
(156, 'KH5CK4060', 'Khung5ck40x60', 'Cái', 134000, 1, NULL, 1, 1),
(157, 'KH5CK5075', 'Khung5ck50x75', 'Cái', 172000, 1, NULL, 1, 1),
(158, 'KH5CK6090', 'Khung5ck60x90', 'Cái', 216000, 1, NULL, 1, 1),
(159, 'KH5KK2025', 'Khung5kk20x25', 'Cái', 58000, 1, NULL, 1, 1),
(160, 'KH5KK2030', 'Khung5kk20x30', 'Cái', 62000, 1, NULL, 1, 1),
(161, 'KH5KK2535', 'Khung5kk25x35', 'Cái', 68000, 1, NULL, 1, 1),
(162, 'KH5KK3040', 'Khung5kk30x40', 'Cái', 74000, 1, NULL, 1, 1),
(163, 'KH5KK3045', 'Khung5kk30x45', 'Cái', 78000, 1, NULL, 1, 1),
(164, 'KH5KK3550', 'Khung5kk35x50', 'Cái', 84000, 1, NULL, 1, 1),
(165, 'KH5KK4060', 'Khung5kk40x60', 'Cái', 92000, 1, NULL, 1, 1),
(166, 'KH5KK5075', 'Khung5kk50x75', 'Cái', 108000, 1, NULL, 1, 1),
(167, 'KH5KK6090', 'Khung5kk60x90', 'Cái', 124000, 1, NULL, 1, 1),
(168, 'KH7CK2025', 'Khung7ck20x25', 'Cái', 92000, 1, NULL, 1, 1),
(169, 'KH7CK2030', 'Khung7ck20x30', 'Cái', 98000, 1, NULL, 1, 1),
(170, 'KH7CK2535', 'Khung7ck25x35', 'Cái', 112000, 1, NULL, 1, 1),
(171, 'KH7CK3040', 'Khung7ck30x40', 'Cái', 126000, 1, NULL, 1, 1),
(172, 'KH7CK3045', 'Khung7ck30x45', 'Cái', 134000, 1, NULL, 1, 1),
(173, 'KH7CK3550', 'Khung7ck35x50', 'Cái', 150000, 1, NULL, 1, 1),
(174, 'KH7CK4060', 'Khung7ck40x60', 'Cái', 170000, 1, NULL, 1, 1),
(175, 'KH7CK5075', 'Khung7ck50x75', 'Cái', 216000, 1, NULL, 1, 1),
(176, 'KH7CK6090', 'Khung7ck60x90', 'Cái', 266000, 1, NULL, 1, 1),
(177, 'KH7CK70110', 'Khung7ck70x110', 'Cái', 332000, 1, NULL, 1, 1),
(178, 'KH7KK2025', 'Khung7kk20x25', 'Cái', 84000, 1, NULL, 1, 1),
(179, 'KH7KK2030', 'Khung7kk20x30', 'Cái', 88000, 1, NULL, 1, 1),
(180, 'KH7KK2535', 'Khung7kk25x35', 'Cái', 98000, 1, NULL, 1, 1),
(181, 'KH7KK3040', 'Khung7kk30x40', 'Cái', 106000, 1, NULL, 1, 1),
(182, 'KH7KK3045', 'Khung7kk30x45', 'Cái', 110000, 1, NULL, 1, 1),
(183, 'KH7KK3550', 'Khung7kk35x50', 'Cái', 120000, 1, NULL, 1, 1),
(184, 'KH7KK4060', 'Khung7kk40x60', 'Cái', 130000, 1, NULL, 1, 1),
(185, 'KH7KK5075', 'Khung7kk50x75', 'Cái', 152000, 1, NULL, 1, 1),
(186, 'KH7KK6090', 'Khung7kk60x90', 'Cái', 174000, 1, NULL, 1, 1),
(187, 'KH7KK70110', 'Khung7kk70x110', 'Cái', 200000, 1, NULL, 1, 1),
(188, 'KH8CK2025', 'Khung8ck20x25', 'Cái', 100000, 1, NULL, 1, 1),
(189, 'KH8CK2030', 'Khung8ck20x30', 'Cái', 108000, 1, NULL, 1, 1),
(190, 'KH8CK2535', 'Khung8ck25x35', 'Cái', 122000, 1, NULL, 1, 1),
(191, 'KH8CK3040', 'Khung8ck30x40', 'Cái', 138000, 1, NULL, 1, 1),
(192, 'KH8CK3045', 'Khung8ck30x45', 'Cái', 148000, 1, NULL, 1, 1),
(193, 'KH8CK3550', 'Khung8ck35x50', 'Cái', 164000, 1, NULL, 1, 1),
(194, 'KH8CK4060', 'Khung8ck40x60', 'Cái', 198000, 1, NULL, 1, 1),
(195, 'KH8CK5075', 'Khung8ck50x75', 'Cái', 252000, 1, NULL, 1, 1),
(196, 'KH8CK6090', 'Khung8ck60x90', 'Cái', 310000, 1, NULL, 1, 1),
(197, 'KH8CK70110', 'Khung8ck70x110', 'Cái', 384000, 1, NULL, 1, 1),
(198, 'KH8KK2025', 'Khung8kk20x25', 'Cái', 98000, 1, NULL, 1, 1),
(199, 'KH8KK2030', 'Khung8kk20x30', 'Cái', 102000, 1, NULL, 1, 1),
(200, 'KH8KK2535', 'Khung8kk25x35', 'Cái', 116000, 1, NULL, 1, 1),
(201, 'KH8KK3040', 'Khung8kk30x40', 'Cái', 126000, 1, NULL, 1, 1),
(202, 'KH8KK3045', 'Khung8kk30x45', 'Cái', 132000, 1, NULL, 1, 1),
(203, 'KH8KK3550', 'Khung8kk35x50', 'Cái', 144000, 1, NULL, 1, 1),
(204, 'KH8KK4060', 'Khung8kk40x60', 'Cái', 158000, 1, NULL, 1, 1),
(205, 'KH8KK5075', 'Khung8kk50x75', 'Cái', 188000, 1, NULL, 1, 1),
(206, 'KH8KK6090', 'Khung8kk60x90', 'Cái', 216000, 1, NULL, 1, 1),
(207, 'KH8KK70110', 'Khung8kk70x110', 'Cái', 252000, 1, NULL, 1, 1),
(208, 'KH9CK6090', 'Khung9ck60x90', 'Cái', 380000, 1, NULL, 1, 1),
(209, 'KH9CK70110', 'Khung9ck70x110', 'Cái', 464000, 1, NULL, 1, 1),
(210, 'KH9KK6090', 'Khung9kk60x90', 'Cái', 286000, 1, NULL, 1, 1),
(211, 'KH9KK70110', 'Khung9kk70x110', 'Cái', 332000, 1, NULL, 1, 1),
(212, 'KHTHO2025', 'Khungth.20x25', 'Cái', 64000, 1, NULL, 1, 1),
(213, 'KHTHO2030', 'Khungth.20x30', 'Cái', 70000, 1, NULL, 1, 1),
(214, 'KM2030', 'Khuyến mãi 20x30', 'Tấm', 0, 1, NULL, 1, 1),
(215, 'KM2535', 'Khuyến mãi 25x35', 'Tấm', 0, 1, NULL, 1, 1),
(216, 'KPH0609', 'Phục hồi 6x9', 'Tấm', 45000, 1, NULL, 1, 1),
(217, 'KPH0912', 'Phục hồi 9x12', 'Tấm', 62000, 1, NULL, 1, 1),
(218, 'KPH1015', 'Phục hồi 10x15', 'Tấm', 65000, 1, NULL, 1, 1),
(219, 'KPH1215', 'Phục hồi 12x15', 'Tấm', 75000, 1, NULL, 1, 1),
(220, 'KPH1318', 'Phục hồi 13x18', 'Tấm', 93000, 1, NULL, 1, 1),
(221, 'KPH1521', 'Phục hồi 15x21', 'Tấm', 99000, 1, NULL, 1, 1),
(222, 'KPH2025', 'Phục hồi 20x25', 'Tấm', 99000, 1, NULL, 1, 1),
(223, 'KPH2030', 'Phục hồi 20x30', 'Tấm', 102000, 1, NULL, 1, 1),
(224, 'KPH2530', 'Phục hồi 25x30', 'Tấm', 111000, 1, NULL, 1, 1),
(225, 'KPH2535', 'Phục hồi 25x35', 'Tấm', 114000, 1, NULL, 1, 1),
(226, 'KPH2538', 'Phục hồi 25x38', 'Tấm', 114000, 1, NULL, 1, 1),
(227, 'KPH3040', 'Phục hồi 30x40', 'Tấm', 132000, 1, NULL, 1, 1),
(228, 'KPH3045', 'Phục hồi 30x45', 'Tấm', 132000, 1, NULL, 1, 1),
(229, 'KPH3050', 'Phục hồi 30x50', 'Tấm', 138000, 1, NULL, 1, 1),
(230, 'KPH3545', 'Phục hồi 35x45', 'Tấm', 144000, 1, NULL, 1, 1),
(231, 'KPH3550', 'Phục hồi 35x50', 'Tấm', 150000, 1, NULL, 1, 1),
(232, 'KPH4040', 'Phục hồi 40x40', 'Tấm', 150000, 1, NULL, 1, 1),
(233, 'KPH4050', 'Phục hồi 40x50', 'Tấm', 150000, 1, NULL, 1, 1),
(234, 'KPH4060', 'Phục hồi 40x60', 'Tấm', 150000, 1, NULL, 1, 1),
(235, 'KPH5050', 'Phục hồi 50x50', 'Tấm', 162000, 1, NULL, 1, 1),
(236, 'KPH5060', 'Phục hồi 50x60', 'Tấm', 162000, 1, NULL, 1, 1),
(237, 'KPH5070', 'Phục hồi 50x70', 'Tấm', 174000, 1, NULL, 1, 1),
(238, 'KPH5075', 'Phục hồi 50x75', 'Tấm', 174000, 1, NULL, 1, 1),
(239, 'KPH6080', 'Phục hồi 60x80', 'Tấm', 180000, 1, NULL, 1, 1),
(240, 'KPH6085', 'Phục hồi 60x85', 'Tấm', 180000, 1, NULL, 1, 1),
(241, 'KPH6090', 'Phục hồi 60x90', 'Tấm', 180000, 1, NULL, 1, 1),
(242, 'KPH70100', 'Phục hồi 70x100', 'Tấm', 195000, 1, NULL, 1, 1),
(243, 'KPH70110', 'Phục hồi 70x110', 'Tấm', 195000, 1, NULL, 1, 1),
(244, 'KPH70115', 'Phục hồi 70x115', 'Tấm', 195000, 1, NULL, 1, 1),
(245, 'KPH76110', 'Phục hồi 76x110', 'Tấm', 210000, 1, NULL, 1, 1),
(246, 'KPH76115', 'Phục hồi 76x115', 'Tấm', 210000, 1, NULL, 1, 1),
(247, 'KTP0912', 'Th.phông 9x12', 'Tấm', 6000, 1, NULL, 1, 1),
(248, 'KTP1015', 'Th.phông 10x15', 'Tấm', 11, 1, NULL, 1, 1),
(249, 'KTP1215', 'Th.phông 12x15', 'Tấm', 12000, 1, NULL, 1, 1),
(250, 'KTP1318', 'Th.phông 13x18', 'Tấm', 15000, 1, NULL, 1, 1),
(251, 'KTP1521', 'Th.phông 15x21', 'Tấm', 18000, 1, NULL, 1, 1),
(252, 'KTP2025', 'Th.phông 20x25', 'Tấm', 36000, 1, NULL, 1, 1),
(253, 'KTP2030', 'Th.phông 20x30', 'Tấm', 39000, 1, NULL, 1, 1),
(254, 'KTP2530', 'Th.phông 25x30', 'Tấm', 48000, 1, NULL, 1, 1),
(255, 'KTP2535', 'Th.phông 25x35', 'Tấm', 54000, 1, NULL, 1, 1),
(256, 'KTP2538', 'Th.phông 25x38', 'Tấm', 54000, 1, NULL, 1, 1),
(257, 'KTP3040', 'Th.phông 30x40', 'Tấm', 60000, 1, NULL, 1, 1),
(258, 'KTP3045', 'Th.phông 30x45', 'Tấm', 60000, 1, NULL, 1, 1),
(259, 'KTP3050', 'Th.phông 30x50', 'Tấm', 75000, 1, NULL, 1, 1),
(260, 'KTP3545', 'Th.phông 35x45', 'Tấm', 81000, 1, NULL, 1, 1),
(261, 'KTP3550', 'Th.phông 35x50', 'Tấm', 90000, 1, NULL, 1, 1),
(262, 'KTP4040', 'Th.phông 40x40', 'Tấm', 90000, 1, NULL, 1, 1),
(263, 'KTP4050', 'Th.phông 40x50', 'Tấm', 90000, 1, NULL, 1, 1),
(264, 'KTP4060', 'Th.phông 40x60', 'Tấm', 90000, 1, NULL, 1, 1),
(265, 'KTP5050', 'Th.phông 50x50', 'Tấm', 105000, 1, NULL, 1, 1),
(266, 'KTP5060', 'Th.phông 50x60', 'Tấm', 105000, 1, NULL, 1, 1),
(267, 'KTP5070', 'Th.phông 50x70', 'Tấm', 111000, 1, NULL, 1, 1),
(268, 'KTP5075', 'Th.phông 50x75', 'Tấm', 111000, 1, NULL, 1, 1),
(269, 'KTP6080', 'Th.phông 60x80', 'Tấm', 150000, 1, NULL, 1, 1),
(270, 'KTP6085', 'Th.phông 60x85', 'Tấm', 150000, 1, NULL, 1, 1),
(271, 'KTP6090', 'Th.phông 60x90', 'Tấm', 150000, 1, NULL, 1, 1),
(272, 'KTP70100', 'Th.phông70x100', 'Tấm', 165000, 1, NULL, 1, 1),
(273, 'KTP70110', 'Th.phông70x110', 'Tấm', 165000, 1, NULL, 1, 1),
(274, 'KTP70115', 'Th.phông70x115', 'Tấm', 165000, 1, NULL, 1, 1),
(275, 'KTP76110', 'Th.phông76x110', 'Tấm', 195000, 1, NULL, 1, 1),
(276, 'KTP76115', 'Th.phông76x115', 'Tấm', 195000, 1, NULL, 1, 1),
(277, 'KXH0609', 'Xu.t h.nh 6x9', 'Tấm', 1000, 1, NULL, 1, 1),
(278, 'KXH0912', 'Xu.t h.nh 9x12', 'Tấm', 1, 1, NULL, 1, 1),
(279, 'KXH1015', 'Xu.t h.nh 10x15', 'Tấm', 2000, 1, NULL, 1, 1),
(280, 'KXH1215', 'Xu.t h.nh 12x15', 'Tấm', 2, 1, NULL, 1, 1),
(281, 'KXH1318', 'Xu.t h.nh 13x18', 'Tấm', 3000, 1, NULL, 1, 1),
(282, 'KXH1521', 'Xu.t h.nh 15x21', 'Tấm', 8000, 1, NULL, 1, 1),
(283, 'KXH2025', 'Xu.t h.nh 20x25', 'Tấm', 20000, 1, NULL, 1, 1),
(284, 'KXH2030', 'Xu.t h.nh 20x30', 'Tấm', 25000, 1, NULL, 1, 1),
(285, 'KXH2530', 'Xu.t h.nh 25x30', 'Tấm', 30000, 1, NULL, 1, 1),
(286, 'KXH2535', 'Xu.t h.nh 25x35', 'Tấm', 35000, 1, NULL, 1, 1),
(287, 'KXH2538', 'Xu.t h.nh 25x38', 'Tấm', 40000, 1, NULL, 1, 1),
(288, 'KXH3040', 'Xu.t h.nh 30x40', 'Tấm', 50000, 1, NULL, 1, 1),
(289, 'KXH3045', 'Xu.t h.nh 30x45', 'Tấm', 55000, 1, NULL, 1, 1),
(290, 'KXH3050', 'Xu.t h.nh 30x50', 'Tấm', 57000, 1, NULL, 1, 1),
(291, 'KXH3545', 'Xu.t h.nh 35x45', 'Tấm', 59000, 1, NULL, 1, 1),
(292, 'KXH3550', 'Xu.t h.nh 35x50', 'Tấm', 60000, 1, NULL, 1, 1),
(293, 'KXH4040', 'Xu.t h.nh 40x40', 'Tấm', 65000, 1, NULL, 1, 1),
(294, 'KXH4050', 'Xu.t h.nh 40x50', 'Tấm', 80000, 1, NULL, 1, 1),
(295, 'KXH4060', 'Xu.t h.nh 40x60', 'Tấm', 100000, 1, NULL, 1, 1),
(296, 'KXH5050', 'Xu.t h.nh 50x50', 'Tấm', 110000, 1, NULL, 1, 1),
(297, 'KXH5060', 'Xu.t h.nh 50x60', 'Tấm', 120000, 1, NULL, 1, 1),
(298, 'KXH5070', 'Xu.t h.nh 50x70', 'Tấm', 150000, 1, NULL, 1, 1),
(299, 'KXH5075', 'Xu.t h.nh 50x75', 'Tấm', 160000, 1, NULL, 1, 1),
(300, 'KXH6080', 'Xu.t h.nh 60x80', 'Tấm', 175000, 1, NULL, 1, 1),
(301, 'KXH6085', 'Xu.t h.nh 60x85', 'Tấm', 185000, 1, NULL, 1, 1),
(302, 'KXH6090', 'Xu.t h.nh 60x90', 'Tấm', 200000, 1, NULL, 1, 1),
(303, 'KXH70100', 'Xu.t h.nh70x100', 'Tấm', 280000, 1, NULL, 1, 1),
(304, 'KXH70110', 'Xu.t h.nh70x110', 'Tấm', 300000, 1, NULL, 1, 1),
(305, 'KXH70115', 'Xu.t h.nh70x115', 'Tấm', 310000, 1, NULL, 1, 1),
(306, 'KXH76110', 'Xu.t h.nh76x110', 'Tấm', 320000, 1, NULL, 1, 1),
(307, 'KXH76115', 'Xu.t h.nh76x115', 'Tấm', 330000, 1, NULL, 1, 1),
(308, 'KXL0609', 'X. l. 6x9', 'Tấm', 6000, 1, NULL, 1, 1),
(309, 'KXL0912', 'X. l. 9x12', 'Tấm', 6000, 1, NULL, 1, 1),
(310, 'KXL1015', 'X. l. 10x15', 'Tấm', 8, 1, NULL, 1, 1),
(311, 'KXL1215', 'X. l. 12x15', 'Tấm', 9000, 1, NULL, 1, 1),
(312, 'KXL1318', 'X. l. 13x18', 'Tấm', 12000, 1, NULL, 1, 1),
(313, 'KXL1521', 'X. l. 15x21', 'Tấm', 15000, 1, NULL, 1, 1),
(314, 'KXL2025', 'X. l. 20x25', 'Tấm', 27000, 1, NULL, 1, 1),
(315, 'KXL2030', 'X. l. 20x30', 'Tấm', 30000, 1, NULL, 1, 1),
(316, 'KXL2530', 'X. l. 25x30', 'Tấm', 36000, 1, NULL, 1, 1),
(317, 'KXL2535', 'X. l. 25x35', 'Tấm', 36000, 1, NULL, 1, 1),
(318, 'KXL2538', 'X. l. 25x38', 'Tấm', 39000, 1, NULL, 1, 1),
(319, 'KXL3040', 'X. l. 30x40', 'Tấm', 42000, 1, NULL, 1, 1),
(320, 'KXL3045', 'X. l. 30x45', 'Tấm', 42000, 1, NULL, 1, 1),
(321, 'KXL3050', 'X. l. 30x50', 'Tấm', 42000, 1, NULL, 1, 1),
(322, 'KXL3545', 'X. l. 35x45', 'Tấm', 54000, 1, NULL, 1, 1),
(323, 'KXL3550', 'X. l. 35x50', 'Tấm', 60000, 1, NULL, 1, 1),
(324, 'KXL4040', 'X. l. 40x40', 'Tấm', 60000, 1, NULL, 1, 1),
(325, 'KXL4050', 'X. l. 40x50', 'Tấm', 60000, 1, NULL, 1, 1),
(326, 'KXL4060', 'X. l. 40x60', 'Tấm', 60000, 1, NULL, 1, 1),
(327, 'KXL5050', 'X. l. 50x50', 'Tấm', 66000, 1, NULL, 1, 1),
(328, 'KXL5060', 'X. l. 50x60', 'Tấm', 66000, 1, NULL, 1, 1),
(329, 'KXL5070', 'X. l. 50x70', 'Tấm', 75000, 1, NULL, 1, 1),
(330, 'KXL5075', 'X. l. 50x75', 'Tấm', 75000, 1, NULL, 1, 1),
(331, 'KXL6080', 'X. l. 60x80', 'Tấm', 105000, 1, NULL, 1, 1),
(332, 'KXL6085', 'X. l. 60x85', 'Tấm', 105000, 1, NULL, 1, 1),
(333, 'KXL6090', 'X. l. 60x90', 'Tấm', 105000, 1, NULL, 1, 1),
(334, 'KXL70100', 'X. l. 70x100', 'Tấm', 120000, 1, NULL, 1, 1),
(335, 'KXL70110', 'X. l. 70x110', 'Tấm', 120000, 1, NULL, 1, 1),
(336, 'KXL70115', 'X. l. 70x115', 'Tấm', 120000, 1, NULL, 1, 1),
(337, 'KXL76110', 'X. l. 76x110', 'Tấm', 135000, 1, NULL, 1, 1),
(338, 'KXL76115', 'X. l. 76x115', 'Tấm', 135000, 1, NULL, 1, 1),
(339, 'RUATHEM', 'R.a th. thêm', 'H.nh', 1500, 1, NULL, 1, 1),
(340, 'SAO100', 'Sáo g. 100cm', 'C.p', 70000, 1, NULL, 1, 1),
(341, 'SAO30', 'Sáo g. 30cm', 'C.p', 30000, 1, NULL, 1, 1),
(342, 'SAO40', 'Sáo g. 40cm', 'C.p', 34000, 1, NULL, 1, 1),
(343, 'SAO50', 'Sáo g. 50cm', 'C.p', 38000, 1, NULL, 1, 1),
(344, 'SAO60', 'Sáo g. 60cm', 'C.p', 42000, 1, NULL, 1, 1),
(345, 'SAO70', 'Sáo g. 70cm', 'C.p', 50000, 1, NULL, 1, 1),
(346, 'SAO80', 'Sáo g. 80cm', 'C.p', 60000, 1, NULL, 1, 1),
(347, 'SCANFILE', 'Scan l.y file', 'File', 5000, 1, NULL, 1, 1),
(348, 'SCANTHE', 'Scan+in th.', 'Tấm', 25000, 1, NULL, 1, 1),
(349, 'THAYAO', 'Thay áo th.', 'Ki.u', 5000, 1, NULL, 1, 1),
(350, 'THEGAP', 'Th. g.p', 'Ki.u', 30000, 1, NULL, 1, 1),
(351, 'THETHU', 'Th. thý.ng', 'Kiểu', 25000, 1, '', 1, 1),
(352, 'TPH0912', 'Phục hồi 9x12', 'Tấm', 20, 1, NULL, 1, 1),
(353, 'TPH1015', 'Phục hồi 10x15', 'Tấm', 21000, 1, NULL, 1, 1),
(354, 'TPH1215', 'Phục hồi 12x15', 'Tấm', 25000, 1, NULL, 1, 1),
(355, 'TPH1318', 'Phục hồi 13x18', 'Tấm', 31000, 1, NULL, 1, 1),
(356, 'TPH1521', 'Phục hồi 15x21', 'Tấm', 33000, 1, NULL, 1, 1),
(357, 'TPH2025', 'Phục hồi 20x25', 'Tấm', 33000, 1, NULL, 1, 1),
(358, 'TPH2030', 'Phục hồi 20x30', 'Tấm', 34000, 1, NULL, 1, 1),
(359, 'TPH2530', 'Phục hồi 25x30', 'Tấm', 37000, 1, NULL, 1, 1),
(360, 'TPH2535', 'Phục hồi 25x35', 'Tấm', 38000, 1, NULL, 1, 1),
(361, 'TPH2538', 'Phục hồi 25x38', 'Tấm', 38000, 1, NULL, 1, 1),
(362, 'TPH3040', 'Phục hồi 30x40', 'Tấm', 44000, 1, NULL, 1, 1),
(363, 'TPH3045', 'Phục hồi 30x45', 'Tấm', 44000, 1, NULL, 1, 1),
(364, 'TPH3050', 'Phục hồi 30x50', 'Tấm', 46000, 1, NULL, 1, 1),
(365, 'TPH3545', 'Phục hồi 35x45', 'Tấm', 48000, 1, NULL, 1, 1),
(366, 'TPH3550', 'Phục hồi 35x50', 'Tấm', 50000, 1, NULL, 1, 1),
(367, 'TPH4040', 'Phục hồi 40x40', 'Tấm', 50000, 1, NULL, 1, 1),
(368, 'TPH4050', 'Phục hồi 40x50', 'Tấm', 50000, 1, NULL, 1, 1),
(369, 'TPH4060', 'Phục hồi 40x60', 'Tấm', 50000, 1, NULL, 1, 1),
(370, 'TPH5050', 'Phục hồi 50x50', 'Tấm', 54000, 1, NULL, 1, 1),
(371, 'TPH5060', 'Phục hồi 50x60', 'Tấm', 54000, 1, NULL, 1, 1),
(372, 'TPH5070', 'Phục hồi 50x70', 'Tấm', 58000, 1, NULL, 1, 1),
(373, 'TPH5075', 'Phục hồi 50x75', 'Tấm', 58000, 1, NULL, 1, 1),
(374, 'TPH6080', 'Phục hồi 60x80', 'Tấm', 60000, 1, NULL, 1, 1),
(375, 'TPH6085', 'Phục hồi 60x85', 'Tấm', 60000, 1, NULL, 1, 1),
(376, 'TPH6090', 'Phục hồi 60x90', 'Tấm', 60000, 1, NULL, 1, 1),
(377, 'TPH70100', 'Phục hồi 70x100', 'Tấm', 65000, 1, NULL, 1, 1),
(378, 'TPH70110', 'Phục hồi 70x110', 'Tấm', 65000, 1, NULL, 1, 1),
(379, 'TPH70115', 'Phục hồi 70x115', 'Tấm', 65000, 1, NULL, 1, 1),
(380, 'TPH76110', 'Phục hồi 76x110', 'Tấm', 70000, 1, NULL, 1, 1),
(381, 'TPH76115', 'Phục hồi 76x115', 'Tấm', 70000, 1, NULL, 1, 1),
(382, 'TTHEIN', 'In 01 th. (4Tấm)', 'Th.', 1500, 1, NULL, 1, 1),
(383, 'TTHEXLY', 'Scan & x.lý thẻ 4', 'Th.', 3000, 1, NULL, 1, 1),
(384, 'TTP0912', 'Th.phông 9x12', 'Tấm', 2000, 1, NULL, 1, 1),
(385, 'TTP1015', 'Th.phông 10x15', 'Tấm', 3800, 1, NULL, 1, 1),
(386, 'TTP1215', 'Th.phông 12x15', 'Tấm', 4000, 1, NULL, 1, 1),
(387, 'TTP1318', 'Th.phông 13x18', 'Tấm', 5000, 1, NULL, 1, 1),
(388, 'TTP1521', 'Th.phông 15x21', 'Tấm', 6000, 1, NULL, 1, 1),
(389, 'TTP2025', 'Th.phông 20x25', 'Tấm', 12000, 1, NULL, 1, 1),
(390, 'TTP2030', 'Th.phông 20x30', 'Tấm', 13000, 1, NULL, 1, 1),
(391, 'TTP2530', 'Th.phông 25x30', 'Tấm', 16000, 1, NULL, 1, 1),
(392, 'TTP2535', 'Th.phông 25x35', 'Tấm', 18000, 1, NULL, 1, 1),
(393, 'TTP2538', 'Th.phông 25x38', 'Tấm', 18000, 1, NULL, 1, 1),
(394, 'TTP3040', 'Th.phông 30x40', 'Tấm', 20000, 1, NULL, 1, 1),
(395, 'TTP3045', 'Th.phông 30x45', 'Tấm', 20000, 1, NULL, 1, 1),
(396, 'TTP3050', 'Th.phông 30x50', 'Tấm', 25000, 1, NULL, 1, 1),
(397, 'TTP3545', 'Th.phông 35x45', 'Tấm', 27000, 1, NULL, 1, 1),
(398, 'TTP3550', 'Th.phông 35x50', 'Tấm', 30000, 1, NULL, 1, 1),
(399, 'TTP4040', 'Th.phông 40x40', 'Tấm', 30000, 1, NULL, 1, 1),
(400, 'TTP4050', 'Th.phông 40x50', 'Tấm', 30000, 1, NULL, 1, 1),
(401, 'TTP4060', 'Th.phông 40x60', 'Tấm', 30000, 1, NULL, 1, 1),
(402, 'TTP5050', 'Th.phông 50x50', 'Tấm', 35000, 1, NULL, 1, 1),
(403, 'TTP5060', 'Th.phông 50x60', 'Tấm', 35000, 1, NULL, 1, 1),
(404, 'TTP5070', 'Th.phông 50x70', 'Tấm', 37000, 1, NULL, 1, 1),
(405, 'TTP5075', 'Th.phông 50x75', 'Tấm', 37000, 1, NULL, 1, 1),
(406, 'TTP6080', 'Th.phông 60x80', 'Tấm', 50000, 1, NULL, 1, 1),
(407, 'TTP6085', 'Th.phông 60x85', 'Tấm', 50000, 1, NULL, 1, 1),
(408, 'TTP6090', 'Th.phông 60x90', 'Tấm', 50000, 1, NULL, 1, 1),
(409, 'TTP70100', 'Th.phông70x100', 'Tấm', 55000, 1, NULL, 1, 1),
(410, 'TTP70110', 'Th.phông70x110', 'Tấm', 55000, 1, NULL, 1, 1),
(411, 'TTP70115', 'Th.phông70x115', 'Tấm', 55000, 1, NULL, 1, 1),
(412, 'TTP76110', 'Th.phông76x110', 'Tấm', 65000, 1, NULL, 1, 1),
(413, 'TTP76115', 'Th.phông76x115', 'Tấm', 65000, 1, NULL, 1, 1),
(414, 'TXH0912', 'Xuất hình 9x12', 'Tấm', 1000, 1, NULL, 1, 1),
(415, 'TXH1015', 'Xuất hình 10x15', 'Tấm', 1200, 1, NULL, 1, 1),
(416, 'TXH1215', 'Xuất hình 12x15', 'Tấm', 1350, 1, NULL, 1, 1),
(417, 'TXH1318', 'Xuất hình 13x18', 'Tấm', 2000, 1, NULL, 1, 1),
(418, 'TXH1521', 'Xuất hình 15x21', 'Tấm', 2600, 1, NULL, 1, 1),
(419, 'TXH2025', 'Xuất hình 20x25', 'Tấm', 5200, 1, NULL, 1, 1),
(420, 'TXH2030', 'Xuất hình 20x30', 'Tấm', 6000, 1, NULL, 1, 1),
(421, 'TXH2530', 'Xuất hình 25x30', 'Tấm', 7000, 1, NULL, 1, 1),
(422, 'TXH2535', 'Xuất hình 25x35', 'Tấm', 8500, 1, NULL, 1, 1),
(423, 'TXH2538', 'Xuất hình 25x38', 'Tấm', 9500, 1, NULL, 1, 1),
(424, 'TXH3040', 'Xuất hình 30x40', 'Tấm', 16000, 1, NULL, 1, 1),
(425, 'TXH3045', 'Xuất hình 30x45', 'Tấm', 17500, 1, NULL, 1, 1),
(426, 'TXH3050', 'Xuất hình 30x50', 'Tấm', 20000, 1, NULL, 1, 1),
(427, 'TXH3545', 'Xuất hình 35x45', 'Tấm', 24000, 1, NULL, 1, 1),
(428, 'TXH3550', 'Xuất hình 35x50', 'Tấm', 24000, 1, NULL, 1, 1),
(429, 'TXH4040', 'Xuất hình 40x40', 'Tấm', 28000, 1, NULL, 1, 1),
(430, 'TXH4050', 'Xuất hình 40x50', 'Tấm', 29000, 1, NULL, 1, 1),
(431, 'TXH4060', 'Xuất hình 40x60', 'Tấm', 32000, 1, NULL, 1, 1),
(432, 'TXH5050', 'Xuất hình 50x50', 'Tấm', 33000, 1, NULL, 1, 1),
(433, 'TXH5060', 'Xuất hình 50x60', 'Tấm', 35000, 1, NULL, 1, 1),
(434, 'TXH5070', 'Xuất hình 50x70', 'Tấm', 42000, 1, NULL, 1, 1),
(435, 'TXH5075', 'Xuất hình 50x75', 'Tấm', 45000, 1, NULL, 1, 1),
(436, 'TXH6080', 'Xuất hình 60x80', 'Tấm', 60000, 1, NULL, 1, 1),
(437, 'TXH6085', 'Xuất hình 60x85', 'Tấm', 65000, 1, NULL, 1, 1),
(438, 'TXH6090', 'Xuất hình 60x90', 'Tấm', 69000, 1, NULL, 1, 1),
(439, 'TXH70100', 'Xuất hình 70x100', 'Tấm', 100000, 1, NULL, 1, 1),
(440, 'TXH70110', 'Xuất hình 70x110', 'Tấm', 105000, 1, NULL, 1, 1),
(441, 'TXH70115', 'Xuất hình 70x115', 'Tấm', 110000, 1, NULL, 1, 1),
(442, 'TXH76110', 'Xuất hình 76x110', 'Tấm', 105000, 1, NULL, 1, 1),
(443, 'TXH76115', 'Xuất hình 76x115', 'Tấm', 110000, 1, NULL, 1, 1),
(444, 'TXL0912', 'Xử lý 9x12', 'Tấm', 2000, 1, NULL, 1, 1),
(445, 'TXL1015', 'Xử lý 10x15', 'Tấm', 2, 1, NULL, 1, 1),
(446, 'TXL1215', 'Xử lý 12x15', 'Tấm', 3000, 1, NULL, 1, 1),
(447, 'TXL1318', 'Xử lý 13x18', 'Tấm', 4000, 1, NULL, 1, 1),
(448, 'TXL1521', 'Xử lý 15x21', 'Tấm', 5000, 1, NULL, 1, 1),
(449, 'TXL2025', 'Xử lý 20x25', 'Tấm', 9000, 1, NULL, 1, 1),
(450, 'TXL2030', 'Xử lý 20x30', 'Tấm', 10000, 1, NULL, 1, 1),
(451, 'TXL2530', 'Xử lý 25x30', 'Tấm', 13000, 1, NULL, 1, 1),
(452, 'TXL2535', 'Xử lý 25x35', 'Tấm', 12000, 1, NULL, 1, 1),
(453, 'TXL2538', 'Xử lý 25x38', 'Tấm', 12000, 1, NULL, 1, 1),
(454, 'TXL3040', 'Xử lý 30x40', 'Tấm', 14000, 1, NULL, 1, 1),
(455, 'TXL3045', 'Xử lý 30x45', 'Tấm', 14000, 1, NULL, 1, 1),
(456, 'TXL3050', 'Xử lý 30x50', 'Tấm', 14000, 1, NULL, 1, 1),
(457, 'TXL3545', 'Xử lý 35x45', 'Tấm', 18000, 1, NULL, 1, 1),
(458, 'TXL3550', 'Xử lý 35x50', 'Tấm', 20000, 1, NULL, 1, 1),
(459, 'TXL4040', 'Xử lý 40x40', 'Tấm', 20000, 1, NULL, 1, 1),
(460, 'TXL4050', 'Xử lý 40x50', 'Tấm', 20000, 1, NULL, 1, 1),
(461, 'TXL4060', 'Xử lý 40x60', 'Tấm', 20000, 1, NULL, 1, 1),
(462, 'TXL5050', 'Xử lý 50x50', 'Tấm', 22000, 1, NULL, 1, 1),
(463, 'TXL5060', 'Xử lý 50x60', 'Tấm', 22000, 1, NULL, 1, 1),
(464, 'TXL5070', 'Xử lý 50x70', 'Tấm', 25000, 1, NULL, 1, 1),
(465, 'TXL5075', 'Xử lý 50x75', 'Tấm', 25000, 1, NULL, 1, 1),
(466, 'TXL6080', 'Xử lý 60x80', 'Tấm', 35000, 1, NULL, 1, 1),
(467, 'TXL6085', 'Xử lý 60x85', 'Tấm', 35000, 1, NULL, 1, 1),
(468, 'TXL6090', 'Xử lý 60x90', 'Tấm', 35000, 1, NULL, 1, 1),
(469, 'TXL70100', 'Xử lý 70x100', 'Tấm', 40000, 1, NULL, 1, 1),
(470, 'TXL70110', 'Xử lý 70x110', 'Tấm', 40000, 1, NULL, 1, 1),
(471, 'TXL70115', 'Xử lý 70x115', 'Tấm', 40000, 1, NULL, 1, 1),
(472, 'TXL76110', 'Xử lý 76x110', 'Tấm', 45000, 1, NULL, 1, 1),
(473, 'TXL76115', 'Xử lý 76x115', 'Tấm', 45000, 1, NULL, 1, 1),
(474, 'XULON(M2)', 'X.hình lớn (M2)', 'm2', 360000, 1, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `tinhthanh_id` int(10) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ho ten',
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mst` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=21 ;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `tinhthanh_id`, `title`, `address`, `picture`, `mst`, `email`, `phone`, `fax`, `datecreated`, `status`) VALUES
(17, 1, 'Trần Quốc Thụy', '42/22 Chiến Thắng, Phú Nhận, TP Hồ Chí Minh', '/products/avata.jpg', '523423523', 'tquocthuy@gmail.com', '0939 262 905', '', 1366732800, 1),
(18, 1, 'Anh Chi ', 'An Sương, Tân Bình, TP. Hồ Chí Minh', '/products/imagehere.png', '', 'info@thegioihinhanh.com', '093 77 87 77 30', '', 1381507200, 1),
(19, 1, 'Anh khoa', '', '/products/imagehere.png', '', '', '', '', 1381507200, 1),
(20, 1, 'Vi Quân', '', '/products/imagehere.png', '', '', '', '', 1381507200, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(10) DEFAULT '0',
  `soluong` int(10) DEFAULT '2',
  `soluongm` int(10) DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=42 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `phone`, `tax`, `soluong`, `soluongm`) VALUES
(1, 'THẾ GIỚI HÌNH ẢNH', '146 Lý Thường Kiệt- Hóc Môn ', '(08) 62.700.166', 0, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `sys_field`
--

DROP TABLE IF EXISTS `sys_field`;
CREATE TABLE IF NOT EXISTS `sys_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(10) DEFAULT NULL COMMENT 'Label=Bảng&fk_from=sys_table&fk_text=table_name&fk_value=id&isFilter=1',
  `field_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Tên field',
  `format_id` int(10) DEFAULT NULL,
  `Label` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Nhãn',
  `type_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_show` tinyint(3) DEFAULT '1' COMMENT 'Label=List&list=false',
  `insert_show` tinyint(3) DEFAULT '1' COMMENT 'Label=Add&list=false',
  `edit_show` tinyint(3) DEFAULT '1' COMMENT 'Label=Edit&list=false',
  `edit_width` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_height` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_default_orderby` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_footer_subtotal` int(3) DEFAULT '0',
  `list_sortable` int(3) DEFAULT '0',
  `fk_isMultiLevel` tinyint(3) DEFAULT '0' COMMENT 'Label=Khóa ngoại - Multilevel&list=false',
  `fk_from` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - From&list=false',
  `fk_where` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Where&list=false',
  `fk_orderby` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Order by&list=false',
  `fk_text` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Text&list=false',
  `fk_value` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Khóa ngoại - Value&list=false',
  `fk_count_sub_total` tinyint(4) DEFAULT '0',
  `isFilter` tinyint(3) DEFAULT '0' COMMENT 'Label=Chức năng lọc',
  `position` int(10) DEFAULT NULL,
  `plugin_function_id` int(10) DEFAULT NULL,
  `plufin_function_parameter` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `front_list_show` tinyint(4) DEFAULT '0',
  `front_insert_show` tinyint(4) DEFAULT '0',
  `front_edit_show` tinyint(4) DEFAULT '0',
  `front_detail_show` tinyint(4) DEFAULT '0',
  `check_require` tinyint(3) DEFAULT '0',
  `check_telephone` tinyint(4) DEFAULT '0',
  `check_url` tinyint(4) DEFAULT '0',
  `check_email` tinyint(4) DEFAULT '0',
  `check_digit` tinyint(4) DEFAULT '0',
  `check_range` tinyint(4) DEFAULT '0',
  `check_range_min` bigint(20) DEFAULT '0',
  `check_range_max` bigint(20) DEFAULT '0',
  `check_file_extension` tinyint(4) DEFAULT '0',
  `check_file_extension_list` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=535 ;

--
-- Dumping data for table `sys_field`
--

INSERT INTO `sys_field` (`id`, `table_id`, `field_name`, `format_id`, `Label`, `type_id`, `list_show`, `insert_show`, `edit_show`, `edit_width`, `edit_height`, `list_default_orderby`, `list_footer_subtotal`, `list_sortable`, `fk_isMultiLevel`, `fk_from`, `fk_where`, `fk_orderby`, `fk_text`, `fk_value`, `fk_count_sub_total`, `isFilter`, `position`, `plugin_function_id`, `plufin_function_parameter`, `front_list_show`, `front_insert_show`, `front_edit_show`, `front_detail_show`, `check_require`, `check_telephone`, `check_url`, `check_email`, `check_digit`, `check_range`, `check_range_min`, `check_range_max`, `check_file_extension`, `check_file_extension_list`) VALUES
(1, 53, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(2, 53, 'table_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_table', '', '', 'table_name', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(3, 53, 'field_name', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(4, 53, 'format_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_plugin_function', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(5, 53, 'Label', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(6, 53, 'list_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(7, 53, 'insert_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(8, 53, 'edit_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(9, 53, 'edit_width', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(10, 53, 'edit_height', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(11, 53, 'list_default_orderby', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_orderby', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(12, 53, 'list_footer_subtotal', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(13, 53, 'list_sortable', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(14, 53, 'fk_isMultiLevel', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(15, 53, 'fk_from', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_table', '', '', 'table_name', 'table_name', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(16, 53, 'fk_where', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(17, 53, 'fk_orderby', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(18, 53, 'fk_text', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(19, 53, 'fk_value', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(20, 53, 'fk_count_sub_total', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(21, 53, 'isFilter', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(22, 53, 'position', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(23, 53, 'plugin_function_id', 0, '', '', 1, 1, 1, '', '', '', 0, 0, 0, 'sys_plugin_function', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(24, 53, 'plufin_function_parameter', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(25, 53, 'front_list_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(26, 53, 'front_insert_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(27, 53, 'front_edit_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(28, 53, 'front_detail_show', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(29, 53, 'check_require', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(30, 53, 'check_telephone', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(31, 53, 'check_url', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(32, 53, 'check_email', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(33, 53, 'check_digit', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(34, 53, 'check_range', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(35, 53, 'check_range_min', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(36, 53, 'check_range_max', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(37, 53, 'check_file_extension', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(38, 53, 'check_file_extension_list', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(74, 54, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(75, 54, 'table_name', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(76, 54, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(77, 54, 'menu', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(78, 54, 'custom_link', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(79, 54, 'menu_group_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_menu_group', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(80, 54, 'show_order', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(81, 54, 'list_page_size', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(82, 54, 'list_footer', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(83, 54, 'position', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(84, 58, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(85, 58, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(86, 58, 'position', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(87, 58, 'status', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(88, 73, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(89, 73, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(95, 69, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(96, 69, 'title', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(97, 69, 'code', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(98, 70, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(99, 70, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(100, 70, 'function_name', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(101, 72, 'id', 0, '', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(102, 72, 'username', 0, 'Username', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(103, 72, 'password', 0, 'Password', '', 0, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(104, 72, 'fullname', 0, 'Họ và Tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(105, 72, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, '0'),
(106, 72, 'roleid', 0, 'Loại tài khoản', '', 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster_roles', '', '', 'title', 'id', 1, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(107, 72, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(108, 72, 'is_change_webmaster_permission', 0, 'Được phân quyền', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(109, 72, 'is_view_tabledesign', 0, 'Đựơc thiết kế bảng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(110, 72, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(111, 72, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(112, 74, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(113, 74, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(114, 74, 'code', 0, 'Code (php)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(170, 123, 'is_delete', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(169, 123, 'is_edit', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(168, 123, 'is_insert', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(167, 123, 'is_list', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(166, 123, 'table_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'sys_table', '', '', 'table_name', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(165, 123, 'webmaster_role_id', 0, '', NULL, 1, 1, 1, '', '', '', 0, 0, 0, 'webmaster_roles', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(164, 123, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(284, 58, 'picture', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(309, 53, 'type_id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(374, 73, 'position', 0, 'Position', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(460, 191, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(461, 191, 'title', 0, 'Tỉnh thành', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(462, 191, 'picture', 0, 'Hình ảnh', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(463, 191, 'position', 0, 'Ví trí', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(464, 191, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(465, 191, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(466, 191, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(491, 192, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(492, 192, 'tinhthanh_id', 0, 'Tỉnh thành', '', 1, 1, 1, '', '', '', 0, 0, 0, 'city_vietnam', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(493, 192, 'title', 0, 'Họ và Tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(494, 192, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(495, 192, 'picture', 0, 'Hình ảnh', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(496, 192, 'mst', 0, 'Mã số thuế', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(497, 192, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(498, 192, 'phone', 0, 'Điện thoại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(499, 192, 'fax', 0, 'Fax', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(500, 192, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(501, 192, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(502, 193, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(503, 193, 'title', 0, 'Tiêu đề', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(504, 193, 'description', 0, 'Mô tả', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(505, 193, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(506, 194, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(507, 194, 'item_code', 0, 'Mã mặt hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(508, 194, 'item_name', 0, 'Tên mặt hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(509, 194, 'unit', 0, 'Đơn vị', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(510, 194, 'price', 0, 'Giá', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(511, 194, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(513, 195, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(514, 195, 'tinhthanh_id', 0, 'Tỉnh thành', '', 1, 1, 1, '', '', '', 0, 0, 0, 'city_vietnam', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(515, 195, 'title', 0, 'Họ và tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(516, 195, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(517, 195, 'picture', 0, 'Hình đại diện', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(518, 195, 'mst', 0, 'Mã số thuể', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(519, 195, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(520, 195, 'phone', 0, 'Phone', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(521, 195, 'fax', 0, 'Fax', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(522, 195, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(523, 195, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(524, 197, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(525, 197, 'title', 0, 'Tên Doanh Nghiệp', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(526, 197, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(527, 197, 'phone', 0, 'Điện thoại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(528, 197, 'tax', 0, 'Thuế', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(529, 197, 'soluong', 0, 'Số lượng thông báo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(530, 197, 'soluongm', 0, 'Số lượng thông báo khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(531, 194, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(532, 194, 'quantity', 0, 'Số lượng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(533, 194, 'quantitym', 0, 'Số lượng mét', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(534, 194, 'is_dichvu', 0, 'Mặt hàng là dịch vụ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `sys_format`
--

DROP TABLE IF EXISTS `sys_format`;
CREATE TABLE IF NOT EXISTS `sys_format` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varbinary(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sys_format`
--

INSERT INTO `sys_format` (`id`, `title`, `code`) VALUES
(1, 'Tiền VNĐ', 'VND'),
(2, 'Phần trăm', 'PERCENT'),
(3, 'Tiền US', '$');

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu_group`
--

DROP TABLE IF EXISTS `sys_menu_group`;
CREATE TABLE IF NOT EXISTS `sys_menu_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=24 ;

--
-- Dumping data for table `sys_menu_group`
--

INSERT INTO `sys_menu_group` (`id`, `title`, `picture`, `position`, `status`) VALUES
(1, 'System', '/products/icon/Housing.gif', 0, 1),
(5, 'Nhập liệu', '/products/icon/Page.gif', 0, 1),
(7, 'Khách hàng', '/products/icon/Photo.gif', 0, 1),
(23, 'Thống kê', '/products/icon/CustomerInfo.gif', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_orderby`
--

DROP TABLE IF EXISTS `sys_orderby`;
CREATE TABLE IF NOT EXISTS `sys_orderby` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sys_orderby`
--

INSERT INTO `sys_orderby` (`id`, `title`, `code`) VALUES
(1, 'ASC', 'ASC'),
(2, 'DESC', 'DESC');

-- --------------------------------------------------------

--
-- Table structure for table `sys_plugin_function`
--

DROP TABLE IF EXISTS `sys_plugin_function`;
CREATE TABLE IF NOT EXISTS `sys_plugin_function` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `function_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sys_plugin_function`
--

INSERT INTO `sys_plugin_function` (`id`, `title`, `function_name`) VALUES
(1, 'Tính tiền thu_chi', 'tinh_tien_thu_chi'),
(2, 'link_option', 'link_option');

-- --------------------------------------------------------

--
-- Table structure for table `sys_table`
--

DROP TABLE IF EXISTS `sys_table`;
CREATE TABLE IF NOT EXISTS `sys_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Table',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu` tinyint(3) DEFAULT '0',
  `custom_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_group_id` int(10) DEFAULT NULL,
  `show_order` tinyint(3) DEFAULT '1',
  `list_page_size` int(10) DEFAULT NULL,
  `list_footer` int(3) DEFAULT '0',
  `position` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=198 ;

--
-- Dumping data for table `sys_table`
--

INSERT INTO `sys_table` (`id`, `table_name`, `title`, `menu`, `custom_link`, `menu_group_id`, `show_order`, `list_page_size`, `list_footer`, `position`) VALUES
(53, 'sys_field', 'Field', 1, '', 1, 1, 50, 0, 0),
(54, 'sys_table', 'Table', 1, '', 1, 1, 1000, 0, 0),
(58, 'sys_menu_group', 'Menu Group', 1, '', 1, 1, 0, 1, 0),
(73, 'webmaster_roles', 'Chức vụ', 1, '', 1, 1, 0, 0, 0),
(69, 'sys_format', 'Field Format', 1, '', 1, 1, 0, 1, 0),
(70, 'sys_plugin_function', 'Plugin Function', 1, '', 1, 0, 0, 0, 0),
(72, 'webmaster', 'Tài khoản', 1, '', 1, 1, 0, 0, 0),
(74, 'sys_orderby', 'Order by', 1, '', 1, 1, 0, 0, 0),
(123, 'webmaster_permission', 'Permission', 1, '', 1, 1, 0, 1, 0),
(186, 'thongke', 'Thống kế doanh số', 1, 'thongke.php', 23, 1, 0, 0, 0),
(193, 'thanhtoan', 'Hình thức thanh toán', 1, '', 7, 1, 0, 0, 0),
(190, 'hoadon', 'Lập phiếu', 1, 'hoadon.php', 5, 1, 0, 0, 0),
(191, 'city_vietnam', 'Tỉnh thành', 1, '', 7, 1, 50, 0, 0),
(192, 'khachang', 'Khách hàng', 1, '', 5, 1, 0, 0, 0),
(194, 'mathang', 'Nhập mặt hàng', 1, '', 5, 1, 100, 0, 1),
(195, 'nhanvien', 'Nhân viên', 1, '', 5, 1, 0, 0, 3),
(196, 'chitiet', 'Chi tiết', 1, 'chitiet.php', 23, 1, 2, 0, 2),
(197, 'setting', 'Cấu hình hệ thống', 1, '', 1, 1, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

DROP TABLE IF EXISTS `thanhtoan`;
CREATE TABLE IF NOT EXISTS `thanhtoan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `thanhtoan`
--

INSERT INTO `thanhtoan` (`id`, `title`, `description`, `status`) VALUES
(1, 'Chuyển khoản', '&nbsp;Chuyển khoản tại các ngân hàng và thùng ATM trên toàn quốc', 1),
(5, 'Tiền mặt', '&nbsp;Giao tiền mặt<br />', 1),
(6, 'Nợ', '&nbsp;Nợ toàn bộ<br />', 1),
(7, 'Nợ 1/2', '&nbsp;Trả 1 nửa giá trị hóa đơn<br />', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster`
--

DROP TABLE IF EXISTS `webmaster`;
CREATE TABLE IF NOT EXISTS `webmaster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Thanh vien',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mat khau',
  `fullname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ho ten',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email',
  `roleid` int(10) NOT NULL COMMENT 'Role',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai',
  `is_change_webmaster_permission` tinyint(3) DEFAULT '0',
  `is_view_tabledesign` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=40 ;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `username`, `password`, `fullname`, `email`, `roleid`, `status`, `is_change_webmaster_permission`, `is_view_tabledesign`) VALUES
(3, 'thuy.tq', 'c88e358f227ecc866834ebb01f6fc0a0', 'Mr. Thuy', 'thuy.tq@hotmail.com', 11, 1, 1, 1),
(37, 'admin', 'e6e061838856bf47e1de730719fb2609', 'Mr Bảo', 'info@thegioihinhanh.com', 4, 1, 0, 0),
(39, 'nhanvien', '173a340a26339e567703085f1c00f693', 'Nhân Viên', 'nhanhvien@thegioihinhanh.com', 12, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_permission`
--

DROP TABLE IF EXISTS `webmaster_permission`;
CREATE TABLE IF NOT EXISTS `webmaster_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webmaster_role_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `is_list` tinyint(4) DEFAULT '1',
  `is_insert` tinyint(4) DEFAULT '1',
  `is_edit` tinyint(4) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `webmaster_permission`
--

INSERT INTO `webmaster_permission` (`id`, `webmaster_role_id`, `table_id`, `is_list`, `is_insert`, `is_edit`, `is_delete`) VALUES
(39, 12, 190, 1, 1, 1, 0),
(41, 4, 195, 1, 1, 1, 1),
(40, 4, 196, 1, 1, 1, 1),
(38, 4, 191, 1, 1, 1, 1),
(37, 4, 186, 1, 1, 1, 1),
(17, 4, 72, 1, 1, 1, 1),
(36, 4, 192, 1, 1, 1, 1),
(35, 4, 190, 1, 1, 1, 1),
(34, 4, 193, 1, 1, 1, 1),
(42, 4, 194, 1, 1, 1, 1),
(43, 4, 197, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_roles`
--

DROP TABLE IF EXISTS `webmaster_roles`;
CREATE TABLE IF NOT EXISTS `webmaster_roles` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Role name',
  `position` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=14 ;

--
-- Dumping data for table `webmaster_roles`
--

INSERT INTO `webmaster_roles` (`id`, `title`, `position`) VALUES
(4, 'Ban Lãnh Đạo', 1),
(11, 'Quản lý hệ thống', 0),
(12, 'Nhân viên', 2),
(13, 'Khách hàng', 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
