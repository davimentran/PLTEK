-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2015 at 05:03 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lapthinhco`
--

-- --------------------------------------------------------

--
-- Table structure for table `calam`
--

DROP TABLE IF EXISTS `calam`;
CREATE TABLE IF NOT EXISTS `calam` (
  `id` int(10) NOT NULL,
  `title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `calam`
--

INSERT INTO `calam` (`id`, `title`) VALUES
(1, 'Sáng'),
(2, 'Chiều');

-- --------------------------------------------------------

--
-- Table structure for table `city_vietnam`
--

DROP TABLE IF EXISTS `city_vietnam`;
CREATE TABLE IF NOT EXISTS `city_vietnam` (
  `id` int(11) unsigned NOT NULL COMMENT 'ID',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Thành phố',
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ảnh đại diện',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Vị trí',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Quản lý',
  `datecreated` bigint(20) unsigned DEFAULT NULL COMMENT 'Ngày tạo',
  `dateupdated` bigint(20) unsigned DEFAULT NULL COMMENT 'Ngày cập nhật'
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `city_vietnam`
--

INSERT INTO `city_vietnam` (`id`, `title`, `picture`, `position`, `status`, `datecreated`, `dateupdated`) VALUES
(1, 'Đại lý', '/products/imagehere.png', 0, 1, 1366650000, 1366650000),
(2, 'Thợ', '/products/imagehere.png', 1, 1, 1236186000, 1236186000),
(3, 'Khách', '/products/imagehere.png', 2, 1, 1236186000, 1236186000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
CREATE TABLE IF NOT EXISTS `khachhang` (
  `id` int(10) NOT NULL,
  `tinhthanh_id` int(10) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ho ten',
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mst` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `leavelist`
--

DROP TABLE IF EXISTS `leavelist`;
CREATE TABLE IF NOT EXISTS `leavelist` (
  `id` int(10) NOT NULL,
  `nhanvien_id` int(10) DEFAULT NULL,
  `ca_id` int(10) DEFAULT NULL,
  `datecreated` bigint(20) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1',
  `type_id` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leavelist`
--

INSERT INTO `leavelist` (`id`, `nhanvien_id`, `ca_id`, `datecreated`, `note`, `status`, `type_id`) VALUES
(3, 11, 1, 1435856400, 'PHÉP THÁNG', 1, 1),
(4, 11, 2, 1435856400, 'PHÉP THÁNG', 1, 1),
(5, 4, 1, 1437238800, '', 1, 1),
(6, 10, 1, 1437238800, 'phép tháng', 1, 1),
(7, 10, 2, 1437238800, 'phép tháng', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `luong`
--

DROP TABLE IF EXISTS `luong`;
CREATE TABLE IF NOT EXISTS `luong` (
  `id` int(10) NOT NULL,
  `nhanvien_id` int(10) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `month` tinyint(3) NOT NULL,
  `year` int(10) NOT NULL,
  `datecreated` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mathang`
--

DROP TABLE IF EXISTS `mathang`;
CREATE TABLE IF NOT EXISTS `mathang` (
  `id` int(10) NOT NULL,
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
  `dateupdated` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
CREATE TABLE IF NOT EXISTS `nhanvien` (
  `id` int(10) NOT NULL,
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
  `price` int(11) NOT NULL,
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `tinhthanh_id`, `title`, `address`, `picture`, `mst`, `email`, `phone`, `fax`, `datecreated`, `is_nvquay`, `is_nvxh`, `price`, `status`) VALUES
(1, 1, 'Phượng', '', '/products/imagehere.png', '', '', '', '', 1384362000, 1, 0, 4600000, 1),
(10, 1, 'Trân', '', '/products/imagehere.png', '', '', '', '', 1433264400, 1, 0, 2900000, 1),
(4, 1, 'Lượng', '', '/products/imagehere.png', '', '', '', '', 1384362000, 0, 1, 5200000, 1),
(11, 0, 'Liêm', '', '/products/imagehere.png', '', '', '', '', 1435856400, 0, 1, 5700000, 1),
(12, 0, 'Mỹ', '', '/products/imagehere.png', '', '', '', '', 1435856400, 1, 0, 2900000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(10) unsigned NOT NULL COMMENT 'ID',
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(10) DEFAULT '0',
  `soluong` int(10) DEFAULT '2',
  `soluongm` int(10) DEFAULT '10'
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `sys_field`
--

DROP TABLE IF EXISTS `sys_field`;
CREATE TABLE IF NOT EXISTS `sys_field` (
  `id` int(10) unsigned NOT NULL,
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
  `check_file_extension_list` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=618 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(461, 191, 'title', 0, 'Nhóm khách hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(462, 191, 'picture', 0, 'Hình ảnh', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(463, 191, 'position', 0, 'Ví trí', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(464, 191, 'status', 0, 'Trạng thái', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(465, 191, 'datecreated', 0, 'Ngày tạo', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(466, 191, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(491, 228, 'id', 0, '', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(492, 228, 'tinhthanh_id', 0, 'Nhóm khách hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, 'city_vietnam', '', '', 'title', 'id', 1, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(493, 228, 'title', 0, 'Họ và Tên', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(494, 228, 'address', 0, 'Địa chỉ', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(495, 228, 'picture', 0, 'Hình ảnh', '', 0, 0, 0, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(496, 228, 'mst', 0, 'Mã số thuế', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(497, 228, 'email', 0, 'Email', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(498, 228, 'phone', 0, 'Điện thoại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(499, 228, 'fax', 0, 'Fax', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(506, 194, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(507, 194, 'item_code', 0, 'Mã mặt hàng', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(508, 194, 'item_name', 0, 'Tên mặt hàng', '', 1, 1, 1, '', '', '', 0, 1, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(509, 194, 'unit', 0, 'Đơn vị', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(510, 194, 'price', 0, 'Giá', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(511, 194, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(513, 195, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(514, 195, 'tinhthanh_id', 0, 'Tỉnh thành', '', 0, 0, 0, '', '', '', 0, 0, 0, 'city_vietnam', '', '', 'title', 'id', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
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
(537, 195, 'is_nvxh', 0, 'Nhân viên xuất hình', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(543, 194, 'khogiay_id', 0, 'Loại khổ giấy', '', 1, 1, 1, '', '', '', 0, 0, 0, 'khogiay', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(544, 194, 'dientich', 0, 'Tốn giấy (cm2)', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(570, 194, 'price_goc', 0, 'Giá gốc', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(605, 194, 'dateupdated', 0, 'Ngày cập nhật', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(606, 195, 'price', 0, 'Lương', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(607, 214, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(608, 214, 'title', 0, 'Ca làm', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(609, 218, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(610, 218, 'title', 0, 'Loại', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(611, 215, 'id', NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(612, 215, 'nhanvien_id', 0, 'Nhân viên', '', 1, 1, 1, '', '', '', 0, 0, 0, 'nhanvien', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(613, 215, 'ca_id', 0, 'Ca làm', '', 1, 1, 1, '', '', '', 0, 0, 0, 'calam', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(614, 215, 'datecreated', 0, 'Ngày', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(615, 215, 'note', 0, 'Ghi chú', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(616, 215, 'status', 0, 'Xác nhận', '', 1, 1, 1, '', '', '', 0, 0, 0, '', '', '', '', '', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0'),
(617, 215, 'type_id', 0, 'Loại', '', 1, 1, 1, '', '', '', 0, 0, 0, 'type_leave', '', '', 'title', 'id', 0, 1, 0, 0, '', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `sys_format`
--

DROP TABLE IF EXISTS `sys_format`;
CREATE TABLE IF NOT EXISTS `sys_format` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varbinary(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_format`
--

INSERT INTO `sys_format` (`id`, `title`, `code`) VALUES
(1, 'Tiền VNĐ', 0x564e44),
(2, 'Phần trăm', 0x50455243454e54),
(3, 'Tiền US', 0x24);

-- --------------------------------------------------------

--
-- Table structure for table `sys_menu_group`
--

DROP TABLE IF EXISTS `sys_menu_group`;
CREATE TABLE IF NOT EXISTS `sys_menu_group` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) DEFAULT NULL,
  `status` tinyint(3) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_menu_group`
--

INSERT INTO `sys_menu_group` (`id`, `title`, `picture`, `position`, `status`) VALUES
(1, 'System', '/products/icon/Housing.gif', 0, 1),
(5, 'Công việc', '/products/icon/Page.gif', 0, 1),
(7, 'Văn phòng', '/products/icon/Photo.gif', 0, 1),
(23, 'Kinh doanh', '/products/icon/CustomerInfo.gif', 5, 1),
(24, 'Dịch vụ', '/products/icon/Job.gif', 0, 1),
(25, 'Mua Hàng', '/products/icon/Product.gif', 0, 1),
(26, 'Quản Lý Kho', '/products/icon/CustomerInfo.gif', 0, 1),
(27, 'Kế Toán', '/products/icon/Event.gif', 0, 1),
(28, 'Nhân Sự', '/products/icon/Job.gif', 0, 1),
(29, 'Quản Trị', '/products/icon/Event.gif', 0, 1),
(30, 'Thông tin chung', '/products/icon/OnlineTest.gif', 0, 1),
(31, 'Tin nhắn', '/products/icon/Housing.gif', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_orderby`
--

DROP TABLE IF EXISTS `sys_orderby`;
CREATE TABLE IF NOT EXISTS `sys_orderby` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `id` int(10) unsigned NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `function_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `id` int(10) unsigned NOT NULL,
  `table_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Label=Table',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu` tinyint(3) DEFAULT '0',
  `custom_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_group_id` int(10) DEFAULT NULL,
  `show_order` tinyint(3) DEFAULT '1',
  `list_page_size` int(10) DEFAULT NULL,
  `list_footer` int(3) DEFAULT '0',
  `position` int(10) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=229 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sys_table`
--

INSERT INTO `sys_table` (`id`, `table_name`, `title`, `menu`, `custom_link`, `menu_group_id`, `show_order`, `list_page_size`, `list_footer`, `position`) VALUES
(53, 'sys_field', 'Field', 1, '', 1, 1, 50, 0, 0),
(54, 'sys_table', 'Table', 1, '', 1, 1, 1000, 0, 0),
(58, 'sys_menu_group', 'Menu Group', 1, '', 1, 1, 0, 1, 0),
(73, 'webmaster_roles', 'Chức vụ', 1, '', 29, 1, 0, 0, 0),
(69, 'sys_format', 'Field Format', 1, '', 1, 1, 0, 1, 0),
(70, 'sys_plugin_function', 'Plugin Function', 1, '', 1, 0, 0, 0, 0),
(72, 'webmaster', 'Tài khoản', 1, '', 29, 1, 0, 0, 0),
(74, 'sys_orderby', 'Order by', 1, '', 1, 1, 0, 0, 0),
(123, 'webmaster_permission', 'Permission', 1, '', 29, 1, 0, 1, 0),
(191, 'city_vietnam', 'Nhóm khách hàng', 1, '', 30, 1, 50, 0, 0),
(194, 'mathang', 'Nhập mặt hàng', 1, '', 5, 1, 100, 0, 1),
(195, 'nhanvien', 'Nhân viên', 1, '', 28, 1, 0, 0, 3),
(197, 'setting', 'Cấu hình hệ thống', 1, '', 29, 1, 0, 0, 5),
(214, 'calam', 'Ca làm', 1, '', 28, 1, 0, 0, 0),
(215, 'leavelist', 'Ca xin nghỉ - Tăng ca', 1, '', 24, 1, 50, 0, 0),
(216, 'luong', 'Tính lương', 1, 'tinhluong.php', 24, 1, 0, 0, 0),
(228, 'khachhang', 'Khách hàng', 1, '', 23, 1, 0, 0, 0),
(218, 'type_leave', 'Loại', 1, '', 24, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `type_leave`
--

DROP TABLE IF EXISTS `type_leave`;
CREATE TABLE IF NOT EXISTS `type_leave` (
  `id` int(10) NOT NULL,
  `title` varchar(250) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type_leave`
--

INSERT INTO `type_leave` (`id`, `title`) VALUES
(1, 'Xin nghỉ'),
(2, 'Làm thêm ca');

-- --------------------------------------------------------

--
-- Table structure for table `webmaster`
--

DROP TABLE IF EXISTS `webmaster`;
CREATE TABLE IF NOT EXISTS `webmaster` (
  `id` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Thanh vien',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mat khau',
  `fullname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ho ten',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email',
  `roleid` int(10) NOT NULL COMMENT 'Role',
  `status` tinyint(3) unsigned DEFAULT '1' COMMENT 'Trang thai',
  `is_change_webmaster_permission` tinyint(3) DEFAULT '0',
  `is_view_tabledesign` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webmaster`
--

INSERT INTO `webmaster` (`id`, `username`, `password`, `fullname`, `email`, `roleid`, `status`, `is_change_webmaster_permission`, `is_view_tabledesign`) VALUES
(3, 'thuy.tq', '6d230603c695221de25dc34f6bb31a73', 'Mr. Thuy', 'thuy.tq@hotmail.com', 11, 1, 1, 1),
(37, 'admin', 'e6e061838856bf47e1de730719fb2609', 'Ban Lãnh Đạo', 'info@lapthinh.com', 4, 1, 1, 1),
(39, 'nhanvien', 'cf3fb234ce7ff941cd195efb4314ffab', 'Nhân Viên', 'nhanvien@lapthinh.com', 12, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_permission`
--

DROP TABLE IF EXISTS `webmaster_permission`;
CREATE TABLE IF NOT EXISTS `webmaster_permission` (
  `id` int(10) unsigned NOT NULL,
  `webmaster_role_id` int(10) DEFAULT NULL,
  `table_id` int(10) DEFAULT NULL,
  `is_list` tinyint(4) DEFAULT '1',
  `is_insert` tinyint(4) DEFAULT '1',
  `is_edit` tinyint(4) DEFAULT '1',
  `is_delete` tinyint(4) DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `webmaster_permission`
--

INSERT INTO `webmaster_permission` (`id`, `webmaster_role_id`, `table_id`, `is_list`, `is_insert`, `is_edit`, `is_delete`) VALUES
(39, 12, 190, 1, 1, 0, 0),
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
(71, 4, 215, 1, 1, 1, 1),
(70, 4, 217, 1, 1, 1, 1),
(69, 11, 216, 1, 1, 1, 1),
(55, 4, 208, 1, 1, 1, 1),
(56, 4, 211, 1, 1, 1, 1),
(68, 11, 215, 1, 1, 1, 1),
(67, 11, 217, 1, 1, 1, 1),
(66, 12, 217, 1, 1, 1, 1),
(65, 4, 213, 1, 1, 1, 1),
(64, 14, 213, 1, 1, 1, 1),
(62, 4, 212, 1, 1, 1, 1),
(63, 11, 192, 1, 1, 1, 1),
(72, 4, 216, 1, 1, 1, 1),
(73, 12, 206, 1, 1, 1, 1),
(74, 12, 205, 1, 1, 1, 1),
(75, 12, 202, 1, 1, 1, 1),
(76, 12, 204, 1, 1, 1, 1),
(77, 12, 212, 1, 1, 1, 1),
(78, 12, 211, 1, 1, 1, 1),
(79, 4, 219, 1, 1, 1, 1),
(80, 12, 219, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `webmaster_roles`
--

DROP TABLE IF EXISTS `webmaster_roles`;
CREATE TABLE IF NOT EXISTS `webmaster_roles` (
  `id` smallint(6) NOT NULL COMMENT 'ID',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Role name',
  `position` int(10) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `webmaster_roles`
--

INSERT INTO `webmaster_roles` (`id`, `title`, `position`) VALUES
(4, 'Ban Lãnh Đạo', 1),
(11, 'Quản lý hệ thống', 0),
(12, 'Nhân viên', 2),
(13, 'Khách hàng', 3),
(14, 'Log nhân viên xuất hình', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calam`
--
ALTER TABLE `calam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city_vietnam`
--
ALTER TABLE `city_vietnam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `leavelist`
--
ALTER TABLE `leavelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luong`
--
ALTER TABLE `luong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mathang`
--
ALTER TABLE `mathang`
  ADD PRIMARY KEY (`id`), ADD KEY `item_code` (`item_code`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_field`
--
ALTER TABLE `sys_field`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_format`
--
ALTER TABLE `sys_format`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_menu_group`
--
ALTER TABLE `sys_menu_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_orderby`
--
ALTER TABLE `sys_orderby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_plugin_function`
--
ALTER TABLE `sys_plugin_function`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sys_table`
--
ALTER TABLE `sys_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_leave`
--
ALTER TABLE `type_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmaster`
--
ALTER TABLE `webmaster`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `webmaster_permission`
--
ALTER TABLE `webmaster_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webmaster_roles`
--
ALTER TABLE `webmaster_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calam`
--
ALTER TABLE `calam`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `city_vietnam`
--
ALTER TABLE `city_vietnam`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `leavelist`
--
ALTER TABLE `leavelist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `luong`
--
ALTER TABLE `luong`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mathang`
--
ALTER TABLE `mathang`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `sys_field`
--
ALTER TABLE `sys_field`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=618;
--
-- AUTO_INCREMENT for table `sys_format`
--
ALTER TABLE `sys_format`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sys_menu_group`
--
ALTER TABLE `sys_menu_group`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `sys_orderby`
--
ALTER TABLE `sys_orderby`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sys_plugin_function`
--
ALTER TABLE `sys_plugin_function`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sys_table`
--
ALTER TABLE `sys_table`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=229;
--
-- AUTO_INCREMENT for table `type_leave`
--
ALTER TABLE `type_leave`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `webmaster`
--
ALTER TABLE `webmaster`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `webmaster_permission`
--
ALTER TABLE `webmaster_permission`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `webmaster_roles`
--
ALTER TABLE `webmaster_roles`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'ID',AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
