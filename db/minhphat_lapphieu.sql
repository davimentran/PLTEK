-- phpMyAdmin SQL Dump
-- version 3.5.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 04, 2014 at 03:54 PM
-- Server version: 5.5.29-log
-- PHP Version: 5.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `minhphat_lapphieu`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiet`
--

CREATE TABLE IF NOT EXISTS `chitiet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `city_vietnam`
--

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

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sohoadon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khachang_id` int(10) DEFAULT NULL,
  `fullname_sell` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname_dv` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mst` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thanhtoan_id` int(10) DEFAULT NULL,
  `datcoc` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `nhanvien_id` int(10) DEFAULT NULL,
  `nhanvien_quay_id` int(10) DEFAULT NULL,
  `array_mathang_id` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_item_code` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_is_dichvu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_hanghoa` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_donvitinh` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_soluong` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_dongia` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_giamgia` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_ghichu` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `array_khogiay_id` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `array_dientich` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
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
  KEY `datecreated` (`datecreated`),
  KEY `order_week` (`order_week`),
  KEY `sohoadon` (`sohoadon`),
  KEY `nhanvien_id` (`nhanvien_id`),
  KEY `nhanvien_quay_id` (`nhanvien_quay_id`),
  KEY `khachang_id` (`khachang_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=194 ;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id`, `sohoadon`, `khachang_id`, `fullname_sell`, `fullname_dv`, `address`, `mst`, `thanhtoan_id`, `datcoc`, `nhanvien_id`, `nhanvien_quay_id`, `array_mathang_id`, `array_item_code`, `array_is_dichvu`, `array_hanghoa`, `array_donvitinh`, `array_soluong`, `array_dongia`, `array_giamgia`, `array_ghichu`, `array_khogiay_id`, `array_dientich`, `tongtiendonvi`, `tax`, `tienthueGTGT`, `tongsotien`, `tienbangchu`, `ngay`, `thang`, `nam`, `giotao`, `datecreated`, `order_week`, `status`) VALUES
(1, '14O44201', 1, '', 'ANH THOẠI', 'Q.11', '', 5, '0', 4, 1, '417|o0o|604|o0o|', 'F.XH1318LA(FUJI)|o0o|AL1318(200)|o0o|', '0|o0o|0|o0o|', 'X.hình 13x18 láng.Fu|o0o|Album13x18(200)|o0o|', 'Tấm|o0o|Cuốn|o0o|', '10|o0o|1|o0o|', '2000|o0o|54000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|0|o0o|', '234 |o0o|0 |o0o|', '74000', 0, '0', '74000', 'Bảy  mươi bốn  nghìn đồng', 28, 10, 14, '15:52:51', 1414454400, 44, 1),
(2, '14O44202', 2, '', 'CÔNG LỘ', 'Q.11', '', 5, '0', 4, 3, '420|o0o|669|o0o|', 'XH2030|o0o|PINCR2|o0o|', '0|o0o|0|o0o|', 'Xuất hình 20x30|o0o|Pin CR2|o0o|', 'Tấm|o0o|Vỉ|o0o|', '5|o0o|1|o0o|', '6000|o0o|70000|o0o|', '0|o0o|0|o0o|', '', '5|o0o|0|o0o|', '600 |o0o|0 |o0o|', '100000', 0, '0', '100000', 'Một  trăm  nghìn đồng', 28, 10, 14, '15:56:19', 1414454400, 44, 1),
(3, '14O44203', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '50000', 4, 3, '609|o0o|422|o0o|', 'PHUCHOI|o0o|XH2535|o0o|', '1|o0o|0|o0o|', 'Phục hồi 1 mặt|o0o|Xuất hình 25x35|o0o|', 'Mặt|o0o|Tấm|o0o|', '1|o0o|1|o0o|', '30000|o0o|9000|o0o|', '-70000|o0o|-41000|o0o|', '', '0|o0o|4|o0o|', '0 |o0o|875 |o0o|', '150000', 0, '0', '150000', 'Một  trăm  năm  mươi nghìn đồng', 28, 10, 14, '15:58:28', 1414454400, 44, 1),
(4, '14O44204', 2, '', 'CÔNG LỘ', 'Q.11', '', 5, '', 4, 3, '415|o0o|', 'F.XH1015LA(FUJI)|o0o|', '0|o0o|', 'X.hình 10x15 láng.Fu|o0o|', 'Tấm|o0o|', '1000|o0o|', '1200|o0o|', '200000|o0o|', '', '2|o0o|', '234000', '1000000', 0, '0', '1000000', 'Một  triệu đồng', 28, 10, 14, '16:02:46', 1414454400, 44, 1),
(5, '14O44205', 3, '', 'loannie', 'Hochiminh', '', 5, '', 4, 3, '417|o0o|', 'F.XH1318LA(FUJI)|o0o|', '0|o0o|', 'X.hình 13x18 láng.Fu|o0o|', 'Tấm|o0o|', '10|o0o|', '2000|o0o|', '-1000|o0o|', '', '1|o0o|', '1500|o0o|', '21000', 0, '0', '21000', 'Hai  mươi mốt  nghìn đồng', 28, 10, 14, '17:32:23', 1414454400, 44, 1),
(6, '14O44206', 3, '', 'loannie', 'Hochiminh', '', 5, '0', 4, 1, '150|o0o|', 'KH5CK2025|o0o|', '0|o0o|', 'Khung5ck20x25|o0o|', 'Cái|o0o|', '1|o0o|', '36000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '36000', 0, '0', '36000', 'Ba  mươi sáu  nghìn đồng', 28, 10, 14, '19:10:20', 1414454400, 44, 1),
(7, '14O44207', 2, '', 'CÔNG LỘ', 'Q.11', '', 5, '0', 4, 3, '605|o0o|', 'AL1318(224)|o0o|', '0|o0o|', 'Album13x18(224)|o0o|', 'Cuốn|o0o|', '1|o0o|', '63000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '63000', 0, '0', '63000', 'Sáu  mươi ba  nghìn đồng', 28, 10, 14, '19:12:27', 1414454400, 44, 1),
(8, '14O44208', 1, '', 'ANH THOẠI', 'Q.11', '', 5, '0', 4, 2, '418|o0o|', 'F.XH1521LA(FUJI)|o0o|', '0|o0o|', 'X.hình 15x21 láng.Fu|o0o|', 'Tấm|o0o|', '040|o0o|', '3000|o0o|', '0|o0o|', '', '2|o0o|', '315 |o0o|', '120000', 0, '0', '120000', 'Một  trăm  hai  mươi nghìn đồng', 28, 10, 14, '19:14:15', 1414454400, 44, 1),
(9, '14O44209', 2, '', 'CÔNG LỘ', 'Q.11', '', 5, '0', 4, 2, '591|o0o|', 'GCA.3D.THEMTO|o0o|', '1|o0o|', 'GC Alb 3D thêm tờ|o0o|', 'Tờ|o0o|', '10|o0o|', '104000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '1040000', 0, '0', '1040000', 'Một  triệu, bốn  mươi nghìn đồng', 28, 10, 14, '19:15:46', 1414454400, 44, 1),
(10, '14O44410', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '0', 4, 1, '57|o0o|424|o0o|', 'EPGO|o0o|XH3040|o0o|', '1|o0o|0|o0o|', 'Épgo(kbo)30X40|o0o|Xuất hình 30x40|o0o|', 'Tấm|o0o|Tấm|o0o|', '1|o0o|1|o0o|', '40000|o0o|13000|o0o|', '-6000|o0o|0|o0o|', '', '0|o0o|5|o0o|', '0 |o0o|1200 |o0o|', '59000', 0, '0', '59000', 'Năm  mươi chín  nghìn đồng', 30, 10, 14, '13:14:11', 1414627200, 44, 1),
(11, '14O44411', 14, '', 'ke oai', 'DS', '', 5, '0', 4, 2, '643|o0o|606|o0o|', 'XH1318LU(FUJI)|o0o|AB13X18|o0o|', '0|o0o|1|o0o|', 'X.hình 13x18 lụa.Fu|o0o|Album13x18(304)hộp|o0o|', 'Tấm|o0o|Cuốn|o0o|', '10|o0o|1|o0o|', '2000|o0o|65000|o0o|', '-3000|o0o|0|o0o|', '', '6|o0o|0|o0o|', '234 |o0o|0 |o0o|', '88000', 0, '0', '88000', 'Tám  mươi tám  nghìn đồng', 30, 10, 14, '13:27:37', 1414627200, 44, 1),
(12, '14O44412', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '', 4, 2, '601|o0o|', 'AB13X18|o0o|', '1|o0o|', 'Album13x18(80)hộp|o0o|', 'Cuốn|o0o|', '30|o0o|', '35000|o0o|', '6000|o0o|', '', '0|o0o|', '7020', '1044000', 0, '0', '1044000', 'Một  triệu, bốn  mươi bốn  nghìn đồng', 30, 10, 14, '19:24:59', 1414627200, 44, 1),
(13, '14O44412', 3, '', 'kris', 'Hochiminh', '', 5, '', 4, 2, '424|o0o|', 'XH3040|o0o|', '0|o0o|', 'Xuất hình 30x40|o0o|', 'Tấm|o0o|', '5|o0o|', '13000|o0o|', '6000|o0o|', '', '5|o0o|', '7020|o0o|', '59000', 0, '0', '59000', 'Năm  mươi chín  nghìn đồng', 30, 10, 14, '19:24:59', 1414627200, 44, 1),
(14, '14O44514', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '0', 4, 2, '667|o0o|', 'CHỤPTHẺ|o0o|', '0|o0o|', 'chụp thẻ ko gấp|o0o|', 'Cái|o0o|', '1|o0o|', '22000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '22000', 0, '0', '22000', 'Hai  mươi hai  nghìn đồng', 31, 10, 14, '11:43:35', 1414713600, 44, 1),
(15, '14O44514', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '0', 4, 2, '667|o0o|', 'CHỤPTHẺ|o0o|', '0|o0o|', 'chụp thẻ ko gấp|o0o|', 'Cái|o0o|', '1|o0o|', '22000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '22000', 0, '0', '22000', 'Hai  mươi hai  nghìn đồng', 31, 10, 14, '11:43:35', 1414713600, 44, 1),
(16, '14O44516', 3, '', 'KIEU PHUNG', 'Hochiminh', '', 5, '0', 4, 2, '594|o0o|599|o0o|', 'CHỤPKIỂU|o0o|AB13X18|o0o|', '0|o0o|1|o0o|', 'chụp chân dung|o0o|Album13x18(80)dẻo|o0o|', 'kiểu|o0o|Cuốn|o0o|', '4|o0o|1|o0o|', '25000|o0o|25000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|0|o0o|', '243 |o0o|0 |o0o|', '125000', 0, '0', '125000', 'Một  trăm  hai  mươi lăm  nghìn đồng', 31, 10, 14, '11:48:30', 1414713600, 44, 1),
(17, '14O44517', 1, '', 'ANH THOẠI', 'HCM', '', 5, '0', 4, 2, '599|o0o|601|o0o|', 'AB13X18|o0o|AB13X18|o0o|', '1|o0o|1|o0o|', 'Album13x18(80)dẻo|o0o|Album13x18(80)hộp|o0o|', 'Cuốn|o0o|Cuốn|o0o|', '0|o0o|0|o0o|', '25000|o0o|35000|o0o|', '0|o0o|0|o0o|', '', '0|o0o|0|o0o|', '0 |o0o|0 |o0o|', '0', 0, '0', '0', 'Không đồng ! đồng', 31, 10, 14, '11:51:11', 1414713600, 44, 1),
(18, '14O44518', 3, '', 'KIEU PHUNG', 'HCM', '', 5, '0', 4, 2, '667|o0o|', 'CHỤPTHẺ|o0o|', '0|o0o|', 'chụp thẻ ko gấp|o0o|', 'Cái|o0o|', '4|o0o|', '22000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '88000', 0, '0', '88000', 'Tám  mươi tám  nghìn đồng', 31, 10, 14, '11:53:46', 1414713600, 44, 1),
(19, '14O44519', 2, '', 'CÔNG LỘ', 'Q.11', '', 5, '0', 4, 2, '3|o0o|', 'AB15X21|o0o|', '1|o0o|', 'Album15x21(12)dẻo|o0o|', 'Cuốn|o0o|', '2|o0o|', '069|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '138', 0, '0', '138', 'Một  trăm  ba  mươi tám  đồng', 31, 10, 14, '11:59:09', 1414713600, 44, 1),
(20, '14O44520', 12, '', 'ANH QUYỀN', 'HCM', '', 5, '20000', 4, 2, '601|o0o|', 'AB13X18|o0o|', '1|o0o|', 'Album13x18(80)hộp|o0o|', 'Cuốn|o0o|', '2|o0o|', '35000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '70000', 0, '0', '70000', 'Bảy  mươi nghìn đồng', 31, 10, 14, '12:05:05', 1414713600, 44, 1),
(21, '14O44520', 12, '', 'ANH QUYỀN', 'HCM', '', 5, '20000', 4, 2, '601|o0o|', 'AB13X18|o0o|', '1|o0o|', 'Album13x18(80)hộp|o0o|', 'Cuốn|o0o|', '2|o0o|', '35000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '70000', 0, '0', '70000', 'Bảy  mươi nghìn đồng', 31, 10, 14, '12:05:05', 1414713600, 44, 1),
(22, '14O44522', 15, '', 'C NGOAN', 'DS', '', 5, '0', 4, 2, '643|o0o|', 'XH1318LU(FUJI)|o0o|', '0|o0o|', 'X.hình 13x18 lụa.Fu|o0o|', 'Tấm|o0o|', '6|o0o|', '2000|o0o|', '-2000|o0o|', '', '6|o0o|', '234 |o0o|', '14000', 0, '0', '14000', 'Mười  bốn  nghìn đồng', 31, 10, 14, '12:19:50', 1414713600, 44, 1),
(23, '14O44523', 3, '', 'nam', 'Hochiminh', '', 5, '0', 4, 2, '350|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ gấp|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|2|o0o|', '30000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '40000', 0, '0', '40000', 'Bốn  mươi nghìn đồng', 31, 10, 14, '14:46:11', 1414713600, 44, 1),
(24, '14O44524', 3, '', 'ngoc', 'Hochiminh', '', 5, '0', 4, 2, '594|o0o|', 'CHỤPKIỂU|o0o|', '0|o0o|', 'chụp chân dung|o0o|', 'kiểu|o0o|', '80|o0o|', '25000|o0o|', '0|o0o|', '', '1|o0o|', '243 |o0o|', '2000000', 0, '0', '2000000', 'Hai  triệu đồng', 31, 10, 14, '14:52:05', 1414713600, 44, 1),
(25, '14O44525', 3, '', 'pham', 'Hochiminh', '', 8, '', 4, 2, '608|o0o|', 'AB15x21|o0o|', '1|o0o|', 'Album15x21(40)dẻo|o0o|', 'Cuốn|o0o|', '20|o0o|', '25000|o0o|', '100000|o0o|', '', '0|o0o|', '0 |o0o|', '400000', 0, '0', '400000', 'Bốn  trăm  nghìn đồng', 31, 10, 14, '20:03:09', 1414713600, 44, 1),
(26, '14O44526', 3, '', 'nhu y', 'Hochiminh', '', 6, '', 4, 3, '417|o0o|610|o0o|', 'XUAT HINH|o0o|THAYPHONG|o0o|', '0|o0o|1|o0o|', 'X.hình13x18 láng|o0o|thay phông chân dung|o0o|', 'Tấm|o0o|Hình|o0o|', '12|o0o|10|o0o|', '2300|o0o|5000|o0o|', '-7400|o0o|0|o0o|', '', '1|o0o|0|o0o|', '234 |o0o|0 |o0o|', '85000', 0, '0', '85000', 'Tám  mươi lăm  nghìn đồng', 31, 10, 14, '20:14:54', 1414713600, 44, 1),
(27, '14O44526', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 6, '0', 4, 3, '417|o0o|610|o0o|', 'XUAT HINH|o0o|THAYPHONG|o0o|', '0|o0o|1|o0o|', 'X.hình13x18 láng|o0o|thay phông chân dung|o0o|', 'Tấm|o0o|Hình|o0o|', '12|o0o|10|o0o|', '2300|o0o|5000|o0o|', '-7400|o0o|0|o0o|', '', '1|o0o|0|o0o|', '234 |o0o|0 |o0o|', '85000', 0, '0', '85000', 'Tám  mươi lăm  nghìn đồng', 31, 10, 14, '20:14:54', 1414713600, 44, 1),
(28, '14N44628', 3, '', 'c duyen', 'Hochiminh', '', 8, '100000', 5, 2, '609|o0o|53|o0o|', 'PHUCHOI|o0o|EPGO|o0o|', '1|o0o|1|o0o|', 'Phục hồi 1 mặt|o0o|Épgo(kbo)20x25|o0o|', 'Mặt|o0o|Tấm|o0o|', '1|o0o|1|o0o|', '30000|o0o|21000|o0o|', '-90000|o0o|-24000|o0o|', '', '0|o0o|0|o0o|', '0 |o0o|0 |o0o|', '165000', 0, '0', '165000', 'Một  trăm  sáu  mươi lăm  nghìn đồng', 1, 11, 14, '10:31:56', 1414800000, 44, 1),
(29, '14N44629', 16, '', 'quoc thinh', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '10|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '23000', 0, '0', '23000', 'Hai  mươi ba  nghìn đồng', 1, 11, 14, '10:44:35', 1414800000, 44, 1),
(30, '14N44630', 17, '', 'van huynh', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm0|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 1, 11, 14, '12:39:12', 1414800000, 44, 1),
(31, '14N44631', 4, '', 'DUY HOÀN', 'ĐS', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 1, 11, 14, '14:57:37', 1414800000, 44, 1),
(32, '14N44632', 3, '', 'quyen', 'Hochiminh', '', 5, '0', 4, 2, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '1200|o0o|', '-1600|o0o|', '', '2|o0o|', '150 |o0o|', '4000', 0, '0', '4000', 'Bốn  nghìn đồng', 1, 11, 14, '15:03:10', 1414800000, 44, 1),
(33, '14N44633', 3, '', 'tuong vy', 'Hochiminh', '', 5, '0', 4, 2, '351|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ thường|o0o|', 'Kiểu|o0o|', '1|o0o|', '22000|o0o|', '-5000|o0o|', '', '1|o0o|', '117 |o0o|', '27000', 0, '0', '27000', 'Hai  mươi bảy  nghìn đồng', 1, 11, 14, '15:10:55', 1414800000, 44, 1),
(34, '14N44633', 3, '', 'tuong vy', 'Hochiminh', '', 5, '0', 4, 2, '351|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ thường|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|1|o0o|', '22000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '27000', 0, '0', '27000', 'Hai  mươi bảy  nghìn đồng', 1, 11, 14, '15:05:52', 1414800000, 44, 1),
(35, '14N44635', 3, '', 'chu ut', 'Hochiminh', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 1, 11, 14, '15:52:49', 1414800000, 44, 1),
(36, '14N44635', 3, '', 'chu ut', 'Hochiminh', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 1, 11, 14, '15:52:49', 1414800000, 44, 1),
(37, '14N44635', 3, '', 'chu ut', 'Hochiminh', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 1, 11, 14, '15:52:49', 1414800000, 44, 1),
(38, '14N44638', 3, '', 'ANH TUAN', 'Hochiminh', '', 6, '', 4, 3, '417|o0o|641|o0o|', 'XUAT HINH|o0o|XUAT HINH|o0o|', '0|o0o|0|o0o|', 'X.hình13x18 láng|o0o|X.hình 9x12 lụa|o0o|', 'Tấm|o0o|Tấm|o0o|', '28|o0o|2|o0o|', '2300|o0o|800|o0o|', '0|o0o|0|o0o|', '', '1|o0o|6|o0o|', '234', '66000', 0, '0', '66000', 'Sáu  mươi sáu  nghìn đồng', 1, 11, 14, '16:02:24', 1414800000, 44, 1),
(39, '14N44639', 3, '', 'MINH QUANG', 'Hochiminh', '', 6, '0', 5, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 1, 11, 14, '16:09:47', 1414800000, 44, 1),
(40, '14N44640', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 1, 11, 14, '16:12:26', 1414800000, 44, 1),
(41, '14N44641', 3, '', 'KHÁCH VIP', 'Hochiminh', '', 5, '0', 4, 2, '350|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ gấp|o0o|', 'Kiểu|o0o|', '1|o0o|', '30000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '30000', 0, '0', '30000', 'Ba  mươi nghìn đồng', 1, 11, 14, '16:15:25', 1414800000, 44, 1),
(42, '14N44642', 3, '', 'LINH', 'Hochiminh', '', 5, '0', 4, 1, '349|o0o|656|o0o|', 'THAYAO|o0o|THẺ|o0o|', '1|o0o|1|o0o|', 'Thay áo thẻ|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|2|o0o|', '5000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '0|o0o|1|o0o|', '0 |o0o|117 |o0o|', '15000', 0, '0', '15000', 'Mười  lăm  nghìn đồng', 1, 11, 14, '16:18:51', 1414800000, 44, 1),
(43, '14N44643', 3, '', 'NAM', 'Hochiminh', '', 5, '0', 4, 3, '349|o0o|351|o0o|', 'THAYAO|o0o|THẺ|o0o|', '1|o0o|0|o0o|', 'Thay áo thẻ|o0o|Thẻ thường|o0o|', 'Kiểu|o0o|Kiểu|o0o|', '1|o0o|1|o0o|', '5000|o0o|22000|o0o|', '0|o0o|0|o0o|', '', '0|o0o|1|o0o|', '0 |o0o|117 |o0o|', '27000', 0, '0', '27000', 'Hai  mươi bảy  nghìn đồng', 1, 11, 14, '16:28:38', 1414800000, 44, 1),
(44, '14N44644', 6, '', 'PHOTOLAN', 'Q11', '', 8, '042000', 4, 2, '415|o0o|422|o0o|56|o0o|', 'XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|EPGO|o0o|', '0|o0o|0|o0o|1|o0o|', 'X.hình 10x15 láng|o0o|Xuất hình 25x35|o0o|Épgo(kbo)25x35|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|', '35|o0o|2|o0o|02|o0o|', '1200|o0o|10000|o0o|33000|o0o|', '0|o0o|0|o0o|26000|o0o|', '', '2|o0o|4|o0o|0|o0o|', '150 |o0o|875 |o0o|0 |o0o|', '102000', 0, '0', '102000', 'Một  trăm  linh  hai  nghìn đồng', 1, 11, 14, '16:33:10', 1414800000, 44, 1),
(45, '14N44645', 7, '', 'VĂN SÁNG', 'Q11', '', 5, '0', 4, 2, '414|o0o|415|o0o|419|o0o|', 'XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|', '0|o0o|0|o0o|0|o0o|', 'X.hình 9x12 láng|o0o|X.hình 10x15 láng|o0o|Xuất hình 20x25|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|', '5|o0o|184|o0o|1|o0o|', '800|o0o|1200|o0o|5000|o0o|', '-1000|o0o|0|o0o|0|o0o|', '', '1|o0o|2|o0o|4|o0o|', '117 |o0o|150 |o0o|500 |o0o|', '230800', 0, '0', '230800', 'Hai  trăm  ba  mươi nghìn, tám  trăm  đồng', 1, 11, 14, '16:50:32', 1414800000, 44, 1),
(46, '14N44646', 3, '', 'THAI HOA', 'Hochiminh', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '17|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '39100', 0, '0', '39100', 'Ba  mươi chín  nghìn, một  trăm  đồng', 1, 11, 14, '17:15:47', 1414800000, 44, 1),
(47, '14N44647', 2, '', 'CÔNG LỘ', 'Q.11', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '010|o0o|', '2300|o0o|', '|o0o|', '', '1|o0o|', '234 |o0o|', '23000', 0, '0', '23000', 'Hai  mươi ba  nghìn đồng', 1, 11, 14, '17:18:03', 1414800000, 44, 1),
(48, '14N44648', 3, '', 'HOANG HUNG', 'Hochiminh', '', 6, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '200|o0o|', '', '1|o0o|', '234 |o0o|', '9000', 0, '0', '9000', 'Chín  nghìn đồng', 1, 11, 14, '17:21:53', 1414800000, 44, 1),
(49, '14N44648', 3, '', 'HOANG HUNG', 'Hochiminh', '', 6, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '200|o0o|', '', '1|o0o|', '234 |o0o|', '9000', 0, '0', '9000', 'Chín  nghìn đồng', 1, 11, 14, '17:21:53', 1414800000, 44, 1),
(50, '14N44650', 3, '', 'NHU Y', 'Hochiminh', '', 5, '0', 4, 2, '414|o0o|415|o0o|656|o0o|', 'XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|THẺ|o0o|', '0|o0o|0|o0o|1|o0o|', 'X.hình 9x12 láng|o0o|X.hình 10x15 láng|o0o|XF thẻ|o0o|', 'Tấm|o0o|Tấm|o0o|thẻ|o0o|', '2|o0o|112|o0o|1|o0o|', '800|o0o|1200|o0o|5000|o0o|', '|o0o|0|o0o|1000|o0o|', '', '1|o0o|2|o0o|1|o0o|', '117 |o0o|150 |o0o|117 |o0o|', '140000', 0, '0', '140000', 'Một  trăm  bốn  mươi nghìn đồng', 1, 11, 14, '17:27:34', 1414800000, 44, 1),
(51, '14N44651', 3, '', 'mien', 'Hochiminh', '', 5, '0', 5, 3, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '8|o0o|', '5000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '40000', 0, '0', '40000', 'Bốn  mươi nghìn đồng', 1, 11, 14, '17:34:14', 1414800000, 44, 1),
(52, '14N44652', 3, '', 'thoai', 'Hochiminh', '', 5, '0', 4, 3, '351|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ thường|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '3|o0o|3|o0o|', '22000|o0o|5000|o0o|', '1000|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '80000', 0, '0', '80000', 'Tám  mươi nghìn đồng', 1, 11, 14, '17:39:17', 1414800000, 44, 1),
(53, '14N44653', 3, '', 'nhi', 'Hochiminh', '', 5, '0', 5, 3, '417|o0o|418|o0o|', 'XUAT HINH|o0o|XUAT HINH|o0o|', '0|o0o|0|o0o|', 'X.hình13x18 láng|o0o|X.hình 15x21 láng|o0o|', 'Tấm|o0o|Tấm|o0o|', '5|o0o|1|o0o|', '2300|o0o|3500|o0o|', '0|o0o|0|o0o|', '', '1|o0o|2|o0o|', '234 |o0o|315 |o0o|', '15000', 0, '0', '15000', 'Mười  lăm  nghìn đồng', 1, 11, 14, '19:00:49', 1414800000, 44, 1),
(54, '14N44654', 3, '', 'lan', 'Hochiminh', '', 5, '0', 4, 2, '349|o0o|350|o0o|656|o0o|', 'THAYAO|o0o|THẺ|o0o|THẺ|o0o|', '1|o0o|0|o0o|1|o0o|', 'Thay áo thẻ|o0o|Thẻ gấp|o0o|XF thẻ|o0o|', 'Kiểu|o0o|Kiểu|o0o|thẻ|o0o|', '1|o0o|1|o0o|5|o0o|', '5000|o0o|30000|o0o|5000|o0o|', '0|o0o|0|o0o|0|o0o|', '', '0|o0o|1|o0o|1|o0o|', '0 |o0o|117 |o0o|117 |o0o|', '60000', 0, '0', '60000', 'Sáu  mươi nghìn đồng', 1, 11, 14, '19:06:49', 1414800000, 44, 1),
(55, '14N44655', 3, '', 'nhi', 'Hochiminh', '', 5, '0', 5, 2, '674|o0o|', 'MÓC KHÓA|o0o|', '1|o0o|', 'móc khóa thường|o0o|', 'cái|o0o|', '1|o0o|', '25000|o0o|', '-25000|o0o|', '', '0|o0o|', '0 |o0o|', '50000', 0, '0', '50000', 'Năm  mươi nghìn đồng', 1, 11, 14, '19:09:51', 1414800000, 44, 1),
(56, '14N44656', 3, '', 'co ha', 'Hochiminh', '', 5, '0', 4, 3, '417|o0o|215|o0o|79|o0o|', 'XUAT HINH|o0o|TANG|o0o|EP LỤA|o0o|', '0|o0o|0|o0o|1|o0o|', 'X.hình13x18 láng|o0o|TANG 25x35|o0o|Ép lụa1 mặt(40x60)|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|', '94|o0o|1|o0o|1|o0o|', '2300|o0o|0|o0o|18000|o0o|', '-28200|o0o|0|o0o|8000|o0o|', '', '1|o0o|4|o0o|0|o0o|', '234 |o0o|875 |o0o|0 |o0o|', '254400', 0, '0', '254400', 'Hai  trăm  năm  mươi bốn  nghìn, bốn  trăm  đồng', 1, 11, 14, '19:13:47', 1414800000, 44, 1),
(57, '14N44657', 23, '', 'kim do', 'hcm', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 1, 11, 14, '19:36:33', 1414800000, 44, 1),
(58, '14N44658', 3, '', 'chu hong', 'Hochiminh', '', 6, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '16|o0o|', '2300|o0o|', '-11200|o0o|', '', '1|o0o|', '234 |o0o|', '48000', 0, '0', '48000', 'Bốn  mươi tám  nghìn đồng', 1, 11, 14, '19:38:34', 1414800000, 44, 1),
(59, '14N44659', 3, '', 'chij khoa', 'Hochiminh', '', 5, '0', 5, 3, '351|o0o|656|o0o|349|o0o|', 'THẺ|o0o|THẺ|o0o|THAYAO|o0o|', '0|o0o|1|o0o|1|o0o|', 'Thẻ thường|o0o|XF thẻ|o0o|Thay áo thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|Kiểu|o0o|', '3|o0o|3|o0o|3|o0o|', '22000|o0o|5000|o0o|5000|o0o|', '0|o0o|0|o0o|0|o0o|', '', '1|o0o|1|o0o|0|o0o|', '117 |o0o|117 |o0o|0 |o0o|', '96000', 0, '0', '96000', 'Chín  mươi sáu  nghìn đồng', 1, 11, 14, '19:41:13', 1414800000, 44, 1),
(60, '14N44660', 3, '', 'chi anh', 'Hochiminh', '', 5, '0', 4, 3, '351|o0o|349|o0o|656|o0o|', 'THẺ|o0o|THAYAO|o0o|THẺ|o0o|', '0|o0o|1|o0o|1|o0o|', 'Thẻ thường|o0o|Thay áo thẻ|o0o|XF thẻ|o0o|', 'Kiểu|o0o|Kiểu|o0o|thẻ|o0o|', '2|o0o|2|o0o|2|o0o|', '22000|o0o|5000|o0o|5000|o0o|', '0|o0o|0|o0o|0|o0o|', '', '1|o0o|0|o0o|1|o0o|', '117 |o0o|0 |o0o|117 |o0o|', '64000', 0, '0', '64000', 'Sáu  mươi bốn  nghìn đồng', 1, 11, 14, '19:44:11', 1414800000, 44, 1),
(61, '14N44661', 3, '', 'chu thanh', 'Hochiminh', '', 5, '0', 5, 3, '415|o0o|214|o0o|', 'XUẤT HÌNH|o0o|TANG |o0o|', '0|o0o|0|o0o|', 'X.hình 10x15 láng|o0o|TANG 20x30|o0o|', 'Tấm|o0o|Tấm|o0o|', '75|o0o|1|o0o|', '1200|o0o|0|o0o|', '-38000|o0o|0|o0o|', '', '2|o0o|5|o0o|', '150 |o0o|600 |o0o|', '128000', 0, '0', '128000', 'Một  trăm  hai  mươi tám  nghìn đồng', 1, 11, 14, '19:47:30', 1414800000, 44, 1),
(62, '14N44662', 3, '', 'nhu y', 'Hochiminh', '', 6, '0', 4, 3, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '3|o0o|', '5000|o0o|', '6000|o0o|', '', '1|o0o|', '117 |o0o|', '9000', 0, '0', '9000', 'Chín  nghìn đồng', 1, 11, 14, '19:49:23', 1414800000, 44, 1),
(63, '14N44763', 3, '', 'c loan', 'Hochiminh', '', 5, '0', 4, 2, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '35|o0o|', '1200|o0o|', '-18000|o0o|', '', '2|o0o|', '150 |o0o|', '60000', 0, '0', '60000', 'Sáu  mươi nghìn đồng', 2, 11, 14, '08:41:22', 1414886400, 44, 1),
(64, '14N44764', 3, '', 'A HONG', 'Hochiminh', '', 5, '0', 5, 1, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '1200|o0o|', '-3200|o0o|', '', '2|o0o|', '150 |o0o|', '8000', 0, '0', '8000', 'Tám  nghìn đồng', 2, 11, 14, '10:33:31', 1414886400, 44, 1),
(65, '14N44765', 3, '', 'CO MAI', 'Hochiminh', '', 5, '0', 5, 1, '350|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ gấp|o0o|', 'Kiểu|o0o|', '1|o0o|', '30000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '30000', 0, '0', '30000', 'Ba  mươi nghìn đồng', 2, 11, 14, '11:09:54', 1414886400, 44, 1),
(66, '14N44766', 3, '', 'A MINH', 'Hochiminh', '', 5, '0', 5, 1, '350|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ gấp|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|1|o0o|', '30000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '35000', 0, '0', '35000', 'Ba  mươi lăm  nghìn đồng', 2, 11, 14, '14:47:00', 1414886400, 44, 1),
(67, '14N44767', 3, '', 'C LAN', 'Hochiminh', '', 5, '0', 5, 1, '350|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ gấp|o0o|', 'Kiểu|o0o|', '1|o0o|', '30000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '30000', 0, '0', '30000', 'Ba  mươi nghìn đồng', 2, 11, 14, '14:53:15', 1414886400, 44, 1),
(68, '14N44768', 6, '', 'PHOTOLAN', 'Q11', '', 5, '0', 4, 3, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '1200|o0o|', '-400|o0o|', '', '2|o0o|', '150 |o0o|', '4000', 0, '0', '4000', 'Bốn  nghìn đồng', 2, 11, 14, '16:16:16', 1414886400, 44, 1),
(69, '14N44769', 30, '', 'minh thuan', 'hcm', '', 6, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 2, 11, 14, '17:01:02', 1414886400, 44, 1),
(70, '14N44770', 3, '', 'ANNH DUNG', 'Hochiminh', '', 5, '0', 4, 1, '414|o0o|415|o0o|417|o0o|', 'XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|XUAT HINH|o0o|', '0|o0o|0|o0o|0|o0o|', 'X.hình 9x12 láng|o0o|X.hình 10x15 láng|o0o|X.hình13x18 láng|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|', '5|o0o|6|o0o|9|o0o|', '800|o0o|1200|o0o|2300|o0o|', '-5000|o0o|-4800|o0o|-1300|o0o|', '', '1|o0o|2|o0o|1|o0o|', '117 |o0o|150 |o0o|234 |o0o|', '43000', 0, '0', '43000', 'Bốn  mươi ba  nghìn đồng', 2, 11, 14, '17:04:03', 1414886400, 44, 1),
(71, '14N44771', 3, '', 'CO HA', 'Hochiminh', '', 5, '0', 5, 1, '643|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình13x18 lụa|o0o|', 'Tấm|o0o|', '50|o0o|', '2000|o0o|', '-30000|o0o|', '', '6|o0o|', '234 |o0o|', '130000', 0, '0', '130000', 'Một  trăm  ba  mươi nghìn đồng', 2, 11, 14, '17:14:52', 1414861200, 45, 1),
(72, '14N44771', 3, '', 'HANG', 'Hochiminh', '', 5, '0', 4, 3, '350|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ gấp|o0o|', 'Kiểu|o0o|', '1|o0o|', '30000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '30000', 0, '0', '30000', 'Ba  mươi nghìn đồng', 2, 11, 14, '17:27:32', 1414886400, 44, 1),
(73, '14N44772', 3, '', 'ANH VINH', 'Hochiminh', '', 5, '0', 4, 1, '414|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 9x12 láng|o0o|', 'Tấm|o0o|', '1|o0o|', '800|o0o|', '-1200|o0o|', '', '1|o0o|', '117 |o0o|', '2000', 0, '0', '2000', 'Hai  nghìn đồng', 2, 11, 14, '17:30:48', 1414886400, 44, 1),
(74, '14N44773', 3, '', 'CHI THAM', 'Hochiminh', '', 5, '0', 4, 3, '656|o0o|350|o0o|', 'THẺ|o0o|THẺ|o0o|', '1|o0o|0|o0o|', 'XF thẻ|o0o|Thẻ gấp|o0o|', 'thẻ|o0o|Kiểu|o0o|', '1|o0o|1|o0o|', '5000|o0o|30000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '35000', 0, '0', '35000', 'Ba  mươi lăm  nghìn đồng', 2, 11, 14, '17:36:54', 1414886400, 44, 1),
(75, '14N44774', 32, '', 'bo vien', 'hcm', '', 5, '0', 5, 3, '659|o0o|', 'CD|o0o|', '1|o0o|', 'chép CD|o0o|', 'Cái|o0o|', '1|o0o|', '5000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '5000', 0, '0', '5000', 'Năm  nghìn đồng', 2, 11, 14, '17:40:12', 1414886400, 44, 1),
(76, '14N44775', 3, '', 'NHU Y', 'Hochiminh', '', 5, '0', 5, 1, '656|o0o|417|o0o|610|o0o|', 'THẺ|o0o|XUAT HINH|o0o|THAYPHONG|o0o|', '1|o0o|0|o0o|1|o0o|', 'XF thẻ|o0o|X.hình13x18 láng|o0o|thay phông chân dung|o0o|', 'thẻ|o0o|Tấm|o0o|Hình|o0o|', '1|o0o|1|o0o|1|o0o|', '5000|o0o|2300|o0o|5000|o0o|', '0|o0o|0|o0o|-700|o0o|', '', '1|o0o|1|o0o|0|o0o|', '117 |o0o|234 |o0o|0 |o0o|', '13000', 0, '0', '13000', 'Mười  ba  nghìn đồng', 2, 11, 14, '17:41:58', 1414886400, 44, 1),
(77, '14N44776', 3, '', 'KQ', 'Hochiminh', '', 5, '0', 4, 2, '348|o0o|', 'SCAN|o0o|', '0|o0o|', 'Scan+in thẻ|o0o|', 'Tấm|o0o|', '1|o0o|', '15000|o0o|', '0|o0o|', '', '2|o0o|', '117 |o0o|', '15000', 0, '0', '15000', 'Mười  lăm  nghìn đồng', 2, 11, 14, '17:45:37', 1414886400, 44, 1),
(78, '14N44777', 34, '', 'MANH HUNG', 'HCM', '', 6, '0', 5, 1, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '12|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '27600', 0, '0', '27600', 'Hai  mươi bảy  nghìn, sáu  trăm  đồng', 2, 11, 14, '18:15:51', 1414886400, 44, 1),
(79, '14N44778', 12, '', 'ANH QUYỀN', 'Q11', '', 6, '0', 4, 1, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '256|o0o|', '1200|o0o|', '200|o0o|', '', '2|o0o|', '150 |o0o|', '307000', 0, '0', '307000', 'Ba  trăm  linh  bảy  nghìn đồng', 2, 11, 14, '18:19:28', 1414886400, 44, 1),
(80, '14N44779', 7, '', 'VĂN SÁNG', 'Q11', '', 5, '0', 4, 1, '414|o0o|417|o0o|', 'XUẤT HÌNH|o0o|XUAT HINH|o0o|', '0|o0o|0|o0o|', 'X.hình 9x12 láng|o0o|X.hình13x18 láng|o0o|', 'Tấm|o0o|Tấm|o0o|', '18|o0o|2|o0o|', '800|o0o|2300|o0o|', '0400|o0o|600|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|234 |o0o|', '18000', 0, '0', '18000', 'Mười  tám  nghìn đồng', 2, 11, 14, '18:22:27', 1414886400, 44, 1),
(81, '14N44780', 3, '', 'chi lien', 'Hochiminh', '', 5, '0', 4, 3, '348|o0o|656|o0o|', 'SCAN|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Scan+in thẻ|o0o|XF thẻ|o0o|', 'Tấm|o0o|thẻ|o0o|', '1|o0o|1|o0o|', '15000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '2|o0o|1|o0o|', '117 |o0o|117 |o0o|', '20000', 0, '0', '20000', 'Hai  mươi nghìn đồng', 2, 11, 14, '18:24:38', 1414886400, 44, 1),
(82, '14N44781', 3, '', 'kieu oanh', 'Hochiminh', '', 5, '0', 5, 1, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '13|o0o|', '1200|o0o|', '-6400|o0o|', '', '2|o0o|', '150 |o0o|', '22000', 0, '0', '22000', 'Hai  mươi hai  nghìn đồng', 2, 11, 14, '18:42:14', 1414886400, 44, 1),
(83, '14N44782', 3, '', 'kieu oanh', 'Hochiminh', '', 5, '0', 4, 3, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '3|o0o|', '5000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '15000', 0, '0', '15000', 'Mười  lăm  nghìn đồng', 2, 11, 14, '18:56:23', 1414886400, 44, 1),
(84, '14N44783', 3, '', 'chu anh dung', 'Hochiminh', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '13800', 0, '0', '13800', 'Mười  ba  nghìn, tám  trăm  đồng', 2, 11, 14, '19:15:13', 1414886400, 44, 1),
(85, '14N44784', 3, '', 'ai', 'Hochiminh', '', 5, '0', 4, 3, '350|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ gấp|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|3|o0o|', '30000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '45000', 0, '0', '45000', 'Bốn  mươi lăm  nghìn đồng', 2, 11, 14, '19:19:19', 1414886400, 44, 1),
(86, '14N44785', 3, '', 'kien vuong', 'Hochiminh', '', 5, '0', 4, 3, '420|o0o|422|o0o|423|o0o|424|o0o|54|o0o|56|o0o|57|o0o|', 'XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|EPGO|o0o|EPGO|o0o|EPGO|o0o|', '0|o0o|0|o0o|0|o0o|0|o0o|1|o0o|1|o0o|1|o0o|', 'Xuất hình 20x30|o0o|Xuất hình 25x35|o0o|Xuất hình 25x38|o0o|Xuất hình 30x40|o0o|Épgo(kbo)20x30|o0o|Épgo(kbo)25x35|o0o|Épgo(kbo)30X40|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|', '2|o0o|1|o0o|1|o0o|1|o0o|2|o0o|2|o0o|1|o0o|', '6000|o0o|10000|o0o|12000|o0o|17000|o0o|24000|o0o|33000|o0o|40000|o0o|', '-18000|o0o|-12000|o0o|-13000|o0o|-13000|o0o|-52000|o0o|-79000|o0o|-45000|o0o|', '', '5|o0o|4|o0o|4|o0o|5|o0o|0|o0o|0|o0o|0|o0o|', '600 |o0o|875 |o0o|950 |o0o|1200 |o0o|0 |o0o|0 |o0o|0 |o0o|', '437000', 0, '0', '437000', 'Bốn  trăm  ba  mươi bảy  nghìn đồng', 2, 11, 14, '19:48:16', 1414886400, 44, 1),
(87, '14N45102', 16, '', 'quoc thinh', 'ds', '', 5, '0', 5, 2, '659|o0o|', 'CD|o0o|', '1|o0o|', 'chép CD|o0o|', 'Cái|o0o|', '1|o0o|', '5000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '5000', 0, '0', '5000', 'Năm  nghìn đồng', 3, 11, 14, '09:31:47', 1414972800, 45, 1),
(88, '14N45103', 3, '', 'nhan', 'Hochiminh', '', 5, '0', 5, 2, '351|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ thường|o0o|', 'Kiểu|o0o|', '1|o0o|', '22000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '22000', 0, '0', '22000', 'Hai  mươi hai  nghìn đồng', 3, 11, 14, '09:33:02', 1414972800, 45, 1),
(89, '14N45104', 35, '', 'minh thao', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 3, 11, 14, '09:45:51', 1414972800, 45, 1),
(90, '14N45105', 3, '', 'c hoang', 'Hochiminh', '', 5, '0', 5, 2, '643|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình13x18 lụa|o0o|', 'Tấm|o0o|', '6|o0o|', '2000|o0o|', '-6000|o0o|', '', '6|o0o|', '234 |o0o|', '18000', 0, '0', '18000', 'Mười  tám  nghìn đồng', 3, 11, 14, '09:55:14', 1414972800, 45, 1),
(91, '14N45106', 3, '', 'y lab', 'Hochiminh', '', 5, '', 5, 2, '643|o0o|606|o0o|', 'XUẤT HÌNH|o0o|AB13X18|o0o|', '0|o0o|1|o0o|', 'X.hình13x18 lụa|o0o|Album13x18(304)hộp|o0o|', 'Tấm|o0o|Cuốn|o0o|', '226|o0o|1|o0o|', '2000|o0o|65000|o0o|', '0|o0o|-40000|o0o|', '', '6|o0o|0|o0o|', '234 |o0o|0 |o0o|', '557000', 0, '0', '557000', 'Năm  trăm  năm  mươi bảy  nghìn đồng', 3, 11, 14, '10:23:07', 1414972800, 45, 1),
(92, '14N45107', 36, '', 'bo vien', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 3, 11, 14, '10:31:56', 1414972800, 45, 1),
(93, '14N45108', 37, '', 'nhu y', 'hcm', '', 5, '0', 5, 2, '422|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'Xuất hình 25x35|o0o|', 'Tấm|o0o|', '3|o0o|', '10000|o0o|', '-27000|o0o|', '', '4|o0o|', '875 |o0o|', '57000', 0, '0', '57000', 'Năm  mươi bảy  nghìn đồng', 3, 11, 14, '10:35:26', 1414972800, 45, 1),
(94, '14N45109', 38, '', 'huynh tung', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 3, 11, 14, '10:46:14', 1414972800, 45, 1),
(95, '14N45110', 39, '', 'c phung', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 3, 11, 14, '10:48:56', 1414972800, 45, 1),
(96, '14N45111', 14, '', 'ke oai', 'DS', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 3, 11, 14, '10:51:59', 1414972800, 45, 1),
(97, '14N45112', 7, '', 'VĂN SÁNG', 'Q11', '', 5, '0', 5, 2, '414|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 9x12 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '800|o0o|', '-800|o0o|', '', '1|o0o|', '117 |o0o|', '4000', 0, '0', '4000', 'Bốn  nghìn đồng', 3, 11, 14, '10:56:38', 1414972800, 45, 1),
(98, '14N45113', 35, '', 'minh thao', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '25|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '57500', 0, '0', '57500', 'Năm  mươi bảy  nghìn, năm  trăm  đồng', 3, 11, 14, '10:58:11', 1414972800, 45, 1),
(99, '14N45114', 3, '', 'a phat', 'Hochiminh', '', 5, '0', 5, 2, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '2|o0o|', '5000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '10000', 0, '0', '10000', 'Mười  nghìn đồng', 3, 11, 14, '10:59:27', 1414972800, 45, 1),
(100, '14N45115', 40, '', 'cong thanh', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '31|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '71300', 0, '0', '71300', 'Bảy  mươi mốt  nghìn, ba  trăm  đồng', 3, 11, 14, '11:39:36', 1414972800, 45, 1),
(101, '14N45116', 33, '', 'dinh hoang', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 3, 11, 14, '11:40:59', 1414972800, 45, 1),
(102, '14N45117', 41, '', 'xuan phi', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 3, 11, 14, '11:44:00', 1414972800, 45, 1),
(103, '14N45118', 42, '', 'dang dung', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 3, 11, 14, '11:53:58', 1414972800, 45, 1),
(104, '14N45119', 30, '', 'minh thuan', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '15|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '34500', 0, '0', '34500', 'Ba  mươi bốn  nghìn, năm  trăm  đồng', 3, 11, 14, '11:54:58', 1414972800, 45, 1),
(105, '14N45120', 34, '', 'MANH HUNG', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '10|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '23000', 0, '0', '23000', 'Hai  mươi ba  nghìn đồng', 3, 11, 14, '11:58:36', 1414972800, 45, 1),
(106, '14N45121', 33, '', 'dinh hoang', 'hcm', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '23000', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 3, 11, 14, '12:00:05', 1414972800, 45, 1),
(107, '14N45122', 3, '', 'c chau', 'Hochiminh', '', 5, '0', 5, 2, '642|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình10x15 lụa|o0o|', 'Tấm|o0o|', '4|o0o|', '1200|o0o|', '-3200|o0o|', '', '7|o0o|', '150 |o0o|', '8000', 0, '0', '8000', 'Tám  nghìn đồng', 3, 11, 14, '12:30:46', 1414972800, 45, 1),
(108, '14N45123', 43, '', 'tien hung', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 3, 11, 14, '12:48:09', 1414972800, 45, 1),
(109, '14N45124', 41, '', 'xuan phi', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 3, 11, 14, '13:08:46', 1414972800, 45, 1),
(110, '14N45125', 3, '', 'trang dai', 'Hochiminh', '', 5, '0', 5, 2, '350|o0o|', 'THẺ|o0o|', '0|o0o|', 'Thẻ gấp|o0o|', 'Kiểu|o0o|', '1|o0o|', '30000|o0o|', '0|o0o|', '', '1|o0o|', '117', '30000', 0, '0', '30000', 'Ba  mươi nghìn đồng', 3, 11, 14, '13:09:56', 1414972800, 45, 1),
(111, '14N45126', 44, '', 'c thao', 'hcm', '', 5, '0', 4, 2, '420|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'Xuất hình 20x30|o0o|', 'Tấm|o0o|', '3|o0o|', '6000|o0o|', '-6000|o0o|', '', '5|o0o|', '600 |o0o|', '24000', 0, '0', '24000', 'Hai  mươi bốn  nghìn đồng', 3, 11, 14, '13:31:06', 1414972800, 45, 1),
(112, '14N45127', 3, '', 'a tan', 'Hochiminh', '', 5, '0', 5, 2, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '1|o0o|', '5000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '5000', 0, '0', '5000', 'Năm  nghìn đồng', 3, 11, 14, '13:36:21', 1414972800, 45, 1),
(113, '14N45128', 25, '', 'thanh tam', 'ds', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '9200', 0, '0', '9200', 'Chín  nghìn, hai  trăm  đồng', 3, 11, 14, '13:38:16', 1414972800, 45, 1),
(114, '14N45129', 39, '', 'c phung', 'ds', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '13800', 0, '0', '13800', 'Mười  ba  nghìn, tám  trăm  đồng', 3, 11, 14, '13:39:47', 1414972800, 45, 1),
(115, '14N45130', 38, '', 'huynh tung', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 3, 11, 14, '14:06:18', 1414972800, 45, 1),
(116, '14N45131', 34, '', 'MANH HUNG', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 3, 11, 14, '14:07:10', 1414972800, 45, 1),
(117, '14N45132', 31, '', 'kim linh', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 3, 11, 14, '14:21:07', 1414972800, 45, 1),
(118, '14N45133', 41, '', 'xuan phi', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 3, 11, 14, '14:44:53', 1414972800, 45, 1),
(119, '14N45134', 3, '', 'kien vuong', 'Hochiminh', '', 8, '400000', 4, 2, '420|o0o|54|o0o|422|o0o|56|o0o|423|o0o|477|o0o|54|o0o|', 'XUẤT HÌNH|o0o|EPGO|o0o|XUẤT HÌNH|o0o|EPGO|o0o|XUẤT HÌNH|o0o|EPGO|o0o|EPGO|o0o|', '0|o0o|1|o0o|0|o0o|1|o0o|0|o0o|1|o0o|1|o0o|', 'Xuất hình 20x30|o0o|Épgo(kbo)20x30|o0o|Xuất hình 25x35|o0o|Épgo(kbo)25x35|o0o|Xuất hình 25x38|o0o|Épgo(kbo)25x38|o0o|Épgo(kbo)20x30|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|Tấm|o0o|', '13|o0o|13|o0o|2|o0o|2|o0o|1|o0o|1|o0o|2|o0o|', '6000|o0o|24000|o0o|10000|o0o|33000|o0o|12000|o0o|35000|o0o|24000|o0o|', '-88000|o0o|-338000|o0o|-24000|o0o|-74000|o0o|-13000|o0o|-40000|o0o|-52000|o0o|', '', '5|o0o|0|o0o|4|o0o|0|o0o|4|o0o|0|o0o|0|o0o|', '600 |o0o|0 |o0o|875 |o0o|0 |o0o|950 |o0o|0 |o0o|0 |o0o|', '1200000', 0, '0', '1200000', 'Một  triệu, hai  trăm  nghìn đồng', 3, 11, 14, '15:15:47', 1414972800, 45, 1),
(120, '14N45135', 35, '', 'minh thao', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 3, 11, 14, '15:41:55', 1414972800, 45, 1),
(121, '14N45136', 41, '', 'xuan phi', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 3, 11, 14, '15:42:49', 1414972800, 45, 1),
(122, '14N45137', 35, '', 'minh thao', 'ds', '', 6, '0', 5, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 3, 11, 14, '15:52:37', 1414972800, 45, 1),
(123, '14N45138', 6, '', 'PHOTOLAN', 'Q11', '', 6, '0', 4, 3, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '1200|o0o|', '0|o0o|', '', '2|o0o|', '150 |o0o|', '8400', 0, '0', '8400', 'Tám  nghìn, bốn  trăm  đồng', 3, 11, 14, '15:53:46', 1414972800, 45, 1),
(124, '14N45139', 8, '', 'VŨ HÀ (ÁO)', 'Q11', '', 6, '0', 5, 3, '656|o0o|610|o0o|', 'THẺ|o0o|THAYPHONG|o0o|', '1|o0o|1|o0o|', 'XF thẻ|o0o|thay phông chân dung|o0o|', 'thẻ|o0o|Hình|o0o|', '3|o0o|1|o0o|', '5000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|0|o0o|', '117 |o0o|0 |o0o|', '20000', 0, '0', '20000', 'Hai  mươi nghìn đồng', 3, 11, 14, '15:57:23', 1414972800, 45, 1),
(125, '14N45140', 43, '', 'tien hung', 'ds', '', 5, '0', 4, 1, '417|o0o|422|o0o|', 'XUAT HINH|o0o|XUẤT HÌNH|o0o|', '0|o0o|0|o0o|', 'X.hình13x18 láng|o0o|Xuất hình 25x35|o0o|', 'Tấm|o0o|Tấm|o0o|', '5|o0o|1|o0o|', '2300|o0o|10000|o0o|', '0|o0o|-4000|o0o|', '', '1|o0o|4|o0o|', '234 |o0o|875 |o0o|', '25500', 0, '0', '25500', 'Hai  mươi lăm  nghìn, năm  trăm  đồng', 3, 11, 14, '16:30:37', 1414972800, 45, 1),
(126, '14N45141', 43, '', 'tien hung', 'ds', '', 5, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 3, 11, 14, '16:42:47', 1414972800, 45, 1),
(127, '14N45142', 35, '', 'minh thao', 'ds', '', 6, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '100|o0o|', '', '1|o0o|', '234 |o0o|', '4500', 0, '0', '4500', 'Bốn  nghìn, năm  trăm  đồng', 3, 11, 14, '16:44:59', 1414972800, 45, 1),
(128, '14N45143', 30, '', 'minh thuan', 'hcm', '', 6, '0', 5, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '13800', 0, '0', '13800', 'Mười  ba  nghìn, tám  trăm  đồng', 3, 11, 14, '17:12:28', 1414972800, 45, 1),
(129, '14N45144', 11, '', 'CÔ HOA ', 'Q11', '', 6, '0', 4, 3, '659|o0o|', 'CD|o0o|', '0|o0o|', 'chép CD|o0o|', 'Cái|o0o|', '3|o0o|', '5000|o0o|', '0|o0o|', '', '0|o0o|', '0 |o0o|', '15000', 0, '0', '15000', 'Mười  lăm  nghìn đồng', 3, 11, 14, '18:43:32', 1414972800, 45, 1),
(130, '14N45145', 11, '', 'CÔ HOA ', 'Q11', '', 6, '0', 4, 3, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '46|o0o|', '2300|o0o|', '13800|o0o|', '', '1|o0o|', '234 |o0o|', '92000', 0, '0', '92000', 'Chín  mươi hai  nghìn đồng', 3, 11, 14, '19:09:03', 1414972800, 45, 1),
(131, '14N45146', 8, '', 'VŨ HÀ (ÁO)', 'Q11', '', 5, '0', 4, 3, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '152|o0o|', '1200|o0o|', '15400|o0o|', '', '2|o0o|', '150 |o0o|', '167000', 0, '0', '167000', 'Một  trăm  sáu  mươi bảy  nghìn đồng', 3, 11, 14, '19:10:33', 1414947600, 45, 1),
(132, '14N45247', 3, '', 'co ngoc', 'Hochiminh', '', 6, '0', 5, 2, '643|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình13x18 lụa|o0o|', 'Tấm|o0o|', '22|o0o|', '2000|o0o|', '-13000|o0o|', '', '6|o0o|', '234 |o0o|', '57000', 0, '0', '57000', 'Năm  mươi bảy  nghìn đồng', 4, 11, 14, '16:23:00', 1415034000, 45, 1),
(133, '14N45248', 3, '', 'tuyen', 'q11', '', 5, '0', 5, 2, '351|o0o|349|o0o|656|o0o|', 'THẺ|o0o|THAYAO|o0o|THẺ|o0o|', '0|o0o|1|o0o|1|o0o|', 'Thẻ thường|o0o|Thay áo thẻ|o0o|XF thẻ|o0o|', 'Kiểu|o0o|Kiểu|o0o|thẻ|o0o|', '1|o0o|1|o0o|1|o0o|', '22000|o0o|5000|o0o|5000|o0o|', '0|o0o|0|o0o|0|o0o|', '', '1|o0o|0|o0o|1|o0o|', '117 |o0o|0 |o0o|117 |o0o|', '32000', 0, '0', '32000', 'Ba  mươi hai  nghìn đồng', 4, 11, 14, '16:25:59', 1415034000, 45, 1),
(134, '14N45248', 3, '', 'tuyen', 'q11', '', 5, '0', 5, 2, '351|o0o|349|o0o|656|o0o|', 'THẺ|o0o|THAYAO|o0o|THẺ|o0o|', '0|o0o|1|o0o|1|o0o|', 'Thẻ thường|o0o|Thay áo thẻ|o0o|XF thẻ|o0o|', 'Kiểu|o0o|Kiểu|o0o|thẻ|o0o|', '1|o0o|1|o0o|1|o0o|', '22000|o0o|5000|o0o|5000|o0o|', '0|o0o|0|o0o|0|o0o|', '', '1|o0o|0|o0o|1|o0o|', '117 |o0o|0 |o0o|117 |o0o|', '32000', 0, '0', '32000', 'Ba  mươi hai  nghìn đồng', 4, 11, 14, '16:25:59', 1415034000, 45, 1),
(135, '14N45250', 39, '', 'c phung', 'ds', '', 6, '0', 5, 2, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '6|o0o|', '5000|o0o|', '12000|o0o|', '', '1|o0o|', '117 |o0o|', '18000', 0, '0', '18000', 'Mười  tám  nghìn đồng', 4, 11, 14, '17:59:49', 1415034000, 45, 1),
(136, '14N45251', 39, '', 'c phung', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 4, 11, 14, '18:37:11', 1415034000, 45, 1),
(137, '14N45252', 3, '', 'thanh', 'Hochiminh', '', 8, '50000', 5, 2, '415|o0o|675|o0o||o0o|', 'XUẤT HÌNH|o0o|MÓC KHÓA |o0o||o0o|', '0|o0o|1|o0o||o0o|', 'X.hình 10x15 láng|o0o|móc khóa chùm |o0o||o0o|', 'Tấm|o0o|cái|o0o||o0o|', '25|o0o|1|o0o|0|o0o|', '1200|o0o|40000|o0o||o0o|', '-20000|o0o|-40000|o0o|0|o0o|', '', '2|o0o|0|o0o||o0o|', '150 |o0o|0 |o0o||o0o|', '130000', 0, '0', '130000', 'Một  trăm  ba  mươi nghìn đồng', 4, 11, 14, '18:38:41', 1415034000, 45, 1),
(138, '14N45253', 34, '', 'MANH HUNG', 'HCM', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 4, 11, 14, '18:41:54', 1415034000, 45, 1),
(139, '14N45254', 30, '', 'minh thuan', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 4, 11, 14, '18:43:18', 1415034000, 45, 1),
(140, '14N45255', 45, '', 'a thao', 'q11', '', 5, '0', 5, 2, '643|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình13x18 lụa|o0o|', 'Tấm|o0o|', '67|o0o|', '2000|o0o|', '0|o0o|', '', '6|o0o|', '234 |o0o|', '134000', 0, '0', '134000', 'Một  trăm  ba  mươi bốn  nghìn đồng', 4, 11, 14, '18:46:00', 1415034000, 45, 1);
INSERT INTO `hoadon` (`id`, `sohoadon`, `khachang_id`, `fullname_sell`, `fullname_dv`, `address`, `mst`, `thanhtoan_id`, `datcoc`, `nhanvien_id`, `nhanvien_quay_id`, `array_mathang_id`, `array_item_code`, `array_is_dichvu`, `array_hanghoa`, `array_donvitinh`, `array_soluong`, `array_dongia`, `array_giamgia`, `array_ghichu`, `array_khogiay_id`, `array_dientich`, `tongtiendonvi`, `tax`, `tienthueGTGT`, `tongsotien`, `tienbangchu`, `ngay`, `thang`, `nam`, `giotao`, `datecreated`, `order_week`, `status`) VALUES
(141, '14N45256', 3, '', 'a minh', 'Hochiminh', '', 5, '0', 5, 2, '350|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ gấp|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|1|o0o|', '30000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '35000', 0, '0', '35000', 'Ba  mươi lăm  nghìn đồng', 4, 11, 14, '18:47:02', 1415034000, 45, 1),
(142, '14N45257', 3, '', 'a han', 'Hochiminh', '', 5, '0', 5, 2, '350|o0o|656|o0o|', 'THẺ|o0o|THẺ|o0o|', '0|o0o|1|o0o|', 'Thẻ gấp|o0o|XF thẻ|o0o|', 'Kiểu|o0o|thẻ|o0o|', '1|o0o|2|o0o|', '30000|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|1|o0o|', '117 |o0o|117 |o0o|', '40000', 0, '0', '40000', 'Bốn  mươi nghìn đồng', 4, 11, 14, '18:48:53', 1415034000, 45, 1),
(143, '14N45258', 3, '', 'c yen', 'Hochiminh', '', 5, '0', 5, 2, '642|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình10x15 lụa|o0o|', 'Tấm|o0o|', '198|o0o|', '1200|o0o|', '-97400|o0o|', '', '7|o0o|', '150 |o0o|', '335000', 0, '0', '335000', 'Ba  trăm  ba  mươi lăm  nghìn đồng', 4, 11, 14, '18:50:22', 1415034000, 45, 1),
(144, '14N45259', 35, '', 'minh thao', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '10|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '23000', 0, '0', '23000', 'Hai  mươi ba  nghìn đồng', 4, 11, 14, '18:52:47', 1415034000, 45, 1),
(145, '14N45260', 46, '', 'c toan', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 4, 11, 14, '19:59:09', 1415034000, 45, 1),
(146, '14N45261', 48, '', 'c khon', 'ds', '', 5, '0', 5, 2, '417|o0o|659|o0o|', 'XUAT HINH|o0o|CD|o0o|', '0|o0o|0|o0o|', 'X.hình13x18 láng|o0o|chép CD|o0o|', 'Tấm|o0o|Cái|o0o|', '7|o0o|1|o0o|', '2300|o0o|5000|o0o|', '0|o0o|0|o0o|', '', '1|o0o|0|o0o|', '234 |o0o|0 |o0o|', '21100', 0, '0', '21100', 'Hai  mươi mốt  nghìn, một  trăm  đồng', 4, 11, 14, '20:00:22', 1415034000, 45, 1),
(147, '14N45262', 51, '', 'van hoa', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 4, 11, 14, '20:03:30', 1415034000, 45, 1),
(148, '14N45263', 50, '', 'c truong', 'ds', '', 6, '', 5, 2, '417|o0o|643|o0o|10|o0o|', 'XUAT HINH|o0o|XUẤT HÌNH|o0o|DVD|o0o|', '0|o0o|0|o0o|0|o0o|', 'X.hình13x18 láng|o0o|X.hình13x18 lụa|o0o|chép dvd|o0o|', 'Tấm|o0o|Tấm|o0o|Cái|o0o|', '13|o0o|225|o0o|1|o0o|', '2300|o0o|2000|o0o|15000|o0o|', '0|o0o|0|o0o|0|o0o|', '', '1|o0o|6|o0o|0|o0o|', '234 |o0o|234 |o0o|0 |o0o|', '494900', 0, '0', '494900', 'Bốn  trăm  chín  mươi bốn  nghìn, chín  trăm  đồng', 4, 11, 14, '20:04:17', 1415034000, 45, 1),
(149, '14N45264', 6, '', 'PHOTOLAN', 'Q11', '', 5, '0', 5, 2, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '1200|o0o|', '-800|o0o|', '', '2|o0o|', '150 |o0o|', '8000', 0, '0', '8000', 'Tám  nghìn đồng', 4, 11, 14, '20:06:02', 1415034000, 45, 1),
(150, '14N45265', 24, '', 'van khiem', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '15|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '34500', 0, '0', '34500', 'Ba  mươi bốn  nghìn, năm  trăm  đồng', 4, 11, 14, '20:07:14', 1415034000, 45, 1),
(151, '14N45266', 24, '', 'van khiem', 'hcm', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 4, 11, 14, '20:10:34', 1415034000, 45, 1),
(152, '14N45267', 21, '', 'minh quang', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 4, 11, 14, '20:11:39', 1415034000, 45, 1),
(153, '14N45268', 20, '', 'anh tuan', 'hcm', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '21|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '48300', 0, '0', '48300', 'Bốn  mươi tám  nghìn, ba  trăm  đồng', 4, 11, 14, '20:12:38', 1415034000, 45, 1),
(154, '14N45269', 38, '', 'huynh tung', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '21|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '48300', 0, '0', '48300', 'Bốn  mươi tám  nghìn, ba  trăm  đồng', 4, 11, 14, '20:14:45', 1415034000, 45, 1),
(155, '14N45270', 26, '', 'chu khan', 'hcm', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 4, 11, 14, '20:16:25', 1415034000, 45, 1),
(156, '14N45271', 17, '', 'van huynh', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 4, 11, 14, '20:17:41', 1415034000, 45, 1),
(157, '14N45272', 53, '', 'dinh ta', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '24|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '55200', 0, '0', '55200', 'Năm  mươi lăm  nghìn, hai  trăm  đồng', 4, 11, 14, '20:23:15', 1415034000, 45, 1),
(158, '14N45273', 15, '', 'C NGOAN', 'DS', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '11|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '25300', 0, '0', '25300', 'Hai  mươi lăm  nghìn, ba  trăm  đồng', 4, 11, 14, '20:24:30', 1415034000, 45, 1),
(159, '14N45274', 46, '', 'c toan', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 4, 11, 14, '20:25:54', 1415034000, 45, 1),
(160, '14N45275', 25, '', 'thanh tam', 'hcm', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '25|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '57500', 0, '0', '57500', 'Năm  mươi bảy  nghìn, năm  trăm  đồng', 4, 11, 14, '20:26:38', 1415034000, 45, 1),
(161, '14N45276', 54, '', 'minh nhan', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '22|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '50600', 0, '0', '50600', 'Năm  mươi nghìn, sáu  trăm  đồng', 4, 11, 14, '20:28:26', 1415034000, 45, 1),
(162, '14N45277', 2, '', 'CÔNG LỘ', 'Q.11', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '45|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '103500', 0, '0', '103500', 'Một  trăm  linh  ba  nghìn, năm  trăm  đồng', 4, 11, 14, '20:30:19', 1415034000, 45, 1),
(163, '14N45278', 3, '', 'tin', 'Hochiminh', '', 5, '0', 5, 2, '656|o0o|', 'THẺ|o0o|', '1|o0o|', 'XF thẻ|o0o|', 'thẻ|o0o|', '1|o0o|', '5000|o0o|', '0|o0o|', '', '1|o0o|', '117 |o0o|', '5000', 0, '0', '5000', 'Năm  nghìn đồng', 4, 11, 14, '20:31:18', 1415034000, 45, 1),
(164, '14N45279', 33, '', 'dinh hoang', 'hcm', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '30|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '69000', 0, '0', '69000', 'Sáu  mươi chín  nghìn đồng', 4, 11, 14, '20:32:47', 1415034000, 45, 1),
(165, '14N45280', 33, '', 'dinh hoang', 'hcm', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '9200', 0, '0', '9200', 'Chín  nghìn, hai  trăm  đồng', 4, 11, 14, '20:33:53', 1415034000, 45, 1),
(166, '14N45281', 56, '', 'hoang hung', 'ds', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 4, 11, 14, '20:36:51', 1415034000, 45, 1),
(167, '14N45282', 31, '', 'kim linh', 'hcm', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 4, 11, 14, '20:37:37', 1415034000, 45, 1),
(168, '14N45283', 57, '', 'c ut', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '17|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '39100', 0, '0', '39100', 'Ba  mươi chín  nghìn, một  trăm  đồng', 4, 11, 14, '20:41:10', 1415034000, 45, 1),
(169, '14N45284', 16, '', 'quoc thinh', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '9200', 0, '0', '9200', 'Chín  nghìn, hai  trăm  đồng', 4, 11, 14, '20:42:14', 1415034000, 45, 1),
(170, '14N45285', 4, '', 'DUY HOÀN', 'ĐS', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 4, 11, 14, '20:43:28', 1415034000, 45, 1),
(171, '14N45286', 58, '', 'c thoai', 'ds', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '1|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '2300', 0, '0', '2300', 'Hai  nghìn, ba  trăm  đồng', 4, 11, 14, '20:45:30', 1415034000, 45, 1),
(172, '14N45287', 3, '', 'mai', 'Hochiminh', '', 5, '0', 5, 2, '642|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình10x15 lụa|o0o|', 'Tấm|o0o|', '4|o0o|', '1200|o0o|', '-3200|o0o|', '', '7|o0o|', '150 |o0o|', '8000', 0, '0', '8000', 'Tám  nghìn đồng', 4, 11, 14, '20:46:33', 1415034000, 45, 1),
(173, '14N45288', 53, '', 'dinh ta', 'ds', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '13800', 0, '0', '13800', 'Mười  ba  nghìn, tám  trăm  đồng', 4, 11, 14, '20:51:09', 1415034000, 45, 1),
(174, '14N45289', 34, '', 'MANH HUNG', 'HCM', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '9200', 0, '0', '9200', 'Chín  nghìn, hai  trăm  đồng', 4, 11, 14, '20:53:24', 1415034000, 45, 1),
(175, '14N45290', 21, '', 'minh quang', 'hcm', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 4, 11, 14, '20:54:27', 1415034000, 45, 1),
(176, '14N45291', 38, '', 'huynh tung', 'ds', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '13800', 0, '0', '13800', 'Mười  ba  nghìn, tám  trăm  đồng', 4, 11, 14, '20:55:28', 1415034000, 45, 1),
(177, '14N45292', 34, '', 'MANH HUNG', 'HCM', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '9200', 0, '0', '9200', 'Chín  nghìn, hai  trăm  đồng', 4, 11, 14, '21:00:55', 1415034000, 45, 1),
(178, '14N45293', 34, '', 'MANH HUNG', 'HCM', '', 6, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '6|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '13800', 0, '0', '13800', 'Mười  ba  nghìn, tám  trăm  đồng', 4, 11, 14, '21:01:47', 1415034000, 45, 1),
(179, '14N45294', 33, '', 'dinh hoang', 'hcm', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '3|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '6900', 0, '0', '6900', 'Sáu  nghìn, chín  trăm  đồng', 4, 11, 14, '21:03:39', 1415034000, 45, 1),
(180, '14N45295', 41, '', 'xuan phi', 'ds', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '14|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '32200', 0, '0', '32200', 'Ba  mươi hai  nghìn, hai  trăm  đồng', 4, 11, 14, '21:09:52', 1415034000, 45, 1),
(181, '14N45296', 39, '', 'c phung', 'ds', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 4, 11, 14, '21:15:01', 1415034000, 45, 1),
(182, '14N45297', 24, '', 'van khiem', 'hcm', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 4, 11, 14, '21:15:53', 1415034000, 45, 1),
(183, '14N45298', 4, '', 'DUY HOÀN', 'ĐS', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '16|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '36800', 0, '0', '36800', 'Ba  mươi sáu  nghìn, tám  trăm  đồng', 4, 11, 14, '21:16:47', 1415034000, 45, 1),
(184, '14N45299', 17, '', 'van huynh', 'ds', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 4, 11, 14, '21:17:36', 1415034000, 45, 1),
(185, '14N452100', 8, '', 'VŨ HÀ (ÁO)', 'Q11', '', 5, '0', 4, 2, '415|o0o|', 'XUẤT HÌNH|o0o|', '0|o0o|', 'X.hình 10x15 láng|o0o|', 'Tấm|o0o|', '120|o0o|', '1200|o0o|', '12000|o0o|', '', '2|o0o|', '150 |o0o|', '132000', 0, '0', '132000', 'Một  trăm  ba  mươi hai  nghìn đồng', 4, 11, 14, '21:18:23', 1415034000, 45, 1),
(186, '14N452101', 39, '', 'c phung', 'ds', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '7|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '16100', 0, '0', '16100', 'Mười  sáu  nghìn, một  trăm  đồng', 4, 11, 14, '21:22:05', 1415034000, 45, 1),
(187, '14N452102', 2, '', 'CÔNG LỘ', 'Q.11', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 4, 11, 14, '21:25:00', 1415034000, 45, 1),
(188, '14N452103', 20, '', 'anh tuan', 'hcm', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '2|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '4600', 0, '0', '4600', 'Bốn  nghìn, sáu  trăm  đồng', 4, 11, 14, '21:41:02', 1415034000, 45, 1),
(189, '14N452104', 33, '', 'dinh hoang', 'hcm', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '5|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '11500', 0, '0', '11500', 'Mười  một  nghìn, năm  trăm  đồng', 4, 11, 14, '21:41:48', 1415034000, 45, 1),
(190, '14N452105', 38, '', 'huynh tung', 'ds', '', 5, '0', 5, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 4, 11, 14, '21:42:41', 1415034000, 45, 1),
(191, '14N452106', 7, '', 'VĂN SÁNG', 'Q11', '', 5, '0', 5, 2, '414|o0o|415|o0o|643|o0o|', 'XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|XUẤT HÌNH|o0o|', '0|o0o|0|o0o|0|o0o|', 'X.hình 9x12 láng|o0o|X.hình 10x15 láng|o0o|X.hình13x18 lụa|o0o|', 'Tấm|o0o|Tấm|o0o|Tấm|o0o|', '4|o0o|8|o0o|13|o0o|', '800|o0o|1200|o0o|2000|o0o|', '-800|o0o|0|o0o|0|o0o|', '', '1|o0o|2|o0o|6|o0o|', '117 |o0o|150 |o0o|234 |o0o|', '39600', 0, '0', '39600', 'Ba  mươi chín  nghìn, sáu  trăm  đồng', 4, 11, 14, '21:46:15', 1415034000, 45, 1),
(192, '14N452107', 33, '', 'dinh hoang', 'hcm', '', 5, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '8|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '18400', 0, '0', '18400', 'Mười  tám  nghìn, bốn  trăm  đồng', 4, 11, 14, '22:00:58', 1415034000, 45, 1),
(193, '14N452108', 53, '', 'dinh ta', 'ds', '', 6, '0', 4, 2, '417|o0o|', 'XUAT HINH|o0o|', '0|o0o|', 'X.hình13x18 láng|o0o|', 'Tấm|o0o|', '4|o0o|', '2300|o0o|', '0|o0o|', '', '1|o0o|', '234 |o0o|', '9200', 0, '0', '9200', 'Chín  nghìn, hai  trăm  đồng', 4, 11, 14, '22:15:01', 1415034000, 45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khachang`
--

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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=59 ;

