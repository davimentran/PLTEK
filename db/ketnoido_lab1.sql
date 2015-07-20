-- phpMyAdmin SQL Dump
-- version 3.5.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 28, 2014 at 08:11 AM
-- Server version: 5.0.92
-- PHP Version: 5.2.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ketnoido_lab1`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet`
--

DROP TABLE IF EXISTS `chitiet`;
CREATE TABLE IF NOT EXISTS `chitiet` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(250) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city_vietnam`
--

DROP TABLE IF EXISTS `city_vietnam`;
CREATE TABLE IF NOT EXISTS `city_vietnam` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(100) collate utf8_unicode_ci NOT NULL COMMENT 'Thành phố',
  `picture` varchar(250) collate utf8_unicode_ci default NULL COMMENT 'Ảnh đại diện',
  `position` int(10) unsigned default NULL COMMENT 'Vị trí',
  `status` tinyint(3) unsigned default '1' COMMENT 'Quản lý',
  `datecreated` bigint(20) unsigned default NULL COMMENT 'Ngày tạo',
  `dateupdated` bigint(20) unsigned default NULL COMMENT 'Ngày cập nhật',
  PRIMARY KEY  (`id`)
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
  `id` int(10) NOT NULL auto_increment,
  `sohoadon` varchar(10) collate utf8_unicode_ci default NULL,
  `khachang_id` int(10) default NULL,
  `fullname_sell` varchar(250) collate utf8_unicode_ci default NULL,
  `fullname_dv` varchar(500) collate utf8_unicode_ci default NULL,
  `address` varchar(500) collate utf8_unicode_ci default NULL,
  `mst` varchar(50) collate utf8_unicode_ci default NULL,
  `thanhtoan_id` int(10) default NULL,
  `datcoc` varchar(250) collate utf8_unicode_ci NOT NULL default '0',
  `nhanvien_id` int(10) default NULL,
  `nhanvien_quay_id` int(10) default NULL,
  `array_mathang_id` varchar(500) collate utf8_unicode_ci default NULL,
  `array_item_code` varchar(500) collate utf8_unicode_ci default NULL,
  `array_is_dichvu` varchar(500) collate utf8_unicode_ci default NULL,
  `array_hanghoa` varchar(500) collate utf8_unicode_ci default NULL,
  `array_donvitinh` varchar(500) collate utf8_unicode_ci default NULL,
  `array_soluong` varchar(500) collate utf8_unicode_ci default NULL,
  `array_dongia` varchar(500) collate utf8_unicode_ci default NULL,
  `array_giamgia` varchar(500) collate utf8_unicode_ci default NULL,
  `array_ghichu` varchar(500) collate utf8_unicode_ci default NULL,
  `array_khogiay_id` varchar(500) collate utf8_unicode_ci NOT NULL,
  `array_dientich` varchar(500) collate utf8_unicode_ci NOT NULL,
  `tongtiendonvi` varchar(250) collate utf8_unicode_ci default NULL,
  `tax` int(10) default NULL,
  `tienthueGTGT` varchar(250) collate utf8_unicode_ci default NULL,
  `tongsotien` varchar(250) collate utf8_unicode_ci default NULL,
  `tienbangchu` varchar(500) collate utf8_unicode_ci default NULL,
  `ngay` tinyint(2) default NULL,
  `thang` tinyint(2) default NULL,
  `nam` int(5) default NULL,
  `giotao` varchar(100) collate utf8_unicode_ci default NULL,
  `datecreated` bigint(20) default NULL,
  `order_week` int(10) default NULL,
  `status` tinyint(3) default '1',
  PRIMARY KEY  (`id`),
  KEY `datecreated` (`datecreated`),
  KEY `order_week` (`order_week`),
  KEY `sohoadon` (`sohoadon`),
  KEY `nhanvien_id` (`nhanvien_id`),
  KEY `nhanvien_quay_id` (`nhanvien_quay_id`),
  KEY `khachang_id` (`khachang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `khachang`
--

