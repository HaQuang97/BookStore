-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2018 at 10:02 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `name`, `email`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'HaQuangJr', 'quang97ptit@gmail.com', '$2y$10$q3UFgqoa.mt5Yx1dVEBT.ee6CZkLk7p7U4Y.kbYQh6PLJ/mxgenJm', '100', '0yleneBiAqUW6InhnbU8Ox05emX0rWPmpZZO7V2hHip08JKzkCgDPjhNjmjZ', '2018-11-27 17:00:00', '2018-12-04 00:35:56');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `url_banner` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Sách Giáo Dục', 'sach-giao-duc', '0', '2018-11-23 13:01:57', '2018-11-25 20:03:56'),
(2, 'Sách Ngoại Ngữ', 'sach-ngoai-ngu', '0', '2018-11-23 13:10:10', '2018-11-25 20:04:07'),
(3, 'Sách Lập Trình', 'sach-lap-trinh', '0', '2018-11-23 13:17:01', '2018-11-23 13:42:30'),
(4, 'Tin Tức-Ưu Đãi', 'tin-tuc-uu-dai', '0', '2018-11-25 17:36:11', '2018-11-25 20:03:56'),
(5, 'Bộ Sách Lớp 1', 'bo-sach-lop-1', '1', '2018-11-23 18:36:10', '2018-11-23 18:36:10'),
(6, 'Bộ Sách Lớp 2', 'bo-sach-lop-2', '1', '2018-11-23 18:36:21', '2018-11-23 18:36:21'),
(7, 'Bộ Sách Lớp 3', 'bo-sach-lop-3', '1', '2018-11-23 18:36:31', '2018-11-23 18:36:31'),
(8, 'Bộ Sách Lớp 4', 'bo-sach-lop-4', '1', '2018-11-23 18:38:46', '2018-11-23 18:38:46'),
(9, 'Bộ Sách Lớp 5', 'bo-sach-lop-5', '1', '2018-11-23 18:38:57', '2018-11-23 18:38:57'),
(10, 'Bộ Sách Lớp 6', 'bo-sach-lop-6', '1', '2018-11-23 18:56:05', '2018-11-23 18:56:05'),
(11, 'Bộ Sách Lớp 7', 'bo-sach-lop-7', '1', '2018-11-24 19:00:27', '2018-11-24 19:00:27'),
(12, 'Bộ Sách Lớp 8', 'bo-sach-lop-8', '1', '2018-11-24 19:00:41', '2018-11-24 19:00:41'),
(13, 'Bộ Sách Lớp 9', 'bo-sach-lop-9', '1', '2018-11-24 19:00:52', '2018-11-24 19:00:52'),
(14, 'Bộ Sách Lớp 10', 'bo-sach-lop-10', '1', '2018-11-25 17:36:11', '2018-11-25 17:36:11'),
(15, 'Bộ Sách Lớp 11', 'bo-sach-lop-11', '1', '2018-11-25 17:36:27', '2018-11-25 17:36:27'),
(16, 'Bộ Sách Lớp 12', 'bo-sach-lop-12', '1', '2018-11-25 17:36:48', '2018-11-25 17:36:48'),
(17, 'Sách Ôn Thi Đại Học', 'sach-on-thi-dai-hoc', '1', '2018-11-28 11:40:09', '2018-11-28 11:40:09'),
(18, 'Bộ Sách Tiếng Nhật', 'bo-sach-tieng-nhat', '2', '2018-11-28 11:40:31', '2018-11-28 11:40:31'),
(19, 'Sách Học Tiếng Hàn', 'sach-tieng-han', '2', NULL, NULL),
(20, 'Sách Học Tiếng Anh', 'sach-tieng-anh', '2', NULL, NULL),
(21, 'Sách Hoc Tiếng Trung', 'sach-tieng-trung', '2', NULL, NULL),
(22, 'Từ Điển Anh-Việt', 'tư-dien-anh-viet', '2', NULL, NULL),
(23, 'Từ Điển Nhật-Việt', 'tu-dien-nhat-viet', '2', NULL, NULL),
(24, 'Từ Điển Hàn-Viêt', 'tu-dien-han-vet', '2', NULL, NULL),
(25, 'Từ Điển Trung-Việt', 'tu-dien-trung-viet', '2', NULL, NULL),
(26, 'Lập Trình C/C++', 'sach-lap-trinh-c-c-plus', '3', NULL, NULL),
(27, 'Lập Trình Java', 'sach-lap-trinh-java', '3', NULL, NULL),
(28, 'Lập Trình Java-Android', 'sach-lap-trinh-java-android', '3', NULL, NULL),
(29, 'Lập Trình Java-Web/Servlet', 'sach-lap-trinh-java-web-servlet', '3', NULL, NULL),
(30, 'Lập Trình Web với PHP/Laravel', 'sach-lap-trinh-web-php', '3', NULL, NULL),
(31, 'Lập Trình Python', 'sach-lap-trinh-python', '3', NULL, NULL),
(32, 'Tin Công Nghệ', 'tin-cong-nghe', '4', '2018-11-28 11:40:09', '2018-11-28 11:40:09'),
(33, 'Tin khuyễn mại', 'tin-khuyen-mai', '4', '2018-11-28 11:40:31', '2018-11-28 11:40:31'),
(34, 'Sách GD Bậc Đại Học', 'sach-gd-bac-dai-hoc', '1', '2018-12-04 00:32:12', '2018-12-04 00:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `detail_img`
--

CREATE TABLE IF NOT EXISTS `detail_img` (
`id` int(10) unsigned NOT NULL,
  `images_url` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_11_13_131139_create_admin_users_table', 1),
('2016_11_24_011241_create_categor_table', 1),
('2016_11_24_011515_create_products_table', 1),
('2016_11_24_012823_create_pro_details_table', 1),
('2016_11_24_013636_create_detal_img_table', 1),
('2016_11_24_014238_create_news_table', 1),
('2016_11_24_014742_create_banners_table', 1),
('2016_12_01_161126_create_oders_table', 2),
('2016_12_02_015703_create_oders_detail_table', 3),
('2016_12_02_023327_create_oders_table', 4),
('2016_12_02_023343_create_oders_detail_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
`id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `full` text COLLATE utf8_unicode_ci NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `tag` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `author`, `intro`, `full`, `images`, `tag`, `status`, `source`, `cat_id`, `created_at`, `updated_at`) VALUES
(6, 'Khoa Học Công Nghệ Bưu Chính Viễn Thông', 'khoa-hoc-cong-nghe-buu-chinh-vien-thong', 'Hà Thanh Quang', '<h2>Đang l&agrave;m việc với tổ CSGT, t&agrave;i xế xe container bất ngờ leo l&ecirc;n xe điều khiển phương tiện t&ocirc;ng thẳng v&agrave;o m&ocirc; t&ocirc; đặc chủng.</h2>\r\n', '<p>Chiều 4/12, C&ocirc;ng an phường Long B&igrave;nh (quận 9, TP.HCM) đ&atilde; lập hồ sơ v&agrave; b&agrave;n giao Nguyễn Đức Hiệp (26 tuổi, qu&ecirc; Đồng Nai) cho Đội CSĐT C&ocirc;ng an quận 9 tiếp tục điều tra, l&agrave;m r&otilde; h&agrave;nh vi chống người thi h&agrave;nh c&ocirc;ng vụ.</p>\r\n\r\n<p>Th&ocirc;ng tin ban đầu, v&agrave;o khoảng 15h c&ugrave;ng ng&agrave;y, Hiệp điều khiển xe container lưu th&ocirc;ng tr&ecirc;n đường Nguyễn Xiển hướng ra cầu Đồng Nai. L&uacute;c n&agrave;y, Đội CSGT C&ocirc;ng an quận 9 đang tr&ecirc;n đường tuần tra ph&aacute;t hiện xe container chạy v&agrave;o khung giờ cấm xe tải nặng lưu th&ocirc;ng n&ecirc;n ra t&iacute;n hiệu dừng xe. Tổ CSGT y&ecirc;u cầu t&agrave;i xế xuống xe để kiểm tra giấy tờ v&agrave; th&ocirc;ng b&aacute;o lỗi vi phạm.</p>\r\n\r\n<p>T&agrave;i xế Hiệp xuống xe nhưng c&oacute; th&aacute;i độ chống đối. Người n&agrave;y sau đ&oacute; leo l&ecirc;n l&ecirc;n xe container chốt cửa. L&uacute;c n&agrave;y, một CSGT d&ugrave;ng m&ocirc; t&ocirc; đặc chủng đậu trước đầu xe container th&igrave; Hiệp điều khiển phương tiện t&ocirc;ng thẳng v&agrave;o m&ocirc; t&ocirc;.</p>\r\n\r\n<p>Rất may, lực lượng CSGT đ&atilde; kịp tr&aacute;nh n&ecirc;n tho&aacute;t nạn.</p>\r\n\r\n<p>Trước th&aacute;i độ chống đối của t&agrave;i xế, CSGT c&ugrave;ng sự phối hợp của C&ocirc;ng an phường Long B&igrave;nh đ&atilde; khống chế, bắt giữ Hiệp đưa về trụ sở c&ocirc;ng an xử l&yacute;.</p>\r\n', '1543947816_26116379_585527391778711_3674569985698679799_o.jpg', 'Khoa Học,Khoa Học Công Nghệ', 1, 'vnexpress', 32, '2018-12-04 11:23:36', '2018-12-04 11:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `oders`
--

CREATE TABLE IF NOT EXISTS `oders` (
`id` int(10) unsigned NOT NULL,
  `c_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` float NOT NULL,
  `total` float NOT NULL,
  `status` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oders`
--

INSERT INTO `oders` (`id`, `c_id`, `qty`, `sub_total`, `total`, `status`, `type`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 50000, 50000, 0, 'cod', '                    \r\n                  abc', '2018-12-05 01:58:00', '2018-12-05 01:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `oders_detail`
--

CREATE TABLE IF NOT EXISTS `oders_detail` (
`id` int(10) unsigned NOT NULL,
  `pro_id` int(10) unsigned NOT NULL,
  `qty` int(11) NOT NULL,
  `o_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oders_detail`
--

INSERT INTO `oders_detail` (`id`, `pro_id`, `qty`, `o_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2018-12-05 01:58:00', '2018-12-05 01:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `status` int(11) NOT NULL,
  `cat_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `intro` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `note`, `images`, `price`, `status`, `cat_id`, `created_at`, `updated_at`, `intro`) VALUES
(2, 'Sách Giáo Khoa Toán Lớp 1', 'sach-giao-khoa-toan-lop-1', 'Sách Giáo Khoa Lớp 1', '1544000064_22405910_1614336815307090_1206489386553597353_n.png', 50000, 1, 5, '2018-12-05 01:54:24', '2018-12-05 01:54:24', 'sách phục vụ giảng dạy');

-- --------------------------------------------------------

--
-- Table structure for table `pro_details`
--

CREATE TABLE IF NOT EXISTS `pro_details` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pub_company` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `pro_details`
--

INSERT INTO `pro_details` (`id`, `name`, `author`, `note`, `pro_id`, `created_at`, `updated_at`, `pub_company`) VALUES
(1, 'Toán Lớp 1', 'Bộ Giáo Dục', '<p>Th&ocirc;ng tin từ Cục H&agrave;ng kh&ocirc;ng Việt Nam cho biết s&aacute;ng nay 5-12, chuyến bay VJ212 h&agrave;nh tr&igrave;nh dự kiến từ s&acirc;n bay quốc tế T&acirc;n Sơn Nhất (TP HCM) đi s&acirc;n bay Vinh (TP Vinh, Nghệ An), do thời tiết xấu n&ecirc;n phải chuyển hướng hạ c&aacute;nh tại s&acirc;n bay quốc tế Nội B&agrave;i l&uacute;c 8 giờ 40 ph&uacute;t.</p>\r\n\r\n<p>Tr&ecirc;n chuyến bay, khi c&oacute; th&ocirc;ng tin thời tiết xấu, cơ trưởng chuyến bay th&ocirc;ng b&aacute;o việc hạ c&aacute;nh tại s&acirc;n bay Nội B&agrave;i để đảm bảo an to&agrave;n cho h&agrave;nh kh&aacute;ch. Một số người đ&atilde; c&oacute; phản ứng kh&ocirc;ng hợp t&aacute;c, giận dữ. Trong đ&oacute;, 2 h&agrave;nh kh&aacute;ch c&oacute; h&agrave;nh vi g&acirc;y rối tr&ecirc;n&nbsp;m&aacute;y bay, c&oacute; lời lẽ th&ocirc; tục v&agrave; cố x&ocirc;ng v&agrave;o định đấm v&agrave;o mặt tiếp vi&ecirc;n.</p>\r\n', 2, '2018-12-05 01:54:24', '2018-12-05 01:54:24', 'Nhà XB Giáo Dục Hà Nội');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'HaQuang', 'quang97ptit@gmail.com', '$2y$10$TNWBODgJHJ9Gxy2VeyU65eVXVlMuDmEhb33ddehxNEJqB3DZG4HK2', '0333576797', 'Hà Nội', 1, NULL, '2018-12-04 00:38:15', '2018-12-04 00:38:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `admin_users_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
 ADD PRIMARY KEY (`id`), ADD KEY `banners_user_id_foreign` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_img`
--
ALTER TABLE `detail_img`
 ADD PRIMARY KEY (`id`), ADD KEY `detail_img_pro_id_foreign` (`pro_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
 ADD PRIMARY KEY (`id`), ADD KEY `news_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `oders`
--
ALTER TABLE `oders`
 ADD PRIMARY KEY (`id`), ADD KEY `oders_c_id_foreign` (`c_id`);

--
-- Indexes for table `oders_detail`
--
ALTER TABLE `oders_detail`
 ADD PRIMARY KEY (`id`), ADD KEY `oders_detail_pro_id_foreign` (`pro_id`), ADD KEY `oders_detail_o_id_foreign` (`o_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`), ADD KEY `products_cat_id_foreign` (`cat_id`);

--
-- Indexes for table `pro_details`
--
ALTER TABLE `pro_details`
 ADD PRIMARY KEY (`id`), ADD KEY `pro_details_pro_id_foreign` (`pro_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `detail_img`
--
ALTER TABLE `detail_img`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `oders`
--
ALTER TABLE `oders`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `oders_detail`
--
ALTER TABLE `oders_detail`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pro_details`
--
ALTER TABLE `pro_details`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
ADD CONSTRAINT `banners_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_img`
--
ALTER TABLE `detail_img`
ADD CONSTRAINT `detail_img_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
ADD CONSTRAINT `news_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oders`
--
ALTER TABLE `oders`
ADD CONSTRAINT `oders_c_id_foreign` FOREIGN KEY (`c_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `oders_detail`
--
ALTER TABLE `oders_detail`
ADD CONSTRAINT `oders_detail_o_id_foreign` FOREIGN KEY (`o_id`) REFERENCES `oders` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `oders_detail_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
ADD CONSTRAINT `products_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_details`
--
ALTER TABLE `pro_details`
ADD CONSTRAINT `pro_details_pro_id_foreign` FOREIGN KEY (`pro_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
