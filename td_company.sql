-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 21, 2024 at 04:12 PM
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
-- Database: `td_company`
--

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT '' COMMENT 'Tên',
  `parent` int(255) DEFAULT NULL COMMENT 'Cha',
  `ord` tinyint(4) DEFAULT NULL COMMENT 'Sắp xếp',
  `act` tinyint(1) DEFAULT NULL COMMENT 'Kích hoạt',
  `created_at` datetime DEFAULT NULL COMMENT 'Ngày tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`id`, `name`, `parent`, `ord`, `act`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', 0, 1, 1, '2020-11-11 18:02:51', '2020-11-11 18:02:51'),
(351, 'Hà Nội', 0, 1, 1, '2020-11-11 18:05:31', '2020-11-11 18:05:31'),
(969, 'Đà Nẵng', 0, 1, 1, '2020-11-11 18:06:22', '2020-11-11 18:06:22'),
(1035, 'Bình Dương', 0, 1, 1, '2020-11-11 18:07:11', '2020-11-11 18:07:11'),
(1137, 'Đồng Nai', 0, 1, 1, '2020-11-11 18:08:27', '2020-11-11 18:08:27'),
(1327, 'Khánh Hòa', 0, 1, 1, '2020-11-11 18:08:51', '2020-11-11 18:08:51'),
(1478, 'Hải Phòng', 0, 1, 1, '2020-11-11 18:09:25', '2020-11-11 18:09:25'),
(1723, 'Long An', 0, 1, 1, '2020-11-11 18:09:44', '2020-11-11 18:09:44'),
(1933, 'Quảng Nam', 0, 1, 1, '2020-11-11 18:10:22', '2020-11-11 18:10:22'),
(2198, 'Vũng Tàu', 0, 1, 1, '2020-11-11 18:10:39', '2020-11-11 18:10:39'),
(2292, 'Đắk Lắk', 0, 1, 1, '2020-11-11 18:10:59', '2020-11-11 18:10:59'),
(2493, 'Cần Thơ', 0, 1, 1, '2020-11-11 18:11:12', '2020-11-11 18:11:12'),
(2592, 'Bình Thuận  ', 0, 1, 1, '2020-11-11 18:11:30', '2020-11-11 18:11:30'),
(2731, 'Lâm Đồng', 0, 1, 1, '2020-11-11 18:11:41', '2020-11-11 18:11:41'),
(2893, 'Thiên Huế', 0, 1, 1, '2020-11-11 18:11:54', '2020-11-11 18:11:54'),
(3061, 'Kiên Giang', 0, 1, 1, '2020-11-11 18:12:08', '2020-11-11 18:12:08'),
(3222, 'Bắc Ninh', 0, 1, 1, '2020-11-11 18:12:21', '2020-11-11 18:12:21'),
(3359, 'Quảng Ninh', 0, 1, 1, '2020-11-11 18:12:32', '2020-11-11 18:12:32'),
(3563, 'Thanh Hóa', 0, 1, 1, '2020-11-11 18:12:44', '2020-11-11 18:12:44'),
(4230, 'Nghệ An', 0, 1, 1, '2020-11-11 18:13:07', '2020-11-11 18:13:07'),
(4737, 'Hải Dương', 0, 1, 1, '2020-11-11 18:13:21', '2020-11-11 18:13:21'),
(5017, 'Gia Lai', 0, 1, 1, '2020-11-11 18:13:32', '2020-11-11 18:13:32'),
(5259, 'Bình Phước', 0, 1, 1, '2020-11-11 18:13:41', '2020-11-11 18:13:41'),
(5385, 'Hưng Yên', 0, 1, 1, '2020-11-11 18:13:52', '2020-11-11 18:13:52'),
(5558, 'Bình Định', 0, 1, 1, '2020-11-11 18:13:58', '2020-11-11 18:13:58'),
(5730, 'Tiền Giang', 0, 1, 1, '2020-11-11 18:14:08', '2020-11-11 18:14:08'),
(5922, 'Thái Bình', 0, 1, 1, '2020-11-11 18:14:22', '2020-11-11 18:14:22'),
(6218, 'Bắc Giang', 0, 1, 1, '2020-11-11 18:14:31', '2020-11-11 18:14:31'),
(6463, 'Hòa Bình', 0, 1, 1, '2020-11-11 18:14:39', '2020-11-11 18:14:39'),
(6686, 'An Giang', 0, 1, 1, '2020-11-11 18:14:45', '2020-11-11 18:14:45'),
(6854, 'Vĩnh Phúc', 0, 1, 1, '2020-11-11 18:15:00', '2020-11-11 18:15:00'),
(7001, 'Tây Ninh', 0, 1, 1, '2020-11-11 18:15:06', '2020-11-11 18:15:06'),
(7106, 'Thái Nguyên', 0, 1, 1, '2020-11-11 18:15:14', '2020-11-11 18:15:14'),
(7298, 'Lào Cai', 0, 1, 1, '2020-11-11 18:15:20', '2020-11-11 18:15:20'),
(7474, 'Nam Định', 0, 1, 1, '2020-11-11 18:15:29', '2020-11-11 18:15:29'),
(7715, 'Quảng Ngãi', 0, 1, 1, '2020-11-11 18:15:38', '2020-11-11 18:15:38'),
(7917, 'Bến Tre', 0, 1, 1, '2020-11-11 18:15:45', '2020-11-11 18:15:45'),
(8095, 'Đắk Nông', 0, 1, 1, '2020-11-11 18:16:05', '2020-11-11 18:16:05'),
(8175, 'Cà Mau', 0, 1, 1, '2020-11-11 18:16:13', '2020-11-11 18:16:13'),
(8287, 'Vĩnh Long', 0, 1, 1, '2020-11-11 18:16:23', '2020-11-11 18:16:23'),
(8405, 'Ninh Bình', 0, 1, 1, '2020-11-11 18:16:28', '2020-11-11 18:16:28'),
(8560, 'Phú Thọ', 0, 1, 1, '2020-11-11 18:16:35', '2020-11-11 18:16:35'),
(8851, 'Ninh Thuận', 0, 1, 1, '2020-11-11 18:16:43', '2020-11-11 18:16:43'),
(8924, 'Phú Yên', 0, 1, 1, '2020-11-11 18:16:47', '2020-11-11 18:16:47'),
(9047, 'Hà Nam', 0, 1, 1, '2020-11-11 18:16:52', '2020-11-11 18:16:52'),
(9171, 'Hà Tĩnh', 0, 1, 1, '2020-11-11 18:16:57', '2020-11-11 18:16:57'),
(9449, 'Đồng Tháp', 0, 1, 1, '2020-11-11 18:17:04', '2020-11-11 18:17:04'),
(9607, 'Sóc Trăng', 0, 1, 1, '2020-11-11 18:17:13', '2020-11-11 18:17:13'),
(9731, 'Kon Tum', 0, 1, 1, '2020-11-11 18:17:22', '2020-11-11 18:17:22'),
(9845, 'Quảng Bình', 0, 1, 1, '2020-11-11 18:17:28', '2020-11-11 18:17:28'),
(10025, 'Quảng Trị', 0, 1, 1, '2020-11-11 18:17:37', '2020-11-11 18:17:37'),
(10177, 'Trà Vinh', 0, 1, 1, '2020-11-11 18:17:46', '2020-11-11 18:17:46'),
(10301, 'Hậu Giang', 0, 1, 1, '2020-11-11 18:17:52', '2020-11-11 18:17:52'),
(10387, 'Sơn La', 0, 1, 1, '2020-11-11 18:18:00', '2020-11-11 18:18:00'),
(10604, 'Bạc Liêu', 0, 1, 1, '2020-11-11 18:18:07', '2020-11-11 18:18:07'),
(10679, 'Yên Bái', 0, 1, 1, '2020-11-11 18:18:11', '2020-11-11 18:18:11'),
(10869, 'Tuyên Quang', 0, 1, 1, '2020-11-11 18:18:17', '2020-11-11 18:18:17'),
(11019, 'Điện Biên', 0, 1, 1, '2020-11-11 18:18:21', '2020-11-11 18:18:21'),
(11162, 'Lai Châu', 0, 1, 1, '2020-11-11 18:18:25', '2020-11-11 18:18:25'),
(11280, 'Lạng Sơn', 0, 1, 1, '2020-11-11 18:18:28', '2020-11-11 18:18:28'),
(11525, 'Hà Giang', 0, 1, 1, '2020-11-11 18:18:35', '2020-11-11 18:18:35'),
(11732, 'Bắc Kạn', 0, 1, 1, '2020-11-11 18:18:40', '2020-11-11 18:18:40'),
(11863, 'Cao Bằng', 0, 1, 1, '2020-11-11 18:18:43', '2020-11-11 18:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `act` tinyint(1) DEFAULT 0,
  `view_type` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `ord` int(10) DEFAULT NULL COMMENT 'Sắp xếp',
  `default_data` text DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `region` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `keyword`, `value`, `act`, `view_type`, `note`, `ord`, `default_data`, `required`, `region`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'APP_NAME', 'Tuan Dung app', 1, 'text', 'Tên phần mềm', 0, NULL, NULL, '1', '2023-05-16 21:51:59', '2023-05-16 21:52:03'),
(2, 'timezone', 'TIMEZONE', 'Asia/Ho_Chi_Minh', 1, 'text', 'Múi giờ', 0, NULL, NULL, '1', '2023-05-16 22:15:15', '2023-05-16 22:15:15'),
(3, 'mail_host', 'MAIL_HOST', 'smtp.gmail.com', 1, 'text', 'Mail host', 0, NULL, NULL, '1', '2023-05-16 23:41:06', '2023-05-16 23:41:06'),
(4, 'mail_port', 'MAIL_PORT', '587', 1, 'text', 'Mail port', 0, NULL, NULL, '1', '2023-05-16 23:41:15', '2023-05-16 23:41:15'),
(5, 'mail_encryption', 'MAIL_ENCRYPTION', 'tls', 1, 'text', 'Giao thức gửi mail', 0, NULL, NULL, '1', '2023-05-16 23:44:05', '2023-05-16 23:44:05'),
(6, 'mail_username', 'MAIL_USERNAME', 'nguyenduykhanh2323@gmail.com', 1, 'text', 'Mail gửi', 0, NULL, NULL, '1', '2023-05-16 23:42:40', '2023-05-16 23:42:40'),
(7, 'mail_password', 'MAIL_PASSWORD', 'pass23', 1, 'text', 'Mail gửi', 0, NULL, NULL, '1', '2023-05-16 23:42:38', '2023-05-16 23:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `contacter` varchar(255) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `tax_code` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `act` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `code`, `name`, `contacter`, `manager`, `phone`, `telephone`, `email`, `address`, `city`, `tax_code`, `note`, `status`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'KH-000001', 'CTY CP THƯƠNG MẠI DƯỢC PHẨM BIGFAM', 'Ms Thảo', NULL, '0325544040', '0325544040', 'zalo', 'Tòa R2 TTTM Royal City, 72A Nguyễn Trãi - Thanh Xuân - HN', '351', NULL, NULL, '1', 1, '2023-09-23 11:10:31', '2023-09-24 08:40:12', 1),
(3, 'KH-000002', 'CÔNG TY DỆT MAY THÀNH VƯỢNG', 'Ms Hằng', NULL, '0979359387', '0979359387', 'zalo', 'Hoa sơn - Ứng hòa - Hà nội', '351', NULL, NULL, '1', 1, '2023-09-23 13:39:43', '2023-09-24 08:40:12', 1),
(4, 'KH-000004', 'CTY TNHH VIETBRAND', 'Phương', NULL, '0977070289', '0977070289', 'Phuongn@vietbrandco.vn', 'Hà Nam', '9047', NULL, NULL, '1', 1, '2023-09-23 13:42:14', '2023-10-20 18:55:52', 1),
(5, 'KH-000005', 'CTY DƯỢC PHẨM DIAMOND PHÁP', 'Ms Hải', NULL, '0917129458', '0917129458', 'zalo', 'KCN Đồng Văn - Hà Nam', '9047', NULL, NULL, '1', 1, '2023-09-23 14:16:26', '2023-09-24 08:40:12', 1),
(6, 'KH-000006', 'CTY TNHH IN & SẢN XUẤT BAO BÌ NGHỆ AN', 'Mr Dũng', NULL, '0912188628', '0912188628', 'zalo', 'TP Vinh - Nghệ An', '4230', NULL, NULL, '1', 1, '2023-09-23 14:18:56', '2023-09-24 08:40:12', 1),
(7, 'KH-000007', 'CÔNG TY DƯỢC PHẨM NOVA PHÁP', 'Mr Hải', NULL, '0914755299', '0914755299', 'zalo', 'TP Nam Định', '7474', NULL, NULL, '1', 1, '2023-09-23 14:22:24', '2023-09-24 08:40:12', 1),
(8, 'KH-000008', 'CTY HATACHI', 'Mr Phúc', NULL, '0358866868', '0358866868', 'zalo', 'Trung Kính - HN', '351', NULL, NULL, '1', 1, '2023-09-23 14:32:18', '2023-09-24 08:40:12', 1),
(9, 'KH-000009', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', NULL, '0963303999', '02438303888', 'kd1.intuandung@gmail.com', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', '351', NULL, NULL, '1', 1, '2023-09-23 14:34:33', '2023-09-24 08:40:12', 1),
(10, 'KH-000010', 'Công ty TNHH phát triển y tế USA', 'Ms Dịu', NULL, '0983 580 635', '0983 580 635', 'chưa có', 'NV1 Số 38 Tổng Cục V Tân Triều Thanh Trì TP.Hà Nội', '351', NULL, NULL, '1', 1, '2023-09-26 14:37:54', '2023-09-26 14:37:54', 10),
(11, 'KH-000011', 'CÔNG TY TNHH ĐẦU TƯ XUẤT NHẬP KHẨU VÀ THƯƠNG MẠI THÀNH ĐỨC', 'Anh Cương', NULL, '0988373219', '0988373219', 'zalo', 'Số 3B, Ngách 144/4, Phố Quan Nhân, Phường Nhân Chính, Quận Thanh Xuân, Thành phố Hà Nội', '7474', NULL, 'TP Ninh bình 0988373219', '1', 1, '2023-09-26 16:14:25', '2023-09-26 16:14:25', 10),
(12, 'KH-000012', 'CÔNG TY DƯỢC PHẨM HADIPHACO', 'Mr Hải', NULL, '0968 754 654', '0968 754 654', 'duocphamhadiphaco@gmail.com', 'Số 65 ngõ 173/192 Lê Trọng Tấn, Định Công, Hoàng Mai, HN', '351', NULL, NULL, '1', 1, '2023-09-26 16:51:54', '2023-09-26 16:51:54', 10),
(13, 'KH-000013', 'Công ty TNHH dược phẩm Blue pharma', 'Mr Hải', NULL, '0968754654', '0968754654', 'zalo', 'Số nhà 22, ngách 50/37 Đường Khuyến Lương, Trần phú', '351', NULL, NULL, '1', 1, '2023-09-26 16:59:34', '2023-09-26 16:59:34', 10),
(14, 'KH-000014', 'CÔNG TY CP DƯỢC MỸ PHẨM OLYMPUS', 'Mr Tú', NULL, '0966969622', '0966969622', 'zalo', 'Ngõ 77 Bùi Xương Trạch - Thanh Xuân - HN', '351', NULL, NULL, '1', 1, '2023-09-28 10:01:06', '2023-09-28 10:01:06', 10),
(15, 'KH-000015', 'CÔNG TY TNHH ĐẦU TƯ THƯƠNG MẠI THẢO DƯỢC GLOBAL PHARMA', 'Mr Dự', NULL, '0982123263', '0982123263', 'globalpharma88@gmail.com', 'Số 63 ngõ 172/92 Lê trọng Tấn, Định Công, Hoàng Mai, HN', '351', NULL, NULL, '1', 1, '2023-09-28 11:16:29', '2023-09-28 11:16:29', 10),
(16, 'KH-000016', 'CÔNG TY TNHH ECOPHAR VIỆT NAM', 'Mr Cường', NULL, '0987608052', '0987608052', 'zalo', 'Số 12, ngõ 4 Đường Đào Nguyên, Châu Quì, Gia Lâm, HN', '351', NULL, NULL, '1', 1, '2023-09-28 11:32:08', '2023-09-28 11:32:08', 10),
(17, 'KH-000017', 'CÔNG TY TNHH DƯỢC PHẨM MAILISA GROUP', 'Chị Phương', NULL, '0908737986', '0908737986', 'mainguyendv@gmail.com', 'Nhà LK2, lô 3, khu đô thị 379, đường Phan Bá Vành', '5922', NULL, NULL, '1', 1, '2023-09-30 14:11:20', '2023-09-30 14:11:20', 10),
(18, 'KH-000018', 'Công ty cổ phần LáArt', 'Lê Bắc', NULL, '0373375882', '0373375882', 'zalo', 'Số 66 Nguyễn Thái Học, Ba Đình, Hn', '351', NULL, NULL, '2', 1, '2023-10-09 14:57:14', '2023-10-09 14:57:14', 10),
(21, 'KH-000021', 'CÔNG TY HNA', 'Mr Đức', NULL, '0382700882', '0382700882', 'zalo', '171 Kim Mã - HN', '351', NULL, NULL, '1', 1, '2023-11-02 08:41:33', '2023-11-02 08:41:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `c_designs`
--

CREATE TABLE `c_designs` (
  `id` int(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `customer` int(10) DEFAULT NULL,
  `demo_expired` datetime DEFAULT NULL,
  `expired` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `assign_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `c_designs`
--

INSERT INTO `c_designs` (`id`, `code`, `name`, `order`, `product`, `customer`, `demo_expired`, `expired`, `note`, `status`, `act`, `created_by`, `assign_by`, `created_at`, `updated_at`) VALUES
(1, 'TK-DH-000001A', NULL, 1, 2, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-23 15:36:57', '2023-09-23 15:41:36'),
(2, 'TK-DH-000002A', NULL, 2, 4, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-23 16:15:31', '2023-09-23 16:16:14'),
(3, 'TK-DH-000004A', NULL, 4, 6, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-23 19:10:26', '2023-09-23 19:12:28'),
(4, 'TK-DH-000005A', NULL, 5, 9, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-24 08:45:40', '2023-09-24 08:47:08'),
(5, 'TK-DH-000007A', NULL, 7, 13, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-24 15:55:14', '2023-09-24 15:56:10'),
(6, 'TK-DH-000015A', NULL, 15, 25, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-28 14:07:27', '2023-09-28 14:15:18'),
(7, 'TK-DH-000012A', NULL, 12, 24, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-28 15:13:59', '2023-09-28 16:15:56'),
(8, 'TK-DH-000011A', NULL, 11, 23, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-28 15:14:31', '2023-09-28 15:29:49'),
(9, 'TK-DH-000014A', NULL, 14, 18, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-28 15:20:13', '2023-09-28 16:31:18'),
(10, 'TK-DH-000009A', NULL, 9, 17, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-28 15:20:44', '2023-09-28 16:05:54'),
(14, 'TK-DH-000010A', NULL, 10, 1, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-28 17:59:20', '2023-09-29 16:10:30'),
(15, 'TK-DH-000016A', NULL, 16, 27, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-09-29 15:26:41', '2023-09-29 15:27:45'),
(16, 'TK-DH-000018A', NULL, 18, 36, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-10-04 06:53:59', '2023-10-04 06:56:06'),
(17, 'TK-DH-000021A', NULL, 21, 52, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-10-07 08:07:21', '2023-10-07 08:12:55'),
(18, 'TK-DH-000020A', NULL, 20, 53, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-10-07 08:07:45', '2023-10-07 08:12:16'),
(19, 'TK-DH-000019A', NULL, 19, 54, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-10-07 08:08:48', '2023-10-07 08:11:49'),
(20, 'TK-DH-00000024A', NULL, 24, 94, NULL, NULL, NULL, NULL, 'design_submited', 1, 4, 3, '2023-12-09 09:43:51', '2023-12-09 09:44:49');

-- --------------------------------------------------------

--
-- Table structure for table `c_expertises`
--

CREATE TABLE `c_expertises` (
  `id` int(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `take_status` varchar(20) DEFAULT NULL,
  `handle_problem` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `c_expertises`
--

INSERT INTO `c_expertises` (`id`, `code`, `name`, `qty`, `product`, `take_status`, `handle_problem`, `note`, `status`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'KCS-00000002', 'test kcs đã thẩm định xong sảm phẩm Hộp cứng cao cấp SONA + Túi giấy', '2000', 94, 'prob', 'rework', 'loi 1000', 'not_accepted', 1, 19, '2024-01-04 17:27:48', '2024-01-04 17:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `c_processes`
--

CREATE TABLE `c_processes` (
  `id` int(10) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `order_expired` datetime DEFAULT NULL,
  `expired` datetime DEFAULT NULL,
  `json_data_conf` text DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_by` int(1) DEFAULT NULL,
  `assign_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `c_supplies`
--

CREATE TABLE `c_supplies` (
  `id` int(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `size_type` int(10) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `supply` int(10) DEFAULT NULL,
  `supp_type` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `c_supplies`
--

INSERT INTO `c_supplies` (`id`, `code`, `size_type`, `qty`, `product`, `supply`, `supp_type`, `note`, `status`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'XVT-000003', 1, '10857.5', 9, 17, 'nilon', NULL, 'handled', 1, 6, '2023-09-24 10:59:53', '2023-09-24 10:59:53'),
(5, 'XVT-000005', 2, '50500', 13, 27, 'nilon', NULL, 'handled', 1, 6, '2023-09-24 16:09:51', '2023-09-24 16:09:51'),
(14, 'XVT-00000014', 51, '3360', 94, 198, 'paper', NULL, 'handled', 1, 6, '2023-12-09 10:11:59', '2023-12-09 10:11:59'),
(15, 'XVT-00000015', 2, '26544', 94, 198, 'nilon', NULL, 'handled', 1, 6, '2023-12-09 10:11:59', '2023-12-09 10:11:59'),
(16, 'XVT-00000016', 51, '890', 94, 199, 'paper', NULL, 'handled', 1, 6, '2023-12-09 10:12:33', '2023-12-09 10:12:33'),
(17, 'XVT-00000017', 2, '11036', 94, 199, 'nilon', NULL, 'handled', 1, 6, '2023-12-09 10:12:33', '2023-12-09 10:12:33'),
(18, 'XVT-00000018', 54, '1655', 94, 200, 'paper', NULL, 'handled', 1, 6, '2023-12-09 10:12:53', '2023-12-09 10:12:53'),
(19, 'XVT-00000019', 4, '17874', 94, 200, 'nilon', NULL, 'handled', 1, 6, '2023-12-09 10:12:53', '2023-12-09 10:12:53'),
(20, 'XVT-00000020', 81, '1630', 94, 201, 'paper', NULL, 'handled', 1, 6, '2023-12-09 11:48:10', '2023-12-09 11:48:10'),
(21, 'XVT-00000021', 29, '1561', 94, 173, 'carton', NULL, 'handled', 1, 6, '2023-12-12 21:45:09', '2023-12-12 21:45:09'),
(22, 'XVT-00000022', 29, '781', 94, 174, 'carton', NULL, 'handled', 1, 6, '2023-12-12 21:45:29', '2023-12-12 21:45:29'),
(23, 'XVT-00000023', 35, '1041', 94, 175, 'carton', NULL, 'handled', 1, 6, '2023-12-12 21:51:54', '2023-12-12 21:51:54'),
(24, 'XVT-00000024', 51, '560', 99, 218, 'paper', NULL, 'handling', 1, 6, '2024-01-03 04:32:31', '2024-01-03 04:32:31'),
(25, 'XVT-00000025', 52, '305', 99, 219, 'paper', NULL, 'handling', 1, 6, '2024-01-03 04:43:30', '2024-01-03 04:43:30'),
(26, 'XVT-00000026', 47, '1120', 99, 220, 'paper', NULL, 'handling', 1, 6, '2024-01-03 04:53:08', '2024-01-03 04:53:08'),
(27, 'XVT-00000027', 81, '1120', 99, 221, 'paper', NULL, 'handled', 1, 6, '2024-01-03 04:53:24', '2024-01-03 04:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `design_types`
--

CREATE TABLE `design_types` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `design_types`
--

INSERT INTO `design_types` (`id`, `name`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Thiết kế mới', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:23'),
(2, 'Chế bản', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:23'),
(3, 'File cũ có chỉnh sửa', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:23'),
(4, 'File cũ không chỉnh sửa', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:23'),
(5, 'File khách hàng gửi', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `model_price` varchar(20) DEFAULT NULL,
  `work_price` varchar(20) NOT NULL DEFAULT '0',
  `shape_price` varchar(20) NOT NULL DEFAULT '0',
  `w_work_price` varchar(20) DEFAULT NULL,
  `w_shape_price` varchar(20) DEFAULT NULL,
  `key_device` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `supply` varchar(20) DEFAULT NULL,
  `default_device` tinyint(4) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `ord` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `model_price`, `work_price`, `shape_price`, `w_work_price`, `w_shape_price`, `key_device`, `type`, `supply`, `default_device`, `note`, `act`, `ord`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'TỰ ĐỘNG', '0', '0', '100000', '25', '50000', 'compress', 'auto', 'paper', 1, NULL, 1, 0, '2023-05-23 17:01:35', '2023-09-10 15:15:53', 0),
(4, 'BÁN TỰ ĐỘNG', '150', '150', '100000', '50', '50000', 'elevate', 'semi_auto', 'paper', 0, '150đ/cm ( Ví dụ: 43 x 65 x 150 = 420.000đ tiền khuôn', 1, 0, '2023-05-23 17:01:35', '2024-02-21 13:06:37', 0),
(6, 'TỰ ĐỘNG', '0', '50', '100000', '10', '25000', 'box_paste', 'auto', 'paper', NULL, NULL, 1, 0, '2023-05-23 17:01:35', '2023-09-14 21:44:17', 0),
(7, 'TỰ ĐỘNG', '0', '150', '100000', '25', '35000', 'mill', 'auto', 'carton', 0, NULL, 1, 0, '2023-05-23 17:01:35', '2023-09-14 20:46:18', 0),
(8, 'MÁY CÁN NHIỆT ( dự phòng )', '0', '0', '50000', '40', '25000', 'nilon', 'semi_auto', 'paper', 0, NULL, 1, 1, '2023-05-23 17:01:35', '2024-02-21 13:05:38', 1),
(9, 'THỦY LỰC - ÉP THỦ CÔNG', '0', '0', '100000', '50', '35000', 'compress', 'semi_auto', 'paper', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 12:54:13', 0),
(10, 'BÁN TỰ ĐỘNG', '80', '600', '200000', '150', '100000', 'uv', 'semi_auto', 'paper', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-09-14 21:43:09', 0),
(12, 'BÓC LỀ', '0', '10', '30000', '5', '0', 'peel', 'semi_auto', 'paper', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-09-14 19:27:03', 0),
(13, 'THỦ CÔNG', '0', '200', '50000', '80', '25000', 'box_paste', 'semi_auto', 'paper', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 12:57:34', 0),
(14, 'MÁY PHAY BÁN TỰ ĐỘNG', '0', '130', '100000', '35', '35000', 'mill', 'semi_auto', 'carton', NULL, NULL, 0, 1, '2023-05-23 17:01:35', '2023-09-14 20:45:34', 0),
(16, 'MÁY CÁN METALAI', '0', '0', '100000', '40', '50000', 'metalai', 'auto', 'paper', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2024-02-21 13:06:06', 1),
(18, 'MÁY XÉN', '0', '80', '100000', '0', '10000', 'cut', 'semi_auto', 'carton', 0, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:09:44', 0),
(19, 'Máy thúc nổi carton', '0', '200', '100000', '50', '50000', 'float', 'auto', 'paper', NULL, 'Chưa có máy', 0, 0, '2023-05-23 17:01:35', '2023-10-01 14:48:51', 0),
(21, 'BÁN TỰ ĐỘNG', '150', '150', '100000', '50', '50000', 'elevate', 'semi_auto', 'carton', 0, '150đ/cm áp dụng cho tất cả các khuôn máy bế, Khuôn phức tạp + thêm ngoài theo cảm nhận', 1, 1, '2023-05-23 17:01:35', '2023-09-14 20:44:21', 0),
(23, 'BÁN TỰ ĐỘNG', '150', '1000', '100000', '500', '50000', 'elevate', 'semi_auto', 'rubber', 0, NULL, 1, 1, '2023-05-23 17:01:35', '2023-09-14 20:50:42', 0),
(25, 'BÁN TỰ ĐỘNG', '150', '1000', '100000', '500', '50000', 'elevate', 'semi_auto', 'styrofoam', NULL, '150d/cm', 1, 1, '2023-05-23 17:01:35', '2023-10-01 14:57:22', 0),
(26, 'Máy bế tự động', '0', '100', '100000', '0', '0', 'elevate', 'auto', 'mica', NULL, NULL, 1, 0, '2023-05-23 17:01:35', '2023-09-10 15:15:53', 0),
(27, 'Máy bế bán tự động', '0', '150', '100000', '0', '0', 'elevate', 'semi_auto', 'mica', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-09-10 15:17:44', 0),
(29, 'MÁY XÉN', '0', '200', '100000', '0', '0', 'cut', 'semi_auto', 'rubber', 0, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:16:01', 0),
(31, 'BÁN TỰ ĐỘNG', '0', '100', '50000', '0', '0', 'cut', 'semi_auto', 'decal', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:18:01', 0),
(33, 'Máy xén bán tự động', '0', '100', '50000', '0', '0', 'cut', 'semi_auto', 'silk', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:18:20', 0),
(35, 'MÁY XÉN', '0', '150', '50000', '0', '0', 'cut', 'semi_auto', 'styrofoam', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:16:45', 0),
(37, 'Máy xén bán tự động', '0', '100', '50000', '0', '0', 'cut', 'semi_auto', 'mica', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:18:44', 0),
(39, 'BÓC LỀ CARTON', '0', '20', '20000', '8', '0', 'peel', 'semi_auto', 'carton', 0, NULL, 1, 1, '2023-05-23 17:01:35', '2023-09-14 20:49:08', 0),
(41, 'BÓC LỀ', '0', '30', '20000', '15', '0', 'peel', 'semi_auto', 'rubber', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-09-14 20:51:34', 0),
(43, 'BÁN TỰ ĐỘNG', '0', '30', '20000', '15', '0', 'peel', 'semi_auto', 'styrofoam', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-06 13:17:44', 0),
(45, 'Máy bóc lề bán tự động', '0', '15', '20000', '6', '0', 'peel', 'semi_auto', 'mica', NULL, NULL, 1, 1, '2023-05-23 17:01:35', '2023-10-01 15:00:35', 0),
(46, 'MÁY CÁN NƯỚC ( ưu tiên )', '0', '0', '50000', '40', '25000', 'nilon', 'auto', 'paper', 0, NULL, 1, NULL, '2023-05-23 17:01:35', '2024-02-21 13:05:26', 1),
(48, 'MÁY BỒI', '0', '500', '300000', '140', '100000', 'fill', 'semi_auto', 'fill_finish', 0, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-10-06 13:27:03', 0),
(49, 'Túi giấy khổ in  43 x 65', '0', '1360', '100000', '440', '50000', 'bag_paste', 'semi_auto', 'paper', NULL, '150d/cm', 1, NULL, '2023-05-23 17:01:35', '2024-02-21 14:33:21', 1),
(50, 'Túi giấy khổ in  52 x 72', '0', '1550', '100000', '440', '50000', 'bag_paste', 'semi_auto', 'paper', NULL, '150d/cm', 1, NULL, '2023-05-23 17:01:35', '2024-02-21 14:33:15', 1),
(51, 'Túi giấy khổ in  65 x 86', '0', '1700', '100000', '440', '50000', 'bag_paste', 'semi_auto', 'paper', NULL, '150d/cm', 1, NULL, '2023-05-23 17:01:35', '2024-02-21 14:33:10', 1),
(52, 'Túi giấy khổ in 72 x 102', '0', '2000', '100000', '440', '50000', 'bag_paste', 'semi_auto', 'paper', NULL, '150d/cm', 1, NULL, '2023-05-23 17:01:35', '2024-02-21 14:33:02', 1),
(53, 'GẮN BÌA VỚI THÀNH', '0', '500', '100000', '150', '0', 'finish', 'auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-16 02:57:00', 1),
(54, 'GẮN KHAY ĐỊNH HÌNH', '0', '150', '50000', '40', '0', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:45:45', 1),
(55, 'GẮN CAO SU NON', '0', '150', '50000', '40', '0', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:45:38', 1),
(56, 'GẮN MÚT PHẲNG', '0', '150', '50000', '40', '0', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:47:05', 1),
(57, 'GẮN VẢI LỤA', '0', '600', '50000', '300', '0', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:49:28', 1),
(58, 'GẮN PHỤ KIỆN', '0', '150', '50000', '50', '0', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:48:05', 1),
(59, 'ĐỘT KHUYẾT', '0', '150', '50000', '40', '0', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:49:04', 1),
(60, 'GẮN 2 THÀNH HỘP TRẢI PHẲNG', '0', '600', '200000', '300', '50000', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-09-15 05:45:06', 1),
(61, 'BÁN TỰ ĐỘNG', '0', '80', '50000', '0', '0', 'cut', 'auto', 'paper', NULL, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-10-06 13:10:08', 1),
(62, 'TỰ ĐỘNG', '50', '35', '100000', '0', '0', 'fold', 'auto', 'paper', 0, NULL, 1, NULL, '2023-05-23 17:01:35', '2023-10-06 13:03:41', 1),
(63, 'MÁY BỒI TĐ', '0', '500', '300000', '140', '100000', 'fill', 'auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-09-15 06:11:13', '2023-10-06 13:26:56', 1),
(64, 'BÓ GÓI', '0', '100', '200000', '50', '50000', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-10-05 09:31:58', '2023-10-05 09:32:34', 1),
(65, 'GẮN THÀNH HỘP QUÀ TẾT 2024', '0', '800', '200000', '200', '50000', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-10-07 07:38:17', '2023-10-07 07:38:17', 1),
(66, 'GẮN ĐÁY CHAI RƯỢU HỘP QUÀ TẾT 2024', '0', '500', '200000', '200', '50000', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-10-07 07:39:00', '2023-10-07 07:39:00', 1),
(67, 'GẮN CỔ CHAI RƯỢU HỘP QUÀ TẾT 2024', '0', '500', '200000', '200', '50000', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-10-07 07:39:22', '2023-10-07 07:39:22', 1),
(68, 'BÓ GÓI HỘP QUÀ TẾT 2024', '0', '300', '200000', '100', '50000', 'finish', 'semi_auto', 'fill_finish', NULL, NULL, 1, NULL, '2023-10-07 07:40:32', '2023-10-07 07:40:42', 1),
(69, 'TỰ ĐỘNG', '150', '150', '100000', '35', '50000', 'elevate', 'auto', 'paper', NULL, NULL, 1, NULL, '2024-02-21 13:07:31', '2024-02-21 14:43:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ord` tinyint(4) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `act` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `note`, `ord`, `parent`, `act`, `created_at`, `updated_at`) VALUES
(2, 'An Phú', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(3, 'Châu Đốc', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(4, 'Châu Phú', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(5, 'Châu Thành', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(6, 'Chợ Mới', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(7, 'Long Xuyên', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(8, 'Phú Tân', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(9, 'Tân Châu', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(10, 'Thoại Sơn', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(11, 'Tịnh Biên', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(12, 'Tri Tôn', NULL, 1, 1, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(14, 'Côn Đảo', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(15, 'Đất Đỏ', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(16, 'Tân Thành', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(17, 'Vũng Tàu', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(18, 'Xuyên Mộc', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(19, 'Bà Rịa-Vũng Tàu', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(20, 'Bà Rịa', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(21, 'Châu Đức', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(22, 'Long Điền', NULL, 1, 13, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(24, 'Bàu Bàng', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(25, 'Bắc Tân Uyên', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(26, 'Bến Cát', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(27, 'Dầu Tiếng', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(28, 'Dĩ An', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(29, 'Phú Giáo', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(30, 'Tân Uyên', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(31, 'Thủ Dầu Một', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(32, 'Thuận An', NULL, 1, 23, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(34, 'Bình Long', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(35, 'Bù Đăng', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(36, 'Bù Đốp', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(37, 'Bù Gia Mập', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(38, 'Chơn Thành', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(39, 'Đồng Phú', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(40, 'Đồng Xoài', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(41, 'Hớn Quản', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(42, 'Lộc Ninh', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(43, 'Phú Riềng', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(44, 'Phước Long', NULL, 1, 33, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(46, 'Bắc Bình', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(47, 'Đức Linh', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(48, 'Hàm Tân', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(49, 'Hàm Thuận Bắc', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(50, 'Hàm Thuận Nam', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(51, 'La Gi', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(52, 'Phan Thiết', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(53, 'Phú Quý', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(54, 'Tánh Linh', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(55, 'Tuy Phong', NULL, 1, 45, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(57, 'An Lão', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(58, 'An Nhơn', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(59, 'Hoài Ân', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(60, 'Hoài Nhơn', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(61, 'Phù Cát', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(62, 'Phù Mỹ', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(63, 'Quy Nhơn', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(64, 'Tây Sơn', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(65, 'Tuy Phước', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(66, 'Vân Canh', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(67, 'Vĩnh Thạnh', NULL, 1, 56, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(69, 'Bạc Liêu', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(70, 'Đông Hải', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(71, 'Giá Rai', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(72, 'Hoà Bình', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(73, 'Hồng Dân', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(74, 'Phước Long', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(75, 'Vĩnh Lợi', NULL, 1, 68, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(77, 'Bắc Giang', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(78, 'Hiệp Hòa', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(79, 'Lạng Giang', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(80, 'Lục Nam', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(81, 'Lục Ngạn', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(82, 'Sơn Động', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(83, 'Tân Yên', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(84, 'Việt Yên', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(85, 'Yên Dũng', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(86, 'Yên Thế', NULL, 1, 76, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(88, 'Ba Bể', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(89, 'Bạch Thông', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(90, 'Bắc Kạn', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(91, 'Chợ Đồn', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(92, 'Chợ Mới', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(93, 'Na Rì', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(94, 'Ngân Sơn', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(95, 'Pác Nặm', NULL, 1, 87, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(97, 'Bắc Ninh', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(98, 'Gia Bình', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(99, 'Lương Tài', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(100, 'Quế Võ', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(101, 'Thuận Thành', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(102, 'Tiên Du', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(103, 'Từ Sơn', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(104, 'Yên Phong', NULL, 1, 96, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(106, 'Ba Tri', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(107, 'Bến Tre', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(108, 'Bình Đại', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(109, 'Châu Thành', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(110, 'Chợ Lách', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(111, 'Giồng Trôm', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(112, 'Mỏ Cày Bắc', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(113, 'Mỏ Cày Nam', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(114, 'Thạnh Phú', NULL, 1, 105, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(116, 'Bảo Lạc', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(117, 'Bảo Lâm', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(118, 'Cao Bằng', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(119, 'Hà Quảng', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(120, 'Hạ Lang', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(121, 'Hòa An', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(122, 'Nguyên Bình', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(123, 'Phục Hòa', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(124, 'Quảng Uyên', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(125, 'Thạch An', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(126, 'Thông Nông', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(127, 'Trà Lĩnh', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(128, 'Trùng Khánh', NULL, 1, 115, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(130, 'Cà Mau', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(131, 'Cái Nước', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(132, 'Đầm Dơi', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(133, 'Năm Căn', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(134, 'Ngọc Hiển', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(135, 'Phú Tân', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(136, 'Thới Bình', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(137, 'Trần Văn Thời', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(138, 'U Minh', NULL, 1, 129, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(140, 'Bình Thủy', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(141, 'Cái Răng', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(142, 'Cờ Đỏ', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(143, 'Ninh Kiều', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(144, 'Ô Môn', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(145, 'Phong Điền', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(146, 'Thốt Nốt', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(147, 'Thới Lai', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(148, 'Vĩnh Thạnh', NULL, 1, 139, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(150, 'An Khê', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(151, 'Ayun Pa', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(152, 'Chư Păh', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(153, 'Chư Prông', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(154, 'Chư Pưh', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(155, 'Chư Sê', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(156, 'Đắk Đoa', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(157, 'Đak Pơ', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(158, 'Đức Cơ', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(159, 'Ia Grai', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(160, 'Ia Pa', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(161, 'KBang', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(162, 'Kông Chro', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(163, 'Krông Pa', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(164, 'Mang Yang', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(165, 'Phú Thiện', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(166, 'Pleiku', NULL, 1, 149, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(168, 'Cao Phong', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(169, 'Đà Bắc', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(170, 'Hoà Bình', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(171, 'Kim Bôi', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(172, 'Kỳ Sơn', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(173, 'Lạc Sơn', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(174, 'Lạc Thủy', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(175, 'Lương Sơn', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(176, 'Mai Châu', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(177, 'Tân Lạc', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(178, 'Yên Thủy', NULL, 1, 167, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(180, 'Bắc Mê', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(181, 'Bắc Quang', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(182, 'Đồng Văn', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(183, 'Hà Giang', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(184, 'Hoàng Su Phì', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(185, 'Mèo Vạc', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(186, 'Quản Bạ', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(187, 'Quang Bình', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(188, 'Vị Xuyên', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(189, 'Xín Mần', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(190, 'Yên Minh', NULL, 1, 179, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(192, 'Bình Lục', NULL, 1, 191, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(193, 'Duy Tiên', NULL, 1, 191, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(194, 'Kim Bảng', NULL, 1, 191, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(195, 'Lý Nhân', NULL, 1, 191, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(196, 'Phủ Lý', NULL, 1, 191, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(197, 'Thanh Liêm', NULL, 1, 191, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(199, 'Ba Đình', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(200, 'Ba Vì', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(201, 'Bắc Từ Liêm', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(202, 'Cầu Giấy', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(203, 'Chương Mỹ', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(204, 'Đan Phượng', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(205, 'Đông Anh', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(206, 'Đống Đa', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(207, 'Gia Lâm', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(208, 'Hà Đông', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(209, 'Hai Bà Trưng', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(210, 'Hoài Đức', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(211, 'Hoàn Kiếm', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(212, 'Hoàng Mai', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(213, 'Long Biên', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(214, 'Mê Linh', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(215, 'Mỹ Đức', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(216, 'Nam Từ Liêm', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(217, 'Phú Xuyên', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(218, 'Phúc Thọ', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(219, 'Quốc Oai', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(220, 'Sóc Sơn', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(221, 'Sơn Tây', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(222, 'Tây Hồ', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(223, 'Thạch Thất', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(224, 'Thanh Oai', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(225, 'Thanh Trì', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(226, 'Thanh Xuân', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(227, 'Thường Tín', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(228, 'Ứng Hòa', NULL, 1, 198, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(230, 'Can Lộc', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(231, 'Cẩm Xuyên', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(232, 'Đức Thọ', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(233, 'Hà Tĩnh', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(234, 'Hồng Lĩnh', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(235, 'Hương Khê', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(236, 'Hương Sơn', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(237, 'Kỳ Anh', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(238, 'Kỳ Anh', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(239, 'Lộc Hà', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(240, 'Nghi Xuân', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(241, 'Thạch Hà', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(242, 'Vũ Quang', NULL, 1, 229, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(244, 'Ân Thi', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(245, 'Hưng Yên', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(246, 'Khoái Châu', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(247, 'Kim Động', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(248, 'Mỹ Hào', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(249, 'Phù Cừ', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(250, 'Tiên Lữ', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(251, 'Văn Giang', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(252, 'Văn Lâm', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(253, 'Yên Mỹ', NULL, 1, 243, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(255, 'Bình Giang', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(256, 'Cẩm Giàng', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(257, 'Chí Linh', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(258, 'Gia Lộc', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(259, 'Hải Dương', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(260, 'Kim Thành', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(261, 'Kinh Môn', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(262, 'Nam Sách', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(263, 'Ninh Giang', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(264, 'Thanh Hà', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(265, 'Thanh Miện', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(266, 'Tứ Kỳ', NULL, 1, 254, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(268, 'An Dương', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(269, 'An Lão', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(270, 'Bạch Long Vĩ', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(271, 'Cát Hải', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(272, 'Dương Kinh', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(273, 'Đồ Sơn', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(274, 'Hải An', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(275, 'Hồng Bàng', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(276, 'Kiến An', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(277, 'Kiến Thụy', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(278, 'Lê Chân', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(279, 'Ngô Quyền', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(280, 'Thuỷ Nguyên', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(281, 'Tiên Lãng', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(282, 'Vĩnh Bảo', NULL, 1, 267, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(284, 'Châu Thành', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(285, 'Châu Thành A', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(286, 'Long Mỹ', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(287, 'Long Mỹ', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(288, 'Ngã Bảy', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(289, 'Phụng Hiệp', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(290, 'Vị Thanh', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(291, 'Vị Thủy', NULL, 1, 283, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(293, 'Cam Lâm', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(294, 'Cam Ranh', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(295, 'Diên Khánh', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(296, 'Khánh Sơn', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(297, 'Khánh Vĩnh', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(298, 'Nha Trang', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(299, 'Ninh Hòa', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(300, 'Trường Sa', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(301, 'Vạn Ninh', NULL, 1, 292, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(303, 'An Biên', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(304, 'An Minh', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(305, 'Châu Thành', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(306, 'Giang Thành', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(307, 'Giồng Riềng', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(308, 'Gò Quao', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(309, 'Hà Tiên', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(310, 'Hòn Đất', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(311, 'Kiên Hải', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(312, 'Kiên Lương', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(313, 'Phú Quốc', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(314, 'Rạch Giá', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(315, 'Tân Hiệp', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(316, 'U Minh Thượng', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(317, 'Vĩnh Thuận', NULL, 1, 302, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(319, 'Đắk Glei', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(320, 'Đắk Hà', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(321, 'Đăk Tô', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(322, 'Ia H\'Drai', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(323, 'Kon Plông', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(324, 'Kon Rẫy', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(325, 'Kon Tum', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(326, 'Ngọc Hồi', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(327, 'Sa Thầy', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(328, 'Tu Mơ Rông', NULL, 1, 318, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(330, 'Lai Châu', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(331, 'Mường Tè', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(332, 'Nậm Nhùn', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(333, 'Phong Thổ', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(334, 'Sìn Hồ', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(335, 'Tam Đường', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(336, 'Tân Uyên', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(337, 'Than Uyên', NULL, 1, 329, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(339, 'Bến Lức', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(340, 'Cần Đước', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(341, 'Cần Giuộc', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(342, 'Châu Thành', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(343, 'Đức Hòa', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(344, 'Đức Huệ', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(345, 'Kiến Tường', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(346, 'Mộc Hóa', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(347, 'Tân An', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(348, 'Tân Hưng', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(349, 'Tân Thạnh', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(350, 'Tân Trụ', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(351, 'Thạnh Hóa', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(352, 'Thủ Thừa', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(353, 'Vĩnh Hưng', NULL, 1, 338, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(355, 'Bảo Thắng', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(356, 'Bảo Yên', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(357, 'Bát Xát', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(358, 'Bắc Hà', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(359, 'Lào Cai', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(360, 'Mường Khương', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(361, 'Sa Pa', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(362, 'Si Ma Cai', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(363, 'Văn Bàn', NULL, 1, 354, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(365, 'Bảo Lâm', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(366, 'Bảo Lộc', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(367, 'Cát Tiên', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(368, 'Di Linh', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(369, 'Đà Lạt', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(370, 'Đạ Huoai', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(371, 'Đạ Tẻh', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(372, 'Đam Rông', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(373, 'Đơn Dương', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(374, 'Đức Trọng', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(375, 'Lạc Dương', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(376, 'Lâm Hà', NULL, 1, 364, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(378, 'Bắc Sơn', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(379, 'Bình Gia', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(380, 'Cao Lộc', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(381, 'Chi Lăng', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(382, 'Đình Lập', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(383, 'Hữu Lũng', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(384, 'Lạng Sơn', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(385, 'Lộc Bình', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(386, 'Tràng Định', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(387, 'Vãn Lãng', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(388, 'Văn Quan', NULL, 1, 377, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(390, 'Giao Thủy', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(391, 'Hải Hậu', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(392, 'Mỹ Lộc', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(393, 'Nam Định', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(394, 'Nam Trực', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(395, 'Nghĩa Hưng', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(396, 'Trực Ninh', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(397, 'Vụ Bản', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(398, 'Xuân Trường', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(399, 'Ý Yên', NULL, 1, 389, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(401, 'Anh Sơn', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(402, 'Con Cuông', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(403, 'Cửa Lò', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(404, 'Diễn Châu', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(405, 'Đô Lương', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(406, 'Hoàng Mai', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(407, 'Hưng Nguyên', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(408, 'Kỳ Sơn', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(409, 'Nam Đàn', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(410, 'Nghi Lộc', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(411, 'Nghĩa Đàn', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(412, 'Quế Phong', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(413, 'Quỳ Châu', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(414, 'Quỳ Hợp', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(415, 'Quỳnh Lưu', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(416, 'Tân Kỳ', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(417, 'Thái Hòa', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(418, 'Thanh Chương', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(419, 'Tương Dương', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(420, 'Vinh', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(421, 'Yên Thành', NULL, 1, 400, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(423, 'Gia Viễn', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(424, 'Hoa Lư', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(425, 'Kim Sơn', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(426, 'Nho Quan', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(427, 'Ninh Bình', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(428, 'Tam Điệp', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(429, 'Yên Khánh', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(430, 'Yên Mô', NULL, 1, 422, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(432, 'Bác Ái', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(433, 'Ninh Hải', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(434, 'Ninh Phước', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(435, 'Ninh Sơn', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(436, 'Phan Rang-Tháp Chàm', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(437, 'Thuận Bắc', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(438, 'Thuận Nam', NULL, 1, 431, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(440, 'Cẩm Khê', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(441, 'Đoan Hùng', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(442, 'Hạ Hòa', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(443, 'Lâm Thao', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(444, 'Phú Thọ', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(445, 'Phù Ninh', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(446, 'Tam Nông', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(447, 'Tân Sơn', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(448, 'Thanh Ba', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(449, 'Thanh Sơn', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(450, 'Thanh Thủy', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(451, 'Việt Trì', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(452, 'Yên Lập', NULL, 1, 439, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(454, 'Đông Hòa', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(455, 'Đồng Xuân', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(456, 'Phú Hòa', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(457, 'Sông Cầu', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(458, 'Sông Hinh', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(459, 'Sơn Hòa', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(460, 'Tây Hòa', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(461, 'Tuy An', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(462, 'Tuy Hòa', NULL, 1, 453, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(464, 'Ba Đồn', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(465, 'Bố Trạch', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(466, 'Đồng Hới', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(467, 'Lệ Thủy', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(468, 'Minh Hóa', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(469, 'Quảng Ninh', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(470, 'Quảng Trạch', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(471, 'Tuyên Hóa', NULL, 1, 463, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(473, 'Bắc Trà My', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(474, 'Duy Xuyên', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(475, 'Đại Lộc', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(476, 'Điện Bàn', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(477, 'Đông Giang', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(478, 'Hiệp Đức', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(479, 'Hội An', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(480, 'Nam Giang', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(481, 'Nam Trà My', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(482, 'Nông Sơn', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(483, 'Núi Thành', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(484, 'Phú Ninh', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(485, 'Phước Sơn', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(486, 'Quế Sơn', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(487, 'Tam Kỳ', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(488, 'Tây Giang', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(489, 'Thăng Bình', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(490, 'Tiên Phước', NULL, 1, 472, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(492, 'Ba Tơ', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(493, 'Bình Sơn', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(494, 'Đức Phổ', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(495, 'Lý Sơn', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(496, 'Minh Long', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(497, 'Mộ Đức', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(498, 'Nghĩa Hành', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(499, 'Quảng Ngãi', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(500, 'Sơn Hà', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(501, 'Sơn Tây', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(502, 'Sơn Tịnh', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(503, 'Tây Trà', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(504, 'Trà Bồng', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(505, 'Tư Nghĩa', NULL, 1, 491, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(507, 'Ba Chẽ', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(508, 'Bình Liêu', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(509, 'Cẩm Phả', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(510, 'Cô Tô', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(511, 'Đầm Hà', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(512, 'Đông Triều', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(513, 'Hạ Long', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(514, 'Hải Hà', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(515, 'Hoành Bồ', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(516, 'Móng Cái', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(517, 'Quảng Yên', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(518, 'Tiên Yên', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(519, 'Uông Bí', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(520, 'Vân Đồn', NULL, 1, 506, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(522, 'Cam Lộ', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(523, 'Cồn Cỏ', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(524, 'Đa Krông', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(525, 'Đông Hà', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(526, 'Gio Linh', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(527, 'Hải Lăng', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(528, 'Hướng Hóa', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(529, 'Quảng Trị', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(530, 'Triệu Phong', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(531, 'Vĩnh Linh', NULL, 1, 521, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(533, 'Châu Thành', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(534, 'Cù Lao Dung', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(535, 'Kế Sách', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(536, 'Long Phú', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(537, 'Mỹ Tú', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(538, 'Mỹ Xuyên', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(539, 'Ngã Năm', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(540, 'Sóc Trăng', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(541, 'Thạnh Trị', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(542, 'Trần Đề', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(543, 'Vĩnh Châu', NULL, 1, 532, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(545, 'Bắc Yên', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(546, 'Mai Sơn', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(547, 'Mộc Châu', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(548, 'Mường La', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(549, 'Phù Yên', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(550, 'Quỳnh Nhai', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(551, 'Sông Mã', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(552, 'Sốp Cộp', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(553, 'Sơn La', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(554, 'Thuận Châu', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(555, 'Vân Hồ', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(556, 'Yên Châu', NULL, 1, 544, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(558, 'Bá Thước', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(559, 'Bỉm Sơn', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(560, 'Cẩm Thủy', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(561, 'Đông Sơn', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(562, 'Hà Trung', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(563, 'Hậu Lộc', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(564, 'Hoằng Hóa', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(565, 'Lang Chánh', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(566, 'Mường Lát', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(567, 'Nga Sơn', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(568, 'Ngọc Lặc', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(569, 'Như Thanh', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(570, 'Như Xuân', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(571, 'Nông Cống', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(572, 'Quan Hóa', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(573, 'Quan Sơn', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(574, 'Quảng Xương', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(575, 'Sầm Sơn', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(576, 'Thạch Thành', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(577, 'Thanh Hóa', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(578, 'Thiệu Hóa', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(579, 'Thọ Xuân', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(580, 'Thường Xuân', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(581, 'Tĩnh Gia', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(582, 'Triệu Sơn', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(583, 'Vĩnh Lộc', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(584, 'Yên Định', NULL, 1, 557, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(586, 'Đông Hưng', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(587, 'Hưng Hà', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(588, 'Kiến Xương', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(589, 'Quỳnh Phụ', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(590, 'Thái Bình', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(591, 'Thái Thụy', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(592, 'Tiền Hải', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(593, 'Vũ Thư', NULL, 1, 585, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(595, 'Đại Từ', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(596, 'Định Hóa', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(597, 'Đồng Hỷ', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(598, 'Phổ Yên', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(599, 'Phú Bình', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(600, 'Phú Lương', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(601, 'Sông Công', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(602, 'Thái Nguyên', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(603, 'Võ Nhai', NULL, 1, 594, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(605, 'Huế', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(606, 'Hương Thủy', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(607, 'Hương Trà', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(608, 'Nam Đông', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(609, 'Thừa Thiên-Huế', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(610, 'A Lưới', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(611, 'Phong Điền', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(612, 'Phú Lộc', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(613, 'Phú Vang', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(614, 'Quảng Điền', NULL, 1, 604, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(616, 'Cai Lậy', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(617, 'Cai Lậy', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(618, 'Cái Bè', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(619, 'Châu Thành', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(620, 'Chợ Gạo', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(621, 'Gò Công', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(622, 'Gò Công Đông', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(623, 'Gò Công Tây', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(624, 'Mỹ Tho', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(625, 'Tân Phú Đông', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(626, 'Tân Phước', NULL, 1, 615, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(628, 'Bình Chánh', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(629, 'Bình Tân', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(630, 'Bình Thạnh', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(631, 'Cần Giờ', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(632, 'Củ Chi', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(633, 'Gò Vấp', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(634, 'Hóc Môn', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(635, 'Nhà Bè', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(636, 'Phú Nhuận', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(637, 'Quận 1', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(638, 'Quận 2', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(639, 'Quận 3', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(640, 'Quận 4', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(641, 'Quận 5', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(642, 'Quận 6', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(643, 'Quận 7', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(644, 'Quận 8', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(645, 'Quận 9', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(646, 'Quận 10', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(647, 'Quận 11', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(648, 'Quận 12', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(649, 'Tân Bình', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(650, 'Tân Phú', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(651, 'Thủ Đức', NULL, 1, 627, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(653, 'Càng Long', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(654, 'Cầu Kè', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(655, 'Cầu Ngang', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(656, 'Châu Thành', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(657, 'Duyên Hải', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(658, 'Duyên Hải', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(659, 'Tiểu Cần', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(660, 'Trà Cú', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(661, 'Trà Vinh', NULL, 1, 652, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(663, 'Chiêm Hóa', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(664, 'Hàm Yên', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(665, 'Lâm Bình', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(666, 'Na Hang', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(667, 'Sơn Dương', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(668, 'Tuyên Quang', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(669, 'Yên Sơn', NULL, 1, 662, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(671, 'Bến Cầu', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(672, 'Châu Thành', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(673, 'Dương Minh Châu', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(674, 'Gò Dầu', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(675, 'Hòa Thành', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(676, 'Tân Biên', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(677, 'Tân Châu', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(678, 'Tây Ninh', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(679, 'Trảng Bàng', NULL, 1, 670, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25');
INSERT INTO `districts` (`id`, `name`, `note`, `ord`, `parent`, `act`, `created_at`, `updated_at`) VALUES
(681, 'Bình Minh', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(682, 'Bình Tân', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(683, 'Long Hồ', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(684, 'Mang Thít', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(685, 'Tam Bình', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(686, 'Trà Ôn', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(687, 'Vĩnh Long', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(688, 'Vũng Liêm', NULL, 1, 680, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(690, 'Bình Xuyên', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(691, 'Lập Thạch', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(692, 'Phúc Yên', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(693, 'Sông Lô', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(694, 'Tam Dương', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(695, 'Tam Đảo', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(696, 'Vĩnh Tường', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(697, 'Vĩnh Yên', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(698, 'Yên Lạc', NULL, 1, 689, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(700, 'Lục Yên', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(701, 'Mù Căng Chải', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(702, 'Nghĩa Lộ', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(703, 'Trạm Tấu', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(704, 'Trấn Yên', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(705, 'Văn Chấn', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(706, 'Văn Yên', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(707, 'Yên Bái', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(708, 'Yên Bình', NULL, 1, 699, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(710, 'Điện Biên', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(711, 'Điện Biên Đông', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(712, 'Điện Biên Phủ', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(713, 'Mường Ảng', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(714, 'Mường Chà', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(715, 'Mường Lay', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(716, 'Mường Nhé', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(717, 'Nậm Pồ', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(718, 'Tủa Chùa', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(719, 'Tuần Giáo', NULL, 1, 709, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(721, 'Cẩm Lệ', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(722, 'Hải Châu', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(723, 'Hòa Vang', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(724, 'Hoàng Sa', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(725, 'Liên Chiểu', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(726, 'Ngũ Hành Sơn', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(727, 'Sơn Trà', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(728, 'Thanh Khê', NULL, 1, 720, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(730, 'Gia Nghĩa', NULL, 1, 729, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(731, 'Tuy Đức', NULL, 1, 729, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(733, 'Buôn Đôn', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(734, 'Buôn Hồ', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(735, 'Buôn Ma Thuột', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(736, 'Cư Kuin', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(737, 'Cư M\'gar', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(738, 'Ea H\'leo', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(739, 'Ea Kar', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(740, 'Ea Súp', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(741, 'Krông Ana', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(742, 'Krông Bông', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(743, 'Krông Búk', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(744, 'Krông Năng', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(745, 'Krông Pắk', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(746, 'Lắk', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(747, 'M\'Đrăk', NULL, 1, 732, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(749, 'Cư Jút', NULL, 1, 748, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(750, 'Đắk Glong', NULL, 1, 748, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(751, 'Đắk Mil', NULL, 1, 748, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(752, 'Đắk R\'lấp', NULL, 1, 748, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(753, 'Đăk Song', NULL, 1, 748, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(754, 'Krông Nô', NULL, 1, 748, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(756, 'Biên Hòa', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(757, 'Cẩm Mỹ', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(758, 'Định Quán', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(759, 'Long Khánh', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(760, 'Long Thành', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(761, 'Nhơn Trạch', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(762, 'Tân Phú', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(763, 'Thống Nhất', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(764, 'Trảng Bom', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(765, 'Vĩnh Cửu', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(766, 'Xuân Lộc', NULL, 1, 755, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(768, 'Cao Lãnh', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(769, 'Cao Lãnh', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(770, 'Châu Thành', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(771, 'Hồng Ngự', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(772, 'Hồng Ngự', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(773, 'Lai Vung', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(774, 'Lấp Vò', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(775, 'Sa Đéc', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(776, 'Tam Nông', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(777, 'Tân Hồng', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(778, 'Thanh Bình', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25'),
(779, 'Tháp Mười', NULL, 1, 767, 1, '2022-06-21 14:53:25', '2022-06-21 14:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL COMMENT 'Mã',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tên',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ghi chú',
  `ord` tinyint(4) DEFAULT NULL COMMENT 'Sắp xếp',
  `act` tinyint(1) DEFAULT NULL COMMENT 'Kích hoạt',
  `created_at` datetime DEFAULT NULL COMMENT 'Thời gian tạo',
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp() COMMENT 'Thời gian sửa',
  `pos_x` varchar(50) DEFAULT NULL COMMENT 'Kính tuyến',
  `pos_y` varchar(50) DEFAULT NULL COMMENT 'Vĩ tuyến'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `name`, `note`, `ord`, `act`, `created_at`, `updated_at`, `pos_x`, `pos_y`) VALUES
(1, 'Miền bắc', NULL, 1, 1, '2022-06-21 14:54:02', '2022-06-21 14:54:02', '21.0205873', '105.8081512'),
(2, 'Miền trung', NULL, 2, 1, '2022-06-21 14:54:02', '2022-06-21 14:54:02', '16.4322431', '107.3452953'),
(3, 'Miền nam', NULL, 3, 1, '2022-06-21 14:54:02', '2022-06-21 14:54:02', '11.5844862', '106.9994653');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `base_name` varchar(255) DEFAULT NULL,
  `dir` text DEFAULT NULL,
  `path` text DEFAULT NULL,
  `count` bigint(20) DEFAULT NULL,
  `ext_file` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `base_name`, `dir`, `path`, `count`, `ext_file`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(4, 'FileKhuon_00029712A_Bộ (hộp+tem+toa) O%0d%0a lymcouta_53 53 125 mm_', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/FileKhuon_00029712A_Bộ (hộp+tem+toa) O%0d%0a lymcouta_53 53 125 mm_.pdf', 0, 'pdf', 1, '2023-09-28 10:02:03', '2023-09-28 15:05:01', 10),
(5, 'Olymcouta', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/Olymcouta.cdr', 1, 'cdr', 1, '2023-09-28 10:09:25', '2023-09-28 10:27:40', 10),
(6, 'Olymcouta_1', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/Olymcouta_1.cdr', NULL, 'cdr', 1, '2023-09-28 10:27:40', '2023-09-28 10:27:40', 10),
(8, 'khuôn DH-000011A Olymcouta 65x55x130(chưa lật)', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/khuôn DH-000011A Olymcouta 65x55x130(chưa lật).pdf', NULL, 'pdf', 1, '2023-09-28 11:15:40', '2023-09-28 11:15:40', 4),
(9, 'bacillus', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/bacillus.cdr', NULL, 'cdr', 1, '2023-09-28 11:18:54', '2023-09-28 11:18:54', 10),
(10, '5', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/5.jpg', 3, 'jpg', 1, '2023-09-28 11:47:56', '2023-09-28 12:12:37', 2),
(11, '5_1', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/5_1.jpg', NULL, 'jpg', 1, '2023-09-28 12:07:52', '2023-09-28 12:07:52', 2),
(12, '5_2', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/5_2.jpg', NULL, 'jpg', 1, '2023-09-28 12:10:07', '2023-09-28 12:10:07', 1),
(13, '5_3', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/5_3.jpg', NULL, 'jpg', 1, '2023-09-28 12:12:37', '2023-09-28 12:12:37', 1),
(14, 'FileKhuon_00027665A_bộ ( hộp+toa) thym_0d_0a oglucan 2 loại_130 65 110_', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/FileKhuon_00027665A_bộ ( hộp+toa) thym_0d_0a oglucan 2 loại_130 65 110_.pdf', NULL, 'pdf', 1, '2023-09-28 14:02:56', '2023-09-28 14:02:56', 4),
(15, 'THYMO GLUCAN', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/THYMO GLUCAN.ai', NULL, 'ai', 1, '2023-09-28 14:14:58', '2023-09-28 14:14:58', 3),
(16, 'THYMO GLUCAN CV', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/THYMO GLUCAN CV.ai', NULL, 'ai', 1, '2023-09-28 14:15:09', '2023-09-28 14:15:09', 3),
(22, 'khuôn DH-000012A Bacilluss Claussi(chưa lật)', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/khuôn DH-000012A Bacilluss Claussi(chưa lật).pdf', 1, 'pdf', 1, '2023-09-28 15:13:08', '2023-09-28 15:20:40', 4),
(23, 'khuon 30633  túi Eva Estrogen ( chưa lật )', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/khuon 30633  túi Eva Estrogen ( chưa lật ).pdf', NULL, 'pdf', 1, '2023-09-28 15:18:05', '2023-09-28 15:18:05', 4),
(24, 'khuôn DH-000012A Bacilluss Claussi(chưa lật)_1', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/khuôn DH-000012A Bacilluss Claussi(chưa lật)_1.pdf', NULL, 'pdf', 1, '2023-09-28 15:20:40', '2023-09-28 15:20:40', 4),
(25, 'UP FILE', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/UP FILE.jpg', NULL, 'jpg', 1, '2023-09-28 15:21:47', '2023-09-28 15:21:47', 4),
(26, 'OLYM COUTA', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/OLYM COUTA.ai', NULL, 'ai', 1, '2023-09-28 15:27:10', '2023-09-28 15:27:10', 3),
(27, 'OLYM COUTA CV', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/OLYM COUTA CV.ai', NULL, 'ai', 1, '2023-09-28 15:27:53', '2023-09-28 15:27:53', 3),
(28, 'khuôn DH-000008B Phong bao Coo Newcare 80x30x120 mm', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/khuôn DH-000008B Phong bao Coo Newcare 80x30x120 mm.pdf', NULL, 'pdf', 1, '2023-09-28 15:30:21', '2023-09-28 15:30:21', 4),
(29, 'FileKhuon_00032404A_Vỏ hộp Akennecare _0d_0a ( Hộp to)_', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/FileKhuon_00032404A_Vỏ hộp Akennecare _0d_0a ( Hộp to)_.pdf', 1, 'pdf', 1, '2023-09-28 15:32:41', '2023-09-28 15:32:56', 4),
(30, 'FileKhuon_00032404A_Vỏ hộp Akennecare _0d_0a ( Hộp to)__1', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/FileKhuon_00032404A_Vỏ hộp Akennecare _0d_0a ( Hộp to)__1.pdf', NULL, 'pdf', 1, '2023-09-28 15:32:56', '2023-09-28 15:32:56', 4),
(31, 'Bacillus Claussi', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/Bacillus Claussi.ai', 1, 'ai', 1, '2023-09-28 16:04:33', '2023-09-28 16:14:57', 3),
(32, 'Bacillus Claussi CV', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/Bacillus Claussi CV.ai', 1, 'ai', 1, '2023-09-28 16:04:53', '2023-09-28 16:15:08', 3),
(33, 'FileKhuon_00027665A_bộ ( hộp+toa) thym_0d_0a oglucan 2 loại_130 65 110_', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/FileKhuon_00027665A_bộ ( hộp+toa) thym_0d_0a oglucan 2 loại_130 65 110_.pdf', NULL, 'pdf', 1, '2023-09-28 16:08:06', '2023-09-28 16:08:06', 5),
(34, 'Bacillus Claussi_1', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/Bacillus Claussi_1.ai', NULL, 'ai', 1, '2023-09-28 16:14:57', '2023-09-28 16:14:57', 3),
(35, 'Bacillus Claussi CV_1', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/Bacillus Claussi CV_1.ai', NULL, 'ai', 1, '2023-09-28 16:15:08', '2023-09-28 16:15:08', 3),
(36, 'Túi Eva Estrogen', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/Túi Eva Estrogen.ai', NULL, 'ai', 1, '2023-09-28 16:30:50', '2023-09-28 16:30:50', 3),
(37, 'Túi Eva Estrogen CV', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/Túi Eva Estrogen CV.ai', NULL, 'ai', 1, '2023-09-28 16:30:59', '2023-09-28 16:30:59', 3),
(38, 'khuon 30633  túi Eva Estrogen ( chưa lật )', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/khuon 30633  túi Eva Estrogen ( chưa lật ).pdf', NULL, 'pdf', 1, '2023-09-28 17:17:10', '2023-09-28 17:17:10', 5),
(39, 'khuôn DH-000011A Olymcouta 65x55x130(chưa lật)', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/khuôn DH-000011A Olymcouta 65x55x130(chưa lật).pdf', 1, 'pdf', 1, '2023-09-28 17:36:03', '2023-09-28 17:36:41', 5),
(40, 'khuôn DH-000011A Olymcouta 65x55x130(chưa lật)_1', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/khuôn DH-000011A Olymcouta 65x55x130(chưa lật)_1.pdf', NULL, 'pdf', 1, '2023-09-28 17:36:41', '2023-09-28 17:36:41', 5),
(41, 'khuôn 00022305A  Bacillus Claussi(chưa lật)', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/khuôn 00022305A  Bacillus Claussi(chưa lật).pdf', NULL, 'pdf', 1, '2023-09-28 17:41:12', '2023-09-28 17:41:12', 5),
(42, 'khuôn DH-000010AHộp giấy INSUVA(chưa lật)', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/khuôn DH-000010AHộp giấy INSUVA(chưa lật).pdf', NULL, 'pdf', 1, '2023-09-28 17:58:12', '2023-09-28 17:58:12', 4),
(43, 'khuôn DH-000009A Bio Enter Clausii(chưa lật)', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/khuôn DH-000009A Bio Enter Clausii(chưa lật).pdf', NULL, 'pdf', 1, '2023-09-29 08:41:11', '2023-09-29 08:41:11', 5),
(44, 'chamcong', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/chamcong.sql', NULL, 'sql', 1, '2023-09-29 10:35:58', '2023-09-29 10:35:58', 3),
(47, 'INSUVA END', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/INSUVA END.ai', 1, 'ai', 1, '2023-09-29 13:47:56', '2023-09-29 14:49:49', 3),
(48, 'INSUVA END_1', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/INSUVA END_1.ai', NULL, 'ai', 1, '2023-09-29 14:49:49', '2023-09-29 14:49:49', 3),
(49, '7', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/7.jpg', NULL, 'jpg', 1, '2023-09-29 15:22:56', '2023-09-29 15:22:56', 1),
(50, '7', NULL, 'uploads/files/orders/rest_bill', 'uploads/files/orders/rest_bill/7.jpg', NULL, 'jpg', 1, '2023-09-29 15:24:16', '2023-09-29 15:24:16', 1),
(51, '7', NULL, 'uploads/files/products/tech_shape_file', 'uploads/files/products/tech_shape_file/7.jpg', NULL, 'jpg', 1, '2023-09-29 15:25:26', '2023-09-29 15:25:26', 4),
(52, '7', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/7.jpg', NULL, 'jpg', 1, '2023-09-29 15:27:34', '2023-09-29 15:27:34', 3),
(53, '7', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/7.jpg', NULL, 'jpg', 1, '2023-09-29 15:27:37', '2023-09-29 15:27:37', 3),
(54, '7', NULL, 'uploads/files/products/handle_shape_file', 'uploads/files/products/handle_shape_file/7.jpg', NULL, 'jpg', 1, '2023-09-29 15:28:30', '2023-09-29 15:28:30', 5),
(55, '7', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/7.jpg', 1, 'jpg', 1, '2023-09-29 15:34:48', '2023-09-29 15:37:21', 7),
(56, '7_1', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/7_1.jpg', NULL, 'jpg', 1, '2023-09-29 15:37:21', '2023-09-29 15:37:21', 7),
(57, 'INSUVA END-01', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/INSUVA END-01.png', NULL, 'png', 1, '2023-09-29 16:09:48', '2023-09-29 16:09:48', 3),
(58, 'Gotu-Regular', NULL, 'uploads/files/products/design_file', 'uploads/files/products/design_file/Gotu-Regular.ttf', NULL, 'ttf', 1, '2023-09-29 16:10:18', '2023-09-29 16:10:18', 3),
(59, 'Gotu-Regular', NULL, 'uploads/files/products/design_shape_file', 'uploads/files/products/design_shape_file/Gotu-Regular.ttf', NULL, 'ttf', 1, '2023-09-29 16:10:23', '2023-09-29 16:10:23', 3),
(60, 'Hoop moi a trung', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/Hoop moi a trung.cdr', NULL, 'cdr', 1, '2023-09-30 08:12:33', '2023-09-30 08:12:33', 1),
(61, 'dưỡng da 123 plus', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/dưỡng da 123 plus.cdr', 1, 'cdr', 1, '2023-09-30 14:13:57', '2023-09-30 14:30:08', 10),
(62, 'dưỡng da 123 plus_1', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/dưỡng da 123 plus_1.cdr', NULL, 'cdr', 1, '2023-09-30 14:30:08', '2023-09-30 14:30:08', 10),
(63, 'FileKhuon_00028600A_bộ (hộp +tem+toa) %0d%0a pregnacare_ 80 55 130 mm_', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/FileKhuon_00028600A_bộ (hộp +tem+toa) %0d%0a pregnacare_ 80 55 130 mm_.pdf', NULL, 'pdf', 1, '2023-09-30 15:22:56', '2023-09-30 15:22:56', 10),
(64, '0f29c7686f11024ac2d64c80a910fa02', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/0f29c7686f11024ac2d64c80a910fa02.jpg', 1, 'jpg', 1, '2023-09-30 19:08:48', '2023-09-30 20:23:13', 2),
(65, '0f29c7686f11024ac2d64c80a910fa02_1', NULL, 'uploads/files/products/sale_shape_file', 'uploads/files/products/sale_shape_file/0f29c7686f11024ac2d64c80a910fa02_1.jpg', NULL, 'jpg', 1, '2023-09-30 20:23:13', '2023-09-30 20:23:13', 1),
(66, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e.jpg', 7, 'jpg', 1, '2023-10-01 11:19:59', '2023-10-01 12:19:42', 1),
(67, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_1', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_1.jpg', NULL, 'jpg', 1, '2023-10-01 11:21:23', '2023-10-01 11:21:23', 1),
(68, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_2', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_2.jpg', NULL, 'jpg', 1, '2023-10-01 11:22:56', '2023-10-01 11:22:56', 1),
(69, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_3', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_3.jpg', NULL, 'jpg', 1, '2023-10-01 11:23:41', '2023-10-01 11:23:41', 1),
(70, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_4', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_4.jpg', NULL, 'jpg', 1, '2023-10-01 11:24:41', '2023-10-01 11:24:41', 1),
(71, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_5', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_5.jpg', NULL, 'jpg', 1, '2023-10-01 12:17:24', '2023-10-01 12:17:24', 1),
(72, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_6', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_6.jpg', NULL, 'jpg', 1, '2023-10-01 12:18:18', '2023-10-01 12:18:18', 1),
(73, 'z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_7', NULL, 'uploads/files/log[bill]', 'uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_7.jpg', NULL, 'jpg', 1, '2023-10-01 12:19:42', '2023-10-01 12:19:42', 1),
(80, 'MẪU 16- 2 CÁNH IN THƯỜNG', NULL, 'storages/uploads', 'storage/app/public/uploads/MẪU 16- 2 CÁNH IN THƯỜNG', 1, 'ai', 1, '2023-10-04 06:46:08', '2023-10-04 06:55:50', 1),
(81, 'MẪU 17 - CNC Cung chuc tan xuan tron canh', NULL, 'storages/uploads', 'storage/app/public/uploads/MẪU 17 - CNC Cung chuc tan xuan tron canh', NULL, 'ai', 1, '2023-10-04 06:53:55', '2023-10-04 06:53:55', 4),
(82, 'MẪU 16- 2 CÁNH IN THƯỜNG(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/MẪU 16- 2 CÁNH IN THƯỜNG(1)', NULL, 'ai', 1, '2023-10-04 06:55:52', '2023-10-04 06:55:52', 3),
(83, 'MẪU 17 - CNC', NULL, 'storages/uploads', 'storage/app/public/uploads/MẪU 17 - CNC', 1, 'pdf', 1, '2023-10-04 06:56:01', '2023-10-04 06:56:42', 3),
(84, 'MẪU 17 - CNC(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/MẪU 17 - CNC(1)', NULL, 'pdf', 1, '2023-10-04 06:56:42', '2023-10-04 06:56:42', 5),
(85, '1 THUYỀN THẲNG 2024 ok', NULL, 'storages/uploads', 'storage/app/public/uploads/1 THUYỀN THẲNG 2024 ok', 1, 'cdr', 1, '2023-10-04 08:49:43', '2023-10-04 10:18:06', 1),
(86, '1 THUYỀN THẲNG 2024 ok(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/1 THUYỀN THẲNG 2024 ok(1)', NULL, 'cdr', 1, '2023-10-04 10:18:06', '2023-10-04 10:18:06', 1),
(87, 'CỠ 1 - Nhỏ nhất', NULL, 'storages/uploads', 'storage/app/public/uploads/CỠ 1 - Nhỏ nhất', NULL, 'cdr', 1, '2023-10-05 21:39:57', '2023-10-05 21:39:57', 1),
(88, 'CỠ 2 HÌNH CÁI QUẠT', NULL, 'storages/uploads', 'storage/app/public/uploads/CỠ 2 HÌNH CÁI QUẠT', NULL, 'cdr', 1, '2023-10-05 21:54:02', '2023-10-05 21:54:02', 1),
(89, 'z4740902657631_c709f1fad82bab43b1410bc080d11b3e309', NULL, 'storages/uploads', 'storage/app/public/uploads/z4740902657631_c709f1fad82bab43b1410bc080d11b3e309', NULL, 'jpg', 1, '2023-10-06 09:00:22', '2023-10-06 09:00:22', 7),
(90, 'z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10', NULL, 'storages/uploads', 'storage/app/public/uploads/z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10', 1, 'jpg', 1, '2023-10-06 09:03:14', '2023-10-06 09:04:54', 7),
(91, 'z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10(1)', NULL, 'jpg', 1, '2023-10-06 09:04:54', '2023-10-06 09:04:54', 7),
(92, 'z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10', NULL, 'storages/uploads', 'storage/app/public/uploads/z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10', 2, 'jpg', 1, '2023-10-06 09:06:32', '2023-10-06 09:29:47', 7),
(93, 'z4757706903407_2b6e350b72256de66a8dd153f82eaf83.9.9', NULL, 'storages/uploads', 'storage/app/public/uploads/z4757706903407_2b6e350b72256de66a8dd153f82eaf83.9.9', NULL, 'jpg', 1, '2023-10-06 09:18:40', '2023-10-06 09:18:40', 7),
(94, 'z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10(1)', NULL, 'jpg', 1, '2023-10-06 09:23:56', '2023-10-06 09:23:56', 7),
(95, 'z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10(2)', NULL, 'storages/uploads', 'storage/app/public/uploads/z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10(2)', NULL, 'jpg', 1, '2023-10-06 09:29:47', '2023-10-06 09:29:47', 7),
(96, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999', 7, 'cdr', 1, '2023-10-07 07:19:13', '2023-10-21 08:08:02', 1),
(97, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(1)', NULL, 'cdr', 1, '2023-10-07 08:07:00', '2023-10-07 08:07:00', 4),
(98, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(2)', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(2)', NULL, 'cdr', 1, '2023-10-07 08:07:33', '2023-10-07 08:07:33', 4),
(99, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(3)', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(3)', NULL, 'cdr', 1, '2023-10-07 08:08:46', '2023-10-07 08:08:46', 4),
(100, 'mẫu TD-C101C', NULL, 'storages/uploads', 'storage/app/public/uploads/mẫu TD-C101C', 1, 'pdf', 1, '2023-10-07 08:11:28', '2023-10-07 08:11:46', 3),
(101, 'mẫu TD-C101C(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/mẫu TD-C101C(1)', NULL, 'pdf', 1, '2023-10-07 08:11:47', '2023-10-07 08:11:47', 3),
(102, 'mẫu TD-C101B', NULL, 'storages/uploads', 'storage/app/public/uploads/mẫu TD-C101B', 1, 'pdf', 1, '2023-10-07 08:12:04', '2023-10-07 08:12:14', 3),
(103, 'mẫu TD-C101B(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/mẫu TD-C101B(1)', NULL, 'pdf', 1, '2023-10-07 08:12:14', '2023-10-07 08:12:14', 3),
(104, 'mẫu TD-C101A', NULL, 'storages/uploads', 'storage/app/public/uploads/mẫu TD-C101A', 1, 'pdf', 1, '2023-10-07 08:12:37', '2023-10-07 08:12:51', 3),
(105, 'mẫu TD-C101A(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/mẫu TD-C101A(1)', NULL, 'pdf', 1, '2023-10-07 08:12:51', '2023-10-07 08:12:51', 3),
(106, 'khuôn ép nhũ mã 01', NULL, 'storages/uploads', 'storage/app/public/uploads/khuôn ép nhũ mã 01', 2, 'pdf', 1, '2023-10-07 08:13:39', '2023-10-07 08:14:17', 5),
(107, 'khuôn ép nhũ mã 01(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/khuôn ép nhũ mã 01(1)', NULL, 'pdf', 1, '2023-10-07 08:14:00', '2023-10-07 08:14:00', 5),
(108, 'khuôn ép nhũ mã 01(2)', NULL, 'storages/uploads', 'storage/app/public/uploads/khuôn ép nhũ mã 01(2)', NULL, 'pdf', 1, '2023-10-07 08:14:17', '2023-10-07 08:14:17', 5),
(109, 'khuôn DH-000010AHộp giấy INSUVA(chưa lật)', NULL, 'storages/uploads', 'storage/app/public/uploads/khuôn DH-000010AHộp giấy INSUVA(chưa lật)', NULL, 'pdf', 1, '2023-10-07 08:15:11', '2023-10-07 08:15:11', 5),
(110, 'z4760701989751_6f54d1003e109c981cf6a00cea345769mang505', NULL, 'storages/uploads', 'storage/app/public/uploads/z4760701989751_6f54d1003e109c981cf6a00cea345769mang505', 1, 'jpg', 1, '2023-10-07 08:27:51', '2023-10-07 08:49:00', 7),
(111, 'z4760701989751_6f54d1003e109c981cf6a00cea345769mang505(1)', NULL, 'storages/uploads', 'storage/app/public/uploads/z4760701989751_6f54d1003e109c981cf6a00cea345769mang505(1)', NULL, 'jpg', 1, '2023-10-07 08:49:00', '2023-10-07 08:49:00', 7),
(112, 'ảnh 1', NULL, 'storages/uploads', 'storage/app/public/uploads/ảnh 1.jpg', NULL, 'jpg', 1, '2023-10-08 07:07:48', '2023-10-08 07:07:48', 1),
(113, 'nova', NULL, 'storages/uploads', 'storage/app/public/uploads/nova.cdr', NULL, 'cdr', 1, '2023-10-09 15:04:18', '2023-10-09 15:04:18', 10),
(114, '1 CARTON ĐÁY CHAI RƯỢU 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/1 CARTON ĐÁY CHAI RƯỢU 2024.cdr', 5, 'cdr', 1, '2023-10-14 12:56:34', '2023-10-14 16:07:33', 10),
(115, '1 CARTON ĐÁY CHAI RƯỢU 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/1 CARTON ĐÁY CHAI RƯỢU 2024(1).cdr', NULL, 'cdr', 1, '2023-10-14 13:11:05', '2023-10-14 13:11:05', 1),
(116, '1 CARTON ĐÁY CHAI RƯỢU 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/1 CARTON ĐÁY CHAI RƯỢU 2024(2).cdr', NULL, 'cdr', 1, '2023-10-14 15:36:14', '2023-10-14 15:36:14', 1),
(117, '1 CARTON ĐÁY CHAI RƯỢU 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/1 CARTON ĐÁY CHAI RƯỢU 2024(3).cdr', NULL, 'cdr', 1, '2023-10-14 16:01:25', '2023-10-14 16:01:25', 1),
(118, '1 CARTON ĐÁY CHAI RƯỢU 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/1 CARTON ĐÁY CHAI RƯỢU 2024(4).cdr', NULL, 'cdr', 1, '2023-10-14 16:03:26', '2023-10-14 16:03:26', 1),
(119, '1 CARTON ĐÁY CHAI RƯỢU 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/1 CARTON ĐÁY CHAI RƯỢU 2024(5).cdr', NULL, 'cdr', 1, '2023-10-14 16:07:33', '2023-10-14 16:07:33', 1),
(120, '2 CỔ CHAI RƯỢU', NULL, 'storages/uploads', 'storage/app/public/uploads/2 CỔ CHAI RƯỢU.cdr', NULL, 'cdr', 1, '2023-10-14 16:15:23', '2023-10-14 16:15:23', 1),
(121, 'Nền màu xanh', NULL, 'storages/uploads', 'storage/app/public/uploads/Nền màu xanh.jpg', 3, 'jpg', 1, '2023-10-18 06:08:08', '2023-10-18 07:15:59', 1),
(122, 'Nền màu xanh', NULL, 'storages/uploads', 'storage/app/public/uploads/Nền màu xanh(1).jpg', NULL, 'jpg', 1, '2023-10-18 06:52:37', '2023-10-18 06:52:37', 1),
(123, 'Nền màu xanh', NULL, 'storages/uploads', 'storage/app/public/uploads/Nền màu xanh(2).jpg', NULL, 'jpg', 1, '2023-10-18 07:07:34', '2023-10-18 07:07:34', 1),
(124, 'Nền màu xanh', NULL, 'storages/uploads', 'storage/app/public/uploads/Nền màu xanh(3).jpg', NULL, 'jpg', 1, '2023-10-18 07:15:59', '2023-10-18 07:15:59', 1),
(125, 'A5-A9', NULL, 'storages/uploads', 'storage/app/public/uploads/A5-A9.cdr', 1, 'cdr', 1, '2023-10-21 06:31:04', '2023-10-21 06:49:22', 1),
(126, 'A5-A9', NULL, 'storages/uploads', 'storage/app/public/uploads/A5-A9(1).cdr', NULL, 'cdr', 1, '2023-10-21 06:49:22', '2023-10-21 06:49:22', 1),
(127, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(4).cdr', NULL, 'cdr', 1, '2023-10-21 07:40:56', '2023-10-21 07:40:56', 1),
(128, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(5).cdr', NULL, 'cdr', 1, '2023-10-21 07:52:13', '2023-10-21 07:52:13', 1),
(129, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(6).cdr', NULL, 'cdr', 1, '2023-10-21 07:58:41', '2023-10-21 07:58:41', 1),
(130, '1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999', NULL, 'storages/uploads', 'storage/app/public/uploads/1 TÚI QUÀ TẾT KT chuẩn 2024 3 loại CHUẨN NHẤT 9999(7).cdr', NULL, 'cdr', 1, '2023-10-21 08:08:02', '2023-10-21 08:08:02', 1),
(131, 'Hộp cứng Bigfam', NULL, 'storages/uploads', 'storage/app/public/uploads/Hộp cứng Bigfam.cdr', NULL, 'cdr', 1, '2023-10-21 14:30:41', '2023-10-21 14:30:41', 1),
(132, 'khăn mat', NULL, 'storages/uploads', 'storage/app/public/uploads/khăn mat.pdf', NULL, 'pdf', 1, '2023-10-25 08:48:52', '2023-10-25 08:48:52', 1),
(133, 'Cắt mẫu 3 khay định hình', NULL, 'storages/uploads', 'storage/app/public/uploads/Cắt mẫu 3 khay định hình.cdr', NULL, 'cdr', 1, '2023-10-26 09:58:57', '2023-10-26 09:58:57', 1),
(134, 'Tinh giá', NULL, 'storages/uploads', 'storage/app/public/uploads/Tinh giá.cdr', NULL, 'cdr', 1, '2023-10-31 09:28:32', '2023-10-31 09:28:32', 1),
(135, 'HQT cặp xách 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/HQT cặp xách 2024.cdr', NULL, 'cdr', 1, '2023-11-01 16:11:21', '2023-11-01 16:11:21', 1),
(136, 'HQT 36x36 cao cấp 2024(2)', NULL, 'storages/uploads', 'storage/app/public/uploads/HQT 36x36 cao cấp 2024(2).cdr', NULL, 'cdr', 1, '2023-11-01 16:28:07', '2023-11-01 16:28:07', 1),
(137, 'HQT 36x42 cao cấp 2024', NULL, 'storages/uploads', 'storage/app/public/uploads/HQT 36x42 cao cấp 2024.cdr', NULL, 'cdr', 1, '2023-11-01 16:41:28', '2023-11-01 16:41:28', 1),
(138, 'Khuôn ĐỨC HNA', NULL, 'storages/uploads', 'storage/app/public/uploads/Khuôn ĐỨC HNA.cdr', NULL, 'cdr', 1, '2023-11-02 08:43:16', '2023-11-02 08:43:16', 1),
(139, 'Screenshot (34)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (34).png', NULL, 'png', 1, '2023-11-18 08:05:50', '2023-11-18 08:05:50', 18),
(140, 'Screenshot (36)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (36).png', 1, 'png', 1, '2023-11-21 11:20:15', '2023-11-21 17:47:17', 18),
(141, 'HỘP CỨNG 6 BÁNH CÓ LOGO TD-01', NULL, 'storages/uploads', 'storage/app/public/uploads/HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg', NULL, 'jpg', 1, '2023-11-21 11:38:22', '2023-11-21 11:38:22', 18),
(142, 'Screenshot (36)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (36)(1).png', NULL, 'png', 1, '2023-11-21 17:47:17', '2023-11-21 17:47:17', 18),
(143, 'sona', NULL, 'storages/uploads', 'storage/app/public/uploads/sona.cdr', NULL, 'cdr', 1, '2023-11-24 09:33:53', '2023-11-24 09:33:53', 1),
(144, 'Screenshot (1)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (1).png', 5, 'png', 1, '2023-12-09 09:42:25', '2023-12-09 11:46:08', 16),
(145, 'Screenshot (1)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (1)(1).png', NULL, 'png', 1, '2023-12-09 09:43:33', '2023-12-09 09:43:33', 4),
(146, 'Screenshot (1)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (1)(2).png', NULL, 'png', 1, '2023-12-09 09:44:42', '2023-12-09 09:44:42', 3),
(147, 'Screenshot (2)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (2).png', NULL, 'png', 1, '2023-12-09 09:44:46', '2023-12-09 09:44:46', 3),
(148, 'Screenshot (1)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (1)(3).png', NULL, 'png', 1, '2023-12-09 09:48:14', '2023-12-09 09:48:14', 5),
(149, 'Screenshot (1)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (1)(4).png', NULL, 'png', 1, '2023-12-09 10:16:48', '2023-12-09 10:16:48', 16),
(150, 'Screenshot (1)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (1)(5).png', NULL, 'png', 1, '2023-12-09 11:46:08', '2023-12-09 11:46:08', 18),
(151, 'Screenshot (33)', NULL, 'storages/uploads', 'storage/app/public/uploads/Screenshot (33).png', NULL, 'png', 1, '2023-12-12 21:49:23', '2023-12-12 21:49:23', 16),
(152, 'SỐ 1A', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 1A.pdf', NULL, 'pdf', 1, '2024-02-21 10:46:23', '2024-02-21 10:46:23', 1),
(153, 'SỐ 2a', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2a.pdf', 2, 'pdf', 1, '2024-02-21 11:46:15', '2024-02-21 14:29:53', 1),
(154, 'TÚI SỐ 2 Kich thước chuẩn 2023', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI SỐ 2 Kich thước chuẩn 2023.pdf', 2, 'pdf', 1, '2024-02-21 12:59:49', '2024-02-21 13:09:28', 1),
(155, 'TÚI SỐ 2 Kich thước chuẩn 2023', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI SỐ 2 Kich thước chuẩn 2023(1).pdf', NULL, 'pdf', 1, '2024-02-21 13:01:52', '2024-02-21 13:01:52', 1),
(156, 'TÚI SỐ 2 Kich thước chuẩn 2023', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI SỐ 2 Kich thước chuẩn 2023(2).pdf', NULL, 'pdf', 1, '2024-02-21 13:09:29', '2024-02-21 13:09:29', 1),
(157, 'SỐ 2a', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2a(1).pdf', NULL, 'pdf', 1, '2024-02-21 14:13:14', '2024-02-21 14:13:14', 1),
(158, 'SỐ 2a', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2a(2).pdf', NULL, 'pdf', 1, '2024-02-21 14:29:53', '2024-02-21 14:29:53', 1),
(159, 'TÚI SỐ 2 Kich thước chuẩn 2023 ( sửa ok )', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI SỐ 2 Kich thước chuẩn 2023 ( sửa ok ).pdf', NULL, 'pdf', 1, '2024-02-21 15:36:43', '2024-02-21 15:36:43', 1),
(160, 'SỐ 2B', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2B.pdf', NULL, 'pdf', 1, '2024-02-21 15:39:09', '2024-02-21 15:39:09', 1),
(161, 'TÚI CHỮ A - 01', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI CHỮ A - 01.pdf', NULL, 'pdf', 1, '2024-02-21 16:02:43', '2024-02-21 16:02:43', 1),
(162, 'TÚI CHỮ A - 02', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI CHỮ A - 02.pdf', NULL, 'pdf', 1, '2024-02-21 16:13:36', '2024-02-21 16:13:36', 1),
(163, 'TÚI CHỮ A - 03', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI CHỮ A - 03.pdf', NULL, 'pdf', 1, '2024-02-21 16:20:33', '2024-02-21 16:20:33', 1),
(164, 'TÚI CHỮ A - 03 chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI CHỮ A - 03 chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 16:31:37', '2024-02-21 16:31:37', 1),
(165, 'TÚI CHỮ A - 02 chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI CHỮ A - 02 chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 16:32:14', '2024-02-21 16:32:14', 1),
(166, 'TÚI CHỮ A - 01 chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/TÚI CHỮ A - 01 chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 16:32:49', '2024-02-21 16:32:49', 1),
(167, 'SỐ 2a Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2a Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 16:48:02', '2024-02-21 16:48:02', 1),
(168, 'SỐ 2B  chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2B  chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 16:48:32', '2024-02-21 16:48:32', 1),
(169, 'SỐ 2C  chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 2C  chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 16:49:04', '2024-02-21 16:49:04', 1),
(170, 'SỐ 3A Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 3A Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:05:05', '2024-02-21 17:05:05', 1),
(171, 'SỐ 3C Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 3C Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:10:17', '2024-02-21 17:10:17', 1),
(172, 'SỐ 4A Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 4A Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:43:11', '2024-02-21 17:43:11', 1),
(173, 'SỐ 4B Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 4B Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:45:00', '2024-02-21 17:45:00', 1),
(174, 'SỐ 4C Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 4C Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:46:08', '2024-02-21 17:46:08', 1),
(175, 'SỐ 5A Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 5A Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:47:06', '2024-02-21 17:47:06', 1),
(176, 'SỐ 5B Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 5B Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:48:53', '2024-02-21 17:48:53', 1),
(177, 'SỐ 5C Chuẩn', NULL, 'storages/uploads', 'storage/app/public/uploads/SỐ 5C Chuẩn.pdf', NULL, 'pdf', 1, '2024-02-21 17:50:22', '2024-02-21 17:50:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fill_finishes`
--

CREATE TABLE `fill_finishes` (
  `id` bigint(20) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `product_qty` varchar(20) DEFAULT NULL,
  `fill` text DEFAULT NULL,
  `finish` text DEFAULT NULL,
  `magnet` text DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_cost` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `product` int(10) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `fill_finishes`
--

INSERT INTO `fill_finishes` (`id`, `code`, `product_qty`, `fill`, `finish`, `magnet`, `note`, `status`, `total_cost`, `created_at`, `updated_at`, `product`, `act`, `created_by`) VALUES
(62, NULL, '3000', '{\"stage\":[{\"length\":null,\"width\":null,\"machine\":null,\"qttv_price\":0,\"cost\":0}],\"ext_price\":\"25000\",\"qty_pro\":3000,\"handle_qty\":0,\"fill_cost\":0,\"act\":1,\"total\":75000000}', '{\"ext_price\":\"0\",\"qty_pro\":3000,\"handle_qty\":0,\"finish_cost\":0,\"act\":0,\"total\":0}', '{\"type\":null,\"qty\":null,\"qttv_price\":0,\"magnet_perc\":1.05,\"qty_pro\":3000,\"act\":0,\"total\":0}', NULL, NULL, 75000000, '2024-01-03 05:55:53', '2024-01-03 05:55:53', 94, 1, 16),
(68, NULL, '1000', '{\"stage\":[{\"length\":null,\"width\":null,\"machine\":null,\"qttv_price\":0,\"cost\":0}],\"ext_price\":\"25000\",\"qty_pro\":1000,\"handle_qty\":0,\"fill_cost\":0,\"act\":1,\"total\":25000000}', '{\"ext_price\":\"0\",\"qty_pro\":1000,\"handle_qty\":0,\"finish_cost\":0,\"act\":0,\"total\":0}', '{\"type\":null,\"qty\":null,\"qttv_price\":0,\"magnet_perc\":1.05,\"qty_pro\":1000,\"act\":0,\"total\":0}', NULL, NULL, 25000000, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 106, 1, 16),
(69, NULL, '1000', '{\"stage\":[{\"length\":null,\"width\":null,\"machine\":null,\"qttv_price\":0,\"cost\":0}],\"ext_price\":\"25000\",\"qty_pro\":1000,\"handle_qty\":0,\"fill_cost\":0,\"act\":1,\"total\":25000000}', '{\"ext_price\":\"0\",\"qty_pro\":1000,\"handle_qty\":0,\"finish_cost\":0,\"act\":0,\"total\":0}', '{\"type\":null,\"qty\":null,\"qttv_price\":0,\"magnet_perc\":1.05,\"qty_pro\":1000,\"act\":0,\"total\":0}', NULL, NULL, 25000000, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 107, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `materals`
--

CREATE TABLE `materals` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `price` varchar(20) NOT NULL,
  `type` varchar(20) DEFAULT NULL COMMENT 'Cha',
  `default` tinyint(4) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `ord` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `materals`
--

INSERT INTO `materals` (`id`, `name`, `price`, `type`, `default`, `note`, `act`, `created_at`, `updated_at`, `created_by`, `ord`) VALUES
(1, 'Màng bạc', '0.36', 'metalai', 1, '0.36 = 3600đ/m2', 1, '2023-07-17 20:26:21', '2023-11-01 16:10:10', 0, NULL),
(2, 'Màng vàng', '0.4', 'metalai', 1, '0.38 = 3800đ/m2', 1, '2023-07-17 20:26:21', '2023-09-14 19:54:46', 0, NULL),
(3, 'IN MỰC PHỦ MỜ', '0.08', 'cover', 1, '0.08 = 800đ/m2', 1, '2023-07-17 20:26:21', '2023-09-16 01:59:46', 0, NULL),
(8, 'Cán bóng', '0.23', 'nilon', 0, '0.23 = 2300đ/m2', 1, '2023-07-17 20:26:21', '2023-08-04 13:22:31', 0, NULL),
(9, 'Cán mờ', '0.25', 'nilon', 0, '0.25 = 2500đ/m2', 1, '2023-07-17 20:26:21', '2023-08-04 13:22:31', 0, NULL),
(10, 'Mực bóng', '0', 'uv', 1, 'CT này không áp dụng tính khách hàng, chỉ áp dụng đo lường vật tư', 1, '2023-07-17 20:26:21', '2023-09-19 01:12:09', 0, NULL),
(11, 'Mực sần cát', '0', 'uv', 1, 'CT này không áp dụng tính khách hàng, chỉ áp dụng đo lường vật tư', 1, '2023-07-17 20:26:21', '2023-09-19 01:12:04', 0, NULL),
(12, 'GIẤY COUCHES', '0.00213', 'paper', 0, '0.0020 = 20triệu/ tấn', 1, '2023-07-17 20:26:21', '2024-02-21 13:24:17', 0, NULL),
(13, 'GIẤY IVOLRY', '0.00195', 'paper', 0, '0.00185 = 19.5 triệu/ tấn', 1, '2023-07-17 20:26:21', '2024-02-21 13:25:12', 0, NULL),
(14, 'GIẤY DUPLEX', '0.0015', 'paper', 0, '0.00150 = 15 triệu/ tấn', 1, '2023-07-17 20:26:21', '2023-08-08 14:47:51', 0, NULL),
(15, 'GIẤY OFFSET', '0.0028', 'paper', 0, '0.0024 = 24 triệu/ tấn', 1, '2023-07-17 20:26:21', '2023-08-08 14:55:23', 0, NULL),
(16, 'CHI PHÍ BỒI NẮP', '0.6', 'fill', 0, '0.6 = 6000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-08-14 17:23:12', '2023-09-30 20:11:27', 0, NULL),
(17, 'Nam châm nhỏ', '500', 'magnet', 0, '0', 1, '2023-08-14 12:39:31', '2023-09-16 02:53:39', 1, NULL),
(18, 'CHI PHÍ BỒI ĐÁY', '0.6', 'fill', 0, '0.6 = 6000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-08-14 17:23:49', '2023-09-30 20:11:01', 0, NULL),
(19, 'CHI PHÍ BỒI THÀNH', '0.6', 'fill', 0, '0.6 = 6000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-07-20 10:21:00', '2023-09-30 20:11:12', 1, NULL),
(20, 'CHI PHÍ BỒI BÌA', '0.6', 'fill', 0, '0.6 = 6000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-07-20 10:21:00', '2023-09-30 20:10:50', 1, NULL),
(21, 'CHI PHÍ BỒI MẶT THÉP', '0.6', 'fill', 0, '0.6 = 6000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-07-20 10:21:00', '2023-09-30 20:10:39', 1, NULL),
(23, 'CHI PHÍ KHAY ĐỊNH HÌNH', '0.6', 'fill', 0, '0.3 = 3000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-07-20 10:21:00', '2023-09-30 20:10:09', 1, NULL),
(24, 'CHI PHÍ BỒI MẶT PHẲNG', '0.6', 'fill', 0, '0.3 = 3000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-07-20 10:21:00', '2023-09-30 20:10:03', 1, NULL),
(25, 'ĐỀ CAN NHUNG - LÔNG NGẮN', '2.6', 'decal', NULL, 'Đề can nhung lông ngắn 23.000đ/m2\r\nTính công xả + bồi là 3000đ/m2\r\nTổng = 26.000đ/m2\r\nQuy đổi 2.6', 1, '2023-08-14 17:50:37', '2023-09-16 01:32:19', 1, NULL),
(26, 'VẢI LỤA THƯỜNG', '6', 'silk', 0, '1.5m = 8000đ/đ\r\n1m = 6000đ cả công cắt lụa', 1, '2023-08-14 17:51:05', '2023-09-16 01:57:28', 1, NULL),
(27, 'CHI PHÍ BỒI PHỤ KIỆN', '0.6', 'fill', NULL, '0.3 = 3000đ/m2 keo bồi ( CT dành cho tính chi phí keo bồi )', 1, '2023-09-15 05:11:08', '2023-09-30 20:09:55', 1, NULL),
(28, 'ĐỀ CAN NHUNG - LÔNG DÀI', '3.3', 'decal', NULL, 'Đề can nhung lông dài 30.000đ/m2\r\nTính công xả + bồi là 3000đ/m2\r\nTổng = 33.000đ/m2\r\nQuy đổi 3.3', 1, '2023-09-16 01:33:50', '2023-09-16 01:33:50', 1, NULL),
(29, 'IN MỰC PHỦ BÓNG', '0.08', 'cover', 1, '0.08 = 800đ/m2', 1, '2023-09-16 01:59:37', '2023-09-16 01:59:37', 1, NULL),
(30, 'PHỦ BÓNG GỐC DẦU - CTY NHẬT SƠN', '1.5', 'cover', 1, '1.5 = 1500đ/m2', 1, '2023-09-16 02:00:33', '2023-09-16 02:00:33', 1, NULL),
(31, 'Nam châm nhỡ', '800', 'magnet', 0, '0', 1, '2023-09-16 02:54:18', '2023-09-16 02:54:18', 1, NULL),
(32, 'Nam châm to', '1200', 'magnet', 0, '0', 1, '2023-09-16 02:54:37', '2023-09-16 02:54:37', 1, NULL),
(33, 'GIẤY MỸ THUẬT ĐEN', '0.005', 'paper', 0, '0.005 = 50 triệu/ tấn', 1, '2023-09-19 01:14:55', '2023-09-19 01:27:48', 1, NULL),
(34, 'ĐỀ CAN GIẤY', '0.0033', 'paper', 0, '0.0032 = 32 triệu/ tấn', 1, '2023-09-26 18:05:21', '2023-10-04 06:40:53', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `n_detail_tables`
--

CREATE TABLE `n_detail_tables` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `attr` text DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `table_map` varchar(100) DEFAULT NULL,
  `view` tinyint(4) DEFAULT NULL,
  `insert` tinyint(4) DEFAULT NULL,
  `update` tinyint(4) DEFAULT NULL,
  `search` tinyint(4) DEFAULT NULL,
  `parent` int(10) DEFAULT NULL,
  `other_data` text DEFAULT NULL,
  `region` int(10) DEFAULT NULL,
  `ord` int(10) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_detail_tables`
--

INSERT INTO `n_detail_tables` (`id`, `name`, `attr`, `note`, `type`, `table_map`, `view`, `insert`, `update`, `search`, `parent`, `other_data`, `region`, `ord`, `act`, `created_at`, `updated_at`) VALUES
(1, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã KH', 'text', 'customers', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(2, 'name', '{\"required\":1}', 'Tên KH/Cty', 'text', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(3, 'contacter', '{\"required\":1}', 'Người liên hệ', 'text', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(4, 'phone', '{\"required\":1}', 'SĐT di động', 'text', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(5, 'telephone', '', 'SĐT cố định', 'text', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(6, 'email', '{\"required\":1}', 'Email', 'text', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(7, 'address', '{\"required\":1}', 'Địa chỉ', 'text', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(8, 'city', '{\"required\":1}', 'Tỉnh/TP', 'linking', 'customers', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"citys\",\r\n		\"where\":{\"parent\":0}\r\n	}\r\n}', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(9, 'tax_code', '', 'Mã số thuế', 'text', 'customers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-07 23:45:08', '2023-04-07 23:45:08'),
(10, 'status', '{\"required\":1}', 'Trạng thái', 'select', 'customers', 1, 1, 1, 1, 0, '{\"data\":{\n		\"options\":{\"\":\"Loại KH\", \"1\":\"KH cũ\", \"2\":\"KH mới\"}\n	}\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-10-20 18:31:37'),
(11, 'note', '', 'Ghi chú', 'textarea', 'customers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-08 00:05:12', '2023-04-08 00:05:12'),
(12, 'act', '', 'Kích hoạt', 'checkbox', 'customers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2023-04-08 00:05:47'),
(13, 'created_by', NULL, 'Phụ trách', 'linking', 'customers', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2023-04-08 00:08:00'),
(14, 'created_at', NULL, 'Ngày tạo', 'datetime', 'customers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:08:00', '2023-04-08 00:08:00'),
(15, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'customers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2023-04-08 00:12:15'),
(16, 'name', '{\"required\":1}', 'Tên thiết bị', 'text', 'devices', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:51:39', '2023-04-08 00:51:39'),
(17, 'model_price', '{\"required\":1}', 'Chi phí khuôn', 'text', 'devices', 1, 1, 1, 0, 0, '', 1, 1, 1, '2023-04-08 01:02:39', '2023-07-27 23:50:56'),
(18, '', '', 'ĐG chỉnh máy', 'group', 'devices', 1, 0, 0, 0, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2023-04-08 00:51:39'),
(19, '', '', 'ĐG lượt', 'group', 'devices', 1, 0, 0, 0, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2023-04-08 00:51:39'),
(20, 'shape_price', '{\"required\":1}', 'Khách', 'text', 'devices', 1, 1, 1, 0, 18, '', 12, 0, 1, '2023-04-27 04:39:05', '2023-07-26 09:34:14'),
(21, 'w_shape_price', '{\"required\":1}', 'Thợ', 'text', 'devices', 1, 1, 1, 0, 18, '', 12, 0, 1, '2023-04-27 04:39:20', '2023-07-26 09:34:12'),
(22, 'work_price', '{\"required\":1}', 'Khách', 'text', 'devices', 1, 1, 1, 0, 19, '', 13, 0, 1, '2023-04-27 04:39:22', '2023-07-26 09:34:12'),
(23, 'w_work_price', '{\"required\":1}', 'Thợ', 'text', 'devices', 1, 1, 1, 0, 19, '', 13, 0, 1, '2023-04-27 04:39:26', '2023-07-26 09:34:11'),
(24, 'act', '', 'Kích hoạt', 'checkbox', 'devices', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 10:39:49', '2023-07-27 23:50:20'),
(25, 'created_at', '', 'Ngày tạo', 'datetime', 'devices', 1, 1, 1, 1, 0, '', 1, 3, 1, '2023-04-30 10:39:49', '2023-07-27 23:50:18'),
(26, 'updated_at', '', 'Ngày sửa', 'datetime', 'devices', 0, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 10:45:00', '2023-07-27 23:51:00'),
(27, 'seri', '{\"disable_field\":1,\"required\":1}', 'Mã BG', 'text', 'quotes', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(28, 'customer_id', NULL, 'Khách hàng', 'linking', 'quotes', 1, 1, 1, 1, 0, '{\n	\"config\":{\n		\"search\":1,\n		\"except_linking\":1\n	},\n	\"data\":{\n		\"table\":\"customers\"\n	}\n}', 1, 0, 1, '2023-04-23 18:20:42', '2023-10-07 11:08:58'),
(29, 'city', '{\"required\":1}', 'Tỉnh/TP', 'linking', 'quotes', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"citys\",\r\n		\"where\":{\"parent\":0}\r\n	}\r\n}', 1, 1, 1, '2023-04-30 11:00:08', '2023-04-30 11:00:08'),
(30, 'profit', '{\"required\":1, \"type_input\":\"price\"}', 'Lợi nhuận', 'text', 'quotes', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-08-16 17:01:46'),
(31, 'ship_price', '{\"required\":1, \"type_input\":\"price\"}', 'Phí Ship', 'text', 'quotes', 1, 1, 1, 0, 0, '', 1, 2, 1, '2023-04-30 11:00:13', '2023-08-16 17:01:32'),
(32, 'total_amount', '{\"required\":1, \"type_input\":\"price\"}', 'Giá trị BG', 'text', 'quotes', 1, 1, 1, 0, 0, '', 1, 4, 1, '2023-04-30 11:00:33', '2023-08-16 17:01:39'),
(33, 'status', '{\"required\":1}', 'Trạng thái', 'select', 'quotes', 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\"\":\"Trạng thái\", \"not_accepted\":\"Chưa duyệt\", \"accepted\":\"Đã duyệt\", \"order_created\":\"Đã tạo đơn\"}\r\n	}\r\n}', 1, 5, 1, '2023-05-11 11:19:48', '2023-09-26 16:58:12'),
(34, 'created_by', NULL, 'Phụ trách', 'linking', 'quotes', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2023-04-08 00:08:00'),
(35, 'created_at', NULL, 'Ngày tạo', 'datetime', 'quotes', 1, 1, 1, 1, 0, '', 1, 6, 1, '2023-04-30 11:00:43', '2023-04-30 11:00:43'),
(36, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'quotes', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2023-04-08 00:12:15'),
(46, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'materals', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2023-04-28 11:32:02'),
(47, 'price', '{\"required\":1,\"type_input\":\"number\"}', 'Đơn giá', 'text', 'materals', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2023-04-28 11:32:02'),
(48, 'default', '', 'Lựa chọn mặc định', 'checkbox', 'materals', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2023-04-28 11:32:02'),
(49, 'act', '', 'Kích hoạt', 'checkbox', 'materals', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:32:02', '2023-04-28 11:32:02'),
(50, 'note', '', 'Ghi chú', 'textarea', 'materals', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:32:40', '2023-04-28 11:32:40'),
(51, 'created_at', '', 'Ngày tạo', 'datetime', 'materals', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2023-04-28 00:28:28'),
(52, 'updated_at', '', 'Ngày sửa', 'datetime', 'materals', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2023-04-28 00:28:28'),
(53, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_prices', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2023-04-28 11:38:57'),
(54, 'price', '{\"required\":1,\"type_input\":\"number\"}', 'Đơn giá', 'text', 'supply_prices', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2023-04-28 11:38:57'),
(55, 'act', '', 'Kích hoạt', 'checkbox', 'supply_prices', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2023-04-28 11:38:57'),
(56, 'note', '', 'Ghi chú', 'textarea', 'supply_prices', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2023-04-28 11:38:57'),
(57, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_prices', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2023-04-28 11:38:57'),
(58, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_prices', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:38:57', '2023-04-28 11:38:57'),
(59, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_types', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-04-28 11:43:12'),
(60, 'act', '', 'Kích hoạt', 'checkbox', 'supply_types', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-04-28 11:43:12'),
(61, 'note', '', 'Ghi chú', 'textarea', 'supply_types', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-04-28 11:43:12'),
(62, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_types', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-04-28 11:43:12'),
(63, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_types', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-04-28 11:43:12'),
(64, 'note', '', 'Ghi chú', 'textarea', 'devices', 0, 1, 1, 0, 0, '', 1, 2, 1, '2023-04-08 00:05:12', '2023-07-27 23:50:29'),
(66, 'product', NULL, 'Tên sản phẩm', 'child_linking', 'quotes', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\",\r\n		\"field_query\":\"quote_id\"\r\n	}\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2023-04-30 11:17:52'),
(67, 'name', '{\"required\":1}', 'Tên nhân viên', 'text', 'n_users', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:40:33', '2023-05-23 14:40:33'),
(68, 'email', '{\"required\":1}', 'Email', 'text', 'n_users', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:28:34', '2023-05-23 14:28:34'),
(69, 'phone', '{\"required\":1}', 'SĐT', 'text', 'n_users', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2023-05-23 14:38:05'),
(70, 'created_at', '', 'Ngày tạo', 'datetime', 'n_users', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2023-05-23 14:38:05'),
(71, 'created_by', '', 'Người tạo', 'linking', 'n_users', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 0, 0, 1, '2023-05-23 14:38:05', '2023-05-23 14:38:05'),
(72, 'act', '', 'Kích hoạt', 'checkbox', 'n_users', 1, 1, 1, 0, 0, '', 4, 1, 1, '2023-05-23 14:42:33', '2023-05-23 14:42:33'),
(73, 'note', '', 'Ghi chú', 'textarea', 'n_users', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2023-05-23 14:38:05'),
(74, 'username', '{\"required\":1,\"unique\":1}', 'Username', 'text', 'n_users', 0, 1, 1, 0, 0, '', 4, 0, 1, '2023-05-23 15:22:01', '2023-05-23 15:22:01'),
(75, 'password', '{\"required\":1,\"type_input\":\"password\"}', 'Password', 'text', 'n_users', 0, 1, 1, 0, 0, '', 4, 0, 1, '2023-05-23 14:41:41', '2023-09-23 16:35:53'),
(76, 'group_user', '', 'Vai trò', 'linking', 'n_users', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_group_users\"\r\n	}\r\n}', 4, 0, 1, '2023-05-23 14:41:40', '2023-05-23 14:41:40'),
(77, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã đơn', 'text', 'orders', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2023-05-26 03:19:12'),
(78, 'list_product', '', 'Sản phẩm', 'child_linking', 'orders', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\",\r\n		\"field_query\":\"order\"\r\n	}\r\n}', 1, 0, 1, '2023-05-26 03:19:12', '2023-08-22 03:16:35'),
(79, 'status', '', 'Trạng thái', 'select', 'orders', 1, 0, 1, 0, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"not_accepted\":\"Chưa duyệt\", \r\n			\"accepted\":\"Đã duyệt thiết kế\", \r\n			\"to_design\":\"Chờ thiết kế nhận lệnh\",\r\n			\"designing\":\"Đang thiết kế\",\r\n			\"design_submited\":\"Đã xong thiết kế\",\r\n			\"tech_submited\":\"Kế hoạch đang xử lí\",\r\n			\"making_process\":\"Đang gia công\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-05-26 03:19:12', '2023-08-01 03:49:32'),
(80, 'advance', '{\"type_input\":\"price\"}', 'Tạm ứng', 'text', 'orders', 1, 0, 1, 0, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2023-08-20 11:40:04'),
(81, 'rest', '{\"type_input\":\"price\"}', 'Còn lại', 'text', 'orders', 1, 0, 1, 0, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2023-08-20 11:40:03'),
(82, 'created_at', '', 'Ngày tạo', 'datetime', 'orders', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2023-05-26 03:19:12'),
(83, 'created_by', '', 'Kinh doanh', 'linking', 'orders', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-05-26 03:19:12', '2023-05-26 03:19:12'),
(84, 'code', '{\"disable_field\":1}', 'Mã lệnh', 'text', 'c_designs', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2023-06-15 06:55:51'),
(85, 'order', '', 'Đơn hàng', 'linking', 'c_designs', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"orders\",\r\n		\"field_title\":\"code\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 07:02:19', '2023-06-15 07:02:19'),
(86, 'product', '', 'Sản phẩm', 'linking', 'c_designs', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2023-06-15 06:55:51'),
(87, 'status', '', 'Trạng thái', 'select', 'c_designs', 1, 0, 1, 0, 0, '{\"data\":{\r\n		\"options\":{\"not_accepted\":\"Chưa duyệt\", \"designing\":\"Đang thiết kế\", \"design_submited\":\"Đã hoàn thành\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2023-08-25 22:35:17'),
(88, 'created_at', '', 'Ngày tạo', 'datetime', 'c_designs', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2023-06-15 06:55:51'),
(89, 'created_by', '', 'Tạo bởi', 'linking', 'c_designs', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2023-06-15 06:55:51'),
(90, 'assign_by', '', 'Nhận bởi', 'linking', 'c_designs', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 10:42:46', '2023-06-15 10:42:46'),
(91, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã Lệnh', 'text', 'c_supplies', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-07-14 02:55:30', '2023-08-17 02:17:59'),
(92, 'size_type', '{\"required\":1,\"disable_field\":1,\"inject_class\":\"__wh_select_size\"}', 'Loại vật tư', 'linking', 'c_supplies', 1, 0, 0, 0, 148, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":{\r\n			\"getFunc\":\"getTableWarehouseByType\"\r\n		}\r\n	}\r\n}', 1, 1, 1, '2023-07-14 02:55:31', '2023-09-26 20:18:58'),
(93, 'qty', '{\"required\":1, \"type_input\":\"number\"}', 'SL cần xuất', 'text', 'c_supplies', 1, 1, 1, 0, 0, '', 1, 1, 1, '2023-07-14 02:55:32', '2023-12-12 22:55:17'),
(94, 'order', '', 'Xuất cho đơn', 'linking', 'c_supplies', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"orders\"\r\n	}\r\n}', 1, 1, 0, '2023-07-14 02:56:31', '2023-08-30 02:20:09'),
(95, 'product', '', 'Sản phẩm', 'linking', 'c_supplies', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\"\r\n	}\r\n}', 1, 0, 1, '2023-07-14 03:16:25', '2023-09-26 20:03:43'),
(96, 'status', '', 'Trạng thái', 'select', 'c_supplies', 0, 0, 1, 0, 0, '{\r\n		\"data\":{\r\n				\"options\":{\"\":\"Chưa gửi yêu cầu xuất\", \"handling\":\"Đang chờ xuất kho\", \"handled\":\"Đã xuất kho\"}\r\n		}\r\n}', 1, 1, 1, '2023-07-14 02:50:55', '2023-12-12 22:56:25'),
(97, 'created_by', '', 'Người tạo', 'linking', 'c_supplies', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 1, 1, '2023-07-14 03:11:41', '2023-08-17 02:08:07'),
(98, 'assign_by', '', 'Phụ trách', 'linking', 'c_supplies', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 1, 1, '2023-07-14 03:11:21', '2023-08-29 23:57:47'),
(99, 'created_at', '', 'Ngày tạo', 'datetime', 'c_supplies', 1, 0, 1, 1, 0, '', 1, 1, 1, '2023-07-14 02:56:03', '2023-08-17 02:08:07'),
(100, 'table_map', '', 'Bảng dữ liệu', 'linking', 'n_log_actions', 0, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_tables\",\r\n		\"field_title\":\"note\"\r\n	}\r\n}', NULL, 0, 0, '2023-05-26 03:19:12', '2023-07-18 17:16:23'),
(101, 'action', '', 'Hoạt động', 'select', 'n_log_actions', 0, 0, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n				\"\":\"Chọn hành động\", \r\n				\"insert\":\"Thêm mới\", \r\n				\"update\":\"Cập nhật\", \r\n				\"remove\":\"Xóa\"\r\n			}\r\n	}\r\n}', NULL, 0, 1, '2023-05-26 03:19:12', '2023-07-18 17:54:45'),
(102, 'user', '', 'Nhân viên', 'linking', 'n_log_actions', 0, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', NULL, 0, 1, '2023-05-26 03:19:12', '2023-07-18 17:33:50'),
(103, 'created_at', '', 'Thời gian', 'datetime', 'n_log_actions', 0, 0, 0, 1, 0, '', NULL, 0, 1, '2023-06-15 06:55:51', '2023-07-18 17:54:42'),
(104, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'supply_types', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-07-20 10:43:13'),
(105, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'supply_prices', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-07-20 10:43:15'),
(106, 'ord', '', 'Sắp xếp', 'text', 'materals', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-08-14 17:38:25'),
(108, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'devices', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-07-20 10:43:15'),
(109, 'default_device', '', 'Lựa chọn mặc định', 'checkbox', 'devices', 1, 1, 1, 0, 0, '', 1, 2, 1, '2023-04-28 11:32:02', '2023-07-27 23:50:13'),
(110, 'name', '{\"required\":1}', 'Tên công nhân', 'text', 'w_users', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-05-23 14:40:33', '2023-07-25 18:44:05'),
(111, 'phone', '{\"required\":1}', 'SĐT', 'text', 'w_users', 1, 1, 1, 1, 0, '', 1, 1, 1, '2023-05-23 14:38:05', '2023-10-01 14:20:53'),
(112, 'created_at', '', 'Ngày tạo', 'datetime', 'w_users', 1, 1, 1, 1, 0, '', 1, 4, 1, '2023-05-23 14:38:05', '2023-10-01 14:21:34'),
(113, 'created_by', '', 'Người tạo', 'linking', 'w_users', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 0, 3, 1, '2023-05-23 14:38:05', '2023-10-01 14:21:23'),
(114, 'act', '', 'Kích hoạt', 'checkbox', 'w_users', 1, 1, 1, 0, 0, '', 4, 5, 1, '2023-05-23 14:42:33', '2023-10-01 14:22:15'),
(115, 'note', '', 'Ghi chú', 'textarea', 'w_users', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2023-07-25 18:44:05'),
(116, 'username', '{\"required\":1,\"unique\":1}', 'Username', 'text', 'w_users', 1, 1, 1, 0, 0, '', 4, 2, 1, '2023-05-23 15:22:01', '2023-10-01 14:21:10'),
(117, 'password', '{\"required\":1,\"type_input\":\"password\"}', 'Password', 'text', 'w_users', 0, 1, 1, 0, 0, '', 4, 0, 1, '2023-05-23 14:41:41', '2023-09-23 16:35:57'),
(118, 'group_user', '', 'Thiết bị máy', 'group', 'w_users', 1, 1, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_ajax_value_child\",\r\n	\"inject_attr\":\"link=get-device-by-type\",\r\n	\"width\":\"8\",\r\n	\"width_child\":\"6\"\r\n}', 4, 0, 0, '2023-05-23 14:41:40', '2023-09-10 15:09:14'),
(119, 'type', '{\"required\":1,\"inject_class\":\"__select_parent\"}', 'Tổ máy', 'select', 'w_users', 1, 0, 0, 0, 118, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"0\":\"Chọn tổ máy\",\r\n			\"print\":\"Tổ in\", \r\n			\"nilon\":\"Cán màng\", \r\n			\"metalai\":\"Tổ cán metalai\",\r\n			\"compress\":\"Tổ ép nhũ\",\r\n			\"float\":\"Tổ thúc nổi\",\r\n			\"uv\":\"Tổ in UV\",\r\n			\"elevate\":\"Tổ bế\",\r\n			\"peel\":\"Tổ bóc lề\",\r\n			\"mill\":\"Tổ máy phay\",\r\n			\"cut\":\"Tổ máy xén\",\r\n			\"fill\":\"Tổ máy bồi\",\r\n			\"box_paste\":\"Tổ dán hộp giấy\",\r\n			\"bag_paste\":\"Tổ dán túi giấy\",\r\n			\"finish\":\"Tổ hoàn thiện cuối\"\r\n		}\r\n	}\r\n}', 1, 0, 0, '2023-06-15 06:55:51', '2023-09-10 15:09:15'),
(120, 'device', '{\"required\":1,\"disable_field\":1,\"inject_class\":\"__select_child\"}', 'Thiết bị', 'select', 'w_users', 1, 0, 0, 0, 118, '{\r\n	\"data\":{\r\n		\"options\":{\r\n			\"\":\"Chọn loại thiết bị\",\r\n			\"1\":\"In offset\",\r\n			\"2\":\"In offset uv\",\r\n			\"3\":\"In label\",\r\n			\"4\":\"In KTS\",\r\n			\"auto\":\"Thiết bị tự động\",\r\n			\"semi_auto\":\"Thiết bị bán tự động\"\r\n		}\r\n	}\r\n}', 1, 0, 0, '2023-06-15 06:55:51', '2023-09-10 15:09:18'),
(121, 'name', '{\"required\":\"1\",\"unique\":\"1\"}', 'Tên vật tư', 'text', 'paper_extends', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-07-27 16:04:34'),
(122, 'category', '', 'Nhóm sản phẩm', 'select', 'paper_extends', 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"0\":\"Chọn nhóm\", \r\n			\"2\":\"Hộp giấy\", \r\n			\"3\":\"Túi giấy\",\r\n			\"4\":\"Tem rời dán tay\",\r\n			\"5\":\"Mác giấy\",\r\n			\"6\":\"Toa - Tờ rơi - Tờ gấp\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-05-26 03:19:12', '2023-07-27 15:55:19'),
(123, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'paper_extends', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-07-27 15:55:19'),
(124, 'act', '', 'Kích hoạt', 'checkbox', 'paper_extends', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-07-27 15:55:19'),
(125, 'note', '', 'Ghi chú', 'textarea', 'paper_extends', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-07-27 15:55:19'),
(126, 'created_at', '', 'Ngày tạo', 'datetime', 'paper_extends', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-07-27 15:55:19'),
(127, 'updated_at', '', 'Ngày sửa', 'datetime', 'paper_extends', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-07-27 15:55:19'),
(128, 'type', '{\"required\":1}', 'Loại thiết bị', 'select', 'devices', 1, 1, 1, 1, 0, '{\"data\":{\r\n		\"options\":{\"\":\"Loại Thiết bị\", \"auto\":\"Tự động\", \"semi_auto\":\"Bán tự động\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-07-27 23:59:41'),
(129, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-03 12:01:18'),
(130, 'length', '{\"required\":1}', 'KT dài', 'text', 'supply_warehouses', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-03 12:01:18'),
(131, 'width', '{\"required\":1}', 'KT rộng', 'text', 'supply_warehouses', 1, 1, 1, NULL, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-03 12:01:18'),
(132, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Số lượng', 'text', 'supply_warehouses', 1, 0, 1, 0, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-09-26 10:19:25'),
(133, 'supp_type', '{\"required\":1,\"inject_class\":\"__select_parent\"}', 'Loại vật tư', 'linking', 'supply_warehouses', 1, 0, 0, 0, 135, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"supply_types\",\r\n		\"where\":{\"is_name\":0},\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-08-17 01:50:38'),
(134, 'supp_price', '{\"required\":1,\"disable_field\":1,\"inject_class\":\"__select_child\"}', 'Định lượng', 'linking', 'supply_warehouses', 1, 0, 0, 0, 135, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"supply_prices\"\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-08-17 01:50:40'),
(135, 'group_supply', '', 'Dạng vật tư', 'group', 'supply_warehouses', 1, 1, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_ajax_value_child\",\r\n	\"inject_attr\":\"link=option-ajax-child/supply_prices/supply_id\",\r\n	\"width\":\"8\",\r\n	\"width_child\":\"6\"\r\n}', 1, 0, 1, '2023-05-23 14:41:40', '2023-08-07 16:38:46'),
(136, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'print_warehouse', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-12 11:10:07'),
(137, 'length', '{\"required\":1}', 'KT dài', 'text', 'print_warehouse', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-12 11:10:07'),
(138, 'width', '{\"required\":1}', 'KT rộng', 'text', 'print_warehouse', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-12 11:10:07'),
(139, 'qty', '{\"type_input\":\"number\",\"required\":1}', 'Số lượng', 'text', 'print_warehouse', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-08-12 11:10:07'),
(140, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'print_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-25 08:45:22'),
(141, 'length', '{\"required\":1}', 'KT dài', 'text', 'print_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-11-16 22:39:14'),
(142, 'width', '{\"required\":1}', 'KT rộng', 'text', 'print_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-11-16 22:39:14'),
(143, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Số lượng', 'text', 'print_warehouses', 1, 0, 1, 0, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-09-26 10:19:25'),
(144, 'supp_price', '{\"required\":1}', 'Loại giấy', 'linking', 'print_warehouses', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"materals\",\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-11-16 22:39:30'),
(145, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'other_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-16 15:29:54'),
(146, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Số lượng', 'text', 'other_warehouses', 1, 0, 1, 0, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-09-26 10:19:25'),
(147, 'supp_price', '{\"required\":1}', 'Loại nam châm', 'linking', 'other_warehouses', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"materals\",\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-11-16 22:43:32'),
(148, 'group_supply', '', 'Dạng vật tư', 'group', 'c_supplies', 1, 1, 1, 1, 0, '{\r\n	\"group_class\":\"__module_select_type_warehouse\",\r\n	\"width\":\"8\",\r\n	\"width_child\":\"6\"\r\n}', 1, 0, 1, '2023-05-23 14:41:40', '2023-08-17 03:13:39'),
(149, 'supp_type', '{\"required\":1,\"inject_class\":\"__wh_select_type\"}', 'Loại vật tư', 'select', 'c_supplies', 1, 0, 0, 0, 148, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"0\":\"Chọn loại vật tư\",\r\n			\"paper\":\"Giấy in\", \r\n			\"nilon\":\"Màng nilon\", \r\n			\"metalai\":\"Màng metalai\",\r\n			\"cover\":\"Màng phủ trên\",\r\n			\"carton\":\"Carton\",\r\n			\"rubber\":\"Cao su\",\r\n			\"styrofoam\":\"Mút phẳng\",\r\n			\"decal\":\"Nhung\",\r\n			\"silk\":\"Vải lụa\",\r\n			\"mica\":\"Mi ca\",\r\n			\"magnet\":\"Nam châm\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-05-11 11:18:58', '2023-08-17 03:16:06'),
(150, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'square_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-08-17 15:56:46'),
(151, 'qty', '{\"type_input\":\"number\",\"disable_field\":1}', 'Còn lại (m)', 'text', 'square_warehouses', 1, 0, 1, 0, 0, '', 1, 1, 1, '2023-04-30 11:00:22', '2023-09-26 10:19:25'),
(152, 'supp_price', '{\"required\":1}', 'Loại vật tư', 'linking', 'square_warehouses', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"materals\",\r\n		\"where_default\":{\"type\":\"type\"}\r\n	}\r\n}', 1, 1, 1, '2023-05-11 11:18:58', '2023-08-26 00:39:38'),
(153, 'created_by', NULL, 'Người thêm', 'linking', 'other_warehouses', 1, 0, 0, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2023-11-16 22:43:36'),
(154, 'created_at', NULL, 'Ngày thêm', 'datetime', 'other_warehouses', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-08 00:08:00', '2023-11-16 22:43:35'),
(155, 'created_by', NULL, 'Người thêm', 'linking', 'square_warehouses', 1, 0, 0, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 1, 1, '2023-04-08 00:08:00', '2023-11-16 22:42:05'),
(156, 'created_at', NULL, 'Ngày thêm', 'datetime', 'square_warehouses', 1, 1, 1, 0, 0, '', 1, 1, 1, '2023-04-08 00:08:00', '2023-11-16 22:42:03'),
(157, 'order', NULL, 'Đơn hàng', 'linking', 'products', 0, NULL, NULL, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"orders\",\r\n		\"field_title\":\"code\"\r\n	}\r\n}', 1, 0, 1, '2023-08-22 03:54:31', '2023-12-28 23:53:17'),
(158, 'code', '{\"disable_field\":1,\"required\":1}', 'Seri', 'text', 'products', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2023-08-22 03:57:05'),
(159, 'name', '', 'Tên', 'text', 'products', 1, 0, 1, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-01-03 09:44:25'),
(160, 'category', NULL, 'Nhóm sản phẩm', 'linking', 'products', 0, NULL, NULL, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"product_categories\"\r\n	}\r\n}', 1, 0, 0, '2023-08-22 03:54:31', '2023-10-06 12:36:26'),
(161, 'qty', '{\"type_input\":\"number\",\"required\":1}', 'Số lượng sx', 'text', 'products', 1, 1, 1, 0, 0, '', 1, 2, 1, '2023-04-30 11:00:22', '2024-01-03 09:44:53'),
(162, 'total_amount', '{\"type_input\":\"price\"}', 'Tổng giá', 'text', 'products', 1, 0, 1, 0, 0, '', 1, 6, 1, '2023-05-26 03:19:12', '2024-01-03 09:44:40'),
(163, 'created_by', NULL, 'Người thêm', 'linking', 'products', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 3, 1, '2023-04-08 00:08:00', '2024-01-03 09:44:35'),
(164, 'created_at', NULL, 'Ngày thêm', 'datetime', 'products', 1, 1, 1, 1, 0, '', 1, 4, 1, '2023-04-08 00:08:00', '2024-01-03 09:45:01'),
(165, 'width', '{\"type_input\":\"number\",\"required\":1}', 'Kích thước khổ', 'text', 'square_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-11-16 22:42:11'),
(166, 'qtv', '{\"type_input\":\"number\",\"required\":1}', 'Định lượng', 'text', 'print_warehouses', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-11-16 22:39:35'),
(171, 'name', '', 'Tên lệnh', 'text', 'w_salaries', 1, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-11 09:51:02'),
(172, 'command', '', 'Mã lệnh', 'text', 'w_salaries', 1, 0, 0, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-11 09:51:02'),
(173, 'qty', '', 'Số lượng', 'text', 'w_salaries', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-12-13 18:12:51'),
(174, 'workprice', '', 'Đơn giá', 'text', 'w_salaries', 1, 0, 0, 0, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2023-09-11 10:09:38'),
(175, 'shape_price', '', 'Lên khuôn', 'text', 'w_salaries', 1, 0, 0, 0, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2023-09-11 10:09:39'),
(176, 'handle', '', 'Thông tin SX', 'json_name', 'w_salaries', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-11 09:51:02'),
(177, 'total', '', 'Thành tiền', 'text', 'w_salaries', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-11 09:51:02'),
(178, 'group_user', '', 'Thiết bị máy', 'group', 'w_salaries', 1, 0, 0, 1, 0, '{\r\n	\"group_class\":\"__module_select_type_worker\"\r\n}', 4, 0, 1, '2023-05-23 14:41:40', '2023-09-11 10:35:18'),
(179, 'type', '{\"inject_class\":\"__worker_select_type\"}', 'Tổ máy', 'select', 'w_salaries', 1, 0, 0, 0, 178, '{\r\n	\"config\":{\r\n		\"searchbox\":1\r\n	},\r\n	\"data\":{\r\n		\"options\":{\r\n			\"\":\"Chọn tổ máy\",\r\n			\"print\":\"Tổ in\", \r\n			\"nilon\":\"Cán màng\", \r\n			\"metalai\":\"Tổ cán metalai\",\r\n			\"compress\":\"Tổ ép nhũ\",\r\n			\"uv\":\"Tổ in UV\",\r\n			\"elevate\":\"Tổ bế\",\r\n			\"float\":\"Tổ thúc nổi\",\r\n			\"peel\":\"Tổ bóc lề\",\r\n			\"mill\":\"Tổ máy phay\",\r\n			\"cut\":\"Tổ máy xén\",\r\n			\"fold\":\"Tổ gấp vạch\",\r\n			\"fill\":\"Tổ máy bồi\",\r\n			\"box_paste\":\"Tổ dán hộp giấy\",\r\n			\"bag_paste\":\"Tổ dán túi giấy\",\r\n			\"finish\":\"Tổ hoàn thiện cuối\"\r\n		}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2023-09-12 15:26:31'),
(180, 'worker', '{\"disable_field\":1,\"inject_class\":\"__worker_select_worker\"}', 'Công nhân', 'linking', 'w_salaries', 1, 0, 0, 0, 178, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"w_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2023-09-11 10:35:25'),
(181, 'submited_at', '', 'TG Chấm công', 'datetime', 'w_salaries', 1, 0, 0, 1, 0, '', 1, 0, 1, '2023-05-23 14:38:05', '2023-09-11 10:42:32'),
(182, 'created_by', '', 'Tạo lệnh', 'linking', 'w_salaries', 1, 0, 0, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-05-23 14:38:05', '2023-09-11 09:51:02'),
(183, 'name', '{\"required\":1}', 'Tên máy in', 'text', 'printers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2023-09-13 00:21:20'),
(184, 'print_length', '{\"required\":1,\"type_input\":\"number\"}', 'Chiều dài cho phép', 'text', 'printers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2023-09-13 00:21:20'),
(185, 'print_width', '{\"required\":1,\"type_input\":\"number\"}', 'Chiều rộng cho phép', 'text', 'printers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 00:28:28', '2023-09-13 00:21:20'),
(186, 'model_price', '{\"required\":1,\"type_input\":\"number\"}', 'Chi phí khuôn mẫu', 'text', 'printers', 1, 1, 1, 0, 0, '', 14, 0, 1, '2023-04-28 00:28:28', '2023-09-13 00:21:20'),
(187, '', '', 'ĐG chỉnh máy', 'group', 'printers', 1, 0, 0, 0, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2023-09-13 00:21:20'),
(188, '', '', 'ĐG lượt', 'group', 'printers', 1, 0, 0, 0, 0, '', 0, 0, 1, '2023-04-08 00:51:39', '2023-09-13 00:21:20'),
(189, 'shape_price', '{\"required\":1}', 'Khách', 'text', 'printers', 1, 1, 1, 0, 187, '', 12, 0, 1, '2023-04-27 04:39:05', '2023-09-13 00:22:46'),
(190, 'w_shape_price', '{\"required\":1}', 'Thợ', 'text', 'printers', 1, 1, 1, 0, 187, '', 12, 0, 1, '2023-04-27 04:39:20', '2023-09-13 00:22:48'),
(191, 'work_price', '{\"required\":1}', 'Khách', 'text', 'printers', 1, 1, 1, 0, 188, '', 13, 0, 1, '2023-04-27 04:39:22', '2023-09-13 00:22:52'),
(192, 'w_work_price', '{\"required\":1}', 'Thợ', 'text', 'printers', 1, 1, 1, 0, 188, '', 13, 0, 1, '2023-04-27 04:39:26', '2023-09-13 00:22:55'),
(193, 'act', '', 'Kích hoạt', 'checkbox', 'printers', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-30 10:44:01', '2023-09-13 00:21:26'),
(194, 'created_at', '', 'Ngày tạo', 'datetime', 'printers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-30 10:43:59', '2023-09-13 00:21:26'),
(195, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'printers', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-09-13 00:21:26'),
(196, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'supply_names', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-15 02:12:21'),
(197, 'factor', '{\"required\":1,\"type_input\":\"number\"}', 'Hệ số máy phay', 'text', 'supply_names', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-15 02:12:21'),
(198, 'act', '', 'Kích hoạt', 'checkbox', 'supply_names', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-15 02:12:21'),
(199, 'note', '', 'Ghi chú', 'textarea', 'supply_names', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-15 02:12:21'),
(200, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_names', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-15 02:12:21'),
(201, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_names', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-15 02:12:21'),
(202, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'supply_names', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-30 11:00:22', '2023-09-15 02:12:32'),
(203, 'name', '', 'Tên vật tư', 'text', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-04-07 23:41:47'),
(204, 'product_qty', '', 'SL sản phẩm', 'text', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:51'),
(205, 'nqty', '', 'Số bát', 'text', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:56:11'),
(206, 'supp_qty', '', 'Số L vật tư', 'text', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(207, 'print', '', 'In', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(208, 'nilon', '', 'Cán nilon', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(209, 'metalai', '', 'Cán metalai', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(210, 'compress', '', 'Ép nhũ', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(211, 'uv', '', 'In UV', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(212, 'elevate', '', 'Bế', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(213, 'float', '', 'Thúc nổi', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(214, 'peel', '', 'Bóc lề', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 06:01:20'),
(215, 'fold', '', 'Gấp vạch', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(216, 'box_paste', '', 'Dán hộp', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-16 05:54:39'),
(217, 'bag_paste', '', 'Dán túi', 'handle_stage', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-12-25 20:59:00'),
(218, 'status', '', 'Trạng thái', 'text', 'papers', 1, 0, 0, 0, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2023-09-17 10:42:36'),
(219, 'name', '', 'Tên vật tư', 'text', 'supplies', 0, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-12-26 14:35:23'),
(220, 'product_qty', '', 'SL sản phẩm', 'text', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(221, 'nqty', '', 'Số bát', 'text', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(222, 'supp_qty', '', 'Số L vật tư', 'text', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(223, 'cut', '', 'Xén', 'handle_stage', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(224, 'elavate', '', 'Bế', 'handle_stage', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(225, 'peel', '', 'Bóc lề', 'handle_stage', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(226, 'mill', '', 'Phay', 'handle_stage', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(227, 'status', '', 'Trạng thái', 'text', 'supplies', 1, 0, 0, 0, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2023-09-17 10:47:33'),
(228, 'product_qty', '', 'SL sản phẩm', 'text', 'fill_finishes', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:51:21'),
(229, 'fill', '', 'Bồi', 'handle_stage', 'fill_finishes', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:51:21'),
(230, 'finish', '', 'Hoàn thiện cuối', 'handle_stage', 'fill_finishes', 1, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-17 10:51:21'),
(231, 'status', '', 'Trạng thái', 'text', 'fill_finishes', 1, 0, 0, 0, 0, '', 1, 0, 0, '2023-04-07 23:41:47', '2023-09-17 10:51:21'),
(232, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'quotes', 0, 0, 0, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2023-09-20 17:23:16'),
(233, 'size', NULL, 'Kích thước khuôn', 'product_size', 'quotes', 0, 0, 0, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2023-09-20 17:23:19'),
(234, 'name', '{\"required\":1,\"disable_field\":1}', 'Tên', 'text', 'product_categories', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-20 14:46:23'),
(235, 'design_factor', '{\"required\":1,\"type_input\":\"number\"}', 'Hệ số tính điểm cho TK', 'text', 'product_categories', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-20 14:45:19'),
(236, 'act', '', 'Kích hoạt', 'checkbox', 'product_categories', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2023-09-20 14:52:50'),
(237, 'name', '{\"required\":1}', 'Tên', 'text', 'product_styles', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-09-20 15:01:14'),
(238, 'category', NULL, 'Nhóm sản phẩm', 'linking', 'product_styles', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"product_categories\"\r\n	}\r\n}', 1, 0, 1, '2023-04-08 00:08:00', '2023-09-20 15:01:45'),
(239, 'created_at', NULL, 'Ngày tạo', 'datetime', 'product_styles', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-08 00:08:00', '2023-09-20 14:59:54'),
(240, 'updated_at', NULL, 'Ngày sửa', 'datetime', 'product_styles', 0, 0, 0, 0, 0, '', 1, 0, 1, '2023-04-08 00:12:15', '2023-09-20 14:59:55'),
(241, 'act', '', 'Kích hoạt', 'checkbox', 'product_styles', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-08 00:05:47', '2023-09-20 14:52:50'),
(242, 'status', '', 'Trạng thái', 'select', 'products', 1, 0, 1, 0, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"not_accepted\":\"Chưa duyệt\", \r\n			\"accepted\":\"Đã duyệt thiết kế\", \r\n			\"to_design\":\"Chờ thiết kế nhận lệnh\",\r\n			\"designing\":\"Đang thiết kế\",\r\n			\"design_submited\":\"Đã xong thiết kế\",\r\n			\"tech_submited\":\"Kế hoạch đang xử lí\",\r\n			\"making_process\":\"Đang gia công\",\r\n			\"submited\":\"Hoàn tất gia công\",\r\n			\"need_rework\":\"Cần sản xuất lại\",\r\n			\"waiting_warehouse\":\"Chờ kế toán duyệt nhập kho\",\r\n			\"last_submited\":\"Hoàn tất\"\r\n			\r\n		}\r\n	}\r\n}', 1, 5, 1, '2023-05-26 03:19:12', '2024-01-03 09:44:37'),
(243, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'products', 0, 0, 0, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2023-09-21 11:32:54'),
(244, 'size', NULL, 'Kích thước', 'product_size', 'products', 0, 0, 0, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2023-09-21 11:32:56'),
(245, 'name', '{\"required\":1}', 'Tên vật tư', 'text', 'warehouse_providers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-25 20:52:35'),
(246, 'act', '', 'Kích hoạt', 'checkbox', 'warehouse_providers', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-25 20:52:35'),
(247, 'note', '', 'Ghi chú', 'textarea', 'warehouse_providers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-25 20:52:35'),
(248, 'created_at', '', 'Ngày tạo', 'datetime', 'warehouse_providers', 1, 1, 1, 1, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-25 20:52:35'),
(249, 'updated_at', '', 'Ngày sửa', 'datetime', 'warehouse_providers', 0, 1, 1, 0, 0, '', 1, 0, 1, '2023-04-28 11:43:12', '2023-09-25 20:52:35'),
(250, 'ord', '{\"type_input\":\"number\"}', 'Sắp xếp', 'text', 'warehouse_providers', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-30 11:00:22', '2023-09-25 20:52:35'),
(251, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã', 'text', 'supply_buyings', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-04-07 23:41:47', '2023-11-14 22:30:40'),
(252, 'name', '{\"required\":1}', 'Tên', 'text', 'supply_buyings', 1, 1, 1, 1, 0, '', 1, 1, 1, '2023-04-07 23:41:47', '2023-11-14 23:53:53'),
(253, 'provider', '', 'Nhà cung cấp', 'linking', 'supply_buyings', 1, 1, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"warehouse_providers\"\r\n	}\r\n}', 1, 2, 1, '2023-04-08 00:08:00', '2023-11-14 23:53:54'),
(254, 'supply', '', 'Vật tư cần mua', 'json_supply', 'supply_buyings', 1, 1, 1, 0, 0, '', 1, 3, 1, '2023-04-08 00:08:00', '2023-11-17 03:09:23'),
(255, 'status', '', 'Trạng thái', 'select', 'supply_buyings', 1, 0, 0, 1, 0, '{\"data\":{\r\n		\"options\":{\r\n			\"not_accepted\":\"Chưa duyệt\", \r\n			\"accepted\":\"Đã duyệt mua\", \r\n			\"buying\":\"Đang chờ mua\",\r\n			\"bought\":\"Đã mua\",\r\n			\"submited\":\"Đã nhập kho\"\r\n		}\r\n	}\r\n}', 1, 4, 1, '2023-05-26 03:19:12', '2023-11-14 23:53:55'),
(256, 'payment_status', '', 'Công nợ', 'select', 'supply_buyings', 1, 1, 1, 1, 0, '{\"data\":{\n		\"options\":{\n			\"not_payment\":\"Chưa thanh toán\",\n			\"paid_off\":\"Đã thanh toán hết\"\n		}\n	}\n}', 1, 5, 1, '2023-05-26 03:19:12', '2023-11-21 11:17:46'),
(257, 'note', '', 'Ghi chú', 'textarea', 'supply_buyings', 0, 1, 1, 0, 0, '', 1, 6, 1, '2023-04-28 11:43:12', '2023-11-14 23:53:57'),
(258, 'created_at', '', 'Ngày tạo', 'datetime', 'supply_buyings', 1, 0, 0, 1, 0, '', 1, 7, 1, '2023-04-28 11:43:12', '2023-11-14 23:53:58'),
(259, 'updated_at', '', 'Ngày sửa', 'datetime', 'supply_buyings', 0, 0, 0, 0, 0, '', 1, 8, 1, '2023-04-28 11:43:12', '2023-11-14 23:54:00'),
(260, 'created_by', NULL, 'Người thêm', 'linking', 'supply_buyings', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 9, 1, '2023-04-08 00:08:00', '2023-11-14 23:54:01'),
(261, 'applied_by', NULL, 'Người duyệt mua', 'linking', 'supply_buyings', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 10, 1, '2023-04-08 00:08:00', '2023-11-14 23:54:03'),
(262, 'bought_by', NULL, 'Người mua', 'linking', 'supply_buyings', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 11, 1, '2023-04-08 00:08:00', '2023-11-16 07:50:44'),
(263, 'submited_by', NULL, 'Nhập kho bởi', 'linking', 'supply_buyings', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 11, 1, '2023-04-08 00:08:00', '2023-11-16 07:50:44'),
(264, 'outside_qty', '{\"type_input\":\"number\",\"required\":1}', 'Sản phẩm lỗi', 'text', 'products', 1, 1, 1, 0, 0, '', 1, 2, 0, '2023-04-30 11:00:22', '2024-01-03 22:31:05'),
(265, 'code', '{\"disable_field\":1}', 'Mã lệnh', 'text', 'c_expertises', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(266, 'name', '{\"disable_field\":1}', 'Tiêu đề', 'text', 'c_expertises', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(267, 'qty', '{\"required\":1, \"type_input\":\"number\"}', 'SL nhập kho', 'text', 'c_expertises', 1, 1, 1, 0, 0, '', 1, 0, 1, '2023-07-14 02:55:32', '2024-01-03 06:14:05'),
(268, 'product', '', 'Sản phẩm', 'linking', 'c_expertises', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"products\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(269, 'take_status', '', 'Kiểu nhập kho', 'select', 'c_expertises', 1, 0, 1, 0, 0, '{\"data\":{\r\n		\"options\":{\"full\":\"Nhập kho đủ\", \"prob\":\"Nhập kho thiếu do lỗi kỹ thuật\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(270, 'handle_problem', '', 'Sản xuất lại', 'select', 'c_expertises', 1, 0, 1, 0, 0, '{\"data\":{\r\n		\"options\":{\"not_rework\":\"Không sản xuất lại\", \"rework\":\"Yêu cầu sản xuất lại\", \"reworked\":\"Đã sản xuất lại\"}\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(271, 'created_at', '', 'Ngày tạo', 'datetime', 'c_expertises', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(272, 'created_by', '', 'Tạo bởi', 'linking', 'c_expertises', 1, 0, 1, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 0, 1, '2023-06-15 06:55:51', '2024-01-03 03:56:01'),
(281, 'code', '{\"disable_field\":1,\"required\":1}', 'Mã sản phẩm', 'text', 'product_warehouses', 1, 0, 1, 1, 0, '', 1, 0, 1, '2023-05-26 03:19:12', '2024-01-03 22:58:05'),
(282, 'name', '', 'Tên', 'text', 'product_warehouses', 1, 0, 1, 1, 0, '', 1, 1, 1, '2023-05-26 03:19:12', '2024-01-03 22:58:05'),
(283, 'qty', '{\"type_input\":\"number\",\"required\":1}', 'Số lượng', 'text', 'product_warehouses', 1, 1, 1, 0, 0, '', 1, 2, 1, '2023-04-30 11:00:22', '2024-01-03 22:58:05'),
(284, 'price', '{\"type_input\":\"price\"}', 'Giá', 'text', 'product_warehouses', 1, 0, 1, 0, 0, '', 1, 6, 1, '2023-05-26 03:19:12', '2024-01-03 22:58:05'),
(285, 'category', NULL, 'Nhóm sản phẩm', 'linking', 'product_warehouses', 0, NULL, NULL, 0, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"product_categories\"\r\n	}\r\n}', 1, 0, 0, '2023-08-22 03:54:31', '2024-01-03 22:58:05'),
(286, 'category', NULL, 'Nhóm sản phẩm', 'group_product', 'product_warehouses', 0, 0, 0, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-01-03 22:58:05'),
(287, 'size', NULL, 'Kích thước', 'product_size', 'product_warehouses', 0, 0, 0, 1, 0, '{\r\n	\"table_target\":\"quotes\"\r\n}', 1, 0, 1, '2023-04-30 11:17:52', '2024-01-03 22:58:05'),
(288, 'created_by', NULL, 'Người thêm', 'linking', 'product_warehouses', 1, 0, 0, 1, 0, '{\r\n	\"config\":{\r\n		\"search\":1\r\n	},\r\n	\"data\":{\r\n		\"table\":\"n_users\"\r\n	}\r\n}', 1, 3, 1, '2023-04-08 00:08:00', '2024-01-03 09:44:35'),
(289, 'created_at', NULL, 'Ngày thêm', 'datetime', 'product_warehouses', 1, 1, 1, 1, 0, '', 1, 4, 1, '2023-04-08 00:08:00', '2024-01-03 09:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `n_group_users`
--

CREATE TABLE `n_group_users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_group_users`
--

INSERT INTO `n_group_users` (`id`, `name`, `note`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Admin', 'Admin cao nhất có mọi quyền truy cập', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(2, 'Phòng Kinh Doanh', 'Phòng Kinh Doanh', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(3, 'Phòng Kỹ thuật duyệt lệnh', 'Phòng Kỹ thuật duyệt lệnh', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(4, 'Phòng thiết kế', 'Phòng thiết kế', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(5, 'Phòng Kỹ thuật sản xuất', 'Phòng Kỹ thuật sản xuất', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(6, 'Phòng Kế hoạch', 'Phòng Kế hoạch', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(7, 'Kho vật tư xuất - nhập', 'Kho vật tư xuất - nhập', 1, '2023-05-23 14:44:18', '2023-05-23 14:44:18', 1),
(8, 'Phòng duyệt mua', 'Phòng duyệt mua', 1, '2023-05-23 14:44:18', '2023-11-16 01:11:53', 1),
(9, 'Phòng khuôn mẫu', 'Khuôn mẫu', 0, '2023-05-23 14:44:18', '2023-12-05 11:38:54', 1),
(10, 'Phòng mua hàng', 'Phòng mua hàng', 1, '2023-05-23 14:44:18', '2023-11-16 03:40:13', 1),
(11, 'Phòng KCS sản phẩm', 'Phòng KCS sản phẩm', 1, '2023-05-23 14:44:18', '2023-11-16 03:40:13', 1),
(12, 'Kho thành phẩm xuất - nhập', 'Kho thành phẩm xuất - nhập', 1, '2023-05-23 14:44:18', '2023-11-16 03:40:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `n_log_actions`
--

CREATE TABLE `n_log_actions` (
  `id` int(10) NOT NULL,
  `table_map` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `target` int(10) DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  `parent` int(10) DEFAULT NULL,
  `detail_data` text DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_log_actions`
--

INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(250, 'supply_prices', 'insert', 218, 1, 0, '{\"supply_id\":\"49\",\"name\":\"MDF 1.9ly\",\"price\":\"1.1\",\"act\":\"1\",\"note\":\"Kh\\u1ed5 1.22 x 2.44 =\",\"created_at\":\"04\\/10\\/2023 9:52\",\"updated_at\":\"04\\/10\\/2023 9:52\",\"ord\":null}', 1, '2023-10-04 09:55:53', '2023-10-04 09:55:53'),
(251, 'supply_prices', 'update', 218, 1, 0, '{\"price\":{\"old\":\"1.1\",\"new\":\"1.2\"}}', 1, '2023-10-04 09:57:50', '2023-10-04 09:57:50'),
(260, 'supply_prices', 'insert', 219, 1, 0, '{\"supply_id\":\"49\",\"name\":\"MDF 2.3ly\",\"price\":\"1.2\",\"act\":\"1\",\"note\":\"Kh\\u1ed5 1.22 x 2.44 =\",\"created_at\":\"04\\/10\\/2023 9:55\",\"updated_at\":\"04\\/10\\/2023 9:57\",\"ord\":null}', 1, '2023-10-04 10:03:21', '2023-10-04 10:03:21'),
(261, 'supply_prices', 'update', 219, 1, 0, '{\"price\":{\"old\":\"1.2\",\"new\":\"1.4\"},\"note\":{\"old\":\"Kh\\u1ed5 1.22 x 2.44 =\",\"new\":\"Kh\\u1ed5 1.22 x 2.44 = 42.000\\u0111\"}}', 1, '2023-10-04 10:06:05', '2023-10-04 10:06:05'),
(262, 'supply_prices', 'update', 218, 1, 0, '{\"price\":{\"old\":\"1.2\",\"new\":\"1.4\"},\"note\":{\"old\":\"Kh\\u1ed5 1.22 x 2.44 =\",\"new\":\"Kh\\u1ed5 1.22 x 2.44 = 42.000\\u0111\"}}', 1, '2023-10-04 10:06:25', '2023-10-04 10:06:25'),
(263, 'supply_prices', 'update', 219, 1, 0, '{\"price\":{\"old\":\"1.4\",\"new\":\"1.6\"}}', 1, '2023-10-04 10:06:49', '2023-10-04 10:06:49'),
(264, 'supply_prices', 'update', 219, 1, 0, '{\"note\":{\"old\":\"Kh\\u1ed5 1.22 x 2.44 = 42.000\\u0111\",\"new\":\"Kh\\u1ed5 1.22 x 2.44 = 47.500\\u0111\"}}', 1, '2023-10-04 10:07:07', '2023-10-04 10:07:07'),
(265, 'supply_prices', 'insert', 220, 1, 0, '{\"supply_id\":\"49\",\"name\":\"MDF 3ly\",\"price\":\"2\",\"act\":\"1\",\"note\":\"Kh\\u1ed5 1.22 x 2.44 = 47.500\\u0111\",\"created_at\":\"04\\/10\\/2023 10:03\",\"updated_at\":\"04\\/10\\/2023 10:07\",\"ord\":null}', 1, '2023-10-04 10:08:33', '2023-10-04 10:08:33'),
(266, 'supply_prices', 'insert', 221, 1, 0, '{\"supply_id\":\"49\",\"name\":\"MDF 5ly\",\"price\":\"3.23\",\"act\":\"1\",\"note\":\"Kh\\u1ed5 1.22 x 2.44 = 96000\\u0111\",\"created_at\":\"04\\/10\\/2023 10:08\",\"updated_at\":\"04\\/10\\/2023 10:08\",\"ord\":null}', 1, '2023-10-04 10:09:12', '2023-10-04 10:09:12'),
(267, 'supply_prices', 'update', 220, 1, 0, '{\"note\":{\"old\":\"Kh\\u1ed5 1.22 x 2.44 = 47.500\\u0111\",\"new\":\"Kh\\u1ed5 1.22 x 2.44 = 60000\\u0111\"}}', 1, '2023-10-04 10:09:44', '2023-10-04 10:09:44'),
(311, 'supply_prices', 'update', 218, 1, 0, '{\"price\":{\"old\":\"1.4\",\"new\":\"1.55\"}}', 1, '2023-10-05 21:13:00', '2023-10-05 21:13:00'),
(312, 'supply_prices', 'update', 219, 1, 0, '{\"price\":{\"old\":\"1.6\",\"new\":\"1.6835\"}}', 1, '2023-10-05 21:13:14', '2023-10-05 21:13:14'),
(313, 'supply_prices', 'update', 220, 1, 0, '{\"price\":{\"old\":\"2\",\"new\":\"2.155\"}}', 1, '2023-10-05 21:13:33', '2023-10-05 21:13:33'),
(314, 'supply_prices', 'update', 221, 1, 0, '{\"price\":{\"old\":\"3.23\",\"new\":\"3.4345\"}}', 1, '2023-10-05 21:13:55', '2023-10-05 21:13:55'),
(315, 'supply_prices', 'insert', 222, 1, 0, '{\"supply_id\":\"49\",\"name\":\"MDF 8ly\",\"price\":\"4.512\",\"act\":\"1\",\"note\":\"Kh\\u1ed5 1.22 x 2.44 = 96000\\u0111\",\"created_at\":\"04\\/10\\/2023 10:09\",\"updated_at\":\"05\\/10\\/2023 21:13\",\"ord\":null}', 1, '2023-10-05 21:14:28', '2023-10-05 21:14:28'),
(316, 'supply_prices', 'insert', 223, 1, 0, '{\"supply_id\":\"49\",\"name\":\"MDF 10ly\",\"price\":\"5.0500\",\"act\":\"1\",\"note\":\"Kh\\u1ed5 1.22 x 2.44 = 96000\\u0111\",\"created_at\":\"05\\/10\\/2023 21:14\",\"updated_at\":\"05\\/10\\/2023 21:14\",\"ord\":null}', 1, '2023-10-05 21:14:41', '2023-10-05 21:14:41'),
(340, 'supply_prices', 'insert', 224, 1, 0, '{\"supply_id\":\"50\",\"name\":\"S\\u00d3NG E 3 l\\u1edbp lo\\u1ea1i c\\u1ee9ng\",\"price\":\"0.65\",\"act\":\"1\",\"note\":\"Nh\\u00e0 ph\\u01b0\\u01a1ng anh b\\u00e1n 6200\\u0111\\/m2\",\"created_at\":\"06\\/10\\/2023 8:12\",\"updated_at\":\"06\\/10\\/2023 8:12\",\"ord\":null}', 1, '2023-10-06 08:13:51', '2023-10-06 08:13:51'),
(394, 'printers', 'update', 5, 1, 0, '{\"w_work_price\":{\"old\":\"25\",\"new\":\"30\"}}', 1, '2023-10-06 12:49:34', '2023-10-06 12:49:34'),
(525, 'customers', 'update', 4, 1, 0, '{\"name\":{\"old\":\"CTY VIETBANRD\",\"new\":\"CTY TNHH VIETBANRD\"},\"phone\":{\"old\":\"000\",\"new\":\"0977070289\"},\"telephone\":{\"old\":\"000\",\"new\":\"0977070289\"}}', 1, '2023-10-20 18:35:55', '2023-10-20 18:35:55'),
(526, 'customers', 'update', 4, 1, 0, '{\"email\":{\"old\":\"zalo\",\"new\":\"Phuongn@vietbrandco.vn\"}}', 1, '2023-10-20 18:36:48', '2023-10-20 18:36:48'),
(528, 'customers', 'update', 4, 16, 0, '{\"name\":{\"old\":\"CTY TNHH VIETBANRD\",\"new\":\"CTY TNHH VIETBRAND\"}}', 1, '2023-10-20 18:55:52', '2023-10-20 18:55:52'),
(541, 'materals', 'update', 1, 1, 0, '{\"price\":{\"old\":\"0.36\",\"new\":\"0.28\"}}', 1, '2023-10-21 08:30:56', '2023-10-21 08:30:56'),
(601, 'materals', 'update', 1, 1, 0, '{\"price\":{\"old\":\"0.28\",\"new\":\"0.36\"}}', 1, '2023-11-01 16:10:10', '2023-11-01 16:10:10'),
(624, 'customers', 'insert', 21, 1, 0, '{\"name\":\"C\\u00d4NG TY HNA\",\"contacter\":\"Mr \\u0110\\u1ee9c\",\"phone\":\"0382700882\",\"telephone\":\"0382700882\",\"email\":\"zalo\",\"address\":\"171 Kim M\\u00e3 - HN\",\"city\":\"351\",\"tax_code\":null,\"status\":\"1\",\"note\":null,\"act\":\"1\",\"created_at\":\"02\\/11\\/2023 8:39\",\"updated_at\":\"02\\/11\\/2023 8:39\"}', 1, '2023-11-02 08:41:33', '2023-11-02 08:41:33'),
(626, 'quotes', 'removeDataTable', 100, 16, 0, '{\"id\":100,\"seri\":\"BG-000100\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":19,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":null,\"ship_price\":null,\"total_cost\":null,\"total_amount\":null,\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-18 06:00:22\",\"updated_at\":\"2023-10-18 06:00:22\",\"created_by\":1}', 1, '2023-11-18 06:21:20', '2023-11-18 06:21:20'),
(627, 'orders', 'removeDataTable', 23, 16, 0, '{\"id\":23,\"code\":\"DH-000023\",\"name\":null,\"customer\":19,\"vat\":0,\"total_amount\":\"550686462\",\"advance\":\"0\",\"rest\":\"550686462\",\"rest_bill\":null,\"status\":\"not_accepted\",\"rest_note\":null,\"ship_note\":null,\"quote\":null,\"act\":1,\"created_at\":\"2023-10-14 16:27:56\",\"updated_at\":\"2023-10-14 16:27:56\",\"created_by\":1}', 1, '2023-11-18 06:21:41', '2023-11-18 06:21:41'),
(628, 'orders', 'removeDataTable', 22, 16, 0, '{\"id\":22,\"code\":\"DH-000022\",\"name\":null,\"customer\":19,\"vat\":0,\"total_amount\":\"207828826\",\"advance\":\"0\",\"rest\":\"207828826\",\"rest_bill\":null,\"status\":\"not_accepted\",\"rest_note\":null,\"ship_note\":null,\"quote\":null,\"act\":1,\"created_at\":\"2023-10-14 16:27:52\",\"updated_at\":\"2023-10-14 16:27:52\",\"created_by\":1}', 1, '2023-11-18 06:21:41', '2023-11-18 06:21:41'),
(629, 'c_designs', 'removeDataTable', 13, 16, 0, '{\"id\":13,\"code\":\"TK-DH-000008A\",\"name\":null,\"order\":8,\"product\":14,\"customer\":null,\"demo_expired\":null,\"expired\":null,\"note\":null,\"status\":\"not_accepted\",\"act\":1,\"created_by\":4,\"assign_by\":null,\"created_at\":\"2023-09-28 15:32:59\",\"updated_at\":\"2023-09-28 15:32:59\"}', 1, '2023-11-18 06:22:52', '2023-11-18 06:22:52'),
(630, 'c_designs', 'removeDataTable', 12, 16, 0, '{\"id\":12,\"code\":\"TK-DH-000008B\",\"name\":null,\"order\":8,\"product\":15,\"customer\":null,\"demo_expired\":null,\"expired\":null,\"note\":null,\"status\":\"not_accepted\",\"act\":1,\"created_by\":4,\"assign_by\":null,\"created_at\":\"2023-09-28 15:30:23\",\"updated_at\":\"2023-09-28 15:30:23\"}', 1, '2023-11-18 06:22:52', '2023-11-18 06:22:52'),
(631, 'c_designs', 'removeDataTable', 11, 16, 0, '{\"id\":11,\"code\":\"TK-DH-000008C\",\"name\":null,\"order\":8,\"product\":16,\"customer\":null,\"demo_expired\":null,\"expired\":null,\"note\":null,\"status\":\"not_accepted\",\"act\":1,\"created_by\":4,\"assign_by\":null,\"created_at\":\"2023-09-28 15:21:58\",\"updated_at\":\"2023-09-28 15:21:58\"}', 1, '2023-11-18 06:22:52', '2023-11-18 06:22:52'),
(632, 'c_supplies', 'removeDataTable', 8, 16, 0, '{\"id\":8,\"code\":\"XVT-000008\",\"size_type\":70,\"qty\":\"10300\",\"product\":53,\"supply\":98,\"supp_type\":\"paper\",\"note\":null,\"status\":\"handling\",\"act\":1,\"created_by\":6,\"created_at\":\"2023-10-07 08:50:16\",\"updated_at\":\"2023-10-07 08:50:16\"}', 1, '2023-11-18 06:23:03', '2023-11-18 06:23:03'),
(633, 'c_supplies', 'removeDataTable', 7, 16, 0, '{\"id\":7,\"code\":\"XVT-000007\",\"size_type\":75,\"qty\":\"10400\",\"product\":52,\"supply\":94,\"supp_type\":\"paper\",\"note\":null,\"status\":\"handling\",\"act\":1,\"created_by\":6,\"created_at\":\"2023-10-07 08:43:56\",\"updated_at\":\"2023-10-07 08:43:56\"}', 1, '2023-11-18 06:23:03', '2023-11-18 06:23:03'),
(634, 'c_supplies', 'removeDataTable', 6, 16, 0, '{\"id\":6,\"code\":\"XVT-000006\",\"size_type\":73,\"qty\":\"10400\",\"product\":54,\"supply\":99,\"supp_type\":\"paper\",\"note\":null,\"status\":\"handling\",\"act\":1,\"created_by\":6,\"created_at\":\"2023-10-07 08:30:31\",\"updated_at\":\"2023-10-07 08:30:31\"}', 1, '2023-11-18 06:23:03', '2023-11-18 06:23:03'),
(635, 'supply_buyings', 'removeDataTable', 16, 16, 0, '{\"id\":16,\"code\":\"CT-00000017\",\"name\":\"Y\\u00eau c\\u1ea7u mua v\\u1eadt t\\u01b0 1\",\"provider\":50,\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"45\\\",\\\"qty\\\":\\\"10000\\\",\\\"total\\\":1000000,\\\"price\\\":100},{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"46\\\",\\\"qty\\\":\\\"20000\\\",\\\"total\\\":4000000,\\\"price\\\":200},{\\\"supp_type\\\":\\\"nilon\\\",\\\"size_type\\\":\\\"5\\\",\\\"qty\\\":\\\"3000\\\",\\\"total\\\":900000,\\\"price\\\":300}]\",\"status\":\"submited\",\"payment_status\":\"not_payment\",\"total\":\"5900000\",\"bill\":\"{\\\"id\\\":\\\"134\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/chi-tiet-don-hang.php\\\",\\\"name\\\":\\\"chi-tiet-don-hang.php\\\"}\",\"note\":\"Mua b\\u1ed5 xung cho \\u0111\\u01a1n h\\u00e0ng 1\",\"act\":1,\"created_by\":6,\"applied_by\":17,\"bought_by\":18,\"submited_by\":7,\"created_at\":\"2023-11-15 22:10:37\",\"updated_at\":\"2023-11-17 03:05:11\"}', 1, '2023-11-18 07:48:22', '2023-11-18 07:48:22'),
(636, 'supply_buyings', 'removeDataTable', 15, 16, 0, '{\"id\":15,\"code\":\"CT-00000017\",\"name\":\"Y\\u00eau c\\u1ea7u mua v\\u1eadt t\\u01b0 1\",\"provider\":50,\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"qty\\\":\\\"10000\\\"},{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"46\\\",\\\"qty\\\":\\\"20000\\\"}]\",\"status\":\"accepted\",\"payment_status\":\"not_payment\",\"total\":null,\"bill\":null,\"note\":\"Mua b\\u1ed5 xung cho \\u0111\\u01a1n h\\u00e0ng 1\",\"act\":1,\"created_by\":6,\"applied_by\":17,\"bought_by\":null,\"submited_by\":null,\"created_at\":\"2023-11-15 05:56:28\",\"updated_at\":\"2023-11-16 03:15:40\"}', 1, '2023-11-18 07:48:22', '2023-11-18 07:48:22'),
(637, 'supply_buyings', 'removeDataTable', 14, 16, 0, '{\"id\":14,\"code\":\"CT-00000017\",\"name\":\"Y\\u00eau c\\u1ea7u mua v\\u1eadt t\\u01b0 1\",\"provider\":54,\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"qty\\\":\\\"10000\\\"},{\\\"supp_type\\\":\\\"nilon\\\",\\\"qty\\\":\\\"20000\\\"}]\",\"status\":\"accepted\",\"payment_status\":\"not_payment\",\"total\":null,\"bill\":null,\"note\":\"Mua b\\u1ed5 xung cho \\u0111\\u01a1n h\\u00e0ng 1\",\"act\":1,\"created_by\":6,\"applied_by\":17,\"bought_by\":null,\"submited_by\":null,\"created_at\":\"2023-11-15 06:08:11\",\"updated_at\":\"2023-11-16 03:15:44\"}', 1, '2023-11-18 07:48:22', '2023-11-18 07:48:22'),
(638, 'supply_buyings', 'insert', 1, 6, 0, '{\"name\":\"Ch\\u1ee9ng t\\u1eeb 1\",\"provider\":\"50\",\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"51\\\",\\\"qty\\\":\\\"1000\\\"},{\\\"supp_type\\\":\\\"nilon\\\",\\\"size_type\\\":\\\"4\\\",\\\"qty\\\":\\\"2000\\\"}]\",\"payment_status\":\"not_payment\",\"note\":\"mua b\\u1ed5 sung cho \\u0111\\u01a1n 1\",\"code\":\"CT-00000017\",\"status\":\"not_accepted\",\"created_by\":6,\"created_at\":\"2023-11-18 08:04:12\",\"act\":1,\"updated_at\":\"2023-11-18 08:04:12\"}', 1, '2023-11-18 08:04:12', '2023-11-18 08:04:12'),
(639, 'supply_buyings', 'insert', 1, 6, 0, '{\"name\":\"Y\\u00eau c\\u1ea7u mua v\\u1eadt t\\u01b0 gi\\u1ea5y in\",\"provider\":\"51\",\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"47\\\",\\\"qty\\\":\\\"1111\\\"},{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"46\\\",\\\"qty\\\":\\\"2000\\\"}]\",\"payment_status\":\"paid_off\",\"note\":\"mua th\\u00eam v\\u1eadt t\\u01b0 cho \\u0111\\u01a1n h\\u00e0ng 2\",\"code\":\"CT-00000018\",\"status\":\"not_accepted\",\"created_by\":6,\"created_at\":\"2023-11-21 11:18:50\",\"act\":1,\"updated_at\":\"2023-11-21 11:18:50\"}', 1, '2023-11-21 11:18:50', '2023-11-21 11:18:50'),
(640, 'supply_buyings', 'insert', 1, 6, 0, '{\"name\":\"gi\\u1ea5y\",\"provider\":\"51\",\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"47\\\",\\\"qty\\\":\\\"10\\\"},{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"47\\\",\\\"qty\\\":\\\"10\\\"}]\",\"payment_status\":\"not_payment\",\"note\":null,\"code\":\"CT-00000019\",\"status\":\"not_accepted\",\"created_by\":6,\"created_at\":\"2023-11-21 11:34:48\",\"act\":1,\"updated_at\":\"2023-11-21 11:34:48\"}', 1, '2023-11-21 11:34:48', '2023-11-21 11:34:48'),
(641, 'supply_buyings', 'insert', 1, 6, 0, '{\"name\":\"Mua th\\u00eam v\\u1eadt t\\u01b0 3\",\"provider\":\"49\",\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"47\\\",\\\"qty\\\":\\\"1000\\\"},{\\\"supp_type\\\":\\\"nilon\\\",\\\"size_type\\\":\\\"4\\\",\\\"qty\\\":\\\"2000\\\"}]\",\"payment_status\":\"not_payment\",\"note\":\"12\",\"code\":\"CT-00000020\",\"status\":\"not_accepted\",\"created_by\":6,\"created_at\":\"2023-11-21 17:46:20\",\"act\":1,\"updated_at\":\"2023-11-21 17:46:20\"}', 1, '2023-11-21 17:46:20', '2023-11-21 17:46:20'),
(647, 'supply_buyings', 'insert', 1, 6, 0, '{\"name\":null,\"provider\":\"53\",\"supply\":\"[{\\\"supp_type\\\":\\\"paper\\\",\\\"size_type\\\":\\\"81\\\",\\\"qty\\\":\\\"10000\\\"}]\",\"payment_status\":\"not_payment\",\"note\":null,\"code\":\"CT-00000021\",\"status\":\"not_accepted\",\"created_by\":6,\"created_at\":\"2023-12-09 10:32:46\",\"act\":1,\"updated_at\":\"2023-12-09 10:32:46\"}', 1, '2023-12-09 10:32:46', '2023-12-09 10:32:46'),
(648, 'supply_buyings', 'update', 21, 17, 0, '{\"code\":{\"old\":\"CT-00000021\",\"new\":\"CT-00000022\"},\"provider\":{\"old\":53,\"new\":50},\"created_by\":{\"old\":6,\"new\":17}}', 1, '2023-12-09 10:56:43', '2023-12-09 10:56:43'),
(650, 'quotes', 'removeDataTable', 125, 16, 0, '{\"id\":125,\"seri\":\"BG-000125\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":null,\"ship_price\":null,\"total_cost\":null,\"total_amount\":null,\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-11-01 16:09:28\",\"updated_at\":\"2023-11-01 16:09:28\",\"created_by\":1}', 1, '2024-01-09 22:41:12', '2024-01-09 22:41:12'),
(651, 'n_users', 'update', 1, 16, 0, '{\"password\":{\"old\":\"cba46d1d20406eb6d12420463a291668\",\"new\":\"e10adc3949ba59abbe56e057f20f883e\"}}', 1, '2024-01-10 10:10:22', '2024-01-10 10:10:22'),
(653, 'supply_prices', 'insert', 225, 1, 0, '{\"supply_id\":\"37\",\"name\":\"PET 0.18\",\"price\":\"200\",\"act\":\"1\",\"note\":null,\"created_at\":\"20\\/07\\/2023 10:21\",\"updated_at\":\"10\\/01\\/2024 10:13\",\"ord\":null}', 1, '2024-01-10 10:13:35', '2024-01-10 10:13:35'),
(654, 'supply_prices', 'insert', 226, 1, 0, '{\"supply_id\":\"37\",\"name\":\"PET 0.2\",\"price\":\"200\",\"act\":\"1\",\"note\":null,\"created_at\":\"10\\/01\\/2024 10:13\",\"updated_at\":\"10\\/01\\/2024 10:13\",\"ord\":null}', 1, '2024-01-10 10:13:47', '2024-01-10 10:13:47'),
(655, 'supply_prices', 'insert', 227, 1, 0, '{\"supply_id\":\"37\",\"name\":\"PET 0.25\",\"price\":\"200\",\"act\":\"1\",\"note\":null,\"created_at\":\"10\\/01\\/2024 10:13\",\"updated_at\":\"10\\/01\\/2024 10:13\",\"ord\":null}', 1, '2024-01-10 10:13:53', '2024-01-10 10:13:53'),
(656, 'supply_prices', 'insert', 228, 1, 0, '{\"supply_id\":\"37\",\"name\":\"PET 0.3\",\"price\":\"200\",\"act\":\"1\",\"note\":null,\"created_at\":\"10\\/01\\/2024 10:13\",\"updated_at\":\"10\\/01\\/2024 10:13\",\"ord\":null}', 1, '2024-01-10 10:14:09', '2024-01-10 10:14:09'),
(657, 'supply_prices', 'insert', 229, 1, 0, '{\"supply_id\":\"37\",\"name\":\"PET 0.4\",\"price\":\"200\",\"act\":\"1\",\"note\":null,\"created_at\":\"10\\/01\\/2024 10:14\",\"updated_at\":\"10\\/01\\/2024 10:14\",\"ord\":null}', 1, '2024-01-10 10:14:15', '2024-01-10 10:14:15'),
(658, 'supply_prices', 'insert', 230, 1, 0, '{\"supply_id\":\"37\",\"name\":\"PET 0.5\",\"price\":\"200\",\"act\":\"1\",\"note\":null,\"created_at\":\"10\\/01\\/2024 10:14\",\"updated_at\":\"10\\/01\\/2024 10:14\",\"ord\":null}', 1, '2024-01-10 10:14:23', '2024-01-10 10:14:23'),
(659, 'product_categories', 'update', 6, 1, 0, '{\"act\":{\"old\":1,\"new\":0}}', 1, '2024-02-20 14:23:55', '2024-02-20 14:23:55'),
(660, 'product_categories', 'update', 6, 1, 0, '{\"act\":{\"old\":0,\"new\":1}}', 1, '2024-02-20 14:23:57', '2024-02-20 14:23:57'),
(662, 'devices', 'update', 4, 1, 0, '{\"name\":{\"old\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\",\"new\":\"M\\u00c1Y B\\u1ebe\"}}', 1, '2024-02-21 12:46:41', '2024-02-21 12:46:41'),
(664, 'devices', 'update', 16, 1, 0, '{\"name\":{\"old\":\"M\\u00c1Y C\\u00c1N METALAI - THU\\u00ca B\\u00caN NGO\\u00c0I\",\"new\":\"M\\u00c1Y C\\u00c1N N\\u01af\\u1edaC - METALAI\"}}', 1, '2024-02-21 12:55:04', '2024-02-21 12:55:04'),
(667, 'devices', 'update', 16, 1, 0, '{\"w_shape_price\":{\"old\":\"0\",\"new\":\"50000\"}}', 1, '2024-02-21 12:57:29', '2024-02-21 12:57:29'),
(668, 'devices', 'update', 16, 1, 0, '{\"w_work_price\":{\"old\":\"0\",\"new\":\"40\"}}', 1, '2024-02-21 12:57:36', '2024-02-21 12:57:36'),
(671, 'devices', 'update', 8, 1, 0, '{\"name\":{\"old\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\",\"new\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T ( d\\u1ef1 ph\\u00f2ng )\"}}', 1, '2024-02-21 13:05:38', '2024-02-21 13:05:38'),
(672, 'devices', 'update', 16, 1, 0, '{\"name\":{\"old\":\"M\\u00c1Y C\\u00c1N N\\u01af\\u1edaC - METALAI\",\"new\":\"M\\u00c1Y C\\u00c1N METALAI\"}}', 1, '2024-02-21 13:06:06', '2024-02-21 13:06:06'),
(673, 'devices', 'update', 4, 1, 0, '{\"name\":{\"old\":\"M\\u00c1Y B\\u1ebe\",\"new\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}}', 1, '2024-02-21 13:06:37', '2024-02-21 13:06:37'),
(674, 'devices', 'insert', 69, 1, 0, '{\"supply\":\"paper\",\"key_device\":\"elevate\",\"name\":\"B\\u1ebe T\\u1ef0 \\u0110\\u1ed8NG\",\"type\":\"auto\",\"model_price\":\"100000\",\"note\":null,\"default_device\":null,\"act\":\"1\",\"created_at\":\"21\\/02\\/2024 13:06\",\"updated_at\":\"21\\/02\\/2024 13:06\",\"ord\":null,\"shape_price\":\"100000\",\"w_shape_price\":\"50000\",\"work_price\":\"150\",\"w_work_price\":\"50\"}', 1, '2024-02-21 13:07:31', '2024-02-21 13:07:31'),
(675, 'devices', 'update', 69, 1, 0, '{\"name\":{\"old\":\"B\\u1ebe T\\u1ef0 \\u0110\\u1ed8NG\",\"new\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}}', 1, '2024-02-21 13:07:46', '2024-02-21 13:07:46'),
(676, 'devices', 'update', 69, 1, 0, '{\"w_work_price\":{\"old\":\"50\",\"new\":\"40\"}}', 1, '2024-02-21 13:08:10', '2024-02-21 13:08:10'),
(677, 'devices', 'update', 69, 1, 0, '{\"w_work_price\":{\"old\":\"40\",\"new\":\"35\"}}', 1, '2024-02-21 13:08:27', '2024-02-21 13:08:27'),
(678, 'materals', 'update', 12, 1, 0, '{\"price\":{\"old\":\"0.002\",\"new\":\"0.00213\"}}', 1, '2024-02-21 13:24:17', '2024-02-21 13:24:17'),
(679, 'materals', 'update', 13, 1, 0, '{\"note\":{\"old\":\"0.00185 = 18.5 tri\\u1ec7u\\/ t\\u1ea5n\",\"new\":\"0.00185 = 19.5 tri\\u1ec7u\\/ t\\u1ea5n\"}}', 1, '2024-02-21 13:25:12', '2024-02-21 13:25:12'),
(680, 'products', 'removeDataTable', 109, 16, 0, '{\"id\":109,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":132,\"order\":null,\"total_cost\":null,\"total_amount\":null,\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"156\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/T\\u00daI S\\u1ed0 2 Kich th\\u01b0\\u1edbc chu\\u1ea9n 2023(2).pdf\\\",\\\"name\\\":\\\"T\\u00daI S\\u1ed0 2 Kich th\\u01b0\\u1edbc chu\\u1ea9n 2023(2).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 13:12:19\",\"updated_at\":\"2024-02-21 13:12:19\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 13:32:39', '2024-02-21 13:32:39'),
(681, 'quotes', 'removeDataTable', 132, 16, 0, '{\"id\":132,\"seri\":\"BG-00000132\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":20,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":null,\"ship_price\":null,\"total_cost\":null,\"total_amount\":null,\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 12:58:26\",\"updated_at\":\"2024-02-21 12:58:26\",\"created_by\":1}', 1, '2024-02-21 13:32:39', '2024-02-21 13:32:39'),
(683, 'customers', 'removeDataTable', 19, 1, 0, '{\"id\":19,\"code\":\"KH-000019\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"manager\":null,\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"email\":\"kd1.intuandung@gmail.com\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"city\":null,\"tax_code\":null,\"note\":null,\"status\":\"0\",\"act\":1,\"created_at\":\"2023-10-14 16:05:24\",\"updated_at\":\"2023-10-14 16:05:24\",\"created_by\":1}', 1, '2024-02-21 14:12:20', '2024-02-21 14:12:20'),
(684, 'customers', 'removeDataTable', 20, 1, 0, '{\"id\":20,\"code\":\"KH-000020\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"manager\":null,\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"email\":\"kd1.intuandung@gmail.com\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"city\":null,\"tax_code\":null,\"note\":null,\"status\":\"0\",\"act\":1,\"created_at\":\"2023-10-19 15:10:12\",\"updated_at\":\"2023-10-19 15:10:12\",\"created_by\":1}', 1, '2024-02-21 14:12:27', '2024-02-21 14:12:27'),
(687, 'devices', 'update', 69, 1, 0, '{\"model_price\":{\"old\":\"100000\",\"new\":\"150\"}}', 1, '2024-02-21 14:19:42', '2024-02-21 14:19:42'),
(689, 'papers', 'removeDataTable', 251, 1, 0, '{\"id\":251,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":\\\"D\\\\u00e2y d\\\\u00f9 tr\\\\u1eafng c\\\\u1ee1 TO\\\",\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":31366600}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"118017432\",\"product\":117,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 14:06:18\",\"updated_at\":\"2024-02-21 14:06:18\",\"created_by\":16}', 1, '2024-02-21 14:20:23', '2024-02-21 14:20:23'),
(690, 'quotes', 'removeDataTable', 133, 1, 0, '{\"id\":133,\"seri\":\"BG-00000133\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":null,\"ship_price\":null,\"total_cost\":\"118017432\",\"total_amount\":\"118017432\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 13:38:17\",\"updated_at\":\"2024-02-21 14:06:19\",\"created_by\":16}', 1, '2024-02-21 14:20:23', '2024-02-21 14:20:23'),
(691, 'products', 'removeDataTable', 108, 1, 0, '{\"id\":108,\"code\":null,\"name\":\"Test\",\"category\":3,\"product_style\":null,\"qty\":\"5000\",\"design\":1,\"length\":\"11\",\"width\":\"11\",\"height\":\"11\",\"quote_id\":131,\"order\":null,\"total_cost\":\"4230000\",\"total_amount\":\"4230000\",\"custom_design_file\":null,\"sale_shape_file\":null,\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 12:52:15\",\"updated_at\":\"2024-02-21 12:52:28\",\"created_by\":16,\"order_created\":null,\"detail\":null,\"outside_qty\":\"5000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:20:27', '2024-02-21 14:20:27'),
(692, 'papers', 'removeDataTable', 250, 1, 0, '{\"id\":250,\"code\":null,\"name\":\"Test\",\"product_qty\":5000,\"nqty\":1,\"double\":0,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":0,\"supp_qty\":5200,\"size\":\"{\\\"materal\\\":null,\\\"qttv\\\":null,\\\"length\\\":null,\\\"width\\\":null,\\\"materal_price\\\":0,\\\"supp_qty\\\":5200,\\\"act\\\":0,\\\"total\\\":0}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5000,\\\"model_price\\\":66000,\\\"work_price\\\":180,\\\"shape_price\\\":250000,\\\"printer\\\":7,\\\"act\\\":1,\\\"total\\\":4180000}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":50000}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"act\\\":0}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"4230000\",\"product\":108,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 12:52:28\",\"updated_at\":\"2024-02-21 12:52:28\",\"created_by\":16}', 1, '2024-02-21 14:20:27', '2024-02-21 14:20:27'),
(693, 'quotes', 'removeDataTable', 131, 1, 0, '{\"id\":131,\"seri\":\"BG-00000132\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":null,\"ship_price\":null,\"total_cost\":\"4230000\",\"total_amount\":\"4230000\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 10:32:23\",\"updated_at\":\"2024-02-21 12:52:28\",\"created_by\":1}', 1, '2024-02-21 14:20:28', '2024-02-21 14:20:28'),
(694, 'products', 'removeDataTable', 93, 1, 0, '{\"id\":93,\"code\":null,\"name\":\"3 Lo\\u1ea1i H\\u1ed9p gi\\u1ea5y 10.5 x 15 x 4.5cm ( 3 x 10.000 = 30.000 sp )\",\"category\":2,\"product_style\":13,\"qty\":\"30000\",\"design\":1,\"length\":\"10.5\",\"width\":\"4.5\",\"height\":\"15\",\"quote_id\":129,\"order\":null,\"total_cost\":\"25733091.25\",\"total_amount\":\"29668054.9375\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"138\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/Khu\\u00f4n \\u0110\\u1ee8C HNA.cdr\\\",\\\"name\\\":\\\"Khu\\u00f4n \\u0110\\u1ee8C HNA.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-11-02 08:44:18\",\"updated_at\":\"2024-01-13 14:36:16\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"30000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:20:31', '2024-02-21 14:20:31'),
(695, 'papers', 'removeDataTable', 197, 1, 0, '{\"id\":197,\"code\":null,\"name\":\"3 Lo\\u1ea1i H\\u1ed9p gi\\u1ea5y 10.5 x 15 x 4.5cm ( 3 x 10.000 = 30.000 sp )\",\"product_qty\":30000,\"nqty\":3,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"32.5\\\",\\\"width\\\":\\\"71\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":13903841.25}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":66000,\\\"work_price\\\":35,\\\"shape_price\\\":110000,\\\"printer\\\":3,\\\"act\\\":1,\\\"total\\\":1971000}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":5934125}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":30300,\\\"handle_qty\\\":10050,\\\"nqty\\\":3,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10050,\\\"cost\\\":1976125,\\\"act\\\":1,\\\"total\\\":1976125}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":30300,\\\"handle_qty\\\":30050,\\\"act\\\":1,\\\"total\\\":333000}\",\"cut\":null,\"fold\":null,\"box_paste\":\"{\\\"machine\\\":\\\"6\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":50,\\\"shape_price\\\":100000,\\\"qty_pro\\\":30300,\\\"handle_qty\\\":30050,\\\"act\\\":1,\\\"total\\\":1615000}\",\"bag_paste\":null,\"ext_cate\":2,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":30000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"25733091.25\",\"product\":93,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-11-02 08:44:18\",\"updated_at\":\"2023-11-02 08:44:18\",\"created_by\":1}', 1, '2024-02-21 14:20:31', '2024-02-21 14:20:31'),
(696, 'quotes', 'removeDataTable', 129, 1, 0, '{\"id\":129,\"seri\":\"BG-00000131\",\"status\":\"not_accepted\",\"name\":\"C\\u00d4NG TY HNA\",\"product_qty\":null,\"customer_id\":21,\"company_name\":\"C\\u00d4NG TY HNA\",\"contacter\":\"Mr \\u0110\\u1ee9c\",\"address\":\"171 Kim M\\u00e3 - HN\",\"email\":\"zalo\",\"phone\":\"0382700882\",\"telephone\":\"0382700882\",\"city\":351,\"profit\":\"15\",\"ship_price\":\"500000\",\"total_cost\":\"25733091.25\",\"total_amount\":\"29668054.9375\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-11-02 08:41:50\",\"updated_at\":\"2024-01-13 14:36:19\",\"created_by\":1}', 1, '2024-02-21 14:20:31', '2024-02-21 14:20:31'),
(697, 'products', 'removeDataTable', 92, 1, 0, '{\"id\":92,\"code\":null,\"name\":\"H\\u1ed9p 42 X 36 X 10.5cm C\\u1eaft CNC\",\"category\":1,\"product_style\":12,\"qty\":\"3000\",\"design\":1,\"length\":\"29\",\"width\":\"36\",\"height\":\"10.5\",\"quote_id\":128,\"order\":null,\"total_cost\":\"168237577.18\",\"total_amount\":\"173237577.18\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"137\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/HQT 36x42 cao c\\u1ea5p 2024.cdr\\\",\\\"name\\\":\\\"HQT 36x42 cao c\\u1ea5p 2024.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-11-01 16:41:10\",\"updated_at\":\"2023-11-01 16:46:30\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:20:36', '2024-02-21 14:20:36'),
(698, 'papers', 'removeDataTable', 193, 1, 0, '{\"id\":193,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":150,\"supp_qty\":3310,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"97\\\",\\\"width\\\":\\\"47\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3310,\\\"act\\\":1,\\\"total\\\":4527087}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":3708597.5}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"1500\\\",\\\"shape_price\\\":\\\"500000\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":1,\\\"total\\\":5045000}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"cost\\\":1265350,\\\"act\\\":1,\\\"total\\\":1265350}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"14606334.5\",\"product\":92,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:44:08\",\"updated_at\":\"2023-11-01 16:44:08\",\"created_by\":1}', 1, '2024-02-21 14:20:37', '2024-02-21 14:20:37'),
(699, 'papers', 'removeDataTable', 194, 1, 0, '{\"id\":194,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":150,\"supp_qty\":3310,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"44\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3310,\\\"act\\\":1,\\\"total\\\":2708904}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":123600,\\\"work_price\\\":500,\\\"shape_price\\\":600000,\\\"printer\\\":11,\\\"act\\\":1,\\\"total\\\":3497200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3310,\\\"handle_qty\\\":3050,\\\"cover_supp_qty\\\":3310,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":3350684.8,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":800550.4,\\\"act\\\":1,\\\"total\\\":4151235.1999999997}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"cost\\\":990700,\\\"act\\\":1,\\\"total\\\":990700}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"4000\\\",\\\"prescript_price\\\":\\\"10000\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":\\\"4000 L\\\\u00c0 TH\\\\u00c0NH , V\\\\u00c1CH, 10000 l\\\\u00e0 c\\\\u1eaft cnc\\\",\\\"qty_pro\\\":3000,\\\"act\\\":1,\\\"total\\\":42000000}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"53408339.2\",\"product\":92,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:44:08\",\"updated_at\":\"2023-11-01 16:44:08\",\"created_by\":1}', 1, '2024-02-21 14:20:37', '2024-02-21 14:20:37'),
(700, 'papers', 'removeDataTable', 195, 1, 0, '{\"id\":195,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":3000,\"nqty\":2,\"double\":0,\"base_supp_qty\":1550,\"compent_percent\":\"80\",\"compent_plus\":100,\"supp_qty\":1730,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"81\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":1730,\\\"act\\\":1,\\\"total\\\":2732535}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":550,\\\"handle_qty\\\":1550,\\\"model_price\\\":123600,\\\"work_price\\\":500,\\\"shape_price\\\":600000,\\\"printer\\\":11,\\\"act\\\":1,\\\"total\\\":1997200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1730,\\\"handle_qty\\\":1550,\\\"cover_supp_qty\\\":1730,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":3379041.9999999995,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":786556,\\\"act\\\":1,\\\"total\\\":4165597.9999999995}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":1550,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1630,\\\"handle_qty\\\":1550,\\\"cost\\\":1134250,\\\"act\\\":1,\\\"total\\\":1134250}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"10089883\",\"product\":92,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:44:08\",\"updated_at\":\"2023-11-01 16:44:08\",\"created_by\":1}', 1, '2024-02-21 14:20:37', '2024-02-21 14:20:37'),
(701, 'papers', 'removeDataTable', 196, 1, 0, '{\"id\":196,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":100,\"supp_qty\":3260,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"52\\\",\\\"width\\\":\\\"56\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3260,\\\"act\\\":1,\\\"total\\\":2278348.8000000003}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":66000,\\\"work_price\\\":250,\\\"shape_price\\\":300000,\\\"printer\\\":9,\\\"act\\\":1,\\\"total\\\":1757000}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3260,\\\"handle_qty\\\":3050,\\\"cover_supp_qty\\\":3260,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":3517523.1999999997,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":836153.6,\\\"act\\\":1,\\\"total\\\":4353676.8}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"8389025.6\",\"product\":92,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:44:08\",\"updated_at\":\"2023-11-01 16:44:08\",\"created_by\":1}', 1, '2024-02-21 14:20:37', '2024-02-21 14:20:37'),
(704, 'fill_finishes', 'removeDataTable', 61, 1, 0, '{\"id\":61,\"code\":null,\"product_qty\":\"3000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"8000\\\",\\\"qty_pro\\\":3000,\\\"handle_qty\\\":3050,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":24000000}\",\"finish\":\"{\\\"ext_price\\\":\\\"2000\\\",\\\"qty_pro\\\":3000,\\\"handle_qty\\\":3050,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":6000000}\",\"magnet\":\"{\\\"type\\\":\\\"32\\\",\\\"qty\\\":\\\"2\\\",\\\"qttv_price\\\":\\\"1200\\\",\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":3000,\\\"act\\\":1,\\\"total\\\":7560000}\",\"note\":null,\"status\":null,\"total_cost\":37560000,\"created_at\":\"2023-11-01 16:44:08\",\"updated_at\":\"2023-11-01 16:44:08\",\"product\":92,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:20:37', '2024-02-21 14:20:37'),
(705, 'quotes', 'removeDataTable', 128, 1, 0, '{\"id\":128,\"seri\":\"BG-000129\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"5000000\",\"total_cost\":\"168237577.18\",\"total_amount\":\"173237577.18\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-11-01 16:41:10\",\"updated_at\":\"2023-11-01 17:00:59\",\"created_by\":1}', 1, '2024-02-21 14:20:37', '2024-02-21 14:20:37'),
(706, 'products', 'removeDataTable', 91, 1, 0, '{\"id\":91,\"code\":null,\"name\":\"H\\u1ed9p 36 X 36 X 10.5cm C\\u1eaft CNC\",\"category\":1,\"product_style\":12,\"qty\":\"3000\",\"design\":1,\"length\":\"29\",\"width\":\"36\",\"height\":\"10.5\",\"quote_id\":127,\"order\":null,\"total_cost\":\"160229329.58\",\"total_amount\":\"165229329.58\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"136\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/HQT 36x36 cao c\\u1ea5p 2024(2).cdr\\\",\\\"name\\\":\\\"HQT 36x36 cao c\\u1ea5p 2024(2).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-11-01 16:27:03\",\"updated_at\":\"2023-11-01 16:38:57\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:20:42', '2024-02-21 14:20:42');
INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(707, 'papers', 'removeDataTable', 189, 1, 0, '{\"id\":189,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":150,\"supp_qty\":3310,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"97\\\",\\\"width\\\":\\\"43\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3310,\\\"act\\\":1,\\\"total\\\":4141803}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":3397227.5}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"1500\\\",\\\"shape_price\\\":\\\"500000\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":1,\\\"total\\\":5045000}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"cost\\\":1207150,\\\"act\\\":1,\\\"total\\\":1207150}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"13851480.5\",\"product\":91,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:38:57\",\"updated_at\":\"2023-11-01 16:38:57\",\"created_by\":1}', 1, '2024-02-21 14:20:42', '2024-02-21 14:20:42'),
(708, 'papers', 'removeDataTable', 190, 1, 0, '{\"id\":190,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":150,\"supp_qty\":3310,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"60\\\",\\\"width\\\":\\\"37\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3310,\\\"act\\\":1,\\\"total\\\":2204460}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":123600,\\\"work_price\\\":500,\\\"shape_price\\\":600000,\\\"printer\\\":11,\\\"act\\\":1,\\\"total\\\":3497200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3310,\\\"handle_qty\\\":3050,\\\"cover_supp_qty\\\":3310,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":2745352,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":670096,\\\"act\\\":1,\\\"total\\\":3415448}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"cost\\\":914500,\\\"act\\\":1,\\\"total\\\":914500}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"4000\\\",\\\"prescript_price\\\":\\\"10000\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":\\\"4000 L\\\\u00c0 TH\\\\u00c0NH , V\\\\u00c1CH, 10000 l\\\\u00e0 c\\\\u1eaft cnc\\\",\\\"qty_pro\\\":3000,\\\"act\\\":1,\\\"total\\\":42000000}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"52091908\",\"product\":91,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:38:57\",\"updated_at\":\"2023-11-01 16:38:57\",\"created_by\":1}', 1, '2024-02-21 14:20:42', '2024-02-21 14:20:42'),
(709, 'papers', 'removeDataTable', 191, 1, 0, '{\"id\":191,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":3000,\"nqty\":2,\"double\":0,\"base_supp_qty\":1550,\"compent_percent\":\"80\",\"compent_plus\":100,\"supp_qty\":1730,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"75\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":1730,\\\"act\\\":1,\\\"total\\\":2530125}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":550,\\\"handle_qty\\\":1550,\\\"model_price\\\":123600,\\\"work_price\\\":500,\\\"shape_price\\\":600000,\\\"printer\\\":11,\\\"act\\\":1,\\\"total\\\":1997200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1730,\\\"handle_qty\\\":1550,\\\"cover_supp_qty\\\":1730,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":3136150,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":735700,\\\"act\\\":1,\\\"total\\\":3871850}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":1550,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1630,\\\"handle_qty\\\":1550,\\\"cost\\\":1075750,\\\"act\\\":1,\\\"total\\\":1075750}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"9535225\",\"product\":91,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:38:57\",\"updated_at\":\"2023-11-01 16:38:57\",\"created_by\":1}', 1, '2024-02-21 14:20:42', '2024-02-21 14:20:42'),
(710, 'papers', 'removeDataTable', 192, 1, 0, '{\"id\":192,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":100,\"supp_qty\":3260,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"52\\\",\\\"width\\\":\\\"52\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3260,\\\"act\\\":1,\\\"total\\\":2115609.6}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":66000,\\\"work_price\\\":250,\\\"shape_price\\\":300000,\\\"printer\\\":9,\\\"act\\\":1,\\\"total\\\":1757000}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3260,\\\"handle_qty\\\":3050,\\\"cover_supp_qty\\\":3260,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":3273414.4,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":783571.2,\\\"act\\\":1,\\\"total\\\":4056985.5999999996}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"7929595.2\",\"product\":91,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:38:57\",\"updated_at\":\"2023-11-01 16:38:57\",\"created_by\":1}', 1, '2024-02-21 14:20:42', '2024-02-21 14:20:42'),
(713, 'fill_finishes', 'removeDataTable', 60, 1, 0, '{\"id\":60,\"code\":null,\"product_qty\":\"3000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"8000\\\",\\\"qty_pro\\\":3000,\\\"handle_qty\\\":3050,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":24000000}\",\"finish\":\"{\\\"ext_price\\\":\\\"2000\\\",\\\"qty_pro\\\":3000,\\\"handle_qty\\\":3050,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":6000000}\",\"magnet\":\"{\\\"type\\\":\\\"32\\\",\\\"qty\\\":\\\"2\\\",\\\"qttv_price\\\":\\\"1200\\\",\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":3000,\\\"act\\\":1,\\\"total\\\":7560000}\",\"note\":null,\"status\":null,\"total_cost\":37560000,\"created_at\":\"2023-11-01 16:38:57\",\"updated_at\":\"2023-11-01 16:38:57\",\"product\":91,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:20:43', '2024-02-21 14:20:43'),
(714, 'quotes', 'removeDataTable', 127, 1, 0, '{\"id\":127,\"seri\":\"BG-000128\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"5000000\",\"total_cost\":\"160229329.58\",\"total_amount\":\"165229329.58\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-11-01 16:27:03\",\"updated_at\":\"2023-11-01 16:39:05\",\"created_by\":1}', 1, '2024-02-21 14:20:43', '2024-02-21 14:20:43'),
(715, 'products', 'removeDataTable', 90, 1, 0, '{\"id\":90,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC\",\"category\":1,\"product_style\":12,\"qty\":\"3000\",\"design\":1,\"length\":\"29\",\"width\":\"36\",\"height\":\"10.5\",\"quote_id\":126,\"order\":null,\"total_cost\":\"156692249.64\",\"total_amount\":\"161692249.64\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"135\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/HQT c\\u1eb7p x\\u00e1ch 2024.cdr\\\",\\\"name\\\":\\\"HQT c\\u1eb7p x\\u00e1ch 2024.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-11-01 16:22:02\",\"updated_at\":\"2023-11-01 16:39:53\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:20:48', '2024-02-21 14:20:48'),
(716, 'papers', 'removeDataTable', 185, 1, 0, '{\"id\":185,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":150,\"supp_qty\":3310,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"86\\\",\\\"width\\\":\\\"47\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3310,\\\"act\\\":1,\\\"total\\\":4013706}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":3293705}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"1500\\\",\\\"shape_price\\\":\\\"500000\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":1,\\\"total\\\":5045000}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"cost\\\":1187800,\\\"act\\\":1,\\\"total\\\":1187800}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"13600511\",\"product\":90,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:22:02\",\"updated_at\":\"2023-11-01 16:22:02\",\"created_by\":1}', 1, '2024-02-21 14:20:48', '2024-02-21 14:20:48'),
(717, 'papers', 'removeDataTable', 186, 1, 0, '{\"id\":186,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":150,\"supp_qty\":3310,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"54.5\\\",\\\"width\\\":\\\"44\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3310,\\\"act\\\":1,\\\"total\\\":2381214}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":123600,\\\"work_price\\\":500,\\\"shape_price\\\":600000,\\\"printer\\\":11,\\\"act\\\":1,\\\"total\\\":3497200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3310,\\\"handle_qty\\\":3050,\\\"cover_supp_qty\\\":3310,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":2957456.8,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":715806.4,\\\"act\\\":1,\\\"total\\\":3673263.1999999997}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3210,\\\"handle_qty\\\":3050,\\\"cost\\\":941200,\\\"act\\\":1,\\\"total\\\":941200}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"4000\\\",\\\"prescript_price\\\":\\\"10000\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":\\\"4000 L\\\\u00c0 TH\\\\u00c0NH , V\\\\u00c1CH, 10000 l\\\\u00e0 c\\\\u1eaft cnc\\\",\\\"qty_pro\\\":3000,\\\"act\\\":1,\\\"total\\\":42000000}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"52553177.2\",\"product\":90,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:22:02\",\"updated_at\":\"2023-11-01 16:22:02\",\"created_by\":1}', 1, '2024-02-21 14:20:48', '2024-02-21 14:20:48'),
(718, 'papers', 'removeDataTable', 187, 1, 0, '{\"id\":187,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":3000,\"nqty\":2,\"double\":0,\"base_supp_qty\":1550,\"compent_percent\":\"80\",\"compent_plus\":100,\"supp_qty\":1730,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"68\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":1730,\\\"act\\\":1,\\\"total\\\":2293980}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":550,\\\"handle_qty\\\":1550,\\\"model_price\\\":123600,\\\"work_price\\\":500,\\\"shape_price\\\":600000,\\\"printer\\\":11,\\\"act\\\":1,\\\"total\\\":1997200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1730,\\\"handle_qty\\\":1550,\\\"cover_supp_qty\\\":1730,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":2852776,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":676368,\\\"act\\\":1,\\\"total\\\":3529144}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":1550,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1630,\\\"handle_qty\\\":1550,\\\"cost\\\":1007500,\\\"act\\\":1,\\\"total\\\":1007500}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"act\\\":1,\\\"total\\\":60300}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"8888124\",\"product\":90,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:22:02\",\"updated_at\":\"2023-11-01 16:22:02\",\"created_by\":1}', 1, '2024-02-21 14:20:48', '2024-02-21 14:20:48'),
(719, 'papers', 'removeDataTable', 188, 1, 0, '{\"id\":188,\"code\":null,\"name\":\"H\\u1ed9p 29 X 36 X 10.5cm C\\u1eaft CNC ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":3000,\"nqty\":1,\"double\":0,\"base_supp_qty\":3050,\"compent_percent\":\"110\",\"compent_plus\":100,\"supp_qty\":3260,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"47\\\",\\\"width\\\":\\\"54\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":3260,\\\"act\\\":1,\\\"total\\\":1985731.2}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"supp_qty\\\":2050,\\\"handle_qty\\\":3050,\\\"model_price\\\":66000,\\\"work_price\\\":200,\\\"shape_price\\\":250000,\\\"printer\\\":8,\\\"act\\\":1,\\\"total\\\":1452000}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3260,\\\"handle_qty\\\":3050,\\\"cover_supp_qty\\\":3260,\\\"materal_price\\\":0.36,\\\"metalai_price\\\":3078596.8,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":741606.4,\\\"act\\\":1,\\\"total\\\":3820203.1999999997}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":3030,\\\"handle_qty\\\":3050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":3000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"7257934.4\",\"product\":90,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-11-01 16:22:02\",\"updated_at\":\"2023-11-01 16:22:02\",\"created_by\":1}', 1, '2024-02-21 14:20:48', '2024-02-21 14:20:48'),
(722, 'fill_finishes', 'removeDataTable', 59, 1, 0, '{\"id\":59,\"code\":null,\"product_qty\":\"3000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"8000\\\",\\\"qty_pro\\\":3000,\\\"handle_qty\\\":3050,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":24000000}\",\"finish\":\"{\\\"ext_price\\\":\\\"2000\\\",\\\"qty_pro\\\":3000,\\\"handle_qty\\\":3050,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":6000000}\",\"magnet\":\"{\\\"type\\\":\\\"32\\\",\\\"qty\\\":\\\"2\\\",\\\"qttv_price\\\":\\\"1200\\\",\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":3000,\\\"act\\\":1,\\\"total\\\":7560000}\",\"note\":null,\"status\":null,\"total_cost\":37560000,\"created_at\":\"2023-11-01 16:22:02\",\"updated_at\":\"2023-11-01 16:22:02\",\"product\":90,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:20:49', '2024-02-21 14:20:49'),
(723, 'quotes', 'removeDataTable', 126, 1, 0, '{\"id\":126,\"seri\":\"BG-000128\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"5000000\",\"total_cost\":\"156692249.64\",\"total_amount\":\"161692249.64\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-11-01 16:10:22\",\"updated_at\":\"2023-11-01 16:39:56\",\"created_by\":1}', 1, '2024-02-21 14:20:49', '2024-02-21 14:20:49'),
(724, 'products', 'removeDataTable', 89, 1, 0, '{\"id\":89,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm\",\"category\":1,\"product_style\":10,\"qty\":\"309330\",\"design\":1,\"length\":\"9.5\",\"width\":\"6.9\",\"height\":\"2.7\",\"quote_id\":124,\"order\":null,\"total_cost\":\"924320083.596\",\"total_amount\":\"999065690.28368\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"134\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/Tinh gi\\u00e1.cdr\\\",\\\"name\\\":\\\"Tinh gi\\u00e1.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-31 09:51:08\",\"updated_at\":\"2023-10-31 09:51:23\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:20:54', '2024-02-21 14:20:54'),
(725, 'papers', 'removeDataTable', 181, 1, 0, '{\"id\":181,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay   zales 9.5 x 6.9 x 2.7cm\",\"product_qty\":309330,\"nqty\":20,\"double\":0,\"base_supp_qty\":15517,\"compent_percent\":\"360\",\"compent_plus\":300,\"supp_qty\":16177,\"size\":\"{\\\"materal\\\":\\\"other\\\",\\\"note\\\":\\\"gi\\\\u1ea5y M\\\\u1ef9 thu\\\\u1eadt \\\\u0111en t\\\\u00ednh 50\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"79\\\",\\\"width\\\":\\\"54.5\\\",\\\"unit_price\\\":\\\"0.005\\\",\\\"materal_price\\\":0.005,\\\"supp_qty\\\":16177,\\\"act\\\":1,\\\"total\\\":41790044.1}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":14517,\\\"handle_qty\\\":15517,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":15517,\\\"nqty\\\":20,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"face\\\":\\\"1\\\",\\\"materal\\\":\\\"10\\\",\\\"machine\\\":\\\"10\\\",\\\"note\\\":null,\\\"model_price\\\":80,\\\"work_price\\\":600,\\\"shape_price\\\":200000,\\\"supp_qty\\\":16077,\\\"handle_qty\\\":15517,\\\"materal_price\\\":0,\\\"act\\\":1,\\\"total\\\":10190640}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":16077,\\\"handle_qty\\\":15517,\\\"cost\\\":3157375,\\\"act\\\":1,\\\"total\\\":3157375}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":15517,\\\"nqty\\\":20,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":309380,\\\"act\\\":1,\\\"total\\\":3154240}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"58292299.1\",\"product\":89,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:51:08\",\"updated_at\":\"2023-10-31 09:51:08\",\"created_by\":1}', 1, '2024-02-21 14:20:54', '2024-02-21 14:20:54'),
(726, 'papers', 'removeDataTable', 182, 1, 0, '{\"id\":182,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":309330,\"nqty\":12,\"double\":0,\"base_supp_qty\":25828,\"compent_percent\":\"566\",\"compent_plus\":300,\"supp_qty\":26694,\"size\":\"{\\\"materal\\\":\\\"other\\\",\\\"note\\\":\\\"m\\\\u1ef9 thu\\\\u1ea5t \\\\u0111en\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"79\\\",\\\"width\\\":\\\"54.5\\\",\\\"unit_price\\\":\\\"0.005\\\",\\\"materal_price\\\":0.005,\\\"supp_qty\\\":26694,\\\"act\\\":1,\\\"total\\\":68958610.2}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":24828,\\\"handle_qty\\\":25828,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":25828,\\\"nqty\\\":12,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":26594,\\\"handle_qty\\\":25828,\\\"cost\\\":4734925,\\\"act\\\":1,\\\"total\\\":4734925}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":309380,\\\"act\\\":1,\\\"total\\\":3154240}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"76847775.2\",\"product\":89,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:51:08\",\"updated_at\":\"2023-10-31 09:51:08\",\"created_by\":1}', 1, '2024-02-21 14:20:54', '2024-02-21 14:20:54'),
(727, 'papers', 'removeDataTable', 183, 1, 0, '{\"id\":183,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm ( T\\u1edc B\\u1ed2I N\\u1eaeP H\\u1ed8P )\",\"product_qty\":309330,\"nqty\":20,\"double\":0,\"base_supp_qty\":15517,\"compent_percent\":\"360\",\"compent_plus\":300,\"supp_qty\":16177,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"40\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":16177,\\\"act\\\":1,\\\"total\\\":9628550.4}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":14517,\\\"handle_qty\\\":15517,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":15517,\\\"nqty\\\":20,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"9628550.4\",\"product\":89,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:51:08\",\"updated_at\":\"2023-10-31 09:51:08\",\"created_by\":1}', 1, '2024-02-21 14:20:54', '2024-02-21 14:20:54'),
(728, 'papers', 'removeDataTable', 184, 1, 0, '{\"id\":184,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":309330,\"nqty\":12,\"double\":0,\"base_supp_qty\":25828,\"compent_percent\":\"566\",\"compent_plus\":200,\"supp_qty\":26594,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"38\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":26594,\\\"act\\\":1,\\\"total\\\":15037311.36}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":24828,\\\"handle_qty\\\":25828,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":25828,\\\"nqty\\\":12,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"15037311.36\",\"product\":89,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:51:08\",\"updated_at\":\"2023-10-31 09:51:08\",\"created_by\":1}', 1, '2024-02-21 14:20:54', '2024-02-21 14:20:54'),
(731, 'fill_finishes', 'removeDataTable', 58, 1, 0, '{\"id\":58,\"code\":null,\"product_qty\":\"309330\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"2000\\\",\\\"qty_pro\\\":309330,\\\"handle_qty\\\":309380,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":618660000}\",\"finish\":\"{\\\"ext_price\\\":\\\"200\\\",\\\"qty_pro\\\":309330,\\\"handle_qty\\\":309380,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":61866000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":680526000,\"created_at\":\"2023-10-31 09:51:09\",\"updated_at\":\"2023-10-31 09:51:09\",\"product\":89,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:20:54', '2024-02-21 14:20:54'),
(732, 'quotes', 'removeDataTable', 124, 1, 0, '{\"id\":124,\"seri\":\"BG-000125\",\"status\":\"not_accepted\",\"name\":\"CTY TNHH VIETBRAND\",\"product_qty\":null,\"customer_id\":4,\"company_name\":\"CTY TNHH VIETBRAND\",\"contacter\":\"Ph\\u01b0\\u01a1ng\",\"address\":\"H\\u00e0 Nam\",\"email\":\"Phuongn@vietbrandco.vn\",\"phone\":\"0977070289\",\"telephone\":\"0977070289\",\"city\":9047,\"profit\":\"8\",\"ship_price\":\"10000000\",\"total_cost\":\"924320083.596\",\"total_amount\":\"999065690.28368\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-31 09:51:08\",\"updated_at\":\"2023-10-31 09:51:27\",\"created_by\":1}', 1, '2024-02-21 14:20:55', '2024-02-21 14:20:55'),
(733, 'products', 'removeDataTable', 88, 1, 0, '{\"id\":88,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm\",\"category\":1,\"product_style\":10,\"qty\":\"309330\",\"design\":1,\"length\":\"9.5\",\"width\":\"6.9\",\"height\":\"2.7\",\"quote_id\":123,\"order\":null,\"total_cost\":\"924320083.596\",\"total_amount\":\"999065690.28368\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"134\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/Tinh gi\\u00e1.cdr\\\",\\\"name\\\":\\\"Tinh gi\\u00e1.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-31 09:37:38\",\"updated_at\":\"2023-10-31 09:45:39\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:00', '2024-02-21 14:21:00'),
(734, 'papers', 'removeDataTable', 177, 1, 0, '{\"id\":177,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay   zales 9.5 x 6.9 x 2.7cm\",\"product_qty\":309330,\"nqty\":20,\"double\":0,\"base_supp_qty\":15517,\"compent_percent\":\"360\",\"compent_plus\":300,\"supp_qty\":16177,\"size\":\"{\\\"materal\\\":\\\"other\\\",\\\"note\\\":\\\"gi\\\\u1ea5y M\\\\u1ef9 thu\\\\u1eadt \\\\u0111en t\\\\u00ednh 50\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"79\\\",\\\"width\\\":\\\"54.5\\\",\\\"unit_price\\\":\\\"0.005\\\",\\\"materal_price\\\":0.005,\\\"supp_qty\\\":16177,\\\"act\\\":1,\\\"total\\\":41790044.1}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":14517,\\\"handle_qty\\\":15517,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":15517,\\\"nqty\\\":20,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"face\\\":\\\"1\\\",\\\"materal\\\":\\\"10\\\",\\\"machine\\\":\\\"10\\\",\\\"note\\\":null,\\\"model_price\\\":80,\\\"work_price\\\":600,\\\"shape_price\\\":200000,\\\"supp_qty\\\":16077,\\\"handle_qty\\\":15517,\\\"materal_price\\\":0,\\\"act\\\":1,\\\"total\\\":10190640}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":16077,\\\"handle_qty\\\":15517,\\\"cost\\\":3157375,\\\"act\\\":1,\\\"total\\\":3157375}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":15517,\\\"nqty\\\":20,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":309380,\\\"act\\\":1,\\\"total\\\":3154240}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"58292299.1\",\"product\":88,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:45:39\",\"updated_at\":\"2023-10-31 09:45:39\",\"created_by\":1}', 1, '2024-02-21 14:21:00', '2024-02-21 14:21:00'),
(735, 'papers', 'removeDataTable', 178, 1, 0, '{\"id\":178,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":309330,\"nqty\":12,\"double\":0,\"base_supp_qty\":25828,\"compent_percent\":\"566\",\"compent_plus\":300,\"supp_qty\":26694,\"size\":\"{\\\"materal\\\":\\\"other\\\",\\\"note\\\":\\\"m\\\\u1ef9 thu\\\\u1ea5t \\\\u0111en\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"79\\\",\\\"width\\\":\\\"54.5\\\",\\\"unit_price\\\":\\\"0.005\\\",\\\"materal_price\\\":0.005,\\\"supp_qty\\\":26694,\\\"act\\\":1,\\\"total\\\":68958610.2}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":24828,\\\"handle_qty\\\":25828,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":25828,\\\"nqty\\\":12,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":26594,\\\"handle_qty\\\":25828,\\\"cost\\\":4734925,\\\"act\\\":1,\\\"total\\\":4734925}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":309380,\\\"act\\\":1,\\\"total\\\":3154240}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"76847775.2\",\"product\":88,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:45:39\",\"updated_at\":\"2023-10-31 09:45:39\",\"created_by\":1}', 1, '2024-02-21 14:21:00', '2024-02-21 14:21:00'),
(736, 'papers', 'removeDataTable', 179, 1, 0, '{\"id\":179,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm ( T\\u1edc B\\u1ed2I N\\u1eaeP H\\u1ed8P )\",\"product_qty\":309330,\"nqty\":20,\"double\":0,\"base_supp_qty\":15517,\"compent_percent\":\"360\",\"compent_plus\":300,\"supp_qty\":16177,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"40\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":16177,\\\"act\\\":1,\\\"total\\\":9628550.4}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":14517,\\\"handle_qty\\\":15517,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":15517,\\\"nqty\\\":20,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"9628550.4\",\"product\":88,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:45:39\",\"updated_at\":\"2023-10-31 09:45:39\",\"created_by\":1}', 1, '2024-02-21 14:21:00', '2024-02-21 14:21:00'),
(737, 'papers', 'removeDataTable', 180, 1, 0, '{\"id\":180,\"code\":null,\"name\":\"Bao gi\\u00e1 h\\u1ed9p kay + zales 9.5 x 6.9 x 2.7cm ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":309330,\"nqty\":12,\"double\":0,\"base_supp_qty\":25828,\"compent_percent\":\"566\",\"compent_plus\":200,\"supp_qty\":26594,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"38\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":26594,\\\"act\\\":1,\\\"total\\\":15037311.36}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"0\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":24828,\\\"handle_qty\\\":25828,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":312424,\\\"handle_qty\\\":25828,\\\"nqty\\\":12,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"15037311.36\",\"product\":88,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 09:45:39\",\"updated_at\":\"2023-10-31 09:45:39\",\"created_by\":1}', 1, '2024-02-21 14:21:00', '2024-02-21 14:21:00'),
(740, 'fill_finishes', 'removeDataTable', 57, 1, 0, '{\"id\":57,\"code\":null,\"product_qty\":\"309330\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"2000\\\",\\\"qty_pro\\\":309330,\\\"handle_qty\\\":309380,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":618660000}\",\"finish\":\"{\\\"ext_price\\\":\\\"200\\\",\\\"qty_pro\\\":309330,\\\"handle_qty\\\":309380,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":61866000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":309330,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":680526000,\"created_at\":\"2023-10-31 09:45:39\",\"updated_at\":\"2023-10-31 09:45:39\",\"product\":88,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:00', '2024-02-21 14:21:00'),
(742, 'products', 'removeDataTable', 86, 1, 0, '{\"id\":86,\"code\":null,\"name\":\"HDSD Ti\\u1ebfng h\\u00e0n qu\\u1ed1c\",\"category\":6,\"product_style\":null,\"qty\":\"10200\",\"design\":1,\"length\":\"14.5\",\"width\":null,\"height\":\"20.5\",\"quote_id\":120,\"order\":null,\"total_cost\":\"1554613.2\",\"total_amount\":\"1885535.84\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"132\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/kh\\u0103n mat.pdf\\\",\\\"name\\\":\\\"kh\\u0103n mat.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-25 08:50:39\",\"updated_at\":\"2023-10-25 10:37:02\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:05', '2024-02-21 14:21:05'),
(743, 'papers', 'removeDataTable', 175, 1, 0, '{\"id\":175,\"code\":null,\"name\":\"HDSD Ti\\u1ebfng h\\u00e0n qu\\u1ed1c\",\"product_qty\":10200,\"nqty\":8,\"double\":0,\"base_supp_qty\":1325,\"compent_percent\":\"76\",\"compent_plus\":0,\"supp_qty\":1401,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"100\\\",\\\"length\\\":\\\"43\\\",\\\"width\\\":\\\"62\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":1401,\\\"act\\\":1,\\\"total\\\":747013.2000000001}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":325,\\\"handle_qty\\\":1325,\\\"model_price\\\":66000,\\\"work_price\\\":32,\\\"shape_price\\\":100000,\\\"printer\\\":2,\\\"act\\\":1,\\\"total\\\":705600}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10302,\\\"handle_qty\\\":1325,\\\"nqty\\\":8,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"10\\\",\\\"note\\\":null,\\\"qty_pro\\\":10200,\\\"act\\\":1,\\\"total\\\":102000}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"1554613.2\",\"product\":86,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-10-25 10:37:02\",\"updated_at\":\"2023-10-25 10:37:02\",\"created_by\":16}', 1, '2024-02-21 14:21:05', '2024-02-21 14:21:05'),
(744, 'quotes', 'removeDataTable', 120, 1, 0, '{\"id\":120,\"seri\":\"BG-000122\",\"status\":\"not_accepted\",\"name\":\"C\\u00d4NG TY D\\u1ec6T MAY TH\\u00c0NH V\\u01af\\u1ee2NG\",\"product_qty\":null,\"customer_id\":3,\"company_name\":\"C\\u00d4NG TY D\\u1ec6T MAY TH\\u00c0NH V\\u01af\\u1ee2NG\",\"contacter\":\"Ms H\\u1eb1ng\",\"address\":\"Hoa s\\u01a1n - \\u1ee8ng h\\u00f2a - H\\u00e0 n\\u1ed9i\",\"email\":\"zalo\",\"phone\":\"0979359387\",\"telephone\":\"0979359387\",\"city\":351,\"profit\":\"20\",\"ship_price\":\"100000\",\"total_cost\":\"1554613.2\",\"total_amount\":\"1885535.84\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-25 08:47:59\",\"updated_at\":\"2023-10-25 10:37:15\",\"created_by\":1}', 1, '2024-02-21 14:21:05', '2024-02-21 14:21:05');
INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(745, 'products', 'removeDataTable', 85, 1, 0, '{\"id\":85,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng SILYMARIN X7 + C\\u1ea9m nang + Toa\",\"category\":1,\"product_style\":12,\"qty\":\"5000\",\"design\":1,\"length\":\"18.5\",\"width\":\"14.5\",\"height\":\"5.5\",\"quote_id\":119,\"order\":null,\"total_cost\":\"54263679.751\",\"total_amount\":\"62628231.71365\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"131\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/H\\u1ed9p c\\u1ee9ng Bigfam.cdr\\\",\\\"name\\\":\\\"H\\u1ed9p c\\u1ee9ng Bigfam.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 14:41:39\",\"updated_at\":\"2023-10-31 18:51:48\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:09', '2024-02-21 14:21:09'),
(746, 'papers', 'removeDataTable', 170, 1, 0, '{\"id\":170,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng SILYMARIN X7   C\\u1ea9m nang   Toa\",\"product_qty\":5000,\"nqty\":2,\"double\":0,\"base_supp_qty\":2550,\"compent_percent\":\"100\",\"compent_plus\":200,\"supp_qty\":2850,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"44\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":2850,\\\"act\\\":1,\\\"total\\\":1956240}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":1550,\\\"handle_qty\\\":2550,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":1870400}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":2750,\\\"handle_qty\\\":2550,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":2016250}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":2550,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":2750,\\\"handle_qty\\\":2550,\\\"cost\\\":941500,\\\"act\\\":1,\\\"total\\\":941500}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":2550,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5050,\\\"act\\\":1,\\\"total\\\":80500}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"6864890\",\"product\":85,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 18:51:48\",\"updated_at\":\"2023-10-31 18:51:48\",\"created_by\":16}', 1, '2024-02-21 14:21:09', '2024-02-21 14:21:09'),
(747, 'papers', 'removeDataTable', 171, 1, 0, '{\"id\":171,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng SILYMARIN X7 + C\\u1ea9m nang + Toa ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":5000,\"nqty\":2,\"double\":0,\"base_supp_qty\":2550,\"compent_percent\":\"100\",\"compent_plus\":200,\"supp_qty\":2850,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"32.5\\\",\\\"width\\\":\\\"54.5\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":2850,\\\"act\\\":1,\\\"total\\\":1211535}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":1550,\\\"handle_qty\\\":2550,\\\"model_price\\\":66000,\\\"work_price\\\":32,\\\"shape_price\\\":100000,\\\"printer\\\":2,\\\"act\\\":1,\\\"total\\\":862400}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":2750,\\\"handle_qty\\\":2550,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":1267734.375}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":2550,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":2750,\\\"handle_qty\\\":2550,\\\"cost\\\":778187.5,\\\"act\\\":1,\\\"total\\\":778187.5}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5050,\\\"act\\\":1,\\\"total\\\":80500}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"4200356.875\",\"product\":85,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 18:51:48\",\"updated_at\":\"2023-10-31 18:51:48\",\"created_by\":16}', 1, '2024-02-21 14:21:09', '2024-02-21 14:21:09'),
(748, 'papers', 'removeDataTable', 172, 1, 0, '{\"id\":172,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng SILYMARIN X7 + C\\u1ea9m nang + Toa ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":5000,\"nqty\":4,\"double\":0,\"base_supp_qty\":1300,\"compent_percent\":\"75\",\"compent_plus\":100,\"supp_qty\":1475,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"56\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":1475,\\\"act\\\":1,\\\"total\\\":1011024}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":300,\\\"handle_qty\\\":1300,\\\"model_price\\\":66000,\\\"work_price\\\":35,\\\"shape_price\\\":110000,\\\"printer\\\":3,\\\"act\\\":1,\\\"total\\\":746000}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":1375,\\\"handle_qty\\\":1300,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":1031750}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":1300,\\\"nqty\\\":4,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"2788774\",\"product\":85,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 18:51:48\",\"updated_at\":\"2023-10-31 18:51:48\",\"created_by\":16}', 1, '2024-02-21 14:21:09', '2024-02-21 14:21:09'),
(749, 'papers', 'removeDataTable', 173, 1, 0, '{\"id\":173,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng SILYMARIN X7 + C\\u1ea9m nang + Toa ( KHAY GI\\u1ea4Y \\u0110\\u1ecaNH H\\u00ccNH )\",\"product_qty\":5000,\"nqty\":3,\"double\":0,\"base_supp_qty\":1717,\"compent_percent\":\"84\",\"compent_plus\":0,\"supp_qty\":1801,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"400\\\",\\\"length\\\":null,\\\"width\\\":null,\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":1801,\\\"act\\\":0,\\\"total\\\":0}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":717,\\\"handle_qty\\\":1717,\\\"model_price\\\":66000,\\\"work_price\\\":32,\\\"shape_price\\\":100000,\\\"printer\\\":1,\\\"act\\\":1,\\\"total\\\":755776}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":1701,\\\"handle_qty\\\":1717,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":50000}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":1717,\\\"nqty\\\":3,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1701,\\\"handle_qty\\\":1717,\\\"cost\\\":355150,\\\"act\\\":1,\\\"total\\\":355150}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5050,\\\"act\\\":1,\\\"total\\\":80500}\",\"cut\":null,\"fold\":null,\"box_paste\":\"{\\\"act\\\":0}\",\"bag_paste\":null,\"ext_cate\":2,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"1241426\",\"product\":85,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 18:51:48\",\"updated_at\":\"2023-10-31 18:51:48\",\"created_by\":16}', 1, '2024-02-21 14:21:09', '2024-02-21 14:21:09'),
(750, 'papers', 'removeDataTable', 174, 1, 0, '{\"id\":174,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng SILYMARIN X7 + C\\u1ea9m nang + Toa ( TOA IN GH\\u00c9P )\",\"product_qty\":5000,\"nqty\":4,\"double\":0,\"base_supp_qty\":1300,\"compent_percent\":\"75\",\"compent_plus\":0,\"supp_qty\":1375,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"100\\\",\\\"length\\\":\\\"43\\\",\\\"width\\\":\\\"62\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":1375,\\\"act\\\":1,\\\"total\\\":733150}\",\"print\":\"{\\\"type\\\":\\\"2\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":300,\\\"handle_qty\\\":1300,\\\"model_price\\\":66000,\\\"work_price\\\":32,\\\"shape_price\\\":100000,\\\"printer\\\":2,\\\"act\\\":1,\\\"total\\\":740800}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":1300,\\\"nqty\\\":4,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"1473950\",\"product\":85,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-31 18:51:48\",\"updated_at\":\"2023-10-31 18:51:48\",\"created_by\":16}', 1, '2024-02-21 14:21:09', '2024-02-21 14:21:09'),
(753, 'fill_finishes', 'removeDataTable', 56, 1, 0, '{\"id\":56,\"code\":null,\"product_qty\":\"5000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"21\\\",\\\"width\\\":\\\"43\\\",\\\"materal\\\":\\\"20\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":5509000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"21\\\",\\\"width\\\":\\\"18\\\",\\\"materal\\\":\\\"21\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":3934000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"23\\\",\\\"width\\\":\\\"27\\\",\\\"materal\\\":\\\"24\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":4663000,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":5000,\\\"handle_qty\\\":5050,\\\"fill_cost\\\":14106000,\\\"act\\\":1,\\\"total\\\":14106000}\",\"finish\":\"{\\\"stage\\\":[{\\\"materal\\\":\\\"53\\\",\\\"qttv_price\\\":500,\\\"cost\\\":2500000},{\\\"materal\\\":\\\"54\\\",\\\"qttv_price\\\":150,\\\"cost\\\":750000},{\\\"materal\\\":\\\"64\\\",\\\"qttv_price\\\":100,\\\"cost\\\":500000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":5000,\\\"handle_qty\\\":5050,\\\"finish_cost\\\":3750000,\\\"act\\\":1,\\\"total\\\":3750000}\",\"magnet\":\"{\\\"type\\\":\\\"32\\\",\\\"qty\\\":\\\"1\\\",\\\"qttv_price\\\":\\\"1200\\\",\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":5000,\\\"act\\\":1,\\\"total\\\":6300000}\",\"note\":null,\"status\":null,\"total_cost\":24156000,\"created_at\":\"2023-10-31 18:51:48\",\"updated_at\":\"2023-10-31 18:51:48\",\"product\":85,\"act\":1,\"created_by\":16}', 1, '2024-02-21 14:21:10', '2024-02-21 14:21:10'),
(755, 'products', 'removeDataTable', 84, 1, 0, '{\"id\":84,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 C HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m )\",\"category\":1,\"product_style\":11,\"qty\":\"10000\",\"design\":1,\"length\":\"36\",\"width\":\"36\",\"height\":\"10\",\"quote_id\":118,\"order\":null,\"total_cost\":\"363475020\",\"total_amount\":\"363475020\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"130\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 08:49:37\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(756, 'papers', 'removeDataTable', 164, 1, 0, '{\"id\":164,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":200,\"supp_qty\":10500,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"44\\\",\\\"width\\\":\\\"50\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10500,\\\"act\\\":1,\\\"total\\\":6930000}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":66000,\\\"work_price\\\":32,\\\"shape_price\\\":100000,\\\"printer\\\":2,\\\"act\\\":1,\\\"total\\\":1822400}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":5770000}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"1000\\\",\\\"shape_price\\\":\\\"200000\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":1,\\\"total\\\":10300000}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"cost\\\":1990000,\\\"act\\\":1,\\\"total\\\":1990000}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"4600\\\",\\\"note\\\":\\\"4600\\\\u0110 g\\\\u1ed3m c\\\\u00e1c ph\\\\u1ee5 ki\\\\u1ec7n V\\\\u00c1CH + C\\\\u1ed4 CHAI + \\\\u0110\\\\u00cdT CHAI\\\",\\\"qty_pro\\\":10000,\\\"act\\\":1,\\\"total\\\":46000000}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"72943400\",\"product\":84,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(757, 'papers', 'removeDataTable', 165, 1, 0, '{\"id\":165,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":200,\"supp_qty\":10500,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"42\\\",\\\"width\\\":\\\"50\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10500,\\\"act\\\":1,\\\"total\\\":5292000}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":66000,\\\"work_price\\\":32,\\\"shape_price\\\":100000,\\\"printer\\\":2,\\\"act\\\":1,\\\"total\\\":1822400}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":5510000}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"cost\\\":1975000,\\\"act\\\":1,\\\"total\\\":1975000}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"14730400\",\"product\":84,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(758, 'papers', 'removeDataTable', 166, 1, 0, '{\"id\":166,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u00daI GI\\u1ea4Y )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"250\\\",\\\"length\\\":\\\"44\\\",\\\"width\\\":\\\"102\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":22535370}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":4270400}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":11494400}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10050,\\\"cost\\\":2303200,\\\"act\\\":1,\\\"total\\\":2303200}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":20973200}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"61707570\",\"product\":84,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(759, 'papers', 'removeDataTable', 167, 1, 0, '{\"id\":167,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":10000,\"nqty\":2,\"double\":0,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":200,\"supp_qty\":5400,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"67\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":5400,\\\"act\\\":1,\\\"total\\\":5644080}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5050,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":1335200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5400,\\\"handle_qty\\\":5050,\\\"cover_supp_qty\\\":5400,\\\"materal_price\\\":0.28,\\\"metalai_price\\\":6684760.000000001,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":1946520.0000000002,\\\"act\\\":1,\\\"total\\\":8631280.000000002}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":5050,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5300,\\\"handle_qty\\\":5050,\\\"cost\\\":1548250,\\\"act\\\":1,\\\"total\\\":1548250}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"17289810\",\"product\":84,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(760, 'papers', 'removeDataTable', 168, 1, 0, '{\"id\":168,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m ) gi\\u00e1 b\\u1ed3i 8000k ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"38\\\",\\\"width\\\":\\\"45\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":4227120}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"4227120\",\"product\":84,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(761, 'papers', 'removeDataTable', 169, 1, 0, '{\"id\":169,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m ) gi\\u00e1 b\\u1ed3i 8000k ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"38\\\",\\\"width\\\":\\\"45\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":4227120}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"4227120\",\"product\":84,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(765, 'fill_finishes', 'removeDataTable', 55, 1, 0, '{\"id\":55,\"code\":null,\"product_qty\":\"10000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"43\\\",\\\"width\\\":\\\"50\\\",\\\"materal\\\":\\\"16\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":18200000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"43\\\",\\\"width\\\":\\\"50\\\",\\\"materal\\\":\\\"18\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":18200000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"16\\\",\\\"width\\\":\\\"67\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":11731999.999999998,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"16\\\",\\\"width\\\":\\\"67\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":11731999.999999998,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"fill_cost\\\":59864000,\\\"act\\\":1,\\\"total\\\":59864000}\",\"finish\":\"{\\\"stage\\\":[{\\\"materal\\\":\\\"53\\\",\\\"qttv_price\\\":500,\\\"cost\\\":5000000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"54\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"finish_cost\\\":11000000,\\\"act\\\":1,\\\"total\\\":11000000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":70864000,\"created_at\":\"2023-10-21 08:55:53\",\"updated_at\":\"2023-10-21 08:55:53\",\"product\":84,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:16', '2024-02-21 14:21:16'),
(767, 'products', 'removeDataTable', 83, 1, 0, '{\"id\":83,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 B HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m )\",\"category\":1,\"product_style\":11,\"qty\":\"10000\",\"design\":1,\"length\":\"36\",\"width\":\"36\",\"height\":\"10\",\"quote_id\":117,\"order\":null,\"total_cost\":\"403826147.5\",\"total_amount\":\"403826147.5\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"130\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 08:39:17\",\"updated_at\":\"2023-10-21 08:49:17\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:21', '2024-02-21 14:21:21'),
(768, 'papers', 'removeDataTable', 158, 1, 0, '{\"id\":158,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":200,\"supp_qty\":10500,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"150\\\",\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"51\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10500,\\\"act\\\":1,\\\"total\\\":8193150}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":66000,\\\"work_price\\\":35,\\\"shape_price\\\":110000,\\\"printer\\\":3,\\\"act\\\":1,\\\"total\\\":1971000}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":6812600}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"1000\\\",\\\"shape_price\\\":\\\"200000\\\",\\\"machine\\\":\\\"2\\\",\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":1,\\\"total\\\":10300000}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"cost\\\":2050150,\\\"act\\\":1,\\\"total\\\":2050150}\",\"float\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":1,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"4600\\\",\\\"note\\\":\\\"4600\\\\u0110 g\\\\u1ed3m c\\\\u00e1c ph\\\\u1ee5 ki\\\\u1ec7n V\\\\u00c1CH + C\\\\u1ed4 CHAI + \\\\u0110\\\\u00cdT CHAI\\\",\\\"qty_pro\\\":10000,\\\"act\\\":1,\\\"total\\\":46000000}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"75457900\",\"product\":83,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"created_by\":1}', 1, '2024-02-21 14:21:22', '2024-02-21 14:21:22'),
(769, 'papers', 'removeDataTable', 159, 1, 0, '{\"id\":159,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u1edc B\\u1ed2I \\u0110\\u00c1Y H\\u1ed8P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":200,\"supp_qty\":10500,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"51\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10500,\\\"act\\\":1,\\\"total\\\":6554520}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":66000,\\\"work_price\\\":35,\\\"shape_price\\\":110000,\\\"printer\\\":3,\\\"act\\\":1,\\\"total\\\":1971000}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":6812600}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10400,\\\"handle_qty\\\":10050,\\\"cost\\\":2050150,\\\"act\\\":1,\\\"total\\\":2050150}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"17519270\",\"product\":83,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"created_by\":1}', 1, '2024-02-21 14:21:22', '2024-02-21 14:21:22'),
(770, 'papers', 'removeDataTable', 160, 1, 0, '{\"id\":160,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u00daI GI\\u1ea4Y )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"250\\\",\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"102\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":26120542.5}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":4270400}\",\"nilon\":\"{\\\"materal\\\":\\\"9\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"8\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10050,\\\"materal_price\\\":0.25,\\\"act\\\":1,\\\"total\\\":13315100}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10050,\\\"cost\\\":2410300,\\\"act\\\":1,\\\"total\\\":2410300}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":21080300}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"67327642.5\",\"product\":83,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"created_by\":1}', 1, '2024-02-21 14:21:22', '2024-02-21 14:21:22'),
(771, 'papers', 'removeDataTable', 161, 1, 0, '{\"id\":161,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":10000,\"nqty\":2,\"double\":0,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":200,\"supp_qty\":5400,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"74.5\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":5400,\\\"act\\\":1,\\\"total\\\":6275880}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5050,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":1335200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5400,\\\"handle_qty\\\":5050,\\\"cover_supp_qty\\\":5400,\\\"materal_price\\\":0.28,\\\"metalai_price\\\":7421860.000000001,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":2153220,\\\"act\\\":1,\\\"total\\\":9575080}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":5050,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5300,\\\"handle_qty\\\":5050,\\\"cost\\\":1621375,\\\"act\\\":1,\\\"total\\\":1621375}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"18938535\",\"product\":83,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"created_by\":1}', 1, '2024-02-21 14:21:22', '2024-02-21 14:21:22'),
(772, 'papers', 'removeDataTable', 162, 1, 0, '{\"id\":162,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m ) gi\\u00e1 b\\u1ed3i 8000k ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"45\\\",\\\"width\\\":\\\"45\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":5005800}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"5005800\",\"product\":83,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"created_by\":1}', 1, '2024-02-21 14:21:22', '2024-02-21 14:21:22'),
(773, 'papers', 'removeDataTable', 163, 1, 0, '{\"id\":163,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m ) gi\\u00e1 b\\u1ed3i 8000k ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"45\\\",\\\"width\\\":\\\"45\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":5005800}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"5005800\",\"product\":83,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"created_by\":1}', 1, '2024-02-21 14:21:22', '2024-02-21 14:21:22'),
(777, 'fill_finishes', 'removeDataTable', 54, 1, 0, '{\"id\":54,\"code\":null,\"product_qty\":\"10000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"51\\\",\\\"materal\\\":\\\"16\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":20906000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"51\\\",\\\"materal\\\":\\\"18\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":20906000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"20\\\",\\\"width\\\":\\\"74\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":14180000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"19\\\",\\\"width\\\":\\\"74\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":13736000,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"fill_cost\\\":69728000,\\\"act\\\":1,\\\"total\\\":69728000}\",\"finish\":\"{\\\"stage\\\":[{\\\"materal\\\":\\\"53\\\",\\\"qttv_price\\\":500,\\\"cost\\\":5000000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"54\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"finish_cost\\\":11000000,\\\"act\\\":1,\\\"total\\\":11000000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":80728000,\"created_at\":\"2023-10-21 08:44:25\",\"updated_at\":\"2023-10-21 08:44:25\",\"product\":83,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:23', '2024-02-21 14:21:23'),
(778, 'quotes', 'removeDataTable', 117, 1, 0, '{\"id\":117,\"seri\":\"BG-000118\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":20,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"403826147.5\",\"total_amount\":\"403826147.5\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 08:39:17\",\"updated_at\":\"2023-10-21 08:49:19\",\"created_by\":1}', 1, '2024-02-21 14:21:23', '2024-02-21 14:21:23');
INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(779, 'products', 'removeDataTable', 82, 1, 0, '{\"id\":82,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m )\",\"category\":1,\"product_style\":11,\"qty\":\"10000\",\"design\":1,\"length\":\"36\",\"width\":\"42\",\"height\":\"10\",\"quote_id\":116,\"order\":null,\"total_cost\":\"432406447.5\",\"total_amount\":\"432406447.5\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"130\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 08:31:07\",\"updated_at\":\"2023-10-21 08:45:29\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:28', '2024-02-21 14:21:28'),
(783, 'papers', 'removeDataTable', 155, 1, 0, '{\"id\":155,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( T\\u1edc B\\u1ed2I TH\\u00c0NH )\",\"product_qty\":10000,\"nqty\":2,\"double\":0,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":200,\"supp_qty\":5400,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"80\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":5400,\\\"act\\\":1,\\\"total\\\":6739200}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"2\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5050,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":1335200}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"materal\\\":\\\"1\\\",\\\"face\\\":\\\"1\\\",\\\"cover_materal\\\":\\\"3\\\",\\\"cover_face\\\":\\\"1\\\",\\\"machine\\\":\\\"16\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5400,\\\"handle_qty\\\":5050,\\\"cover_supp_qty\\\":5400,\\\"materal_price\\\":0.28,\\\"metalai_price\\\":7962400.000000001,\\\"materal_cover_price\\\":0.08,\\\"metalai_cover_price\\\":2304800,\\\"act\\\":1,\\\"total\\\":10267200}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":5050,\\\"nqty\\\":2,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"4\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5300,\\\"handle_qty\\\":5050,\\\"cost\\\":1675000,\\\"act\\\":1,\\\"total\\\":1675000}\",\"float\":null,\"peel\":\"{\\\"machine\\\":\\\"12\\\",\\\"nqty\\\":\\\"1\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":10,\\\"shape_price\\\":30000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":131000}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"20147600\",\"product\":82,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(784, 'papers', 'removeDataTable', 156, 1, 0, '{\"id\":156,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m ) gi\\u00e1 b\\u1ed3i 8000k ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"45\\\",\\\"width\\\":\\\"51\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":5673240}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"5673240\",\"product\":82,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(785, 'papers', 'removeDataTable', 157, 1, 0, '{\"id\":157,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024 ( S\\u1eeda metailai v\\u1ec1 2800\\u0111\\/m ) gi\\u00e1 b\\u1ed3i 8000k ( T\\u1edc B\\u1ed2I M\\u1eb6T TH\\u00c9P )\",\"product_qty\":10000,\"nqty\":1,\"double\":0,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"12\\\",\\\"qttv\\\":\\\"120\\\",\\\"length\\\":\\\"45\\\",\\\"width\\\":\\\"51\\\",\\\"materal_price\\\":0.002,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":5673240}\",\"print\":\"{\\\"type\\\":\\\"0\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"0\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10050,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":0,\\\"printer\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"nilon\":\"{\\\"act\\\":0}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"act\\\":0}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":\"{\\\"act\\\":0}\",\"box_paste\":null,\"bag_paste\":null,\"ext_cate\":6,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"5673240\",\"product\":82,\"note\":null,\"main\":0,\"act\":1,\"status\":null,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(786, 'supplies', 'removeDataTable', 152, 1, 0, '{\"id\":152,\"code\":null,\"name\":51,\"product_qty\":10000,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":5000,\"compent_percent\":\"100\",\"compent_plus\":100,\"supp_qty\":5200,\"size\":\"{\\\"length\\\":\\\"52.5\\\",\\\"width\\\":\\\"91\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":47822775}\",\"cut\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"cost\\\":1596625,\\\"act\\\":1,\\\"total\\\":1596625}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":222000}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"factor\\\":2,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":3130000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":82,\"total_cost\":\"52771400\",\"act\":1,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(787, 'supplies', 'removeDataTable', 153, 1, 0, '{\"id\":153,\"code\":null,\"name\":52,\"product_qty\":10000,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":5000,\"compent_percent\":\"100\",\"compent_plus\":100,\"supp_qty\":5200,\"size\":\"{\\\"length\\\":\\\"52.5\\\",\\\"width\\\":\\\"91\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":47822775}\",\"cut\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"cost\\\":1596625,\\\"act\\\":1,\\\"total\\\":1596625}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":222000}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"factor\\\":2,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":3130000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":82,\"total_cost\":\"52771400\",\"act\":1,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(788, 'supplies', 'removeDataTable', 154, 1, 0, '{\"id\":154,\"code\":null,\"name\":50,\"product_qty\":10000,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":5000,\"compent_percent\":\"100\",\"compent_plus\":100,\"supp_qty\":5200,\"size\":\"{\\\"length\\\":\\\"48\\\",\\\"width\\\":\\\"77.5\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":37237200}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"act\\\":1,\\\"total\\\":516000}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"cost\\\":1438000,\\\"act\\\":1,\\\"total\\\":1438000}\",\"peel\":\"{\\\"act\\\":0}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"factor\\\":2,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":3130000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":82,\"total_cost\":\"42321200\",\"act\":1,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(789, 'fill_finishes', 'removeDataTable', 53, 1, 0, '{\"id\":53,\"code\":null,\"product_qty\":\"10000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"56\\\",\\\"materal\\\":\\\"16\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":22436000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"56\\\",\\\"materal\\\":\\\"18\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":22436000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"20\\\",\\\"width\\\":\\\"80\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":14900000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"19\\\",\\\"width\\\":\\\"79\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":14306000,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"fill_cost\\\":74078000,\\\"act\\\":1,\\\"total\\\":74078000}\",\"finish\":\"{\\\"stage\\\":[{\\\"materal\\\":\\\"53\\\",\\\"qttv_price\\\":500,\\\"cost\\\":5000000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"54\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"finish_cost\\\":11000000,\\\"act\\\":1,\\\"total\\\":11000000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":85078000,\"created_at\":\"2023-10-21 08:45:30\",\"updated_at\":\"2023-10-21 08:45:30\",\"product\":82,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(790, 'quotes', 'removeDataTable', 116, 1, 0, '{\"id\":116,\"seri\":\"BG-000118\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":20,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"432406447.5\",\"total_amount\":\"432406447.5\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 08:31:07\",\"updated_at\":\"2023-10-21 08:45:33\",\"created_by\":1}', 1, '2024-02-21 14:21:29', '2024-02-21 14:21:29'),
(791, 'products', 'removeDataTable', 81, 1, 0, '{\"id\":81,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 M\\u00e3 A HQT 2024\",\"category\":1,\"product_style\":11,\"qty\":\"10000\",\"design\":1,\"length\":\"36\",\"width\":\"42\",\"height\":\"10\",\"quote_id\":115,\"order\":null,\"total_cost\":\"421298807.5\",\"total_amount\":\"421298807.5\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"130\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(7).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 08:18:05\",\"updated_at\":\"2023-10-21 08:24:17\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:34', '2024-02-21 14:21:34'),
(796, 'supplies', 'removeDataTable', 149, 1, 0, '{\"id\":149,\"code\":null,\"name\":51,\"product_qty\":10000,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":5000,\"compent_percent\":\"100\",\"compent_plus\":100,\"supp_qty\":5200,\"size\":\"{\\\"length\\\":\\\"52.5\\\",\\\"width\\\":\\\"91\\\",\\\"supply_type\\\":\\\"5\\\",\\\"supply_price\\\":\\\"129\\\",\\\"qttv_price\\\":2.465,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":61237994.99999999}\",\"cut\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"cost\\\":1596625,\\\"act\\\":1,\\\"total\\\":1596625}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":222000}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"factor\\\":2,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":3130000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":81,\"total_cost\":\"66186620\",\"act\":1,\"created_at\":\"2023-10-21 08:18:05\",\"updated_at\":\"2023-10-21 08:18:05\",\"created_by\":1}', 1, '2024-02-21 14:21:34', '2024-02-21 14:21:34'),
(797, 'supplies', 'removeDataTable', 150, 1, 0, '{\"id\":150,\"code\":null,\"name\":51,\"product_qty\":10000,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":5000,\"compent_percent\":\"100\",\"compent_plus\":100,\"supp_qty\":5200,\"size\":\"{\\\"length\\\":\\\"52.5\\\",\\\"width\\\":\\\"91\\\",\\\"supply_type\\\":\\\"5\\\",\\\"supply_price\\\":\\\"129\\\",\\\"qttv_price\\\":2.465,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":61237994.99999999}\",\"cut\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"cost\\\":1596625,\\\"act\\\":1,\\\"total\\\":1596625}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":222000}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"factor\\\":2,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":3130000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":81,\"total_cost\":\"66186620\",\"act\":1,\"created_at\":\"2023-10-21 08:18:06\",\"updated_at\":\"2023-10-21 08:18:06\",\"created_by\":1}', 1, '2024-02-21 14:21:34', '2024-02-21 14:21:34'),
(798, 'supplies', 'removeDataTable', 151, 1, 0, '{\"id\":151,\"code\":null,\"name\":50,\"product_qty\":10000,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":5000,\"compent_percent\":\"100\",\"compent_plus\":100,\"supp_qty\":5200,\"size\":\"{\\\"length\\\":\\\"48\\\",\\\"width\\\":\\\"77.5\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":37237200}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"act\\\":1,\\\"total\\\":516000}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5200,\\\"handle_qty\\\":5050,\\\"cost\\\":1438000,\\\"act\\\":1,\\\"total\\\":1438000}\",\"peel\":\"{\\\"act\\\":0}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"factor\\\":2,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":3130000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":81,\"total_cost\":\"42321200\",\"act\":1,\"created_at\":\"2023-10-21 08:18:06\",\"updated_at\":\"2023-10-21 08:18:06\",\"created_by\":1}', 1, '2024-02-21 14:21:34', '2024-02-21 14:21:34'),
(799, 'fill_finishes', 'removeDataTable', 52, 1, 0, '{\"id\":52,\"code\":null,\"product_qty\":\"10000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"56\\\",\\\"materal\\\":\\\"16\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":22436000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"56\\\",\\\"materal\\\":\\\"18\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":22436000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"20\\\",\\\"width\\\":\\\"80\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":14900000,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"19\\\",\\\"width\\\":\\\"79\\\",\\\"materal\\\":\\\"19\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":14306000,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"fill_cost\\\":74078000,\\\"act\\\":1,\\\"total\\\":74078000}\",\"finish\":\"{\\\"stage\\\":[{\\\"materal\\\":\\\"53\\\",\\\"qttv_price\\\":500,\\\"cost\\\":5000000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"58\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"54\\\",\\\"qttv_price\\\":150,\\\"cost\\\":1500000},{\\\"materal\\\":\\\"68\\\",\\\"qttv_price\\\":300,\\\"cost\\\":3000000}],\\\"ext_price\\\":\\\"1000\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"finish_cost\\\":14000000,\\\"act\\\":1,\\\"total\\\":24000000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":98078000,\"created_at\":\"2023-10-21 08:18:06\",\"updated_at\":\"2023-10-21 08:18:06\",\"product\":81,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:34', '2024-02-21 14:21:34'),
(800, 'quotes', 'removeDataTable', 115, 1, 0, '{\"id\":115,\"seri\":\"BG-000115\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":20,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"421298807.5\",\"total_amount\":\"421298807.5\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 08:07:21\",\"updated_at\":\"2023-10-21 08:22:45\",\"created_by\":1}', 1, '2024-02-21 14:21:34', '2024-02-21 14:21:34'),
(801, 'products', 'removeDataTable', 80, 1, 0, '{\"id\":80,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 V\\u00c1CH CHUNG NG\\u0102N CHAI R\\u01af\\u1ee2U HQT 2024\",\"category\":1,\"product_style\":10,\"qty\":\"100000\",\"design\":1,\"length\":\"1\",\"width\":\"1\",\"height\":\"1\",\"quote_id\":114,\"order\":null,\"total_cost\":\"320790947.2\",\"total_amount\":\"320790947.2\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"129\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(6).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(6).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 08:01:37\",\"updated_at\":\"2023-10-21 08:04:30\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:39', '2024-02-21 14:21:39'),
(803, 'supplies', 'removeDataTable', 148, 1, 0, '{\"id\":148,\"code\":null,\"name\":49,\"product_qty\":100000,\"nqty\":\"6\",\"double\":0,\"base_supp_qty\":16667,\"compent_percent\":\"334\",\"compent_plus\":100,\"supp_qty\":17101,\"size\":\"{\\\"length\\\":\\\"54\\\",\\\"width\\\":\\\"56\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":17101,\\\"act\\\":1,\\\"total\\\":99548341.2}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":17101,\\\"handle_qty\\\":16717,\\\"act\\\":1,\\\"total\\\":1468080}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":17101,\\\"handle_qty\\\":16717,\\\"cost\\\":3118750,\\\"act\\\":1,\\\"total\\\":3118750}\",\"peel\":\"{\\\"act\\\":0}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":101000,\\\"factor\\\":1,\\\"handle_qty\\\":100050,\\\"act\\\":1,\\\"total\\\":15250000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":80,\"total_cost\":\"119385171.2\",\"act\":1,\"created_at\":\"2023-10-21 08:01:37\",\"updated_at\":\"2023-10-21 08:01:37\",\"created_by\":1}', 1, '2024-02-21 14:21:39', '2024-02-21 14:21:39'),
(804, 'fill_finishes', 'removeDataTable', 51, 1, 0, '{\"id\":51,\"code\":null,\"product_qty\":\"100000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"19\\\",\\\"width\\\":\\\"53\\\",\\\"materal\\\":\\\"20\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":110719999.99999999,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":100000,\\\"handle_qty\\\":100050,\\\"fill_cost\\\":110719999.99999999,\\\"act\\\":1,\\\"total\\\":110719999.99999999}\",\"finish\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":100000,\\\"handle_qty\\\":100050,\\\"finish_cost\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":100000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":110720000,\"created_at\":\"2023-10-21 08:01:37\",\"updated_at\":\"2023-10-21 08:01:37\",\"product\":80,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:39', '2024-02-21 14:21:39'),
(805, 'quotes', 'removeDataTable', 114, 1, 0, '{\"id\":114,\"seri\":\"BG-000114\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":20,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"320790947.2\",\"total_amount\":\"320790947.2\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 07:58:00\",\"updated_at\":\"2023-10-21 08:03:57\",\"created_by\":1}', 1, '2024-02-21 14:21:39', '2024-02-21 14:21:39'),
(806, 'products', 'removeDataTable', 79, 1, 0, '{\"id\":79,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 \\u0110\\u00c1Y CHAI R\\u01af\\u1ee2U HQT 2024\",\"category\":1,\"product_style\":10,\"qty\":\"100000\",\"design\":1,\"length\":\"1\",\"width\":\"1\",\"height\":\"1\",\"quote_id\":113,\"order\":null,\"total_cost\":\"100476981.2\",\"total_amount\":\"100476981.2\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"128\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(5).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(5).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 07:56:21\",\"updated_at\":\"2023-10-21 07:56:21\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:44', '2024-02-21 14:21:44'),
(808, 'supplies', 'removeDataTable', 147, 1, 0, '{\"id\":147,\"code\":null,\"name\":49,\"product_qty\":100000,\"nqty\":\"7\",\"double\":0,\"base_supp_qty\":14286,\"compent_percent\":\"286\",\"compent_plus\":100,\"supp_qty\":14672,\"size\":\"{\\\"length\\\":\\\"25\\\",\\\"width\\\":\\\"62\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":14672,\\\"act\\\":1,\\\"total\\\":43777580}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":14672,\\\"handle_qty\\\":14336,\\\"act\\\":1,\\\"total\\\":1273760}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":14672,\\\"handle_qty\\\":14336,\\\"cost\\\":2533300,\\\"act\\\":1,\\\"total\\\":2533300}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":101000,\\\"handle_qty\\\":100050,\\\"act\\\":1,\\\"total\\\":2040000}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":101000,\\\"factor\\\":1,\\\"handle_qty\\\":100050,\\\"act\\\":1,\\\"total\\\":15250000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":79,\"total_cost\":\"64874640\",\"act\":1,\"created_at\":\"2023-10-21 07:56:21\",\"updated_at\":\"2023-10-21 07:56:21\",\"created_by\":1}', 1, '2024-02-21 14:21:44', '2024-02-21 14:21:44'),
(809, 'fill_finishes', 'removeDataTable', 50, 1, 0, '{\"id\":50,\"code\":null,\"product_qty\":\"100000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"145\\\",\\\"qty_pro\\\":100000,\\\"handle_qty\\\":100050,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":14500000}\",\"finish\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":100000,\\\"handle_qty\\\":100050,\\\"finish_cost\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":100000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":14500000,\"created_at\":\"2023-10-21 07:56:21\",\"updated_at\":\"2023-10-21 07:56:21\",\"product\":79,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:21:44', '2024-02-21 14:21:44'),
(810, 'quotes', 'removeDataTable', 113, 1, 0, '{\"id\":113,\"seri\":\"BG-000113\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":20,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"100476981.2\",\"total_amount\":\"100476981.2\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 07:51:27\",\"updated_at\":\"2023-10-21 07:56:33\",\"created_by\":1}', 1, '2024-02-21 14:21:44', '2024-02-21 14:21:44'),
(811, 'products', 'removeDataTable', 78, 1, 0, '{\"id\":78,\"code\":null,\"name\":\"T\\u00ednh gi\\u00e1 C\\u1ed4 CHAI R\\u01af\\u1ee2U HQT 2024\",\"category\":6,\"product_style\":null,\"qty\":\"100000\",\"design\":1,\"length\":\"58\",\"width\":null,\"height\":\"62\",\"quote_id\":112,\"order\":null,\"total_cost\":\"43440712.32\",\"total_amount\":\"43440712.32\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"127\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(4).cdr\\\",\\\"name\\\":\\\"1 T\\u00daI QU\\u00c0 T\\u1ebeT KT chu\\u1ea9n 2024 3 lo\\u1ea1i CHU\\u1ea8N NH\\u1ea4T 9999(4).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 07:45:42\",\"updated_at\":\"2023-10-21 07:50:51\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:21:48', '2024-02-21 14:21:48'),
(813, 'quotes', 'removeDataTable', 112, 1, 0, '{\"id\":112,\"seri\":\"BG-000113\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"43440712.32\",\"total_amount\":\"43440712.32\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 07:39:25\",\"updated_at\":\"2023-10-21 07:50:54\",\"created_by\":1}', 1, '2024-02-21 14:21:48', '2024-02-21 14:21:48'),
(814, 'products', 'removeDataTable', 77, 1, 0, '{\"id\":77,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng A742791 PARAMOUNT\",\"category\":1,\"product_style\":10,\"qty\":\"3500\",\"design\":1,\"length\":\"23.8\",\"width\":\"6\",\"height\":\"3\",\"quote_id\":111,\"order\":null,\"total_cost\":\"14050807.72\",\"total_amount\":\"17060969.264\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"126\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/A5-A9(1).cdr\\\",\\\"name\\\":\\\"A5-A9(1).cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 06:53:49\",\"updated_at\":\"2023-10-21 07:00:30\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:22:06', '2024-02-21 14:22:06'),
(816, 'supplies', 'removeDataTable', 145, 1, 0, '{\"id\":145,\"code\":null,\"name\":51,\"product_qty\":3500,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":1750,\"compent_percent\":\"35\",\"compent_plus\":50,\"supp_qty\":1835,\"size\":\"{\\\"length\\\":\\\"22\\\",\\\"width\\\":\\\"29\\\",\\\"supply_type\\\":\\\"5\\\",\\\"supply_price\\\":\\\"124\\\",\\\"qttv_price\\\":1.464,\\\"supp_qty\\\":1835,\\\"act\\\":1,\\\"total\\\":1713948.72}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1835,\\\"handle_qty\\\":1800,\\\"act\\\":1,\\\"total\\\":246800}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1835,\\\"handle_qty\\\":1800,\\\"cost\\\":470950,\\\"act\\\":1,\\\"total\\\":470950}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":3535,\\\"handle_qty\\\":3550,\\\"act\\\":1,\\\"total\\\":90700}\",\"mill\":\"{\\\"act\\\":0}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":77,\"total_cost\":\"2522398.72\",\"act\":1,\"created_at\":\"2023-10-21 06:57:41\",\"updated_at\":\"2023-10-21 06:57:41\",\"created_by\":1}', 1, '2024-02-21 14:22:07', '2024-02-21 14:22:07'),
(817, 'supplies', 'removeDataTable', 146, 1, 0, '{\"id\":146,\"code\":null,\"name\":52,\"product_qty\":3500,\"nqty\":\"2\",\"double\":0,\"base_supp_qty\":1750,\"compent_percent\":\"35\",\"compent_plus\":50,\"supp_qty\":1835,\"size\":\"{\\\"length\\\":\\\"25\\\",\\\"width\\\":\\\"31\\\",\\\"supply_type\\\":\\\"5\\\",\\\"supply_price\\\":\\\"124\\\",\\\"qttv_price\\\":1.464,\\\"supp_qty\\\":1835,\\\"act\\\":1,\\\"total\\\":2081990.9999999998}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1835,\\\"handle_qty\\\":1800,\\\"act\\\":1,\\\"total\\\":246800}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1835,\\\"handle_qty\\\":1800,\\\"cost\\\":491500,\\\"act\\\":1,\\\"total\\\":491500}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":3535,\\\"handle_qty\\\":3550,\\\"act\\\":1,\\\"total\\\":90700}\",\"mill\":\"{\\\"act\\\":0}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":77,\"total_cost\":\"2910991\",\"act\":1,\"created_at\":\"2023-10-21 06:57:41\",\"updated_at\":\"2023-10-21 06:57:41\",\"created_by\":1}', 1, '2024-02-21 14:22:07', '2024-02-21 14:22:07'),
(818, 'fill_finishes', 'removeDataTable', 49, 1, 0, '{\"id\":49,\"code\":null,\"product_qty\":\"3500\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"15\\\",\\\"width\\\":\\\"33\\\",\\\"materal\\\":\\\"18\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":3089500,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"13.4\\\",\\\"width\\\":\\\"31.2\\\",\\\"materal\\\":\\\"16\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":2927968,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":3500,\\\"handle_qty\\\":3550,\\\"fill_cost\\\":6017468,\\\"act\\\":1,\\\"total\\\":6017468}\",\"finish\":\"{\\\"ext_price\\\":\\\"500\\\",\\\"qty_pro\\\":3500,\\\"handle_qty\\\":3550,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":1750000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":3500,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":7767468,\"created_at\":\"2023-10-21 06:57:41\",\"updated_at\":\"2023-10-21 06:57:41\",\"product\":77,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:22:07', '2024-02-21 14:22:07'),
(819, 'quotes', 'removeDataTable', 111, 1, 0, '{\"id\":111,\"seri\":\"BG-000112\",\"status\":\"not_accepted\",\"name\":\"CTY TNHH VIETBRAND\",\"product_qty\":null,\"customer_id\":4,\"company_name\":\"CTY TNHH VIETBRAND\",\"contacter\":\"Ph\\u01b0\\u01a1ng\",\"address\":\"H\\u00e0 Nam\",\"email\":\"Phuongn@vietbrandco.vn\",\"phone\":\"0977070289\",\"telephone\":\"0977070289\",\"city\":9047,\"profit\":\"25\",\"ship_price\":\"1000000\",\"total_cost\":\"14050807.72\",\"total_amount\":\"17813509.65\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 06:48:26\",\"updated_at\":\"2023-10-21 07:00:26\",\"created_by\":1}', 1, '2024-02-21 14:22:07', '2024-02-21 14:22:07'),
(820, 'products', 'removeDataTable', 76, 1, 0, '{\"id\":76,\"code\":null,\"name\":\"H\\u1ed9p c\\u1ee9ng A502770 PARAMOUNT\",\"category\":1,\"product_style\":10,\"qty\":\"13000\",\"design\":1,\"length\":\"78\",\"width\":\"80\",\"height\":\"58\",\"quote_id\":110,\"order\":null,\"total_cost\":\"46588845.9\",\"total_amount\":\"51347730.49\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"125\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/A5-A9.cdr\\\",\\\"name\\\":\\\"A5-A9.cdr\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-21 06:38:56\",\"updated_at\":\"2023-10-21 07:07:19\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:22:13', '2024-02-21 14:22:13'),
(823, 'supplies', 'removeDataTable', 143, 1, 0, '{\"id\":143,\"code\":null,\"name\":51,\"product_qty\":13000,\"nqty\":\"4\",\"double\":0,\"base_supp_qty\":3250,\"compent_percent\":\"65\",\"compent_plus\":100,\"supp_qty\":3415,\"size\":\"{\\\"length\\\":\\\"37\\\",\\\"width\\\":\\\"38\\\",\\\"supply_type\\\":\\\"5\\\",\\\"supply_price\\\":\\\"123\\\",\\\"qttv_price\\\":1.31,\\\"supp_qty\\\":3415,\\\"act\\\":1,\\\"total\\\":6289951.9}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3415,\\\"handle_qty\\\":3300,\\\"act\\\":1,\\\"total\\\":373200}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3415,\\\"handle_qty\\\":3300,\\\"cost\\\":823150,\\\"act\\\":1,\\\"total\\\":823150}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":13130,\\\"handle_qty\\\":13050,\\\"act\\\":1,\\\"total\\\":282600}\",\"mill\":\"{\\\"act\\\":0}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":76,\"total_cost\":\"7768901.9\",\"act\":1,\"created_at\":\"2023-10-21 06:41:23\",\"updated_at\":\"2023-10-21 06:41:23\",\"created_by\":1}', 1, '2024-02-21 14:22:13', '2024-02-21 14:22:13'),
(824, 'supplies', 'removeDataTable', 144, 1, 0, '{\"id\":144,\"code\":null,\"name\":52,\"product_qty\":13000,\"nqty\":\"4\",\"double\":0,\"base_supp_qty\":3250,\"compent_percent\":\"65\",\"compent_plus\":100,\"supp_qty\":3415,\"size\":\"{\\\"length\\\":\\\"40\\\",\\\"width\\\":\\\"39\\\",\\\"supply_type\\\":\\\"5\\\",\\\"supply_price\\\":\\\"123\\\",\\\"qttv_price\\\":1.31,\\\"supp_qty\\\":3415,\\\"act\\\":1,\\\"total\\\":6978894.000000001}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3415,\\\"handle_qty\\\":3300,\\\"act\\\":1,\\\"total\\\":373200}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":3415,\\\"handle_qty\\\":3300,\\\"cost\\\":846250,\\\"act\\\":1,\\\"total\\\":846250}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":13130,\\\"handle_qty\\\":13050,\\\"act\\\":1,\\\"total\\\":282600}\",\"mill\":\"{\\\"act\\\":0}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":76,\"total_cost\":\"8480944\",\"act\":1,\"created_at\":\"2023-10-21 06:41:23\",\"updated_at\":\"2023-10-21 06:41:23\",\"created_by\":1}', 1, '2024-02-21 14:22:14', '2024-02-21 14:22:14'),
(825, 'fill_finishes', 'removeDataTable', 48, 1, 0, '{\"id\":48,\"code\":null,\"product_qty\":\"13000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"22\\\",\\\"width\\\":\\\"23\\\",\\\"materal\\\":\\\"18\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":10746799.999999998,\\\"work_price\\\":500,\\\"shape_price\\\":300000},{\\\"length\\\":\\\"21\\\",\\\"width\\\":\\\"21\\\",\\\"materal\\\":\\\"16\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":10239799.999999998,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":13000,\\\"handle_qty\\\":13050,\\\"fill_cost\\\":20986599.999999996,\\\"act\\\":1,\\\"total\\\":20986599.999999996}\",\"finish\":\"{\\\"ext_price\\\":\\\"500\\\",\\\"qty_pro\\\":13000,\\\"handle_qty\\\":13050,\\\"finish_cost\\\":0,\\\"act\\\":1,\\\"total\\\":6500000}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":13000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":27486600,\"created_at\":\"2023-10-21 06:41:23\",\"updated_at\":\"2023-10-21 06:41:23\",\"product\":76,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:22:14', '2024-02-21 14:22:14'),
(826, 'quotes', 'removeDataTable', 110, 1, 0, '{\"id\":110,\"seri\":\"BG-000112\",\"status\":\"not_accepted\",\"name\":\"CTY TNHH VIETBRAND\",\"product_qty\":null,\"customer_id\":4,\"company_name\":\"CTY TNHH VIETBRAND\",\"contacter\":\"Ph\\u01b0\\u01a1ng\",\"address\":\"H\\u00e0 Nam\",\"email\":\"Phuongn@vietbrandco.vn\",\"phone\":\"0977070289\",\"telephone\":\"0977070289\",\"city\":9047,\"profit\":\"10\",\"ship_price\":\"1000000\",\"total_cost\":\"46588845.9\",\"total_amount\":\"51347730.49\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-21 06:30:45\",\"updated_at\":\"2023-10-21 07:07:17\",\"created_by\":1}', 1, '2024-02-21 14:22:14', '2024-02-21 14:22:14'),
(827, 'products', 'removeDataTable', 75, 1, 0, '{\"id\":75,\"code\":null,\"name\":\"2024 PH\\u1ee4 KI\\u1ec6N \\u0110\\u00c1Y CHAI R\\u01af\\u1ee2U + C\\u1ed4 CHAI\",\"category\":1,\"product_style\":10,\"qty\":\"100000\",\"design\":1,\"length\":\"1\",\"width\":\"1\",\"height\":\"1\",\"quote_id\":106,\"order\":null,\"total_cost\":\"139662235.15\",\"total_amount\":\"139662235.15\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"123\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/N\\u1ec1n m\\u00e0u xanh(2).jpg\\\",\\\"name\\\":\\\"N\\u1ec1n m\\u00e0u xanh(2).jpg\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-18 07:12:16\",\"updated_at\":\"2023-10-18 07:12:54\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:22:19', '2024-02-21 14:22:19'),
(830, 'supplies', 'removeDataTable', 142, 1, 0, '{\"id\":142,\"code\":null,\"name\":49,\"product_qty\":100000,\"nqty\":\"7\",\"double\":0,\"base_supp_qty\":14286,\"compent_percent\":\"286\",\"compent_plus\":0,\"supp_qty\":14572,\"size\":\"{\\\"length\\\":\\\"63\\\",\\\"width\\\":\\\"25.5\\\",\\\"supply_type\\\":\\\"21\\\",\\\"supply_price\\\":\\\"121\\\",\\\"qttv_price\\\":1.925,\\\"supp_qty\\\":14572,\\\"act\\\":1,\\\"total\\\":45064092.150000006}\",\"cut\":\"{\\\"machine\\\":\\\"18\\\",\\\"model_price\\\":0,\\\"work_price\\\":80,\\\"shape_price\\\":100000,\\\"supp_qty\\\":14572,\\\"handle_qty\\\":14336,\\\"act\\\":1,\\\"total\\\":1265760}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":14572,\\\"handle_qty\\\":14336,\\\"cost\\\":2526775,\\\"act\\\":1,\\\"total\\\":2526775}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":101000,\\\"handle_qty\\\":100050,\\\"act\\\":1,\\\"total\\\":2040000}\",\"mill\":\"{\\\"machine\\\":\\\"7\\\",\\\"model_price\\\":0,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"qty_pro\\\":101000,\\\"factor\\\":1,\\\"handle_qty\\\":100050,\\\"act\\\":1,\\\"total\\\":15250000}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":75,\"total_cost\":\"66146627.15\",\"act\":1,\"created_at\":\"2023-10-18 07:12:54\",\"updated_at\":\"2023-10-18 07:12:54\",\"created_by\":1}', 1, '2024-02-21 14:22:19', '2024-02-21 14:22:19'),
(831, 'fill_finishes', 'removeDataTable', 47, 1, 0, '{\"id\":47,\"code\":null,\"product_qty\":\"100000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":null,\\\"width\\\":null,\\\"machine\\\":null,\\\"qttv_price\\\":0,\\\"cost\\\":0}],\\\"ext_price\\\":\\\"200\\\",\\\"qty_pro\\\":100000,\\\"handle_qty\\\":100050,\\\"fill_cost\\\":0,\\\"act\\\":1,\\\"total\\\":20000000}\",\"finish\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":100000,\\\"handle_qty\\\":100050,\\\"finish_cost\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":100000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":20000000,\"created_at\":\"2023-10-18 07:12:54\",\"updated_at\":\"2023-10-18 07:12:54\",\"product\":75,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:22:19', '2024-02-21 14:22:19'),
(832, 'quotes', 'removeDataTable', 106, 1, 0, '{\"id\":106,\"seri\":\"BG-000108\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":19,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"139662235.15\",\"total_amount\":\"139662235.15\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-18 07:06:51\",\"updated_at\":\"2023-10-19 15:10:39\",\"created_by\":1}', 1, '2024-02-21 14:22:20', '2024-02-21 14:22:20'),
(833, 'products', 'removeDataTable', 74, 1, 0, '{\"id\":74,\"code\":null,\"name\":\"2024 Tr\\u1ee5 tr\\u00f2n \\u0111\\u01b0\\u1eddng k\\u00ednh 32 x cao12cm\",\"category\":6,\"product_style\":null,\"qty\":\"10000\",\"design\":1,\"length\":null,\"width\":null,\"height\":null,\"quote_id\":102,\"order\":null,\"total_cost\":\"121663106.25\",\"total_amount\":\"121663106.25\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"122\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/N\\u1ec1n m\\u00e0u xanh(1).jpg\\\",\\\"name\\\":\\\"N\\u1ec1n m\\u00e0u xanh(1).jpg\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-18 06:54:41\",\"updated_at\":\"2023-10-18 06:54:41\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:22:30', '2024-02-21 14:22:30');
INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(835, 'quotes', 'removeDataTable', 102, 1, 0, '{\"id\":102,\"seri\":\"BG-000102\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":19,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"2000000\",\"total_cost\":\"121663106.25\",\"total_amount\":\"123663106.25\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-18 06:36:17\",\"updated_at\":\"2023-10-18 06:54:56\",\"created_by\":1}', 1, '2024-02-21 14:22:31', '2024-02-21 14:22:31'),
(836, 'products', 'removeDataTable', 73, 1, 0, '{\"id\":73,\"code\":null,\"name\":\"2024 BG khay thuy\\u1ec1n ph\\u1ed5 th\\u00f4ng\",\"category\":1,\"product_style\":16,\"qty\":\"10000\",\"design\":1,\"length\":\"15\",\"width\":\"26\",\"height\":\"15\",\"quote_id\":101,\"order\":null,\"total_cost\":\"109118785.5\",\"total_amount\":\"109118785.5\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"121\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/N\\u1ec1n m\\u00e0u xanh.jpg\\\",\\\"name\\\":\\\"N\\u1ec1n m\\u00e0u xanh.jpg\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2023-10-18 06:13:46\",\"updated_at\":\"2023-10-19 14:44:00\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":null,\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:22:35', '2024-02-21 14:22:35'),
(839, 'supplies', 'removeDataTable', 140, 1, 0, '{\"id\":140,\"code\":null,\"name\":54,\"product_qty\":10000,\"nqty\":\"5\",\"double\":0,\"base_supp_qty\":2000,\"compent_percent\":\"40\",\"compent_plus\":50,\"supp_qty\":2090,\"size\":\"{\\\"length\\\":\\\"46\\\",\\\"width\\\":\\\"60\\\",\\\"supply_type\\\":\\\"50\\\",\\\"supply_price\\\":\\\"224\\\",\\\"qttv_price\\\":0.65,\\\"supp_qty\\\":2090,\\\"act\\\":1,\\\"total\\\":3749460}\",\"cut\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":2090,\\\"handle_qty\\\":2050,\\\"cost\\\":827500,\\\"act\\\":1,\\\"total\\\":827500}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":222000}\",\"mill\":\"{\\\"act\\\":0}\",\"note\":\"2 ch\\u00e2n ch\\u1ed1ng\",\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":73,\"total_cost\":\"4798960\",\"act\":1,\"created_at\":\"2023-10-19 14:38:58\",\"updated_at\":\"2023-10-19 14:38:58\",\"created_by\":1}', 1, '2024-02-21 14:22:35', '2024-02-21 14:22:35'),
(840, 'supplies', 'removeDataTable', 141, 1, 0, '{\"id\":141,\"code\":null,\"name\":54,\"product_qty\":10000,\"nqty\":\"6\",\"double\":0,\"base_supp_qty\":1667,\"compent_percent\":\"34\",\"compent_plus\":50,\"supp_qty\":1751,\"size\":\"{\\\"length\\\":\\\"66\\\",\\\"width\\\":\\\"55\\\",\\\"supply_type\\\":\\\"50\\\",\\\"supply_price\\\":\\\"224\\\",\\\"qttv_price\\\":0.65,\\\"supp_qty\\\":1751,\\\"act\\\":1,\\\"total\\\":4131484.5}\",\"cut\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"machine\\\":\\\"21\\\",\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":1751,\\\"handle_qty\\\":1717,\\\"cost\\\":907150,\\\"act\\\":1,\\\"total\\\":907150}\",\"peel\":\"{\\\"machine\\\":\\\"39\\\",\\\"model_price\\\":0,\\\"work_price\\\":20,\\\"shape_price\\\":20000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10050,\\\"act\\\":1,\\\"total\\\":222000}\",\"mill\":\"{\\\"act\\\":0}\",\"note\":null,\"handle_elevate\":null,\"type\":\"carton\",\"status\":null,\"product\":73,\"total_cost\":\"5260634.5\",\"act\":1,\"created_at\":\"2023-10-19 14:38:58\",\"updated_at\":\"2023-10-19 14:38:58\",\"created_by\":1}', 1, '2024-02-21 14:22:35', '2024-02-21 14:22:35'),
(841, 'fill_finishes', 'removeDataTable', 46, 1, 0, '{\"id\":46,\"code\":null,\"product_qty\":\"10000\",\"fill\":\"{\\\"stage\\\":[{\\\"length\\\":\\\"51\\\",\\\"width\\\":\\\"62\\\",\\\"materal\\\":\\\"20\\\",\\\"machine\\\":\\\"48\\\",\\\"qttv_price\\\":0.6,\\\"cost\\\":24272000,\\\"work_price\\\":500,\\\"shape_price\\\":300000}],\\\"ext_price\\\":\\\"1000\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"fill_cost\\\":24272000,\\\"act\\\":1,\\\"total\\\":34272000}\",\"finish\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"qty_pro\\\":10000,\\\"handle_qty\\\":10050,\\\"finish_cost\\\":0,\\\"act\\\":0,\\\"total\\\":0}\",\"magnet\":\"{\\\"type\\\":null,\\\"qty\\\":null,\\\"qttv_price\\\":0,\\\"magnet_perc\\\":1.05,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"note\":null,\"status\":null,\"total_cost\":34272000,\"created_at\":\"2023-10-19 14:38:58\",\"updated_at\":\"2023-10-19 14:38:58\",\"product\":73,\"act\":1,\"created_by\":1}', 1, '2024-02-21 14:22:35', '2024-02-21 14:22:35'),
(842, 'quotes', 'removeDataTable', 101, 1, 0, '{\"id\":101,\"seri\":\"BG-000108\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":19,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":null,\"profit\":\"0\",\"ship_price\":\"1500000\",\"total_cost\":\"109118785.5\",\"total_amount\":\"110618785.5\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-10-18 06:06:43\",\"updated_at\":\"2023-10-19 14:41:52\",\"created_by\":1}', 1, '2024-02-21 14:22:36', '2024-02-21 14:22:36'),
(847, 'products', 'removeDataTable', 118, 1, 0, '{\"id\":118,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":134,\"order\":null,\"total_cost\":\"764812432\",\"total_amount\":\"764812432\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"157\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a(1).pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a(1).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 14:15:04\",\"updated_at\":\"2024-02-21 14:17:48\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:29:18', '2024-02-21 14:29:18'),
(848, 'papers', 'removeDataTable', 252, 1, 0, '{\"id\":252,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":100000,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":646795000,\\\"act\\\":1,\\\"total\\\":646795000}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":\\\"D\\\\u00c2Y DU TR\\\\u1eaeNG LO\\\\u1ea0I TO\\\",\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":31366600}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"764812432\",\"product\":118,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 14:15:04\",\"updated_at\":\"2024-02-21 14:15:04\",\"created_by\":1}', 1, '2024-02-21 14:29:18', '2024-02-21 14:29:18'),
(849, 'quotes', 'removeDataTable', 134, 1, 0, '{\"id\":134,\"seri\":\"BG-00000135\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"764812432\",\"total_amount\":\"764812432\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 14:12:41\",\"updated_at\":\"2024-02-21 14:17:46\",\"created_by\":1}', 1, '2024-02-21 14:29:18', '2024-02-21 14:29:18'),
(850, 'quotes', 'insert_customer', 136, 1, 0, '{\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"email\":\"kd1.intuandung@gmail.com\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"city\":\"351\"}', 1, '2024-02-21 14:29:29', '2024-02-21 14:29:29'),
(851, 'devices', 'update', 52, 1, 0, '{\"model_price\":{\"old\":\"150\",\"new\":\"0\"}}', 1, '2024-02-21 14:33:02', '2024-02-21 14:33:02'),
(852, 'devices', 'update', 51, 1, 0, '{\"model_price\":{\"old\":\"150\",\"new\":\"0\"}}', 1, '2024-02-21 14:33:10', '2024-02-21 14:33:10'),
(853, 'devices', 'update', 50, 1, 0, '{\"model_price\":{\"old\":\"150\",\"new\":\"0\"}}', 1, '2024-02-21 14:33:15', '2024-02-21 14:33:15'),
(854, 'devices', 'update', 49, 1, 0, '{\"model_price\":{\"old\":\"150\",\"new\":\"0\"}}', 1, '2024-02-21 14:33:21', '2024-02-21 14:33:21'),
(855, 'products', 'removeDataTable', 119, 1, 0, '{\"id\":119,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A ok\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":135,\"order\":null,\"total_cost\":\"764812432\",\"total_amount\":\"764812432\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"157\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a(1).pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a(1).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 14:25:33\",\"updated_at\":\"2024-02-21 14:25:49\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:34:04', '2024-02-21 14:34:04'),
(856, 'papers', 'removeDataTable', 253, 1, 0, '{\"id\":253,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":100000,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":646795000,\\\"act\\\":1,\\\"total\\\":646795000}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":\\\"D\\\\u00c2Y DU TR\\\\u1eaeNG LO\\\\u1ea0I TO\\\",\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":31366600}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"764812432\",\"product\":119,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 14:25:33\",\"updated_at\":\"2024-02-21 14:25:33\",\"created_by\":1}', 1, '2024-02-21 14:34:04', '2024-02-21 14:34:04'),
(857, 'quotes', 'removeDataTable', 135, 1, 0, '{\"id\":135,\"seri\":\"BG-00000136\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"764812432\",\"total_amount\":\"764812432\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 14:25:33\",\"updated_at\":\"2024-02-21 14:25:37\",\"created_by\":1}', 1, '2024-02-21 14:34:04', '2024-02-21 14:34:04'),
(862, 'products', 'removeDataTable', 121, 1, 0, '{\"id\":121,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":137,\"order\":null,\"total_cost\":\"121379032\",\"total_amount\":\"121379032\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"158\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a(2).pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a(2).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 14:35:51\",\"updated_at\":\"2024-02-21 14:35:51\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:37:01', '2024-02-21 14:37:01'),
(863, 'papers', 'removeDataTable', 255, 1, 0, '{\"id\":255,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3361600,\\\"act\\\":1,\\\"total\\\":3361600}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":31366600}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"121379032\",\"product\":121,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 14:35:51\",\"updated_at\":\"2024-02-21 14:35:51\",\"created_by\":1}', 1, '2024-02-21 14:37:01', '2024-02-21 14:37:01'),
(864, 'quotes', 'removeDataTable', 137, 1, 0, '{\"id\":137,\"seri\":\"BG-00000138\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"121379032\",\"total_amount\":\"121379032\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 14:35:51\",\"updated_at\":\"2024-02-21 14:36:17\",\"created_by\":1}', 1, '2024-02-21 14:37:02', '2024-02-21 14:37:02'),
(865, 'quotes', 'update_customer', 136, 1, 0, '{\"id\":{\"old\":null,\"new\":136},\"seri\":{\"old\":null,\"new\":\"BG-00000138\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"121379032\"},\"total_amount\":{\"old\":null,\"new\":\"121379032\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 14:37:05', '2024-02-21 14:37:05'),
(866, 'devices', 'update', 69, 1, 0, '{\"model_price\":{\"old\":\"150\",\"new\":\"100000\"}}', 1, '2024-02-21 14:37:47', '2024-02-21 14:37:47'),
(875, 'devices', 'update', 69, 1, 0, '{\"model_price\":{\"old\":\"100000\",\"new\":\"150\"}}', 1, '2024-02-21 14:43:20', '2024-02-21 14:43:20'),
(876, 'products', 'removeDataTable', 122, 1, 0, '{\"id\":122,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":138,\"order\":null,\"total_cost\":\"763845832\",\"total_amount\":\"763845832\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"158\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a(2).pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a(2).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 14:38:00\",\"updated_at\":\"2024-02-21 14:38:18\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:44:32', '2024-02-21 14:44:32'),
(877, 'papers', 'removeDataTable', 256, 1, 0, '{\"id\":256,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":100000,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":646795000,\\\"act\\\":1,\\\"total\\\":646795000}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":30400000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"763845832\",\"product\":122,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 14:38:18\",\"updated_at\":\"2024-02-21 14:38:18\",\"created_by\":1}', 1, '2024-02-21 14:44:33', '2024-02-21 14:44:33'),
(878, 'quotes', 'removeDataTable', 138, 1, 0, '{\"id\":138,\"seri\":\"BG-00000139\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"763845832\",\"total_amount\":\"763845832\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 14:38:00\",\"updated_at\":\"2024-02-21 14:38:26\",\"created_by\":1}', 1, '2024-02-21 14:44:33', '2024-02-21 14:44:33'),
(879, 'products', 'removeDataTable', 123, 1, 0, '{\"id\":123,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":139,\"order\":null,\"total_cost\":\"121379032\",\"total_amount\":\"121379032\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"158\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a(2).pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a(2).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"status\":null,\"act\":1,\"created_at\":\"2024-02-21 14:38:38\",\"updated_at\":\"2024-02-21 14:38:42\",\"created_by\":1,\"order_created\":null,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null}', 1, '2024-02-21 14:44:40', '2024-02-21 14:44:40'),
(880, 'papers', 'removeDataTable', 257, 1, 0, '{\"id\":257,\"code\":null,\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3361600,\\\"act\\\":1,\\\"total\\\":3361600}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":31366600}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"121379032\",\"product\":123,\"note\":null,\"main\":1,\"act\":1,\"status\":null,\"created_at\":\"2024-02-21 14:38:38\",\"updated_at\":\"2024-02-21 14:38:38\",\"created_by\":1}', 1, '2024-02-21 14:44:40', '2024-02-21 14:44:40'),
(881, 'quotes', 'removeDataTable', 139, 1, 0, '{\"id\":139,\"seri\":\"BG-00000140\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"121379032\",\"total_amount\":\"121379032\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2024-02-21 14:38:38\",\"updated_at\":\"2024-02-21 14:38:45\",\"created_by\":1}', 1, '2024-02-21 14:44:40', '2024-02-21 14:44:40'),
(882, 'quotes', 'insert', 140, 1, 0, '{\"seri\":\"BG-00000140\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"121379032\",\"total_amount\":\"121379032\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 15:36:02\",\"updated_at\":\"2024-02-21 15:36:02\"}', 1, '2024-02-21 15:36:02', '2024-02-21 15:36:02'),
(883, 'products', 'insert', 124, 1, 882, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":140,\"total_cost\":\"121379032\",\"total_amount\":\"121379032\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"158\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a(2).pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a(2).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 15:36:02\",\"updated_at\":\"2024-02-21 15:36:02\"}', 1, '2024-02-21 15:36:02', '2024-02-21 15:36:02'),
(884, 'papers', 'insert', 258, 1, 883, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3361600,\\\"act\\\":1,\\\"total\\\":3361600}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":31366600}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"121379032\",\"product\":124,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 15:36:02\",\"updated_at\":\"2024-02-21 15:36:02\"}', 1, '2024-02-21 15:36:02', '2024-02-21 15:36:02'),
(885, 'quotes', 'update_customer', 140, 1, 0, '{\"id\":{\"old\":null,\"new\":140},\"seri\":{\"old\":null,\"new\":\"BG-00000141\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"121379032\"},\"total_amount\":{\"old\":null,\"new\":\"121379032\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 15:36:05', '2024-02-21 15:36:05'),
(886, 'quotes', 'insert', 141, 1, 0, '{\"seri\":\"BG-00000141\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"81162946\",\"total_amount\":\"81162946\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 15:37:33\",\"updated_at\":\"2024-02-21 15:37:33\"}', 1, '2024-02-21 15:37:33', '2024-02-21 15:37:33'),
(887, 'products', 'insert', 125, 1, 886, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 C\",\"category\":3,\"product_style\":null,\"qty\":\"10000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":141,\"total_cost\":\"81162946\",\"total_amount\":\"81162946\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"159\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/T\\u00daI S\\u1ed0 2 Kich th\\u01b0\\u1edbc chu\\u1ea9n 2023 ( s\\u1eeda ok ).pdf\\\",\\\"name\\\":\\\"T\\u00daI S\\u1ed0 2 Kich th\\u01b0\\u1edbc chu\\u1ea9n 2023 ( s\\u1eeda ok ).pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"10000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 15:37:33\",\"updated_at\":\"2024-02-21 15:37:33\"}', 1, '2024-02-21 15:37:33', '2024-02-21 15:37:33'),
(888, 'papers', 'insert', 259, 1, 887, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":10000,\"nqty\":1,\"double\":null,\"base_supp_qty\":10050,\"compent_percent\":\"250\",\"compent_plus\":0,\"supp_qty\":10300,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":10300,\\\"act\\\":1,\\\"total\\\":38828322}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":9050,\\\"handle_qty\\\":10000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":4270400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":15167624.000000002}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":10200,\\\"handle_qty\\\":10000,\\\"cost\\\":2596600,\\\"act\\\":1,\\\"total\\\":2596600}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":10100,\\\"handle_qty\\\":10000,\\\"act\\\":1,\\\"total\\\":20300000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":10000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"81162946\",\"product\":125,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 15:37:33\",\"updated_at\":\"2024-02-21 15:37:33\"}', 1, '2024-02-21 15:37:33', '2024-02-21 15:37:33'),
(889, 'quotes', 'update_customer', 141, 1, 0, '{\"id\":{\"old\":null,\"new\":141},\"seri\":{\"old\":null,\"new\":\"BG-00000142\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"81162946\"},\"total_amount\":{\"old\":null,\"new\":\"81162946\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 15:37:37', '2024-02-21 15:37:37'),
(890, 'quotes', 'update_customer', 140, 1, 0, '{\"id\":{\"old\":null,\"new\":140},\"seri\":{\"old\":null,\"new\":\"BG-00000142\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"81162946\"},\"total_amount\":{\"old\":null,\"new\":\"81162946\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 15:52:58', '2024-02-21 15:52:58'),
(891, 'quotes', 'insert', 142, 1, 0, '{\"seri\":\"BG-00000142\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"41913460\",\"total_amount\":\"41913460\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 15:53:24\",\"updated_at\":\"2024-02-21 15:53:24\"}', 1, '2024-02-21 15:53:24', '2024-02-21 15:53:24'),
(892, 'products', 'insert', 126, 1, 891, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 B\",\"category\":3,\"product_style\":null,\"qty\":\"5000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":142,\"total_cost\":\"41913460\",\"total_amount\":\"41913460\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"160\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2B.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2B.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"5000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 15:53:24\",\"updated_at\":\"2024-02-21 15:53:24\"}', 1, '2024-02-21 15:53:24', '2024-02-21 15:53:24'),
(893, 'papers', 'insert', 260, 1, 892, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":5000,\"nqty\":1,\"double\":null,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":0,\"supp_qty\":5200,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":19602648}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":2670400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":7608812.000000001}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"cost\\\":1831600,\\\"act\\\":1,\\\"total\\\":1831600}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"act\\\":1,\\\"total\\\":10200000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"41913460\",\"product\":126,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 15:53:24\",\"updated_at\":\"2024-02-21 15:53:24\"}', 1, '2024-02-21 15:53:24', '2024-02-21 15:53:24'),
(894, 'quotes', 'update_customer', 142, 1, 0, '{\"id\":{\"old\":null,\"new\":142},\"seri\":{\"old\":null,\"new\":\"BG-00000143\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"41913460\"},\"total_amount\":{\"old\":null,\"new\":\"41913460\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 15:55:48', '2024-02-21 15:55:48'),
(895, 'quotes', 'update_customer', 140, 1, 0, '{\"id\":{\"old\":null,\"new\":140},\"seri\":{\"old\":null,\"new\":\"BG-00000143\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"81162946\"},\"total_amount\":{\"old\":null,\"new\":\"81162946\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:04:17', '2024-02-21 16:04:17'),
(896, 'quotes', 'insert', 143, 1, 0, '{\"seri\":\"BG-00000143\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"114941875\",\"total_amount\":\"114941875\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 16:04:38\",\"updated_at\":\"2024-02-21 16:04:38\"}', 1, '2024-02-21 16:04:38', '2024-02-21 16:04:38'),
(897, 'products', 'insert', 127, 1, 896, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 CH\\u1eee A - M\\u00e3 A 01\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"35\",\"width\":\"26.5\",\"height\":\"27\",\"quote_id\":143,\"total_cost\":\"114941875\",\"total_amount\":\"114941875\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"161\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/T\\u00daI CH\\u1eee A - 01.pdf\\\",\\\"name\\\":\\\"T\\u00daI CH\\u1eee A - 01.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 16:04:38\",\"updated_at\":\"2024-02-21 16:04:38\"}', 1, '2024-02-21 16:04:38', '2024-02-21 16:04:38');
INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(898, 'papers', 'insert', 261, 1, 897, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 CH\\u1eee A - M\\u00e3 A 01\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"92.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":54166612.5}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":21207987.5}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3296875,\\\"act\\\":1,\\\"total\\\":3296875}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":30400000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"114941875\",\"product\":127,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 16:04:38\",\"updated_at\":\"2024-02-21 16:04:38\"}', 1, '2024-02-21 16:04:38', '2024-02-21 16:04:38'),
(899, 'quotes', 'update_customer', 143, 1, 0, '{\"id\":{\"old\":null,\"new\":143},\"seri\":{\"old\":null,\"new\":\"BG-00000144\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"114941875\"},\"total_amount\":{\"old\":null,\"new\":\"114941875\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:04:46', '2024-02-21 16:04:46'),
(900, 'quotes', 'insert', 144, 1, 0, '{\"seri\":\"BG-00000144\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"40029962.5\",\"total_amount\":\"40029962.5\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 16:14:18\",\"updated_at\":\"2024-02-21 16:14:18\"}', 1, '2024-02-21 16:14:19', '2024-02-21 16:14:19'),
(901, 'products', 'insert', 128, 1, 900, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 CH\\u1eee A - M\\u00e3 B 02\",\"category\":3,\"product_style\":null,\"qty\":\"5000\",\"design\":4,\"length\":\"35\",\"width\":\"26.5\",\"height\":\"27\",\"quote_id\":144,\"total_cost\":\"40029962.5\",\"total_amount\":\"40029962.5\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"162\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/T\\u00daI CH\\u1eee A - 02.pdf\\\",\\\"name\\\":\\\"T\\u00daI CH\\u1eee A - 02.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"5000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 16:14:19\",\"updated_at\":\"2024-02-21 16:14:19\"}', 1, '2024-02-21 16:14:19', '2024-02-21 16:14:19'),
(902, 'papers', 'insert', 262, 1, 901, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 CH\\u1eee A - M\\u00e3 A 01\",\"product_qty\":5000,\"nqty\":1,\"double\":null,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":0,\"supp_qty\":5200,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"92.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":18290025}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":2670400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":7102662.5}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"cost\\\":1766875,\\\"act\\\":1,\\\"total\\\":1766875}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"act\\\":1,\\\"total\\\":10200000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"40029962.5\",\"product\":128,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 16:14:19\",\"updated_at\":\"2024-02-21 16:14:19\"}', 1, '2024-02-21 16:14:19', '2024-02-21 16:14:19'),
(903, 'quotes', 'update_customer', 144, 1, 0, '{\"id\":{\"old\":null,\"new\":144},\"seri\":{\"old\":null,\"new\":\"BG-00000145\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"40029962.5\"},\"total_amount\":{\"old\":null,\"new\":\"40029962.5\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:14:22', '2024-02-21 16:14:22'),
(904, 'quotes', 'update_customer', 143, 1, 0, '{\"id\":{\"old\":null,\"new\":143},\"seri\":{\"old\":null,\"new\":\"BG-00000145\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"40029962.5\"},\"total_amount\":{\"old\":null,\"new\":\"40029962.5\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:21:14', '2024-02-21 16:21:14'),
(905, 'quotes', 'update_customer', 142, 1, 0, '{\"id\":{\"old\":null,\"new\":142},\"seri\":{\"old\":null,\"new\":\"BG-00000145\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"114941875\"},\"total_amount\":{\"old\":null,\"new\":\"114941875\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:32:34', '2024-02-21 16:32:34'),
(906, 'quotes', 'update_customer', 136, 1, 0, '{\"id\":{\"old\":null,\"new\":136},\"seri\":{\"old\":null,\"new\":\"BG-00000145\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"121379032\"},\"total_amount\":{\"old\":null,\"new\":\"121379032\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:47:56', '2024-02-21 16:47:56'),
(907, 'quotes', 'update_customer', 141, 1, 0, '{\"id\":{\"old\":null,\"new\":141},\"seri\":{\"old\":null,\"new\":\"BG-00000145\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"41913460\"},\"total_amount\":{\"old\":null,\"new\":\"41913460\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:48:28', '2024-02-21 16:48:28'),
(908, 'quotes', 'update_customer', 140, 1, 0, '{\"id\":{\"old\":null,\"new\":140},\"seri\":{\"old\":null,\"new\":\"BG-00000145\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"82477522\"},\"total_amount\":{\"old\":null,\"new\":\"82477522\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:48:54', '2024-02-21 16:48:54'),
(909, 'quotes', 'insert', 145, 1, 0, '{\"seri\":\"BG-00000145\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"120412432\",\"total_amount\":\"120412432\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 16:50:30\",\"updated_at\":\"2024-02-21 16:50:30\"}', 1, '2024-02-21 16:50:30', '2024-02-21 16:50:30'),
(910, 'products', 'insert', 129, 1, 909, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"42\",\"width\":\"27.5\",\"height\":\"25\",\"quote_id\":145,\"total_cost\":\"120412432\",\"total_amount\":\"120412432\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"167\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 2a Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 2a Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 16:50:30\",\"updated_at\":\"2024-02-21 16:50:30\"}', 1, '2024-02-21 16:50:30', '2024-02-21 16:50:30'),
(911, 'papers', 'insert', 263, 1, 910, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 2 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"72\\\",\\\"width\\\":\\\"89.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":58053996}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":22726436}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3361600,\\\"act\\\":1,\\\"total\\\":3361600}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"52\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":2000,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":30400000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"120412432\",\"product\":129,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 16:50:30\",\"updated_at\":\"2024-02-21 16:50:30\"}', 1, '2024-02-21 16:50:30', '2024-02-21 16:50:30'),
(912, 'quotes', 'update_customer', 145, 1, 0, '{\"id\":{\"old\":null,\"new\":145},\"seri\":{\"old\":null,\"new\":\"BG-00000146\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"120412432\"},\"total_amount\":{\"old\":null,\"new\":\"120412432\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 16:50:35', '2024-02-21 16:50:35'),
(913, 'quotes', 'update_customer', 143, 1, 0, '{\"id\":{\"old\":null,\"new\":143},\"seri\":{\"old\":null,\"new\":\"BG-00000146\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"40029962.5\"},\"total_amount\":{\"old\":null,\"new\":\"40029962.5\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:07:02', '2024-02-21 17:07:02'),
(914, 'quotes', 'insert', 146, 1, 0, '{\"seri\":\"BG-00000146\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"92730082\",\"total_amount\":\"92730082\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:07:16\",\"updated_at\":\"2024-02-21 17:07:16\"}', 1, '2024-02-21 17:07:16', '2024-02-21 17:07:16'),
(916, 'papers', 'insert', 264, 1, 915, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 3 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"74.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":41612571}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":16304261.000000002}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3087850,\\\"act\\\":1,\\\"total\\\":3087850}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":25855000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"92730082\",\"product\":130,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:07:16\",\"updated_at\":\"2024-02-21 17:07:16\"}', 1, '2024-02-21 17:07:16', '2024-02-21 17:07:16'),
(917, 'quotes', 'update_customer', 146, 1, 0, '{\"id\":{\"old\":null,\"new\":146},\"seri\":{\"old\":null,\"new\":\"BG-00000147\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"92730082\"},\"total_amount\":{\"old\":null,\"new\":\"92730082\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:07:18', '2024-02-21 17:07:18'),
(918, 'quotes', 'update_customer', 140, 1, 0, '{\"id\":{\"old\":null,\"new\":140},\"seri\":{\"old\":null,\"new\":\"BG-00000147\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"82477522\"},\"total_amount\":{\"old\":null,\"new\":\"82477522\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:08:01', '2024-02-21 17:08:01'),
(919, 'quotes', 'insert', 147, 1, 0, '{\"seri\":\"BG-00000147\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"32432335\",\"total_amount\":\"32432335\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:09:53\",\"updated_at\":\"2024-02-21 17:09:53\"}', 1, '2024-02-21 17:09:53', '2024-02-21 17:09:53'),
(920, 'products', 'insert', 131, 1, 919, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 3 - M\\u00e3 B\",\"category\":3,\"product_style\":null,\"qty\":\"5000\",\"design\":4,\"length\":\"33\",\"width\":\"26.5\",\"height\":\"18\",\"quote_id\":147,\"total_cost\":\"32432335\",\"total_amount\":\"32432335\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"170\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 3A Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 3A Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"5000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:09:53\",\"updated_at\":\"2024-02-21 17:09:53\"}', 1, '2024-02-21 17:09:53', '2024-02-21 17:09:53'),
(921, 'papers', 'insert', 265, 1, 920, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 3 - M\\u00e3 B\",\"product_qty\":5000,\"nqty\":1,\"double\":null,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":0,\"supp_qty\":5200,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"74.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":14050998}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":2670400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":5468087.000000001}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"cost\\\":1557850,\\\"act\\\":1,\\\"total\\\":1557850}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"act\\\":1,\\\"total\\\":8685000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"32432335\",\"product\":131,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:09:53\",\"updated_at\":\"2024-02-21 17:09:53\"}', 1, '2024-02-21 17:09:53', '2024-02-21 17:09:53'),
(922, 'quotes', 'update_customer', 147, 1, 0, '{\"id\":{\"old\":null,\"new\":147},\"seri\":{\"old\":null,\"new\":\"BG-00000148\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"32432335\"},\"total_amount\":{\"old\":null,\"new\":\"32432335\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:09:56', '2024-02-21 17:09:56'),
(923, 'quotes', 'update_customer', 141, 1, 0, '{\"id\":{\"old\":null,\"new\":141},\"seri\":{\"old\":null,\"new\":\"BG-00000148\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"41913460\"},\"total_amount\":{\"old\":null,\"new\":\"41913460\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:10:44', '2024-02-21 17:10:44'),
(924, 'quotes', 'update_customer', 140, 1, 0, '{\"id\":{\"old\":null,\"new\":140},\"seri\":{\"old\":null,\"new\":\"BG-00000148\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"82477522\"},\"total_amount\":{\"old\":null,\"new\":\"82477522\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:11:07', '2024-02-21 17:11:07'),
(925, 'quotes', 'update_customer', 142, 1, 0, '{\"id\":{\"old\":null,\"new\":142},\"seri\":{\"old\":null,\"new\":\"BG-00000148\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"114941875\"},\"total_amount\":{\"old\":null,\"new\":\"114941875\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:11:19', '2024-02-21 17:11:19'),
(926, 'quotes', 'update_customer', 143, 1, 0, '{\"id\":{\"old\":null,\"new\":143},\"seri\":{\"old\":null,\"new\":\"BG-00000148\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"40029962.5\"},\"total_amount\":{\"old\":null,\"new\":\"40029962.5\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:11:36', '2024-02-21 17:11:36'),
(927, 'quotes', 'update_customer', 144, 1, 0, '{\"id\":{\"old\":null,\"new\":144},\"seri\":{\"old\":null,\"new\":\"BG-00000148\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"78712468.75\"},\"total_amount\":{\"old\":null,\"new\":\"78712468.75\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:12:01', '2024-02-21 17:12:01'),
(928, 'quotes', 'insert', 148, 1, 0, '{\"seri\":\"BG-00000148\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"92730082\",\"total_amount\":\"92730082\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:42:49\",\"updated_at\":\"2024-02-21 17:42:49\"}', 1, '2024-02-21 17:42:49', '2024-02-21 17:42:49'),
(929, 'products', 'insert', 132, 1, 928, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 3 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"33\",\"width\":\"26.5\",\"height\":\"18\",\"quote_id\":148,\"total_cost\":\"92730082\",\"total_amount\":\"92730082\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"170\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 3A Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 3A Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:42:49\",\"updated_at\":\"2024-02-21 17:42:49\"}', 1, '2024-02-21 17:42:49', '2024-02-21 17:42:49'),
(930, 'papers', 'insert', 266, 1, 929, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 3 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"62\\\",\\\"width\\\":\\\"74.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":41612571}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":16304261.000000002}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3087850,\\\"act\\\":1,\\\"total\\\":3087850}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":25855000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"92730082\",\"product\":132,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:42:50\",\"updated_at\":\"2024-02-21 17:42:50\"}', 1, '2024-02-21 17:42:50', '2024-02-21 17:42:50'),
(931, 'quotes', 'update_customer', 148, 1, 0, '{\"id\":{\"old\":null,\"new\":148},\"seri\":{\"old\":null,\"new\":\"BG-00000149\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"92730082\"},\"total_amount\":{\"old\":null,\"new\":\"92730082\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:42:53', '2024-02-21 17:42:53'),
(932, 'quotes', 'insert', 149, 1, 0, '{\"seri\":\"BG-00000149\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"82663750\",\"total_amount\":\"82663750\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:44:39\",\"updated_at\":\"2024-02-21 17:44:39\"}', 1, '2024-02-21 17:44:39', '2024-02-21 17:44:39'),
(933, 'products', 'insert', 133, 1, 932, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed04 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"29\",\"width\":\"21\",\"height\":\"21\",\"quote_id\":149,\"total_cost\":\"82663750\",\"total_amount\":\"82663750\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"172\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 4A Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 4A Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:44:40\",\"updated_at\":\"2024-02-21 17:44:40\"}', 1, '2024-02-21 17:44:40', '2024-02-21 17:44:40'),
(934, 'papers', 'insert', 267, 1, 933, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed04 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"37.5\\\",\\\"width\\\":\\\"102\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":34459425}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":13510175}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":2968750,\\\"act\\\":1,\\\"total\\\":2968750}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":25855000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"82663750\",\"product\":133,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:44:40\",\"updated_at\":\"2024-02-21 17:44:40\"}', 1, '2024-02-21 17:44:40', '2024-02-21 17:44:40'),
(935, 'quotes', 'update_customer', 149, 1, 0, '{\"id\":{\"old\":null,\"new\":149},\"seri\":{\"old\":null,\"new\":\"BG-00000150\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"82663750\"},\"total_amount\":{\"old\":null,\"new\":\"82663750\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:44:42', '2024-02-21 17:44:42'),
(936, 'quotes', 'update_customer', 148, 1, 0, '{\"id\":{\"old\":null,\"new\":148},\"seri\":{\"old\":null,\"new\":\"BG-00000150\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"82663750\"},\"total_amount\":{\"old\":null,\"new\":\"82663750\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:45:31', '2024-02-21 17:45:31'),
(937, 'quotes', 'insert', 150, 1, 0, '{\"seri\":\"BG-00000150\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"28966525\",\"total_amount\":\"28966525\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:45:49\",\"updated_at\":\"2024-02-21 17:45:49\"}', 1, '2024-02-21 17:45:49', '2024-02-21 17:45:49');
INSERT INTO `n_log_actions` (`id`, `table_map`, `action`, `target`, `user`, `parent`, `detail_data`, `act`, `created_at`, `updated_at`) VALUES
(938, 'products', 'insert', 134, 1, 937, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 4 - M\\u00e3 B\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"29\",\"width\":\"21\",\"height\":\"21\",\"quote_id\":150,\"total_cost\":\"28966525\",\"total_amount\":\"28966525\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"173\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 4B Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 4B Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:45:49\",\"updated_at\":\"2024-02-21 17:45:49\"}', 1, '2024-02-21 17:45:50', '2024-02-21 17:45:50'),
(939, 'papers', 'insert', 268, 1, 938, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 4 - M\\u00e3 B\",\"product_qty\":5000,\"nqty\":1,\"double\":null,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":0,\"supp_qty\":5200,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"37.5\\\",\\\"width\\\":\\\"102\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":11635650}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":2670400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":4536725}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"cost\\\":1438750,\\\"act\\\":1,\\\"total\\\":1438750}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"act\\\":1,\\\"total\\\":8685000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"28966525\",\"product\":134,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:45:50\",\"updated_at\":\"2024-02-21 17:45:50\"}', 1, '2024-02-21 17:45:50', '2024-02-21 17:45:50'),
(940, 'quotes', 'update_customer', 150, 1, 0, '{\"id\":{\"old\":null,\"new\":150},\"seri\":{\"old\":null,\"new\":\"BG-00000151\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"28966525\"},\"total_amount\":{\"old\":null,\"new\":\"28966525\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:45:57', '2024-02-21 17:45:57'),
(941, 'quotes', 'insert', 151, 1, 0, '{\"seri\":\"BG-00000151\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"82663750\",\"total_amount\":\"82663750\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:46:50\",\"updated_at\":\"2024-02-21 17:46:50\"}', 1, '2024-02-21 17:46:50', '2024-02-21 17:46:50'),
(942, 'products', 'insert', 135, 1, 941, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 4 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"29\",\"width\":\"21\",\"height\":\"21\",\"quote_id\":151,\"total_cost\":\"82663750\",\"total_amount\":\"82663750\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"172\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 4A Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 4A Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:46:51\",\"updated_at\":\"2024-02-21 17:46:51\"}', 1, '2024-02-21 17:46:51', '2024-02-21 17:46:51'),
(943, 'papers', 'insert', 269, 1, 942, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 4 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"37.5\\\",\\\"width\\\":\\\"102\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":34459425}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":13510175}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":2968750,\\\"act\\\":1,\\\"total\\\":2968750}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":25855000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"82663750\",\"product\":135,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:46:51\",\"updated_at\":\"2024-02-21 17:46:51\"}', 1, '2024-02-21 17:46:51', '2024-02-21 17:46:51'),
(944, 'quotes', 'update_customer', 151, 1, 0, '{\"id\":{\"old\":null,\"new\":151},\"seri\":{\"old\":null,\"new\":\"BG-00000152\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"82663750\"},\"total_amount\":{\"old\":null,\"new\":\"82663750\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:46:53', '2024-02-21 17:46:53'),
(945, 'quotes', 'insert', 152, 1, 0, '{\"seri\":\"BG-00000152\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"112045015\",\"total_amount\":\"112045015\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:48:30\",\"updated_at\":\"2024-02-21 17:48:30\"}', 1, '2024-02-21 17:48:30', '2024-02-21 17:48:30'),
(946, 'products', 'insert', 136, 1, 945, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 5 - M\\u00e3 A\",\"category\":3,\"product_style\":null,\"qty\":\"15000\",\"design\":4,\"length\":\"26\",\"width\":\"20\",\"height\":\"17\",\"quote_id\":152,\"total_cost\":\"112045015\",\"total_amount\":\"112045015\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"175\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 5A Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 5A Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"15000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:48:30\",\"updated_at\":\"2024-02-21 17:48:30\"}', 1, '2024-02-21 17:48:30', '2024-02-21 17:48:30'),
(947, 'papers', 'insert', 270, 1, 946, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 5 - M\\u00e3 A\",\"product_qty\":15000,\"nqty\":1,\"double\":null,\"base_supp_qty\":15050,\"compent_percent\":\"350\",\"compent_plus\":0,\"supp_qty\":15400,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"94.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":15400,\\\"act\\\":1,\\\"total\\\":55337782.5}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":14050,\\\"handle_qty\\\":15000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":5870400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":21665457.5}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":15300,\\\"handle_qty\\\":15000,\\\"cost\\\":3316375,\\\"act\\\":1,\\\"total\\\":3316375}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":15150,\\\"handle_qty\\\":15000,\\\"act\\\":1,\\\"total\\\":25855000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":15000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"112045015\",\"product\":136,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:48:30\",\"updated_at\":\"2024-02-21 17:48:30\"}', 1, '2024-02-21 17:48:30', '2024-02-21 17:48:30'),
(948, 'quotes', 'update_customer', 152, 1, 0, '{\"id\":{\"old\":null,\"new\":152},\"seri\":{\"old\":null,\"new\":\"BG-00000153\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"112045015\"},\"total_amount\":{\"old\":null,\"new\":\"112045015\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:48:32', '2024-02-21 17:48:32'),
(949, 'quotes', 'insert', 153, 1, 0, '{\"seri\":\"BG-00000153\",\"status\":\"not_accepted\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"0\",\"ship_price\":\"0\",\"total_cost\":\"39082412.5\",\"total_amount\":\"39082412.5\",\"note\":null,\"act\":1,\"src\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:49:30\",\"updated_at\":\"2024-02-21 17:49:30\"}', 1, '2024-02-21 17:49:30', '2024-02-21 17:49:30'),
(950, 'products', 'insert', 137, 1, 949, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 5 - M\\u00e3 B\",\"category\":3,\"product_style\":null,\"qty\":\"5000\",\"design\":4,\"length\":\"26\",\"width\":\"20\",\"height\":\"17\",\"quote_id\":153,\"total_cost\":\"39082412.5\",\"total_amount\":\"39082412.5\",\"custom_design_file\":null,\"sale_shape_file\":\"{\\\"id\\\":\\\"176\\\",\\\"dir\\\":\\\"storages\\/uploads\\\",\\\"path\\\":\\\"storage\\/app\\/public\\/uploads\\/S\\u1ed0 5B Chu\\u1ea9n.pdf\\\",\\\"name\\\":\\\"S\\u1ed0 5B Chu\\u1ea9n.pdf\\\"}\",\"tech_shape_file\":null,\"design_file\":null,\"design_shape_file\":null,\"handle_shape_file\":null,\"note\":null,\"act\":1,\"detail\":null,\"outside_qty\":\"5000\",\"rework_status\":null,\"expertise_id\":null,\"created_by\":1,\"created_at\":\"2024-02-21 17:49:30\",\"updated_at\":\"2024-02-21 17:49:30\"}', 1, '2024-02-21 17:49:30', '2024-02-21 17:49:30'),
(951, 'papers', 'insert', 271, 1, 950, '{\"name\":\"T\\u00daI HOA QU\\u1ea2 S\\u1ed0 5 - M\\u00e3 B\",\"product_qty\":5000,\"nqty\":1,\"double\":null,\"base_supp_qty\":5050,\"compent_percent\":\"150\",\"compent_plus\":0,\"supp_qty\":5200,\"size\":\"{\\\"materal\\\":\\\"13\\\",\\\"qttv\\\":\\\"300\\\",\\\"length\\\":\\\"65\\\",\\\"width\\\":\\\"94.5\\\",\\\"materal_price\\\":0.00195,\\\"supp_qty\\\":5200,\\\"act\\\":1,\\\"total\\\":18685485}\",\"print\":\"{\\\"type\\\":\\\"1\\\",\\\"color\\\":\\\"4\\\",\\\"machine\\\":\\\"1\\\",\\\"note\\\":null,\\\"supp_qty\\\":4050,\\\"handle_qty\\\":5000,\\\"model_price\\\":123600,\\\"work_price\\\":80,\\\"shape_price\\\":220000,\\\"printer\\\":5,\\\"act\\\":1,\\\"total\\\":2670400}\",\"nilon\":\"{\\\"materal\\\":\\\"8\\\",\\\"face\\\":\\\"1\\\",\\\"machine\\\":\\\"46\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":0,\\\"shape_price\\\":50000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"materal_price\\\":0.23,\\\"act\\\":1,\\\"total\\\":7255152.5}\",\"metalai\":\"{\\\"act\\\":0}\",\"compress\":\"{\\\"price\\\":\\\"0\\\",\\\"shape_price\\\":\\\"0\\\",\\\"machine\\\":null,\\\"note\\\":null,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"nqty\\\":1,\\\"act\\\":0,\\\"total\\\":0}\",\"uv\":\"{\\\"act\\\":0}\",\"elevate\":\"{\\\"ext_price\\\":\\\"0\\\",\\\"machine\\\":\\\"69\\\",\\\"note\\\":null,\\\"model_price\\\":150,\\\"work_price\\\":150,\\\"shape_price\\\":100000,\\\"supp_qty\\\":5100,\\\"handle_qty\\\":5000,\\\"cost\\\":1786375,\\\"act\\\":1,\\\"total\\\":1786375}\",\"float\":null,\"peel\":\"{\\\"act\\\":0}\",\"cut\":null,\"fold\":null,\"box_paste\":null,\"bag_paste\":\"{\\\"machine\\\":\\\"51\\\",\\\"note\\\":null,\\\"model_price\\\":0,\\\"work_price\\\":1700,\\\"shape_price\\\":100000,\\\"qty_pro\\\":5050,\\\"handle_qty\\\":5000,\\\"act\\\":1,\\\"total\\\":8685000}\",\"ext_cate\":3,\"ext_price\":\"{\\\"temp_price\\\":\\\"0\\\",\\\"prescript_price\\\":\\\"0\\\",\\\"supp_price\\\":\\\"0\\\",\\\"note\\\":null,\\\"qty_pro\\\":5000,\\\"act\\\":0,\\\"total\\\":0}\",\"except_handle\":0,\"handle_elevate\":null,\"total_cost\":\"39082412.5\",\"product\":137,\"note\":null,\"main\":1,\"act\":1,\"created_by\":1,\"created_at\":\"2024-02-21 17:49:30\",\"updated_at\":\"2024-02-21 17:49:30\"}', 1, '2024-02-21 17:49:30', '2024-02-21 17:49:30'),
(952, 'quotes', 'update_customer', 153, 1, 0, '{\"id\":{\"old\":null,\"new\":153},\"seri\":{\"old\":null,\"new\":\"BG-00000154\"},\"status\":{\"old\":null,\"new\":\"not_accepted\"},\"name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"customer_id\":{\"old\":null,\"new\":9},\"company_name\":{\"old\":null,\"new\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\"},\"contacter\":{\"old\":null,\"new\":\"Mr Tu\\u1ea5n\"},\"address\":{\"old\":null,\"new\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\"},\"email\":{\"old\":null,\"new\":\"kd1.intuandung@gmail.com\"},\"phone\":{\"old\":null,\"new\":\"0963303999\"},\"telephone\":{\"old\":null,\"new\":\"02438303888\"},\"city\":{\"old\":null,\"new\":351},\"profit\":{\"old\":null,\"new\":\"0\"},\"ship_price\":{\"old\":null,\"new\":\"0\"},\"total_cost\":{\"old\":null,\"new\":\"39082412.5\"},\"total_amount\":{\"old\":null,\"new\":\"39082412.5\"},\"act\":{\"old\":null,\"new\":1},\"created_by\":{\"old\":null,\"new\":1}}', 1, '2024-02-21 17:49:34', '2024-02-21 17:49:34'),
(953, 'quotes', 'removeDataTable', 130, 1, 0, '{\"id\":130,\"seri\":\"BG-00000131\",\"status\":\"order_created\",\"name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"product_qty\":null,\"customer_id\":9,\"company_name\":\"CTY CP IN & S\\u1ea2N XU\\u1ea4T BAO B\\u00cc TU\\u1ea4N DUNG\",\"contacter\":\"Mr Tu\\u1ea5n\",\"address\":\"L\\u00f4 D5-16 C\\u1ee5m L\\u00e0ng Ngh\\u1ec1 Tri\\u1ec1u kh\\u00fac - T\\u00e2n Tri\\u1ec1u - HN\",\"email\":\"kd1.intuandung@gmail.com\",\"phone\":\"0963303999\",\"telephone\":\"02438303888\",\"city\":351,\"profit\":\"50.078432901809\",\"ship_price\":\"2000000\",\"total_cost\":\"259808495.24\",\"total_amount\":\"390918086.86\",\"note\":null,\"act\":1,\"src\":null,\"created_at\":\"2023-11-24 09:32:23\",\"updated_at\":\"2023-12-12 22:35:09\",\"created_by\":1}', 1, '2024-02-21 17:54:22', '2024-02-21 17:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `n_modules`
--

CREATE TABLE `n_modules` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `table_map` varchar(50) DEFAULT NULL,
  `note` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `parent` int(10) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `menu` tinyint(4) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `ord` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_modules`
--

INSERT INTO `n_modules` (`id`, `name`, `table_map`, `note`, `link`, `parent`, `icon`, `background_color`, `menu`, `act`, `ord`, `created_at`, `updated_at`) VALUES
(1, 'p_quotes', NULL, 'Báo giá', 'javascript:void(0)', NULL, 'money', NULL, 1, 1, 0, '2022-06-22 15:00:34', '2022-06-22 15:00:34'),
(2, 'customers', 'customers', 'Khách hàng', 'view/customers', 1, NULL, NULL, 1, 1, 0, '2022-06-21 14:45:35', '2022-06-21 14:45:35'),
(3, 'quotes', 'quotes', 'Báo giá', 'view/quotes', 1, NULL, NULL, 1, 1, 0, '2022-10-10 16:34:44', '2022-10-10 16:34:44'),
(5, 'p_users', NULL, 'Bảo mật', 'javascript:void(0)', NULL, 'key', NULL, 1, 1, 3, '2022-10-11 20:10:00', '2022-10-11 20:10:00'),
(6, 'n_users', 'n_users', 'Tài khoản', 'view/n_users', 5, NULL, NULL, 1, 1, 0, '2022-10-10 22:19:09', '2022-10-10 22:19:09'),
(7, 'n_group_users', 'n_group_users', 'Nhóm quyền', 'view/n_group_users', 5, NULL, NULL, 1, 1, 0, '2022-06-22 14:07:39', '2022-06-22 14:07:43'),
(8, 'n_roles', 'n_roles', 'Phân quyền', 'grant-permissions', 5, NULL, NULL, 1, 1, 0, '2022-07-19 19:11:42', '2022-07-19 19:11:42'),
(9, 'p_configs', NULL, 'Chi phí', 'javascript:void(0)', NULL, 'credit-card', NULL, 1, 1, 2, '2022-10-11 20:09:58', '2022-10-11 20:09:58'),
(10, 'q_configs', 'q_configs', 'Thông tin chung', 'view/q_configs', 9, NULL, NULL, 1, 1, 0, '2022-06-29 22:56:00', '2022-06-29 22:56:00'),
(11, 'q_papers', 'q_papers', 'Tờ in', 'view/q_papers', 3, NULL, NULL, 0, 1, 0, '2022-06-30 16:41:30', '2022-06-30 16:41:30'),
(12, 'q_devices', 'q_devices', 'ĐG thiết bị máy', 'view/q_devices', 9, NULL, NULL, 1, 1, 0, '2022-10-10 22:18:56', '2022-10-10 22:18:56'),
(13, 'q_printer_devices', 'q_printer_devices', 'ĐG máy in', 'view/q_printer_devices', 9, NULL, NULL, 1, 1, 0, '2022-10-10 16:35:40', '2022-10-10 16:35:40'),
(14, 'q_laminate_materals', 'q_laminate_materals', 'Chất liệu cán màng', 'view/q_laminate_materals', 9, NULL, NULL, 1, 1, 0, '2022-06-30 23:31:34', '2022-06-30 23:31:34'),
(15, 'q_supply_prices', 'q_supply_prices', 'Định lượng vật tư', 'view/q_supply_prices', 9, NULL, NULL, 1, 1, 0, '2022-10-10 16:35:18', '2022-10-10 16:35:18'),
(16, 'q_supplies', 'q_supplies', 'Vật tư', 'view/q_supplies', 9, NULL, NULL, 1, 1, 0, '2022-10-10 16:35:22', '2022-10-10 16:35:22'),
(17, 'p_orders', NULL, 'Đơn hàng', 'javascript:void(0)', NULL, 'file-text', NULL, 1, 1, 1, '2022-10-11 20:09:53', '2022-10-11 20:09:53'),
(18, 'orders', 'orders', 'Đơn hàng của tôi', 'view/orders', 17, NULL, NULL, 1, 1, 0, '2022-10-11 21:28:12', '2022-10-11 21:28:12'),
(19, 'p_substances', 'p_substances', 'Chất liệu giấy', 'view/p_substances', 9, NULL, NULL, 1, 1, 0, '2022-10-31 23:17:50', '2022-10-31 23:17:50'),
(20, 'product_categories', 'product_categories', 'Danh mục SP', 'view/product_categories', 9, NULL, NULL, 1, 1, 0, '2022-10-31 23:17:50', '2022-10-31 23:17:50'),
(21, 'products', 'products', 'Danh sách SP', 'view/products', 17, NULL, NULL, 0, 0, 0, '2022-10-11 21:28:12', '2022-10-11 21:28:12'),
(22, 'c_designs', 'c_designs', 'Lệnh Thiết kế', 'view/c_designs', 17, NULL, NULL, 0, 1, 0, '2022-12-13 22:07:55', '2022-12-13 22:07:55'),
(23, 'c_processes', 'c_processes', 'Lệnh Sản xuất', 'view/c_processes', 17, NULL, NULL, 0, 1, 0, '2022-12-13 22:07:54', '2022-12-13 22:07:54');

-- --------------------------------------------------------

--
-- Table structure for table `n_regions`
--

CREATE TABLE `n_regions` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_regions`
--

INSERT INTO `n_regions` (`id`, `name`) VALUES
(1, 'Thông tin'),
(2, 'Chi tiết'),
(3, 'Thông tin cá nhân'),
(4, 'Thông tin tài khoản'),
(7, 'Thông tin liên hệ'),
(8, 'Khác'),
(9, 'Thông tin khách hàng'),
(10, 'Thông tin báo giá'),
(11, 'Thông số bù hao'),
(12, 'ĐG chỉnh máy'),
(13, 'ĐG lượt'),
(14, 'Đơn giá & chi phí');

-- --------------------------------------------------------

--
-- Table structure for table `n_roles`
--

CREATE TABLE `n_roles` (
  `role_id` int(10) NOT NULL,
  `module_id` int(10) DEFAULT NULL,
  `n_group_user_id` int(10) DEFAULT NULL,
  `json_data_role` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_roles`
--

INSERT INTO `n_roles` (`role_id`, `module_id`, `n_group_user_id`, `json_data_role`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 2, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(2, 3, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(3, 6, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(4, 7, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(5, 8, 1, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(6, 10, 1, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(7, 11, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(8, 12, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(9, 13, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(10, 14, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(11, 15, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(12, 16, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(13, 18, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(14, 19, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(15, 20, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(16, 21, 1, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(17, 22, 1, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(18, 23, 1, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(19, 2, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(20, 3, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(21, 6, 43, '{\"view\":\"1\",\"insert\":\"1\",\"update\":\"1\",\"remove\":\"1\",\"view_my\":\"1\",\"update_my\":\"1\",\"remove_my\":\"1\"}', '2023-02-23 07:08:32', '2023-02-23 00:08:32', NULL),
(22, 7, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(23, 8, 43, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(24, 10, 43, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(25, 11, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(26, 12, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(27, 13, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(28, 14, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(29, 15, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(30, 16, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(31, 18, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(32, 19, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(33, 20, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(34, 21, 43, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(35, 22, 43, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(36, 23, 43, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(37, 2, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(38, 3, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(39, 6, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(40, 7, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(41, 8, 44, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(42, 10, 44, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(43, 11, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(44, 12, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(45, 13, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(46, 14, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(47, 15, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(48, 16, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(49, 18, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(50, 19, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(51, 20, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(52, 21, 44, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(53, 22, 44, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(54, 23, 44, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(55, 2, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(56, 3, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(57, 6, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(58, 7, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(59, 8, 45, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(60, 10, 45, '{\"view\":1,\"update\":1}', NULL, NULL, NULL),
(61, 11, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(62, 12, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(63, 13, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(64, 14, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(65, 15, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(66, 16, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(67, 18, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(68, 19, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(69, 20, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(70, 21, 45, '{\"view\":1,\"insert\":1,\"update\":1,\"remove\":1,\"view_my\":1,\"update_my\":1,\"remove_my\":1}', NULL, NULL, NULL),
(71, 22, 45, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL),
(72, 23, 45, '{\"accept\":1,\"receive\":1}', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `n_tables`
--

CREATE TABLE `n_tables` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `parent` text DEFAULT NULL,
  `admin_paginate` int(10) DEFAULT NULL,
  `view_type` varchar(50) DEFAULT NULL,
  `ext_action` text DEFAULT NULL,
  `insert` text DEFAULT NULL,
  `update` text DEFAULT NULL,
  `remove` text DEFAULT NULL,
  `copy` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_tables`
--

INSERT INTO `n_tables` (`id`, `name`, `note`, `parent`, `admin_paginate`, `view_type`, `ext_action`, `insert`, `update`, `remove`, `copy`, `created_at`, `updated_at`) VALUES
(1, 'n_users', 'Nhân viên', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-05-23 14:43:41', '2023-08-16 19:42:33'),
(2, 'n_group_users', 'Nhóm quyền', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-16 19:42:33'),
(3, 'n_roles', 'Phân quyền', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-16 19:42:33'),
(4, 'files', 'Kho Lưu trữ', NULL, 24, 'media', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-16 19:42:33'),
(5, 'quote_configs', 'Thông tin chung & Giá thành', NULL, 100, 'config', NULL, '1', '1', '1', '1', '2023-05-09 16:15:02', '2023-08-16 19:42:33'),
(6, 'customers', 'Khách hàng', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-16 19:42:33'),
(7, 'quotes', 'Báo giá', NULL, 10, 'view', '[\r\n	{\r\n		\"icon\":\"plus\",\r\n		\"note\":\"Thêm đơn hàng\", \r\n		\"link\":\"insert/orders?quote=\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"accepted\"}\r\n		]\r\n	},\r\n	{\r\n		\"icon\":\"check\",\r\n		\"note\":\"Khách đã chốt giá\", \r\n		\"link\":\"apply-quote/\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"not_accepted\"}\r\n		]\r\n	}\r\n]', '1', '1', '1', '1', '2023-05-19 14:09:25', '2023-08-16 19:42:33'),
(8, 'q_papers', 'Tờ in', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-16 19:42:33'),
(9, 'devices', 'Thiết bị & Chi phí', '{\r\n	\"link\":\"config-device-price/supply_types?type=devices\", \r\n	\"note\":\"Danh sách thiết bị máy theo vật tư\"\r\n}', 10, 'view', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-30 04:55:37'),
(10, 'materals', 'Chất liệu vật tư', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-04-28 10:32:23', '2023-08-16 19:42:33'),
(11, 'printers', 'Máy in & chi phí', NULL, 10, 'view', NULL, '1', '1', '1', '1', '2023-04-28 00:18:55', '2023-08-16 19:42:33'),
(13, 'supply_types', 'Vật tư tham gia sx', NULL, 10, 'view', '[\r\n	{\r\n	\"icon\":\"list-ul\",\r\n	\"note\":\"Đơn giá định lượng\", \r\n	\"link\":\"view/supply_prices?default_data={%22supply_id%22:%22<id>%22}\",\r\n	\"condition\":[\r\n			{\"key\":\"is_name\", \"value\":\"0\"}\r\n		]\r\n	}\r\n]', '1', '1', '1', '1', '2023-07-17 19:30:41', '2023-08-16 19:42:34'),
(14, 'supply_prices', 'Đơn giá vật tư', NULL, 20, 'view', NULL, '1', '1', '1', '1', '2023-04-28 10:33:01', '2023-08-16 19:42:34'),
(18, 'orders', 'Đơn hàng', NULL, 20, 'view', '[\r\n	{\r\n	\"icon\":\"list-ul\",\r\n	\"note\":\"DS sản phẩm\", \r\n	\"link\":\"view/products?default_data={%22order%22:%22<id>%22}\"\r\n	}\r\n]', '0', '1', '1', '1', '2023-06-21 13:22:33', '2023-09-15 21:19:43'),
(19, 'p_substances', 'Chất liệu giấy in', NULL, 20, 'view', NULL, '1', '1', '1', '1', '2023-04-23 11:30:46', '2023-08-16 19:42:34'),
(20, 'product_categories', 'Nhóm sản phẩm', '', 20, 'view', '[\r\n	{\r\n	\"icon\":\"list-ul\",\r\n	\"note\":\"Kiểu hộp\", \r\n	\"link\":\"view/product_styles?default_data={%22category%22:%22<id>%22}\"\r\n	}\r\n]', '0', '1', '0', '0', '2023-04-23 11:30:46', '2023-09-25 20:54:00'),
(21, 'products', 'Sản xuất sản phẩm', NULL, 20, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"spinner\",\r\n		\"note\":\"Vật tư sản xuất\", \r\n		\"class\":\"__product_list_supp_process\"\r\n	},\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"calendar-check-o\",\r\n		\"note\":\"Yêu cầu nhập kho\",\r\n		\"class\":\"__product_takein_req\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"submited\"}\r\n		]\r\n	},\r\n	{\r\n		\"icon\":\"recycle\",\r\n		\"note\":\"Yêu cầu sản xuất lại\",\r\n		\"link\":\"product-require-rework/<id>\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"need_rework\"}\r\n		]\r\n	}\r\n]', '0', '1', '0', '1', '2023-04-23 11:30:46', '2024-01-03 22:38:41'),
(22, 'c_designs', 'Lệnh thiết kế', NULL, 20, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"level-down\",\"note\":\"Nhận lệnh\", \r\n		\"class\":\"__receive_command\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"not_accepted\"}\r\n		]\r\n	}\r\n]', '0', '1', '1', '0', '2023-06-30 17:43:12', '2023-08-16 19:42:34'),
(23, 'c_supplies', 'Yêu cầu Xuất vật tư', NULL, 20, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"share\",\"note\":\"Xác nhận xuất vật tư\", \r\n		\"class\":\"__confirm_ex_supp\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"handling\"}\r\n		]\r\n	}\r\n]', '0', '0', '1', '0', '2023-07-14 03:17:55', '2023-08-16 19:42:34'),
(24, 'n_log_actions', 'Lịch sử thao tác', NULL, 10, 'history', NULL, '', '', '1', '', '2023-05-23 14:43:41', '2023-08-16 19:42:34'),
(25, 'w_users', 'Công nhân', '{\r\n	\"link\":\"list-worker-by-device/machine\", \r\n	\"note\":\"DS tổ máy\"\r\n}', 10, 'view', '', '1', '1', '1', '1', '2023-05-23 14:43:41', '2023-09-11 11:17:39'),
(26, 'paper_extends', 'Tên phụ giấy in', NULL, 10, 'view', '', '1', '1', '1', '1', '2023-07-17 19:30:41', '2023-08-16 19:42:34'),
(27, 'supply_warehouses', 'Kho vật tư (carton, cao su, mút xốp, mica,...)', '{\r\n	\"link\":\"warehouse-management\", \r\n	\"note\":\"Quản lí kho vật tư\"\r\n}', 10, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"undo\",\"note\":\"Xác nhận nhập kho vật tư\", \r\n		\"class\":\"__confirm_im_supp\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"waiting\"}\r\n		]\r\n	}\r\n]', '1', '1', '1', '1', '2023-07-14 03:17:55', '2023-08-16 19:43:11'),
(28, 'print_warehouses', 'Kho vật tư (giấy in)', '{\r\n	\"link\":\"warehouse-management\", \r\n	\"note\":\"Quản lí kho vật tư\"\r\n}', 10, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"undo\",\"note\":\"Xác nhận nhập kho vật tư\", \r\n		\"class\":\"__confirm_im_supp\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"waiting\"}\r\n		]\r\n	}\r\n]', '1', '1', '1', '1', '2023-07-14 03:17:55', '2023-11-16 00:44:11'),
(29, 'other_warehouses', 'Kho vật tư (nam châm)', '{\r\n	\"link\":\"warehouse-management\", \r\n	\"note\":\"Quản lí kho vật tư\"\r\n}', 10, 'view', '', '1', '1', '1', '1', '2023-07-14 03:17:55', '2023-09-11 11:17:42'),
(30, 'square_warehouses', 'Kho vật tư (vật tư màng, nhung, vải lụa)', '{\r\n	\"link\":\"warehouse-management\", \r\n	\"note\":\"Quản lí kho vật tư\"\r\n}', 10, 'view', '', '1', '1', '1', '1', '2023-07-14 03:17:55', '2023-09-11 18:44:57'),
(32, 'w_salaries', 'Bảng chấm công - công nhân', '', 10, 'view', '', '0', '0', '1', '0', '2023-07-14 03:17:55', '2023-08-17 16:35:47'),
(33, 'supply_names', 'Tên phụ vật tư', NULL, 10, 'view', '', '1', '1', '1', '1', '2023-07-17 19:30:41', '2023-08-16 19:42:34'),
(34, 'papers', 'Vật tư giấy', NULL, 20, 'view', '', '0', '1', '0', '0', '2023-06-21 13:22:33', '2023-12-25 20:49:44'),
(35, 'supplies', 'Vật tư hộp cứng', NULL, 20, 'view', '', '0', '1', '0', '0', '2023-06-21 13:22:33', '2023-12-25 20:49:41'),
(36, 'fill_finishes', 'Bồi & hoàn thiện', NULL, 20, 'view', '', '0', '1', '0', '0', '2023-06-21 13:22:33', '2023-12-25 20:49:40'),
(37, 'product_styles', 'Kiểu hộp', '{\r\n	\"link\":\"view/product_categories\", \r\n	\"note\":\"Nhóm sản phẩm\"\r\n}', 20, 'view', '', '1', '1', '1', '1', '2023-06-21 13:22:33', '2023-09-20 15:05:49'),
(38, 'warehouse_providers', 'Nhà cung cấp vật tư', NULL, 10, 'view', '', '1', '1', '1', '1', '2023-07-17 19:30:41', '2023-08-16 19:42:34'),
(39, 'supply_buyings', 'Yêu cầu mua vật tư', NULL, 10, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"check-circle-o\",\r\n		\"note\":\"Duyệt mua vật tư\", \r\n		\"class\":\"__confirm_buying\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"not_accepted\"}\r\n		]\r\n	},\r\n	{\r\n		\"type\":2,\r\n		\"detailonly\":1,\r\n		\"icon\":\"check-square-o\",\"note\":\"Xác nhận đã mua\", \r\n		\"class\":\"__confirm_bought\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"accepted\"}\r\n		]\r\n	},\r\n	{\r\n		\"type\":2,\r\n		\"detailonly\":1,\r\n		\"icon\":\"check-square\",\"note\":\"Xác nhận nhập kho\", \r\n		\"class\":\"__confirm_warehouse_imported\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"bought\"}\r\n		]\r\n	}\r\n]', '1', '1', '1', '1', '2023-07-17 19:30:41', '2023-11-17 00:17:48'),
(40, 'c_expertises', 'Yêu cầu nhập kho thành phẩm', NULL, 10, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"share\",\r\n		\"note\":\"Duyệt nhập kho sản phẩm\", \r\n		\"class\":\"__confirm_product_warehouse\",\r\n		\"condition\":[\r\n			{\"key\":\"status\", \"value\":\"not_accepted\"}\r\n		]\r\n	}\r\n]', '0', '0', '1', '0', '2023-07-17 19:30:41', '2024-01-03 06:55:06'),
(41, 'product_warehouses', 'Kho thành phẩm', NULL, 20, 'view', '[\r\n	{\r\n		\"type\":2,\r\n		\"icon\":\"history\",\r\n		\"note\":\"Lịch sử xuất nhập\", \r\n		\"class\":\"__product_warehouse_history\"\r\n	}\r\n]', '0', '1', '0', '1', '2023-04-23 11:30:46', '2024-01-03 23:20:48');

-- --------------------------------------------------------

--
-- Table structure for table `n_users`
--

CREATE TABLE `n_users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `group_user` int(10) DEFAULT NULL,
  `super_admin` tinyint(4) DEFAULT 0,
  `dev` tinyint(4) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `n_users`
--

INSERT INTO `n_users` (`id`, `username`, `password`, `name`, `email`, `phone`, `group_user`, `super_admin`, `dev`, `note`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'NghiemTuan', 'e10adc3949ba59abbe56e057f20f883e', 'Nghiêm Thanh Tuấn', 'kd1.intuandung@gmail.com', '0963.303.999', 1, 0, 1, 'giám đốc', 1, '2023-07-14 02:02:00', '2024-01-10 10:10:22', 1),
(2, 'kinhdoanh', 'e10adc3949ba59abbe56e057f20f883e', 'kinhdoanh', 'sale@gmail.com', '0123456789', 2, 0, NULL, 'test nhan vien kinh doanh', 1, '2023-07-14 02:02:00', '2023-08-04 13:20:13', 1),
(3, 'thietke1', 'e10adc3949ba59abbe56e057f20f883e', 'thietke - Mr Hùng', 'design@gmail.com', '0987654321', 4, 0, NULL, 'test design', 1, '2023-07-14 02:02:00', '2023-09-28 11:02:56', 1),
(4, 'kythuatduyetlenh1', 'e10adc3949ba59abbe56e057f20f883e', 'kythuatduyetlenh - Mr Dũng', 'sanxuatitd@gmail.com', '0234567912', 3, 0, NULL, 'Technical apply order group tests', 1, '2023-07-14 02:02:00', '2023-09-23 15:13:04', 1),
(5, 'kythuatsx1', 'e10adc3949ba59abbe56e057f20f883e', 'kythuatsx - Mr Dũng', 'techhanle@gmail.com', '0123456789', 5, 0, NULL, NULL, 1, '2023-07-14 02:02:00', '2023-09-23 15:14:06', 1),
(6, 'kehoach1', 'e10adc3949ba59abbe56e057f20f883e', 'kehoach - Ms Hường', 'baobituandung@intuandung.vn', '0234567819', 6, 0, NULL, 'Test ke hoach san xuat', 1, '2023-07-14 02:02:00', '2023-09-23 15:15:54', 1),
(7, 'khovattu', 'e10adc3949ba59abbe56e057f20f883e', 'Test kho vật tư', 'khovattu', '2345098123', 7, 0, NULL, 'test', 1, '2023-07-14 02:02:00', '2023-09-25 16:24:03', 1),
(10, 'HoangDung', '59aa841f18386f5c6a7c99e541ae022d', 'Hoàng Dung', 'intuandung2000@gmail.com', '0969303888', 1, 0, NULL, NULL, 1, '2023-09-23 14:24:46', '2023-10-07 08:28:33', 1),
(11, 'kythuatduyetlenh2', 'e10adc3949ba59abbe56e057f20f883e', 'kythuatduyetlenh - Mr Thông', 'sanxuatitd@gmail.com', '0234567912', 3, 0, NULL, 'Technical apply order group tests', 1, '2023-09-23 15:13:27', '2023-09-23 15:13:27', 10),
(12, 'kythuatsx2', 'e10adc3949ba59abbe56e057f20f883e', 'kythuatsx - Mr Thông', 'techhanle@gmail.com', '0123456789', 5, 0, NULL, NULL, 1, '2023-09-23 15:14:41', '2023-09-23 15:14:41', 10),
(13, 'khovattu2', 'e10adc3949ba59abbe56e057f20f883e', 'KHO VẬT TƯ - Ms MAI', 'kd1.intuandung@gmail.com', '0963303999', 7, 0, NULL, NULL, 1, '2023-09-29 15:18:49', '2023-09-29 15:18:49', 1),
(14, 'phongmuahang', 'e10adc3949ba59abbe56e057f20f883e', 'PHÒNG MUA HÀNG - Ms HUYỀN', 'kd1.intuandung@gmail.com', '0963303999', 8, 0, NULL, NULL, 1, '2023-09-29 15:20:35', '2023-09-29 15:20:35', 1),
(15, 'phongkhuonmau', 'e10adc3949ba59abbe56e057f20f883e', 'PHÒNG KHUÔN MẪU', 'in88.vn@gmail.com', '0963303999', 9, 0, NULL, NULL, 1, '2023-09-29 15:21:33', '2023-10-06 06:50:57', 1),
(16, 'dev', 'e10adc3949ba59abbe56e057f20f883e', 'khanh', '', '0123456789', 1, 0, NULL, 'khanh', 1, '2023-07-14 02:02:00', '2023-11-16 01:15:52', 1),
(17, 'duyetmua', 'e10adc3949ba59abbe56e057f20f883e', 'Duyệt Mua', 'duyetmua', '0123456789', 8, 0, NULL, 'Duyệt yêu cầu mua hàng', 1, '2023-11-16 01:20:31', '2023-11-16 01:20:31', 16),
(18, 'muahang', 'e10adc3949ba59abbe56e057f20f883e', 'Mua hàng', 'muahang', '0987', 10, 0, NULL, 'Phòng mua vật tư', 1, '2023-11-16 03:40:59', '2023-11-16 03:40:59', 16),
(19, 'kcs', 'e10adc3949ba59abbe56e057f20f883e', 'test kcs', 'kcs@gmail.com', '123456789', 11, 0, NULL, 'test nhân viên phòng kcs', 1, '2023-12-06 09:52:09', '2023-12-06 09:52:09', 16),
(20, 'khothanhpham', 'e10adc3949ba59abbe56e057f20f883e', 'kho thanh pham', 'khothanhpham@gmail.com', '123456789', 12, 0, NULL, 'test nhân viên kho thành phẩm', 1, '2023-12-06 09:53:44', '2023-12-06 09:54:07', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `customer` int(10) DEFAULT NULL,
  `vat` tinyint(4) DEFAULT NULL,
  `total_amount` varchar(20) DEFAULT NULL,
  `advance` varchar(20) DEFAULT NULL,
  `rest` varchar(20) DEFAULT NULL,
  `rest_bill` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `rest_note` varchar(255) DEFAULT NULL,
  `ship_note` varchar(255) DEFAULT NULL,
  `quote` int(10) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `name`, `customer`, `vat`, `total_amount`, `advance`, `rest`, `rest_bill`, `status`, `rest_note`, `ship_note`, `quote`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(24, 'DH-00000024', NULL, 9, 1, '422191534', '0', '422191534', NULL, 'last_submited', NULL, NULL, 130, 1, '2023-12-09 09:42:38', '2024-01-03 09:47:37', 16);

-- --------------------------------------------------------

--
-- Table structure for table `other_warehouses`
--

CREATE TABLE `other_warehouses` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `supp_price` int(10) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `other_warehouses`
--

INSERT INTO `other_warehouses` (`id`, `name`, `qty`, `type`, `supp_price`, `note`, `status`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(31, 'Nam châm nhỏ loại 1', '100000', 'magnet', 17, NULL, 'imported', 1, '2023-08-16 15:33:36', '2023-08-16 15:33:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `id` bigint(20) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_qty` bigint(20) DEFAULT NULL,
  `nqty` int(10) DEFAULT NULL,
  `double` tinyint(4) DEFAULT NULL,
  `base_supp_qty` bigint(20) DEFAULT NULL,
  `compent_percent` decimal(10,0) DEFAULT NULL,
  `compent_plus` bigint(20) DEFAULT NULL,
  `supp_qty` bigint(20) DEFAULT NULL,
  `size` text DEFAULT NULL,
  `print` text DEFAULT NULL,
  `nilon` text DEFAULT NULL,
  `metalai` text DEFAULT NULL,
  `compress` text DEFAULT NULL,
  `uv` text DEFAULT NULL,
  `elevate` text DEFAULT NULL,
  `float` text DEFAULT NULL,
  `peel` text DEFAULT NULL,
  `cut` text DEFAULT NULL,
  `fold` text DEFAULT NULL,
  `box_paste` text DEFAULT NULL,
  `bag_paste` text DEFAULT NULL,
  `ext_cate` int(10) DEFAULT NULL,
  `ext_price` text DEFAULT NULL,
  `except_handle` tinyint(4) DEFAULT NULL,
  `handle_elevate` text DEFAULT NULL,
  `total_cost` varchar(20) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `main` tinyint(4) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`id`, `code`, `name`, `product_qty`, `nqty`, `double`, `base_supp_qty`, `compent_percent`, `compent_plus`, `supp_qty`, `size`, `print`, `nilon`, `metalai`, `compress`, `uv`, `elevate`, `float`, `peel`, `cut`, `fold`, `box_paste`, `bag_paste`, `ext_cate`, `ext_price`, `except_handle`, `handle_elevate`, `total_cost`, `product`, `note`, `main`, `act`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(35, NULL, 'Bộ (hộp tem toa) Olymcouta', 5000, 4, 0, 1250, 13, 0, 1263, '{\"materal\":\"13\",\"qttv\":\"400\",\"length\":\"43\",\"width\":\"49\",\"materal_price\":0.00195,\"supp_qty\":1263,\"act\":1,\"total\":2075689.98}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":250,\"handle_qty\":1250,\"model_price\":66000,\"work_price\":32,\"shape_price\":100000,\"printer\":2,\"act\":1,\"total\":696000}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1163,\"handle_qty\":1250,\"materal_price\":0.23,\"act\":1,\"total\":613601.43}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":1250,\"nqty\":4,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"float\":{\"price\":\"50\",\"shape_price\":\"80000\",\"qty_pro\":5050,\"nqty\":4,\"float_cost\":572500},\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1163,\"handle_qty\":1250,\"cost\":590500,\"act\":1,\"total\":1163000}', NULL, '{\"act\":0}', NULL, NULL, '{\"machine\":\"6\",\"note\":null,\"model_price\":0,\"work_price\":50,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5050,\"act\":1,\"total\":352500}', NULL, 2, '{\"temp_price\":\"450\",\"prescript_price\":\"120\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":1,\"total\":2850000}', 0, NULL, '7750791.41', 20, NULL, 1, 1, NULL, '2023-10-06 11:52:12', '2023-10-06 11:52:12', 10),
(36, NULL, 'test', 11, 1, 0, 11, 1, 0, 12, '{\"materal\":null,\"qttv\":\"11\",\"length\":\"11\",\"width\":\"11\",\"materal_price\":0,\"supp_qty\":112,\"act\":0,\"total\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 1, NULL, '0', 21, NULL, 1, 1, NULL, '2023-09-28 10:22:58', '2023-09-28 10:22:58', 10),
(118, NULL, 'Bộ (hộp tem toa) Olymcouta', 5000, 4, 0, 1250, 13, 100, 1363, '{\"materal\":\"13\",\"qttv\":\"400\",\"length\":\"43\",\"width\":\"49\",\"materal_price\":0.00195,\"supp_qty\":1363,\"act\":1,\"total\":2240035.98}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":250,\"handle_qty\":1250,\"model_price\":66000,\"work_price\":32,\"shape_price\":100000,\"printer\":2,\"act\":1,\"total\":696000}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1263,\"handle_qty\":1250,\"materal_price\":0.23,\"act\":1,\"total\":662062.43}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":1250,\"nqty\":4,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"float\":{\"price\":\"50\",\"shape_price\":\"80000\",\"qty_pro\":5050,\"nqty\":4,\"float_cost\":572500},\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1263,\"handle_qty\":1250,\"cost\":605500,\"act\":1,\"total\":1178000}', NULL, '{\"act\":0}', NULL, NULL, '{\"machine\":\"6\",\"note\":null,\"model_price\":0,\"work_price\":50,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5050,\"act\":1,\"total\":352500}', NULL, 2, '{\"temp_price\":\"450\",\"prescript_price\":\"120\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":1,\"total\":2850000}', 0, NULL, '7978598.41', 61, NULL, 1, 1, NULL, '2023-10-09 14:10:19', '2023-10-09 14:10:19', 10),
(119, NULL, 'Bộ (hộp+tem+toa) Olymcouta ( TEM CUỘN )', 5000, 1, 0, 5000, 50, 0, 5050, '{\"materal\":\"34\",\"qttv\":\"0\",\"length\":\"0\",\"width\":\"0\",\"materal_price\":0.0033,\"supp_qty\":5050,\"act\":0,\"total\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, NULL, '0', 61, NULL, 0, 1, NULL, '2023-10-09 14:10:20', '2023-10-09 14:10:20', 10),
(120, NULL, 'toa Olymcouta ( TOA IN GHÉP )', 5000, 1, 0, 5000, 50, 0, 5050, '{\"materal\":\"12\",\"qttv\":\"0\",\"length\":\"0\",\"width\":\"0\",\"materal_price\":0.002,\"supp_qty\":5050,\"act\":0,\"total\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, '0', 61, NULL, 0, 1, NULL, '2023-10-09 14:10:20', '2023-10-09 14:10:20', 10),
(121, NULL, 'Bộ ( Hộp   tem toa) Thymo glucan', 3500, 2, 0, 1800, 68, 0, 1868, '{\"materal\":\"13\",\"qttv\":\"400\",\"length\":\"41\",\"width\":\"43\",\"materal_price\":0.0019,\"supp_qty\":1868,\"act\":1,\"total\":2502895.84}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":850,\"handle_qty\":1768,\"model_price\":66000,\"work_price\":32,\"shape_price\":100000,\"printer\":2,\"act\":1,\"total\":772800}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1768,\"handle_qty\":1768,\"materal_price\":0.23,\"act\":1,\"total\":766906.3200000001}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":3535,\"handle_qty\":1768,\"nqty\":2,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"float\":{\"price\":\"30\",\"shape_price\":\"70000\",\"qty_pro\":3535,\"nqty\":2,\"float_cost\":246050},\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1768,\"handle_qty\":1768,\"cost\":629650,\"act\":1,\"total\":875700}', NULL, '{\"machine\":\"12\",\"nqty\":2,\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":3535,\"handle_qty\":3535,\"act\":1,\"total\":100700}', NULL, NULL, '{\"machine\":\"6\",\"note\":null,\"model_price\":0,\"work_price\":50,\"shape_price\":100000,\"qty_pro\":3535,\"handle_qty\":3535,\"act\":1,\"total\":276750}', NULL, 2, '{\"temp_price\":\"400\",\"prescript_price\":\"120\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":3500,\"act\":1,\"total\":1820000}', 0, NULL, '7115752.16', 62, NULL, 1, 1, NULL, '2023-10-09 14:10:25', '2023-10-09 14:10:25', 10),
(122, NULL, 'Bộ ( Hộp + tem+toa) Thymo glucan ( TEM CUỘN )', 70000, 1, 0, 70050, 750, 0, 70800, '{\"materal\":\"34\",\"qttv\":\"0\",\"length\":\"0\",\"width\":\"0\",\"materal_price\":0.0032,\"supp_qty\":70800,\"act\":0,\"total\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 1, NULL, '0', 62, NULL, 0, 1, NULL, '2023-10-09 14:10:25', '2023-10-09 14:10:25', 10),
(123, NULL, 'toa Thymo glucan ( TOA IN GHÉP )', 3500, 1, 0, 3550, 85, 0, 3635, '{\"materal\":\"12\",\"qttv\":\"80\",\"length\":\"0\",\"width\":\"0\",\"materal_price\":0.00195,\"supp_qty\":3635,\"act\":0,\"total\":0}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, 1, NULL, '0', 62, NULL, 0, 1, NULL, '2023-10-09 14:10:25', '2023-10-09 14:10:25', 10),
(124, NULL, 'Hộp giấy INSUVA   Toa   Tích điểm   Cẩm nang', 6700, 3, 0, 2284, 95, 100, 2479, '{\"materal\":\"13\",\"qttv\":\"400\",\"length\":\"30\",\"width\":\"68\",\"materal_price\":0.00195,\"supp_qty\":2479,\"act\":1,\"total\":3944584.8}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":\"IN THEO M\\u1eaaU M\\u00c0U\",\"supp_qty\":1284,\"handle_qty\":2284,\"model_price\":66000,\"work_price\":35,\"shape_price\":110000,\"printer\":3,\"act\":1,\"total\":883760}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":2379,\"handle_qty\":2284,\"materal_price\":0.25,\"act\":1,\"total\":1263290}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":6767,\"handle_qty\":2284,\"nqty\":3,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"float\":{\"price\":\"50\",\"shape_price\":\"100000\",\"qty_pro\":6767,\"nqty\":3,\"float_cost\":638350},\"note\":\"Th\\u00fac n\\u1ed5i ch\\u1eef INSUVA 2 m\\u1eb7t ch\\u00ednh\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":2379,\"handle_qty\":2284,\"cost\":762850,\"act\":1,\"total\":1401200}', NULL, '{\"machine\":\"12\",\"nqty\":3,\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":6767,\"handle_qty\":6750,\"act\":1,\"total\":233010}', NULL, NULL, '{\"machine\":\"6\",\"note\":null,\"model_price\":0,\"work_price\":50,\"shape_price\":100000,\"qty_pro\":6767,\"handle_qty\":6750,\"act\":1,\"total\":438350}', NULL, 2, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"150\",\"note\":\"Ti\\u00e8n th\\u1ebb t\\u00edch \\u0111i\\u1ec3m 10 x 20\",\"qty_pro\":6700,\"act\":1,\"total\":1005000}', 0, NULL, '9169194.8', 63, NULL, 1, 1, NULL, '2023-10-09 14:13:20', '2023-10-09 14:13:20', 10),
(125, NULL, 'Hộp giấy INSUVA + Toa + Cẩm nang ( TOA IN GHÉP )', 6700, 4, 0, NULL, 0, 0, 1675, '{\"materal\":\"12\",\"qttv\":\"80\",\"length\":\"43\",\"width\":\"62\",\"materal_price\":0.002,\"supp_qty\":1675,\"act\":1,\"total\":714488}', '{\"type\":\"2\",\"color\":\"4\",\"machine\":\"1\",\"note\":\"in xong ch\\u1ec9 x\\u00e9n theo \\u1ed1c\",\"supp_qty\":-950,\"handle_qty\":50,\"model_price\":66000,\"work_price\":32,\"shape_price\":100000,\"printer\":2,\"act\":1,\"total\":420800}', '{\"act\":0}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":6767,\"handle_qty\":50,\"nqty\":4,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"act\":0}', NULL, '{\"act\":0}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":6700,\"act\":0,\"total\":0}', 0, NULL, '1135288', 63, NULL, 0, 1, NULL, '2023-10-09 14:13:20', '2023-10-09 14:13:20', 10),
(126, NULL, 'Thẻ Tích điểm ( TOA IN GHÉP )', 6700, 1, 0, NULL, 0, 0, 6700, '{\"materal\":\"12\",\"qttv\":\"80\",\"length\":\"1\",\"width\":\"1\",\"materal_price\":0.002,\"supp_qty\":6700,\"act\":1,\"total\":1072}', '{\"type\":\"0\",\"color\":\"0\",\"machine\":\"0\",\"note\":null,\"supp_qty\":5750,\"handle_qty\":6767,\"model_price\":0,\"work_price\":0,\"shape_price\":0,\"printer\":0,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":6767,\"handle_qty\":6767,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"act\":0}', NULL, '{\"act\":0}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":6700,\"act\":0,\"total\":0}', 1, NULL, '0', 63, NULL, 0, 1, NULL, '2023-10-09 14:13:20', '2023-10-09 14:13:20', 10),
(198, 'DH-00000024AA', 'Hộp cứng cao cấp SONA   Túi giấy', 3000, 1, 0, 3050, 110, 200, 3360, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"79\",\"width\":\"109\",\"materal_price\":0.002,\"supp_qty\":3360,\"act\":1,\"total\":8679888}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":2050,\"handle_qty\":3000,\"model_price\":158000,\"work_price\":120,\"shape_price\":300000,\"printer\":6,\"act\":1,\"total\":2816000}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":3260,\"handle_qty\":3000,\"materal_price\":0.25,\"act\":1,\"total\":7067965}', '{\"act\":0}', '{\"price\":\"2000\",\"shape_price\":\"500000\",\"machine\":\"9\",\"note\":null,\"qty_pro\":3030,\"handle_qty\":3000,\"nqty\":1,\"act\":1,\"total\":6560000}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":3260,\"handle_qty\":3000,\"cost\":1880650,\"act\":1,\"total\":1880650}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":3030,\"handle_qty\":3000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":60300}', NULL, NULL, NULL, NULL, 1, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":3000,\"act\":0,\"total\":0}', 0, NULL, '27064803', 94, NULL, 1, 1, 'submited', '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(199, 'DH-00000024AB', 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH )', 3000, 2, 0, 1550, 80, 150, 1780, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"62\",\"width\":\"75\",\"materal_price\":0.002,\"supp_qty\":1780,\"act\":1,\"total\":2483100}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":550,\"handle_qty\":1500,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1550400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1680,\"handle_qty\":1500,\"materal_price\":0.25,\"act\":1,\"total\":2003000}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":3030,\"handle_qty\":1500,\"nqty\":2,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1680,\"handle_qty\":1500,\"cost\":1049500,\"act\":1,\"total\":1049500}', NULL, '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":60300}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":3000,\"act\":0,\"total\":0}', 0, NULL, '7146300', 94, NULL, 0, 1, 'submited', '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(200, 'DH-00000024AC', 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI KHAY ĐỊNH HÌNH )', 3000, 1, 0, 3050, 110, 150, 3310, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"54\",\"width\":\"97\",\"materal_price\":0.002,\"supp_qty\":3310,\"act\":1,\"total\":5201334}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":2050,\"handle_qty\":3000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2030400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":3210,\"handle_qty\":3000,\"materal_price\":0.25,\"act\":1,\"total\":4253495}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":3030,\"handle_qty\":3000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"act\":0}', NULL, '{\"act\":0}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":3000,\"act\":0,\"total\":0}', 0, NULL, '11485229', 94, NULL, 0, 1, 'submited', '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(201, 'DH-00000024AD', 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY )', 3000, 1, 0, 3050, 110, 100, 3260, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"57\",\"width\":\"102\",\"materal_price\":0.00195,\"supp_qty\":3260,\"act\":1,\"total\":11087879.4}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":2050,\"handle_qty\":3000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2030400}', '{\"act\":0}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":3030,\"handle_qty\":3000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":3160,\"handle_qty\":3000,\"cost\":1446100,\"act\":1,\"total\":1446100}', NULL, '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":60300}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":150,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":7032100}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"20000\",\"note\":\"Tay x\\u00e1ch + khay \\u0111\\u1ea7u c\\u1ed5 chai r\\u01b0\\u1ee3u\",\"qty_pro\":3000,\"act\":1,\"total\":60000000}', 0, NULL, '81656779.4', 94, NULL, 0, 1, 'submited', '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(242, NULL, 'Hộp cứng cao cấp SONA   Túi giấy (Sản xuất lại do lỗi kỹ thuật)', 1000, 1, 0, 1050, 70, 0, 1120, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"79\",\"width\":\"109\",\"materal_price\":0.002,\"supp_qty\":1120,\"act\":1,\"total\":2893296}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":50,\"handle_qty\":1000,\"model_price\":158000,\"work_price\":120,\"shape_price\":300000,\"printer\":6,\"act\":1,\"total\":1856000}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1020,\"handle_qty\":1000,\"materal_price\":0.25,\"act\":1,\"total\":2245805}', '{\"act\":0}', '{\"price\":\"2000\",\"shape_price\":\"500000\",\"machine\":\"9\",\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":1,\"total\":2520000}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":1544650,\"act\":1,\"total\":1544650}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40100}', NULL, NULL, NULL, NULL, 1, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":1000,\"act\":0,\"total\":0}', 0, NULL, '11099851', 106, NULL, 1, 1, NULL, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(243, NULL, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH ) (Sản xuất lại do lỗi kỹ thuật)', 1000, 2, 0, 550, 60, 0, 610, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"62\",\"width\":\"75\",\"materal_price\":0.002,\"supp_qty\":610,\"act\":1,\"total\":850950}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":-450,\"handle_qty\":500,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1230400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":510,\"handle_qty\":500,\"materal_price\":0.25,\"act\":1,\"total\":642875}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":500,\"nqty\":2,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":510,\"handle_qty\":500,\"cost\":874000,\"act\":1,\"total\":874000}', NULL, '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40100}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":1000,\"act\":0,\"total\":0}', 0, NULL, '3638325', 106, NULL, 0, 1, NULL, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(244, NULL, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI KHAY ĐỊNH HÌNH ) (Sản xuất lại do lỗi kỹ thuật)', 1000, 1, 0, 1050, 70, 0, 1120, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"54\",\"width\":\"97\",\"materal_price\":0.002,\"supp_qty\":1120,\"act\":1,\"total\":1759968}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":50,\"handle_qty\":1000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1390400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1020,\"handle_qty\":1000,\"materal_price\":0.25,\"act\":1,\"total\":1385690}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"act\":0}', NULL, '{\"act\":0}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":1000,\"act\":0,\"total\":0}', 0, NULL, '4536058', 106, NULL, 0, 1, NULL, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(245, NULL, 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY ) (Sản xuất lại do lỗi kỹ thuật)', 1000, 1, 0, 1050, 70, 0, 1120, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"57\",\"width\":\"102\",\"materal_price\":0.00195,\"supp_qty\":1120,\"act\":1,\"total\":3809332.8}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":50,\"handle_qty\":1000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1390400}', '{\"act\":0}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":1125100,\"act\":1,\"total\":1125100}', NULL, '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40100}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":150,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":2992100}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"20000\",\"note\":\"Tay x\\u00e1ch + khay \\u0111\\u1ea7u c\\u1ed5 chai r\\u01b0\\u1ee3u\",\"qty_pro\":1000,\"act\":1,\"total\":20000000}', 0, NULL, '29357032.8', 106, NULL, 0, 1, NULL, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(246, NULL, 'Hộp cứng cao cấp SONA   Túi giấy (Sản xuất lại do lỗi kỹ thuật)', 1000, 1, 0, 1050, 70, 0, 1120, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"79\",\"width\":\"109\",\"materal_price\":0.002,\"supp_qty\":1120,\"act\":1,\"total\":2893296}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":50,\"handle_qty\":1000,\"model_price\":158000,\"work_price\":120,\"shape_price\":300000,\"printer\":6,\"act\":1,\"total\":1856000}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1020,\"handle_qty\":1000,\"materal_price\":0.25,\"act\":1,\"total\":2245805}', '{\"act\":0}', '{\"price\":\"2000\",\"shape_price\":\"500000\",\"machine\":\"9\",\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":1,\"total\":2520000}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":1544650,\"act\":1,\"total\":1544650}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40100}', NULL, NULL, NULL, NULL, 1, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":1000,\"act\":0,\"total\":0}', 0, NULL, '11099851', 107, NULL, 1, 1, NULL, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1),
(247, NULL, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH ) (Sản xuất lại do lỗi kỹ thuật)', 1000, 2, 0, 550, 60, 0, 610, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"62\",\"width\":\"75\",\"materal_price\":0.002,\"supp_qty\":610,\"act\":1,\"total\":850950}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":-450,\"handle_qty\":500,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1230400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":510,\"handle_qty\":500,\"materal_price\":0.25,\"act\":1,\"total\":642875}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":500,\"nqty\":2,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":510,\"handle_qty\":500,\"cost\":874000,\"act\":1,\"total\":874000}', NULL, '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40100}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":1000,\"act\":0,\"total\":0}', 0, NULL, '3638325', 107, NULL, 0, 1, NULL, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1),
(248, NULL, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI KHAY ĐỊNH HÌNH ) (Sản xuất lại do lỗi kỹ thuật)', 1000, 1, 0, 1050, 70, 0, 1120, '{\"materal\":\"12\",\"qttv\":\"150\",\"length\":\"54\",\"width\":\"97\",\"materal_price\":0.002,\"supp_qty\":1120,\"act\":1,\"total\":1759968}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":50,\"handle_qty\":1000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1390400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"8\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":1020,\"handle_qty\":1000,\"materal_price\":0.25,\"act\":1,\"total\":1385690}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"act\":0}', NULL, '{\"act\":0}', NULL, '{\"act\":0}', NULL, NULL, 6, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":1000,\"act\":0,\"total\":0}', 0, NULL, '4536058', 107, NULL, 0, 1, NULL, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1),
(249, NULL, 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY ) (Sản xuất lại do lỗi kỹ thuật)', 1000, 1, 0, 1050, 70, 0, 1120, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"57\",\"width\":\"102\",\"materal_price\":0.00195,\"supp_qty\":1120,\"act\":1,\"total\":3809332.8}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":50,\"handle_qty\":1000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":1390400}', '{\"act\":0}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":1010,\"handle_qty\":1000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"4\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":1125100,\"act\":1,\"total\":1125100}', NULL, '{\"machine\":\"12\",\"nqty\":\"1\",\"note\":null,\"model_price\":0,\"work_price\":10,\"shape_price\":30000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40100}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":150,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":2992100}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"20000\",\"note\":\"Tay x\\u00e1ch + khay \\u0111\\u1ea7u c\\u1ed5 chai r\\u01b0\\u1ee3u\",\"qty_pro\":1000,\"act\":1,\"total\":20000000}', 0, NULL, '29357032.8', 107, NULL, 0, 1, NULL, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1),
(254, NULL, 'TÚI HOA QUẢ SỐ 2 - Mã A', 15000, 1, NULL, 15050, 350, 0, 15400, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"72\",\"width\":\"89.5\",\"materal_price\":0.00195,\"supp_qty\":15400,\"act\":1,\"total\":58053996}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":14050,\"handle_qty\":15000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":5870400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":15300,\"handle_qty\":15000,\"materal_price\":0.23,\"act\":1,\"total\":22726436}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":15150,\"handle_qty\":15000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":15300,\"handle_qty\":15000,\"cost\":3361600,\"act\":1,\"total\":3361600}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":0,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":15150,\"handle_qty\":15000,\"act\":1,\"total\":30400000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":15000,\"act\":0,\"total\":0}', 0, NULL, '120412432', 120, NULL, 1, 1, NULL, '2024-02-21 16:48:09', '2024-02-21 16:48:09', 1),
(258, NULL, 'TÚI HOA QUẢ SỐ 2 - Mã C', 10000, 1, NULL, 10050, 250, 0, 10300, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"72\",\"width\":\"89.5\",\"materal_price\":0.00195,\"supp_qty\":10300,\"act\":1,\"total\":38828322}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":9050,\"handle_qty\":10000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":4270400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":10200,\"handle_qty\":10000,\"materal_price\":0.25,\"act\":1,\"total\":16482200}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":10100,\"handle_qty\":10000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":10200,\"handle_qty\":10000,\"cost\":2596600,\"act\":1,\"total\":2596600}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":0,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":10100,\"handle_qty\":10000,\"act\":1,\"total\":20300000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":10000,\"act\":0,\"total\":0}', 0, NULL, '82477522', 124, NULL, 1, 1, NULL, '2024-02-21 17:08:15', '2024-02-21 17:08:15', 1),
(259, NULL, 'TÚI HOA QUẢ SỐ 2 - Mã B', 5000, 1, NULL, 5050, 150, 0, 5200, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"72\",\"width\":\"89.5\",\"materal_price\":0.00195,\"supp_qty\":5200,\"act\":1,\"total\":19602648}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":4050,\"handle_qty\":5000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2670400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":5100,\"handle_qty\":5000,\"materal_price\":0.23,\"act\":1,\"total\":7608812.000000001}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":5000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":5100,\"handle_qty\":5000,\"cost\":1831600,\"act\":1,\"total\":1831600}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":0,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5000,\"act\":1,\"total\":10200000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":0,\"total\":0}', 0, NULL, '41913460', 125, NULL, 1, 1, NULL, '2024-02-21 17:10:53', '2024-02-21 17:10:53', 1),
(260, NULL, 'TÚI HOA QUẢ CHỮ A - Mã A 01', 15000, 1, NULL, 15050, 350, 0, 15400, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"65\",\"width\":\"92.5\",\"materal_price\":0.00195,\"supp_qty\":15400,\"act\":1,\"total\":54166612.5}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":14050,\"handle_qty\":15000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":5870400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":15300,\"handle_qty\":15000,\"materal_price\":0.23,\"act\":1,\"total\":21207987.5}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":15150,\"handle_qty\":15000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":15300,\"handle_qty\":15000,\"cost\":3296875,\"act\":1,\"total\":3296875}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":0,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":15150,\"handle_qty\":15000,\"act\":1,\"total\":30400000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":15000,\"act\":0,\"total\":0}', 0, NULL, '114941875', 126, NULL, 1, 1, NULL, '2024-02-21 16:33:43', '2024-02-21 16:33:43', 1),
(261, NULL, 'TÚI HOA QUẢ CHỮ A - ( Mã A-02 )', 5000, 1, NULL, 5050, 150, 0, 5200, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"65\",\"width\":\"92.5\",\"materal_price\":0.00195,\"supp_qty\":5200,\"act\":1,\"total\":18290025}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":4050,\"handle_qty\":5000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2670400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":5100,\"handle_qty\":5000,\"materal_price\":0.23,\"act\":1,\"total\":7102662.5}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":5000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":5100,\"handle_qty\":5000,\"cost\":1766875,\"act\":1,\"total\":1766875}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":0,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5000,\"act\":1,\"total\":10200000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":0,\"total\":0}', 0, NULL, '40029962.5', 127, NULL, 1, 1, NULL, '2024-02-21 17:11:51', '2024-02-21 17:11:51', 1),
(262, NULL, 'TÚI HOA QUẢ CHỮ A - ( Mã A-03 )', 10000, 1, NULL, 10050, 250, 0, 10300, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"65\",\"width\":\"92.5\",\"materal_price\":0.00195,\"supp_qty\":10300,\"act\":1,\"total\":36228318.75}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":9050,\"handle_qty\":10000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":4270400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":10200,\"handle_qty\":10000,\"materal_price\":0.25,\"act\":1,\"total\":15381875}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":10100,\"handle_qty\":10000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":10200,\"handle_qty\":10000,\"cost\":2531875,\"act\":1,\"total\":2531875}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"52\",\"note\":null,\"model_price\":0,\"work_price\":2000,\"shape_price\":100000,\"qty_pro\":10100,\"handle_qty\":10000,\"act\":1,\"total\":20300000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":10000,\"act\":0,\"total\":0}', 0, NULL, '78712468.75', 128, NULL, 1, 1, NULL, '2024-02-21 17:12:11', '2024-02-21 17:12:11', 1),
(263, NULL, 'TÚI HOA QUẢ SỐ 3 - Mã A', 15000, 1, NULL, 15050, 350, 0, 15400, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"62\",\"width\":\"74.5\",\"materal_price\":0.00195,\"supp_qty\":15400,\"act\":1,\"total\":41612571}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":14050,\"handle_qty\":15000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":5870400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":15300,\"handle_qty\":15000,\"materal_price\":0.23,\"act\":1,\"total\":16304261.000000002}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":15150,\"handle_qty\":15000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":15300,\"handle_qty\":15000,\"cost\":3087850,\"act\":1,\"total\":3087850}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":15150,\"handle_qty\":15000,\"act\":1,\"total\":25855000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":15000,\"act\":0,\"total\":0}', 0, NULL, '92730082', 129, NULL, 1, 1, NULL, '2024-02-21 17:06:37', '2024-02-21 17:06:37', 1),
(264, NULL, 'TÚI HOA QUẢ SỐ 3 - Mã B', 5000, 1, NULL, 5050, 150, 0, 5200, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"62\",\"width\":\"74.5\",\"materal_price\":0.00195,\"supp_qty\":5200,\"act\":1,\"total\":14050998}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":4050,\"handle_qty\":5000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2670400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":5100,\"handle_qty\":5000,\"materal_price\":0.23,\"act\":1,\"total\":5468087.000000001}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":5000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":5100,\"handle_qty\":5000,\"cost\":1557850,\"act\":1,\"total\":1557850}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5000,\"act\":1,\"total\":8685000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":0,\"total\":0}', 0, NULL, '32432335', 130, NULL, 1, 1, NULL, '2024-02-21 17:07:46', '2024-02-21 17:07:46', 1),
(265, NULL, 'TÚI HOA QUẢ SỐ 3 - Mã C', 10000, 1, NULL, 10050, 250, 0, 10300, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"62\",\"width\":\"74.5\",\"materal_price\":0.00195,\"supp_qty\":10300,\"act\":1,\"total\":27831784.5}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":9050,\"handle_qty\":10000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":4270400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":10200,\"handle_qty\":10000,\"materal_price\":0.25,\"act\":1,\"total\":11828450}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":10100,\"handle_qty\":10000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":10200,\"handle_qty\":10000,\"cost\":2322850,\"act\":1,\"total\":2322850}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":10100,\"handle_qty\":10000,\"act\":1,\"total\":17270000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":10000,\"act\":0,\"total\":0}', 0, NULL, '63523484.5', 131, NULL, 1, 1, NULL, '2024-02-21 17:10:31', '2024-02-21 17:10:31', 1),
(266, NULL, 'TÚI HOA QUẢ SỐ 4 - Mã A', 15000, 1, NULL, 15050, 350, 0, 15400, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"37.5\",\"width\":\"102\",\"materal_price\":0.00195,\"supp_qty\":15400,\"act\":1,\"total\":34459425}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":14050,\"handle_qty\":15000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":5870400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":15300,\"handle_qty\":15000,\"materal_price\":0.23,\"act\":1,\"total\":13510175}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":15150,\"handle_qty\":15000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":15300,\"handle_qty\":15000,\"cost\":2968750,\"act\":1,\"total\":2968750}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":15150,\"handle_qty\":15000,\"act\":1,\"total\":25855000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":15000,\"act\":0,\"total\":0}', 0, NULL, '82663750', 132, NULL, 1, 1, NULL, '2024-02-21 17:45:38', '2024-02-21 17:45:38', 1),
(267, NULL, 'TÚI HOA QUẢ SỐ 4 - Mã B', 5000, 1, NULL, 5050, 150, 0, 5200, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"37.5\",\"width\":\"102\",\"materal_price\":0.00195,\"supp_qty\":5200,\"act\":1,\"total\":11635650}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":4050,\"handle_qty\":5000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2670400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":5100,\"handle_qty\":5000,\"materal_price\":0.23,\"act\":1,\"total\":4536725}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":5000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":5100,\"handle_qty\":5000,\"cost\":1438750,\"act\":1,\"total\":1438750}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5000,\"act\":1,\"total\":8685000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":0,\"total\":0}', 0, NULL, '28966525', 133, NULL, 1, 1, NULL, '2024-02-21 17:45:11', '2024-02-21 17:45:11', 1),
(268, NULL, 'TÚI HOA QUẢ SỐ 4 - Mã C', 10000, 1, NULL, 10050, 250, 0, 10300, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"37.5\",\"width\":\"102\",\"materal_price\":0.00195,\"supp_qty\":10300,\"act\":1,\"total\":23047537.5}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":9050,\"handle_qty\":10000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":4270400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":10200,\"handle_qty\":10000,\"materal_price\":0.25,\"act\":1,\"total\":9803750}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":10100,\"handle_qty\":10000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":10200,\"handle_qty\":10000,\"cost\":2203750,\"act\":1,\"total\":2203750}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":10100,\"handle_qty\":10000,\"act\":1,\"total\":17270000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":10000,\"act\":0,\"total\":0}', 0, NULL, '56595437.5', 134, NULL, 1, 1, NULL, '2024-02-21 17:46:25', '2024-02-21 17:46:25', 1),
(269, NULL, 'TÚI HOA QUẢ SỐ 5 - Mã A', 15000, 1, NULL, 15050, 350, 0, 15400, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"65\",\"width\":\"94.5\",\"materal_price\":0.00195,\"supp_qty\":15400,\"act\":1,\"total\":55337782.5}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":14050,\"handle_qty\":15000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":5870400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":15300,\"handle_qty\":15000,\"materal_price\":0.23,\"act\":1,\"total\":21665457.5}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":15150,\"handle_qty\":15000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":15300,\"handle_qty\":15000,\"cost\":3316375,\"act\":1,\"total\":3316375}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":15150,\"handle_qty\":15000,\"act\":1,\"total\":25855000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":15000,\"act\":0,\"total\":0}', 0, NULL, '112045015', 135, NULL, 1, 1, NULL, '2024-02-21 17:47:50', '2024-02-21 17:47:50', 1),
(270, NULL, 'TÚI HOA QUẢ SỐ 5 - Mã B', 5000, 1, NULL, 5050, 150, 0, 5200, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"65\",\"width\":\"94.5\",\"materal_price\":0.00195,\"supp_qty\":5200,\"act\":1,\"total\":18685485}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":4050,\"handle_qty\":5000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":2670400}', '{\"materal\":\"8\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":5100,\"handle_qty\":5000,\"materal_price\":0.23,\"act\":1,\"total\":7255152.5}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":5050,\"handle_qty\":5000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":5100,\"handle_qty\":5000,\"cost\":1786375,\"act\":1,\"total\":1786375}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":5050,\"handle_qty\":5000,\"act\":1,\"total\":8685000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":5000,\"act\":0,\"total\":0}', 0, NULL, '39082412.5', 136, NULL, 1, 1, NULL, '2024-02-21 17:49:09', '2024-02-21 17:49:09', 1);
INSERT INTO `papers` (`id`, `code`, `name`, `product_qty`, `nqty`, `double`, `base_supp_qty`, `compent_percent`, `compent_plus`, `supp_qty`, `size`, `print`, `nilon`, `metalai`, `compress`, `uv`, `elevate`, `float`, `peel`, `cut`, `fold`, `box_paste`, `bag_paste`, `ext_cate`, `ext_price`, `except_handle`, `handle_elevate`, `total_cost`, `product`, `note`, `main`, `act`, `status`, `created_at`, `updated_at`, `created_by`) VALUES
(271, NULL, 'TÚI HOA QUẢ SỐ 5 - Mã C', 10000, 1, NULL, 10050, 250, 0, 10300, '{\"materal\":\"13\",\"qttv\":\"300\",\"length\":\"65\",\"width\":\"94.5\",\"materal_price\":0.00195,\"supp_qty\":10300,\"act\":1,\"total\":37011633.75}', '{\"type\":\"1\",\"color\":\"4\",\"machine\":\"1\",\"note\":null,\"supp_qty\":9050,\"handle_qty\":10000,\"model_price\":123600,\"work_price\":80,\"shape_price\":220000,\"printer\":5,\"act\":1,\"total\":4270400}', '{\"materal\":\"9\",\"face\":\"1\",\"machine\":\"46\",\"note\":null,\"model_price\":0,\"work_price\":0,\"shape_price\":50000,\"supp_qty\":10200,\"handle_qty\":10000,\"materal_price\":0.25,\"act\":1,\"total\":15713375}', '{\"act\":0}', '{\"price\":\"0\",\"shape_price\":\"0\",\"machine\":null,\"note\":null,\"qty_pro\":10100,\"handle_qty\":10000,\"nqty\":1,\"act\":0,\"total\":0}', '{\"act\":0}', '{\"ext_price\":\"0\",\"machine\":\"69\",\"note\":null,\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":10200,\"handle_qty\":10000,\"cost\":2551375,\"act\":1,\"total\":2551375}', NULL, '{\"act\":0}', NULL, NULL, NULL, '{\"machine\":\"51\",\"note\":null,\"model_price\":0,\"work_price\":1700,\"shape_price\":100000,\"qty_pro\":10100,\"handle_qty\":10000,\"act\":1,\"total\":17270000}', 3, '{\"temp_price\":\"0\",\"prescript_price\":\"0\",\"supp_price\":\"0\",\"note\":null,\"qty_pro\":10000,\"act\":0,\"total\":0}', 0, NULL, '76816783.75', 137, NULL, 1, 1, NULL, '2024-02-21 17:50:36', '2024-02-21 17:50:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paper_extends`
--

CREATE TABLE `paper_extends` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `category` int(10) DEFAULT NULL COMMENT 'Cha',
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `ord` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `is_name` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `paper_extends`
--

INSERT INTO `paper_extends` (`id`, `name`, `category`, `note`, `act`, `ord`, `created_at`, `updated_at`, `created_by`, `is_name`) VALUES
(1, 'TỜ BỒI THÀNH', 6, NULL, 1, NULL, '2023-07-26 07:51:00', '2023-09-14 19:49:42', 1, 1),
(2, 'TỜ BỒI KHAY ĐỊNH HÌNH', 6, NULL, 1, NULL, '2023-07-26 07:51:00', '2023-09-14 19:49:35', 1, 1),
(3, 'TỜ BỒI MẶT THÉP', 6, NULL, 1, NULL, '2023-07-26 07:52:00', '2023-07-27 15:57:22', 1, 1),
(4, 'TỜ BỒI NẮP HỘP', 6, NULL, 1, NULL, '2023-07-26 07:52:00', '2023-07-27 15:57:07', 1, 1),
(5, 'TỜ BỒI ĐÁY HỘP', 6, NULL, 1, NULL, '2023-07-26 07:52:00', '2023-07-27 15:56:54', 1, 1),
(6, 'TEM CUỘN', 4, NULL, 1, NULL, '0000-00-00 00:00:00', '2023-07-27 15:55:59', 1, 1),
(7, 'TOA IN GHÉP', 6, NULL, 1, NULL, '2023-07-26 07:53:00', '2023-07-27 15:55:47', 1, 1),
(56, 'HỘP GIẤY', 2, NULL, 1, NULL, '2023-07-27 18:15:17', '2023-09-14 19:48:54', 1, 1),
(57, 'TÚI GIẤY', 3, NULL, 1, NULL, '2023-08-30 09:25:34', '2023-08-30 09:25:34', 1, NULL),
(58, 'KHAY GIẤY ĐỊNH HÌNH', 2, NULL, 1, NULL, '2023-09-14 19:49:07', '2023-09-14 19:49:07', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `paper_lots`
--

CREATE TABLE `paper_lots` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `print_length` float(10,0) DEFAULT NULL,
  `print_width` float(10,0) DEFAULT NULL,
  `model_price` varchar(20) DEFAULT NULL,
  `work_price` varchar(20) DEFAULT '0',
  `shape_price` varchar(20) DEFAULT '0',
  `w_work_price` varchar(20) DEFAULT NULL,
  `w_shape_price` varchar(20) DEFAULT NULL,
  `note` varchar(20) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `device` tinyint(4) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `ord` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `printers`
--

INSERT INTO `printers` (`id`, `name`, `print_length`, `print_width`, `model_price`, `work_price`, `shape_price`, `w_work_price`, `w_shape_price`, `note`, `act`, `created_at`, `updated_at`, `device`, `created_by`, `ord`) VALUES
(1, 'Máy in offset 36x52', 36, 52, '66000', '32', '100000', '15', '24000', NULL, 1, '2023-09-01 00:00:00', '2023-10-06 12:48:21', 1, 1, NULL),
(2, 'Máy in offset 47x65', 47, 65, '66000', '32', '100000', '15', '24000', NULL, 1, '2023-09-01 00:00:00', '2023-09-13 00:38:06', 1, 1, NULL),
(3, 'Máy in offset 52x72', 52, 72, '66000', '35', '110000', '15', '24000', NULL, 1, '2023-09-01 00:00:00', '2023-09-13 00:37:46', 1, 1, NULL),
(4, 'Máy in offset 54x79', 55, 80, '123600', '50', '180000', '20', '30000', NULL, 1, '2023-09-01 00:00:00', '2023-10-06 12:49:18', 1, 1, NULL),
(5, 'Máy in offset 72x102', 72, 102, '123600', '80', '220000', '30', '40000', NULL, 1, '2023-09-01 00:00:00', '2023-10-06 12:49:33', 1, 0, NULL),
(6, 'Máy in offset 79x109', 79, 109, '158000', '120', '300000', '0', '0', NULL, 1, '2023-09-01 00:00:00', '2023-09-13 00:36:28', 1, 0, NULL),
(7, 'Máy in uv 36x52', 36, 52, '66000', '180', '250000', '45', '50000', NULL, 1, '2023-09-01 00:00:00', '2023-09-14 19:03:29', 2, 0, NULL),
(8, 'Máy in uv 47x65', 47, 65, '66000', '200', '250000', '45', '50000', NULL, 1, '2023-09-01 00:00:00', '2023-09-14 19:03:04', 2, 0, NULL),
(9, 'Máy in uv 52x72', 52, 72, '66000', '250', '300000', '45', '50000', NULL, 1, '2023-09-01 00:00:00', '2023-09-14 19:02:21', 2, 1, NULL),
(10, 'Máy in uv 54x79', 54, 79, '123600', '300', '500000', '60', '70000', NULL, 1, '2023-09-01 00:00:00', '2023-10-06 12:51:14', 2, 1, NULL),
(11, 'Máy in uv 72x102', 72, 102, '123600', '500', '600000', '100', '100000', NULL, 1, '2023-09-01 00:00:00', '2023-10-06 12:50:54', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `print_notes`
--

CREATE TABLE `print_notes` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `print_notes`
--

INSERT INTO `print_notes` (`id`, `name`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'In theo màn hình Dell ultra', 1, 1, '2023-05-22 10:29:05', '2023-05-22 10:29:05'),
(2, 'In theo mẫu đã in trước', 1, 1, '2023-05-22 10:29:05', '2023-05-22 10:29:05'),
(3, 'In theo mẫu khách hàng gửi', 1, 1, '2023-05-22 10:29:05', '2023-05-22 10:29:05'),
(4, 'Khách hàng duyệt màu', 1, 1, '2023-05-22 10:29:05', '2023-05-22 10:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `print_techs`
--

CREATE TABLE `print_techs` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `print_techs`
--

INSERT INTO `print_techs` (`id`, `name`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'In offset', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:25'),
(2, 'In UV Offset', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:25'),
(3, 'In Label', 1, 1, '2023-03-11 15:10:23', '2023-03-11 15:10:25'),
(4, 'offset & UV offset', 1, 1, '2023-03-11 15:25:31', '2023-03-11 15:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `print_warehouses`
--

CREATE TABLE `print_warehouses` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `length` varchar(20) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `qtv` varchar(20) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `supp_price` int(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `print_warehouses`
--

INSERT INTO `print_warehouses` (`id`, `name`, `length`, `width`, `qtv`, `qty`, `type`, `supp_price`, `status`, `source`, `note`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(45, 'C', '51', '48.6', '120', '60000', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-23 15:55:00', '2023-09-23 17:57:56', 10),
(46, 'C', '50.3', '55.5', '148', '68000', 'paper', 12, 'imported', NULL, NULL, 1, '2023-11-21 11:21:00', '2023-11-21 11:21:00', 7),
(47, 'C', '50.3', '51', '150', '48631', 'paper', 12, 'imported', NULL, NULL, 1, '2023-12-25 20:34:10', '2023-12-25 20:34:10', 16),
(51, 'C', '51', '55.5', '150', '72110', 'paper', 12, 'imported', NULL, NULL, 1, '2024-01-04 16:44:40', '2024-01-04 16:44:40', 16),
(52, 'C', '51', '56', '150', '5200', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-23 18:00:00', '2023-09-23 18:00:00', 1),
(53, 'C', '51', '51', '150', '5200', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-23 18:00:10', '2023-09-23 18:00:10', 1),
(54, 'C', '51', '44', '150', '3545', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-23 18:00:26', '2023-12-12 23:05:32', 1),
(59, 'c150', '10', '30', '150', '2500', 'paper', 12, 'waiting', 2, NULL, 1, '2023-09-24 10:59:53', '2023-09-24 10:59:53', 6),
(64, 'C', '51', '48.5', '120', '60000', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-24 15:38:40', '2023-09-24 15:38:40', 1),
(65, 'C', '50.3', '55.5', '150', '66000', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-24 15:39:19', '2023-09-24 15:39:37', 1),
(66, 'C', '50.3', '51', '150', '46500', 'paper', 12, 'imported', NULL, NULL, 1, '2023-09-24 15:39:59', '2023-09-24 15:39:59', 1),
(70, 'I250 TÚI MÃ B', '102', '51', '250', '120000', 'paper', 13, 'imported', NULL, NULL, 1, '2023-10-06 09:18:42', '2023-10-06 09:18:42', 7),
(71, 'I250 TÚI MÃ A', '102', '57', '250', '130760', 'paper', 13, 'imported', NULL, NULL, 1, '2023-10-06 09:06:34', '2023-10-06 09:06:34', 7),
(72, 'I250 TÚI MÃ C', '102', '44', '250', '120000', 'paper', 13, 'imported', NULL, NULL, 1, '2023-10-06 09:03:17', '2023-10-06 09:03:17', 7),
(73, 'C120 NẮP MÃ C', '50', '44', '120', '87020', 'paper', 12, 'imported', NULL, NULL, 1, '2023-10-01 12:17:28', '2023-10-01 12:17:28', 1),
(74, 'C120 ĐÁY MÃ C', '50', '42', '120', '87020', 'paper', 12, 'imported', NULL, NULL, 1, '2023-10-01 12:18:21', '2023-10-01 12:18:21', 1),
(75, 'C120 ĐÁY MÃ A', '54.5', '48.5', '120', '74300', 'paper', 12, 'imported', NULL, NULL, 1, '2023-10-01 12:19:43', '2023-10-01 12:19:43', 1),
(77, 'C120 khay thuyền', '62', '50.5', '120', '50000', 'paper', 12, 'imported', NULL, NULL, 1, '2023-10-06 09:30:05', '2023-10-06 09:30:05', 7),
(78, NULL, '11', '11', '150', '3360', 'paper', 12, 'waiting', 2, NULL, 1, '2023-12-09 10:11:59', '2023-12-09 10:11:59', 6),
(79, NULL, '11', '11', '150', '890', 'paper', 12, 'waiting', 2, NULL, 1, '2023-12-09 10:12:33', '2023-12-09 10:12:33', 6),
(80, NULL, '11', '11', '150', '1655', 'paper', 12, 'waiting', 2, NULL, 1, '2023-12-09 10:12:53', '2023-12-09 10:12:53', 6),
(81, 'ivory 300', '600', '200', '300', '7251', 'paper', 13, 'imported', NULL, NULL, 1, '2023-12-09 11:46:58', '2024-02-20 14:32:58', 7),
(82, NULL, '11', '10', '300', '1630', 'paper', 13, 'waiting', 2, NULL, 1, '2023-12-09 11:48:10', '2023-12-09 11:48:10', 6),
(83, NULL, '11', '11', '150', '560', 'paper', 12, 'waiting', 2, NULL, 1, '2024-01-03 04:32:31', '2024-01-03 04:32:31', 6);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` int(10) DEFAULT NULL,
  `product_style` int(10) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `design` int(10) DEFAULT NULL,
  `length` varchar(20) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `quote_id` int(10) DEFAULT NULL,
  `order` int(10) DEFAULT NULL,
  `total_cost` varchar(20) DEFAULT NULL,
  `total_amount` varchar(20) DEFAULT NULL,
  `custom_design_file` text DEFAULT NULL,
  `sale_shape_file` text DEFAULT NULL,
  `tech_shape_file` text DEFAULT NULL,
  `design_file` text DEFAULT NULL,
  `design_shape_file` text DEFAULT NULL,
  `handle_shape_file` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `order_created` tinyint(4) DEFAULT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `outside_qty` varchar(20) DEFAULT NULL,
  `rework_status` varchar(20) DEFAULT NULL,
  `expertise_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category`, `product_style`, `qty`, `design`, `length`, `width`, `height`, `quote_id`, `order`, `total_cost`, `total_amount`, `custom_design_file`, `sale_shape_file`, `tech_shape_file`, `design_file`, `design_shape_file`, `handle_shape_file`, `note`, `status`, `act`, `created_at`, `updated_at`, `created_by`, `order_created`, `detail`, `outside_qty`, `rework_status`, `expertise_id`) VALUES
(61, NULL, 'Bộ (hộp+tem+toa) Olymcouta', 2, NULL, '5000', 3, '6', '5.5', '13', NULL, NULL, NULL, '9459746.1238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(62, NULL, 'Bộ ( Hộp + tem+toa) Thymo glucan', 2, NULL, '3500', 3, '13', '65', '11', NULL, NULL, NULL, '8220614.984', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(63, NULL, 'Hộp giấy INSUVA + Toa + Tích điểm + Cẩm nang', 2, NULL, '6700', 1, '16', '10.5', '3.3', NULL, NULL, NULL, '10516572.456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL),
(94, 'DH-00000024A', 'Hộp cứng cao cấp SONA + Túi giấy', 1, 12, '3000', 1, '40', '34', '10', 130, 24, '259808495.24', '390918086.86', NULL, '{\"id\":\"144\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1).png\",\"name\":\"Screenshot (1).png\"}', '{\"id\":\"145\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1)(1).png\",\"name\":\"Screenshot (1)(1).png\"}', '{\"id\":\"146\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1)(2).png\",\"name\":\"Screenshot (1)(2).png\"}', '{\"id\":\"147\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (2).png\",\"name\":\"Screenshot (2).png\"}', '{\"id\":\"147\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (2).png\",\"name\":\"Screenshot (2).png\"}', NULL, 'need_rework', 1, '2023-11-24 09:43:17', '2024-01-04 17:27:48', 1, 1, NULL, '1000', 'need_rework', 2),
(106, 'DH-00000107', 'Hộp cứng cao cấp SONA + Túi giấy (Sản xuất lại do lỗi kỹ thuật)', 1, NULL, '1000', 4, '40', '34', '10', NULL, NULL, '93276797.28', '93276797.28', NULL, '{\"id\":\"144\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1).png\",\"name\":\"Screenshot (1).png\"}', NULL, NULL, NULL, NULL, NULL, 'tech_submited', 1, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16, 1, NULL, '1000', NULL, 1),
(107, NULL, 'Hộp cứng cao cấp SONA + Túi giấy (Sản xuất lại do lỗi kỹ thuật)', 1, NULL, '1000', 4, '40', '34', '10', NULL, NULL, NULL, '93276797.28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, NULL, 'TÚI HOA QUẢ SỐ 2 - Mã A', 3, NULL, '15000', 4, '42', '27.5', '25', 136, NULL, '120412432', '120412432', NULL, '{\"id\":\"167\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 2a Chuẩn.pdf\",\"name\":\"SỐ 2a Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 14:31:15', '2024-02-21 16:48:09', 1, NULL, NULL, '15000', NULL, NULL),
(124, NULL, 'TÚI HOA QUẢ SỐ 2 - Mã C', 3, NULL, '10000', 4, '42', '27.5', '25', 140, NULL, '82477522', '82477522', NULL, '{\"id\":\"169\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 2C  chuẩn.pdf\",\"name\":\"SỐ 2C  chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 15:36:02', '2024-02-21 17:08:15', 1, NULL, NULL, '10000', NULL, NULL),
(125, NULL, 'TÚI HOA QUẢ SỐ 2 - Mã B', 3, NULL, '5000', 4, '42', '27.5', '25', 141, NULL, '41913460', '41913460', NULL, '{\"id\":\"168\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 2B  chuẩn.pdf\",\"name\":\"SỐ 2B  chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 15:37:33', '2024-02-21 17:10:53', 1, NULL, NULL, '5000', NULL, NULL),
(126, NULL, 'TÚI HOA QUẢ CHỮ A  ( Mã A-01)', 3, NULL, '15000', 4, '35', '26.5', '27', 142, NULL, '114941875', '114941875', NULL, '{\"id\":\"166\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/TÚI CHỮ A - 01 chuẩn.pdf\",\"name\":\"TÚI CHỮ A - 01 chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 15:53:24', '2024-02-21 16:33:43', 1, NULL, NULL, '15000', NULL, NULL),
(127, NULL, 'TÚI HOA QUẢ CHỮ A  ( Mã A-02 )', 3, NULL, '5000', 4, '35', '26.5', '27', 143, NULL, '40029962.5', '40029962.5', NULL, '{\"id\":\"165\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/TÚI CHỮ A - 02 chuẩn.pdf\",\"name\":\"TÚI CHỮ A - 02 chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 16:04:38', '2024-02-21 17:11:51', 1, NULL, NULL, '5000', NULL, NULL),
(128, NULL, 'TÚI HOA QUẢ CHỮ A ( Mã A-03 )', 3, NULL, '10000', 4, '35', '26.5', '27', 144, NULL, '78712468.75', '78712468.75', NULL, '{\"id\":\"164\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/TÚI CHỮ A - 03 chuẩn.pdf\",\"name\":\"TÚI CHỮ A - 03 chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 16:14:19', '2024-02-21 17:12:11', 1, NULL, NULL, '10000', NULL, NULL),
(129, NULL, 'TÚI HOA QUẢ SỐ 3 - Mã A', 3, NULL, '15000', 4, '33', '26.5', '18', 145, NULL, '92730082', '92730082', NULL, '{\"id\":\"170\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 3A Chuẩn.pdf\",\"name\":\"SỐ 3A Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 16:50:30', '2024-02-21 17:06:37', 1, NULL, NULL, '15000', NULL, NULL),
(130, NULL, 'TÚI HOA QUẢ SỐ 3 - Mã B', 3, NULL, '5000', 4, '33', '26.5', '18', 146, NULL, '32432335', '32432335', NULL, '{\"id\":\"170\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 3A Chuẩn.pdf\",\"name\":\"SỐ 3A Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:07:16', '2024-02-21 17:07:46', 1, NULL, NULL, '5000', NULL, NULL),
(131, NULL, 'TÚI HOA QUẢ SỐ 3 - Mã C', 3, NULL, '10000', 4, '33', '26.5', '18', 147, NULL, '63523484.5', '63523484.5', NULL, '{\"id\":\"171\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 3C Chuẩn.pdf\",\"name\":\"SỐ 3C Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:09:53', '2024-02-21 17:10:31', 1, NULL, NULL, '10000', NULL, NULL),
(132, NULL, 'TÚI HOA QUẢ SỐ 4 - Mã A', 3, NULL, '15000', 4, '29', '21', '21', 148, NULL, '82663750', '82663750', NULL, '{\"id\":\"172\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 4A Chuẩn.pdf\",\"name\":\"SỐ 4A Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:42:49', '2024-02-21 17:45:38', 1, NULL, NULL, '15000', NULL, NULL),
(133, NULL, 'TÚI HOA QUẢ SỐ 4 - Mã B', 3, NULL, '15000', 4, '29', '21', '21', 149, NULL, '28966525', '28966525', NULL, '{\"id\":\"173\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 4B Chuẩn.pdf\",\"name\":\"SỐ 4B Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:44:40', '2024-02-21 17:45:11', 1, NULL, NULL, '15000', NULL, NULL),
(134, NULL, 'TÚI HOA QUẢ SỐ 4 - Mã C', 3, NULL, '10000', 4, '29', '21', '21', 150, NULL, '56595437.5', '56595437.5', NULL, '{\"id\":\"174\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 4C Chuẩn.pdf\",\"name\":\"SỐ 4C Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:45:49', '2024-02-21 17:46:25', 1, NULL, NULL, '10000', NULL, NULL),
(135, NULL, 'TÚI HOA QUẢ SỐ 5 - Mã A', 3, NULL, '15000', 4, '26', '20', '17', 151, NULL, '112045015', '112045015', NULL, '{\"id\":\"175\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 5A Chuẩn.pdf\",\"name\":\"SỐ 5A Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:46:51', '2024-02-21 17:47:50', 1, NULL, NULL, '15000', NULL, NULL),
(136, NULL, 'TÚI HOA QUẢ SỐ 5 - Mã B', 3, NULL, '5000', 4, '26', '20', '17', 152, NULL, '39082412.5', '39082412.5', NULL, '{\"id\":\"176\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 5B Chuẩn.pdf\",\"name\":\"SỐ 5B Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:48:30', '2024-02-21 17:49:09', 1, NULL, NULL, '5000', NULL, NULL),
(137, NULL, 'TÚI HOA QUẢ SỐ 5 - Mã C', 3, NULL, '10000', 4, '26', '20', '17', 153, NULL, '76816783.75', '76816783.75', NULL, '{\"id\":\"177\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/SỐ 5C Chuẩn.pdf\",\"name\":\"SỐ 5C Chuẩn.pdf\"}', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2024-02-21 17:49:30', '2024-02-21 17:50:35', 1, NULL, NULL, '10000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `design_factor` decimal(10,0) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `design_factor`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Hộp cứng', 0, 1, 1, '2022-11-02 11:34:00', '2022-11-02 11:34:00'),
(2, 'Hộp giấy', 0, 1, 1, '2022-11-02 23:34:00', '2022-11-02 23:34:00'),
(3, 'Túi giấy', 0, 1, 1, '2022-11-02 23:34:00', '2022-11-02 23:34:00'),
(4, 'Tem rời dán tay', 0, 1, 1, '2022-11-02 23:34:00', '2023-07-26 15:33:29'),
(5, 'Mác giấy', 0, 1, 1, '2022-11-02 23:34:00', '2023-07-26 17:04:54'),
(6, 'Toa - Tờ rơi - Tờ gấp', 0, 1, 1, '2022-11-02 23:34:00', '2024-02-20 14:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_histories`
--

CREATE TABLE `product_histories` (
  `id` int(10) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `old_qty` bigint(20) DEFAULT NULL,
  `new_qty` bigint(20) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `product_styles`
--

CREATE TABLE `product_styles` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` int(10) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `product_styles`
--

INSERT INTO `product_styles` (`id`, `name`, `category`, `act`, `created_by`, `created_at`, `updated_at`) VALUES
(10, 'Hộp âm dương', 1, 1, 1, '2023-09-20 15:01:31', '2023-09-20 15:04:21'),
(11, 'Hộp âm dương có thành', 1, 1, 1, '2023-09-20 15:04:09', '2023-09-20 15:04:09'),
(12, 'Hộp nam châm', 1, 1, 1, '2023-09-20 15:04:34', '2023-09-20 15:04:34'),
(13, 'CÀI ĐÁY', 2, 1, 1, '2023-09-21 23:28:50', '2023-09-21 23:28:50'),
(14, 'KHÓA ĐÁY', 2, 1, 1, '2023-09-21 23:29:05', '2023-09-21 23:29:05'),
(15, 'RÁN MÓC ĐÁY', 2, 1, 1, '2023-09-21 23:29:19', '2023-09-21 23:29:19'),
(16, 'Khay Thuyền', 1, 1, 1, '2023-10-04 08:48:19', '2023-10-04 08:48:19'),
(17, 'KHAY GỖ MDF', 1, 1, 1, '2023-10-05 21:39:00', '2023-10-05 21:39:00');

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouses`
--

CREATE TABLE `product_warehouses` (
  `id` int(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` int(10) DEFAULT NULL,
  `product_style` int(10) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `design` int(10) DEFAULT NULL,
  `length` varchar(20) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `height` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `specification` int(10) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `expertise_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `p_substances`
--

CREATE TABLE `p_substances` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(10) NOT NULL,
  `seri` varchar(20) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `product_qty` bigint(20) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `contacter` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `city` int(10) DEFAULT NULL,
  `profit` varchar(20) DEFAULT NULL,
  `ship_price` varchar(20) DEFAULT NULL,
  `total_cost` varchar(20) DEFAULT NULL,
  `total_amount` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `src` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quotes`
--

INSERT INTO `quotes` (`id`, `seri`, `status`, `name`, `product_qty`, `customer_id`, `company_name`, `contacter`, `address`, `email`, `phone`, `telephone`, `city`, `profit`, `ship_price`, `total_cost`, `total_amount`, `note`, `act`, `src`, `created_at`, `updated_at`, `created_by`) VALUES
(136, 'BG-00000145', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '120412432', '120412432', NULL, 1, NULL, '2024-02-21 14:29:29', '2024-02-21 17:52:06', 1),
(140, 'BG-00000148', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '82477522', '82477522', NULL, 1, NULL, '2024-02-21 15:36:02', '2024-02-21 17:52:03', 1),
(141, 'BG-00000148', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '41913460', '41913460', NULL, 1, NULL, '2024-02-21 15:37:33', '2024-02-21 17:52:01', 1),
(142, 'BG-00000148', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '114941875', '114941875', NULL, 1, NULL, '2024-02-21 15:53:24', '2024-02-21 17:51:59', 1),
(143, 'BG-00000148', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '40029962.5', '40029962.5', NULL, 1, NULL, '2024-02-21 16:04:38', '2024-02-21 17:51:57', 1),
(144, 'BG-00000148', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '78712468.75', '78712468.75', NULL, 1, NULL, '2024-02-21 16:14:18', '2024-02-21 17:51:54', 1),
(145, 'BG-00000146', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '92730082', '92730082', NULL, 1, NULL, '2024-02-21 16:50:30', '2024-02-21 17:51:52', 1),
(146, 'BG-00000147', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '32432335', '32432335', NULL, 1, NULL, '2024-02-21 17:07:16', '2024-02-21 17:51:50', 1),
(147, 'BG-00000148', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '63523484.5', '63523484.5', NULL, 1, NULL, '2024-02-21 17:09:53', '2024-02-21 17:51:48', 1),
(148, 'BG-00000150', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '82663750', '82663750', NULL, 1, NULL, '2024-02-21 17:42:49', '2024-02-21 17:51:45', 1),
(149, 'BG-00000150', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '28966525', '28966525', NULL, 1, NULL, '2024-02-21 17:44:39', '2024-02-21 17:51:42', 1),
(150, 'BG-00000151', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '56595437.5', '56595437.5', NULL, 1, NULL, '2024-02-21 17:45:49', '2024-02-21 17:51:40', 1),
(151, 'BG-00000152', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '112045015', '112045015', NULL, 1, NULL, '2024-02-21 17:46:50', '2024-02-21 17:51:38', 1),
(152, 'BG-00000153', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '39082412.5', '39082412.5', NULL, 1, NULL, '2024-02-21 17:48:30', '2024-02-21 17:51:35', 1),
(153, 'BG-00000154', 'accepted', 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', NULL, 9, 'CTY CP IN & SẢN XUẤT BAO BÌ TUẤN DUNG', 'Mr Tuấn', 'Lô D5-16 Cụm Làng Nghề Triều khúc - Tân Triều - HN', 'kd1.intuandung@gmail.com', '0963303999', '02438303888', 351, '0', '0', '76816783.75', '76816783.75', NULL, 1, NULL, '2024-02-21 17:49:30', '2024-02-21 17:51:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `quote_configs`
--

CREATE TABLE `quote_configs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `value` text DEFAULT NULL,
  `act` tinyint(1) DEFAULT 0,
  `type` varchar(50) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `ord` int(10) DEFAULT NULL COMMENT 'Sắp xếp',
  `other_data` text DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `region` varchar(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `quote_configs`
--

INSERT INTO `quote_configs` (`id`, `name`, `keyword`, `value`, `act`, `type`, `note`, `ord`, `other_data`, `required`, `region`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'office_add', 'OFFICE_ADD', 'Lô D5-16 Cụm Làng Nghề Triều Khúc - HN', 1, 'text', 'Địa chỉ văn phòng', 2, NULL, 0, '1', '2023-05-09 17:09:41', '2023-10-14 16:40:38', 0),
(2, 'office_phone', 'OFFICE_PHONE', '38.303.666 - 38.303.888', 1, 'text', 'SĐT văn phòng', 2, NULL, 0, '1', '2023-05-09 17:09:41', '2023-05-09 17:09:41', 0),
(3, 'site', 'SITE', 'baobituandung.com', 1, 'text', 'Website', 2, NULL, 0, '1', '2023-05-09 17:09:42', '2023-10-14 16:29:56', 0),
(4, 'fact_add', 'FACT_ADD', 'KCN Hoa Sơn - Ứng Hòa - TP Hà Nội', 1, 'text', 'Địa chỉ nhà xưởng', 2, NULL, 0, '1', '2023-05-09 17:09:43', '2023-05-09 17:09:43', 0),
(5, 'fact_phone', 'FACT_PHONE', '38.303.777', 1, 'text', 'SĐT nhà xưởng', 2, NULL, 0, '1', '2023-05-09 17:09:44', '2023-05-09 17:09:44', 0),
(6, 'quote_wish', 'QUOTE_WISH', 'Cty CP in & SX bao bì Tuấn Dung xin gửi báo giá theo yêu cầu của quý khách. </br> \r\n          Chúc quý khách Mạnh Khỏe – Hạnh Phúc – An Khang Thịnh Vượng!', 1, 'textarea', 'Lời chúc', 2, NULL, 0, '1', '2023-05-09 17:09:44', '2023-05-09 17:09:44', 0),
(7, 'dvt', 'DVT', 'Sản phẩm', 1, 'text', 'Đơn vị tính', 2, NULL, 0, '1', '2023-05-09 17:09:45', '2023-05-09 17:09:45', 0),
(8, 'attention', 'ATTENTION', '<p style=\"text-align: left;\">1. Giao h&agrave;ng tận nơi theo y&ecirc;u cầu của qu&yacute; kh&aacute;ch</p>\r\n<p class=\"font-italic mb-1\">2. Đơn gi&aacute; chưa bao gồm 10% VAT.</p>\r\n<p class=\"font-italic mb-1\">3&nbsp; B&aacute;o gi&aacute; c&oacute; hiệu lực trong v&ograve;ng 30 ng&agrave;y.</p>\r\n<p class=\"font-italic mb-1\"><strong>4. Xin Q&uacute;y kh&aacute;ch Lưu &yacute;:</strong></p>\r\n<p class=\"font-italic mb-1\"><strong>* Thời gian thực hiện sản xuất đối với hộp giấy mềm l&agrave; từ 5-8&nbsp;ng&agrave;y, T&ugrave;y theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng &amp; Thời điểm đặt h&agrave;ng hiện tại</strong></p>\r\n<p class=\"font-italic mb-1\"><strong>* Thời gian thực hiện sản xuất đối với hộp Cứng&nbsp;l&agrave; từ&nbsp;7-15&nbsp;ng&agrave;y, T&ugrave;y theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng &amp; Thời điểm đặt h&agrave;ng hiện tại</strong></p>\r\n<p class=\"font-italic mb-1\">5. Phương thức thanh to&aacute;n: Theo thỏa thuận 2 b&ecirc;n</p>\r\n<div class=\"font-italic ml-md-3\">\r\n<p class=\"font-italic mb-1\"><span style=\"color: #ff0000;\"><strong>&nbsp;</strong></span></p>\r\n</div>', 1, 'editor', 'Lưu ý khách hàng', 2, NULL, 0, '1', '2023-05-09 17:09:46', '2023-05-09 17:09:46', 0),
(9, 'quote_percent', 'QUOTE_PERCENT', '10', 1, 'text', '% Lợi nhận báo giá', 1, NULL, 0, '1', '2023-05-09 17:09:48', '2023-05-09 17:09:48', 0),
(10, 'office_tel', 'OFFICE_TEL', '0969.303.888 Ms Dung', 1, 'text', 'SĐT văn phòng', 2, NULL, 0, '1', '2023-05-09 17:09:49', '2023-05-09 17:09:49', 0),
(11, 'fact_tel', 'FACT_TEL', '0963.303.999 Mr Tuấn', 1, 'text', 'SĐT nhà xưởng', 2, NULL, 0, '1', '2023-05-09 17:09:56', '2023-05-09 17:09:56', 0),
(12, 'apla_price_fac', 'APLA_PRICE_FACTOR', '0.1', 1, 'text', 'ĐG lượt in áp la', 0, NULL, 0, '14', '2023-05-09 17:32:17', '2023-10-01 08:43:55', 0),
(13, 'apla_price_plus', 'APLA_PRICE_PLUS', '100000', 1, 'text', 'ĐG khuôn in áp la', 0, NULL, 0, '14', '2023-05-09 17:32:57', '2023-05-09 17:32:57', 0),
(14, 'compen_percent', 'COMPEN_PERCENT', '2', 1, 'text', 'Bù hao giấy in (%)', 1, NULL, 0, '11', '2023-05-09 19:03:02', '2023-09-28 12:09:20', 0),
(15, 'carton_compen_percent', 'CARTON_COMPEN_PERCENT', '2', 1, 'text', 'Bù hao vật tư carton (%)', 2, NULL, 0, '11', '2023-05-09 19:03:01', '2023-09-30 20:31:08', 0),
(16, 'compen_percent_pro', 'COMPEN_PERCENT_PRO', '1', 1, 'text', 'Bù hao sản phẩm (%)', 0, NULL, 0, '11', '2023-05-09 19:03:00', '2023-09-24 08:41:45', 0),
(17, 'plus_direct', 'PLUS_DIRECT', '50', 1, 'text', 'Tờ in cộng thẳng', 8, NULL, 0, '11', '2023-05-09 19:02:59', '2023-09-28 04:19:02', 0),
(18, 'plus_paper_metalai', 'PLUS_PAPER_METALAI', '100', 1, 'text', 'Bù hao giấy in khi cán metalai', 11, NULL, 0, '11', '2023-05-09 19:02:58', '2023-09-24 08:42:04', 0),
(19, 'print_subtract_paper', 'PRINT_SUBTRACT_PAPER', '1000', 1, 'text', 'Trừ vật tư giấy trước in', 9, NULL, 0, '11', '2023-05-09 19:02:56', '2023-09-24 08:41:55', 0),
(20, 'plus_paper_device', 'PLUS_PAPER_DEVICE', '50', 1, 'text', 'Bù hao máy in', 10, NULL, 0, '11', '2023-05-10 10:36:53', '2023-09-24 08:41:57', 0),
(21, 'magnet_perc', 'MAGNET_PERC', '1.05', 1, 'text', 'Hệ số nam châm', 0, NULL, 0, '14', '2023-05-09 18:54:04', '2023-09-30 17:35:12', 0),
(22, 'vat_perc', 'VAT_PERC', '8', 1, 'text', 'VAT (%)', 1, NULL, 0, '1', '2023-05-09 17:09:48', '2023-05-09 17:09:48', 0),
(23, 'rubber_compen_percent', 'RUBBER_COMPEN_PERCENT', '1', 1, 'text', 'Bù hao vật tư cao su non (%)', 3, NULL, 0, '11', '2023-05-09 19:03:01', '2023-09-24 08:40:44', 0),
(24, 'styro_compen_percent', 'STYRO_COMPEN_PERCENT', '1', 1, 'text', 'Bù hao vật tư mút phẳng (%)', 4, NULL, 0, '11', '2023-05-09 19:03:01', '2023-09-24 15:52:37', 0),
(25, 'decal_compen_percent', 'DECAL_COMPEN_PERCENT', '1', 1, 'text', 'Bù hao vật tư đề can nhung (%)', 5, NULL, 0, '11', '2023-05-09 19:03:01', '2023-09-24 15:52:48', 0),
(26, 'silk_compen_percent', 'SILK_COMPEN_PERCENT', '1', 1, 'text', 'Bù hao vật tư vải lụa (%)', 6, NULL, 0, '11', '2023-05-09 19:03:01', '2023-09-24 15:54:04', 0),
(27, 'mica_compen_percent', 'MICA_COMPEN_PERCENT', '1', 1, 'text', 'Bù hao vật tư mica (%)', 7, NULL, 0, '11', '2023-05-09 19:03:01', '2023-09-24 15:54:08', 0),
(28, 'plus_to_percent', 'PLUS_TO_PERCENT', '50', 1, 'text', 'Tờ in cộng thêm vào % BH', 8, NULL, 0, '11', '2023-05-09 19:02:59', '2023-09-28 04:09:01', 0),
(29, 'plus_to_device_worker', 'PLUS_TO_DEVICE_WORKER', '50', 1, 'text', 'Bù hao máy in', 10, NULL, 0, '11', '2023-05-10 10:36:53', '2023-09-24 08:41:57', 0),
(30, 'office_email', 'OFFICE_EMAIL', 'intuandung2000@gmail.com', 1, 'text', 'SĐT văn phòng', 2, NULL, 0, '1', '2023-05-09 17:09:41', '2023-05-09 17:09:41', 0),
(31, 'magnet_compen_percent', 'MAGNET_COMPEN_PERCENT', '1', 1, 'text', 'Bù hao vật tư nam châm (%)', 7, NULL, 0, '11', '2023-05-09 19:03:01', '2023-12-12 22:17:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `square_warehouses`
--

CREATE TABLE `square_warehouses` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `supp_price` int(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `square_warehouses`
--

INSERT INTO `square_warehouses` (`id`, `name`, `width`, `qty`, `type`, `supp_price`, `status`, `note`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'Màng nilon mờ', '70', '39143', 'nilon', 9, 'imported', NULL, 1, '2023-09-23 16:18:36', '2023-09-29 14:11:58', 1),
(2, 'Nilon mờ ( đã gọi )', '71.5', '62420', 'nilon', 9, 'imported', NULL, 1, '2023-09-24 16:08:00', '2023-12-12 23:08:20', 1),
(3, 'mang nilon test', '11', '1111', 'nilon', 9, 'imported', NULL, 1, '2023-09-25 23:37:00', '2023-09-25 23:37:00', 7),
(4, 'nilon mờ ( test )', '100', '6126', 'nilon', 9, 'imported', NULL, 1, '2024-01-04 16:44:40', '2024-01-04 16:44:40', 16),
(5, 'màng mờ', '50.5', '530000', 'nilon', 9, 'imported', NULL, 1, '2023-10-07 08:29:35', '2023-10-07 08:29:35', 7),
(6, 'màng mờ', '101', '530000', 'nilon', 9, 'imported', NULL, 1, '2023-10-07 08:49:10', '2023-10-07 08:49:10', 7);

-- --------------------------------------------------------

--
-- Table structure for table `supplies`
--

CREATE TABLE `supplies` (
  `id` int(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` int(10) DEFAULT NULL,
  `product_qty` bigint(20) DEFAULT NULL,
  `nqty` varchar(20) DEFAULT NULL,
  `double` tinyint(4) DEFAULT NULL,
  `base_supp_qty` bigint(20) DEFAULT NULL,
  `compent_percent` decimal(10,0) DEFAULT NULL,
  `compent_plus` bigint(20) DEFAULT NULL,
  `supp_qty` bigint(20) DEFAULT NULL,
  `size` text DEFAULT NULL,
  `cut` text DEFAULT NULL,
  `elevate` text DEFAULT NULL,
  `peel` text DEFAULT NULL,
  `mill` text DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `handle_elevate` text DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `total_cost` varchar(20) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supplies`
--

INSERT INTO `supplies` (`id`, `code`, `name`, `product_qty`, `nqty`, `double`, `base_supp_qty`, `compent_percent`, `compent_plus`, `supp_qty`, `size`, `cut`, `elevate`, `peel`, `mill`, `note`, `handle_elevate`, `type`, `status`, `product`, `total_cost`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(173, 'DH-00000024AE', 49, 3000, '1', 0, 3000, 60, 200, 3260, '{\"length\":\"36\",\"width\":\"102\",\"supply_type\":\"21\",\"supply_price\":\"121\",\"qttv_price\":1.925,\"supp_qty\":3260,\"act\":1,\"total\":23043636}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":3260,\"handle_qty\":3000,\"act\":1,\"total\":360800}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":3260,\"handle_qty\":3000,\"cost\":1139800,\"act\":1,\"total\":1139800}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":80600}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":3030,\"factor\":1,\"handle_qty\":3000,\"act\":1,\"total\":554500}', NULL, '{\"num\":\"2\",\"total\":\"3060\"}', 'carton', 'submited', 94, '25179336', 1, '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(174, 'DH-00000024AF', 50, 3000, '1', 0, 3000, 60, 200, 3260, '{\"length\":\"54\",\"width\":\"60\",\"supply_type\":\"21\",\"supply_price\":\"121\",\"qttv_price\":1.925,\"supp_qty\":3260,\"act\":1,\"total\":20332620}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":3260,\"handle_qty\":3000,\"act\":1,\"total\":360800}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":3260,\"handle_qty\":3000,\"cost\":1075000,\"act\":1,\"total\":1075000}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":80600}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":3030,\"factor\":2,\"handle_qty\":3000,\"act\":1,\"total\":1009000}', NULL, '{\"num\":\"2\",\"total\":\"3060\"}', 'carton', 'submited', 94, '22858020', 1, '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(175, 'DH-00000024AG', 54, 3000, '1', 0, 3000, 60, 100, 3160, '{\"length\":\"43\",\"width\":\"38\",\"supply_type\":\"21\",\"supply_price\":\"118\",\"qttv_price\":1.386,\"supp_qty\":3160,\"act\":1,\"total\":7156527.839999999}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":3160,\"handle_qty\":3000,\"act\":1,\"total\":352800}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":3160,\"handle_qty\":3000,\"cost\":819100,\"act\":1,\"total\":819100}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":3030,\"handle_qty\":3000,\"act\":1,\"total\":80600}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":3030,\"factor\":2,\"handle_qty\":3000,\"act\":1,\"total\":1009000}', NULL, '{\"num\":\"4\",\"total\":\"12240\"}', 'carton', 'submited', 94, '9418027.84', 1, '2024-01-03 05:55:53', '2024-01-03 05:55:53', 16),
(191, NULL, 49, 1000, '1', 0, 1000, 20, 0, 1020, '{\"length\":\"36\",\"width\":\"102\",\"supply_type\":\"21\",\"supply_price\":\"121\",\"qttv_price\":1.925,\"supp_qty\":1020,\"act\":1,\"total\":7209972}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"act\":1,\"total\":181600}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":803800,\"act\":1,\"total\":803800}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40200}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":1010,\"factor\":1,\"handle_qty\":1000,\"act\":1,\"total\":251500}', NULL, NULL, 'carton', NULL, 106, '8487072', 1, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(192, NULL, 50, 1000, '1', 0, 1000, 20, 0, 1020, '{\"length\":\"54\",\"width\":\"60\",\"supply_type\":\"21\",\"supply_price\":\"121\",\"qttv_price\":1.925,\"supp_qty\":1020,\"act\":1,\"total\":6361740}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"act\":1,\"total\":181600}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":739000,\"act\":1,\"total\":739000}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40200}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":1010,\"factor\":2,\"handle_qty\":1000,\"act\":1,\"total\":403000}', NULL, NULL, 'carton', NULL, 106, '7725540', 1, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(193, NULL, 54, 1000, '1', 0, 1000, 20, 0, 1020, '{\"length\":\"43\",\"width\":\"38\",\"supply_type\":\"21\",\"supply_price\":\"118\",\"qttv_price\":1.386,\"supp_qty\":1020,\"act\":1,\"total\":2310018.4799999995}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"act\":1,\"total\":181600}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":498100,\"act\":1,\"total\":498100}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40200}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":1010,\"factor\":2,\"handle_qty\":1000,\"act\":1,\"total\":403000}', NULL, NULL, 'carton', NULL, 106, '3432918.48', 1, '2024-01-03 06:04:27', '2024-01-03 06:04:27', 16),
(194, NULL, 49, 1000, '1', 0, 1000, 20, 0, 1020, '{\"length\":\"36\",\"width\":\"102\",\"supply_type\":\"21\",\"supply_price\":\"121\",\"qttv_price\":1.925,\"supp_qty\":1020,\"act\":1,\"total\":7209972}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"act\":1,\"total\":181600}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":803800,\"act\":1,\"total\":803800}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40200}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":1010,\"factor\":1,\"handle_qty\":1000,\"act\":1,\"total\":251500}', NULL, NULL, 'carton', NULL, 107, '8487072', 1, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1),
(195, NULL, 50, 1000, '1', 0, 1000, 20, 0, 1020, '{\"length\":\"54\",\"width\":\"60\",\"supply_type\":\"21\",\"supply_price\":\"121\",\"qttv_price\":1.925,\"supp_qty\":1020,\"act\":1,\"total\":6361740}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"act\":1,\"total\":181600}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":739000,\"act\":1,\"total\":739000}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40200}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":1010,\"factor\":2,\"handle_qty\":1000,\"act\":1,\"total\":403000}', NULL, NULL, 'carton', NULL, 107, '7725540', 1, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1),
(196, NULL, 54, 1000, '1', 0, 1000, 20, 0, 1020, '{\"length\":\"43\",\"width\":\"38\",\"supply_type\":\"21\",\"supply_price\":\"118\",\"qttv_price\":1.386,\"supp_qty\":1020,\"act\":1,\"total\":2310018.4799999995}', '{\"machine\":\"18\",\"model_price\":0,\"work_price\":80,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"act\":1,\"total\":181600}', '{\"machine\":\"21\",\"model_price\":150,\"work_price\":150,\"shape_price\":100000,\"supp_qty\":1020,\"handle_qty\":1000,\"cost\":498100,\"act\":1,\"total\":498100}', '{\"machine\":\"39\",\"model_price\":0,\"work_price\":20,\"shape_price\":20000,\"qty_pro\":1010,\"handle_qty\":1000,\"act\":1,\"total\":40200}', '{\"machine\":\"7\",\"model_price\":0,\"work_price\":150,\"shape_price\":100000,\"qty_pro\":1010,\"factor\":2,\"handle_qty\":1000,\"act\":1,\"total\":403000}', NULL, NULL, 'carton', NULL, 107, '3432918.48', 1, '2024-02-20 14:28:37', '2024-02-20 14:28:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supply_buyings`
--

CREATE TABLE `supply_buyings` (
  `id` int(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `provider` int(10) DEFAULT NULL,
  `supply` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL,
  `bill` text DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `applied_by` int(10) DEFAULT NULL,
  `bought_by` int(10) DEFAULT NULL,
  `submited_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supply_buyings`
--

INSERT INTO `supply_buyings` (`id`, `code`, `name`, `provider`, `supply`, `status`, `payment_status`, `total`, `bill`, `note`, `act`, `created_by`, `applied_by`, `bought_by`, `submited_by`, `created_at`, `updated_at`) VALUES
(17, 'CT-00000017', 'Chứng từ 1', 50, '[{\"supp_type\":\"paper\",\"size_type\":\"51\",\"qty\":\"1000\",\"price\":200,\"total\":200000},{\"supp_type\":\"nilon\",\"size_type\":\"4\",\"qty\":\"2000\",\"price\":100,\"total\":200000}]', 'submited', 'not_payment', '400000', '{\"id\":\"139\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (34).png\",\"name\":\"Screenshot (34).png\"}', 'mua bổ sung cho đơn 1', 1, 6, 17, 18, 16, '2023-11-18 08:04:12', '2024-01-04 16:44:40'),
(18, 'CT-00000018', 'Yêu cầu mua vật tư giấy in', 51, '[{\"supp_type\":\"paper\",\"size_type\":\"47\",\"qty\":\"1111\",\"price\":200,\"total\":222200},{\"supp_type\":\"paper\",\"size_type\":\"46\",\"qty\":\"2000\",\"price\":300,\"total\":600000}]', 'submited', 'paid_off', '822200', '{\"id\":\"140\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (36).png\",\"name\":\"Screenshot (36).png\"}', 'mua thêm vật tư cho đơn hàng 2', 1, 6, 17, 18, 7, '2023-11-21 11:18:50', '2023-11-21 11:21:00'),
(19, 'CT-00000019', 'giấy', 51, '[{\"supp_type\":\"paper\",\"size_type\":\"47\",\"qty\":\"10\",\"price\":20,\"total\":200},{\"supp_type\":\"paper\",\"size_type\":\"47\",\"qty\":\"10\",\"price\":10,\"total\":100}]', 'submited', 'not_payment', '300', '{\"id\":\"141\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg\",\"name\":\"HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg\"}', NULL, 1, 6, 17, 18, 7, '2023-11-21 11:34:48', '2023-11-21 11:40:18'),
(20, 'CT-00000020', 'Mua thêm vật tư 3', 49, '[{\"supp_type\":\"paper\",\"size_type\":\"47\",\"qty\":\"1000\",\"price\":200,\"total\":200000},{\"supp_type\":\"nilon\",\"size_type\":\"4\",\"qty\":\"2000\",\"price\":100,\"total\":200000}]', 'submited', 'not_payment', '400000', '{\"id\":\"142\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (36)(1).png\",\"name\":\"Screenshot (36)(1).png\"}', '12', 1, 6, 17, 18, 16, '2023-11-21 17:46:20', '2023-12-25 20:34:10'),
(21, 'CT-00000022', NULL, 50, '[{\"supp_type\":\"paper\",\"size_type\":\"81\",\"qty\":\"10000\",\"price\":200,\"total\":2000000}]', 'submited', 'not_payment', '2000000', '{\"id\":\"150\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1)(5).png\",\"name\":\"Screenshot (1)(5).png\"}', NULL, 1, 17, 17, 18, 7, '2023-12-09 11:45:00', '2023-12-09 11:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `supply_names`
--

CREATE TABLE `supply_names` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `type` varchar(20) DEFAULT NULL COMMENT 'Cha',
  `factor` bigint(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `ord` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supply_names`
--

INSERT INTO `supply_names` (`id`, `name`, `type`, `factor`, `note`, `act`, `ord`, `created_at`, `updated_at`, `created_by`) VALUES
(49, 'CARTON BÌA', 'carton', 1, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-07-20 10:21:00', '2023-09-15 02:05:25', 1),
(50, 'Carton THÀNH', 'carton', 2, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-07-20 10:21:00', '2023-09-15 02:49:21', 1),
(51, 'Carton NẮP', 'carton', 2, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-07-20 10:21:00', '2023-09-15 04:25:55', 1),
(52, 'CARTON ĐÁY', 'carton', 2, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-07-20 10:21:00', '2023-09-15 04:25:44', 1),
(53, 'CARTON GHÉP NẮP + ĐÁY', 'carton', 4, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-07-20 10:21:00', '2023-09-15 04:25:31', 1),
(54, 'CARTON KHAY ĐỊNH HÌNH', 'carton', 2, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-07-20 10:21:00', '2023-09-15 04:25:10', 1),
(55, 'SÓNG E 3 lớp', 'carton', 2, 'chỉ là tên vật tư cho lệnh sản xuất', 1, NULL, '2023-10-06 08:09:30', '2023-10-06 08:09:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supply_prices`
--

CREATE TABLE `supply_prices` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `price` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `supply_id` int(11) DEFAULT NULL COMMENT 'Cha',
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `ord` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supply_prices`
--

INSERT INTO `supply_prices` (`id`, `name`, `price`, `type`, `supply_id`, `note`, `act`, `ord`, `created_at`, `updated_at`, `created_by`) VALUES
(9, '1.0cm', '40000', 'rubber', 6, 'Tính theo m2 là 1.25 x 2.5 = 3.125m2 ( tính ra là 40.000đ/m2 )', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(10, '1.5cm', '60000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(11, '2.0cm', '80000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(12, '2.5cm', '100000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(13, '3.0cm', '120000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(14, '3.5cm', '140000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(15, '4.0cm', '160000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(16, '4.5cm', '180000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(17, '5.0cm', '200000', 'rubber', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(61, 'Mút phẳng K21-0.3cm', '0.63', 'styrofoam', 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 02:33:28', 0),
(64, 'Mút phẳng K30-0.3cm', '0.9', 'styrofoam', 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 02:42:41', 0),
(67, 'Mút phẳng K40-0.3cm', '1.14', 'styrofoam', 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 02:48:14', 0),
(68, '0.5cm', '60000', 'styrofoam', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(69, '0.8cm', '60000', 'styrofoam', 6, '', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(72, '1 cm', '6', 'styrofoam', 7, '60.000đ/m2 ( Cao su non 35k/m2 + Nhung 25k/m2 )', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(105, 'Carton 0.8ly', '0.6160', NULL, 21, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề )', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 0),
(106, 'Carton 0.8ly', '1.156', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:39:25', 0),
(115, 'Carton 1ly', '0.77', NULL, 21, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề )', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(116, 'Carton 1.2ly', '0.9240', NULL, 21, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(117, 'Carton 1.5ly', '1.155', NULL, 21, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(118, 'Carton 1.8ly', '1.3860', NULL, 21, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề )', 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(119, 'Carton 2ly', '1.54', NULL, 21, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(120, 'Carton 2.2ly', '1.694', NULL, 21, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(121, 'Carton 2.5ly', '1.925', NULL, 21, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(122, 'Carton 3ly', '2.31', NULL, 21, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(123, 'Carton 1ly', '1.31', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:39:53', 1),
(124, 'Carton 1.2ly', '1.464', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:40:23', 1),
(125, 'Carton 1.5ly', '1.695', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:40:59', 1),
(126, 'Carton 1.8ly', '1.926', NULL, 5, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:42:42', 1),
(127, 'Carton 2ly', '2.08', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:43:16', 1),
(128, 'Carton 2.2ly', '2.234', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:43:53', 1),
(129, 'Carton 2.5ly', '2.465', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:44:57', 1),
(131, 'Carton 3ly', '2.85', NULL, 5, 'Định lượng 700mgr quy đổi ra ly = 1ly, Vd dụ carton 1.8ly thì quy ra CT là 1.8 x 700 = 1260mgr, tương tự như cái khác 2ly x 700 = 1400mgr ( GIÁ NHÀ MAK đưa ra tháng 7 là 10.5/ tấn, giá lấy khách hàng là 11/ tấn để bù trừ băng lề ) + 5400 gồm giấy + công b', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:44:45', 1),
(154, 'Cao su non bồi nhung 0.8cm', '1', NULL, 22, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(155, 'Cao su non bồi nhung 1cm', '14.6', NULL, 23, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1),
(156, 'CAO SU NON TRẮNG 0.3cm', '1.2', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:52:37', 1),
(157, 'CAO SU NON 0.3cm', '1.2', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:49:50', 1),
(158, 'CAO SU NON 0.5cm', '2', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:49:56', 1),
(159, 'CAO SU NON 0.8cm', '3.2', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:03', 1),
(160, 'CAO SU NON 1cm', '4', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2  \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:10', 1),
(161, 'CAO SU NON 1.2cm', '4.8', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:16', 1),
(162, 'CAO SU NON 1.5cm', '6', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 38.400đ/m2\r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-14 21:34:42', 1),
(163, 'CAO SU NON 1.8cm', '7.2', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:23', 1),
(164, 'CAO SU NON 2cm', '9', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:30', 1),
(165, 'CAO SU NON 2.5cm', '11.2', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:37', 1),
(166, 'CAO SU NON 3cm', '13.5', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2 \r\n6: Bù hoa 5% lề = 38.400 x 5% = 40.300 lấy 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:43', 1),
(167, 'CAO SU NON 3.5cm', '15.7', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:50', 1),
(168, 'CAO SU NON 4cm', '18', NULL, 29, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:50:56', 1),
(172, 'PET 0.15', '200', NULL, 37, NULL, 1, NULL, '2023-07-20 10:21:00', '2024-01-10 10:13:15', 1),
(173, 'CAO SU NON TRẮNG 0.5cm', '2', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 10:56:35', '2023-09-16 01:52:47', 1),
(174, 'CAO SU NON TRẮNG 0.8cm', '3.2', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 10:57:03', '2023-09-16 01:52:57', 1),
(175, 'CAO SU NON TRẮNG 1cm', '4', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 10:58:31', '2023-09-16 01:53:10', 1),
(176, 'CAO SU NON TRẮNG 1.2cm', '4.8', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 10:58:54', '2023-09-16 01:53:21', 1),
(177, 'CAO SU NON TRẮNG 1.5cm', '6', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 10:59:24', '2023-09-16 01:53:33', 1),
(178, 'CAO SU NON TRẮNG 1.8cm', '7.2', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 10:59:43', '2023-09-16 01:53:46', 1),
(179, 'CAO SU NON TRẮNG 2cm', '9', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 11:00:02', '2023-09-16 01:53:57', 1),
(180, 'CAO SU NON TRẮNG 2.5cm', '11.25', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 11:38:49', '2023-09-16 01:54:15', 1),
(181, 'CAO SU NON TRẮNG 3cm', '13.5', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 11:39:05', '2023-09-16 01:54:31', 1),
(182, 'CAO SU NON TRẮNG 3.5cm', '15.7', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 11:39:24', '2023-09-16 01:54:47', 1),
(183, 'CAO SU NON TRẮNG 4cm', '18', NULL, 28, '1: Tấm cao sun đen & trắng đại thành bán 1.25 x 2.5m = 110k 2: Bù hao bằng lề =  10k\r\n3: Tính khách hàng = 120k/ tấm khổ 1.25 x 2.5m\r\n4: Quy đổi ra m2 là 1.25 x 2.5 = 3,125m2\r\n5: 1m2 = 40.000đ/m2', 1, NULL, '2023-08-30 11:40:41', '2023-09-16 01:55:01', 1),
(184, 'Mút phẳng K21-0.5cm', '1.05', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:34:50', '2023-09-16 02:34:50', 1),
(185, 'Mút phẳng K21-0.8cm', '1.68', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:35:23', '2023-09-16 02:35:23', 1),
(186, 'Mút phẳng K21-1cm', '2.1', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:35:55', '2023-09-16 02:35:55', 1),
(187, 'Mút phẳng K21-1.2cm', '2.52', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:36:22', '2023-09-16 02:36:22', 1),
(188, 'Mút phẳng K21-1.5cm', '3.15', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:36:39', '2023-09-16 02:36:39', 1),
(190, 'Mút phẳng K21-1.8cm', '3.78', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:37:14', '2023-09-16 02:37:14', 1),
(191, 'Mút phẳng K21-2cm', '5.2', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:37:31', '2023-09-16 02:37:31', 1),
(192, 'Mút phẳng K21-2.5cm', '6.5', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:38:07', '2023-09-16 02:38:07', 1),
(193, 'Mút phẳng K21-3cm', '7.8', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:38:21', '2023-09-16 02:38:21', 1),
(194, 'Mút phẳng K21-3.5cm', '9.1', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:38:34', '2023-09-16 02:38:34', 1),
(195, 'Mút phẳng K21-4cm', '10.04', NULL, 10, 'giá nhà đại thành 18k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:39:09', '2023-09-16 02:39:09', 1),
(196, 'Mút phẳng K30-0.5cm', '1.5', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:43:20', '2023-09-16 02:43:20', 1),
(197, 'Mút phẳng K30-0.8cm', '2.4', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:43:32', '2023-09-16 02:43:32', 1),
(198, 'Mút phẳng K30-1cm', '3', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:43:44', '2023-09-16 02:43:44', 1),
(199, 'Mút phẳng K30-1.2cm', '3.6', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:44:04', '2023-09-16 02:44:04', 1),
(200, 'Mút phẳng K30-1.5cm', '4.5', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:44:22', '2023-09-16 02:44:22', 1),
(201, 'Mút phẳng K30-1.8cm', '5.4', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:44:37', '2023-09-16 02:44:37', 1),
(202, 'Mút phẳng K30-2cm', '7', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:44:51', '2023-09-16 02:44:51', 1),
(203, 'Mút phẳng K30-2.5cm', '87.5', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:45:07', '2023-09-16 02:45:07', 1),
(204, 'Mút phẳng K30-3cm', '10.05', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:45:49', '2023-09-16 02:45:49', 1),
(205, 'Mút phẳng K30-3.5cm', '12.25', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:46:10', '2023-09-16 02:46:10', 1),
(206, 'Mút phẳng K30-4cm', '14', NULL, 9, 'giá nhà đại thành 25k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:46:24', '2023-09-16 02:46:24', 1),
(207, 'Mút phẳng K40-0.5cm', '19', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:48:52', '2023-09-16 02:48:52', 1),
(208, 'Mút phẳng K40-0.8cm', '3.04', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:49:21', '2023-09-16 02:49:21', 1),
(209, 'Mút phẳng K40-1cm', '3.8', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:49:36', '2023-09-16 02:49:36', 1),
(210, 'Mút phẳng K40-1.2cm', '4.56', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:49:55', '2023-09-16 02:49:55', 1),
(211, 'Mút phẳng K40-1.5cm', '5.7', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:50:14', '2023-09-16 02:50:14', 1),
(212, 'Mút phẳng K40-1.8cm', '6.84', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:50:33', '2023-09-16 02:50:33', 1),
(213, 'Mút phẳng K40-2cm', '8.6', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:50:46', '2023-09-16 02:50:46', 1),
(214, 'Mút phẳng K40-2.5cm', '10.75', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:51:00', '2023-09-16 02:51:00', 1),
(215, 'Mút phẳng K40-3cm', '12.9', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:51:13', '2023-09-16 02:51:13', 1),
(216, 'Mút phẳng K40-3.5cm', '15.05', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:51:30', '2023-09-16 02:51:30', 1),
(217, 'Mút phẳng K40-4cm', '17.2', NULL, 8, 'giá nhà đại thành 32k/1m2/ dầy 1cm ( Nhân thêm 20% phía hao hut )', 1, NULL, '2023-09-16 02:51:45', '2023-09-16 02:51:45', 1),
(218, 'MDF 1.9ly', '1.55', NULL, 49, 'Khổ 1.22 x 2.44 = 42.000đ', 1, NULL, '2023-10-04 09:55:53', '2023-10-05 21:13:00', 1),
(219, 'MDF 2.3ly', '1.6835', NULL, 49, 'Khổ 1.22 x 2.44 = 47.500đ', 1, NULL, '2023-10-04 10:03:21', '2023-10-05 21:13:14', 1),
(220, 'MDF 3ly', '2.155', NULL, 49, 'Khổ 1.22 x 2.44 = 60000đ', 1, NULL, '2023-10-04 10:08:33', '2023-10-05 21:13:33', 1),
(221, 'MDF 5ly', '3.4345', NULL, 49, 'Khổ 1.22 x 2.44 = 96000đ', 1, NULL, '2023-10-04 10:09:12', '2023-10-05 21:13:55', 1),
(222, 'MDF 8ly', '4.512', NULL, 49, 'Khổ 1.22 x 2.44 = 96000đ', 1, NULL, '2023-10-05 21:14:28', '2023-10-05 21:14:28', 1),
(223, 'MDF 10ly', '5.0500', NULL, 49, 'Khổ 1.22 x 2.44 = 96000đ', 1, NULL, '2023-10-05 21:14:41', '2023-10-05 21:14:41', 1),
(224, 'SÓNG E 3 lớp loại cứng', '0.65', NULL, 50, 'Nhà phương anh bán 6200đ/m2', 1, NULL, '2023-10-06 08:13:51', '2023-10-06 08:13:51', 1),
(225, 'PET 0.18', '200', NULL, 37, NULL, 1, NULL, '2024-01-10 10:13:35', '2024-01-10 10:13:35', 1),
(226, 'PET 0.2', '200', NULL, 37, NULL, 1, NULL, '2024-01-10 10:13:47', '2024-01-10 10:13:47', 1),
(227, 'PET 0.25', '200', NULL, 37, NULL, 1, NULL, '2024-01-10 10:13:53', '2024-01-10 10:13:53', 1),
(228, 'PET 0.3', '200', NULL, 37, NULL, 1, NULL, '2024-01-10 10:14:09', '2024-01-10 10:14:09', 1),
(229, 'PET 0.4', '200', NULL, 37, NULL, 1, NULL, '2024-01-10 10:14:15', '2024-01-10 10:14:15', 1),
(230, 'PET 0.5', '200', NULL, 37, NULL, 1, NULL, '2024-01-10 10:14:23', '2024-01-10 10:14:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supply_types`
--

CREATE TABLE `supply_types` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `type` varchar(20) DEFAULT NULL COMMENT 'Cha',
  `factor` bigint(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `ord` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `is_name` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supply_types`
--

INSERT INTO `supply_types` (`id`, `name`, `type`, `factor`, `note`, `act`, `ord`, `created_at`, `updated_at`, `created_by`, `is_name`) VALUES
(5, 'CARTON NÂU- TRẮNG C120', 'carton', 2, '1 Mặt nâu + 1 mặt bồi C trắng', 1, NULL, '2023-07-20 10:21:00', '2023-09-16 01:35:57', 1, 0),
(8, 'Mút phẳng K40', 'styrofoam', 0, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 0),
(9, 'Mút phẳng K30', 'styrofoam', 0, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 0),
(10, 'Mút phẳng K21', 'styrofoam', 0, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 0),
(21, 'CARTON MẶT NÂU - MỘC', 'carton', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-09-14 20:41:01', 1, 0),
(28, 'CAO SU NON MÀU TRẮNG', 'rubber', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-08-30 11:35:14', 1, 0),
(29, 'CAO SU NON MÀU ĐEN', 'rubber', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-08-30 09:33:39', 1, 0),
(37, 'Mica 1', 'mica', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 0),
(38, 'KHAY ĐỊNH HÌNH', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(39, 'TỜ BỒI THÀNH', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(40, 'TỜ BỒI KHAY', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(41, 'TỜ BỒI MẶT THÉP', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(42, 'TỜ BỒI NẮP HỘP', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(43, 'TỜ BỒI ĐÁY HỘP', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(44, 'TEM CUỘN', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(45, 'TOA IN GHÉP', 'paper', NULL, NULL, 1, NULL, '2023-07-20 10:21:00', '2023-07-20 10:21:00', 1, 1),
(48, 'CARTON PHỤ KIỆN', 'carton', NULL, NULL, 1, NULL, '2023-08-30 09:32:57', '2023-08-30 09:32:57', 1, 1),
(49, 'GỖ MDF', 'carton', NULL, NULL, 1, NULL, '2023-10-04 09:51:17', '2023-10-04 09:51:17', 1, 0),
(50, 'SÓNG E 3 lớp', 'carton', NULL, NULL, 1, NULL, '2023-10-06 08:12:28', '2023-10-06 08:12:28', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supply_warehouses`
--

CREATE TABLE `supply_warehouses` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `length` varchar(20) DEFAULT NULL,
  `width` varchar(20) DEFAULT NULL,
  `qty` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `supp_type` int(10) DEFAULT NULL,
  `supp_price` int(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `source` tinyint(4) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `confirm_at` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `confirm_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `supply_warehouses`
--

INSERT INTO `supply_warehouses` (`id`, `name`, `length`, `width`, `qty`, `type`, `supp_type`, `supp_price`, `status`, `source`, `note`, `act`, `created_at`, `updated_at`, `confirm_at`, `created_by`, `confirm_by`) VALUES
(1, 'Carton', '90.6', '51.5', '20636', 'carton', 21, 121, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-09-24 15:45:21', NULL, 1, NULL),
(5, 'Cao su non DL 0.8mm KT 30x20', '30', '20', '1000000', 'rubber', 28, 156, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:26:08', NULL, 1, NULL),
(6, 'Cao su non DL 0.8mm KT 50x25', '50', '25', '1000000', 'rubber', 28, 156, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:25:46', NULL, 1, NULL),
(7, 'Đề can nhung cao cấp KT 60x50', '60', '50', '1000000', 'decal', 46, 92, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:24:41', NULL, 1, NULL),
(8, 'Đề can nhung cao cấp KT 100 x 50', '100', '50', '1000000', 'decal', 46, 92, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:24:27', NULL, 1, NULL),
(10, 'Lụa vàng KT 100 x 50', '100', '50', '1000000', 'silk', 47, 75, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:24:16', NULL, 1, NULL),
(11, 'Lụa vàng KT 30 x 30', '30', '30', '1000000', 'silk', 47, 75, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:24:03', NULL, 1, NULL),
(13, 'Mút phẳng K21 ĐL 0.5mm KT 50 x 40', '50', '40', '1000000', 'styrofoam', 10, 60, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-07-11 02:25:07', NULL, 1, NULL),
(14, 'Mút phẳng K21 ĐL 0.5mm KT 50 x 30', '50', '30', '1000000', 'styrofoam', 10, 60, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-07-11 02:25:07', NULL, 1, NULL),
(15, 'Mút phẳng K21 ĐL 0.5mm KT 100 x 50', '100', '50', '1000000', 'styrofoam', 10, 60, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-07-11 02:25:07', NULL, 1, NULL),
(17, 'Vật tư mica KT 100 x 50', '100', '50', '1000000', 'mica', 37, 172, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 23:23:40', NULL, 1, NULL),
(18, 'Vật tư mica KT 30 x 30', '30', '30', '1000000', 'mica', 37, 172, 'imported', 1, NULL, 1, '2023-07-11 02:25:04', '2023-08-07 16:56:55', NULL, 1, NULL),
(25, 'Mút phẳng K30 ĐL 1cm KT 100 x 50', '100', '50', '1000000', 'styrofoam', 9, 37, 'imported', NULL, NULL, 1, '2023-08-21 18:16:10', '2023-08-21 18:16:10', NULL, 1, NULL),
(29, 'Carton', '90.6', '52.5', '1658', 'carton', 21, 121, 'imported', NULL, NULL, 1, '2023-09-24 15:45:53', '2023-12-12 23:03:34', NULL, 1, NULL),
(30, 'Carton', '90.6', '46.5', '50360', 'carton', 21, 121, 'imported', NULL, NULL, 1, '2023-09-24 15:46:41', '2023-09-24 15:46:41', NULL, 1, NULL),
(31, 'Carton', '48', '77.5', '14560', 'carton', 21, 121, 'imported', NULL, NULL, 1, '2023-09-24 15:48:15', '2023-09-24 15:48:15', NULL, 1, NULL),
(32, 'Carton nháp', '100', '120', '14560', 'carton', 21, 117, 'imported', NULL, NULL, 1, '2023-09-24 16:11:07', '2023-09-24 16:11:07', NULL, 1, NULL),
(33, NULL, '5', '5', '1561', 'carton', 21, 121, 'waiting', 2, NULL, 1, '2023-12-12 21:45:09', '2023-12-12 21:45:09', NULL, 6, NULL),
(34, NULL, '5', '5', '781', 'carton', 21, 121, 'waiting', 2, NULL, 1, '2023-12-12 21:45:29', '2023-12-12 21:45:29', NULL, 6, NULL),
(35, 'CARTON MẶT NÂU - MỘC', '200', '150', '8959', 'carton', 21, 118, 'imported', NULL, NULL, 1, '2023-12-12 21:49:25', '2023-12-12 22:59:21', NULL, 16, NULL),
(36, NULL, '5', '6', '1041', 'carton', 21, 118, 'waiting', 2, NULL, 1, '2023-12-12 21:51:54', '2023-12-12 21:51:54', NULL, 6, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_histories`
--

CREATE TABLE `warehouse_histories` (
  `id` int(10) NOT NULL,
  `action` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `target` int(10) DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `provider` int(10) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `bill` text DEFAULT NULL,
  `old_qty` bigint(20) DEFAULT NULL,
  `new_qty` bigint(20) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `warehouse_histories`
--

INSERT INTO `warehouse_histories` (`id`, `action`, `table`, `type`, `target`, `qty`, `provider`, `price`, `bill`, `old_qty`, `new_qty`, `act`, `product`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'take_out', 'square_warehouses', NULL, 2, 50500, NULL, NULL, NULL, 100000, 49500, NULL, 13, 7, '2023-09-29 13:58:40', '2023-09-29 07:02:27'),
(3, 'take_out', 'square_warehouses', NULL, 1, 10857, NULL, NULL, NULL, 50000, 39143, NULL, 9, 7, '2023-09-29 14:11:58', NULL),
(5, 'insert', 'square_warehouses', 'nilon', 4, 20000, 50, 56000.00, '{\"path\":\"uploads/files/log[bill]/7_1.jpg\",\"name\":\"7_1\"}', 0, 20000, NULL, NULL, 7, '2023-09-29 15:37:23', NULL),
(7, 'insert', 'print_warehouses', 'paper', 70, 100000, 50, 16.50, '{\"id\":\"68\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_2.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_2\"}', 0, 100000, NULL, NULL, 1, '2023-10-01 11:22:57', NULL),
(8, 'insert', 'print_warehouses', 'paper', 71, 100000, 50, 16.50, '{\"id\":\"69\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_3.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_3\"}', 0, 100000, NULL, NULL, 1, '2023-10-01 11:23:43', NULL),
(9, 'insert', 'print_warehouses', 'paper', 72, 60000, 50, 16.50, '{\"id\":\"70\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_4.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_4\"}', 0, 60000, NULL, NULL, 1, '2023-10-01 11:24:42', NULL),
(10, 'insert', 'print_warehouses', 'paper', 73, 87020, 50, 18.00, '{\"id\":\"71\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_5.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_5\"}', 0, 87020, NULL, NULL, 1, '2023-10-01 12:17:28', NULL),
(11, 'insert', 'print_warehouses', 'paper', 74, 87020, 50, 18.00, '{\"id\":\"72\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_6.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_6\"}', 0, 87020, NULL, NULL, 1, '2023-10-01 12:18:21', NULL),
(12, 'insert', 'print_warehouses', 'paper', 75, 74300, 50, 18.00, '{\"id\":\"73\",\"dir\":\"uploads/files/log[bill]\",\"path\":\"uploads/files/log[bill]/z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_7.jpg\",\"name\":\"z4733599205103_b3f925dda987872bbe9dd21e2f8f924e_7\"}', 0, 74300, NULL, NULL, 1, '2023-10-01 12:19:43', NULL),
(13, 'update', 'print_warehouses', 'paper', 72, 13200, 50, 16500.00, '{\"id\":\"89\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4740902657631_c709f1fad82bab43b1410bc080d11b3e309\",\"name\":\"z4740902657631_c709f1fad82bab43b1410bc080d11b3e309\"}', 60000, 73200, NULL, NULL, 7, '2023-10-06 09:01:44', NULL),
(14, 'update', 'print_warehouses', 'paper', 72, 46800, 50, 16500.00, '{\"id\":\"90\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10\",\"name\":\"z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10\"}', 73200, 120000, NULL, NULL, 7, '2023-10-06 09:03:17', NULL),
(15, 'update', 'print_warehouses', 'paper', 71, 3600, 50, 16500.00, '{\"id\":\"91\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10(1)\",\"name\":\"z4754814908091_e354e8304c3fa35b01885cc2ce469068.3.10(1)\"}', 100000, 103600, NULL, NULL, 7, '2023-10-06 09:04:59', NULL),
(16, 'update', 'print_warehouses', 'paper', 71, 27160, 50, 16500.00, '{\"id\":\"92\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10\",\"name\":\"z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10\"}', 103600, 130760, NULL, NULL, 7, '2023-10-06 09:06:34', NULL),
(17, 'update', 'print_warehouses', 'paper', 70, 20000, 50, 16500.00, '{\"id\":\"93\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4757706903407_2b6e350b72256de66a8dd153f82eaf83.9.9\",\"name\":\"z4757706903407_2b6e350b72256de66a8dd153f82eaf83.9.9\"}', 100000, 120000, NULL, NULL, 7, '2023-10-06 09:18:42', NULL),
(19, 'insert', 'print_warehouses', 'paper', 77, 50000, 50, 18500.00, '{\"id\":\"95\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10(2)\",\"name\":\"z4757664944281_8905b34b8c31e8fed9a5094c1605ba3c.6.10(2)\"}', 0, 50000, NULL, NULL, 7, '2023-10-06 09:30:05', NULL),
(20, 'insert', 'square_warehouses', 'nilon', 5, 530000, 54, 73000.00, '{\"id\":\"110\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4760701989751_6f54d1003e109c981cf6a00cea345769mang505\",\"name\":\"z4760701989751_6f54d1003e109c981cf6a00cea345769mang505\"}', 0, 530000, NULL, NULL, 7, '2023-10-07 08:29:35', NULL),
(21, 'insert', 'square_warehouses', 'nilon', 6, 530000, 54, 73000.00, '{\"id\":\"111\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/z4760701989751_6f54d1003e109c981cf6a00cea345769mang505(1)\",\"name\":\"z4760701989751_6f54d1003e109c981cf6a00cea345769mang505(1)\"}', 0, 530000, NULL, NULL, 7, '2023-10-07 08:49:10', NULL),
(22, 'update', 'print_warehouses', NULL, 47, 1111, 51, 200.00, '{\"id\":\"140\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (36).png\",\"name\":\"Screenshot (36).png\"}', 46500, 47611, NULL, NULL, 7, '2023-11-21 11:21:00', NULL),
(23, 'update', 'print_warehouses', NULL, 46, 2000, 51, 300.00, '{\"id\":\"140\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (36).png\",\"name\":\"Screenshot (36).png\"}', 66000, 68000, NULL, NULL, 7, '2023-11-21 11:21:00', NULL),
(24, 'update', 'print_warehouses', NULL, 47, 10, 51, 20.00, '{\"id\":\"141\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg\",\"name\":\"HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg\"}', 47611, 47621, NULL, NULL, 7, '2023-11-21 11:40:18', NULL),
(25, 'update', 'print_warehouses', NULL, 47, 10, 51, 10.00, '{\"id\":\"141\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg\",\"name\":\"HỘP CỨNG 6 BÁNH CÓ LOGO TD-01.jpg\"}', 47621, 47631, NULL, NULL, 7, '2023-11-21 11:40:18', NULL),
(26, 'insert', 'print_warehouses', 'paper', 81, 1, 51, 200.00, '{\"id\":\"149\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1)(4).png\",\"name\":\"Screenshot (1)(4).png\"}', 0, 1, NULL, NULL, 16, '2023-12-09 10:16:50', NULL),
(27, 'update', 'print_warehouses', NULL, 81, 10000, 50, 200.00, '{\"id\":\"150\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (1)(5).png\",\"name\":\"Screenshot (1)(5).png\"}', 1, 10001, NULL, NULL, 7, '2023-12-09 11:46:58', NULL),
(28, 'insert', 'supply_warehouses', 'carton', 35, 10000, 50, 100.00, '{\"id\":\"151\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (33).png\",\"name\":\"Screenshot (33).png\"}', 0, 10000, NULL, NULL, 16, '2023-12-12 21:49:25', NULL),
(29, 'take_out', 'supply_warehouses', NULL, 35, 1041, NULL, NULL, NULL, 10000, 8959, NULL, 94, 16, '2023-12-12 22:59:21', NULL),
(30, 'take_out', 'supply_warehouses', NULL, 29, 781, NULL, NULL, NULL, 4000, 3219, NULL, 94, 16, '2023-12-12 23:03:27', NULL),
(31, 'take_out', 'supply_warehouses', NULL, 29, 1561, NULL, NULL, NULL, 3219, 1658, NULL, 94, 16, '2023-12-12 23:03:34', NULL),
(32, 'take_out', 'print_warehouses', NULL, 81, 1630, NULL, NULL, NULL, 10001, 8371, NULL, 94, 16, '2023-12-12 23:03:42', NULL),
(33, 'take_out', 'square_warehouses', NULL, 4, 17874, NULL, NULL, NULL, 20000, 2126, NULL, 94, 16, '2023-12-12 23:05:25', NULL),
(34, 'take_out', 'print_warehouses', NULL, 54, 1655, NULL, NULL, NULL, 5200, 3545, NULL, 94, 16, '2023-12-12 23:05:32', NULL),
(35, 'take_out', 'square_warehouses', NULL, 2, 11036, NULL, NULL, NULL, 100000, 88964, NULL, 94, 16, '2023-12-12 23:05:40', NULL),
(36, 'take_out', 'print_warehouses', NULL, 51, 890, NULL, NULL, NULL, 75360, 74470, NULL, 94, 16, '2023-12-12 23:05:48', NULL),
(37, 'take_out', 'print_warehouses', NULL, 51, 3360, NULL, NULL, NULL, 74470, 71110, NULL, 94, 16, '2023-12-12 23:06:10', NULL),
(38, 'take_out', 'square_warehouses', NULL, 2, 26544, NULL, NULL, NULL, 88964, 62420, NULL, 94, 16, '2023-12-12 23:08:20', NULL),
(39, 'update', 'print_warehouses', NULL, 47, 1000, 49, 200.00, '{\"id\":\"142\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (36)(1).png\",\"name\":\"Screenshot (36)(1).png\"}', 47631, 48631, NULL, NULL, 16, '2023-12-25 20:34:10', NULL),
(40, 'update', 'square_warehouses', NULL, 4, 2000, 49, 100.00, '{\"id\":\"142\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (36)(1).png\",\"name\":\"Screenshot (36)(1).png\"}', 2126, 4126, NULL, NULL, 16, '2023-12-25 20:34:10', NULL),
(41, 'update', 'print_warehouses', NULL, 51, 1000, 50, 200.00, '{\"id\":\"139\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (34).png\",\"name\":\"Screenshot (34).png\"}', 71110, 72110, NULL, NULL, 16, '2024-01-04 16:44:40', NULL),
(42, 'update', 'square_warehouses', NULL, 4, 2000, 50, 100.00, '{\"id\":\"139\",\"dir\":\"storages/uploads\",\"path\":\"storage/app/public/uploads/Screenshot (34).png\",\"name\":\"Screenshot (34).png\"}', 4126, 6126, NULL, NULL, 16, '2024-01-04 16:44:40', NULL),
(43, 'take_out', 'print_warehouses', NULL, 81, 1120, NULL, NULL, NULL, 8371, 7251, NULL, 99, 1, '2024-02-20 14:32:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_providers`
--

CREATE TABLE `warehouse_providers` (
  `id` int(11) NOT NULL COMMENT 'Mã nhóm',
  `name` varchar(255) DEFAULT NULL COMMENT 'Tên nhóm',
  `type` varchar(20) DEFAULT NULL COMMENT 'Cha',
  `note` varchar(255) DEFAULT NULL COMMENT 'Ghi chú',
  `act` tinyint(4) DEFAULT NULL,
  `ord` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `warehouse_providers`
--

INSERT INTO `warehouse_providers` (`id`, `name`, `type`, `note`, `act`, `ord`, `created_at`, `updated_at`, `created_by`) VALUES
(49, 'GIẤY ANH ĐẠT', NULL, NULL, 1, NULL, '2023-09-25 20:55:27', '2023-09-29 15:49:01', 10),
(50, 'GIẤY VẠN PHÚ GIA', NULL, NULL, 1, NULL, '2023-09-25 20:55:48', '2023-09-29 15:49:15', 10),
(51, 'GIẤY NGỌC VIỆT', NULL, NULL, 1, NULL, '2023-09-25 20:55:57', '2023-09-29 15:49:26', 10),
(52, 'CAO SU NON ĐẠI THÀNH', NULL, NULL, 1, NULL, '2023-09-29 15:50:29', '2023-09-29 15:50:29', 1),
(53, 'VŨ GIA', NULL, NULL, 1, NULL, '2023-09-29 15:50:41', '2023-09-29 15:50:41', 1),
(54, 'PHƯƠNG ANH', NULL, NULL, 1, NULL, '2023-09-29 15:51:00', '2023-09-29 15:51:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `w_salaries`
--

CREATE TABLE `w_salaries` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `command` varchar(50) DEFAULT NULL,
  `product` int(10) DEFAULT NULL,
  `table_supply` varchar(50) DEFAULT NULL,
  `supply` int(10) DEFAULT NULL,
  `qty` varchar(100) DEFAULT NULL,
  `factor` varchar(20) DEFAULT NULL,
  `work_price` varchar(100) DEFAULT NULL,
  `shape_price` varchar(100) DEFAULT NULL,
  `handle` text DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `machine_type` varchar(50) DEFAULT NULL,
  `worker` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `submited_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(1) DEFAULT NULL,
  `fill_materal` varchar(20) DEFAULT NULL,
  `fill_handle` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `w_salaries`
--

INSERT INTO `w_salaries` (`id`, `name`, `command`, `product`, `table_supply`, `supply`, `qty`, `factor`, `work_price`, `shape_price`, `handle`, `total`, `type`, `machine_type`, `worker`, `status`, `note`, `act`, `submited_at`, `created_at`, `updated_at`, `created_by`, `fill_materal`, `fill_handle`) VALUES
(2, 'Test INSUVA ( TEST ) ( TOA IN GHÉP )', 'DH-000001AB', 2, 'papers', 5, '1692', '1', NULL, NULL, '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In n\\u00f3 tr\\u1edf n\\u00f3\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', NULL, 'print', '1', NULL, 'not_accepted', NULL, 1, NULL, '2023-09-23 15:49:34', '2023-09-23 15:49:34', 6, NULL, NULL),
(3, 'Test INSUVA ( TEST )', 'DH-000001AA', 2, 'papers', 4, '2257', '1', NULL, NULL, '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', NULL, 'nilon', 'semi_auto', NULL, 'not_accepted', NULL, 1, NULL, '2023-09-23 16:33:58', '2023-09-23 16:33:58', NULL, NULL, NULL),
(7, 'Tests 4-10 Hộp cứng(CARTON BÌA)', 'DH-000018AC', 36, 'supplies', 68, '10100', '1', NULL, NULL, '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', NULL, 'mill', 'auto', NULL, 'not_accepted', NULL, 1, NULL, '2023-10-04 06:57:32', '2023-10-04 06:57:32', 6, NULL, NULL),
(8, 'Tests 4-10 Hộp cứng(CHI PHÍ BỒI ĐÁY)', 'DH-000018ADA', 36, 'fill_finishes', 14, '10000', '1', NULL, NULL, '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"M\\u00c1Y B\\u1ed2I\"}]', NULL, 'fill', 'semi_auto', NULL, 'not_accepted', NULL, 1, NULL, '2023-10-04 06:57:32', '2023-10-04 06:57:32', 6, '18', '{\"length\":\"51\",\"width\":\"62\",\"materal\":\"18\",\"machine\":\"48\",\"qttv_price\":0.6,\"cost\":24272000,\"work_price\":500,\"shape_price\":300000}'),
(9, 'Tests 4-10 Hộp cứng(CHI PHÍ BỒI THÀNH)', 'DH-000018ADB', 36, 'fill_finishes', 14, '10000', '1', NULL, NULL, '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"M\\u00c1Y B\\u1ed2I\"}]', NULL, 'fill', 'semi_auto', NULL, 'not_accepted', NULL, 1, NULL, '2023-10-04 06:57:32', '2023-10-04 06:57:32', 6, '19', '{\"length\":\"23\",\"width\":\"51\",\"materal\":\"19\",\"machine\":\"48\",\"qttv_price\":0.6,\"cost\":12338000,\"work_price\":500,\"shape_price\":300000}'),
(10, 'Tests 4-10 Hộp cứng', 'DH-000018AA', 36, 'papers', 73, '10300', '1', NULL, NULL, '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', NULL, 'nilon', 'semi_auto', NULL, 'not_accepted', NULL, 1, NULL, '2023-10-04 07:03:15', '2023-10-04 07:03:15', NULL, NULL, NULL),
(11, 'Tests 4-10 Hộp cứng  ( TỜ BỒI KHAY ĐỊNH HÌNH )', 'DH-000018AB', 36, 'papers', 74, '10300', '1', NULL, NULL, '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', NULL, 'nilon', 'semi_auto', NULL, 'not_accepted', NULL, 1, NULL, '2023-10-04 07:03:59', '2023-10-04 07:03:59', NULL, NULL, NULL),
(12, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '5000', '1', '15', '24000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '171000', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:35:25', '2023-10-07 08:31:11', '2023-10-07 08:35:25', 6, NULL, NULL),
(13, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000019AB', 54, 'papers', 100, '10050', '1', '15', '24000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '246750', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:36:07', '2023-10-07 08:31:11', '2023-10-07 08:36:07', 6, NULL, NULL),
(14, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TÚI GIẤY )', 'DH-000019AC', 54, 'papers', 101, '10050', '1', '30', '40000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '461500', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:36:33', '2023-10-07 08:31:11', '2023-10-07 08:36:33', 6, NULL, NULL),
(21, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '5000', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '225000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:37:59', '2023-10-07 08:35:25', '2023-10-07 08:37:59', NULL, NULL, NULL),
(22, NULL, 'DH-000019AA', 54, 'papers', 99, '5050', NULL, '15', '24000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '171750', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:38:15', '2023-10-07 08:35:25', '2023-10-07 08:38:15', NULL, NULL, NULL),
(23, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000019AB', 54, 'papers', 100, '10050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '427000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:39:33', '2023-10-07 08:36:08', '2023-10-07 08:39:33', NULL, NULL, NULL),
(24, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TÚI GIẤY )', 'DH-000019AC', 54, 'papers', 101, '10050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '427000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:41:13', '2023-10-07 08:36:33', '2023-10-07 08:41:13', NULL, NULL, NULL),
(25, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '5000', '1', '25', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', '175000', 'compress', 'auto', 41, 'submited', NULL, 1, '2023-10-07 08:39:23', '2023-10-07 08:37:59', '2023-10-07 08:39:23', NULL, NULL, NULL),
(26, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '5050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '227000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:41:29', '2023-10-07 08:38:15', '2023-10-07 08:41:29', NULL, NULL, NULL),
(27, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '4000', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '250000', 'elevate', 'semi_auto', 33, 'submited', NULL, 1, '2023-10-07 09:06:31', '2023-10-07 08:39:23', '2023-10-07 09:06:31', NULL, NULL, NULL),
(28, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000019AB', 54, 'papers', 100, '10050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '552500', 'elevate', 'semi_auto', 24, 'submited', NULL, 1, '2023-10-07 09:08:38', '2023-10-07 08:39:33', '2023-10-07 09:08:38', NULL, NULL, NULL),
(29, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TÚI GIẤY )', 'DH-000019AC', 54, 'papers', 101, '10050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '552500', 'elevate', 'semi_auto', 24, 'submited', NULL, 1, '2023-10-07 09:13:22', '2023-10-07 08:41:13', '2023-10-07 09:13:22', NULL, NULL, NULL),
(30, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '5050', '1', '25', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', '176250', 'compress', 'auto', 41, 'submited', NULL, 1, '2023-10-07 08:42:03', '2023-10-07 08:41:29', '2023-10-07 08:42:03', NULL, NULL, NULL),
(31, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm   Túi', 'DH-000021AA', 52, 'papers', 93, '10050', '1', '15', '24000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '246750', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:46:15', '2023-10-07 08:44:12', '2023-10-07 08:46:15', 6, NULL, NULL),
(32, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000021AB', 52, 'papers', 94, '10050', '1', '15', '24000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '246750', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:46:41', '2023-10-07 08:44:12', '2023-10-07 08:46:41', 6, NULL, NULL),
(33, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TÚI GIẤY )', 'DH-000021AC', 52, 'papers', 95, '10050', '1', '30', '40000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '461500', 'print', '1', 10, 'submited', NULL, 1, '2023-10-07 08:45:51', '2023-10-07 08:44:12', '2023-10-07 08:45:51', 6, NULL, NULL),
(40, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TÚI GIẤY )', 'DH-000021AC', 52, 'papers', 95, '10050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '427000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:47:11', '2023-10-07 08:45:51', '2023-10-07 08:47:11', NULL, NULL, NULL),
(41, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm   Túi', 'DH-000021AA', 52, 'papers', 93, '10050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '427000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:47:31', '2023-10-07 08:46:15', '2023-10-07 08:47:31', NULL, NULL, NULL),
(42, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000021AB', 52, 'papers', 94, '10050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '427000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-10-07 08:47:52', '2023-10-07 08:46:41', '2023-10-07 08:47:52', NULL, NULL, NULL),
(43, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TÚI GIẤY )', 'DH-000021AC', 52, 'papers', 95, '10050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '552500', 'elevate', 'semi_auto', 24, 'submited', NULL, 1, '2023-10-07 09:13:29', '2023-10-07 08:47:11', '2023-10-07 09:13:29', NULL, NULL, NULL),
(44, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm   Túi', 'DH-000021AA', 52, 'papers', 93, '10050', '1', '25', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', '301250', 'compress', 'auto', 16, 'submited', NULL, 1, '2023-10-07 08:48:02', '2023-10-07 08:47:31', '2023-10-07 08:48:02', NULL, NULL, NULL),
(45, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000021AB', 52, 'papers', 94, '10050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '552500', 'elevate', 'semi_auto', 24, 'submited', NULL, 1, '2023-10-07 09:13:37', '2023-10-07 08:47:52', '2023-10-07 09:13:37', NULL, NULL, NULL),
(46, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm   Túi', 'DH-000021AA', 52, 'papers', 93, '10050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '552500', 'elevate', 'semi_auto', 24, 'submited', NULL, 1, '2023-10-07 09:13:42', '2023-10-07 08:48:02', '2023-10-07 09:13:42', NULL, NULL, NULL),
(47, '2024 Hộp Qùa Tết Mã TD-C01C 29 x 36 x 10cm + Túi', 'DH-000019AA', 54, 'papers', 99, '10050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '50250', 'peel', 'semi_auto', 23, 'submited', NULL, 1, '2023-10-07 09:17:35', '2023-10-07 09:06:31', '2023-10-07 09:17:35', NULL, NULL, NULL),
(48, NULL, 'DH-000019AA', 54, 'papers', 99, '6050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '352500', 'elevate', 'semi_auto', 24, 'submited', NULL, 1, '2023-10-07 09:13:50', '2023-10-07 09:06:31', '2023-10-07 09:13:50', NULL, NULL, NULL),
(49, '2024 Hộp Qùa Tết Mã TD-C01B 36 x 36 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000019AB', 54, 'papers', 100, '10050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '50250', 'peel', 'semi_auto', 23, 'submited', NULL, 1, '2023-10-07 09:19:23', '2023-10-07 09:08:38', '2023-10-07 09:19:23', NULL, NULL, NULL),
(51, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TÚI GIẤY )', 'DH-000021AC', 52, 'papers', 95, '10050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '50250', 'peel', 'semi_auto', 23, 'submited', NULL, 1, '2023-10-07 09:19:50', '2023-10-07 09:13:29', '2023-10-07 09:19:50', NULL, NULL, NULL),
(52, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm + Túi ( TỜ BỒI ĐÁY HỘP )', 'DH-000021AB', 52, 'papers', 94, '10050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '50250', 'peel', 'semi_auto', 23, 'submited', NULL, 1, '2023-10-07 09:20:01', '2023-10-07 09:13:37', '2023-10-07 09:20:01', NULL, NULL, NULL),
(53, '2024 Hộp Qùa Tết Mã TD-C01A 36 x 42 x 10cm   Túi', 'DH-000021AA', 52, 'papers', 93, '10050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '50250', 'peel', 'semi_auto', 45, 'submited', NULL, 1, '2023-10-07 09:21:08', '2023-10-07 09:13:42', '2023-10-07 09:21:08', NULL, NULL, NULL),
(55, 'Hộp cứng cao cấp SONA   Túi giấy', 'DH-00000024AA', 94, 'papers', 198, '3050', '1', '0', '0', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '0', 'print', '1', 36, 'submited', NULL, 1, '2023-12-12 23:12:03', '2023-12-12 23:09:00', '2023-12-12 23:12:03', 6, NULL, NULL),
(56, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH )', 'DH-00000024AB', 94, 'papers', 199, '1550', '1', '30', '40000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '206500', 'print', '1', 36, 'submited', NULL, 1, '2023-12-12 23:13:09', '2023-12-12 23:09:00', '2023-12-12 23:13:09', 6, NULL, NULL),
(57, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI KHAY ĐỊNH HÌNH )', 'DH-00000024AC', 94, 'papers', 200, '3050', '1', '30', '40000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '251500', 'print', '1', 36, 'submited', NULL, 1, '2023-12-13 17:47:09', '2023-12-12 23:09:00', '2023-12-13 17:47:09', 6, NULL, NULL),
(58, 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY )', 'DH-00000024AD', 94, 'papers', 201, '3050', '1', '30', '40000', '[{\"name\":\"ki\\u1ec3u in\",\"value\":\"In 1 m\\u1eb7t\"},{\"name\":\"m\\u00e0u in\",\"value\":4},{\"name\":\"C\\u00f4ng ngh\\u1ec7 in\",\"value\":\"In offset\"}]', '251500', 'print', '1', 36, 'submited', NULL, 1, '2023-12-13 17:57:19', '2023-12-12 23:09:00', '2023-12-13 17:57:19', 6, NULL, NULL),
(59, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON BÌA)', 'DH-00000024AE', 94, 'supplies', 173, '3050', '1', '25', '35000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', '111250', 'mill', 'auto', 56, 'submited', NULL, 1, '2023-12-13 21:22:19', '2023-12-12 23:09:00', '2023-12-13 21:22:19', 6, NULL, NULL),
(60, 'Hộp cứng cao cấp SONA + Túi giấy(Carton THÀNH)', 'DH-00000024AF', 94, 'supplies', 174, '3050', '2', '25', '35000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', '187500', 'mill', 'auto', 56, 'submited', NULL, 1, '2023-12-13 21:22:28', '2023-12-12 23:09:00', '2023-12-13 21:22:28', 6, NULL, NULL),
(61, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON KHAY ĐỊNH HÌNH)', 'DH-00000024AG', 94, 'supplies', 175, '3050', '2', '25', '35000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u1ef0 \\u0110\\u1ed8NG\"}]', '187500', 'mill', 'auto', 56, 'submited', NULL, 1, '2023-12-13 21:36:41', '2023-12-12 23:09:00', '2023-12-13 21:36:41', 6, NULL, NULL),
(62, 'Hộp cứng cao cấp SONA   Túi giấy', 'DH-00000024AA', 94, 'papers', 198, '3050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '147000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-12-13 18:15:40', '2023-12-12 23:12:03', '2023-12-13 18:15:40', 6, NULL, NULL),
(63, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH )', 'DH-00000024AB', 94, 'papers', 199, '1550', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '87000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-12-13 18:19:40', '2023-12-12 23:13:09', '2023-12-13 18:19:40', 6, NULL, NULL),
(64, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI KHAY ĐỊNH HÌNH )', 'DH-00000024AC', 94, 'papers', 200, '3050', '1', '40', '25000', '[{\"name\":\"Ch\\u1ea5t li\\u1ec7u c\\u00e1n\",\"value\":\"C\\u00e1n m\\u1edd\"},{\"name\":\"S\\u1ed1 m\\u1eb7t c\\u00e1n\",\"value\":\"1\"},{\"name\":\"M\\u00e1y c\\u00e1n\",\"value\":\"M\\u00c1Y C\\u00c1N NHI\\u1ec6T\"}]', '147000', 'nilon', 'semi_auto', 13, 'submited', NULL, 1, '2023-12-13 18:15:29', '2023-12-13 17:47:09', '2023-12-13 18:15:29', 6, NULL, NULL),
(65, 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY )', 'DH-00000024AD', 94, 'papers', 201, '3050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '202500', 'elevate', 'semi_auto', 43, 'submited', NULL, 1, '2023-12-13 18:24:12', '2023-12-13 17:57:19', '2023-12-13 18:24:12', 6, NULL, NULL),
(66, 'Hộp cứng cao cấp SONA   Túi giấy', 'DH-00000024AA', 94, 'papers', 198, '3050', '1', '50', '35000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"TH\\u1ee6Y L\\u1ef0C - \\u00c9P TH\\u1ee6 C\\u00d4NG\"}]', '187500', 'compress', 'semi_auto', 40, 'submited', NULL, 1, '2023-12-13 18:22:39', '2023-12-13 18:15:40', '2023-12-13 18:22:39', 6, NULL, NULL),
(67, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH )', 'DH-00000024AB', 94, 'papers', 199, '1550', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '127500', 'elevate', 'semi_auto', 43, 'submited', NULL, 1, '2023-12-13 21:13:54', '2023-12-13 18:19:40', '2023-12-13 21:13:54', 6, NULL, NULL),
(68, 'Hộp cứng cao cấp SONA   Túi giấy', 'DH-00000024AA', 94, 'papers', 198, '3050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '202500', 'elevate', 'semi_auto', 43, 'submited', NULL, 1, '2023-12-13 21:14:17', '2023-12-13 18:22:39', '2023-12-13 21:14:17', 6, NULL, NULL),
(69, 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY )', 'DH-00000024AD', 94, 'papers', 201, '3050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '15250', 'peel', 'semi_auto', 46, 'submited', NULL, 1, '2023-12-13 21:20:27', '2023-12-13 18:24:12', '2023-12-25 21:07:45', 6, NULL, NULL),
(70, 'Hộp cứng cao cấp SONA + Túi giấy ( TỜ BỒI THÀNH )', 'DH-00000024AB', 94, 'papers', 199, '3050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '15500', 'peel', 'semi_auto', 46, 'submited', NULL, 1, '2023-12-25 21:16:02', '2023-12-13 21:13:54', '2023-12-25 21:28:33', 6, NULL, NULL),
(71, 'Hộp cứng cao cấp SONA   Túi giấy', 'DH-00000024AA', 94, 'papers', 198, '3050', '1', '5', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0\"}]', '15250', 'peel', 'semi_auto', 46, 'submited', NULL, 1, '2023-12-25 21:11:07', '2023-12-13 21:14:17', '2023-12-25 21:11:07', 6, NULL, NULL),
(72, 'Hộp cứng cao cấp SONA + Túi giấy ( TÚI GIẤY )', 'DH-00000024AD', 94, 'papers', 201, '3050', '1', '440', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"T\\u00fai gi\\u1ea5y kh\\u1ed5 in 72 x 102\"}]', '1392000', 'bag_paste', 'semi_auto', 53, 'submited', NULL, 1, '2023-12-13 21:24:28', '2023-12-13 21:20:27', '2023-12-13 21:24:28', 6, NULL, NULL),
(73, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON BÌA)', 'DH-00000024AE', 94, 'supplies', 173, '3050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '202500', 'elevate', 'semi_auto', 43, 'submited', NULL, 1, '2023-12-13 21:40:35', '2023-12-13 21:22:19', '2023-12-13 21:40:35', 6, NULL, NULL),
(74, 'Hộp cứng cao cấp SONA + Túi giấy(Carton THÀNH)', 'DH-00000024AF', 94, 'supplies', 174, '3050', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '355000', 'elevate', 'semi_auto', 43, 'submited', NULL, 1, '2023-12-13 22:01:38', '2023-12-13 21:22:28', '2023-12-13 22:01:38', 6, NULL, NULL),
(75, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON KHAY ĐỊNH HÌNH)', 'DH-00000024AG', 94, 'supplies', 175, '9150', '1', '50', '50000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00c1N T\\u1ef0 \\u0110\\u1ed8NG\"}]', '1880000', 'elevate', 'semi_auto', 43, 'submited', NULL, 1, '2023-12-13 22:01:50', '2023-12-13 21:22:40', '2023-12-13 22:01:50', 6, NULL, NULL),
(76, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON BÌA)', 'DH-00000024AE', 94, 'supplies', 173, '3050', '1', '8', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0 CARTON\"}]', '24400', 'peel', 'semi_auto', 46, 'submited', NULL, 1, '2023-12-13 22:06:27', '2023-12-13 21:40:35', '2023-12-13 22:06:27', 6, NULL, NULL),
(77, 'Hộp cứng cao cấp SONA + Túi giấy(Carton THÀNH)', 'DH-00000024AF', 94, 'supplies', 174, '6100', '1', '8', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0 CARTON\"}]', '48800', 'peel', 'semi_auto', 46, 'submited', NULL, 1, '2023-12-13 22:10:08', '2023-12-13 21:58:18', '2023-12-13 22:10:08', 6, NULL, NULL),
(78, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON KHAY ĐỊNH HÌNH)', 'DH-00000024AG', 94, 'supplies', 175, '9150', '1', '8', '0', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"B\\u00d3C L\\u1ec0 CARTON\"}]', '73200', 'peel', 'semi_auto', 46, 'submited', NULL, 1, '2023-12-13 22:10:18', '2023-12-13 22:01:50', '2023-12-13 22:10:18', 6, NULL, NULL),
(79, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON BÌA)', 'DH-00000024AE', 94, 'supplies', 173, '3050', '1', '0', '10000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"M\\u00c1Y X\\u00c9N\"}]', '10000', 'cut', 'semi_auto', 55, 'submited', NULL, 1, '2023-12-13 22:44:59', '2023-12-13 22:06:27', '2023-12-13 22:44:59', 6, NULL, NULL),
(80, 'Hộp cứng cao cấp SONA + Túi giấy(Carton THÀNH)', 'DH-00000024AF', 94, 'supplies', 174, '6100', '1', '0', '10000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"M\\u00c1Y X\\u00c9N\"}]', '10000', 'cut', 'semi_auto', 55, 'submited', NULL, 1, '2023-12-13 22:13:39', '2023-12-13 22:10:09', '2023-12-13 22:13:39', 6, NULL, NULL),
(81, 'Hộp cứng cao cấp SONA + Túi giấy(CARTON KHAY ĐỊNH HÌNH)', 'DH-00000024AG', 94, 'supplies', 175, '9150', '1', '0', '10000', '[{\"name\":\"Thi\\u1ebft b\\u1ecb m\\u00e1y\",\"value\":\"M\\u00c1Y X\\u00c9N\"}]', '10000', 'cut', 'semi_auto', 55, 'submited', NULL, 1, '2023-12-13 22:51:11', '2023-12-13 22:10:18', '2023-12-13 22:51:11', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `w_users`
--

CREATE TABLE `w_users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `device` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `act` tinyint(4) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `w_users`
--

INSERT INTO `w_users` (`id`, `username`, `password`, `name`, `phone`, `type`, `device`, `note`, `act`, `created_at`, `updated_at`, `created_by`) VALUES
(10, 'mayin1-52', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Quý - Đích', '0963303999', 'print', '1', NULL, 1, '2023-07-27 23:54:44', '2023-10-01 13:50:35', 1),
(13, 'maycan1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Bình - Ms Thanh', '0963303999', 'nilon', 'semi_auto', NULL, 1, '2023-09-10 21:08:12', '2023-10-01 14:28:16', 1),
(15, 'maycantrangkim', 'e10adc3949ba59abbe56e057f20f883e', 'THUÊ NGOÀI', '11', 'metalai', 'semi_auto', NULL, 1, '2023-09-11 11:19:44', '2023-10-01 14:13:15', 1),
(16, 'epnhutd1', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thắng', '11', 'compress', 'auto', NULL, 1, '2023-09-11 23:38:00', '2023-10-01 14:24:23', 1),
(18, 'inuvtd', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thành', '11', 'uv', 'auto', NULL, 0, '2023-09-11 23:56:24', '2023-10-01 14:26:49', 1),
(19, 'maybetd', 'e10adc3949ba59abbe56e057f20f883e', 'Mr An', '11', 'elevate', 'auto', NULL, 0, '2023-09-12 00:02:39', '2023-10-01 14:31:51', 1),
(20, 'floatbtd', 'e10adc3949ba59abbe56e057f20f883e', 'Cong nhan thuc noi ban td', '11', 'float', 'semi_auto', NULL, 1, '2023-09-12 10:33:53', '2023-09-12 10:33:53', 1),
(21, 'maythucnoi', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thành', '11', 'float', 'auto', NULL, 1, '2023-09-12 10:34:44', '2023-09-12 22:14:25', 1),
(22, 'bocletd', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Lan', '11', 'peel', 'auto', NULL, 1, '2023-09-12 10:38:04', '2023-09-15 01:02:41', 1),
(23, 'bocle1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Lan', '111', 'peel', 'semi_auto', NULL, 1, '2023-09-12 10:39:39', '2023-10-01 15:06:48', 1),
(24, 'maybe1', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Tuấn Anh - Mr Mạnh', '111', 'elevate', 'semi_auto', NULL, 1, '2023-09-12 15:56:23', '2023-10-01 14:50:55', 1),
(25, 'maycan', 'e10adc3949ba59abbe56e057f20f883e', 'Thu', '123', 'nilon', 'auto', NULL, 0, '2023-09-12 21:14:18', '2023-10-01 13:58:16', 1),
(26, 'inluoiuv', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thành', '123', 'uv', 'semi_auto', NULL, 1, '2023-09-12 21:49:07', '2023-10-01 14:31:05', 1),
(27, 'mayran1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Lan', '123', 'box_paste', 'auto', NULL, 1, '2023-09-14 22:02:45', '2023-10-01 15:35:32', 1),
(28, 'rantui1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HẰNG', '123', 'bag_paste', 'semi_auto', NULL, 1, '2023-09-14 22:03:58', '2023-10-05 11:21:13', 1),
(29, 'mayxen1', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thành', '123456', 'cut', 'semi_auto', NULL, 1, '2023-09-14 22:05:27', '2023-10-05 11:26:42', 1),
(30, 'maygap', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Kiều', '12', 'fold', 'auto', NULL, 1, '2023-09-14 22:06:28', '2023-09-14 22:06:28', 1),
(31, 'boihop1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms NGA', '123', 'fill', 'semi_auto', NULL, 1, '2023-09-14 22:07:32', '2023-10-05 16:04:16', 1),
(32, 'hoanthien1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'finish', 'semi_auto', NULL, 1, '2023-09-14 22:09:17', '2023-10-05 16:16:36', 1),
(33, 'maybe2', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Đức - Mr Đại', '222', 'elevate', 'semi_auto', NULL, 1, '2023-09-15 00:49:13', '2023-10-01 14:51:04', 1),
(34, 'mayphay1', 'e10adc3949ba59abbe56e057f20f883e', 'Mr ĐẠI', '123', 'mill', 'auto', NULL, 1, '2023-09-15 01:45:12', '2023-10-05 11:34:49', 1),
(35, 'boitd', 'e10adc3949ba59abbe56e057f20f883e', 'Boi Td', '11', 'fill', 'auto', NULL, 1, '2023-09-15 23:12:08', '2023-09-15 23:12:08', 1),
(36, 'mayin1-102', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Quý - Hồng', '0963303999', 'print', '1', NULL, 1, '2023-10-01 13:51:47', '2023-12-12 23:11:16', 1),
(37, 'mayinuv1-52', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Quý - Đích', '0963303999', 'print', '2', NULL, 1, '2023-10-01 13:54:44', '2023-10-01 13:54:56', 1),
(38, 'mayinuv1-102', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Quý - Hồng', '0963303999', 'print', '2', NULL, 1, '2023-10-01 13:55:21', '2023-10-01 13:55:21', 1),
(39, 'maycan2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Yến - Ms Hiền', '0963303999', 'nilon', 'semi_auto', NULL, 1, '2023-10-01 14:11:20', '2023-10-01 14:28:10', 1),
(40, 'epnhubtd1', 'e10adc3949ba59abbe56e057f20f883e', 'Ca1: Ms Bình', '11', 'compress', 'semi_auto', NULL, 1, '2023-10-01 14:18:08', '2023-10-01 14:26:18', 1),
(41, 'epnhutd2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Hạnh', '11', 'compress', 'auto', NULL, 1, '2023-10-01 14:24:43', '2023-10-01 14:24:43', 1),
(42, 'maybe3', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thành - Mr Hiệp', '333', 'elevate', 'semi_auto', NULL, 1, '2023-10-01 14:39:08', '2023-10-01 14:51:25', 1),
(43, 'maybe4', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Thảo - Ms', '444', 'elevate', 'semi_auto', NULL, 1, '2023-10-01 14:40:05', '2023-10-01 14:51:56', 1),
(44, 'maybe5', 'e10adc3949ba59abbe56e057f20f883e', 'Mr An', '555', 'elevate', 'semi_auto', NULL, 1, '2023-10-01 14:40:50', '2023-10-01 14:52:08', 1),
(45, 'bocle2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Thương', '222', 'peel', 'semi_auto', NULL, 1, '2023-10-01 15:07:23', '2023-10-01 15:07:23', 1),
(46, 'bocle3', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Loan', '333', 'peel', 'semi_auto', NULL, 1, '2023-10-01 15:07:44', '2023-10-01 15:14:26', 1),
(47, 'bocle4', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '444', 'peel', 'semi_auto', NULL, 0, '2023-10-01 15:09:08', '2023-10-01 15:09:35', 1),
(48, 'bocle5', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '555', 'peel', 'semi_auto', NULL, 0, '2023-10-01 15:09:22', '2023-10-01 15:09:42', 1),
(49, 'mayran2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms Lan', '123', 'box_paste', 'auto', NULL, 0, '2023-10-01 15:36:00', '2023-10-01 15:36:00', 1),
(50, 'rantui2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HẰNG', '123', 'bag_paste', 'semi_auto', NULL, 1, '2023-10-05 11:21:00', '2023-10-05 11:21:00', 1),
(51, 'hogiadinh1', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HẰNG', '123', 'bag_paste', 'semi_auto', NULL, 1, '2023-10-05 11:21:40', '2023-10-05 11:21:40', 1),
(52, 'hogiadinh2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HẰNG', '123', 'bag_paste', 'semi_auto', NULL, 1, '2023-10-05 11:22:01', '2023-10-05 11:22:01', 1),
(53, 'hogiadinh3', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HẰNG', '123', 'bag_paste', 'semi_auto', NULL, 1, '2023-10-05 11:22:11', '2023-10-05 11:22:11', 1),
(55, 'mayxen2', 'e10adc3949ba59abbe56e057f20f883e', 'Mr Thành', '123456', 'cut', 'semi_auto', NULL, 1, '2023-10-05 11:26:53', '2023-10-05 11:26:53', 1),
(56, 'mayphay2', 'e10adc3949ba59abbe56e057f20f883e', 'Mr ĐẠI', '123', 'mill', 'auto', NULL, 1, '2023-10-05 11:35:00', '2023-10-05 11:35:00', 1),
(57, 'boihop2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HƯƠNG', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:02:13', '2023-10-05 16:04:27', 1),
(58, 'boihop3', 'e10adc3949ba59abbe56e057f20f883e', 'Ms HÀ', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:02:22', '2023-10-05 16:04:45', 1),
(59, 'boihop4', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:02:34', '2023-10-05 16:12:16', 1),
(60, 'boihop5', 'e10adc3949ba59abbe56e057f20f883e', 'Ms THƠM', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:02:45', '2023-10-05 16:04:55', 1),
(61, 'boihop6', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:03:03', '2023-10-05 16:06:16', 1),
(62, 'boihop7', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:03:22', '2023-10-05 16:06:11', 1),
(63, 'boihop8', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'fill', 'semi_auto', NULL, 1, '2023-10-05 16:03:32', '2023-10-05 16:06:04', 1),
(64, 'hoanthien2', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'finish', 'semi_auto', NULL, 1, '2023-10-05 16:14:03', '2023-10-05 16:15:44', 1),
(65, 'hoanthien3', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'finish', 'semi_auto', NULL, 1, '2023-10-05 16:14:31', '2023-10-05 16:15:56', 1),
(66, 'hoanthien4', 'e10adc3949ba59abbe56e057f20f883e', 'Ms', '123', 'finish', 'semi_auto', NULL, 1, '2023-10-05 16:15:21', '2023-10-05 16:16:05', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx_act` (`act`) USING BTREE,
  ADD KEY `idx_parent` (`parent`) USING BTREE,
  ADD KEY `idx_parent_act` (`parent`,`act`) USING BTREE;

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`,`keyword`) USING BTREE,
  ADD KEY `_index` (`id`,`keyword`,`act`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name_index` (`name`) USING BTREE,
  ADD KEY `infor_index` (`address`,`email`,`phone`) USING BTREE,
  ADD KEY `conttacter_index` (`contacter`) USING BTREE;

--
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`id`,`customer_id`,`user_id`) USING BTREE;

--
-- Indexes for table `c_designs`
--
ALTER TABLE `c_designs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `c_expertises`
--
ALTER TABLE `c_expertises`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `c_processes`
--
ALTER TABLE `c_processes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `c_supplies`
--
ALTER TABLE `c_supplies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `design_types`
--
ALTER TABLE `design_types`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`) USING BTREE;

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fill_finishes`
--
ALTER TABLE `fill_finishes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quote_index` (`product`) USING BTREE;

--
-- Indexes for table `materals`
--
ALTER TABLE `materals`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `n_detail_tables`
--
ALTER TABLE `n_detail_tables`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `map_view` (`table_map`,`view`) USING BTREE,
  ADD KEY `map_insert` (`table_map`,`insert`) USING BTREE,
  ADD KEY `map_update` (`table_map`,`update`) USING BTREE,
  ADD KEY `map_search` (`table_map`,`search`) USING BTREE;

--
-- Indexes for table `n_group_users`
--
ALTER TABLE `n_group_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `n_log_actions`
--
ALTER TABLE `n_log_actions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `n_modules`
--
ALTER TABLE `n_modules`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `map_indx` (`table_map`) USING BTREE,
  ADD KEY `parent_index` (`parent`) USING BTREE;

--
-- Indexes for table `n_regions`
--
ALTER TABLE `n_regions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `n_roles`
--
ALTER TABLE `n_roles`
  ADD PRIMARY KEY (`role_id`) USING BTREE,
  ADD KEY `foreign_indx` (`module_id`,`n_group_user_id`) USING BTREE;

--
-- Indexes for table `n_tables`
--
ALTER TABLE `n_tables`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `indx` (`id`,`name`) USING BTREE;

--
-- Indexes for table `n_users`
--
ALTER TABLE `n_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `idx` (`created_by`) USING BTREE;

--
-- Indexes for table `other_warehouses`
--
ALTER TABLE `other_warehouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quote_indx` (`product`) USING BTREE,
  ADD KEY `main_index` (`main`) USING BTREE;

--
-- Indexes for table `paper_extends`
--
ALTER TABLE `paper_extends`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name_index` (`name`) USING BTREE,
  ADD KEY `type_index` (`category`) USING BTREE,
  ADD KEY `act_indx` (`act`) USING BTREE;

--
-- Indexes for table `paper_lots`
--
ALTER TABLE `paper_lots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`) USING BTREE;

--
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `print_notes`
--
ALTER TABLE `print_notes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`) USING BTREE;

--
-- Indexes for table `print_techs`
--
ALTER TABLE `print_techs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`) USING BTREE;

--
-- Indexes for table `print_warehouses`
--
ALTER TABLE `print_warehouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`,`design_factor`) USING BTREE;

--
-- Indexes for table `product_histories`
--
ALTER TABLE `product_histories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `product_styles`
--
ALTER TABLE `product_styles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`) USING BTREE;

--
-- Indexes for table `product_warehouses`
--
ALTER TABLE `product_warehouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `p_substances`
--
ALTER TABLE `p_substances`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `index` (`id`,`name`,`act`) USING BTREE;

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `_index` (`seri`,`name`,`customer_id`) USING BTREE;

--
-- Indexes for table `quote_configs`
--
ALTER TABLE `quote_configs`
  ADD PRIMARY KEY (`id`,`keyword`) USING BTREE;

--
-- Indexes for table `square_warehouses`
--
ALTER TABLE `square_warehouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `quote_index` (`product`) USING BTREE;

--
-- Indexes for table `supply_buyings`
--
ALTER TABLE `supply_buyings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `supply_names`
--
ALTER TABLE `supply_names`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name_index` (`name`) USING BTREE,
  ADD KEY `type_index` (`type`) USING BTREE,
  ADD KEY `act_indx` (`act`) USING BTREE;

--
-- Indexes for table `supply_prices`
--
ALTER TABLE `supply_prices`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `type_index` (`type`) USING BTREE,
  ADD KEY `carton_foam_index` (`supply_id`) USING BTREE,
  ADD KEY `name_index` (`name`) USING BTREE,
  ADD KEY `act_indx` (`act`) USING BTREE;

--
-- Indexes for table `supply_types`
--
ALTER TABLE `supply_types`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name_index` (`name`) USING BTREE,
  ADD KEY `type_index` (`type`) USING BTREE,
  ADD KEY `act_indx` (`act`) USING BTREE;

--
-- Indexes for table `supply_warehouses`
--
ALTER TABLE `supply_warehouses`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `warehouse_histories`
--
ALTER TABLE `warehouse_histories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `warehouse_providers`
--
ALTER TABLE `warehouse_providers`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `name_index` (`name`) USING BTREE,
  ADD KEY `type_index` (`type`) USING BTREE,
  ADD KEY `act_indx` (`act`) USING BTREE;

--
-- Indexes for table `w_salaries`
--
ALTER TABLE `w_salaries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `w_users`
--
ALTER TABLE `w_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citys`
--
ALTER TABLE `citys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12080;

--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_designs`
--
ALTER TABLE `c_designs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `c_expertises`
--
ALTER TABLE `c_expertises`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `c_processes`
--
ALTER TABLE `c_processes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_supplies`
--
ALTER TABLE `c_supplies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `design_types`
--
ALTER TABLE `design_types`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=780;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `fill_finishes`
--
ALTER TABLE `fill_finishes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `materals`
--
ALTER TABLE `materals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `n_detail_tables`
--
ALTER TABLE `n_detail_tables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `n_group_users`
--
ALTER TABLE `n_group_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `n_log_actions`
--
ALTER TABLE `n_log_actions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=954;

--
-- AUTO_INCREMENT for table `n_modules`
--
ALTER TABLE `n_modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `n_regions`
--
ALTER TABLE `n_regions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `n_roles`
--
ALTER TABLE `n_roles`
  MODIFY `role_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `n_tables`
--
ALTER TABLE `n_tables`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `n_users`
--
ALTER TABLE `n_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `other_warehouses`
--
ALTER TABLE `other_warehouses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `paper_extends`
--
ALTER TABLE `paper_extends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `paper_lots`
--
ALTER TABLE `paper_lots`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `print_notes`
--
ALTER TABLE `print_notes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `print_techs`
--
ALTER TABLE `print_techs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `print_warehouses`
--
ALTER TABLE `print_warehouses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_histories`
--
ALTER TABLE `product_histories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_styles`
--
ALTER TABLE `product_styles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_warehouses`
--
ALTER TABLE `product_warehouses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `p_substances`
--
ALTER TABLE `p_substances`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `quote_configs`
--
ALTER TABLE `quote_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `square_warehouses`
--
ALTER TABLE `square_warehouses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `supply_buyings`
--
ALTER TABLE `supply_buyings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `supply_names`
--
ALTER TABLE `supply_names`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `supply_prices`
--
ALTER TABLE `supply_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT for table `supply_types`
--
ALTER TABLE `supply_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `supply_warehouses`
--
ALTER TABLE `supply_warehouses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `warehouse_histories`
--
ALTER TABLE `warehouse_histories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `warehouse_providers`
--
ALTER TABLE `warehouse_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã nhóm', AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `w_salaries`
--
ALTER TABLE `w_salaries`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `w_users`
--
ALTER TABLE `w_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