DROP TABLE IF EXISTS `khachang`;
CREATE TABLE IF NOT EXISTS `khachang` (
  `id` int(10) NOT NULL auto_increment,
  `tinhthanh_id` int(10) NOT NULL,
  `title` varchar(250) collate utf8_unicode_ci default NULL COMMENT 'Ho ten',
  `address` varchar(500) collate utf8_unicode_ci default NULL,
  `picture` varchar(250) collate utf8_unicode_ci default NULL,
  `mst` varchar(200) collate utf8_unicode_ci default NULL,
  `email` varchar(100) collate utf8_unicode_ci default NULL,
  `phone` varchar(100) collate utf8_unicode_ci default NULL,
  `fax` varchar(100) collate utf8_unicode_ci default NULL,
  `datecreated` bigint(20) default NULL,
  `status` tinyint(3) unsigned default '1' COMMENT 'Trang thai',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- Dumping data for table `khachang`
--

INSERT INTO `khachang` (`id`, `tinhthanh_id`, `title`, `address`, `picture`, `mst`, `email`, `phone`, `fax`, `datecreated`, `status`) VALUES
(1, 1, 'ANH HẢI', '123 Trần Hưng Đạo. Quận 3', '/products/imagehere.png', '', '', '0914.401.890', '', 1390064400, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khogiay`
--

DROP TABLE IF EXISTS `khogiay`;
CREATE TABLE IF NOT EXISTS `khogiay` (
  `id` int(10) NOT NULL auto_increment,
  `khogiay_id` int(10) default NULL,
  `title` varchar(250) collate utf8_unicode_ci default NULL,
  `quantity` int(10) default NULL,
  `quantity_scroll` int(11) NOT NULL,
  `scroll` int(11) NOT NULL,
  `note` varchar(250) collate utf8_unicode_ci default NULL,
  `datecreated` bigint(20) default NULL,
  `dateupdated` bigint(20) default NULL,
  `status` tinyint(3) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `khogiay`
--

INSERT INTO `khogiay` (`id`, `khogiay_id`, `title`, `quantity`, `quantity_scroll`, `scroll`, `note`, `datecreated`, `dateupdated`, `status`) VALUES
(1, 1, 'FUJI 12.7 láng', 0, 241800, 0, '', 1388829568, 1388829568, 1),
(2, 2, 'FUJI 15.2 láng', 0, 279000, 0, '', 1388829580, 1388829580, 1),
(10, 10, 'AFFA 12.7 lụa', 0, 234000, 0, '', 1388829551, 1388829551, 1),
(4, 4, 'FUJI 25.4', 0, 225000, 0, '', 1388829589, 1388829589, 1),
(5, 5, 'fuji 30.5', 0, 270000, 0, '', 1388829594, 1388829594, 1),
(8, 8, 'AFFA 12.7 láng', 0, 234000, 0, '', 1388829546, 1388829546, 1),
(6, 6, 'FUJI 12.7 lụa', 0, 241800, 0, '', 1388829573, 1388829573, 1),
(7, 7, 'FUJI 15.2 lụa', 0, 279000, 0, '', 1388829584, 1388829584, 1),
(9, 9, 'AFFA 15.2 láng', 0, 270000, 0, '', 1388829557, 1388829557, 1),
(11, 11, 'AFFA 15.2 lụa', 0, 270000, 0, '', 1388829563, 1388829563, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khogiay_category`
--

DROP TABLE IF EXISTS `khogiay_category`;
CREATE TABLE IF NOT EXISTS `khogiay_category` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(250) collate utf8_unicode_ci default NULL,
  `quantity` int(10) default '0',
  `quantity_du` int(10) default '0',
  `note` varchar(250) collate utf8_unicode_ci default NULL,
  `status` tinyint(3) default '1',
  `datecreated` bigint(20) default NULL,
  `dateupdated` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `khogiay_category`
--

INSERT INTO `khogiay_category` (`id`, `title`, `quantity`, `quantity_du`, `note`, `status`, `datecreated`, `dateupdated`) VALUES
(1, '12.7 láng (FUJI)', 0, NULL, '', 1, 1382720400, 1382720400),
(2, '15.2 láng (FUJI)', 0, NULL, '', 1, 1382720400, 1382720400),
(4, '25.4 (FUJI)', 0, NULL, '', 1, 1382720400, 1382720400),
(5, '30.5 (FUJI)', 0, NULL, '', 1, 1382720400, 1382720400),
(6, '12.7 lụa (FUJI)', 0, 0, '', 1, 1384707600, 1384707600),
(7, '15.2 lụa (FUJI)', 0, 0, '', 1, 1384707600, 1384707600),
(8, '12.7 láng (AFFA)', 0, 0, '', 1, 1384707600, 1384707600),
(9, '15.2 láng (AFFA)', 0, 0, '', 1, 1384707600, 1384707600),
(10, '12.7 lụa (AFFA)', 0, 0, '', 1, 1384707600, 1384707600),
(11, '15.2 lụa (AFFA)', 0, 0, '', 1, 1384707600, 1384707600);

-- --------------------------------------------------------

--
-- Table structure for table `log_khogiay`
--

DROP TABLE IF EXISTS `log_khogiay`;
CREATE TABLE IF NOT EXISTS `log_khogiay` (
  `id` bigint(20) NOT NULL auto_increment,
  `khogiay_id` int(10) default NULL,
  `dientich` int(10) default NULL,
  `datecreated` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `log_khogiay`
--

INSERT INTO `log_khogiay` (`id`, `khogiay_id`, `dientich`, `datecreated`) VALUES
(1, 2, 630, 1385139600),
(4, 11, 15000, 1385226000);

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `id` int(10) NOT NULL auto_increment,
  `khogiay_id` int(10) default NULL,
  `item_code` varchar(100) collate utf8_unicode_ci default NULL,
  `item_name` varchar(250) collate utf8_unicode_ci default NULL,
  `unit` varchar(100) collate utf8_unicode_ci default NULL,
  `price` int(11) default NULL,
  `price_goc` int(11) NOT NULL,
  `quantity` int(11) default NULL,
  `dientich` int(10) default NULL,
  `note` varchar(250) collate utf8_unicode_ci default NULL,
  `is_dichvu` tinyint(3) default '1',
  `status` tinyint(3) default '1',
  PRIMARY KEY  (`id`),
  KEY `item_code` (`item_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=669 ;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`id`, `khogiay_id`, `item_code`, `item_name`, `unit`, `price`, `price_goc`, `quantity`, `dientich`, `note`, `is_dichvu`, `status`) VALUES
(1, 0, 'AL1015(56)', 'Album10x15(56)', 'Cuốn', 20400, 16000, 0, 0, '', 0, 1),
(2, 0, 'AL1015M', 'Album10x15mo', 'Cuốn', 2400, 1500, 0, 0, '', 0, 1),
(3, 0, 'AL1318(56)', 'Album13x18(56)', 'Cuốn', 22200, 0, 0, 0, '', 0, 1),
(4, 0, 'AL1318M', 'Album13x18mo', 'Cuốn', 3000, 2000, 0, 0, '', 0, 1),
(5, 0, 'AL1521M', 'Album15x21mo', 'Cuốn', 4800, 0, 0, 0, '', 0, 1),
(6, 0, 'AL-CD(1)', 'Album 1CD', 'Cái', 13200, 10000, 0, 0, '', 0, 1),
(7, 0, 'AL-CD(2)', 'Album 2CD', 'Cái', 15600, 0, 0, 0, '', 0, 1),
(8, 1, 'BABY1318', 'Ch.p em bé(13x18)', 'Tấm', 20000, 0, 0, 234, '', 0, 1),
(9, 2, 'BABY1521', 'Ch.p em bé (15x21)', 'Tấm', 25000, 0, 0, 315, '', 0, 1),
(10, 0, 'CD-700', 'CD 700mb', 'Cái', 3000, 0, 0, 0, '', 0, 1),
(12, 0, 'CHUPSN', 'Chụp sinh nhật', 'Tấm', 10000, 0, 0, 0, '', 1, 1),
(13, 0, 'EPGOBB1015', 'Épgo(bo3)10x15', 'Tấm', 17000, 0, 0, 0, '', 1, 1),
(14, 0, 'EPGOBB1318', 'Épgo(bo3)13x18', 'Tấm', 17000, 0, 0, 0, '', 1, 1),
(15, 0, 'EPGOBB1521', 'Épgo(bo3)15x21', 'Tấm', 19500, 0, 0, 0, '', 1, 1),
(475, 0, 'EPGOBB2538', 'Épgo(bo3)2538', 'Tấm', 41000, 0, 0, 0, '', 1, 1),
(17, 0, 'EPGOBB2025', 'Épgo(bo3)20x25', 'Tấm', 22800, 0, 0, 0, '', 1, 1),
(18, 0, 'EPGOBB2030', 'Épgo(bo3)20x30', 'Tấm', 22800, 0, 0, 0, '', 1, 1),
(19, 0, 'EPGOBB2530', 'Épgo(bo3)25X30', 'Tấm', 28000, 0, 0, 0, '', 1, 1),
(20, 0, 'EPGOBB2535', 'Épgo(bo3)25x35', 'Tấm', 35800, 0, 0, 0, '', 1, 1),
(21, 0, 'EPGOBB3040', 'Épgo(bo3)30X40', 'Tấm', 46200, 0, 0, 0, '', 1, 1),
(22, 0, 'EPGOBB3045', 'Épgo(bo3)30X45', 'Tấm', 48800, 0, 0, 0, '', 1, 1),
(23, 0, 'EPGOBB3550', 'Épgo(bo3)35X50', 'Tấm', 70000, 0, 0, 0, '', 1, 1),
(24, 0, 'EPGOBB4050', 'Épgo(bo3)40X50', 'Tấm', 70000, 0, 0, 0, '', 1, 1),
(25, 0, 'EPGOBB4060', 'Épgo(bo3)40x60', 'Tấm', 96000, 0, 0, 0, '', 1, 1),
(26, 0, 'EPGOBB5060', 'Épgo(bo3)50x60', 'Tấm', 102000, 0, 0, 0, '', 1, 1),
(27, 0, 'EPGOBB5070', 'Épgo(bo3)50X70', 'Tấm', 109000, 0, 0, 0, '', 1, 1),
(28, 0, 'EPGOBB5075', 'Épgo(bo3)50x75', 'Tấm', 115000, 0, 0, 0, '', 1, 1),
(29, 0, 'EPGOBB6085', 'Épgo(bo3)60X85', 'Tấm', 161000, 0, 0, 0, '', 1, 1),
(30, 0, 'EPGOBB6090', 'Épgo(bo3)60x90', 'Tấm', 200000, 0, 0, 0, '', 1, 1),
(476, 0, 'EPGOBN2538', 'Épgo(bo5)2538', 'Tấm', 47500, 0, 0, 0, '', 1, 1),
(35, 0, 'EPGOBN2025', 'Épgo(bo5)20x25', 'Tấm', 29300, 0, 0, 0, '', 1, 1),
(36, 0, 'EPGOBN2030', 'Épgo(bo5)20x30', 'Tấm', 29300, 0, 0, 0, '', 1, 1),
(37, 0, 'EPGOBN2530', 'Épgo(bo5)25X30', 'Tấm', 34500, 0, 0, 0, '', 1, 1),
(38, 0, 'EPGOBN2535', 'Épgo(bo5)25x35', 'Tấm', 46200, 0, 0, 0, '', 1, 1),
(39, 0, 'EPGOBN3040', 'Épgo(bo5)30X40', 'Tấm', 64400, 0, 0, 0, '', 1, 1),
(40, 0, 'EPGOBN3045', 'Épgo(bo5)30X45', 'Tấm', 64400, 0, 0, 0, '', 1, 1),
(41, 0, 'EPGOBN3550', 'Épgo(bo5)35X50', 'Tấm', 67400, 0, 0, 0, '', 1, 1),
(42, 0, 'EPGOBN4050', 'Épgo(bo5)40X50', 'Tấm', 96000, 0, 0, 0, '', 1, 1),
(43, 0, 'EPGOBN4060', 'Épgo(bo5)40x60', 'Tấm', 102500, 0, 0, 0, '', 1, 1),
(44, 0, 'EPGOBN5060', 'Épgo(bo5)50x60', 'Tấm', 108000, 0, 0, 0, '', 1, 1),
(45, 0, 'EPGOBN5070', 'Épgo(bo5)50X70', 'Tấm', 115500, 0, 0, 0, '', 1, 1),
(46, 0, 'EPGOBN5075', 'Épgo(bo5)50x75', 'Tấm', 120000, 0, 0, 0, '', 1, 1),
(47, 0, 'EPGOBN6085', 'Épgo(bo5)60X85', 'Tấm', 200000, 0, 0, 0, '', 1, 1),
(48, 0, 'EPGOBN6090', 'Épgo(bo5)60x90', 'Tấm', 200000, 0, 0, 0, '', 1, 1),
(49, 0, 'EPGOKB1015', 'Épgo(kbo)10x15', 'Tấm', 13000, 0, 0, 0, '', 1, 1),
(50, 0, 'EPGOKB1318', 'Épgo(kbo)13x18', 'Tấm', 13000, 0, 0, 0, '', 1, 1),
(51, 0, 'EPGOKB1521', 'Épgo(kbo)15x21', 'Tấm', 13000, 0, 0, 0, '', 1, 1),
(477, 0, 'EPGOKB2538', 'Épgo(kbo)25x38', 'Tấm', 28000, 0, 0, 0, '', 1, 1),
(53, 0, 'EPGOKB2025', 'Épgo(kbo)20x25', 'Tấm', 21500, 0, 0, 0, '', 1, 1),
(54, 0, 'EPGOKB2030', 'Épgo(kbo)20x30', 'Tấm', 21500, 0, 0, 0, '', 1, 1),
(55, 0, 'EPGOKB2530', 'Épgo(kbo)25X30', 'Tấm', 22800, 0, 0, 0, '', 1, 1),
(56, 0, 'EPGOKB2535', 'Épgo(kbo)25x35', 'Tấm', 22800, 0, 0, 0, '', 1, 1),
(57, 0, 'EPGOKB3040', 'Épgo(kbo)30X40', 'Tấm', 35800, 0, 0, 0, '', 1, 1),
(58, 0, 'EPGOKB3045', 'Épgo(kbo)30X45', 'Tấm', 41000, 0, 0, 0, '', 1, 1),
(59, 0, 'EPGOKB3550', 'Épgo(kbo)35X50', 'Tấm', 51800, 0, 0, 0, '', 1, 1),
(60, 0, 'EPGOKB4050', 'Épgo(kbo)40X50', 'Tấm', 67400, 0, 0, 0, '', 1, 1),
(61, 0, 'EPGOKB4060', 'Épgo(kbo)40x60', 'Tấm', 67400, 0, 0, 0, '', 1, 1),
(62, 0, 'EPGOKB5060', 'Épgo(kbo)50x60', 'Tấm', 96000, 0, 0, 0, '', 1, 1),
(63, 0, 'EPGOKB5070', 'Épgo(kbo)50X70', 'Tấm', 102500, 0, 0, 0, '', 1, 1),
(64, 0, 'EPGOKB5075', 'Épgo(kbo)50x75', 'Tấm', 107000, 0, 0, 0, '', 1, 1),
(65, 0, 'EPGOKB6085', 'Épgo(kbo)60X85', 'Tấm', 115500, 0, 0, 0, '', 1, 1),
(66, 0, 'EPGOKB6090', 'Épgo(kbo)60x90', 'Tấm', 122000, 0, 0, 0, '', 1, 1),
(67, 0, 'EPLAS1015', 'Ép plas10x15', 'Tấm', 800, 0, 0, 0, '', 0, 1),
(68, 0, 'EPLAS1318', 'Ép plas13x18', 'Tấm', 1000, 0, 0, 0, '', 0, 1),
(69, 0, 'EPLAS1521', 'Ép plas15x21', 'Tấm', 1500, 0, 0, 0, '', 0, 1),
(481, 0, 'EPLAS2538', 'Ép plas25x38', 'Tấm', 5500, 0, 0, 0, '', 0, 1),
(71, 0, 'EPLAS2025', 'Ép plas20x25', 'Tấm', 2500, 0, 0, 0, '', 0, 1),
(72, 0, 'EPLAS2030', 'Ép plas20x30', 'Tấm', 3000, 0, 0, 0, '', 0, 1),
(73, 0, 'EPLAS2530', 'Ép plas25X30', 'Tấm', 4000, 0, 0, 0, '', 0, 1),
(74, 0, 'EPLAS2535', 'Ép plas25x35', 'Tấm', 4500, 0, 0, 0, '', 0, 1),
(75, 0, 'EPLAS3040', 'Ép plas30X40', 'Tấm', 10000, 0, 0, 0, '', 0, 1),
(76, 0, 'EPLAS3045', 'Ép plas30X45', 'Tấm', 12000, 0, 0, 0, '', 0, 1),
(77, 0, 'EPLAS3550', 'Ép plas35X50', 'Tấm', 14000, 0, 0, 0, '', 1, 1),
(78, 0, 'EPLAS4050', 'Ép plas40X50', 'Tấm', 16000, 0, 0, 0, '', 1, 1),
(79, 0, 'EPLAS4060', 'Ép plas40x60', 'Tấm', 17000, 0, 0, 0, '', 1, 1),
(80, 0, 'EPLAS5060', 'Ép plas50x60', 'Tấm', 25000, 0, 0, 0, '', 1, 1),
(81, 0, 'EPLAS5070', 'Ép plas50X70', 'Tấm', 28000, 0, 0, 0, '', 1, 1),
(82, 0, 'EPLAS5075', 'Ép plas50x75', 'Tấm', 30000, 0, 0, 0, '', 1, 1),
(83, 0, 'EPLAS6085', 'Ép plas60X85', 'Tấm', 36000, 0, 0, 0, '', 1, 1),
(84, 0, 'EPLAS6090', 'Ép plas60x90', 'Tấm', 38000, 0, 0, 0, '', 1, 1),
(482, 1, 'XALB0912', 'Xuất Album 12x18', 'Tờ', 2500, 0, 0, 234, '', 0, 1),
(483, 4, 'XALB0912', 'Xuất Album 9x24', 'Tờ', 2500, 0, 0, 225, '', 0, 1),
(544, 0, 'GCA.RĐ.2OTRANG', 'GC Alb RĐ 20trang', 'Cuốn', 551000, 0, 0, 0, '', 1, 1),
(626, 9, 'A.XH1521LA(AFFA)', 'X.hình 15x21 láng.Af', 'Tấm', 2400, 0, 0, 315, '', 0, 1),
(627, 0, 'GCA.NAPGAP', 'GC Alb có nắp', 'Cuốn', 20000, 0, 0, 0, '', 1, 1),
(628, 0, 'KH319NHO1521', 'Kh 319 nho 15x21', 'Cái', 24000, 0, 0, 0, '', 0, 1),
(629, 0, 'KH319NHO2025', 'Kh 319 nho 20x25', 'Cái', 28800, 0, 0, 0, '', 0, 1),
(630, 0, 'KH319NHO2030', 'Kh 319 nho 20x30', 'Cái', 31200, 0, 0, 0, '', 0, 1),
(631, 0, 'KH319NHO2535', 'Kh 319 nho 25x35', 'Cái', 38400, 0, 0, 0, '', 0, 1),
(632, 0, 'KH329.VT1521', 'Kh 329 vàng trắng 15x21', 'Cái', 21600, 0, 0, 0, '', 0, 1),
(633, 0, 'KH329.VT2025', 'Kh 329 vàng trắng 20x25', 'Cái', 25200, 0, 0, 0, '', 0, 1),
(634, 0, 'KH329.VT2030', 'Kh 329 vàng trắng 20x30', 'Cái', 27600, 22000, 0, 0, '', 0, 1),
(531, 0, 'GCA.S,P.THEMTO', 'GC Alb Ph thêm tờ', 'Tờ', 26000, 0, 0, 0, '', 1, 1),
(609, 0, 'PHUCHOI', 'Phục hồi 1 mặt', 'Mặt', 30000, 0, 0, 0, '', 1, 1),
(610, 0, 'THAYPHONG', 'Thay phông 1 layer', 'Hình', 5000, 0, 0, 0, '', 1, 1),
(653, 0, 'THAYPHONG-SCAN', 'Thay phông hình Scan', 'Hình', 20000, 0, 0, 0, '', 1, 1),
(612, 0, 'DESIGN-ALB', 'Design Alb,cổng...', 'Hình', 22000, 0, 0, 0, '', 1, 1),
(613, 0, 'KHTHODUC2025', 'Kh.thờ đục 20x25', 'Cái', 162500, 0, 0, 0, '', 0, 1),
(614, 0, 'KHTHODUC2030', 'Kh.thờ đục 20x30', 'Cái', 175500, 0, 0, 0, '', 0, 1),
(615, 0, 'KHTHOCAN2025', 'Kh.thờ cẩn 20x25', 'Cái', 138000, 0, 0, 0, '', 0, 1),
(616, 0, 'KHTHOCAN2030', 'Kh.thờ cẩn 20x30', 'Cái', 150000, 0, 0, 0, '', 0, 1),
(617, 0, 'GIAYEP1015', 'Giấy ép 10x15', 'Tờ', 170, 120, 0, 0, '', 0, 1),
(618, 0, 'GIAYEP1318', 'Giấy ép 13x18', 'Tờ', 200, 145, 0, 0, '', 0, 1),
(619, 0, 'GIAYEP1521', 'Giấy ép 15x21', 'Tờ', 420, 0, 0, 0, '', 0, 1),
(620, 0, 'GIAYEP2025', 'Giấy ép 20x25', 'Tờ', 660, 0, 0, 0, '', 0, 1),
(621, 0, 'GIAYEP2030', 'Giấy ép 20x30', 'Tờ', 750, 0, 0, 0, '', 0, 1),
(622, 0, 'GIAYEP2538', 'Giấy ép 25x38', 'Tờ', 1000, 0, 0, 0, '', 0, 1),
(623, 8, 'A.XH0912LA(AFFA)', 'X.hình 9x12 láng.Af', 'Tấm', 900, 0, 0, 117, '', 0, 1),
(624, 9, 'A.XH1015LA(AFFA)', 'X.hình 10x15 láng.Af', 'Tấm', 1100, 0, 0, 150, '', 0, 1),
(625, 8, 'A.XH1318LA(AFFA)', 'X.hình 13x18 láng.Af', 'Tấm', 1790, 0, 0, 234, '', 0, 1),
(480, 0, 'EPLAS0912', 'Ép plas09x12', 'Tấm', 800, 0, 0, 0, '', 0, 1),
(479, 0, 'EPGOKB76110', 'Épgo(kbo)76x110', 'Tấm', 291000, 0, 0, 0, '', 1, 1),
(478, 0, 'EPGOKB70110', 'Épgo(kbo)70x110', 'Tấm', 200000, 0, 0, 0, '', 1, 1),
(140, 0, 'KH3CK0912', 'Khung3ck9x12', 'Cái', 13200, 0, 0, 0, '', 0, 1),
(141, 0, 'KH3CK1015', 'Khung3ck10x15', 'Cái', 14400, 0, 0, 0, '', 0, 1),
(142, 0, 'KH3CK1318', 'Khung3ck13x18', 'Cái', 16800, 0, 0, 0, '', 0, 1),
(143, 0, 'KH3CK1521', 'Khung3ck15x21', 'Cái', 18000, 0, 0, 0, '', 0, 1),
(144, 0, 'KH3CK2025', 'Khung3ck20x25', 'Cái', 21600, 0, 0, 0, '', 0, 1),
(145, 0, 'KH3CK2030', 'Khung3ck20x30', 'Cái', 22800, 0, 0, 0, '', 0, 1),
(146, 0, 'KH3CK2535', 'Khung3ck25x35', 'Cái', 32400, 0, 0, 0, '', 0, 1),
(147, 0, 'KH3CK3040', 'Khung3ck30x40', 'Cái', 38400, 0, 0, 0, '', 0, 1),
(148, 0, 'KH3CK3045', 'Khung3ck30x45', 'Cái', 40800, 0, 0, 0, '', 0, 1),
(149, 0, 'KH3CK3550', 'Khung3ck35x50', 'Cái', 46800, 0, 0, 0, '', 0, 1),
(150, 0, 'KH5CK2025', 'Khung5ck20x25', 'Cái', 36000, 0, 0, 0, '', 0, 1),
(151, 0, 'KH5CK2030', 'Khung5ck20x30', 'Cái', 37200, 0, 0, 0, '', 0, 1),
(152, 0, 'KH5CK2535', 'Khung5ck25x35', 'Cái', 46800, 0, 0, 0, '', 0, 1),
(153, 0, 'KH5CK3040', 'Khung5ck30x40', 'Cái', 54000, 0, 0, 0, '', 0, 1),
(154, 0, 'KH5CK3045', 'Khung5ck30x45', 'Cái', 57600, 0, 0, 0, '', 0, 1),
(155, 0, 'KH5CK3550', 'Khung5ck35x50', 'Cái', 66000, 0, 0, 0, '', 0, 1),
(156, 0, 'KH5CK4060', 'Khung5ck40x60', 'Cái', 80400, 0, 0, 0, '', 0, 1),
(157, 0, 'KH5CK5075', 'Khung5ck50x75', 'Cái', 103200, 0, 0, 0, '', 0, 1),
(158, 0, 'KH5CK6090', 'Khung5ck60x90', 'Cái', 129600, 0, 0, 0, '', 0, 1),
(159, 0, 'KH5KK2025', 'Khung5kk20x25', 'Cái', 34800, 0, 0, 0, '', 0, 1),
(160, 0, 'KH5KK2030', 'Khung5kk20x30', 'Cái', 37200, 0, 0, 0, '', 0, 1),
(161, 0, 'KH5KK2535', 'Khung5kk25x35', 'Cái', 40800, 0, 0, 0, '', 0, 1),
(162, 0, 'KH5KK3040', 'Khung5kk30x40', 'Cái', 44400, 0, 0, 0, '', 0, 1),
(163, 0, 'KH5KK3045', 'Khung5kk30x45', 'Cái', 46800, 0, 0, 0, '', 0, 1),
(164, 0, 'KH5KK3550', 'Khung5kk35x50', 'Cái', 50400, 0, 0, 0, '', 0, 1),
(165, 0, 'KH5KK4060', 'Khung5kk40x60', 'Cái', 55200, 0, 0, 0, '', 0, 1),
(166, 0, 'KH5KK5075', 'Khung5kk50x75', 'Cái', 64800, 0, 0, 0, '', 0, 1),
(167, 0, 'KH5KK6090', 'Khung5kk60x90', 'Cái', 74400, 0, 0, 0, '', 0, 1),
(168, 0, 'KH7CK2025', 'Khung7ck20x25', 'Cái', 55200, 0, 0, 0, '', 0, 1),
(169, 0, 'KH7CK2030', 'Khung7ck20x30', 'Cái', 58800, 0, 0, 0, '', 0, 1),
(170, 0, 'KH7CK2535', 'Khung7ck25x35', 'Cái', 67200, 0, 0, 0, '', 0, 1),
(171, 0, 'KH7CK3040', 'Khung7ck30x40', 'Cái', 75600, 0, 0, 0, '', 0, 1),
(172, 0, 'KH7CK3045', 'Khung7ck30x45', 'Cái', 80400, 0, 0, 0, '', 0, 1),
(173, 0, 'KH7CK3550', 'Khung7ck35x50', 'Cái', 90000, 0, 0, 0, '', 0, 1),
(174, 0, 'KH7CK4060', 'Khung7ck40x60', 'Cái', 102000, 0, 0, 0, '', 0, 1),
(175, 0, 'KH7CK5075', 'Khung7ck50x75', 'Cái', 129600, 0, 0, 0, '', 0, 1),
(176, 0, 'KH7CK6090', 'Khung7ck60x90', 'Cái', 159600, 0, 0, 0, '', 0, 1),
(177, 0, 'KH7CK70110', 'Khung7ck70x110', 'Cái', 199200, 0, 0, 0, '', 0, 1),
(178, 0, 'KH7KK2025', 'Khung7kk20x25', 'Cái', 50400, 0, 0, 0, '', 0, 1),
(179, 0, 'KH7KK2030', 'Khung7kk20x30', 'Cái', 52800, 0, 0, 0, '', 0, 1),
(180, 0, 'KH7KK2535', 'Khung7kk25x35', 'Cái', 58800, 0, 0, 0, '', 0, 1),
(181, 0, 'KH7KK3040', 'Khung7kk30x40', 'Cái', 63600, 0, 0, 0, '', 0, 1),
(182, 0, 'KH7KK3045', 'Khung7kk30x45', 'Cái', 66000, 0, 0, 0, '', 0, 1),
(183, 0, 'KH7KK3550', 'Khung7kk35x50', 'Cái', 72000, 0, 0, 0, '', 0, 1),
(184, 0, 'KH7KK4060', 'Khung7kk40x60', 'Cái', 78000, 0, 0, 0, '', 0, 1),
(185, 0, 'KH7KK5075', 'Khung7kk50x75', 'Cái', 91200, 0, 0, 0, '', 0, 1),
(186, 0, 'KH7KK6090', 'Khung7kk60x90', 'Cái', 104400, 0, 0, 0, '', 0, 1),
(187, 0, 'KH7KK70110', 'Khung7kk70x110', 'Cái', 120000, 0, 0, 0, '', 0, 1),
(188, 0, 'KH8CK2025', 'Khung8ck20x25', 'Cái', 60000, 0, 0, 0, '', 0, 1),
(189, 0, 'KH8CK2030', 'Khung8ck20x30', 'Cái', 64800, 0, 0, 0, '', 0, 1),
(190, 0, 'KH8CK2535', 'Khung8ck25x35', 'Cái', 73200, 0, 0, 0, '', 0, 1),
(191, 0, 'KH8CK3040', 'Khung8ck30x40', 'Cái', 82800, 0, 0, 0, '', 0, 1),
(192, 0, 'KH8CK3045', 'Khung8ck30x45', 'Cái', 88800, 0, 0, 0, '', 0, 1),
(193, 0, 'KH8CK3550', 'Khung8ck35x50', 'Cái', 98400, 0, 0, 0, '', 0, 1),
(194, 0, 'KH8CK4060', 'Khung8ck40x60', 'Cái', 118800, 0, 0, 0, '', 0, 1),
(195, 0, 'KH8CK5075', 'Khung8ck50x75', 'Cái', 151200, 0, 0, 0, '', 0, 1),
(196, 0, 'KH8CK6090', 'Khung8ck60x90', 'Cái', 186000, 0, 0, 0, '', 0, 1),
(197, 0, 'KH8CK70110', 'Khung8ck70x110', 'Cái', 230400, 0, 0, 0, '', 0, 1),
(198, 0, 'KH8KK2025', 'Khung8kk20x25', 'Cái', 58800, 0, 0, 0, '', 0, 1),
(199, 0, 'KH8KK2030', 'Khung8kk20x30', 'Cái', 61200, 0, 0, 0, '', 0, 1),
(200, 0, 'KH8KK2535', 'Khung8kk25x35', 'Cái', 69600, 0, 0, 0, '', 0, 1),
(201, 0, 'KH8KK3040', 'Khung8kk30x40', 'Cái', 75600, 0, 0, 0, '', 0, 1),
(202, 0, 'KH8KK3045', 'Khung8kk30x45', 'Cái', 79200, 0, 0, 0, '', 0, 1),
(203, 0, 'KH8KK3550', 'Khung8kk35x50', 'Cái', 86400, 0, 0, 0, '', 0, 1),
(204, 0, 'KH8KK4060', 'Khung8kk40x60', 'Cái', 94800, 0, 0, 0, '', 0, 1),
(205, 0, 'KH8KK5075', 'Khung8kk50x75', 'Cái', 112800, 0, 0, 0, '', 0, 1),
(206, 0, 'KH8KK6090', 'Khung8kk60x90', 'Cái', 129600, 0, 0, 0, '', 0, 1),
(207, 0, 'KH8KK70110', 'Khung8kk70x110', 'Cái', 151200, 0, 0, 0, '', 0, 1),
(208, 0, 'KH9CK6090', 'Khung9ck60x90', 'Cái', 228000, 0, 0, 0, '', 0, 1),
(209, 0, 'KH9CK70110', 'Khung9ck70x110', 'Cái', 278400, 0, 0, 0, '', 0, 1),
(210, 0, 'KH9KK6090', 'Khung9kk60x90', 'Cái', 171600, 0, 0, 0, '', 0, 1),
(211, 0, 'KH9KK70110', 'Khung9kk70x110', 'Cái', 199200, 0, 0, 0, '', 0, 1),
(212, 0, 'KHTHO2025', 'Kh.thờ 20x25', 'Cái', 38400, 0, 0, 0, '', 0, 1),
(213, 0, 'KHTHO2030', 'Kh.thờ 20x30', 'Cái', 42000, 34000, 0, 0, '', 0, 1),
(214, 5, 'KM2030', 'Khuyến mãi 20x30', 'Tấm', 0, 0, 0, 600, '', 0, 1),
(215, 4, 'KM2535', 'Khuyến mãi 25x35', 'Tấm', 0, 0, 0, 875, '', 0, 1),
(654, 0, 'THAYPHONG-SCAN-2LAYER', 'Th.phông hình Scan>2layer', 'Hình', 30000, 0, 0, 0, '', 1, 1),
(655, 0, 'GIAYEP3045', 'Giấy ép 30x45', 'Tờ', 1320, 0, 0, 0, '', 0, 1),
(652, 0, 'DESIGN-BABY', 'Design baby,fashion', 'Hình', 20000, 0, 0, 0, '', 1, 1),
(651, 0, 'XHNK', 'Xuất hình ngoại khổ', 'Cm2', 13, 0, 0, 0, '', 1, 1),
(650, 11, 'A.XH1521LU(AFFA)', 'X.hình 15x21 lụa.A', 'Tấm', 2400, 0, 0, 315, '', 0, 1),
(641, 6, 'F.XH0912LU(FUJI)', 'X.hình 9x12 lụa.Fu', 'Tấm', 1000, 0, 0, 117, '', 0, 1),
(640, 0, 'KHBO.VĐ2535', 'Kh bo vàng đen 25x35', 'Cái', 24000, 0, 0, 0, '', 0, 1),
(639, 0, 'KHBO.VĐ2030', 'Kh bo vàng đen 20x30', 'Cái', 18000, 15000, 0, 0, '', 0, 1),
(638, 0, 'KHBO.VĐ2025', 'Kh bo vàng đen 20x25', 'Cái', 16800, 0, 0, 0, '', 0, 1),
(518, 0, 'GCA.S,P.3OTRANG', 'GC Alb Ph 30trang', 'Cuốn', 512000, 0, 0, 0, '', 1, 1),
(635, 0, 'KH329.VT2535', 'Kh 329 vàng trắng 25x35', 'Cái', 33600, 0, 0, 0, '', 0, 1),
(636, 0, 'KH1245NHO2535', 'Kh 1245 nho 25x35', 'Cái', 48000, 0, 0, 0, '', 0, 1),
(637, 0, 'KHBO.VĐ1521', 'Kh bo vàng đen 15x21', 'Cái', 14400, 0, 0, 0, '', 0, 1),
(570, 0, 'GCA.RĐ.THEMTO', 'GC Alb RĐ thêm tờ', 'Tờ', 32500, 0, 0, 0, '', 1, 1),
(557, 0, 'GCA.RĐ.3OTRANG', 'GC Alb RĐ 30trang', 'Cuốn', 668000, 0, 0, 0, '', 1, 1),
(642, 7, 'F.XH1015LU(FUJI)', 'X.hình 10x15 lụa.Fu', 'Tấm', 1200, 0, 0, 150, '', 0, 1),
(643, 6, 'F.XH1318LU(FUJI)', 'X.hình 13x18 lụa.Fu', 'Tấm', 2000, 0, 0, 234, '', 0, 1),
(644, 7, 'F.XH1521LU(FUJI)', 'X.hình 15x21 lụa.Fu', 'Tấm', 3000, 0, 0, 315, '', 0, 1),
(647, 10, 'A.XH0912LU(AFFA)', 'Xuất hình 9x12 lụa.Af', 'Tấm', 900, 0, 0, 117, '', 0, 1),
(648, 11, 'A.XH1015LU(AFFA)', 'X.hình 10x15 lụa.Af', 'Tấm', 1100, 0, 0, 150, '', 0, 1),
(649, 10, 'A.XH1318LU(AFFA)', 'Xuất hình 13x18 lụa.Af', 'Tấm', 1790, 0, 0, 234, '', 0, 1),
(604, 0, 'AL1318(200)', 'Album13x18(200)', 'Cuốn', 54000, 38000, 0, 0, '', 0, 1),
(605, 0, 'AL1318(224)', 'Album13x18(224)', 'Cuốn', 63000, 0, 0, 0, '', 0, 1),
(606, 0, 'AL1318(248)', 'Album13x18(248)', 'Cuốn', 69000, 0, 0, 0, '', 0, 1),
(607, 0, 'AL1318(272)', 'Album13x18(272)', 'Cuốn', 75000, 48800, 0, 0, '', 0, 1),
(608, 0, 'AL1318(304)', 'Album13x18(304)', 'Cuốn', 81000, 0, 0, 0, '', 0, 1),
(588, 0, 'GCA.SM.THEMTO', 'GC Alb SM thêm tờ', 'Tờ', 52000, 0, 0, 0, '', 1, 1),
(583, 0, 'GCA.SM.2OTRANG', 'GC Alb SM 20trang', 'Cuốn', 889000, 0, 0, 0, '', 1, 1),
(589, 0, 'GCA.3D.2OTRANG', 'GC Alb 3D 20trang', 'Cuốn', 1058000, 0, 0, 0, '', 1, 1),
(590, 0, 'GCA.3D.3OTRANG', 'GC Alb 3D 30trang', 'Cuốn', 1240000, 0, 0, 0, '', 1, 1),
(591, 0, 'GCA.3D.THEMTO', 'GC Alb 3D thêm tờ', 'Tờ', 104000, 0, 0, 0, '', 1, 1),
(592, 0, 'KECHI<3550', 'Kẻ chỉ size nhỏ hơn 35x50', 'Tấm', 3000, 0, 0, 0, '', 1, 1),
(593, 0, 'KECHI>3550', 'Kẻ chỉ size lớn hơn 35x50', 'Tấm', 6000, 0, 0, 0, '', 1, 1),
(594, 0, 'CHANGO', 'Chân nhựa khung hình nhỏ', 'Cái', 6000, 0, 0, 0, '', 1, 1),
(595, 0, 'DVD4.7GB', 'DVD 4.7Gb', 'Cái', 5000, 0, 0, 0, '', 0, 1),
(596, 0, 'AL1015(104)', 'Album10x15(104)', 'Cuốn', 27600, 0, 0, 0, '', 0, 1),
(597, 0, 'AL1015(200)', 'Album10x15(200)', 'Cuốn', 42000, 38000, 0, 0, '', 0, 1),
(598, 0, 'AL1318(80)', 'Album13x18(80)', 'Cuốn', 30000, 20000, 0, 0, '', 0, 1),
(599, 0, 'AL1318(104)', 'Album13x18(104)', 'Cuốn', 31800, 23600, 0, 0, '', 0, 1),
(600, 0, 'AL1318(128)', 'Album13x18(128)', 'Cuốn', 42000, 27200, 0, 0, '', 0, 1),
(601, 0, 'AL1318(152)', 'Album13x18(152)', 'Cuốn', 48000, 0, 0, 0, '', 0, 1),
(656, 0, 'RUATHEMTHE', 'Rửa thêm thẻ', 'thẻ', 1500, 0, 0, 0, '', 1, 1),
(603, 0, 'AL1318(176)', 'Album13x18(176)', 'Cuốn', 52200, 34400, 0, 0, '', 0, 1),
(587, 0, 'GCA.SM.30TRANG', 'GC Alb SM 30trang', 'Cuốn', 1071000, 0, 0, 0, '', 1, 1),
(340, 0, 'SAO100', 'Sáo gỗ 100cm', 'Cặp', 42000, 0, 0, 0, '', 0, 1),
(341, 0, 'SAO30', 'Sáo gỗ 30cm', 'Cặp', 18000, 0, 0, 0, '', 0, 1),
(342, 0, 'SAO40', 'Sáo gỗ 40cm', 'Cặp', 20400, 16000, 0, 0, '', 0, 1),
(343, 0, 'SAO50', 'Sáo gỗ 50cm', 'Cặp', 22800, 0, 0, 0, '', 0, 1),
(344, 0, 'SAO60', 'Sáo gỗ 60cm', 'Cặp', 25200, 0, 0, 0, '', 0, 1),
(345, 0, 'SAO70', 'Sáo gỗ 70cm', 'Cặp', 30000, 0, 0, 0, '', 0, 1),
(346, 0, 'SAO80', 'Sáo gỗ 80cm', 'Cặp', 36000, 0, 0, 0, '', 0, 1),
(347, 0, 'SCANFILE', 'Scan lấy file', 'File', 5000, 0, 0, 0, '', 1, 1),
(348, 2, 'SCANTHE', 'Scan+in thẻ', 'Tấm', 25000, 0, 0, 150, '', 0, 1),
(349, 0, 'THAYAO', 'Thay áo thẻ', 'Kiểu', 5000, 0, 0, 0, '', 1, 1),
(350, 2, 'THEGAP', 'Thẻ gấp', 'Kiểu', 30000, 0, 0, 150, '', 0, 1),
(351, 2, 'THETHU', 'Thẻ thường', 'Kiểu', 25000, 0, 0, 150, '', 0, 1),
(490, 4, 'XALB2025', 'Xuất Album 25x40', 'Tờ', 10000, 0, 0, 1000, '', 0, 1),
(491, 4, 'XALB2025', 'Xuất Album 20x50', 'Tờ', 10000, 0, 0, 1000, '', 0, 1),
(492, 5, 'XALB2030', 'Xuất Album 30x40', 'Tờ', 13000, 0, 0, 1200, '', 0, 1),
(493, 4, 'XALB2030', 'Xuất Album 20x60', 'Tờ', 13000, 0, 0, 1200, '', 0, 1),
(494, 4, 'XALB2525', 'Xuất Album 25x50', 'Tờ', 13000, 0, 0, 1250, '', 0, 1),
(495, 5, 'XALB2530', 'Xuất Album 30x50', 'Tờ', 15000, 0, 0, 1500, '', 0, 1),
(496, 4, 'XALB2530', 'Xuất Album 25x60', 'Tờ', 15000, 0, 0, 1500, '', 0, 1),
(497, 0, 'XALB2535', 'Xuất Album 35x50', 'Tờ', 22000, 0, 0, 0, '', 1, 1),
(498, 0, 'XALB2535', 'Xuất Album 25x70', 'Tờ', 22000, 0, 0, 0, '', 1, 1),
(499, 5, 'XALB3030', 'Xuất Album 30x60', 'Tờ', 18000, 0, 0, 1800, '', 0, 1),
(500, 0, 'XALB3040', 'Xuất Album 40x60', 'Tờ', 30000, 0, 0, 0, '', 1, 1),
(501, 0, 'XALB3040', 'Xuất Album 30x80', 'Tờ', 30000, 0, 0, 0, '', 1, 1),
(502, 0, 'XALB3045', 'Xuất Album 45x60', 'Tờ', 34000, 0, 0, 0, '', 1, 1),
(503, 0, 'XALB3045', 'Xuất Album 30x90', 'Tờ', 34000, 0, 0, 0, '', 1, 1),
(504, 0, 'XALB4040', 'Xuất Album 40x80', 'Tờ', 40000, 0, 0, 0, '', 1, 1),
(505, 0, 'GCA.S,P.20TRANG', 'GC Alb Ph 20trang', 'Cuốn', 473000, 0, 0, 0, '', 1, 1),
(382, 1, 'TTHEIN', 'Xếp-In thẻ (4Tấm)', 'Thẻ', 1500, 0, 0, 108, '', 0, 1),
(383, 1, 'TTHEXLY', 'Scan & x.lý thẻ 4', 'Thẻ', 3000, 0, 0, 108, '', 0, 1),
(414, 1, 'F.XH0912LA(FUJI)', 'X.hình 9x12 láng.Fu', 'Tấm', 1000, 0, 0, 117, '', 0, 1),
(415, 2, 'F.XH1015LA(FUJI)', 'X.hình 10x15 láng.Fu', 'Tấm', 1200, 0, 0, 150, '', 0, 1),
(417, 1, 'F.XH1318LA(FUJI)', 'X.hình 13x18 láng.Fu', 'Tấm', 2000, 0, 0, 234, '', 0, 1),
(418, 2, 'F.XH1521LA(FUJI)', 'X.hình 15x21 láng.Fu', 'Tấm', 3000, 0, 0, 315, '', 0, 1),
(419, 4, 'XH2025', 'Xuất hình 20x25', 'Tấm', 5000, 0, 0, 500, '', 0, 1),
(420, 5, 'XH2030', 'Xuất hình 20x30', 'Tấm', 6000, 0, 0, 600, '', 0, 1),
(421, 4, 'XH2530', 'Xuất hình 25x30', 'Tấm', 7500, 0, 0, 750, '', 0, 1),
(422, 4, 'XH2535', 'Xuất hình 25x35', 'Tấm', 9000, 0, 0, 875, '', 0, 1),
(423, 4, 'XH2538', 'Xuất hình 25x38', 'Tấm', 9500, 0, 0, 950, '', 0, 1),
(424, 5, 'XH3040', 'Xuất hình 30x40', 'Tấm', 13000, 0, 0, 1200, '', 0, 1),
(425, 5, 'XH3045', 'Xuất hình 30x45', 'Tấm', 14000, 0, 0, 1350, '', 0, 1),
(489, 2, 'XALB1523', 'Xuất Album 15x46', 'Tờ', 8000, 0, 0, 690, '', 0, 1),
(428, 0, 'XH3550', 'Xuất hình 35x50', 'Tấm', 22000, 0, 0, 0, '', 1, 1),
(488, 5, 'XALB1523', 'Xuất Album 23x30', 'Tờ', 8000, 0, 0, 690, '', 0, 1),
(430, 0, 'XH4050', 'Xuất hình 40x50', 'Tấm', 25000, 0, 0, 0, '', 1, 1),
(431, 0, 'XH4060', 'Xuất hình 40x60', 'Tấm', 29000, 0, 0, 0, '', 1, 1),
(433, 0, 'XH5060', 'Xuất hình 50x60', 'Tấm', 37000, 0, 0, 0, '', 1, 1),
(434, 0, 'XH5070', 'Xuất hình 50x70', 'Tấm', 43000, 0, 0, 0, '', 1, 1),
(435, 0, 'XH5075', 'Xuất hình 50x75', 'Tấm', 46000, 0, 0, 0, '', 1, 1),
(487, 2, 'XALB1521', 'Xuất Album 15x42', 'Tờ', 7000, 0, 0, 630, '', 0, 1),
(437, 0, 'XH6085', 'Xuất hình 60x85', 'Tấm', 62000, 0, 0, 0, '', 1, 1),
(438, 0, 'XH6090', 'Xuất hình 60x90', 'Tấm', 67000, 0, 0, 0, '', 1, 1),
(440, 0, 'XH70110', 'Xuất hình 70x110', 'Tấm', 96000, 0, 0, 0, '', 1, 1),
(486, 5, 'XALB1521', 'Xuất Album 21x30', 'Tờ', 7000, 0, 0, 630, '', 0, 1),
(442, 0, 'XH76110', 'Xuất hình 76x110', 'Tấm', 112000, 0, 0, 0, '', 1, 1),
(484, 4, 'XALB1318', 'Xuất Album 18x26', 'Tờ', 5000, 0, 0, 450, '', 0, 1),
(485, 1, 'XALB1318', 'Xuất Album 13x36', 'Tờ', 5000, 0, 0, 468, '', 0, 1),
(657, 0, 'KHUNGNGOAIKHO', 'Khung ngoại khổ', 'Cái', 1000000, 0, 0, 0, '', 1, 1),
(658, 0, 'EPGONGOAIKHO', 'Ép gỗ ngoại khổ', 'Tấm', 1000000, 0, 0, 0, '', 1, 1),
(659, 0, 'BAOCD', 'Bao CD/DVD', 'Cái', 500, 0, 0, 0, '', 0, 1),
(660, 4, 'XH2020', 'X.hình 20x20', 'Tấm', 6500, 0, 0, 625, '', 0, 1),
(661, 4, 'XH2525', 'X.hình 25x25', 'Tấm', 6500, 0, 0, 625, '', 0, 1),
(662, 5, 'XH3030', 'X.hình 30x30', 'Tấm', 9000, 0, 0, 900, '', 0, 1),
(663, 0, 'XH4040', 'X.hình 40x40', 'Tấm', 19000, 0, 0, 0, '', 1, 1),
(664, 0, 'GIAMEPGO2025', 'Giảm ép gỗ >20x25', 'Lần', -2000, 0, 0, 0, '', 1, 1),
(665, 0, 'GIAMEPGO3550', 'Giảm ép gỗ >35x50', 'Lần', -5000, 0, 0, 0, '', 1, 1),
(666, 0, 'GIAMALBUM', 'Giảm giá Album', 'Lần', -5000, 0, 0, 0, '', 1, 1),
(667, 0, 'CHANTHOGO3OCM', 'Chân thờ gỗ 30cm', 'Cái', 76000, 0, 0, 0, '', 0, 1),
(668, 0, 'CHANTHOGO35CM', 'Chân thờ gỗ 35cm', 'Cái', 82000, 0, 0, 0, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `id` int(10) NOT NULL auto_increment,
  `tinhthanh_id` int(10) NOT NULL,
  `title` varchar(250) collate utf8_unicode_ci default NULL COMMENT 'Ho ten',
  `address` varchar(500) collate utf8_unicode_ci default NULL,
  `picture` varchar(250) collate utf8_unicode_ci default NULL,
  `mst` varchar(200) collate utf8_unicode_ci default NULL,
  `email` varchar(100) collate utf8_unicode_ci default NULL,
  `phone` varchar(100) collate utf8_unicode_ci default NULL,
  `fax` varchar(100) collate utf8_unicode_ci default NULL,
  `datecreated` bigint(20) default NULL,
  `is_nvquay` tinyint(3) default NULL,
  `is_nvxh` tinyint(3) default NULL,
  `status` tinyint(3) unsigned default '1' COMMENT 'Trang thai',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(250) collate utf8_unicode_ci default NULL,
  `address` varchar(250) collate utf8_unicode_ci default NULL,
  `phone` varchar(250) collate utf8_unicode_ci default NULL,
  `tax` int(10) default '0',
  `soluong` int(10) default '2',
  `soluongm` int(10) default '10',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=42 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `phone`, `tax`, `soluong`, `soluongm`) VALUES
(1, 'LAP', 'Nhập địa chỉ Lab', '(08) 99.999.999', 0, 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sys_field`
--

DROP TABLE IF EXISTS `sys_field`;
CREATE TABLE IF NOT EXISTS `sys_field` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `table_id` int(10) default NULL COMMENT 'Label=Bảng&fk_from=sys_table&fk_text=table_name&fk_value=id&isFilter=1',
  `field_name` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Tên field',
  `format_id` int(10) default NULL,
  `Label` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Nhãn',
  `type_id` varchar(200) collate utf8_unicode_ci default NULL,
  `list_show` tinyint(3) default '1' COMMENT 'Label=List&list=false',
  `insert_show` tinyint(3) default '1' COMMENT 'Label=Add&list=false',
  `edit_show` tinyint(3) default '1' COMMENT 'Label=Edit&list=false',
  `edit_width` varchar(10) collate utf8_unicode_ci default NULL,
  `edit_height` varchar(10) collate utf8_unicode_ci default NULL,
  `list_default_orderby` varchar(10) collate utf8_unicode_ci default NULL,
  `list_footer_subtotal` int(3) default '0',
  `list_sortable` int(3) default '0',
  `fk_isMultiLevel` tinyint(3) default '0' COMMENT 'Label=Khóa ngoại - Multilevel&list=false',
  `fk_from` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Khóa ngoại - From&list=false',
  `fk_where` varchar(500) collate utf8_unicode_ci default NULL COMMENT 'Label=Khóa ngoại - Where&list=false',
  `fk_orderby` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Khóa ngoại - Order by&list=false',
  `fk_text` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Khóa ngoại - Text&list=false',
  `fk_value` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Khóa ngoại - Value&list=false',
  `fk_count_sub_total` tinyint(4) default '0',
  `isFilter` tinyint(3) default '0' COMMENT 'Label=Chức năng lọc',
  `position` int(10) default NULL,
  `plugin_function_id` int(10) default NULL,
  `plufin_function_parameter` varchar(400) collate utf8_unicode_ci default NULL,
  `front_list_show` tinyint(4) default '0',
  `front_insert_show` tinyint(4) default '0',
  `front_edit_show` tinyint(4) default '0',
  `front_detail_show` tinyint(4) default '0',
  `check_require` tinyint(3) default '0',
  `check_telephone` tinyint(4) default '0',
  `check_url` tinyint(4) default '0',
  `check_email` tinyint(4) default '0',
  `check_digit` tinyint(4) default '0',
  `check_range` tinyint(4) default '0',
  `check_range_min` bigint(20) default '0',
  `check_range_max` bigint(20) default '0',
  `check_file_extension` tinyint(4) default '0',
  `check_file_extension_list` varchar(100) collate utf8_unicode_ci default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=571 ;

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
(508, 194, 'item_name', 0, 'Tên mặt hàng', '', 1, 1, 1, '', '', '', 0, 1, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
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
(534, 194, 'is_dichvu', 0, 'Mặt hàng là dịch vụ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(535, 195, 'is_nvquay', 0, 'Là nhân viên nhận hình', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(536, 195, 'is_other', 0, 'Nhân viên khác', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(537, 195, 'is_nvxh', 0, 'Nhân viên xuất hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(538, 198, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(539, 198, 'title', 0, 'Tên khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(540, 198, 'quantity', 0, 'Số lượng (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(541, 198, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(542, 198, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(543, 194, 'khogiay_id', 0, 'Loại khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, 'khogiay', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(544, 194, 'dientich', 0, 'Tốn giấy (cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(545, 198, 'quantity_du', 0, 'Số dư hiện tại (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(546, 198, 'datecreated', 0, 'Ngày tạo', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(547, 198, 'dateupdated', 0, 'Ngày cập nhật', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(548, 199, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(549, 199, 'title', 0, 'Tên khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(550, 199, 'quantity', 0, 'Tổng Số lượng (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(551, 199, 'quantity_du', 0, 'Số dư hiện tại (Mét vuông)', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(552, 199, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(553, 199, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(554, 199, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(555, 199, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(556, 200, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(557, 200, 'khogiay_id', 0, 'Loại khổ giấy', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(558, 200, 'title', 0, 'Tên khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(559, 200, 'quantity', 0, 'Số lượng (Cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(560, 200, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(561, 200, 'datecreated', 0, 'Ngày nhập', '', 1, 1, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(562, 200, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 0, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(563, 200, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(568, 200, 'quantity_scroll', 0, 'Roll/cm2', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(564, 208, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(565, 208, 'khogiay_id', 0, 'Loại khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, 'khogiay_category', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(566, 208, 'dientich', 0, 'Diện tích (Cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(567, 208, 'datecreated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(569, 200, 'scroll', 0, 'Tồn kho (Rolls)', '', 1, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 3, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(570, 194, 'price_goc', 0, 'Giá gốc', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `sys_format`
--

DROP TABLE IF EXISTS `sys_format`;
CREATE TABLE IF NOT EXISTS `sys_format` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(200) collate utf8_unicode_ci default NULL,
  `code` varbinary(50) default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(200) collate utf8_unicode_ci default NULL,
  `picture` varchar(250) collate utf8_unicode_ci default NULL,
  `position` int(10) default NULL,
  `status` tinyint(3) default '1',
  PRIMARY KEY  (`id`)
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
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(100) collate utf8_unicode_ci default NULL,
  `code` varchar(20) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
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
  `id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(200) collate utf8_unicode_ci default NULL,
  `function_name` varchar(200) collate utf8_unicode_ci default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `sys_plugin_function`
--

INSERT INTO `sys_plugin_function` (`id`, `title`, `function_name`) VALUES
(1, 'Tính tiền thu_chi', 'tinh_tien_thu_chi'),
(2, 'link_option', 'link_option'),
(3, 'Scroll', 'scroll');

-- --------------------------------------------------------

--
-- Table structure for table `sys_table`
--

DROP TABLE IF EXISTS `sys_table`;
CREATE TABLE IF NOT EXISTS `sys_table` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `table_name` varchar(200) collate utf8_unicode_ci default NULL COMMENT 'Label=Table',
  `title` varchar(200) collate utf8_unicode_ci default NULL,
  `menu` tinyint(3) default '0',
  `custom_link` varchar(200) collate utf8_unicode_ci default NULL,
  `menu_group_id` int(10) default NULL,
  `show_order` tinyint(3) default '1',
  `list_page_size` int(10) default NULL,
  `list_footer` int(3) default '0',
  `position` int(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=212 ;

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
(204, 'nvnhanhinh', 'TK theo NV nhận hình', 1, 'thongkenvnhanhinh.php', 23, 1, 0, 0, 2),
(193, 'thanhtoan', 'Hình thức thanh toán', 1, '', 7, 0, 0, 0, 0),
(190, 'hoadon', 'Lập phiếu', 1, 'hoadon.php', 5, 1, 0, 0, 0),
(191, 'city_vietnam', 'Tỉnh thành', 1, '', 7, 1, 50, 0, 0),
(192, 'khachang', 'Khách hàng', 1, '', 5, 1, 39, 0, 0),
(194, 'mathang', 'Nhập mặt hàng', 1, '', 5, 1, 100, 0, 1),
(195, 'nhanvien', 'Nhân viên', 1, '', 5, 1, 0, 0, 3),
(203, 'chitiet', NULL, 0, NULL, NULL, 1, NULL, 0, NULL),
(197, 'setting', 'Cấu hình hệ thống', 1, '', 1, 1, 0, 0, 5),
(200, 'khogiay', 'Nhập giấy', 1, '', 5, 1, 0, 0, 7),
(199, 'khogiay_category', 'Loại khổ giấy', 0, '', 5, 0, 0, 0, 5),
(211, 'thongkekhogiay', 'Thống kê khổ giấy', 0, 'thongkekhogiay.php', 23, 0, 0, 0, 6),
(202, 'khachhang', 'TK theo khách hàng', 1, 'thongkekhachhang.php', 23, 1, 0, 0, 1),
(205, 'tknhxuathinh', 'TK theo NV xuất hình', 1, 'thongkenvxuathinh.php', 23, 1, 0, 0, 3),
(206, 'tkchitiet', 'TK chi tiết', 1, 'chitiet.php', 23, 1, 0, 1, 4),
(207, 'hangton', 'TK hàng tồn', 1, 'thongkehangton.php', 23, 1, 0, 0, 5),
(208, 'log_khogiay', 'Log khổ giấy', 0, '', 5, 0, 200, 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `thanhtoan`
--

DROP TABLE IF EXISTS `thanhtoan`;
CREATE TABLE IF NOT EXISTS `thanhtoan` (
  `id` int(10) NOT NULL auto_increment,
  `title` varchar(250) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `status` tinyint(3) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `thanhtoan`
--

INSERT INTO `thanhtoan` (`id`, `title`, `description`, `status`) VALUES
(1, 'Chuyển khoản', '&nbsp;Chuyển khoản tại các ngân hàng và thùng ATM trên toàn quốc', 0),
(5, 'Tiền mặt', '&nbsp;Giao tiền mặt<br />', 1),
(6, 'Nợ', '&nbsp;Nợ toàn bộ<br />', 1),
(8, 'Đặt cọc', '&nbsp;Đặt cọc trước<br />', 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster`
--

DROP TABLE IF EXISTS `webmaster`;
CREATE TABLE IF NOT EXISTS `webmaster` (
  `id` int(10) NOT NULL auto_increment,
  `username` varchar(50) collate utf8_unicode_ci default NULL COMMENT 'Thanh vien',
  `password` varchar(50) collate utf8_unicode_ci default NULL COMMENT 'Mat khau',
  `fullname` varchar(100) collate utf8_unicode_ci default NULL COMMENT 'Ho ten',
  `email` varchar(100) collate utf8_unicode_ci default NULL COMMENT 'Email',
  `roleid` int(10) NOT NULL COMMENT 'Role',
  `status` tinyint(3) unsigned default '1' COMMENT 'Trang thai',
  `is_change_webmaster_permission` tinyint(3) default '0',
  `is_view_tabledesign` tinyint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=42 ;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `username`, `password`, `fullname`, `email`, `roleid`, `status`, `is_change_webmaster_permission`, `is_view_tabledesign`) VALUES
(3, 'thuy.tq', '6d230603c695221de25dc34f6bb31a73', 'Mr. Thuy', 'thuy.tq@hotmail.com', 11, 1, 1, 1),
(37, 'admin', '437d2a89191794dae9ba4a893c33f1d3', 'Admin', 'info@lap.cob.vn', 4, 1, 1, 1),
(39, 'nhanvien', 'a2b1511bbeb4b6be747a15dda8670ce4', 'Nhân Viên', 'info@lap.cob.vn', 12, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_permission`
--

DROP TABLE IF EXISTS `webmaster_permission`;
CREATE TABLE IF NOT EXISTS `webmaster_permission` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `webmaster_role_id` int(10) default NULL,
  `table_id` int(10) default NULL,
  `is_list` tinyint(4) default '1',
  `is_insert` tinyint(4) default '1',
  `is_edit` tinyint(4) default '1',
  `is_delete` tinyint(4) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

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
(42, 4, 194, 1, 1, 1, 1),
(43, 4, 197, 1, 1, 1, 1),
(44, 4, 199, 1, 1, 1, 1),
(45, 4, 205, 1, 1, 1, 1),
(46, 4, 206, 1, 1, 1, 1),
(47, 4, 207, 1, 1, 1, 1),
(48, 4, 204, 1, 1, 1, 1),
(49, 4, 200, 1, 1, 1, 1),
(50, 4, 202, 1, 1, 1, 1),
(51, 12, 192, 1, 1, 1, 1),
(52, 12, 203, 1, 1, 1, 1),
(53, 12, 207, 1, 1, 1, 1),
(54, 12, 206, 1, 1, 1, 1),
(55, 4, 208, 1, 1, 1, 1),
(56, 4, 211, 1, 1, 1, 1),
(57, 12, 202, 1, 1, 1, 1),
(58, 12, 204, 1, 1, 1, 1),
(59, 12, 205, 1, 1, 1, 1),
(60, 12, 200, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_roles`
--

DROP TABLE IF EXISTS `webmaster_roles`;
CREATE TABLE IF NOT EXISTS `webmaster_roles` (
  `id` smallint(6) NOT NULL auto_increment COMMENT 'ID',
  `title` varchar(100) collate utf8_unicode_ci default NULL COMMENT 'Role name',
  `position` int(10) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=14 ;

--
-- Dumping data for table `webmaster_roles`
--

INSERT INTO `webmaster_roles` (`id`, `title`, `position`) VALUES
(4, 'Ban Lãnh Đạo', 1),
(11, 'Quản lý hệ thống', 0),
(12, 'Nhân viên', 2),
(13, 'Khách hàng', 3);