--
-- Dumping data for table `khachang`
--

INSERT INTO `khachang` (`id`, `tinhthanh_id`, `title`, `address`, `picture`, `mst`, `email`, `phone`, `fax`, `datecreated`, `status`) VALUES
(1, 1, 'ANH THOẠI', 'Q.11', '/products/imagehere.png', '', '', '', '', 1390003200, 1),
(2, 1, 'CÔNG LỘ', 'Q.11', '/products/imagehere.png', '', '', '', '', 1414454400, 1),
(3, 1, 'KHÁCH VIP', 'Hochiminh', '/products/imagehere.png', '', '', '', '', 1414454400, 1),
(4, 1, 'DUY HOÀN', 'ĐS', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(5, 1, 'VĂN DOÃN', 'ĐS', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(6, 1, 'PHOTOLAN', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(7, 1, 'VĂN SÁNG', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(8, 1, 'VŨ HÀ (ÁO)', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(9, 1, 'TÍM ÁO', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(10, 1, 'MINH HÙNG', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(11, 1, 'CÔ HOA ', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(12, 1, 'ANH QUYỀN', 'Q11', '/products/imagehere.png', '', '', '', '', 1414540800, 1),
(13, 1, 'MAP lab', 'lab\r\n', '/products/imagehere.png', '', '', '', '', 1414627200, 1),
(14, 1, 'ke oai', 'DS', '/products/imagehere.png', '', '', '', '', 1414627200, 1),
(15, 1, 'C NGOAN', 'DS', '/products/imagehere.png', '', '', '', '', 1414713600, 1),
(16, 1, 'quoc thinh', 'ds', '/products/imagehere.png', '', '', '', '', 1414800000, 1),
(17, 1, 'van huynh', 'ds', '/products/imagehere.png', '', '', '', '', 1414800000, 1),
(18, 1, 'ANH TUAN', 'HCM', '/products/imagehere.png', '', '', '', '', 1412208000, 0),
(19, 1, 'ANH TUAN', 'HCM', '/products/imagehere.png', '', '', '', '', 1412208000, 0),
(20, 1, 'anh tuan', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(21, 1, 'minh quang', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(22, 1, 'anh huynh', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(23, 1, 'kim do', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(24, 1, 'van khiem', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(25, 1, 'thanh tam', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(26, 1, 'chu khan', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(27, 1, 'tan huynh', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(28, 1, 'loan lab', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(29, 1, 'chau lab', 'hcm', '/products/imagehere.png', '', '', '', '', 1412208000, 1),
(30, 1, 'minh thuan', 'hcm', '/products/imagehere.png', '', '', '', '', 1412294400, 1),
(31, 1, 'kim linh', 'hcm', '/products/imagehere.png', '', '', '', '', 1414886400, 1),
(32, 1, 'bo vien', 'hcm', '/products/imagehere.png', '', '', '', '', 1414886400, 1),
(33, 1, 'dinh hoang', 'hcm', '/products/imagehere.png', '', '', '', '', 1414886400, 1),
(34, 1, 'MANH HUNG', 'HCM', '/products/imagehere.png', '', '', '', '', 1414886400, 1),
(35, 1, 'minh thao', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(36, 1, 'bo vien', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(37, 1, 'nhu y', 'hcm', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(38, 1, 'huynh tung', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(39, 1, 'c phung', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(40, 1, 'cong thanh', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(41, 1, 'xuan phi', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(42, 1, 'dang dung', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(43, 1, 'tien hung', 'ds', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(44, 1, 'c thao', 'hcm', '/products/imagehere.png', '', '', '', '', 1414972800, 1),
(45, 1, 'a thao', 'q11', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(46, 1, 'c toan', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(47, 1, 'c toan', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(48, 1, 'c khon', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(49, 1, 'c khon', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(50, 1, 'c truong', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(51, 1, 'van hoa', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(52, 1, 'van hoa', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(53, 1, 'dinh ta', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(54, 1, 'minh nhan', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(55, 1, 'minh nhan', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(56, 1, 'hoang hung', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(57, 1, 'c ut', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1),
(58, 1, 'c thoai', 'ds', '/products/imagehere.png', '', '', '', '', 1415034000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khogiay`
--

CREATE TABLE IF NOT EXISTS `khogiay` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `khogiay_id` int(10) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `quantity_scroll` int(11) NOT NULL,
  `scroll` int(11) NOT NULL,
  `note` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `dateupdated` bigint(20) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `khogiay`
--

INSERT INTO `khogiay` (`id`, `khogiay_id`, `title`, `quantity`, `quantity_scroll`, `scroll`, `note`, `datecreated`, `dateupdated`, `status`) VALUES
(1, 1, 'FUJI 12.7 láng', -264123, 241800, 0, '', 1388829568, 1388829568, 1),
(2, 2, 'FUJI 15.2 láng', -319599, 279000, 0, '', 1388829580, 1388829580, 1),
(10, 10, 'AFFA 12.7 lụa', 0, 234000, 0, '', 1388829551, 1388829551, 1),
(4, 4, 'FUJI 25.4', -12025, 225000, 0, '', 1388829589, 1388829589, 1),
(5, 5, 'fuji 30.5', -22800, 270000, 0, '', 1388829594, 1388829594, 1),
(8, 8, 'AFFA 12.7 láng', 0, 234000, 0, '', 1388829546, 1388829546, 1),
(6, 6, 'FUJI 12.7 lụa', -146484, 241800, 0, '', 1388829573, 1388829573, 1),
(7, 7, 'FUJI 15.2 lụa', -30900, 279000, 0, '', 1388829584, 1388829584, 1),
(9, 9, 'AFFA 15.2 láng', 0, 270000, 0, '', 1388829557, 1388829557, 1),
(11, 11, 'AFFA 15.2 lụa', 0, 270000, 0, '', 1388829563, 1388829563, 1);

-- --------------------------------------------------------

--
-- Table structure for table `khogiay_category`
--

CREATE TABLE IF NOT EXISTS `khogiay_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) DEFAULT '0',
  `quantity_du` int(10) DEFAULT '0',
  `note` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  `datecreated` bigint(20) DEFAULT NULL,
  `dateupdated` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
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

CREATE TABLE IF NOT EXISTS `log_khogiay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `khogiay_id` int(10) DEFAULT NULL,
  `dientich` int(10) DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
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

CREATE TABLE IF NOT EXISTS `mathang` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `khogiay_id` int(10) DEFAULT NULL,
  `item_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_goc` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `dientich` int(10) DEFAULT NULL,
  `note` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_dichvu` tinyint(3) DEFAULT '1',
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `item_code` (`item_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=685 ;

--
-- Dumping data for table `mathang`
--

INSERT INTO `mathang` (`id`, `khogiay_id`, `item_code`, `item_name`, `unit`, `price`, `price_goc`, `quantity`, `dientich`, `note`, `is_dichvu`, `status`) VALUES
(1, 0, 'AB10X15', 'Album10x15(160)hộp', 'Cuốn', 45000, 31500, 4, 0, '', 0, 1),
(2, 0, 'AB10X15', 'album10x15(200)hộp', 'Cuốn', 55000, 36000, 3, 0, '', 0, 1),
(3, 0, 'AB15X21', 'Album15x21(12)dẻo', 'Cuốn', 0, 0, 1, 0, '', 0, 1),
(6, 0, 'AB10x15', 'Album10x15(64) dẻo', 'Cuốn', 18000, 10000, 40, 0, '', 0, 1),
(7, 0, 'AB10X15', 'Album10x15(80)dẻo', 'cuốn', 22000, 0, 0, 0, '', 0, 1),
(670, 0, 'DVD', 'làm dvd ', 'cai', 250000, 0, 0, 0, '', 1, 1),
(10, 0, 'DVD', 'chép dvd', 'Cái', 15000, 5000, 33, 0, '', 0, 1),
(678, 0, 'ÉP LỤA', 'ép lụa1 mặt(30x40) ', 'tấm', 12000, 0, 0, 0, '', 0, 1),
(13, 0, 'EPGO(bo3f)', 'Épgo(bo3)10x15', 'Tấm', 16000, 0, 0, 0, '', 1, 1),
(14, 0, 'EPGO(bo3f)', 'Épgo(bo3)13x18', 'Tấm', 21000, 0, 0, 0, '', 1, 1),
(15, 0, 'EPGO(bo3f)', 'Épgo(bo3)15x21', 'Tấm', 24000, 0, 0, 0, '', 1, 1),
(475, 0, 'EPGO(bo3f)', 'Épgo(bo3)25x38', 'Tấm', 51000, 0, 0, 0, '', 1, 1),
(17, 0, 'EPGO(bo3f)', 'Épgo(bo3)20x25', 'Tấm', 30000, 0, 0, 0, '', 1, 1),
(18, 0, 'EPGO(bo3f)', 'Épgo(bo3)20x30', 'Tấm', 36000, 0, 0, 0, '', 1, 1),
(19, 0, 'EPGO(bo3f)', 'Épgo(bo3)25X30', 'Tấm', 41000, 0, 0, 0, '', 1, 1),
(20, 0, 'EPGO(bo3f)', 'Épgo(bo3)25x35', 'Tấm', 49000, 0, 0, 0, '', 1, 1),
(21, 0, 'EPGO(bo3f)', 'Épgo(bo3)30X40', 'Tấm', 60000, 0, 0, 0, '', 1, 1),
(22, 0, 'EPGO(bo3f)', 'Épgo(bo3)30X45', 'Tấm', 67000, 0, 0, 0, '', 1, 1),
(23, 0, 'EPGO(bo3f)', 'Épgo(bo3)30X50', 'Tấm', 83000, 0, 0, 0, '', 1, 1),
(24, 0, 'EPGO(bo3f)', 'Épgo(bo3)40X60', 'Tấm', 100000, 0, 0, 0, '', 1, 1),
(27, 0, 'EPGO(bo3f)', 'Épgo(bo3)50X70', 'Tấm', 115000, 0, 0, 0, '', 1, 1),
(28, 0, 'EPGO(bo3f)', 'Épgo(bo3)50x75', 'Tấm', 130000, 0, 0, 0, '', 1, 1),
(673, 0, 'EPGO(bo3f)', 'Epgo(bo3)70x110', 'tam', 240000, 0, 0, 0, '', 1, 1),
(30, 0, 'EPGO(bo3f)', 'Épgo(bo3)60x90', 'Tấm', 155000, 0, 0, 0, '', 1, 1),
(476, 0, 'EPGO(bo5f)', 'Épgo(bo5)2538', 'Tấm', 56000, 0, 0, 0, '', 1, 1),
(35, 0, 'EPGO(bo5f)', 'Épgo(bo5)20x25', 'Tấm', 35000, 0, 0, 0, '', 1, 1),
(36, 0, 'EPGO(bo5f)', 'Épgo(bo5)20x30', 'Tấm', 39000, 0, 0, 0, '', 1, 1),
(37, 0, 'EPGO(bo5f)', 'Épgo(bo5)25X30', 'Tấm', 43000, 0, 0, 0, '', 1, 1),
(38, 0, 'EPGO(bo5f)', 'Épgo(bo5)25x35', 'Tấm', 53000, 0, 0, 0, '', 1, 1),
(39, 0, 'EPGO(bo3f)', 'Épgo(bo5)30X40', 'Tấm', 63000, 0, 0, 0, '', 1, 1),
(40, 0, 'EPGO(bo5f)', 'Épgo(bo5)30X45', 'Tấm', 69000, 0, 0, 0, '', 1, 1),
(43, 0, 'EPGO(bo5f)', 'Épgo(bo5)40x60', 'Tấm', 107000, 0, 0, 0, '', 1, 1),
(684, 0, 'ÉP LỤA', 'ép lụa1 mặt(20x25)', 'tấm', 6000, 0, 0, 0, '', 0, 1),
(45, 0, 'EPGO(bo5f)', 'Épgo(bo5)50X70', 'Tấm', 120000, 0, 0, 0, '', 1, 1),
(46, 0, 'EPGO(bo5f)', 'Épgo(bo5)50x75', 'Tấm', 132000, 0, 0, 0, '', 1, 1),
(48, 0, 'EPGO(bo5f)', 'Épgo(bo5)60x90', 'Tấm', 167000, 0, 0, 0, '', 1, 1),
(49, 0, 'EPGO', 'Épgo(kbo)10x15', 'Tấm', 12000, 0, 0, 0, '', 1, 1),
(50, 0, 'EPGO', 'Épgo(kbo)13x18', 'Tấm', 15000, 0, 0, 0, '', 1, 1),
(51, 0, 'EPGO', 'Épgo(kbo)15x21', 'Tấm', 17000, 0, 0, 0, '', 1, 1),
(477, 0, 'EPGO', 'Épgo(kbo)25x38', 'Tấm', 35000, 0, 0, 0, '', 1, 1),
(53, 0, 'EPGO', 'Épgo(kbo)20x25', 'Tấm', 21000, 0, 0, 0, '', 1, 1),
(54, 0, 'EPGO', 'Épgo(kbo)20x30', 'Tấm', 24000, 0, 0, 0, '', 1, 1),
(55, 0, 'EPGO', 'Épgo(kbo)25X30', 'Tấm', 27000, 0, 0, 0, '', 1, 1),
(56, 0, 'EPGO', 'Épgo(kbo)25x35', 'Tấm', 33000, 0, 0, 0, '', 1, 1),
(57, 0, 'EPGO', 'Épgo(kbo)30X40', 'Tấm', 40000, 0, 0, 0, '', 1, 1),
(58, 0, 'EPGO', 'Épgo(kbo)30X45', 'Tấm', 45000, 0, 0, 0, '', 1, 1),
(683, 0, 'ÉP LỤA', 'ép lụa1 mặt(20x30)', 'tấm', 7000, 0, 0, 0, '', 0, 1),
(61, 0, 'EPGO', 'Épgo(kbo)40x60', 'Tấm', 75000, 0, 0, 0, '', 1, 1),
(63, 0, 'EPGO', 'Épgo(kbo)50X70', 'Tấm', 85000, 0, 0, 0, '', 1, 1),
(64, 0, 'EPGO', 'Épgo(kbo)50x75', 'Tấm', 95000, 0, 0, 0, '', 1, 1),
(66, 0, 'EPGO', 'Épgo(kbo)60x90', 'Tấm', 110000, 0, 0, 0, '', 1, 1),
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
(79, 0, 'EP LỤA', 'Ép lụa1 mặt(40x60)', 'Tấm', 18000, 0, 0, 0, '', 0, 1),
(81, 0, 'EP LỤA', 'Ép lụa1 mặt(50x70)', 'Tấm', 22000, 0, 0, 0, '', 0, 1),
(82, 0, 'EP LỤA', 'Ép lụa1 mặt(50x75)', 'Tấm', 25000, 0, 0, 0, '', 0, 1),
(83, 0, 'EP LỤA', 'Ép lụa1mặt (70x110)', 'Tấm', 60000, 0, 0, 0, '', 1, 1),
(84, 0, 'EP LỤA', 'Ép lụa1 mặt(60x90)', 'Tấm', 40000, 0, 0, 0, '', 1, 1),
(482, 1, 'XALB0912', 'Xuất Album 12x18', 'Tờ', 2500, 0, 0, 234, '', 0, 0),
(483, 4, 'XALB0912', 'Xuất Album 9x24', 'Tờ', 2500, 0, 0, 225, '', 0, 0),
(544, 0, 'GCA.RĐ.2OTRANG', 'GC Alb RĐ 20trang', 'Cuốn', 551000, 0, 0, 0, '', 1, 1),
(627, 0, 'GCA.NAPGAP', 'GC Alb có nắp', 'Cuốn', 20000, 0, 0, 0, '', 1, 1),
(531, 0, 'GCA.S,P.THEMTO', 'GC Alb Ph thêm tờ', 'Tờ', 26000, 0, 0, 0, '', 1, 1),
(609, 0, 'PHUCHOI', 'Phục hồi 1 mặt', 'Mặt', 30000, 0, -1, 0, '', 1, 1),
(610, 0, 'THAYPHONG', 'thay phông chân dung', 'Hình', 5000, 0, 0, 0, '', 1, 1),
(653, 0, 'THAYPHONG', 'Thay phông hinh scan', 'Hình', 20000, 0, 0, 0, '', 1, 1),
(672, 0, 'PIN', 'pin KTS', 'vỉ', 45000, 25000, 2, 0, '', 0, 1),
(671, 0, 'PIN', 'pin 2A', 'vỉ', 30000, 19500, 57, 0, '', 0, 1),
(479, 0, 'EPGOKB76110', 'Épgo(kbo)76x110', 'Tấm', 291000, 0, 0, 0, '', 1, 1),
(478, 0, 'EPGOKB70110', 'Épgo(kbo)70x110', 'Tấm', 200000, 0, 0, 0, '', 1, 1),
(141, 0, 'KHUNG', 'Khung(10x15)', 'Cái', 20000, 11000, 20, 0, '', 0, 1),
(142, 0, 'KHUNG', 'Khung(13x18)', 'Cái', 23000, 13000, 17, 0, '', 0, 1),
(143, 0, 'KHUNG', 'Khung(15x21)', 'Cái', 25000, 15000, 11, 0, '', 0, 1),
(144, 0, 'KHUNG', 'Khung(20x25)', 'Cái', 30000, 19000, 30, 0, '', 0, 1),
(145, 0, 'KHUNG', 'Khung(20x30)', 'Cái', 35000, 21000, 16, 0, '', 0, 1),
(146, 0, 'KHUNG', 'Khung(25x35)', 'Cái', 40000, 25000, 39, 0, '', 0, 1),
(147, 0, 'KHUNG', 'Khung(30x40)', 'Cái', 50000, 29000, 6, 0, '', 0, 1),
(148, 0, 'KHUNG', 'khung(30x45)', 'Cái', 55000, 30000, 6, 0, '', 0, 1),
(174, 0, 'KHUNG', 'Khung(40x60)', 'Cái', 75000, 50000, 2, 0, '', 0, 1),
(212, 0, 'KHUNG', 'Kh.thờ có chân 20x25', 'Cái', 110000, 60000, 0, 0, '', 0, 1),
(682, 0, 'ÉP LỤA', 'ép lụa1 mặt(25x30)', 'tấm', 9000, 0, 0, 0, '', 1, 1),
(214, 5, 'TANG ', 'TANG 20x30', 'Tấm', 0, 0, -1, 600, '', 0, 1),
(215, 4, 'TANG', 'TANG 25x35', 'Tấm', 0, 0, -1, 875, '', 0, 1),
(679, 0, 'ÉP LỤA', 'ép lụa1 mặt(25x38)', 'tấm', 10000, 0, 0, 0, '', 1, 1),
(680, 0, 'ÉP LỤA', 'ép lụa1 mặt(25x38)', 'tấm', 10000, 0, 0, 0, '', 1, 1),
(681, 0, 'ÉP LỤA', 'ép lụa1 mặt(25x35)', 'tấm', 9000, 0, 0, 0, '', 1, 1),
(651, 0, 'XUẤT HÌNH', 'Xuất hình ngoại khổ', 'Cm2', 170000, 0, 0, 0, '', 1, 1),
(669, 0, 'PINCR2', 'Pin CR2', 'Vỉ', 70000, 40000, 2, 0, '', 0, 1),
(641, 6, 'XUAT HINH', 'X.hình 9x12 lụa', 'Tấm', 800, 0, -2, 117, '', 0, 1),
(518, 0, 'GCA.S,P.3OTRANG', 'GC Alb Ph 30trang', 'Cuốn', 512000, 0, 0, 0, '', 1, 1),
(570, 0, 'GCA.RĐ.THEMTO', 'GC Alb RĐ thêm tờ', 'Tờ', 32500, 0, 0, 0, '', 1, 1),
(557, 0, 'GCA.RĐ.3OTRANG', 'GC Alb RĐ 30trang', 'Cuốn', 668000, 0, 0, 0, '', 1, 1),
(642, 7, 'XUAT HINH', 'X.hình10x15 lụa', 'Tấm', 1200, 0, -206, 150, '', 0, 1),
(643, 6, 'XUẤT HÌNH', 'X.hình13x18 lụa', 'Tấm', 2000, 0, -609, 234, '', 0, 1),
(644, 7, 'XUAT HINH', 'X.hình15x21 lụa', 'Tấm', 3000, 0, 0, 315, '', 0, 1),
(604, 0, 'AB13x18', 'Album13x18(200)', 'Cuốn', 52000, 40000, 1, 0, '', 0, 1),
(605, 0, 'AB13x18', 'Album13x18(160)hộp', 'Cuốn', 60000, 47000, 2, 0, '', 0, 1),
(606, 0, 'AB13X18', 'Album13x18(304)hộp', 'Cuốn', 65000, 53000, 4, 0, '', 0, 1),
(607, 0, 'AB15X21', 'Album15X21(20)dẻo', 'Cuốn', 18000, 8000, 9, 0, '', 0, 1),
(608, 0, 'AB15x21', 'Album15x21(40)dẻo', 'Cuốn', 25000, 12500, 5, 0, '', 0, 1),
(588, 0, 'GCA.SM.THEMTO', 'GC Alb SM thêm tờ', 'Tờ', 52000, 0, 0, 0, '', 1, 1),
(583, 0, 'GCA.SM.2OTRANG', 'GC Alb SM 20trang', 'Cuốn', 889000, 0, 0, 0, '', 1, 1),
(589, 0, 'GCA.3D.2OTRANG', 'GC Alb 3D 20trang', 'Cuốn', 1058000, 0, 0, 0, '', 1, 1),
(590, 0, 'GCA.3D.3OTRANG', 'GC Alb 3D 30trang', 'Cuốn', 1240000, 0, 0, 0, '', 1, 1),
(591, 0, 'GCA.3D.THEMTO', 'GC Alb 3D thêm tờ', 'Tờ', 104000, 0, -10, 0, '', 1, 1),
(594, 1, 'CHỤPKIỂU', 'chụp chân dung', 'kiểu', 25000, 0, -84, 243, '', 0, 1),
(595, 0, 'DVD', 'coppy dvd', 'Cái', 60000, 5000, 0, 0, '', 0, 1),
(596, 0, 'AB10X15', 'Album10x15(80)hộp', 'Cuốn', 33000, 22500, 6, 0, '', 0, 1),
(597, 0, 'AB10X15', 'Album10x15(120)hộp', 'Cuốn', 37000, 27000, 5, 0, '', 0, 1),
(599, 0, 'AB13X18', 'Album13x18(80)dẻo', 'Cuốn', 25000, 14000, 10, 0, '', 0, 1),
(600, 0, 'AB13X18', 'Album13x18(120)dẻo', 'Cuốn', 32000, 19000, 8, 0, '', 0, 1),
(601, 0, 'AB13X18', 'Album13x18(80)hộp', 'Cuốn', 35000, 25000, 7, 0, '', 0, 1),
(656, 1, 'THẺ', 'XF thẻ', 'thẻ', 5000, 0, 0, 117, '', 1, 1),
(603, 0, 'AB13X18', 'Album13x18(120)hộp', 'Cuốn', 42000, 30000, 0, 0, '', 0, 1),
(587, 0, 'GCA.SM.30TRANG', 'GC Alb SM 30trang', 'Cuốn', 1071000, 0, 0, 0, '', 1, 1),
(340, 0, 'SAO100', 'Sáo gỗ 100cm', 'Cặp', 42000, 0, 0, 0, '', 0, 1),
(341, 0, 'SAO30', 'Sáo gỗ 30cm', 'Cặp', 18000, 0, 0, 0, '', 0, 1),
(342, 0, 'SAO40', 'Sáo gỗ 40cm', 'Cặp', 20400, 16000, 0, 0, '', 0, 1),
(343, 0, 'SAO50', 'Sáo gỗ 50cm', 'Cặp', 22800, 0, 0, 0, '', 0, 1),
(344, 0, 'SAO60', 'Sáo gỗ 60cm', 'Cặp', 25200, 0, 0, 0, '', 0, 1),
(345, 0, 'SAO70', 'Sáo gỗ 70cm', 'Cặp', 30000, 0, 0, 0, '', 0, 1),
(346, 0, 'SAO80', 'Sáo gỗ 80cm', 'Cặp', 36000, 0, 0, 0, '', 0, 1),
(347, 0, 'SCAN', 'Scan lấy file', 'File', 5000, 0, 0, 0, '', 1, 1),
(348, 2, 'SCAN', 'Scan+in thẻ', 'Tấm', 15000, 0, -2, 117, '', 0, 1),
(349, 0, 'THAYAO', 'Thay áo thẻ', 'Kiểu', 5000, 0, 0, 0, '', 1, 1),
(350, 1, 'THẺ', 'Thẻ gấp', 'Kiểu', 30000, 0, -12, 117, '', 0, 1),
(351, 1, 'THẺ', 'Thẻ thường', 'Kiểu', 22000, 0, -14, 117, '', 0, 1),
(490, 4, 'XALB2025', 'Xuất Album 25x40', 'Tờ', 10000, 0, 0, 1000, '', 0, 0),
(491, 4, 'XALB2025', 'Xuất Album 20x50', 'Tờ', 10000, 0, 0, 1000, '', 0, 0),
(492, 5, 'XALB2030', 'Xuất Album 30x40', 'Tờ', 13000, 0, 0, 1200, '', 0, 0),
(493, 4, 'XALB2030', 'Xuất Album 20x60', 'Tờ', 13000, 0, 0, 1200, '', 0, 0),
(494, 4, 'XALB2525', 'Xuất Album 25x50', 'Tờ', 13000, 0, 0, 1250, '', 0, 0),
(495, 5, 'XALB2530', 'Xuất Album 30x50', 'Tờ', 15000, 0, 0, 1500, '', 0, 0),
(496, 4, 'XALB2530', 'Xuất Album 25x60', 'Tờ', 15000, 0, 0, 1500, '', 0, 0),
(497, 0, 'XALB2535', 'Xuất Album 35x50', 'Tờ', 22000, 0, 0, 0, '', 0, 0),
(498, 0, 'XALB2535', 'Xuất Album 25x70', 'Tờ', 22000, 0, 0, 0, '', 0, 0),
(499, 5, 'XALB3030', 'Xuất Album 30x60', 'Tờ', 18000, 0, 0, 1800, '', 0, 0),
(500, 0, 'XALB3040', 'Xuất Album 40x60', 'Tờ', 30000, 0, 0, 0, '', 0, 0),
(501, 0, 'XALB3040', 'Xuất Album 30x80', 'Tờ', 30000, 0, 0, 0, '', 0, 0),
(502, 0, 'XALB3045', 'Xuất Album 45x60', 'Tờ', 34000, 0, 0, 0, '', 0, 0),
(503, 0, 'XALB3045', 'Xuất Album 30x90', 'Tờ', 34000, 0, 0, 0, '', 0, 0),
(504, 0, 'XALB4040', 'Xuất Album 40x80', 'Tờ', 40000, 0, 0, 0, '', 0, 0),
(505, 0, 'GCA.S,P.20TRANG', 'GC Alb Ph 20trang', 'Cuốn', 473000, 0, 0, 0, '', 1, 1),
(677, 0, 'ÉP LỤA ', 'ép lụa1 mặt(30x45)', 'tấm', 14000, 0, 0, 0, '', 1, 1),
(414, 1, 'XUẤT HÌNH', 'X.hình 9x12 láng', 'Tấm', 800, 0, -39, 117, '', 0, 1),
(415, 2, 'XUẤT HÌNH', 'X.hình 10x15 láng', 'Tấm', 1200, 0, -2043, 150, '', 0, 1),
(417, 1, 'XUAT HINH', 'X.hình13x18 láng', 'Tấm', 2300, 0, -957, 234, '', 0, 1),
(418, 2, 'XUAT HINH', 'X.hình 15x21 láng', 'Tấm', 3500, 0, -1, 315, '', 0, 1),
(419, 4, 'XUẤT HÌNH', 'Xuất hình 20x25', 'Tấm', 5000, 0, -1, 500, '', 0, 1),
(420, 5, 'XUẤT HÌNH', 'Xuất hình 20x30', 'Tấm', 6000, 0, -28, 600, '', 0, 1),
(421, 4, 'XUẤT HÌNH', 'Xuất hình 25x30', 'Tấm', 8000, 0, 0, 750, '', 0, 1),
(422, 4, 'XUẤT HÌNH', 'Xuất hình 25x35', 'Tấm', 10000, 0, -9, 875, '', 0, 1),
(423, 4, 'XUẤT HÌNH', 'Xuất hình 25x38', 'Tấm', 12000, 0, -2, 950, '', 0, 1),
(424, 5, 'XUẤT HÌNH', 'Xuất hình 30x40', 'Tấm', 17000, 0, -1, 1200, '', 0, 1),
(425, 5, 'XUẤT HÌNH', 'Xuất hình 30x45', 'Tấm', 20000, 0, 0, 1350, '', 0, 1),
(489, 2, 'XALB1523', 'Xuất Album 15x46', 'Tờ', 8000, 0, 0, 690, '', 0, 0),
(488, 5, 'XALB1523', 'Xuất Album 23x30', 'Tờ', 8000, 0, 0, 690, '', 0, 0),
(676, 0, 'ÉP LỤA', 'ép lua1 mặt(30x50)', 'tam', 15000, 0, 0, 0, '', 0, 1),
(431, 0, 'XUẤT HÌNH', 'Xuất hình 40x60', 'Tấm', 38000, 0, 0, 0, '', 1, 1),
(434, 0, 'XUẤT HÌNH', 'Xuất hình 50x70', 'Tấm', 48000, 0, 0, 0, '', 1, 1),
(435, 0, 'XUẤT HÌNH', 'Xuất hình 50x75', 'Tấm', 50000, 0, 0, 0, '', 1, 1),
(487, 2, 'XALB1521', 'Xuất Album 15x42', 'Tờ', 7000, 0, 0, 630, '', 0, 0),
(438, 0, 'XUẤT HÌNH', 'Xuất hình 60x90', 'Tấm', 72000, 0, 0, 0, '', 1, 1),
(440, 0, 'XUẤT HÌNH', 'Xuất hình 70x110', 'Tấm', 105000, 0, 0, 0, '', 1, 1),
(486, 5, 'XALB1521', 'Xuất Album 21x30', 'Tờ', 7000, 0, 0, 630, '', 0, 0),
(675, 0, 'MÓC KHÓA ', 'móc khóa chùm ', 'cái', 40000, 30000, 0, 0, '', 1, 1),
(484, 4, 'XALB1318', 'Xuất Album 18x26', 'Tờ', 5000, 0, 0, 450, '', 0, 0),
(485, 1, 'XALB1318', 'Xuất Album 13x36', 'Tờ', 5000, 0, 0, 468, '', 0, 0),
(657, 0, 'KHUNGNGOAIKHO', 'Khung ngoại khổ', 'Cái', 1000000, 0, 0, 0, '', 1, 1),
(658, 0, 'EPGO', 'Épgo(kbo)70x110', 'Tấm', 180000, 0, 0, 0, '', 1, 1),
(659, 0, 'CD', 'chép CD', 'Cái', 5000, 2500, 80, 0, '', 0, 1),
(660, 4, 'XUẤT HÌNH', 'xuất hình 20x20', 'Tấm', 6500, 0, 0, 625, '', 0, 1),
(674, 0, 'MÓC KHÓA', 'móc khóa thường', 'cái', 25000, 15000, 0, 0, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

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
  `is_nvquay` tinyint(3) DEFAULT NULL,
  `is_nvxh` tinyint(3) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=6 ;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `tinhthanh_id`, `title`, `address`, `picture`, `mst`, `email`, `phone`, `fax`, `datecreated`, `is_nvquay`, `is_nvxh`, `status`) VALUES
(1, 1, 'TRỊNH  LÂM', '', '/products/imagehere.png', '', '', '', '', 1414454400, 1, 0, 1),
(2, 1, ' MINH CHÂU', '', '/products/imagehere.png', '', '', '', '', 1414454400, 1, 0, 1),
(3, 1, 'PHẠM LOAN', '', '/products/imagehere.png', '', '', '', '', 1414454400, 1, 0, 1),
(4, 1, ' NHẬT', '', '/products/imagehere.png', '', '', '', '', 1414454400, 0, 1, 1),
(5, 1, 'HUY', 'Q11', '/products/imagehere.png', '', '', '', '', 1414713600, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

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
(1, 'ẢNH MÀU MINH PHÁT', '5A HÒA BÌNH, Q.11', '(08) 62.642.155', 0, 2, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `sys_field`
--

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
(495, 192, 'picture', 0, 'Hình ảnh', '', 0, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
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

CREATE TABLE IF NOT EXISTS `sys_plugin_function` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `function_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
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

CREATE TABLE IF NOT EXISTS `thanhtoan` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=42 ;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `username`, `password`, `fullname`, `email`, `roleid`, `status`, `is_change_webmaster_permission`, `is_view_tabledesign`) VALUES
(3, 'thuy.tq', '6d230603c695221de25dc34f6bb31a73', 'Mr. Thuy', 'thuy.tq@hotmail.com', 11, 1, 1, 1),
(37, 'Mr.Minh', '4afd521d77158e02aed37e2274b90c9c', 'Admin', 'info@lap.cob.vn', 4, 1, 1, 1),
(39, 'nhanvien', '1d72310edc006dadf2190caad5802983', 'Nhân Viên', 'info@lap.cob.vn', 12, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_permission`
--

CREATE TABLE IF NOT EXISTS `webmaster_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webmaster_role_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `is_list` tinyint(4) DEFAULT '1',
  `is_insert` tinyint(4) DEFAULT '1',
  `is_edit` tinyint(4) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
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
