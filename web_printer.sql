-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 05:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_printer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0: Admin 1: Super Admin',
  `avatar` varchar(200) DEFAULT 'https://us.123rf.com/450wm/anatolir/anatolir2011/anatolir201110041/159616981-icono-del-sistema-administrador-estilo-simple.jpg?ver=6'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `level`, `avatar`) VALUES
(2, 'admin', 'admin@gmail.com', '123', 0, 'https://us.123rf.com/450wm/anatolir/anatolir2011/anatolir201110041/159616981-icono-del-sistema-administrador-estilo-simple.jpg?ver=6'),
(3, 'sadmin', 'sadmin@gmail.com', '123', 1, 'https://us.123rf.com/450wm/anatolir/anatolir2011/anatolir201110041/159616981-icono-del-sistema-administrador-estilo-simple.jpg?ver=6');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Máy In Đa Năng', 'may-in-da-nang', '2023-11-21 08:17:57', '2023-11-21 08:17:57'),
(2, 'Máy In Màu', 'may-in-mau', '2023-11-21 08:18:19', '2023-11-21 08:18:19'),
(3, 'Máy In A3', 'may-in-a3', '2023-11-21 08:18:38', '2023-11-21 08:18:38'),
(4, 'Vật Tư Ngành In', 'vat-nganh-in', '2023-11-21 08:19:12', '2023-11-21 08:19:12');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`id`, `name`, `logo`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Máy In Brother', '1701239123_logo_Brother.png', '093288', 'Khu Công Nghiệp Bắc Ninh', '2023-11-21 08:21:31', '2023-11-21 08:21:31'),
(2, 'Máy In HP', '1701239128_logo_hp.png', '0923932876', 'Quận 3 - Thành phố HCM', '2023-11-21 08:24:48', '2023-11-21 08:24:48'),
(3, 'Máy In Canon', '1701239133_logo_Canon.png', '0923889723', 'Đông Anh - Hà Nội', '2023-11-21 08:25:36', '2023-11-21 08:25:36'),
(4, 'Máy In Epson', '1701239137_logo_EPSON.png', '0283929392', 'Quận 5  - Thành Phố HCM', '2023-11-21 08:27:18', '2023-11-21 08:27:18'),
(5, 'Máy In Dell', '1701239142_logo_Dell.png', '0839398283', 'New York', '2023-11-21 08:29:10', '2023-11-21 08:29:10'),
(6, 'Máy In Acer', '1701239152_logo-acer.png', '0388289342', 'China', '2023-11-21 08:29:40', '2023-11-21 08:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT 'Trạng thái: 0: Chưa duyệt 1: Đã duyệt',
  `total_price` float DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fullname`, `email`, `phone_number`, `address`, `note`, `status`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'Trịnh Ngọc Trường', 'truong8488@gmail.com', '0353129941', 'Thanh Hóa', 'Mang đến tận nhà( nhà số 7 A)', 1, 7000000, '2023-11-21 16:11:33', '2023-11-21 16:11:33'),
(2, 1, 'Trịnh Ngọc Trường', 'truong8488@gmail.com', '0353129941', 'Thanh Hóa', 'không có', 0, 2800000, '2023-11-21 16:30:34', '2023-11-21 16:30:34'),
(4, 1, 'Trịnh Ngọc Trường', 'truong8488@gmail.com', '0353129941', '', '', 0, 2800000, '2023-11-27 15:35:38', '2023-11-27 15:35:38'),
(5, 5, 'Lê Quang Thái', 'thai@gmail.com', '0123456789', 'đông anh', 'k', 1, 17600000, '2023-11-29 08:53:54', '2023-11-29 08:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`order_id`, `product_id`, `quantity`) VALUES
(1, 5, 1),
(2, 3, 1),
(4, 3, 1),
(5, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `printer_type` varchar(150) DEFAULT NULL,
  `paper_size` varchar(150) DEFAULT NULL,
  `scan_speed` varchar(150) DEFAULT NULL,
  `double_sided_scanning` tinyint(1) DEFAULT 0 COMMENT 'Scan hai mặt: 0: Không 1: Có',
  `automatic_paper_feeder` tinyint(1) DEFAULT 0 COMMENT 'Khay nạp giấy tự động: 0: Không có sẵn 1: Có sẵn',
  `printer_communicate` varchar(150) DEFAULT NULL,
  `warranty` varchar(150) DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `printer_condition` varchar(200) DEFAULT NULL,
  `hot_selling` tinyint(1) DEFAULT 0 COMMENT 'Bán chạy: 0: Không bán chạy 1: Bán chạy',
  `hot_sale` tinyint(1) DEFAULT 0 COMMENT 'Khuyến mãi: 0: Không khuyến mãi 1: Khuyễn mãi',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `manufacturer_id`, `title`, `price`, `discount`, `printer_type`, `paper_size`, `scan_speed`, `double_sided_scanning`, `automatic_paper_feeder`, `printer_communicate`, `warranty`, `thumbnail`, `printer_condition`, `hot_selling`, `hot_sale`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Máy in 2 mặt đa chức năng HP M227fdw (G3Q75A)', 5000000, 4500000, ' Máy in laser đen trắng đa chức năng HP', 'A4', '40 tờ', 1, 1, 'USB/ LAN/ WiFi', '12 tháng tại nơi sử dụng', '1701099860_1.png', '00% mới, nguyên tem, nguyên hộp, CO/CQ', 1, 1, '2023-11-21 09:17:33', '2023-11-21 09:17:33'),
(2, 3, 2, 'Máy in A3 HP Laserjet 5200 ANTECH (ATH2023)', 6000000, 5800000, 'Máy In A3', 'A4', '80 tờ/phút', 1, 0, 'APV', '6 tháng', '1701099748_c03376066.webp', 'Cũ', 0, 1, '2023-11-21 09:41:21', '2023-11-21 09:41:21'),
(3, 2, 1, 'Máy in 4 màu đa chức năng Brother DCP-T220', 3000000, 2800000, 'Máy In Màu', 'A4/A3', '40', 0, 1, 'USB, ....', '12 tháng ', '1700560303_brother-t220.jpg', 'Mới', 0, 1, '2023-11-21 09:51:43', '2023-11-21 09:51:43'),
(4, 1, 4, 'Máy in 4 màu đa chức năng Epson L3250', 8000000, 7699000, 'Máy In', 'A4/A3', '60', 1, 1, 'USB, Wifi', '12 tháng', '1701099602_epson-l3250--f565.jpg', 'Mới', 1, 1, '2023-11-21 14:00:57', '2023-11-21 14:00:57'),
(5, 2, 2, 'Máy in laser A3 HP Enterprise M712dn (CF236A)', 9000000, 7000000, 'Máy In Màu', 'A4/A3', '60', 1, 1, 'USB, Wifi', '12 Tháng', '1701099998_712dn.1.jpg', 'Mới', 1, 1, '2023-11-21 14:09:43', '2023-11-21 14:09:43'),
(6, 1, 1, 'Máy in 2 mặt đa chức năng Brother MFC-L2701dw', 6450000, 6200000, 'Máy in laser đen trắng đa chức Brother', 'Tối đa A4', '72', 1, 1, 'USB/ LAN/ WiFi', '12 tháng', '1701100794_brother-1.jpg', '100% mới, nguyên tem, nguyên hộp, CO/CQ', 1, 1, '2023-11-27 15:59:54', '2023-11-27 15:59:54'),
(7, 1, 3, 'Máy in phun đa chức năng Canon Pixma E410', 28999000, 2800000, 'Máy in phun màu đa chức Canon', 'Tối đa A4', '60 tờ / phút', 1, 0, ' USB 2.0', '12 tháng tại nơi sử dụng', '1701101374_canon-e410.png', '100% mới, nguyên tem, nguyên hộp, CO/CQ', 1, 0, '2023-11-27 16:09:34', '2023-11-27 16:09:34'),
(8, 3, 4, 'Máy in màu khổ A3 đa năng Epson L15150', 23000000, 21550000, 'Máy in', 'Tối đa A4', '80 tờ', 0, 1, 'USB, Wifi, ....', '24 tháng tại nơi sử dụng', '1701103919_epson-l15150-350x350.webp', '100% mới, nguyên tem, nguyên hộp, CO/CQ', 0, 1, '2023-11-27 16:51:59', '2023-11-27 16:51:59'),
(9, 1, 2, 'Máy in laser màu đa năng HP Color M479fdw (W1A81A)', 18000000, 17600000, 'Máy in laser màu đa chức năng HP', 'Tối đa A4', '	1200 x 1200 dpi', 0, 1, '1 Hi-Speed USB 2.0 port 1 host USB at rear side built-in Gigabit Ethernet 10/100/1000 Base-TX network port 1 Wireless 802.11b/g/n/2.4/5 Ghz Wi-Fi radi', '12 tháng tại nơi sử dụng', '1701105538_1.jpg', '100% mới, nguyên tem, nguyên hộp, CO/CQ', 0, 1, '2023-11-27 17:18:58', '2023-11-27 17:18:58'),
(10, 1, 5, 'Máy in Dell 2350dn, Duplex, Network, Laser trắng đen (2350d)', 10000000, 9500000, 'Laser trắng đen', 'Từ A4', '70', 1, 1, 'Wifi, usb, lan,..', ' 12 tháng', '1701107309_2350d.png', '100% mới, nguyên tem, nguyên hộp, CO/CQ', 1, 1, '2023-11-27 17:48:29', '2023-11-27 17:48:29'),
(11, 2, 1, ' Máy in màu khổ A3 Brother HL-T4000dw', 15000000, 13050000, 'Máy in màu', 'Tối đa A4', '36', 1, 1, 'USB 2.0, LAN, Wireless IEEE 802.11b/g/n.', '12 tháng', '1701107679_ApHandler-3-350x350.jpg', 'Mới nguyên.', 1, 1, '2023-11-27 17:54:39', '2023-11-27 17:54:39'),
(12, 3, 4, 'Máy in 6 màu không dây Epson L8050', 8000000, 6000000, 'Máy in A3', 'tối đa A4', '442', 1, 0, 'USN, Wifi', '12 tháng', '1701107944_epson-l8050-2-350x350.webp', 'mới nguyên, chưa bóc tem', 0, 1, '2023-11-27 17:59:04', '2023-11-27 17:59:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `species` varchar(200) DEFAULT NULL COMMENT 'Chủng loại',
  `machine_type` varchar(200) DEFAULT NULL,
  `activity_cycle` varchar(200) DEFAULT NULL COMMENT 'Chu kỳ hoạt động',
  `optical_resolution` varchar(200) DEFAULT NULL COMMENT 'Độ phân giải quang học',
  `auto_doc_feeder` varchar(200) DEFAULT NULL COMMENT 'Công suất khay nạp tài liệu tự động',
  `scan_options` varchar(150) DEFAULT NULL COMMENT 'Tùy chọn chụp quét',
  `scan_size` text DEFAULT NULL COMMENT 'Kích thước chụp quét',
  `support_weight` varchar(150) DEFAULT NULL COMMENT 'Trọng lượng giấy ảnh media, được hỗ trợ',
  `auto_scan_speed` varchar(200) DEFAULT NULL COMMENT 'Tốc độ chụp quét của khay nạp tài liệu tự động',
  `color_bit_depth` varchar(200) DEFAULT NULL COMMENT 'Chiều sâu bit màu',
  `memory` varchar(50) DEFAULT NULL,
  `scan_file_format` text DEFAULT NULL COMMENT 'Định dạng file scan',
  `connect` text DEFAULT NULL,
  `operating_system` text DEFAULT NULL,
  `printer_size` text DEFAULT NULL,
  `printer_weight` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_id`, `species`, `machine_type`, `activity_cycle`, `optical_resolution`, `auto_doc_feeder`, `scan_options`, `scan_size`, `support_weight`, `auto_scan_speed`, `color_bit_depth`, `memory`, `scan_file_format`, `connect`, `operating_system`, `printer_size`, `printer_weight`, `description`) VALUES
(1, 1, 'Máy In Đa Năng', 'Máy In', '24/12', '4800 x 1200 dp', 'Tốc độ quét tối đa 40 trang/phút hoặc 80 ảnh/phút', 'Hai mặt một lần', ' 21.6 x 31 cm', '	60 đến 90 g/m²', '40 tờ', '	 24 bit (bên ngoài), 48-bit (nội bộ)', '256 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'Dell, Acer', 'Windows 10', '403 x 407 x 317 mm', '9.4 kg', '<h2>Máy in laser đen trắng HP đa chức năng Laserjet Pro M227fdw - G3Q75A&nbsp;</h2>\r\n\r\n<p>Chọn d&ugrave;ng&nbsp;<a href=\"https://www.phucanh.vn/may-in-theo-hang.html?filter=%2C24322%2C\" title=\"Máy in laser đen trắng tại Phúc Anh\">máy in laser đen trắng</a>&nbsp;<a href=\"https://www.phucanh.vn/may-in-da-nang.html\" style=\" text-align: center;\" title=\"Máy in đa chức năng tại Phúc Anh\">đa chức năng</a>&nbsp;<strong><a href=\"https://www.phucanh.vn/tim?q=Laserjet+Pro+M227fdw\" title=\"Máy in HP Laserjet Pro M227fdw\">Laserjet Pro M227fdw</a></strong>&nbsp;để in ấn nhiều trang hơn, hiệu suất cao hơn với việc trang bị hộp&nbsp;<a href=\"https://www.phucanh.vn/muc-cho-may-in-hp.html?brand=82&amp;filter=%2C19914%2C\" title=\"Mực in HP dành cho máy in HP laser đen trắng tại Phúc Anh\">mực in</a>&nbsp;ti&ecirc;u chuẩn JetIntelligence. Thiết lập một tốc độ nhanh 28 trang/ ph&uacute;t phục vụ cho c&ocirc;ng việc in v&agrave; sao ch&eacute;p c&aacute;c loại t&agrave;i liệu văn ph&ograve;ng.</p>\r\n\r\n<p><img alt=\"Máy in laser đen trắng HP đa chức năng Laserjet Pro M227fdw - G3Q75A \" src=\"https://phucanhcdn.com/media/product/26700_m227fdw___g3q75a_hinh_anh_1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>L&agrave;m việc hiệu quả, đa năng</h3>\r\n\r\n<p><strong>M&aacute;y in HP LaserJet Pro MFP M227FDW -G3Q75A</strong>&nbsp;c&oacute; thiết kế hiện đại, m&agrave;u sắc trang nh&atilde; gi&uacute;p nổi bật văn ph&ograve;ng chuy&ecirc;n nghiệp v&agrave; kiểu d&aacute;ng nhỏ gọn dễ d&agrave;ng bố tr&iacute; ở nhiều vị tr&iacute;.&nbsp;<a href=\"https://www.phucanh.vn/may-in-hp.html?filter=%2C24322%2C\" title=\"Máy in laser đen trắng của HP tại Phúc Anh\">M&aacute;y in laser đen trắng của HP</a>&nbsp;ngo&agrave;i chức năng in c&ograve;n c&oacute; t&iacute;nh năng&nbsp;Scan, Copy, Fax với độ ph&acirc;n giải cao gi&uacute;p cho bản in sắc n&eacute;t, đ&aacute;p ứng nhu cầu in ấn trong văn ph&ograve;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"Laserjet Pro M227fdw - G3Q75A\" src=\"https://phucanhcdn.com/media/product/26700_laserjet_pro_m227fdw_g3q75a_ha1.jpg\" style=\"height:500px; width:500px\" /></p>\r\n\r\n<h3>Tốc độ nhanh, mức sử dụng năng lượng thấp</h3>\r\n\r\n<p><strong>LaserJet Pro MFP M227FDW</strong>&nbsp;tiện &iacute;ch nhờ việc t&iacute;ch hợp cả 4 t&iacute;nh năng in, chụp qu&eacute;t, sao ch&eacute;p v&agrave; fax trong một thiết bị nhỏ gọn, ph&ugrave; hợp với c&aacute;c kh&ocirc;ng gian l&agrave;m việc chật hẹp.&nbsp;<a href=\"https://www.phucanh.vn/may-in-theo-hang.html\" title=\"Máy in tại Phúc Anh\">M&aacute;y in</a>&nbsp;đ&aacute;p ứng tốt c&ocirc;ng việc văn ph&ograve;ng với t&iacute;nh năng&nbsp;<a href=\"https://www.phucanh.vn/may-in-theo-hang.html?filter=%2C24322%2C25854%2C\" title=\"Máy in laser đen trắng hỗ trợ in 2 mặt tại Phúc Anh\">in hai mặt</a>&nbsp;nhanh, c&aacute;c trang đầu ti&ecirc;n sẵn s&agrave;ng chỉ trong 6,8 gi&acirc;y.</p>\r\n\r\n<p>M&aacute;y c&oacute; tốc độ in l&ecirc;n đến 28 trang/ ph&uacute;t, c&oacute; khay nạp bản gốc tự động ADF để scan/copy li&ecirc;n tục l&ecirc;n đến 35 trang t&agrave;i liệu gi&uacute;p bạn giải quyết c&ocirc;ng việc anh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<p><img alt=\"may-in-laser-den-trang-hp-da-chuc-nang-laserjet-pro-m227fdw -g3q75a-1\" src=\"https://www.phucanh.vn/media/lib/26700_may-in-laser-den-trang-hp-da-chuc-nang-laserjet-pro-m227fdw-g3q75a-2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>Chất lượng&nbsp;in r&otilde; n&eacute;t v&agrave; chuy&ecirc;n nghiệp</h3>\r\n\r\n<p><strong>HP LaserJet Pro MFP M227FDW (G3Q75A)</strong>&nbsp;tạo các văn bản sắc nét, chữ in m&agrave;u đen đ&acirc;̣m nét, và đ&ocirc;̀ họa sinh đ&ocirc;̣ng với&nbsp;<a href=\"https://www.phucanh.vn/muc-cho-may-in-hp.html?brand=82&amp;filter=%2C19914%2C\" title=\"Mực in HP dành cho máy in HP laser đen trắng tại Phúc Anh\">mực in</a>&nbsp;ch&iacute;nh h&atilde;ng&nbsp;của HP. Đặc biệt m&aacute;y in n&agrave;y sở hữu độ ph&acirc;n giải kh&aacute; cao 1200 x 1200dpi cho văn bản in chuy&ecirc;n nghiệp v&agrave; r&otilde; n&eacute;t. Ngo&agrave;i ra, khi sử dụng m&aacute;y in c&ugrave;ng bộ mực in ch&iacute;nh h&atilde;ng&nbsp;<a href=\"https://www.phucanh.vn/may-in-hp.html\" title=\"Máy in HP tại Phúc Anh\">HP</a>&nbsp;c&ocirc;ng nghệ&nbsp;JetIntelligence sẽ gi&uacute;p bạn in được nhiều hơn v&agrave; sử dụng tiết kiệm hơn.</p>\r\n\r\n<p><img alt=\"Máy in laser đen trắng HP đa chức năng Laserjet Pro M227fdw - G3Q75A \" src=\"https://phucanhcdn.com/media/product/26700_laserjet_pro_m227fdw_g3q75a_ha3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>Tiết kiệm điện năng</h3>\r\n\r\n<p><strong>HP LaserJet Pro MFP M227FDW</strong>&nbsp;l&agrave; d&ograve;ng m&aacute;y gi&uacute;p tiết kiệm năng lượng với C&ocirc;ng nghệ HP Auto-On/Auto-Off. M&aacute;y giải quyết c&aacute;c nhiệm vụ v&agrave; chụp qu&eacute;t c&aacute;c thư mục l&ecirc;n email, USB, v&agrave; qua mạng từ m&agrave;n h&igrave;nh cảm ứng m&agrave;u 2,7 inch.</p>\r\n\r\n<h3>In di động trở n&ecirc;n đơn giản</h3>\r\n\r\n<p><strong>M&aacute;y in&nbsp;LaserJet Pro MFP M227FDW</strong>&nbsp;in từ&nbsp;<a href=\"https://www.phucanh.vn/dien-thoai-thong-minh.html?brand=14\" title=\"Điện thoại Iphone tại Phúc Anh\">iPhone</a>,&nbsp;<a href=\"https://www.phucanh.vn/may-tinh-bang.html?brand=14\" title=\"Máy tính bảng Ipad tại Phúc Anh\">iPad</a>&nbsp;v&agrave; AirPrint dễ d&agrave;ng nhờ t&iacute;nh năng kết nối kh&ocirc;ng d&acirc;y. In một c&aacute;ch đơn giản bằng c&aacute;ch gửi một email, ngay từ một chiếc điện thoại th&ocirc;ng minh nhờ sử dụng HP ePrint.&nbsp;<strong>HP LaserJet Pro MFP M227FDW</strong>&nbsp;hỗ trợ&nbsp;kết nối USB 2.0, mạng LAN/wifi gi&uacute;p&nbsp;bạn&nbsp;c&oacute; thể dễ d&agrave;ng lấy t&agrave;i liệu để in ấn.</p>\r\n\r\n<p><img alt=\"Máy in laser đen trắng HP đa chức năng Laserjet Pro M227fdw - G3Q75A \" src=\"https://phucanhcdn.com/media/product/26700_laserjet_pro_m227fdw_g3q75a_ha2.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, d&ograve;ng&nbsp;<strong>m&aacute;y in M227FDW</strong>&nbsp;của HP c&ograve;n c&oacute; thể t&acirc;̣p trung quyền ki&ecirc;̉m soát m&ocirc;i trường in ấn của bạn với HP Web Jetadmin đem đến hi&ecirc;̣u quả cho doanh nghi&ecirc;̣p.</p>\r\n\r\n<p>Tới&nbsp;<strong><a href=\"https://www.phucanh.vn/\">Ph&uacute;c Anh</a></strong>&nbsp;để được tư vấn v&agrave; sở hữu c&aacute;c sản phẩm c&ocirc;ng nghệ,&nbsp;<strong><a href=\"https://www.phucanh.vn/laptop.html\">laptop</a>,&nbsp;<a href=\"https://www.phucanh.vn/may-tinh-de-ban.html\">PC</a>,&nbsp;<a href=\"https://www.phucanh.vn/camera-theo-hang.html\">camera,</a>&nbsp;<a href=\"https://www.phucanh.vn/linh-kien-pc-lap-rap.html\">linh kiện m&aacute;y t&iacute;nh</a>,&nbsp;<a href=\"https://www.phucanh.vn/thiet-bi-van-phong.html\">thiết bị văn ph&ograve;ng</a></strong>,... ch&iacute;nh h&atilde;ng, uy t&iacute;n c&ugrave;ng chất lượng dịch vụ tốt nhất hiện nay.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(2, 2, 'Máy In A3', 'Máy In', '24/10', '	5500 x 1220 dp', 'Tốc độ quét tối đa 40 trang/phút hoặc 80 ảnh/phút', 'Hai mặt một lần', '21.6 x 31 cm', '60 đến 90 g/m²', '80 tờ/phút', '8bit', '124 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'Dell, Acer, Brother', 'Windons 10', 'Có cấu tạo 563 x 490 x 275mm (D x W x H)', '9kg', '<h3>M&aacute;y in A3 cũ HP Laserjet 5200&nbsp;ch&iacute;nh h&atilde;ng gi&aacute; rẻ</h3>\r\n\r\n<p>Từ l&acirc;u m&aacute;y in HP 5200 đ&atilde; l&agrave; thiết bị kh&ocirc;ng thể thiếu trong mỗi c&ocirc;ng ty hay doanh nghiệp n&agrave;o c&oacute; nhu cầu in ấn vừa v&agrave; nhỏ. Sản phẩm vừa c&oacute; thể in khổ giấy A3 cũng c&oacute; thể xuất bản in t&agrave;i liệu A4 nhanh ch&oacute;ng v&agrave; đơn giản.</p>\r\n\r\n<p>C&oacute; nhiều người tin tưởng sử dụng c&aacute;c sản phẩm của h&atilde;ng HP vẫn đ&atilde; v&agrave; đang sử dụng HP 5200&nbsp;series để phục vụ mục đ&iacute;ch c&ocirc;ng việc. Nếu điều kiện kinh tế cho ph&eacute;p hay đơn giản l&agrave; bạn &quot;kh&ocirc;ng th&iacute;ch đồ second-half&quot; th&igrave; bạn n&ecirc;n mua sản phẩm&nbsp;mới về để đảm bảo tuổi thọ, chất lượng v&agrave; thời gian bảo h&agrave;nh l&acirc;u d&agrave;i. Một chiếc m&aacute;y in HP LaserJet 5200&nbsp;mới c&oacute; gi&aacute; rơi v&agrave;o kho&agrave;ng 20&nbsp;triệu vnđ.</p>\r\n\r\n<p>Nếu bạn sử dụng cho mục đ&iacute;ch c&aacute; nh&acirc;n, hay doanh nghiệp của bạn mới th&agrave;nh lập cần in A3 nhưng chưa c&oacute; đủ kinh ph&iacute; cho một chiệc m&aacute;y in mới th&igrave; việc lựa chọn một chiếc&nbsp;m&aacute;y in A3 cũ l&agrave; lựa chọn kh&ocirc;ng tồi cho bạn. Với chi ph&iacute; chỉ 1/5 so với một chiệc m&aacute;y in Hp laserjet 5200 mới m&agrave; chất lượng gần tương đương.&nbsp;</p>\r\n\r\n<p><img alt=\"may-in-hp-laserjet-5200\" src=\"https://mayincugiare3s.com/uploads/images/may-in-hp-laserjet-5200.jpg\" title=\"Máy in HP LaserJet 5200\" /></p>\r\n\r\n<p>Ưu điểm của m&aacute;y in HP 5200</p>\r\n\r\n<p>Sản phẩm vẫn c&oacute; đầy đủ những ưu điểm m&agrave; một chiếc HP 5200 series printers hội tụ như:</p>\r\n\r\n<p>- Thiết kế vu&ocirc;ng vắn: M&aacute;y in khổ giấy a3 n&agrave;y&nbsp;c&oacute; thiết kế vu&ocirc;ng vắn, gợi cảm gi&aacute;c khỏe khoắn, mạnh mẽ.</p>\r\n\r\n<p>- K&iacute;ch thước nhỏ gọn: C&oacute; cấu tạo 563 x 490 x 275mm (D x W x H), thiết bị n&agrave;y&nbsp;được đ&aacute;nh gi&aacute; l&agrave; chiếc m&aacute;y in A3 nhỏ gọn nhất tr&ecirc;n thị trường hiện nay.</p>\r\n\r\n<p>- Tốc độ in cao: M&aacute;y c&oacute; thể xuất bản 35 bản in A4/ph&uacute;t (khi in li&ecirc;n tục) gi&uacute;p r&uacute;t ngắn thời gian in t&agrave;i liệu của bạn.</p>\r\n\r\n<p>- Bản in sắc n&eacute;t: Với độ ph&acirc;n giải l&ecirc;n đến 1200x1200dpi, những bản in của m&aacute;y sắc từng đường mực, n&eacute;t từng g&oacute;c cạnh.</p>\r\n\r\n<p>- Khay đựng giấy lớn: Khay dưới (đa năng) c&oacute; thể chứa tới 250 tờ gi&uacute;p việc in ấn kh&ocirc;ng bị gi&aacute;n đoạn. C&ugrave;ng với đ&oacute; khay giấy n&agrave;y c&ograve;n c&oacute; thang đo lượng giấy để bạn sớm biết v&agrave; bổ sung th&ecirc;m giấy đảm bảo qu&aacute; tr&igrave;nh in ấn. Khay tr&ecirc;n ở mặt trước của m&aacute;y c&oacute; thể đựng 100 tờ sẵn s&agrave;ng in trong suốt qu&aacute; tr&igrave;nh bạn l&agrave;m việc.</p>\r\n\r\n<p>- Dễ d&agrave;ng kết nối: T&iacute;ch hợp cổng kết nối USB dễ d&agrave;ng c&agrave;i đặt kết nối m&aacute;y t&iacute;nh với m&aacute;y in.</p>\r\n\r\n<p><a href=\"http://mayincugiare3s.com/\"><strong>C&ocirc;ng ty&nbsp;m&aacute;y in T&acirc;n &Aacute;</strong></a>&nbsp;vẫn lu&ocirc;n cung cấp sản phẩm m&aacute;y in A3 cũ HP Laserjet 5200&nbsp;cũ&nbsp;khi bạn c&oacute; nhu cầu. H&atilde;y li&ecirc;n hệ ngay cho ch&uacute;ng t&ocirc;i để được tư vấn mua m&aacute;y in a3 hay cho văn ph&ograve;ng của bạn.</p>\r\n'),
(3, 3, 'Máy In ', 'Máy In Mày', '24/10', '920  * 720', '50', '40', '20', '30', '40', '4 bit', '254 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'Windows, dell, Acer', 'Windows, dell, Acer', '15 x 20cm', '7 kg', '<h3>M&aacute;y in phun m&agrave;u đa năng Brother DCP-T220 In - Copy - Scan</h3>\r\n\r\n<p>Với thiết kế nhỏ gọn, nhưng lại mang đến hiệu quả c&ocirc;ng việc cao.&nbsp;<strong><a href=\"https://www.phucanh.vn/may-in-phun-mau.html\">M&aacute;y in phun m&agrave;u&nbsp;</a>đa năng Brother DCP-T220</strong>&nbsp;với khả năng in, copy, scan chắc chắn sẽ l&agrave; c&ocirc;ng cụ hỗ trợ đắc lực cho c&aacute;c văn ph&ograve;ng, cũng như c&aacute;c hộ gia đ&igrave;nh. Thỏa sức in ấn m&agrave; kh&ocirc;ng cần lo lắng về việc chi ph&iacute; đầu tư c&aacute;c sản phẩm cho mỗi chức năng kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"Máy in phun màu đa năng Brother DCP-T220 In - Copy - Scan\" src=\"https://phucanhcdn.com/media/product/42948_pri_bro_dcp_t220_a.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Hiệu suất c&ocirc;ng việc cao</strong></p>\r\n\r\n<p>Với tốc độ in t&agrave;i liệu&nbsp;trắng đen 16 trang/ph&uacute;t, in m&agrave;u 9 trang/ph&uacute;t&nbsp; (Dựa tr&ecirc;n ti&ecirc;u chuẩn ISO / IEC 24734, vui l&ograve;ng tham khảo&nbsp;<strong><a href=\"https://support.brother.com/g/s/id/printspeed/index.html\">tại đ&acirc;y</a></strong>,&nbsp;<strong><a href=\"https://www.phucanh.vn/may-in-brother.html\">m&aacute;y in phun m&agrave;u Brother&nbsp;</a></strong>tăng tốc quy tr&igrave;nh l&agrave;m việc của bạn để bạn c&oacute; thể l&agrave;m được nhiều việc hơn trong thời gian ngắn hơn. Từ việc in c&aacute;c b&aacute;o c&aacute;o chuy&ecirc;n nghiệp đến c&aacute;c t&agrave;i liệu quảng c&aacute;o nổi bật, bạn c&oacute; thể tự tin tạo ra c&aacute;c t&agrave;i liệu kinh doanh mạnh mẽ sẽ tạo ấn tượng tốt nhất.</p>\r\n\r\n<p><strong>Xử l&yacute; đa nhiệm hiệu quả</strong></p>\r\n\r\n<p><strong><a href=\"https://www.phucanh.vn/may-in-da-nang.html\">M&aacute;y in đa năng&nbsp;</a>Brother</strong>&nbsp;xử l&yacute; nhiều c&ocirc;ng việc in với khay giấy 150 tờ c&oacute; thể điều chỉnh cho c&aacute;c khổ giấy A4, A5 v&agrave; bổ sung khe nạp bằng tay cho nhiều loại giấy kh&aacute;c nhau, t&iacute;ch hợp&nbsp;t&iacute;nh năng sao ch&eacute;p nhiều bản v&agrave;o một trang.</p>\r\n\r\n<p><img alt=\"Máy in phun màu đa năng Brother DCP-T220 In - Copy - Scan\" src=\"https://phucanhcdn.com/media/product/42948_pri_bro_dcp_t220_c.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Tiết kiệm chi ph&iacute; in ấn</strong></p>\r\n\r\n<p><strong>M&aacute;y in phun m&agrave;u</strong>&nbsp;cho hiệu suất in với độ phủ 5% trang A4 l&agrave;: 7500 trang khi sử dụng&nbsp;<a href=\"https://www.phucanh.vn/muc-hop-may-in-phun-brother-btd60bk-dung-cho-may-dcp-t310t510w710wmfc-t810wt910w.html\"><strong>mực in&nbsp;BTD60BK</strong></a>&nbsp;v&agrave;&nbsp; 5000 trang khi sử dụng&nbsp;<a href=\"https://www.phucanh.vn/\"><strong>mực in&nbsp;BT5000</strong></a>. Đ&acirc;y l&agrave; hai mẫu&nbsp;<a href=\"https://www.phucanh.vn/muc-cho-may-in-brother.html\"><strong>mực in ch&iacute;nh h&atilde;ng của Brother</strong></a>, đem lại năng suất cực cao,&nbsp;gi&aacute; cả phải chăng, đảm bảo m&aacute;y v&agrave; đầu in c&oacute; tuổi thọ cao, đem đến sự tiết kiệm l&acirc;u d&agrave;i cho người d&ugrave;ng.</p>\r\n\r\n<p><strong>Dễ d&agrave;ng điều chỉnh v&agrave; tiếp cận</strong></p>\r\n\r\n<p>Với b&igrave;nh mực l&agrave;m bằng chất liệu trong suốt, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng quan s&aacute;t t&igrave;nh trạng mực c&ograve;n lại trong mỗi khay, dễ d&agrave;ng nhận biết khi tiếp mực.&nbsp;</p>\r\n\r\n<p>Cơ chế cắm v&agrave; chạy,&nbsp;<strong>m&aacute;y in</strong>&nbsp;<strong>Brother</strong>&nbsp;c&oacute; thể sự&nbsp;dụng ngay lập tức m&agrave; kh&ocirc;ng cần c&aacute;c thao t&aacute;c c&aacute;i đặt rườm r&agrave;.</p>\r\n\r\n<p><img alt=\"Máy in phun màu đa năng Brother DCP-T220 In - Copy - Scan\" src=\"https://phucanhcdn.com/media/product/42948_pri_bro_dcp_t220_b.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p><strong>Kết nối dễ d&agrave;ng với c&aacute;c thiết bị qua cổng USB</strong></p>\r\n\r\n<p><strong>M&aacute;y in</strong>&nbsp;được thiết kế ph&ugrave; hợp với mọi m&ocirc;i trường l&agrave;m việc. Kết nối với c&aacute;c thiết bị m&aacute;y t&iacute;nh, laptop dễ d&agrave;ng qua cổng giao tiếp USB.</p>\r\n\r\n<p>Sản phẩm hiện đang c&oacute; b&aacute;n tại&nbsp;<strong>Ph&uacute;c Anh&nbsp;</strong>với chế độ bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng.</p>\r\n'),
(4, 4, 'Máy In Màu Đa Năng', 'Máy In', '24/14', '5500 x 1220 dp', '50 tờ / phút', '40', '30', '60 đến 90 g/m²', '60', '16bit', '600MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'Các thiết bị điện tự', 'Windowns, Dell, HP, Acer,...', '29 x 35cm', '10kg', '<h2>Máy in phun màu Epson L3250 (Print/ Copy/ Scan/Wifi)</h2>\r\n\r\n<p>Epson L3250 (Print/ Copy/ Scan/Wifi)&nbsp; - sự đầu tư hợp l&yacute; đến từ doanh nghiệp bạn.</p>\r\n\r\n<p><img alt=\"Máy in phun màu Epson L3250\" src=\"https://phucanhcdn.com/media/lib/24-03-2022/epson-l3250--f565.jpg\" style=\"height:305px; width:600px\" /></p>\r\n\r\n<h3>Trợ thủ đắc lực cho giới văn ph&ograve;ng bởi sự nhỏ gọn nhưng đa năng.</h3>\r\n\r\n<p>Epson L3250 với thiết kế nhỏ gọn c&ugrave;ng trọng lượng chỉ 3.9 kg cho bạn kh&ocirc;ng cần suy nghĩ về nơi đặt.</p>\r\n\r\n<p><a href=\"https://www.phucanh.vn/may-in-epson.html\">M&aacute;y in EPSON</a>&nbsp;sở hữu&nbsp;4 t&iacute;nh năng cực quan trọng với c&aacute;c văn ph&ograve;ng l&agrave;&nbsp;<strong>in, scan, copy, wifi.</strong></p>\r\n\r\n<p>Kh&ocirc;ng chỉ đem đến thiết kế th&acirc;n thiện, Epson L3250 c&ograve;n sở&nbsp;hữu khả năng thay thế mực dễ d&agrave;ng gi&uacute;p bạn cũng c&oacute; thể tự m&igrave;nh bơm mực cho&nbsp;<a href=\"https://www.phucanh.vn/may-in.html\">m&aacute;y in</a>&nbsp;với thao t&aacute;c cực kỳ đơn giản m&agrave; kh&ocirc;ng cần đến những kỹ thuật vi&ecirc;n, bằng c&aacute;ch ch&acirc;m mực (đổ mực) v&agrave;o hệ thống mực li&ecirc;n tục với những lọ&nbsp;<a href=\"https://www.phucanh.vn/muc-cho-may-in-epson.html\">mực ch&iacute;nh h&atilde;ng Epson</a>.</p>\r\n\r\n<p><img alt=\"Máy in phun màu Epson L3250\" src=\"https://phucanhcdn.com/media/lib/24-03-2022/may-in-phun-mau-epson-l3250-h4.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h3>Đem tới chất lượng v&agrave; tốc độ vượt trội, in ảnh kh&ocirc;ng viền k&iacute;ch thước 4R tiết kiệm chi ph&iacute; với C&ocirc;ng nghệ Epson Heat-Free.</h3>\r\n\r\n<p>Để đem đến tốc độ in cao với mức ti&ecirc;u thụ điện năng thấp hơn, EPSON L3250 sử&nbsp;dụng&nbsp;<strong>c&ocirc;ng nghệ Epson Heat-Free</strong>&nbsp;v&igrave; kh&ocirc;ng cần nhiệt trong qu&aacute; tr&igrave;nh phun mực.</p>\r\n\r\n<p>D&ograve;ng L3250 c&oacute;&nbsp;<strong>năng suất in cao</strong>&nbsp;l&ecirc;n đến 4.500 trang đối với đen trắng v&agrave; 7.500 trang đối với m&agrave;u. Bạn thậm ch&iacute; c&oacute; thể<strong>&nbsp;in ảnh kh&ocirc;ng viền l&ecirc;n đến k&iacute;ch thước 4R</strong>,&nbsp;<strong>độ ph&acirc;n giải 5760dpi x 1440dpi</strong>&nbsp;v&agrave; k&iacute;ch thước giọt mực 3pl, m&aacute;y in phun m&agrave;u Epson L3250 mang lại cho bạn những bản in m&agrave;u chất lượng v&agrave; cực kỳ sắc n&eacute;t, kh&ocirc;ng bị lem m&agrave;u.</p>\r\n\r\n<p><img alt=\"Máy in phun màu Epson L3250\" src=\"https://phucanhcdn.com/media/lib/24-03-2022/may-in-phun-mau-epson-l3250-h3.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<h3>C&ocirc;ng nghệ in kh&ocirc;ng d&acirc;y với c&aacute;c ứng dụng tiện &iacute;ch.</h3>\r\n\r\n<p><a href=\"https://www.phucanh.vn/may-in-phun-mau.html\">Máy in phun màu</a>&nbsp;sử dụng kết nối c&oacute; d&acirc;y USB 2.0 tốc độ cao truyền thống.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; bạn cũng c&oacute; thể thoải m&aacute;i sử dụng m&aacute;y in tr&ecirc;n c&aacute;c hệ điều h&agrave;nh phổ th&ocirc;ng như: Windows, Mac OS &hellip;</p>\r\n\r\n<p>D&ugrave; đang ở đ&acirc;u bạn cũng c&oacute; thể in được với&nbsp;<strong>chế độ in kh&ocirc;ng d&acirc;y qua Wi-Fi&nbsp;</strong>từ c&aacute;c ứng dụng từ thiết bị di động. Epson L3250 c&ograve;n hỗ trợ c&aacute;c ứng dụng sau: Epson iPrint, Epson Email Print, Epson Scan Smart, Remote Print Driver.</p>\r\n\r\n<p>Epson Smart Panel cho ph&eacute;p bạn điều khiển m&aacute;y in của m&igrave;nh từ điện thoại th&ocirc;ng minh v&agrave; m&aacute;y t&iacute;nh bảng để bạn c&oacute; thể in, sao ch&eacute;p, qu&eacute;t, kết nối với Wi-Fi v&agrave; khắc phục sự cố trực tiếp th&ocirc;ng qua ứng dụng.</p>\r\n\r\n<p><img alt=\"Máy in phun màu Epson L3250\" src=\"https://phucanhcdn.com/media/lib/24-03-2022/may-in-phun-mau-epson-l3250-h1.jpg\" style=\"height:600px; width:600px\" /></p>\r\n\r\n<p>Sản phẩm hiện được b&agrave;y b&aacute;n với gi&aacute; si&ecirc;u ưu đ&atilde;i c&ugrave;ng thời hạn bảo h&agrave;nh ch&iacute;nh h&atilde;ng 24 th&aacute;ng tại&nbsp;<strong><a href=\"https://www.phucanh.vn/\">Ph&uacute;c Anh</a></strong>&nbsp;-&nbsp;<strong>doanh nghiệp h&agrave;ng đầu chuy&ecirc;n</strong>&nbsp;cung cấp giải ph&aacute;p c&ocirc;ng nghệ trong lĩnh vực m&aacute;y t&iacute;nh, điện thoại, thiết bị văn ph&ograve;ng, &hellip;</p>\r\n\r\n<h2>&nbsp;</h2>\r\n'),
(5, 5, 'Máy In', 'Máy In Màu', '24/7', '60 * 90', '60', '40', '30', '60 đến 90 g/m²', '60', '16 Bit', '256 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'Dell, Acer, Brother', 'Dell, Acer, Brother', '40 x 50 cm', '14kg', '<h2>M&aacute;y in laser HP Enterprise 700 M712DN-CF236A</h2>\r\n\r\n<h3>Thiết kế nhỏ gọn</h3>\r\n\r\n<p><strong>M&aacute;y in laser HP Enterprise 700 M712DN-CF236A</strong>&nbsp;in laser trắng đen khổ A3, được thiết kế tinh tế, th&acirc;n thiện với người sử dụng, với tốc độ in 40 trang/ ph&uacute;t khổ A4, in hai mặt tự động (Duplex) với tốc độ 26 trang/ph&uacute;t gi&uacute;p bạn in ấn cực nhanh với chi ph&iacute; đầu tư&nbsp; hợp l&yacute;.</p>\r\n\r\n<p><img alt=\"Máy in laser Hp Laserjet M712DN\" src=\"https://phucanhcdn.com/media/product/17451_enterprise_700_m712dn_ha1.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>In ấn nhanh ch&oacute;ng, tự động in đảo hai mặt</h3>\r\n\r\n<p><strong>M&aacute;y in laser Hp Laserjet M712DN</strong>&nbsp;tiết kiệm thời gian v&agrave; cải thiện hiệu năng với tốc độ in cao (40 trang/ ph&uacute;t) v&agrave; thời gian in bản đầu ti&ecirc;n xấp xỉ 10.5 gi&acirc;y.</p>\r\n\r\n<p>Tiết kiệm thời gian v&agrave; cải thiện hiệu năng với tốc độ in cao 40 trang A4/ph&uacute;t trang đơn,&nbsp; in tự động đảo hai mặt với tốc độ 26 trang /ph&uacute;t nhanh ch&oacute;ng v&agrave; hiệu quả hơn.</p>\r\n\r\n<h3>Kết nối qua mạng Lan</h3>\r\n\r\n<p><strong>M&aacute;y in Hp laserjet M712DN</strong>&nbsp;t&iacute;ch hợp sẵn t&iacute;nh năng in ấn qua mạng gi&uacute;p bạn kết nối in ấn thuận tiện v&agrave; dễ d&agrave;ng, nhờ t&iacute;nh năng n&agrave;y văn ph&ograve;ng cơ quan bạn c&oacute; thể d&ugrave;ng chung thiết bị m&agrave; kh&ocirc;ng cần phụ thuộc v&agrave;o m&aacute;y chủ.</p>\r\n\r\n<p><img alt=\"Máy in laser Hp Laserjet M712DN\" src=\"https://phucanhcdn.com/media/product/17451_enterprise_700_m712dn_ha3.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>In di động trở n&ecirc;n đơn giản</h3>\r\n\r\n<p><strong>M&aacute;y in Hp Laserjet Enterprise M712DN</strong>&nbsp;in ấn từ iPhone&reg; v&agrave; iPad&reg; với AirPrint&reg;, tự động điều chỉnh c&aacute;c c&ocirc;ng việc in đ&uacute;ng cỡ giấy.</p>\r\n\r\n<p>In một c&aacute;ch dễ d&agrave;ng bằng c&aacute;ch gửi một email, ngay từ một chiếc điện thoại th&ocirc;ng minh, m&aacute;y t&iacute;nh bảng, hoặc m&aacute;y t&iacute;nh x&aacute;ch tay, bằng c&aacute;ch sử dụng HP ePrint.</p>\r\n\r\n<p>In ấn từ điện thoại th&ocirc;ng minh, m&aacute;y t&iacute;nh bảng, hay PC bằng c&aacute;ch sử dụng Google Cloud Print&trade; 2.0.3.</p>\r\n\r\n<h3>Tiết kiệm năng lượng</h3>\r\n\r\n<p>M&aacute;y in laser Hp laserjet M712DN tiết kiệm năng lượng với C&ocirc;ng nghệ HP Auto-On/Auto-Off.</p>\r\n\r\n<p>Hp Laserjet Enterprise M712DN dễ d&agrave;ng quản l&yacute; c&aacute;c thiết bị v&agrave; thiết lập c&agrave;i đặt nhờ HP Web Jetadmin với bộ t&iacute;nh năng quản l&yacute; thiết yếu.</p>\r\n\r\n<p><img alt=\"Máy in laser Hp Laserjet M712DN\" src=\"https://phucanhcdn.com/media/product/17451_enterprise_700_m712dn_ha4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<p>Tới&nbsp;<strong><a href=\"https://www.phucanh.vn/\" title=\"Phúc Anh - Máy tính, thiết bị văn phòng, phần mềm bản quyền\">Ph&uacute;c Anh</a></strong>&nbsp;để được tư vấn v&agrave; sở hữu c&aacute;c sản phẩm c&ocirc;ng nghệ,&nbsp;<strong><a href=\"https://www.phucanh.vn/may-tinh-xach-tay-laptop.html\" title=\"Laptop và phụ kiện Laptop tại Phúc Anh\">laptop</a></strong>,&nbsp;<strong><a href=\"https://www.phucanh.vn/may-tinh-de-ban-may-chu.html\" title=\"PC tại Phúc Anh\">PC</a></strong>,<strong>&nbsp;<a href=\"https://www.phucanh.vn/camera-giam-sat-.html\" title=\"Camera giám sát tại Phúc Anh\">camera,</a>&nbsp;<a href=\"https://www.phucanh.vn/linh-kien-pc-thiet-bi-ngoai-vi.html\" title=\"Linh kiện, phụ kiện máy tính tại Phúc Anh\">linh kiện m&aacute;y t&iacute;nh</a>,&nbsp;<a href=\"https://www.phucanh.vn/thiet-bi-van-phong.html\" title=\"Thiết bị văn phòng tại Phúc Anh\">thiết bị văn ph&ograve;ng</a>,</strong>... ch&iacute;nh h&atilde;ng, uy t&iacute;n c&ugrave;ng chất lượng dịch vụ tốt nhất hiện nay.</p>\r\n'),
(6, 6, 'Máy In', ' Máy in laser đen trắng đa chức Brother', '24/24', 'Độ phân giải 2400 x 600 dpi cho chất lượng bản in sắc nét', 'Tốc độ in nhanh vượt trội với 30 trang/phút tiết kiệm thời gian', 'Có các cổng phù hợp', '37*39', '40', '72', '36- 128 bít', '256 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'USB, Wifi, .....', 'Windons, Dell', '499 x 388x 311 cm', '11.4 kg', '<p><img alt=\"Máy in Laser Brother MFC-L2701DW kiểu dáng nhỏ gọn\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Content/thiet-bi-van-phong/may-in/brother/mfc-l2701dw/may-in-laser-brother-mfc-l2701dw-05.jpg\" style=\"width:100%\" /></p>\r\n\r\n<h3>Kiểu d&aacute;ng gọn g&agrave;ng</h3>\r\n\r\n<p>M&aacute;y in Laser Brother MFC-L2701DW sở hữu thiết kế đơn giản, kiểu d&aacute;ng gọn g&agrave;ng, gi&uacute;p bạn dễ d&agrave;ng bố tr&iacute; ở nhiều điều kiện kh&ocirc;ng gian kh&aacute;c nhau.</p>\r\n\r\n<h3>Tốc độ nhanh</h3>\r\n\r\n<p><a href=\"https://www.nguyenkim.com/may-in-van-phong/\" rel=\"noopener noreferrer\" target=\"_blank\">M&aacute;y in</a>&nbsp;cho tốc độ in v&agrave; copy l&ecirc;n đến 30 trang/ ph&uacute;t, gi&uacute;p tiết kiệm được thời gian v&agrave; ho&agrave;n th&agrave;nh c&ocirc;ng việc nhanh ch&oacute;ng, hiệu quả.</p>\r\n\r\n<p><img alt=\"Máy in Laser Brother MFC-L2701DW in nhanh\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Content/thiet-bi-van-phong/may-in/brother/mfc-l2701dw/may-in-laser-brother-mfc-l2701dw-06.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"Máy in Laser Brother MFC-L2701DW đa năng\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Content/thiet-bi-van-phong/may-in/brother/mfc-l2701dw/may-in-laser-brother-mfc-l2701dw-02.jpg\" style=\"width:100%\" /></p>\r\n\r\n<h3>Đa t&iacute;nh năng</h3>\r\n\r\n<p>M&aacute;y in Laser Brother MFC-L2701DW&nbsp;t&iacute;ch hợp 4 t&iacute;nh năng in, scan, fax v&agrave; copy để đảm bảo thực hiện tốt những c&ocirc;ng việc văn ph&ograve;ng.</p>\r\n\r\n<h3>Khay giấy lớn</h3>\r\n\r\n<p><a href=\"https://www.nguyenkim.com/may-in-brother/\" rel=\"noopener noreferrer\" target=\"_blank\">M&aacute;y in Laser Brother</a>&nbsp;trang bị khay giấy lớn c&oacute; thể chứa được 250 tờ v&agrave; c&oacute; bảng điều khiển hiện đại th&acirc;n thiện, m&agrave;n h&igrave;nh LCD thể hiện r&otilde; r&agrave;ng th&ocirc;ng tin.</p>\r\n\r\n<p><img alt=\"Máy in Laser Brother MFC-L2701DW có khay giấy lớn\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Content/thiet-bi-van-phong/may-in/brother/mfc-l2701dw/may-in-laser-brother-mfc-l2701dw-04.jpg\" style=\"width:100%\" /></p>\r\n\r\n<p><img alt=\"Máy in Laser Brother MFC-L2701DW hỗ trợ kết nối không dây\" src=\"https://cdn.nguyenkimmall.com/images/companies/_1/Content/thiet-bi-van-phong/may-in/brother/mfc-l2701dw/may-in-laser-brother-mfc-l2701dw-03.jpg\" style=\"width:100%\" /></p>\r\n\r\n<h3>Kết nối kh&ocirc;ng d&acirc;y</h3>\r\n\r\n<p>M&aacute;y in Brother sử dụng kết nối kh&ocirc;ng d&acirc;y n&acirc;ng cao khả năng tương t&aacute;c với thiết bị ngo&agrave;i, đặc biệt l&agrave;&nbsp;<a href=\"https://www.nguyenkim.com/dien-thoai-di-dong/\" rel=\"noopener noreferrer\" target=\"_blank\">điện thoại</a>&nbsp;hay m&aacute;y t&iacute;nh bảng th&ocirc;ng qua iPrint &amp; Scan.</p>\r\n'),
(7, 7, 'máy in đa năng', 'Máy in phun màu', '24/15', '920 * 720', '60 tờ/ phút. Khá là nhanh sao với dòng máy khác.', '40', '79', '39', '60 tờ / phút', '8 bit', '256 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'USB, WIfe', 'Dell', '38 X 40 x 40 cm', '13 kg', '<p>&nbsp;</p>\r\n\r\n<h2>ĐẶC ĐIỂM NỔI BẬT</h2>\r\n\r\n<h2>Máy in phun màu Canon E410</h2>\r\n\r\n<p><strong><a href=\"https://www.phucanh.vn/may-in-phun-mau-canon-e410-print-copy-scan.html\" title=\"Máy in phun màu Canon Pixma E410\">Máy in phun màu Canon Pixma E410</a></strong>&nbsp;l&agrave; một chiếc<strong><a href=\"https://www.phucanh.vn/may-in-doanh-nghiep-van-phong.html\" target=\"_blank\">&nbsp;m&aacute;y in văn ph&ograve;ng</a></strong>&nbsp;ho&agrave;n hảo, nhỏ gọn, dễ d&ugrave;ng, tiết kiệm mực, được t&iacute;ch hợp nhiều t&iacute;nh năng vượt trội: in, sao ch&eacute;p, qu&eacute;t, gi&uacute;p đ&aacute;p ứng mọi nhu cầu của người sử dụng, đồng thời gi&uacute;p tiết kiệm chi ph&iacute; tối đa.</p>\r\n\r\n<p><img alt=\"Máy in phun màu Canon Pixma E410\" src=\"https://phucanhcdn.com/media/product/30802_canon_e410_ha4.jpg\" style=\"width:500px\" /></p>\r\n\r\n<h3>Đặc điểm nổi bật của máy in phun màu Canon E410</h3>\r\n\r\n<ul>\r\n	<li>Tiết kiệm chi ph&iacute; mực in</li>\r\n	<li>Thiết kế nhỏ gọn</li>\r\n	<li>Tự động mở nguồn</li>\r\n	<li>Kh&ocirc;ng g&acirc;y tiếng ồn</li>\r\n	<li>Độ ph&acirc;n giải cao l&agrave; 4800 x 600 dpi</li>\r\n</ul>\r\n\r\n<p><strong>Tiết kiệm chi ph&iacute; mực in</strong></p>\r\n\r\n<p>Canon Pixma E410 sử dụng hộp mực c&oacute; gi&aacute; th&agrave;nh thấp nhưng h&igrave;nh ảnh cho ra với chất lượng kh&aacute; cao. Canon PIXMA E410 sử dụng hệ thống hai hộp mực gồm mực đen PG-47 v&agrave; mực m&agrave;u CL-57S, c&oacute; khả năng in 400 trang đen trắng v&agrave; 300 trang m&agrave;u.</p>\r\n\r\n<p><strong>Kh&ocirc;ng g&acirc;y tiếng ồn</strong></p>\r\n\r\n<p>Canon Pixma E410 hoạt động &ecirc;m &aacute;i, gi&uacute;p giảm tối đa tiếng ồn ph&aacute;t ra trong qu&aacute; tr&igrave;nh hoạt động của m&aacute;y, g&oacute;p phần tạo kh&ocirc;ng gian l&agrave;m việc y&ecirc;n tĩnh.</p>\r\n\r\n<p><strong>Tự động mở nguồn</strong></p>\r\n\r\n<p>Canon Pixma E410 được trang bị cảm biến gi&uacute;p tự động ph&aacute;t hiện lệnh in ngay cả khi tắt m&aacute;y để mở m&aacute;y. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; khả năng tự động xử l&iacute; lệnh in qua kết nối USB 2.0.</p>\r\n\r\n<p><strong>Thiết kế nhỏ gọn</strong></p>\r\n\r\n<p>Canon Pixma E410 với thiết kế nhỏ gọn cho ph&eacute;p bạn đặt&nbsp;<strong><a href=\"https://www.phucanh.vn/may-in-theo-hang.html\" target=\"_blank\">m&aacute;y in&nbsp;</a></strong>ở mọi vị tr&iacute;, kh&ocirc;ng những kh&ocirc;ng chiếm nhiều diện t&iacute;ch m&agrave; c&ograve;n g&oacute;p phần tạo vẻ hiện đại, sang trọng cho căn ph&ograve;ng của bạn.</p>\r\n\r\n<p><img alt=\"Máy in phun màu Canon Pixma E410\" src=\"https://phucanhcdn.com/media/product/30802_canon_e410_ha2.jpg\" style=\"width:500px\" /></p>\r\n'),
(8, 8, 'Máy In', 'Máy In A3', '24/20', '90*100', '50 tờ/phút', '58', '30', '60 đến 90 g/m²', '80 tờ', '8 bit', '1 GB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'windons, dell, acer', 'dell, acer', '400 x 300x500 cm', '50 kg', '<h2><strong>M&aacute;y in phun m&agrave;u Epson L15150 A3</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>M&aacute;y in phun m&agrave;u Epson L15150 A3</strong> l&agrave; d&ograve;ng m&aacute;y in đa chức năng in, copy, fax v&agrave; scan được t&iacute;ch hợp c&ugrave;ng trong c&ugrave;ng một thiết bị.<em>&nbsp;</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>M&aacute;y in phun m&agrave;u Epson L15150 A3 mang lại sự tiện lợi cho người sử dụng, đảm bảo đ&aacute;p ứng được mọi nhu cầu in ấn của văn ph&ograve;ng, doanh nghiệp, cửa h&agrave;ng,... Ngo&agrave;i ra, m&aacute;y in c&ograve;n tiết kiệm được chi ph&iacute; đầu tư nhờ t&iacute;nh đa năng, tốc độ in nhanh ch&oacute;ng. M&aacute;y in khổ A3 v&agrave; cho độ ph&acirc;n giải cao l&ecirc;n đến 4800 x 2400dpi cho bản in r&otilde; r&agrave;ng v&agrave; sắc n&eacute;t. Từ đ&oacute;, n&oacute; mang lại độ ch&iacute;nh x&aacute;c cao v&agrave; năng suất c&ocirc;ng việc vượt trội hơn.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://anphat.com.vn/media/lib/13-12-2021/9_myinphunmuepsonl15150a3-111-1.jpg\" /></p>\r\n\r\n<p><em>M&aacute;y in phun m&agrave;u Epson L15150 A3</em></p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>C&ocirc;ng nghệ đầu in PrecisionCore</strong></h2>\r\n\r\n<p><img alt=\"\" src=\"https://anphat.com.vn/media/lib/13-12-2021/9_myinphunmuepsonl15150a3-111-9.jpg\" /></p>\r\n\r\n<p>Với c&ocirc;ng nghệ đầu in ti&ecirc;n tiến n&agrave;y, d&ugrave; khối lượng c&ocirc;ng việc của bạn c&oacute; bận rộn đến đ&acirc;u, sản phẩm đều c&oacute; thể đ&aacute;p ứng. Chất lượng in được đ&aacute;nh gi&aacute; cao v&agrave; tốc độ in của thiết bị cũng rất nhanh, l&ecirc;n đến 32 ppm cho bản nh&aacute;p v&agrave; 25 ipm cho bản in ti&ecirc;u chuẩn.</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Thiết kế nhỏ gọn, tiết kiệm kh&ocirc;ng gian</strong></h2>\r\n\r\n<p>&nbsp;<strong><img alt=\"\" src=\"https://anphat.com.vn/media/lib/13-12-2021/9_myinphunmuepsonl15150a3-111-2.jpg\" /></strong></p>\r\n\r\n<p><strong><a href=\"https://www.anphatpc.com.vn/may-in-phun-mau-epson-l15150-a3-in-scan-copy-fax-duplex_id40037.html\" target=\"_blank\">M&aacute;y in phun m&agrave;u Epson L15150 A3</a></strong> c&oacute; kiểu d&aacute;ng hiện đại, nhỏ gọn nhờ thiết kế th&ugrave;ng chứa được t&iacute;ch hợp v&agrave;o trong m&aacute;y in. Từ đ&oacute; n&oacute; tiết kiệm diện t&iacute;ch hơn cho kh&ocirc;ng gian của bạn. Ngo&agrave;i ram, v&ograve;i chai độc đ&aacute;o của thiết bị c&ograve;n cho ph&eacute;p bạn nạp đầy b&igrave;nh mực m&agrave; kh&ocirc;ng hề bị tr&agrave;n hay bị lỗi.</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>M&aacute;y in sử dụng mực DURABrite ET</strong></h2>\r\n\r\n<p>&nbsp;<strong><img alt=\"\" src=\"https://anphat.com.vn/media/lib/13-12-2021/9_myinphunmuepsonl15150a3-111-6.jpg\" /></strong></p>\r\n\r\n<p>Epson L15150 A3 sử dụng <a href=\"https://www.anphatpc.com.vn/muc-in.html\" target=\"_blank\">mực in</a> DURABrite ET c&ocirc;ng nghệ mới cho ra bản in r&otilde; r&agrave;ng, dữ liệu sắc n&eacute;t v&agrave; c&oacute; khả năng chống nước tuyệt vời với sắc tố mực EcoTank mới.&nbsp;</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Tiết kiệm chi ph&iacute; hơn với bộ mực năng suất</strong></h2>\r\n\r\n<p><strong>M&aacute;y in phun m&agrave;u Epson L15150 A3 </strong>gi&uacute;p người d&ugrave;ng tiết kiệm chi ph&iacute; mua mực hơn bởi mỗi bộ mực chai c&oacute; năng suất cực cao, l&ecirc;n đến 7.500 trang đen v&agrave; 6000 trang m&agrave;u.</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Khả năng kết nối linh hoạt v&agrave; vận h&agrave;nh ổn định</strong></h2>\r\n\r\n<p>&nbsp;<strong><img alt=\"\" src=\"https://anphat.com.vn/media/lib/13-12-2021/9_myinphunmuepsonl15150a3-111-8.jpg\" /></strong></p>\r\n\r\n<p>B&ecirc;n cạnh được trang bị cổng giao tiếp Ethernet, m&aacute;y in c&ograve;n được t&iacute;ch hợp kết nối kh&ocirc;ng d&acirc;y v&ocirc; c&ugrave;ng tiện lợi. N&oacute; mang đến cho bạn trải nghiệm truy cập kh&ocirc;ng d&acirc;y nhanh ch&oacute;ng, dễ d&agrave;ng chia sẻ v&agrave; in di động giữa c&aacute;c thiết bị kết nối. Một ưu điểm kh&aacute;c của Wi-Fi Direct l&agrave; n&oacute; cho ph&eacute;p bạn kết nối tối đa l&ecirc;n đến 8 thiết bị với m&aacute;y in m&agrave; kh&ocirc;ng cần đến bộ định tuyến.</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Epson Connect Enabled</strong></h2>\r\n\r\n<p>&nbsp;<strong><img alt=\"\" src=\"https://anphat.com.vn/media/lib/13-12-2021/9_myinphunmuepsonl15150a3-111-5.jpg\" /></strong></p>\r\n\r\n<p>Chức năng in kh&ocirc;ng d&acirc;y từ mọi nơi v&agrave; c&aacute;c t&iacute;nh năng kh&aacute;c gi&uacute;p bạn dễ d&agrave;ng in ấn t&agrave;i liệu của m&igrave;nh một c&aacute;ch nhanh gọn.&nbsp;</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Epson iPrint</strong></h2>\r\n\r\n<p>In v&agrave; qu&eacute;t trực tiếp tr&ecirc;n thiết bị th&ocirc;ng minh của bạn hoặc c&aacute;c dịch vụ lưu trữ đ&aacute;m m&acirc;y trực tuyến.</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Epson Email Print</strong></h2>\r\n\r\n<p>Sản phẩm c&ograve;n hỗ trợ in với bất kỳ <a href=\"https://www.anphatpc.com.vn/may-in-epson_dm1123.html\" target=\"_blank\">m&aacute;y in Epson</a> n&agrave;o sở hữu t&iacute;nh năng Email Print n&agrave;y. Bất kể đ&oacute; l&agrave; thiết bị n&agrave;o hoặc PC đều c&oacute; quyền truy cập email.&nbsp;</p>\r\n\r\n<p><strong><strong>&nbsp;</strong></strong></p>\r\n\r\n<h2><strong>Tr&igrave;nh điều khiển từ xa</strong></h2>\r\n'),
(9, 9, 'Máy in đa năng', 'Máy in laser màu đa chức năng HP', '24/17', '89 * 90', '28 trang/phút', '69', '38', '68 mg', '	1200 x 1200 dpi', '8 bit', '564 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'HP Color LaserJet Pro MFP M479FDW Printer ( in, scan, copy, fax, email) Duplex , wireles', 'Dell, Prons, ...', '700x 400x500 cm', '70 kg', '<p>M&aacute;y in m&agrave;u Hp Color Laserjet Pro M479FDW được thiết kế tinh tế với m&agrave;n h&igrave;nh cảm ứng m&agrave;u 4.3 inch.&nbsp;M&aacute;y in HP c&oacute; t&iacute;ch hợp sẵn c&aacute;c chức năng : Copy, In, Scan, Fax, Network, với tốc độ 27 trang/ph&uacute;t gi&uacute;p bạn xử l&yacute; c&ocirc;ng việc một c&aacute;ch nhanh ch&oacute;ng v&agrave; hiệu quả.</p>\r\n\r\n<h2>Ưu điểm nổi bật của m&aacute;y in Laserjet Pro M479FDW</h2>\r\n\r\n<h3>HP Color LaserJet Pro MFP M479FDW d&ograve;ng&nbsp;m&aacute;y in th&ocirc;ng minh</h3>\r\n\r\n<p>Với c&aacute;c t&iacute;nh năng HP ePrint, Apple AirPrint&trade;, Mopria certified, Mobile Apps, Wireless Direct Printing. Laserjet Pro M479FDW c&oacute; thể in dễ d&agrave;ng từ điện thoại th&ocirc;ng minh, m&aacute;y t&iacute;nh bảng v&agrave; m&aacute;y t&iacute;nh x&aacute;ch tay tại ph&ograve;ng l&agrave;m việc khi thiết bị của bạn c&oacute; kết nối mạng.&nbsp;</p>\r\n\r\n<p><img alt=\"HP Color LaserJet Pro MFP M479FDW Printer W1A81A\" src=\"https://vitinhnguyenkim.vn/uploads/hinh-anh-bai/HP-Color-LaserJet-Pro-MFP-M479FDW-3.jpg\" /></p>\r\n\r\n<h3>LaserJet Pro MFP M479FDW đa chức năng</h3>\r\n\r\n<p>Bạn cũng c&oacute; thể sử dụng&nbsp;<u><em><strong><a href=\"https://vitinhnguyenkim.vn/may-in?brand_id=5\">m&aacute;y in Hp</a></strong></em></u>&nbsp;Color Laserjet Pro M479FDW để photo, in, scan, fax. M&aacute;y in&nbsp;gi&uacute;p bạn xử l&yacute; hầu hết c&aacute;c c&ocirc;ng việc trong văn ph&ograve;ng. Đồng thời, m&aacute;y c&oacute;&nbsp;t&iacute;ch hợp m&agrave;n h&igrave;nh cảm ứng 4.3 Inch gi&uacute;p người d&ugrave;ng dễ d&agrave;ng thao t&aacute;c sử dụng.</p>\r\n\r\n<h3>Pro MFP M479FDW kết nối mạng kh&ocirc;ng d&acirc;y Wireless, in ấn qua điện thoại di động</h3>\r\n\r\n<p>Đ&acirc;y l&agrave; d&ograve;ng&nbsp;<u><em><strong><a href=\"https://vitinhnguyenkim.vn/may-in\">m&aacute;y in</a></strong></em></u>&nbsp;m&agrave;u&nbsp;t&iacute;ch hợp sẵn t&iacute;nh năng in qua mạng Lan kh&ocirc;ng d&acirc;y Wireless/WiFi gi&uacute;p bạn kết nối in ấn thuận tiện, với t&iacute;nh năng n&agrave;y bạn c&oacute; thể dễ d&agrave;ng in ấn từ điện thoại di động nhờ c&aacute;c ứng dụng HP ePrint, Apple AirPrint&trade;, Mopria certified, Mobile Apps, Wireless Direct Printing, Google Cloud Print 2.0.</p>\r\n\r\n<h3>HP Color LaserJet Pro MFP M479FDW cho&nbsp;ph&eacute;p In đảo mặt tự động.</h3>\r\n\r\n<p>M&aacute;y in HP Color LaserJet Pro M479FDW rất hữu dụng nhờ cơ chế in đảo mặt tự động t&iacute;ch hợp. Bạn c&oacute; thể tiết kiệm thời gian, tiết kiệm giấy v&agrave; bảo vệ m&ocirc;i trường với những bản in hai mặt tự động.</p>\r\n\r\n<p><img alt=\"HP Color LaserJet Pro MFP M479FDW Printer W1A81A\" src=\"https://vitinhnguyenkim.vn/uploads/hinh-anh-bai/HP-Color-LaserJet-Pro-MFP-M479FDW-2.jpg\" /></p>\r\n\r\n<h3>HP Color LaserJet Pro MFP M479FDW Khay nạp bản gốc tự động ADF 50 tờ</h3>\r\n\r\n<p>Bạn c&oacute; thể&nbsp;<u><em><strong><a href=\"https://vitinhnguyenkim.vn/may-scan-hp\">scan</a></strong></em></u>, copy một tập t&agrave;i liệu l&ecirc;n đến 50 tờ.&nbsp;M479FDW gi&uacute;p giải quyết nhanh ch&oacute;ng v&agrave; n&acirc;ng cao hiệu quả c&ocirc;ng việc thay v&igrave; phải đặt từng tờ tr&ecirc;n mặt gương để thực hiện c&ocirc;ng việc đ&oacute;.</p>\r\n\r\n<h3>HP Color LaserJet Pro MFP M479FDW cho chất lượng bản in sắc n&eacute;t</h3>\r\n\r\n<p>Bản in đẹp, m&agrave;u sắc rực rỡ, v&agrave; đồ họa sắc n&eacute;t với độ ch&iacute;nh x&aacute;c cao với m&aacute;y in m&agrave;u đa chức năng Hp Color Laserjet Pro M479FDW.</p>\r\n\r\n<p><img alt=\"HP Color LaserJet Pro MFP M479FDW Printer W1A81A\" src=\"https://vitinhnguyenkim.vn/uploads/hinh-anh-bai/HP-Color-LaserJet-Pro-MFP-M479FDW-4.jpg\" /></p>\r\n\r\n<h3>HP Color LaserJet Pro MFP M479FDW t</h3>\r\n'),
(10, 10, 'Máy In', 'Laser trắng đen', '24/7', 'Laser trắng đen', '38 trang  / phút', '40', '50', '60', '70', '8 bit', '400 MB', 'PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'windowns, dell', 'dell', '90 x 40 cm', '10kg', '<p>Gi&aacute;: Li&ecirc;n hệ</p>\r\n\r\n<ul>\r\n	<li><strong>T&ecirc;n m&aacute;y in:</strong>&nbsp;M&aacute;y in Dell 2350D, Duplex, Laser trắng đen (2350d)</li>\r\n	<li><strong>Loại m&aacute;y in:</strong>&nbsp;Laser trắng đen</li>\r\n	<li><strong>Khổ giấy in:</strong>&nbsp;Tối đa khổ A4</li>\r\n	<li><strong>Tốc độ in:</strong>&nbsp;38 trang &nbsp;/ ph&uacute;t</li>\r\n	<li><strong>Tốc độ xử l&yacute;:</strong>&nbsp;400 MHz</li>\r\n	<li><strong>Bộ nhớ ram:</strong>&nbsp;32MB</li>\r\n	<li><strong>Độ ph&acirc;n giải:</strong>&nbsp;600 x 600 dpi</li>\r\n</ul>\r\n'),
(11, 11, 'Máy in ', 'Máy in màu', '14/9', '9200* 8292', '80 tờ / phút', '80', '90', '79', '36', '8 bit', '650 MB', '	PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'các cổng có sẵn', 'Brother', '80 x 50cm', '7 kg', '<p><strong>Efficiency Engineered with A3 Refill Ink Tank Printer</strong></p>\r\n\r\n<p><strong>Low Cost, High Quality</strong></p>\r\n\r\n<p><strong>Cost Efficient</strong><br />\r\nSave more with Brother&#39;s ultra high-yield ink bottles, as well as automatic 2-sided printing.</p>\r\n\r\n<p>6500 pages (black)* | 5000 pages (colour)* | 50% cost savings</p>\r\n\r\n<p><strong>Easy to Refill</strong><br />\r\nEnjoy quick, fuss-free refills and easy monitoring of your printer&#39;s ink levels with Brother Refill Tank System.</p>\r\n\r\n<p><strong>Quality Prints</strong><br />\r\nCreate striking artwork and sleek reports with superior colour vibrancy and high print resolution of 1200x4800 dpi.</p>\r\n\r\n<p><strong>Uncompromised Efficiency</strong></p>\r\n\r\n<p><strong>Larger Printing Options</strong><br />\r\nThink bigger and print larger with up to A3 capabilities.</p>\r\n\r\n<p><strong>Do More in Less Time</strong><br />\r\nSpeed up your workflow with fast print speeds and quick first print out times.<br />\r\n<br />\r\n22/20 images per minute^ | 35/27 pages per minute (fast mode) | 5.5/6 sec FPOT^^</p>\r\n\r\n<p><strong>Effortless Paper Handling</strong><br />\r\nMeet your every printing need on various paper sizes and types with multiple paper input options in a single machine.</p>\r\n\r\n<p>250 sheet standard paper tray | 100 sheets multi-purpose tray</p>\r\n\r\n<p><strong>Flexible Connectivity</strong></p>\r\n\r\n<p><strong>Wireless/Wired Connectivity</strong><br />\r\nConnect multiple users at once and<strong>&nbsp;</strong>enjoy convenient printing at home or<strong>&nbsp;</strong>in the office with both wireless and Ethernet networks.</p>\r\n\r\n<p><strong>Print on the Go</strong><br />\r\nEnjoy the freedom of mobile prints and scans, and direct access of innovative features on your Brother machine.</p>\r\n\r\n<p>Brother Cloud Apps | Brother Webconnect</p>\r\n\r\n<p><strong>USB Direct Print</strong><br />\r\nPhoto printing from your USB flash drive becomes convenient via the front-access port.</p>\r\n\r\n<p><strong>User-friendly and Secure</strong></p>\r\n\r\n<p><strong>Intuitive Interface</strong></p>\r\n\r\n<p>Check notifications on printer and ink status, and solve any printer errors quickly.</p>\r\n\r\n<p>2.7&quot;&quot; large LCD touchscreen</p>\r\n\r\n<p><strong>Integrate into IT Security Infrastructure</strong></p>\r\n\r\n<p>Easily manage printer access and login authentication through a central management system with Active Directory and User Authentication.</p>\r\n\r\n<p><strong>Limit Unauthorised Access</strong></p>\r\n\r\n<p>Secure Function Lock gives you greater control over group or individual usage by allowing the administrator to limit print functions.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>**Quoted approx. yields are extrapolated based on Brother original methodology using Test Pattern ISO/IEC 24712. Quoted approx. yields are not based on ISO/IEC 24711.<br />\r\n^Based on ISO/IEC 24734.<br />\r\n^^^ Based on ISO/IEC 17629.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
(12, 12, 'Máy in ', 'Máy in A3', '24/18', '8202*3829', '92', '32', '42', '42', '442', '16 bit', '920 MB', '	PDF, PDF/A, PDF mã hóa, JPEG, PNG, BMP, TIFF, Word, Excel, PowerPoint, Text (.txt), Rich Text (.rtf) và PDF có thể tìm kiếm', 'các cổng có sẵn\r\n', 'windowns', '200x 200 cm', '19kg', '<p>M&aacute;y in phun m&agrave;u Epson L8050 wifi l&agrave; d&ograve;ng sản phẩm mới nhất của Epson, được ra mắt đầu năm 2023 v&agrave; được đ&aacute;nh gi&aacute; l&agrave; bước n&acirc;ng cấp của d&ograve;ng m&aacute;y in m&agrave;u quốc d&acirc;n L805. Dưới đ&acirc;y l&agrave; những điểm nổi bật v&agrave; cải tiến của Epson L8050 so với d&ograve;ng m&aacute;y L805:</p>\r\n\r\n<p>1. Thiết Kế Nhỏ Gọn: Với k&iacute;ch thước 403mm x 369mm x 149mm, Epson L8050 c&oacute; thiết kế v&ocirc; c&ugrave;ng nhỏ gọn so với m&aacute;y in Epson L805, gi&uacute;p tiết kiệm kh&ocirc;ng gian v&agrave; dễ d&agrave;ng đặt m&aacute;y ở bất kỳ đ&acirc;u trong văn ph&ograve;ng m&agrave; kh&ocirc;ng l&agrave;m chật chội.<br />\r\n2. M&agrave;u Đen Chủ Đạo: M&agrave;u đen l&agrave; m&agrave;u sản phẩm chủ đạo của Epson L8050, gi&uacute;p m&aacute;y kh&ocirc;ng g&acirc;y qu&aacute; nhiều sự ch&uacute; &yacute; v&agrave; dễ d&agrave;ng t&iacute;ch hợp v&agrave;o m&ocirc;i trường l&agrave;m việc m&agrave; kh&ocirc;ng l&agrave;m phiền tới sự tập trung.<br />\r\n3. Hệ Thống In Phun 6 M&agrave;u Mực: Epson L8050 sở hữu hệ thống in phun 6 m&agrave;u mực, mang lại bản in r&otilde; n&eacute;t với độ ph&acirc;n giải l&ecirc;n đến 5760 x 1440 dpi. Cấu h&igrave;nh 180 v&ograve;i phun, gấp đ&ocirc;i so với Epson L805, gi&uacute;p tăng cường độ chi tiết v&agrave; độ sắc n&eacute;t của h&igrave;nh ảnh.<br />\r\n4. Chế Độ In Nhanh - Tiết Kiệm: Tốc độ in ấn của Epson L8050 l&agrave; một điểm mạnh với chỉ 12 gi&acirc;y/ảnh v&agrave; 8 trang/ph&uacute;t (trắng, đen/m&agrave;u). Điều n&agrave;y gi&uacute;p tiết kiệm thời gian v&agrave; chi ph&iacute; in ấn, đồng thời giảm l&atilde;ng ph&iacute; mực.<br />\r\n5. Đầu In Micro Piezo &Aacute;p Điện Độc Quyền: Epson L8050 trang bị đầu in Micro Piezo &Aacute;p Điện Độc Quyền của Epson, gi&uacute;p tạo ra c&aacute;c bản in chất lượng cao v&agrave; giảm chi ph&iacute; vận h&agrave;nh.<br />\r\n6. Hộp Mực Thiết Kế Hiện Đại: Hộp mực của Epson L8050 c&oacute; thiết kế b&ecirc;n ngo&agrave;i dễ quan s&aacute;t lượng mực sử dụng, gi&uacute;p người d&ugrave;ng dễ d&agrave;ng kiểm tra v&agrave; ch&acirc;m mực kịp thời để tr&aacute;nh t&igrave;nh trạng hết mực khi in.<br />\r\n7. Kết Nối In Kh&ocirc;ng D&acirc;y Wifi: Với chức năng in Wifi, m&aacute;y in Epson L8050 cho ph&eacute;p kết nối in từ nhiều thiết bị c&ugrave;ng một l&uacute;c, gi&uacute;p việc in ấn trở n&ecirc;n thuận lợi v&agrave; linh hoạt hơn.<br />\r\nM&aacute;y in Epson L8050 l&agrave; lựa chọn đa chức năng với khả năng đ&aacute;p ứng nhu cầu in ấn văn ph&ograve;ng v&agrave; c&aacute;c dịch vụ in ảnh chất lượng cao. Sự n&acirc;ng cấp về thiết kế, hiệu suất, v&agrave; chất lượng bản in l&agrave; những điểm mạnh mẽ của sản phẩm n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong></strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `images`) VALUES
(4, 1, '1700558294_Hp_LaserJet Pro M227fdw_3.jpg'),
(5, 1, '1700558294_Hp_LaserJet Pro M227fdw_2.jpg'),
(6, 1, '1700558294_Hp_LaserJet Pro M227fdw _1.jpg'),
(7, 1, '1700558294_home_Hp_LaserJet Pro M227fdw.jpg'),
(8, 2, '1700559681_MÁY IN A3 CANON LBP 8730I CŨ_1.jpg'),
(9, 2, '1700559681_MÁY IN A3 CANON LBP 8730I CŨ.jpg'),
(10, 3, '1700560304_brother-t220_3.jpg'),
(11, 3, '1700560304_brother-t220_2.jpg'),
(12, 3, '1700560304_brother-t220_1.jpg'),
(13, 3, '1700560304_brother-t220.jpg'),
(14, 4, '1700575257_home_3.jpg'),
(15, 4, '1700575257_home_2.jpg'),
(16, 4, '1700575257_Home_1.jpg'),
(17, 4, '1700575257_home.jpg'),
(18, 5, '1700575783_Mayinmau_hp_home_3.jpg'),
(19, 5, '1700575783_Mayinmau_hp_home_2.jpg'),
(20, 5, '1700575783_Mayinmau_hp_home_1.jpg'),
(21, 5, '1700575783_Mayinmau_hp_home.jpg'),
(22, 6, '1701100794_brother-4.jpg'),
(23, 6, '1701100794_brother-3.jpg'),
(24, 6, '1701100794_brother-2.jpg'),
(25, 6, '1701100794_brother-1.jpg'),
(26, 7, '1701101374_canon-e410-1-350x350.jpg'),
(27, 7, '1701101374_canon-e410-3-350x350.jpg'),
(28, 7, '1701101374_canon-e410-2-350x350.png'),
(29, 7, '1701101374_canon-e410.png'),
(30, 9, '1701105538_4.jpg'),
(31, 9, '1701105538_3.jpg'),
(32, 9, '1701105538_2.jpg'),
(33, 9, '1701105538_1.jpg'),
(34, 10, '1701107309_2350d.png'),
(35, 11, '1701107679_t4000dw-1-350x350.jpg'),
(36, 11, '1701107679_t4000dw-350x350.jpg'),
(37, 11, '1701107679_26460_m__y_in_brother_hl_t4000dw__in_phun_m__u_a3_-350x350.jpg'),
(38, 11, '1701107679_ApHandler-3-350x350.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT 0 COMMENT '0: Nam, 1: Nữ',
  `avatar` varchar(200) DEFAULT 'https://facebookninja.vn/wp-content/uploads/2023/06/anh-dai-dien-mac-dinh-zalo.jpg',
  `token` varchar(50) DEFAULT NULL COMMENT '	Token sẽ null khi user ghi nhớ đăng nhập mới sinh token',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `email`, `phone_number`, `password`, `gender`, `avatar`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Trịnh Ngọc Trường', 'truong', 'truong8488@gmail.com', '0353129941', '123', 0, '1701239254_1700641363_Nitro_Wallpaper_01_3840x2400.jpg', NULL, '2023-11-21 08:32:50', '2023-11-21 08:32:50'),
(4, 'Đỗ Khôi Nguyên', 'dknguyen2411', 'dknguyen2411@gmail.com', '0379531234', '123', 0, '1701239269_1700641319_Nitro_Wallpaper_06_3840x2400.jpg', NULL, '2023-11-22 08:22:43', '2023-11-22 08:22:43'),
(5, 'Lê Quang Thái', 'quangthai', 'thai@gmail.com', '0123456789', '123123', 0, '1701239757_IMG_0128.JPG', NULL, '2023-11-29 06:33:55', '2023-11-29 06:33:55'),
(6, 'Lê Quang thái', 'truong', 'xinphatmuti@gmail.com', '0385206946', '123', 0, '1701248331_7co.png', NULL, '2023-11-29 08:58:51', '2023-11-29 08:58:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manufacturer`
--
ALTER TABLE `manufacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
