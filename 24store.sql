-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2022 at 07:42 PM
-- Server version: 10.3.28-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `24store`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_tb`
--

CREATE TABLE `card_tb` (
  `card_id` int(11) NOT NULL,
  `card_orderid` varchar(255) DEFAULT NULL,
  `card_transactionid` varchar(255) DEFAULT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_amount` double(11,2) DEFAULT NULL,
  `card_amount_cost` double(11,2) DEFAULT NULL,
  `card_code` varchar(255) DEFAULT NULL,
  `card_serial` varchar(255) DEFAULT NULL,
  `card_productid` int(11) DEFAULT NULL,
  `card_userid` int(11) DEFAULT NULL,
  `card_check` int(11) NOT NULL DEFAULT 0 COMMENT '0 รอสักครู่,1 สำเร็จ, 2 คืนเงิน	',
  `card_datetime` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `title` text NOT NULL,
  `codename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `topic` varchar(200) NOT NULL COMMENT 'หัวข้อเรื่อง',
  `detail` text NOT NULL COMMENT 'รายละเอียด',
  `image` varchar(255) NOT NULL DEFAULT 'https://placehold.it/960x502',
  `meta_keys` text NOT NULL,
  `page_main` tinyint(1) NOT NULL,
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `codename`, `description`, `topic`, `detail`, `image`, `meta_keys`, `page_main`, `created`) VALUES
(1, 'True money', 'truemoney', '. .', 'ระบบตัดบัตรทรูมันนี่อัตโนมัติ', '<div class=\"table-responsive\">\r\n<table class=\"table\">\r\n	<thead>\r\n		<tr>\r\n			<th style=\"text-align:center\">จำนวนเงิน</th>\r\n			<th style=\"text-align:center\">เครดิตที่ได้รับ</th>\r\n			<th style=\"text-align:center\">แต้มเติมเงินสะสม</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">50 บาท</td>\r\n			<td style=\"text-align:center\">40 Credit</td>\r\n			<td style=\"text-align:center\">50 แต้ม</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">90 บาท</td>\r\n			<td style=\"text-align:center\">72 Credit</td>\r\n			<td style=\"text-align:center\">90 แต้ม</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">150 บาท</td>\r\n			<td style=\"text-align:center\">120 Credit</td>\r\n			<td style=\"text-align:center\">150 แต้ม</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">300 บาท</td>\r\n			<td style=\"text-align:center\">240 Credit</td>\r\n			<td style=\"text-align:center\">300 แต้ม</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">500 บาท</td>\r\n			<td style=\"text-align:center\">400 Credit</td>\r\n			<td style=\"text-align:center\">500 แต้ม</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center\">1000 บาท</td>\r\n			<td style=\"text-align:center\">800 Credit</td>\r\n			<td style=\"text-align:center\">1000 แต้ม</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n<!--?php\r\n$var = 25;\r\necho $var\r\n?-->\r\n\r\n<p style=\"text-align:center\">บริษัท <strong><span style=\"color:#ed1c24\">True</span> <span style=\"color:#f58220\">Money</span></strong> ประกาศเพิ่มค่าธรรมเนียมเติมเงินเข้า <span style=\"color:#ed1c24\"><strong>Wallet</strong></span> ด้วยวิธีการเติมเงินบัตรเงินสดทรูมันนี่</p>\r\n\r\n<p style=\"text-align:center\">จากเดิมที่เก็บค่าธรรมเนียมอยู่ที่ <strong>14%</strong> เพิ่มขึ้นมาเป็น <strong>20%</strong> โดยจะหักเงินจากยอดเงินที่เติมเข้าไปทันที</p>', 'https://placehold.it/960x502', 'example1, example2, example3', 0, '2020-01-15 21:28:11'),
(2, 'True wallet', 'truewallet', '. .', 'ระบบแจ้งโอนวอลเล็ตอัตโนมัติ', '<div class=\"table-responsive\">\r\n<table class=\"table\">\r\n	<thead>\r\n		<tr>\r\n			<th style=\"text-align:center\">จำนวนเงิน</th>\r\n			<th style=\"text-align:center\">เครดิตที่ได้รับ</th>\r\n			<th style=\"text-align:center\">แต้มเติมเงินสะสม</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">1 บาท</td>\r\n			<td style=\"text-align:center\">1 Credit</td>\r\n			<td style=\"text-align:center\">1 แต้ม</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 'https://placehold.it/960x502', 'example1, example2, example3', 0, '2022-02-15 04:19:06'),
(20, 'Prepaid channel', 'topup', '. .', 'ช่องทางการเติมเงิน', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(30, 'Order confirm', 'order', '. .', 'ยืนยันการชำระเงิน', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(50, 'Contact us', 'contact', '. .', 'ติดต่อเรา', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '2018-04-09 10:00:43'),
(70, 'Create account id', 'createaccount', '. .', 'สมัครสมาชิก', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(80, 'Account manage', 'accountmanage', '. .', 'ระบบจัดการบัญชีผู้ใช้', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '2018-11-27 07:12:20'),
(110, 'Item Code', 'itemcode', '. .', 'ไอเทมโค้ด', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '2018-11-27 07:12:20'),
(120, 'How to create account', 'howtocreateaccount', '. .', 'วิธีสมัครสมาชิก', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://placehold.it/960x502', 'example1, example2, example3', 0, '2020-01-31 22:02:39'),
(130, 'Credit Processing', 'credit', '. .', 'เครดิตซื้อขายของเว็บไซต์', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(140, 'How to topup', 'howtotopup', '. .', 'วิธีเติมเงิน', '<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;<span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:22px\"><span style=\"color:#000000\">-<u>วิธีเติมเงินผ่านช่องทางทรูมันนี่ Wallet</u> -&nbsp;</span><a href=\"https://youtu.be/yJ7aIKUleyM\" id=\"watch-url\" target=\"_blank\"><span style=\"color:#000000\">https://youtu.be/yJ7aIKUleyM</span></a></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:22px\"><span style=\"color:#000000\">-<u>วิธีเติมเงินผ่านช่องทางบัตรทรูมันนี่</u> -&nbsp;</span><a href=\"https://youtu.be/r54uQJSXJss\" id=\"watch-url\" target=\"_blank\"><span style=\"color:#000000\">https://youtu.be/r54uQJSXJss</span></a></span></span></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"font-family:Verdana,Geneva,sans-serif\"><span style=\"font-size:22px\"><span style=\"color:#000000\"><span style=\"background-color:#ffffff\">-</span><u><span style=\"background-color:#ffffff\">วิธีเติมเงินผ่านช่องทางบัตรทรูมันนี่</span></u> -&nbsp;</span><a href=\"https://youtu.be/9chzc8xGnDg\" id=\"watch-url\" target=\"_blank\"><span style=\"color:#000000\">https://youtu.be/9chzc8xGnDg</span></a></span></span><span style=\"color:#000000\">&nbsp;</span></p>', 'https://placehold.it/960x502', 'example1, example2, example3', 0, '2020-08-15 06:57:07'),
(150, 'How to buy', 'howtobuy', '. .', 'วิธีซื้อสินค้าภายในเว็บไซต์', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://placehold.it/960x502', 'example1, example2, example3', 0, '2019-11-27 17:52:55'),
(170, 'Bank transfer', 'banktransfer', '. .', 'ระบบแจ้งโอนธนาคารอัตโนมัติ', '<div class=\"table-responsive\">\r\n<table class=\"table\">\r\n	<thead>\r\n		<tr>\r\n			<th style=\"text-align:center\">จำนวนเงิน</th>\r\n			<th style=\"text-align:center\">เครดิตที่ได้รับ</th>\r\n			<th style=\"text-align:center\">แต้มสะสมที่ได้รับ</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center\">1 บาท</td>\r\n			<td style=\"text-align:center\">1 Credit</td>\r\n			<td style=\"text-align:center\">1 แต้ม</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 'https://placehold.it/960x502', 'example1, example2, example3', 0, '2020-01-15 21:28:25'),
(190, 'All Product', 'product', '. .', 'สินค้าทั้งหมด', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(200, 'Product View', 'productview', '. .', 'สินค้าตัวอย่าง', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(210, 'Shopping Cart', 'cart', '. .', 'ตะกร้าสินค้า', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(220, 'Card Online', 'card-online', '. .', 'บัตรเติมเงินเกม', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(231, 'Gaming Gear', 'gaminggear', '. .', 'สินค้าเกมมิ่งเกีบร์', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00'),
(232, 'Search Products', 'search', '. .', 'ค้นหาสินค้าทั้งหมด', '', 'https://placehold.it/960x502', 'example1, example2, example3', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_logs`
--

CREATE TABLE `dashboard_logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_customer` varchar(50) NOT NULL,
  `detail` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `freefire_openid`
--

CREATE TABLE `freefire_openid` (
  `ffid_id` int(11) NOT NULL,
  `ffid_uid` varchar(255) DEFAULT NULL,
  `ffid_name` varchar(255) DEFAULT NULL,
  `ffid_openid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'https://placehold.it/600x600',
  `image_cat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `game_categorie`
--

CREATE TABLE `game_categorie` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_friendly` varchar(100) NOT NULL,
  `creator` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `counts` int(11) NOT NULL DEFAULT 0,
  `show_active` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) NOT NULL DEFAULT 'https://placehold.it/180x180',
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `game_categorie`
--

INSERT INTO `game_categorie` (`id`, `name`, `url_friendly`, `creator`, `content`, `counts`, `show_active`, `image`, `created`) VALUES
(1, 'PUBG Mobile', 'pubgmobile', 'By Tencent', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#ff0000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์ ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ UC ในเกมเพิ่มขึ้นสูงสุด 10%</p>\r\n\r\n<p>ตารางเปรียบเทียบการเติมเงิน&nbsp;PUBG Mobile</p>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ UC<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 UC กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 29 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>29 บาท</td>\r\n			<td>60 UC</td>\r\n			<td>0.48</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 149 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>149 บาท</td>\r\n			<td>325 UC</td>\r\n			<td>0.46</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 299 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>299 บาท</td>\r\n			<td>660 UC</td>\r\n			<td>0.45</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 749 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>749 บาท</td>\r\n			<td>1,800 UC</td>\r\n			<td>0.42</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1600 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,600 บาท</td>\r\n			<td>3,850 UC</td>\r\n			<td>0.42</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3000 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>3,000 บาท</td>\r\n			<td>8,100 UC</td>\r\n			<td>0.37</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>109 UC</td>\r\n			<td>0.46</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>223 UC</td>\r\n			<td>0.44</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>693 UC</td>\r\n			<td>0.43</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>1,223 UC</td>\r\n			<td>0.40</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>990 บาท</td>\r\n			<td>2,528 UC</td>\r\n			<td>0.39</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 3500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>3,460 บาท</td>\r\n			<td>10,080 UC</td>\r\n			<td>0.34</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 5000 THB</strong></td>\r\n			<td>✔✔</td>\r\n			<td>4,940 บาท</td>\r\n			<td>14,572 UC</td>\r\n			<td>0.34</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 1772, 1, 'https://i.imgur.com/PqxnTuW.jpg', '2022-03-03 19:57:22'),
(2, 'Ragnarok M', 'ragnarokmobile', 'By Gravity', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#008000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ Coin ในเกมเพิ่มขึ้นสูงสุด 5%</p>\r\n\r\n<div class=\"alert alert-info\">\r\n<h4>เรทใหม่มาแล้วว!</h4>\r\nเนื่องจากทาง iOS ได้มีการปรับราคาแพคใหม่ เมื่อช่วงปลายเดือนมกราคม ทางทีมงานก็ไม่รอช้ารีบประสานงานทันที<br />\r\nวันนี้บัตร Razer Pin ได้ปรับเรทตามเรียบร้อยแล้วครับ คุ้มค่าเช่นเดิม ขอให้มีความสุขกับการเล่นเกมนะครับ<br />\r\n<br />\r\n01-03-2563</div>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ Coin<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 Coin กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n			<th>หมายเหตุ<br />\r\n			&nbsp;</th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 149 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>149 บาท</td>\r\n			<td>60 Coin</td>\r\n			<td>2.48</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 599 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>599 บาท</td>\r\n			<td>240 Coin</td>\r\n			<td>2.50</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1600 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,600 บาท</td>\r\n			<td>596 Coin</td>\r\n			<td>2.68</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3000 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>3,000 บาท</td>\r\n			<td>1,196 Coin</td>\r\n			<td>2.51</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>298 บาท</td>\r\n			<td>96 Coin</td>\r\n			<td>3.10</td>\r\n			<td>ใช้ x2 ของแพค 149</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>990 บาท</td>\r\n			<td>358 Coin</td>\r\n			<td>2.77</td>\r\n			<td>ใช้ x2 ของแพค 149 + 599</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 3500 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>3,460 บาท</td>\r\n			<td>1,340 Coin</td>\r\n			<td>2.58</td>\r\n			<td>ใช้ x2 ของแพค 149 + 3000</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 5000 THB</strong></td>\r\n			<td>✔✔</td>\r\n			<td>4,940 บาท</td>\r\n			<td>1,938 Coin</td>\r\n			<td>2.55</td>\r\n			<td>ใช้ x2 ของแพค 149 + 1600 + 3000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&bull;&nbsp;โบนัสเติมครั้งแรกจะมีแค่ 4 ราคา อิงตามแพคในเกมนะครับ ได้แก่ 149, 599, 1600, 3000 ไม่มีราคานอกเหนือจากนี้ (ไม่มีราคา 2000, 5000 นะครับ)</p>\r\n\r\n<p>&bull;&nbsp;หากเคยได้รับโบนัส x2 แพคไหนไปแล้ว ก็จะไม่สามารถรับได้อีกแล้ว แม้จะเติมช่องทางใหม่ก็ไม่ได้นะครับ 1 แพคได้แค่ 1 ครั้งเท่านั้น</p>\r\n\r\n<p><img alt=\"เช็คว่าแพคไหนยังไม่เคย x2\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/check-first-refill.jpg\" /></p>\r\n\r\n<p>&bull;&nbsp;วิธีดูว่าแพคไหน x2 ให้ดูในหน้าเติมเงินในเกมครับ แพคที่มีคำว่า&nbsp;<strong>Double Coin</strong>&nbsp;แสดงว่ายังไม่เคยเติม สามารถรับโบนัส x2 ได้ครับ</p>\r\n\r\n<p>&bull;&nbsp;ในตารางทีมงานทำการคัดบัตรที่เติมแล้วคุ้มมาให้แล้วนะครับ เพียงแค่เลือกบัตรที่ช่อง หมายเหตุ ตรงกับแพคที่เราต้องการเติม x2 ได้เลยครับ</p>\r\n\r\n<p>&bull;&nbsp;สำหรับคนที่ยังไม่เคยเติมสักแพคเลย ทีมงานแนะนำบัตร 5000 THB นะครับ จะได้ x2 ของ 3 แพค 3000+1600+149 ซึ่งหากเทียบกับไปเติมในเกมทีละแพค เติมบัตรจะคุ้มกว่าครับ ส่วนแพค 599 จะเลือกเติมในเกมหรือเติมบัตร Razer Pin 1000 THB ก็ได้ครับ</p>\r\n</div>', 780, 1, 'https://imgur.com/Vf8l1Vz.jpg', '2022-03-03 21:50:27'),
(3, 'RoV', 'rov', 'By Garena', '<p>ทางเลือกที่ 1 พบกับแพ็คเกจสุดคุ้มจาก ลัคกี้สโตร์</p>\r\n\r\n<p><a class=\"btn btn-danger btn-block\" href=\"https://www.lucky-store.in.th/termgame/rov\">เติมเพชรสุดคุ้มคลิก!!</a></p>\r\n\r\n<hr />\r\n<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/garena\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Garena\"><span style=\"color:#ff0000\">Garena</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1:&nbsp;ซื้อบัตร Garena ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2:&nbsp;เติมเกมด้วยบัตร Garena ได้รับ คูปอง ในเกมเพิ่มขึ้น 10%</p>\r\n\r\n<p style=\"text-align:center\">ตารางเปรียบเทียบการเติมเงิน RoV</p>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ คูปอง<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 คูปอง กี่บาท<br />\r\n			<small>ยิ่งน้อยยิ่งคุ้ม</small></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35 บาท</td>\r\n			<td>36 คูปอง</td>\r\n			<td>0.97</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 99 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>99 บาท</td>\r\n			<td>113 คูปอง</td>\r\n			<td>0.88</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 249 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>249 บาท</td>\r\n			<td>265 คูปอง</td>\r\n			<td>0.94</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 389 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>389 บาท</td>\r\n			<td>420 คูปอง</td>\r\n			<td>0.93</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 669 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>669 บาท</td>\r\n			<td>725 คูปอง</td>\r\n			<td>0.92</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 879 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>879 บาท</td>\r\n			<td>970 คูปอง</td>\r\n			<td>0.91</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1750 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,750 บาท</td>\r\n			<td>1,950 คูปอง</td>\r\n			<td>0.90</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3500 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>3,500 บาท</td>\r\n			<td>3,910 คูปอง</td>\r\n			<td>0.90</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 20 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>20 บาท</td>\r\n			<td>24 คูปอง</td>\r\n			<td>0.83</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 50 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>60 คูปอง</td>\r\n			<td>0.83</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 100 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>123 คูปอง</td>\r\n			<td>0.80</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 150 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>150 บาท</td>\r\n			<td>186 คูปอง</td>\r\n			<td>0.81</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 300 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>370 คูปอง</td>\r\n			<td>0.81</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 500 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>620 คูปอง</td>\r\n			<td>0.80</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 1000 บาท</strong></td>\r\n			<td>✔✔</td>\r\n			<td>990 บาท</td>\r\n			<td>1,249 คูปอง</td>\r\n			<td>0.79</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<hr />\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า RoV</span></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" class=\"img-fluid\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/1.png\" style=\"margin:0 auto; text-align:center\" /></p>', 3881, 1, 'https://imgur.com/MYCUBHR.jpg', '2022-03-05 11:32:32'),
(4, 'Free Fire', 'freefire', 'By Garena', '<p>ทางเลือกที่ 1 พบกับแพ็คเกจสุดคุ้มจาก ลัคกี้สโตร์</p>\r\n\r\n<p><a class=\"btn btn-danger btn-block\" href=\"https://www.lucky-store.in.th/termgame/freefire\">เติมเพชรสุดคุ้มคลิก!!</a></p>\r\n\r\n<hr />\r\n<p>ทางเลือกที่ 2 ซื้อบัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.luckystore.in.th/card-online/garena\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Garena\"><span style=\"color:#ff0000\">Garena</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1:&nbsp;ซื้อบัตร Garena ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2:&nbsp;เติมเกมด้วยบัตร Garena ได้รับ เพชร ในเกมเพิ่มขึ้น 10%</p>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ เพชร<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 เพชร กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35 บาท</td>\r\n			<td>100 เพชร</td>\r\n			<td>0.35</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 99 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>99 บาท</td>\r\n			<td>310 เพชร</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 179 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>179 บาท</td>\r\n			<td>520 เพชร</td>\r\n			<td>0.34</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 349 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>349 บาท</td>\r\n			<td>1,060 เพชร</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 699 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>699 บาท</td>\r\n			<td>2,180 เพชร</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1750 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,750 บาท</td>\r\n			<td>5,600 เพชร</td>\r\n			<td>0.31</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 20 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>20 บาท</td>\r\n			<td>68 เพชร</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 50 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>172 เพชร</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 100 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>310 เพชร</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 150 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>150 บาท</td>\r\n			<td>517 เพชร</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 300 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>1,052 เพชร</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 500 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>1,801 เพชร</td>\r\n			<td>0.27</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena 1000 บาท</strong></td>\r\n			<td>✔✔</td>\r\n			<td>990 บาท</td>\r\n			<td>3,698 เพชร</td>\r\n			<td>0.27</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>', 54896, 1, 'https://imgur.com/LQhMf7x.jpg', '2022-03-03 18:22:02'),
(5, 'MARVEL Super War', 'marvel-super-war', 'By NetEase', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#008000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วย Razer Gold ได้รับ Star Credit ในเกมเพิ่มขึ้นสูงสุด 7%</p>\r\n\r\n<div class=\"alert alert-warning\">- Account ที่สมัครด้วย Game Center ของ Apple จะไม่สามารถเติมเงินด้วย Razer Gold Wallet</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน MARVEL Super War</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ Star Credit<br />\r\n			<small>ไม่รวมโบนัสอื่นๆ</small></th>\r\n			<th>1 Star Credit กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35 บาท</td>\r\n			<td>55 Star Credit</td>\r\n			<td>0.64</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 69 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>69 บาท</td>\r\n			<td>110 Star Credit</td>\r\n			<td>0.63</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 179 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>179 บาท</td>\r\n			<td>275 Star Credit</td>\r\n			<td>0.65</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 349 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>349 บาท</td>\r\n			<td>565 Star Credit</td>\r\n			<td>0.62</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 699 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>699 บาท</td>\r\n			<td>1,155 Star Credit</td>\r\n			<td>0.61</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1220 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,220 บาท</td>\r\n			<td>2,025 Star Credit</td>\r\n			<td>0.60</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1750 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,750 บาท</td>\r\n			<td>2,950 Star Credit</td>\r\n			<td>0.59</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3500 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>3,500 บาท</td>\r\n			<td>6,000 Star Credit</td>\r\n			<td>0.58</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 0.99 USD</strong></td>\r\n			<td>✔</td>\r\n			<td>31.68 บาท</td>\r\n			<td>55 Star Credit</td>\r\n			<td>0.58</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 4.99 USD</strong></td>\r\n			<td>✔</td>\r\n			<td>159.68 บาท</td>\r\n			<td>275 Star Credit</td>\r\n			<td>0.58</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 9.99 USD</strong></td>\r\n			<td>✔</td>\r\n			<td>319.68 บาท</td>\r\n			<td>565 Star Credit</td>\r\n			<td>0.57</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 19.99 USD</strong></td>\r\n			<td>✔</td>\r\n			<td>639.68 บาท</td>\r\n			<td>1,155 Star Credit</td>\r\n			<td>0.55</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 29.99 USD</strong></td>\r\n			<td>✔</td>\r\n			<td>959.68 บาท</td>\r\n			<td>1,765 Star Credit</td>\r\n			<td>0.54</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 49.99 USD</strong></td>\r\n			<td>✔</td>\r\n			<td>1,599.68 บาท</td>\r\n			<td>2,975 Star Credit</td>\r\n			<td>0.54</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 99.99 USD</strong></td>\r\n			<td>✔✔</td>\r\n			<td>3,199.68 บาท</td>\r\n			<td>6,000 Star Credit</td>\r\n			<td>0.53</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">- โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin THB แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ<br />\r\n- โปรดแน่ใจว่าท่านมีบัญชี Razer Gold Wallet แล้ว หากยังไม่มีโปรด<a href=\"https://razerid.razer.com/new\" rel=\"noopener noreferrer\" target=\"_blank\"> สมัคร Razer Gold Wallet </a>ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"https://www.mswpay.com/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; ทำการป้อน ID ผู้ใช้\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Character ID\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือกเติมเงินด้วย Razer Gold Wallet\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. เลือก จำนวนเงินที่ต้องการเติม &gt; ติ๊กถูก ยอมรับข้อตกลง &gt; กดปุ่ม ชำระเงิน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/3.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Package\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/3.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>4. ทำการล็อกอินบัญชี Razer Gold (หากยังไม่มีโปรด <a href=\"https://razerid.razer.com/new\" rel=\"noopener noreferrer\" target=\"_blank\"> สมัคร Razer Gold Wallet </a>ก่อนนะคะ)\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Login\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div id=\"step5\">5. กรณียอดเงินใน Razer Gold Wallet ไม่เพียงพอ กดปุ่ม เติมเงินทันที (หากเพียงพอแล้วให้ ข้ามไปข้อ 10 )\r\n<div class=\"alert alert-info\">- ตัวอย่างเช่นยอดชำระ 644.8 บาท ลูกค้าอาจจะเติมด้วยบัตร Razer Pin THB ราคา 500+100+50 บาท เพื่อให้ยอดเพียงพอสำหรับชำระ<br />\r\n- กรณีเติมบัตรเกินยอดที่ชำระ เช่นเติมไป 650 บาทแต่ใช้เพียง 644.8 บาท ยอดเงินที่เหลือ 5.2 บาทจะคงเก็บไว้ใน Razer Gold สำหรับเติมครั้งต่อไป</div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/5.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Pay\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/5.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>6. เลือกบัตรเติมเงิน Razer Gold PIN\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/6.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Razer Gold PIN\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/6.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>7. กดปุ่ม ดำเนินการต่อ\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/7.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Continue\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/7.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>8. กรอกรหัส OTP จากโทรศัพท์ของท่าน &gt; กดปุ่ม ต่อไป\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/8.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill OTP\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/8.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/pay5.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"SMS OTP\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/pay5.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>9. เติมเงินด้วยบัตร Razer Pin ของท่าน จากนั้นกดปุ่ม Close\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/success-razer-pin-2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/success-razer-pin-2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div id=\"step10\">10. เมื่อยอดเงินใน Razer Gold Wallet เพียงพอ กดปุ่ม ดำเนินการต่อ (หากยอดเงินยังไม่พอ กลับไปเริ่มที่ข้อ 5 เพื่อเติมบัตรใบต่อไป)\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/9.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Confirm\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/9.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/wallet.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/marvel/wallet.png\" style=\"max-width:80%\" /></a>\r\n</div>\r\n</div>\r\n</div>', 457, 1, 'https://imgur.com/TbNhhEz.jpg', '2022-03-05 01:37:15'),
(6, 'Call of Duty Mobile', 'call-of-duty-mobile', 'By Garena', '<p>ทางเลือกที่ 1 พบกับแพ็คเกจสุดคุ้มจาก ลัคกี้สโตร์</p>\r\n\r\n<p><a class=\"btn btn-danger btn-block\" href=\"https://www.lucky-store.in.th/termgame/callofduty\">เติม CP สุดคุ้มคลิก!!</a></p>\r\n\r\n<hr />\r\n<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/garena\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Garena\"><span style=\"color:#ff0000\">Garena</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1:&nbsp;ซื้อบัตร Garena ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2:&nbsp;เติมเกมด้วยบัตร Garena ได้รับ คูปอง ในเกมเพิ่มขึ้น 10%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน Call of Duty Mobile</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ<!-- --> <!-- -->CP<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 CP กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม<!-- --> <!-- -->35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35<!-- --> <!-- -->บาท</td>\r\n			<td>80<!-- --> <!-- -->CP</td>\r\n			<td>0.44</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม<!-- --> <!-- -->179 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>179<!-- --> <!-- -->บาท</td>\r\n			<td>420<!-- --> <!-- -->CP</td>\r\n			<td>0.43</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม<!-- --> <!-- -->349 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>349<!-- --> <!-- -->บาท</td>\r\n			<td>880<!-- --> <!-- -->CP</td>\r\n			<td>0.40</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม<!-- --> <!-- -->879 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>879<!-- --> <!-- -->บาท</td>\r\n			<td>2,400<!-- --> <!-- -->CP</td>\r\n			<td>0.37</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม<!-- --> <!-- -->1750 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,750<!-- --> <!-- -->บาท</td>\r\n			<td>5,000<!-- --> <!-- -->CP</td>\r\n			<td>0.35</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม<!-- --> <!-- -->3500 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>3,500<!-- --> <!-- -->บาท</td>\r\n			<td>10,800<!-- --> <!-- -->CP</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena<!-- --> <!-- -->50 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>50<!-- --> <!-- -->บาท</td>\r\n			<td>138<!-- --> <!-- -->CP</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena<!-- --> <!-- -->150 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>150<!-- --> <!-- -->บาท</td>\r\n			<td>414<!-- --> <!-- -->CP</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena<!-- --> <!-- -->300 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>298<!-- --> <!-- -->บาท</td>\r\n			<td>864<!-- --> <!-- -->CP</td>\r\n			<td>0.34</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena<!-- --> <!-- -->500 บาท</strong></td>\r\n			<td>✔</td>\r\n			<td>495<!-- --> <!-- -->บาท</td>\r\n			<td>1,560<!-- --> <!-- -->CP</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Garena<!-- --> <!-- -->1000 บาท</strong></td>\r\n			<td>✔<!-- -->✔</td>\r\n			<td>990<!-- --> <!-- -->บาท</td>\r\n			<td>3,240<!-- --> <!-- -->CP</td>\r\n			<td>0.31</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า Call of Duty Mobile</span></h3>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/1(1).png\" /></p>', 1576, 1, 'https://imgur.com/QdI4Ssy.jpg', '2022-03-05 02:23:45'),
(7, 'Black Desert Online', 'bdo', 'By Pearl Abyss', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#008000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์ ได้รับส่วนลดทันที 1%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า [PC] Black Desert Online</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"https://account.th.playblackdesert.com/Member/Login\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; ทำการล็อกอิน\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Link\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือก เติม Acoin\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"select เติม Acoin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. กดปุ่ม Razer Gold Gift Card\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/3.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"click Razer Gold Gift Card\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/3.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>4. เลือก เติมเงินด้วยบัตร Pin Voucher\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"click Pin Voucher\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>5. เติมเงินด้วยบัตร Razer Pin ของท่าน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/success-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/bdo/success-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n</div>\r\n</div>\r\n</div>', 208, 1, 'https://imgur.com/ljQV2Xq.jpg', '2022-03-02 17:47:08'),
(8, 'HeartsWar', 'heartswar', 'By PlayPark', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/acash\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ @Cash\"><span style=\"color:#3333cc\">@Cash</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร @Cash ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 2%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร @Cash ได้รับ Cash ในเกมเพิ่มขึ้นสูงสุด 35%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน HeartsWar</span></h3>\r\n\r\n<div class=\"alert alert-info\">TH Point คือการใช้บัตร @Cash เติมเข้าไปในระบบ Play@Mall โดย 1 บาท = 1 TH Point<br />\r\n<br />\r\nหากผู้เล่นยังไม่มี TH Point โปรด สั่งซื้อ @Cash และเติมเข้าระบบ Play@Mall ก่อนนะคะ &nbsp;<a href=\"https://www.lucky-store.in.th/card-online/acash\">วิธีการเติม @Cash</a></div>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div>1. <a href=\"https://playmall.playpark.com/Refill_Exchange.aspx?gsID=WUE3R1FMajJzZUd2cEtYZm9jVEtGQT09\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; ทำการล็อกอิน, เลือกเกม HeartsWar\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Link\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือกเซิร์ฟเวอร์\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Server\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. ป้อนชื่อตัวละคร\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/3.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Input your charactor name\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/3.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>4. เลือก จำนวนที่ต้องการเติม<br />\r\n(หากผู้เล่นยังไม่มี TH Point โปรด สั่งซื้อ @Cash และเติมเข้าระบบ Play@Mall ก่อนนะคะ &nbsp;<a href=\"https://www.lucky-store.in.th/reload/view/heartswar\">วิธีการเติม @Cash</a>)\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select amount to top-up\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>5. กดปุ่ม ยืนยัน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/5.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Click Confirm\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/5.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>6. กดปุ่ม ปิดหน้านี้\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/6.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Click Close\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/6.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>7. ในกรณีเงินของท่านไม่พอ สามารถดูวิธีเติมเงินได้ <a href=\"https://www.lucky-store.in.th/reload/view/heartswar\">ที่นี่</a>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/warning.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"if your TH Point is not enough Can see how to top up \" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/heartswar/warning.png\" style=\"max-width:80%\" /></a>\r\n</div>\r\n</div>\r\n</div>', 165, 1, 'https://imgur.com/E5Wne4E.jpg', '2022-03-03 02:33:04'),
(9, 'World of Dragon Nest', 'world-of-dragon-nest', 'By Nexon', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#ff0000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์ ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ Diamond ในเกมเพิ่มขึ้นสูงสุด 1%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน World of Dragon Nest</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ Diamond<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 Diamond กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 29 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>29 บาท</td>\r\n			<td>60 Diamond</td>\r\n			<td>0.48</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 145 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>145 บาท</td>\r\n			<td>310 Diamond</td>\r\n			<td>0.47</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 579 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>579 บาท</td>\r\n			<td>1,280 Diamond</td>\r\n			<td>0.45</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1450 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,450 บาท</td>\r\n			<td>3,240 Diamond</td>\r\n			<td>0.45</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 2900 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>2,900 บาท</td>\r\n			<td>6,500 Diamond</td>\r\n			<td>0.45</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>110 Diamond</td>\r\n			<td>0.45</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>220 Diamond</td>\r\n			<td>0.45</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>720 Diamond</td>\r\n			<td>0.41</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>1,210 Diamond</td>\r\n			<td>0.41</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>990 บาท</td>\r\n			<td>2,420 Diamond</td>\r\n			<td>0.41</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 3500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>3,460 บาท</td>\r\n			<td>8,610 Diamond</td>\r\n			<td>0.40</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 5000 THB</strong></td>\r\n			<td>✔✔</td>\r\n			<td>4,940 บาท</td>\r\n			<td>12,300 Diamond</td>\r\n			<td>0.40</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า World of Dragon Nest</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"https://pay.nxsea.com/payment/payment.aspx?payid=21\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; เลือกเติม Diamond &gt; ป้อน รหัสบัญชี &gt; เลือก จำนวนที่ต้องการเติม &gt; ติ๊กถูก ยอมรับของตกลง &gt; กดปุ่ม เติมเงินทันที\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/world-of-dragon-nest/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Link\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/world-of-dragon-nest/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เติมเงินด้วยบัตร Razer Pin ของท่าน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/world-of-dragon-nest/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/world-of-dragon-nest/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/world-of-dragon-nest/success-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/world-of-dragon-nest/success-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n</div>', 149, 1, 'https://imgur.com/by5kUj1.jpg', '2022-03-02 17:27:08'),
(10, 'Ragnarok Tactics', 'ragnarok-tactics', 'By Gravity', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#ff0000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์ ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ GP ในเกมเพิ่มขึ้นสูงสุด 30%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน Ragnarok Tactics</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ GP<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 GP กี่บาท<br />\r\n			<small>ยิ่งน้อยยิ่งคุ้ม</small></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35 บาท</td>\r\n			<td>72 GP</td>\r\n			<td>0.49</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 179 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>179 บาท</td>\r\n			<td>360 GP</td>\r\n			<td>0.50</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 349 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>349 บาท</td>\r\n			<td>720 GP</td>\r\n			<td>0.48</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 879 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>879 บาท</td>\r\n			<td>1,800 GP</td>\r\n			<td>0.49</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1750 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,750 บาท</td>\r\n			<td>3,600 GP</td>\r\n			<td>0.49</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 2500 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>2,500 บาท</td>\r\n			<td>5,040 GP</td>\r\n			<td>0.50</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3500 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>3,500 บาท</td>\r\n			<td>7,200 GP</td>\r\n			<td>0.49</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>124 GP</td>\r\n			<td>0.40</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>248 GP</td>\r\n			<td>0.40</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>796 GP</td>\r\n			<td>0.37</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>1,377 GP</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>990 บาท</td>\r\n			<td>2,796 GP</td>\r\n			<td>0.35</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 3500 THB</strong></td>\r\n			<td>✔✔</td>\r\n			<td>3,460 บาท</td>\r\n			<td>12,762 GP</td>\r\n			<td>0.27</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีเติมเงินเข้ากระเป๋า Ragnarok Tactics</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ</div>\r\n\r\n<div>1. เลือก Google &gt; เลือก Server &gt; ป้อน ID ผู้เล่น &gt; เลือกจำนวนที่ต้องการเติม &gt; ติ๊กถูก ยอมรับเงื่อนไขการเติมเงิน &gt; กดปุ่ม Recharge Now\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Google &gt; Select Server &gt; Input your UID &gt; Select Package &gt; Check agree terms &gt; Click Recharge Now\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เติมเงินด้วยบัตร Razer Pin ของท่าน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/success-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/success-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. เมนู KafraClub มีแพ็คเกจรายเดือน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/9.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"in KafraClub menu, you can purchase Monthly package\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/ragnarok-tactics/9.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n</div>', 149, 1, 'https://imgur.com/lW9nNv3.jpg', '2022-03-01 08:26:01');
INSERT INTO `game_categorie` (`id`, `name`, `url_friendly`, `creator`, `content`, `counts`, `show_active`, `image`, `created`) VALUES
(11, 'Identity V', 'identity-v', 'By NetEase', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin\"><span style=\"color:#ff0000\">Razer Pin</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์ ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ Echoes ในเกมเพิ่มขึ้นสูงสุด 6%</p>\r\n\r\n<div class=\"alert alert-warning\">- Account ที่สมัครด้วย Game Center ของ Apple จะไม่สามารถเติมเงินด้วย Razer Gold Wallet</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน Identity V</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ Echoes<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 Echoes กี่บาท<br />\r\n			<small>ยิ่งน้อยยิ่งคุ้ม</small></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35 บาท</td>\r\n			<td>60 Echoes</td>\r\n			<td>0.58</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 99 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>99 บาท</td>\r\n			<td>189 Echoes</td>\r\n			<td>0.52</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 179 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>179 บาท</td>\r\n			<td>315 Echoes</td>\r\n			<td>0.57</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 349 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>349 บาท</td>\r\n			<td>713 Echoes</td>\r\n			<td>0.49</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1050 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,050 บาท</td>\r\n			<td>2,078 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1750 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>1,750 บาท</td>\r\n			<td>3,448 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3500 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>3,500 บาท</td>\r\n			<td>6,808 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>94 Echoes</td>\r\n			<td>0.53</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>194 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>298 บาท</td>\r\n			<td>582 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 500 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>495 บาท</td>\r\n			<td>971 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>990 บาท</td>\r\n			<td>1,942 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 USD</strong></td>\r\n			<td>✔✔</td>\r\n			<td>1,650 บาท</td>\r\n			<td>3,496 Echoes</td>\r\n			<td>0.47</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 USD</strong></td>\r\n			<td>✔✔</td>\r\n			<td>3,250 บาท</td>\r\n			<td>6,919 Echoes</td>\r\n			<td>0.47</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 200 SGD</strong></td>\r\n			<td>✔</td>\r\n			<td>4,850 บาท</td>\r\n			<td>9,586 Echoes</td>\r\n			<td>0.51</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 SGD</strong></td>\r\n			<td>✔</td>\r\n			<td>7,200 บาท</td>\r\n			<td>14,332 Echoes</td>\r\n			<td>0.50</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า Identity V</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"https://idvpay.com/?c=TH\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; เลือก ประเทศ ให้ตรงกับสกุลเงินของบัตร Razer Pin ที่ท่านต้องการเติมเงิน\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Link\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือก Server &gt; ป้อนเลข ID ของท่าน &gt; กดปุ่ม ยืนยันบัญชี\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Character ID\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. เลือกบ ัตรเติมเงิน Razer Gift Card\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/3.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/3.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>4. ติ๊กถูก ยอมรับข้อตกลง &gt; กดปุ่ม ถัดไป\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Package\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>5. เติมเงินด้วยบัตร Razer Pin ของท่าน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/success-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/identity-v/success-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n</div>\r\n</div>\r\n</div>', 506, 1, 'https://imgur.com/g1p9UAw.jpg', '2022-03-05 04:15:55'),
(12, 'Audition Mobile TH', 'audition-m', 'By INI3', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#ff0000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์ ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ Ruby ในเกมเพิ่มขึ้นสูงสุด 10%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน Audition Mobile TH</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ Ruby<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 Ruby กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>35 บาท</td>\r\n			<td>120 Ruby</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 99 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>99 บาท</td>\r\n			<td>340 Ruby</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 139 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>139 บาท</td>\r\n			<td>480 Ruby</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 319 บาท</strong></td>\r\n			<td>✘</td>\r\n			<td>319 บาท</td>\r\n			<td>1,100 Ruby</td>\r\n			<td>0.29</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 529 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>529 บาท</td>\r\n			<td>1,890 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 949 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>949 บาท</td>\r\n			<td>3,360 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1600 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,600 บาท</td>\r\n			<td>5,775 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3500 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>3,500 บาท</td>\r\n			<td>12,600 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>180 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>360 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>1,080 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>1,800 Ruby</td>\r\n			<td>0.28</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>✔✔</td>\r\n			<td>990 บาท</td>\r\n			<td>3,780 Ruby</td>\r\n			<td>0.26</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า Audition Mobile TH</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"https://aum.i3play.com/Ruby/\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; ทำการ Login\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Link\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือกบัตร Razer PIN\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Character ID\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. เติมเงินด้วยบัตร Razer Pin ของท่าน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/success-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/audition-m/success-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n</div>\r\n</div>\r\n</div>', 179, 1, 'https://imgur.com/ZLa4Mtj.jpg', '2022-02-26 12:16:19'),
(13, 'Monster Diary', 'monster-diary', 'By eyougame', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lucky-store.in.th/card-online/razer\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#ff0000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 2 :&nbsp;เติมเกมด้วยบัตร Razer Pin ได้รับ หยก ในเกมเพิ่มขึ้นสูงสุด 12%</p>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน Monster Diary</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ หยก<br />\r\n			<small>รวมโบนัสแล้ว</small></th>\r\n			<th>1 หยก กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 35 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>35 บาท</td>\r\n			<td>90 หยก</td>\r\n			<td>0.39</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 99 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>99 บาท</td>\r\n			<td>260 หยก</td>\r\n			<td>0.38</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 179 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>179 บาท</td>\r\n			<td>480 หยก</td>\r\n			<td>0.37</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 349 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>349 บาท</td>\r\n			<td>950 หยก</td>\r\n			<td>0.37</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 529 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>529 บาท</td>\r\n			<td>1,450 หยก</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1050 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,050 บาท</td>\r\n			<td>2,950 หยก</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1750 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,750 บาท</td>\r\n			<td>4,950 หยก</td>\r\n			<td>0.35</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3500 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>3,500 บาท</td>\r\n			<td>10,000 หยก</td>\r\n			<td>0.35</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 50 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>50 บาท</td>\r\n			<td>150 หยก</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 100 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>99 บาท</td>\r\n			<td>300 หยก</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 300 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>298 บาท</td>\r\n			<td>900 หยก</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>495 บาท</td>\r\n			<td>1,500 หยก</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 1000 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>990 บาท</td>\r\n			<td>3,000 หยก</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 3500 THB</strong></td>\r\n			<td>✔</td>\r\n			<td>3,460 บาท</td>\r\n			<td>11,000 หยก</td>\r\n			<td>0.31</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Pin 5000 THB</strong></td>\r\n			<td>✔✔</td>\r\n			<td>4,940 บาท</td>\r\n			<td>16,000 หยก</td>\r\n			<td>0.31</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีการเติมเงินเข้า Monster Diary</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"http://payth.eyougame.com/login/index\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; ทำการล็อกอิน\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Link\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือก เกม Monster Diary\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"select Game\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. เลือก ช่องทางชำระเงินด้วย Razer Gold THAILAND\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/3.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"select Razer Gold Thailand\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/3.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>4. เลือก เซิร์ฟเวอร์, เลือก ตัวละคร, กดปุ่ม ส่ง\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"select Server &gt; Character &gt; Confirm\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>5. เลือก Cash Card, เลือก Razer Gold PIN, เลือก จำนวนเงิน, กดปุ่ม เติมทันที\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/5.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"select Cash Card &gt; Razer Gold Pin &gt; Package &gt; Confirm\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/5.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>6. เติมเงินด้วยบัตร Razer Pin ของท่าน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/success-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/monster-diary/success-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n</div>\r\n</div>\r\n</div>', 236, 1, 'https://imgur.com/UUP9Sum.jpg', '2022-03-03 14:13:19'),
(14, 'Light of Thel', 'light-of-thel', 'By GTarcade', '<p>บัตรเติมเงินที่แนะนำ :&nbsp;<a href=\"https://www.lnwtrue.com/?razer-pin=thb\" rel=\"noreferrer noopener\" target=\"_blank\" title=\"ซื้อ Razer Pin THB\"><span style=\"color:#008000\">Razer Pin THB</span></a></p>\r\n\r\n<p>ความคุ้มค่าต่อที่ 1 :&nbsp;ซื้อบัตร Razer Pin ที่ ลัคกี้สโตร์&nbsp;ได้รับส่วนลดทันที 1%</p>\r\n\r\n<div class=\"alert alert-warning\">- Account ที่สมัครด้วย Game Center ของ Apple จะไม่สามารถเติมเงินด้วย Razer Gold Wallet</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">ตารางเปรียบเทียบการเติมเงิน Light of Thel</span></h3>\r\n\r\n<div class=\"table-responsive\">\r\n<table class=\"table text-center\">\r\n	<thead>\r\n		<tr>\r\n			<th>ช่องทางการเติมเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ความคุ้มค่า<br />\r\n			&nbsp;</th>\r\n			<th>จ่ายเงิน<br />\r\n			&nbsp;</th>\r\n			<th>ได้รับ Crystals<br />\r\n			<small>ไม่รวมโบนัสอื่นๆ</small></th>\r\n			<th>1 Crystals กี่บาท<br />\r\n			<span style=\"color:#ff0000\"><small>ยิ่งน้อยยิ่งคุ้ม</small></span></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>ในเกม 29 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>29 บาท</td>\r\n			<td>90 Crystals</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 149 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>149 บาท</td>\r\n			<td>450 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 299 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>299 บาท</td>\r\n			<td>900 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 599 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>599 บาท</td>\r\n			<td>1,800 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 1600 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,600 บาท</td>\r\n			<td>4,500 Crystals</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>ในเกม 3000 บาท</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>3,000 บาท</td>\r\n			<td>9,000 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 29 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>29 บาท</td>\r\n			<td>90 Crystals</td>\r\n			<td>0.32</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 149 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>149 บาท</td>\r\n			<td>450 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 299 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>299 บาท</td>\r\n			<td>900 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 599 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>599 บาท</td>\r\n			<td>1,800 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 1600 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>1,600 บาท</td>\r\n			<td>4,500 Crystals</td>\r\n			<td>0.36</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Razer Gold 3000 THB</strong></td>\r\n			<td>&nbsp;</td>\r\n			<td>3,000 บาท</td>\r\n			<td>9,000 Crystals</td>\r\n			<td>0.33</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n\r\n<div class=\"page-content\" id=\"howToReload\">\r\n<div class=\"alert alert-warning\">- โปรดแน่ใจว่าท่านมีบัตรเติมเกม Razer Pin THB แล้ว หากยังไม่มีโปรด สั่งซื้อ ก่อนนะคะ<br />\r\n- โปรดแน่ใจว่าท่านมีบัญชี Razer Gold Wallet แล้ว หากยังไม่มีโปรด<a href=\"https://razerid.razer.com/new\" rel=\"noopener noreferrer\" target=\"_blank\"> สมัคร Razer Gold Wallet </a>ก่อนนะคะ</div>\r\n\r\n<div>1. <a href=\"https://gold.razer.com/gold/catalog/light-of-thel\" rel=\"noopener noreferrer\" target=\"_blank\" title=\"เปิดหน้าเติมเงินเกม\"> เปิดหน้าเติมเงินเกม </a> &gt; กดปุ่ม เข้าสู่ระบบ ที่มุมขาวบน, ทำการ ล็อกอิน\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/1.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Character ID\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/1.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2. เลือก จำนวนที่ต้องการเติม\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>3. ป้อน User ID ตัวละคร\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/3.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Package\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/3.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>4. เลือก ชำระเงินด้วย Razer Gold Wallet\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Package\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>5. กดปุ่ม ดำเนินการชำระเงิน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/5.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Package\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/5.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>6. ทำการล็อกอินบัญชี Razer Gold (หากยังไม่มีโปรด <a href=\"https://razerid.razer.com/new\" rel=\"noopener noreferrer\" target=\"_blank\"> สมัคร Razer Gold Wallet </a>ก่อนนะคะ)\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/4.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Login\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/4.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div id=\"step5\">7. กรณียอดเงินใน Razer Gold Wallet ไม่เพียงพอ กดปุ่ม เติมเงินทันที (หากเพียงพอแล้วให้ ข้ามไปข้อ 10 )\r\n<div class=\"alert alert-info\">- ตัวอย่างเช่นยอดชำระ 644.8 บาท ลูกค้าอาจจะเติมด้วยบัตร Razer Pin THB ราคา 500+100+50 บาท เพื่อให้ยอดเพียงพอสำหรับชำระ<br />\r\n- กรณีเติมบัตรเกินยอดที่ชำระ เช่นเติมไป 650 บาทแต่ใช้เพียง 644.8 บาท ยอดเงินที่เหลือ 5.2 บาทจะคงเก็บไว้ใน Razer Gold สำหรับเติมครั้งต่อไป</div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/5.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Pay\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/5.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>8. เลือกบัตรเติมเงิน Razer Gold PIN\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/6.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Select Razer Gold PIN\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/6.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>9. กดปุ่ม ดำเนินการต่อ\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/7.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill Continue\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/7.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>10. กรอกรหัส OTP จากโทรศัพท์ของท่าน &gt; กดปุ่ม ต่อไป\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/8.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill OTP\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/8.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/pay5.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"SMS OTP\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/pay5.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>11. เติมเงินด้วยบัตร Razer Pin ของท่าน จากนั้นกดปุ่ม Close\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/reload-razer-pin.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/reload-razer-pin.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/success-razer-pin-2.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Razer Pin Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/success-razer-pin-2.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div id=\"step10\">12. เมื่อยอดเงินใน Razer Gold Wallet เพียงพอ กดปุ่ม ดำเนินการต่อ (หากยอดเงินยังไม่พอ กลับไปเริ่มที่ข้อ 5 เพื่อเติมบัตรใบต่อไป)\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/9.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Reload Confirm\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/9.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/wallet.png\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Success\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/wallet.png\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n</div>\r\n\r\n<h3 style=\"text-align:center\"><span style=\"color:#3333cc\">วิธีค้นหา ID ผู้ใช้</span></h3>\r\n\r\n<div class=\"page-content\" id=\"howToID\">\r\n<div>1.คลิกที่รูปอวาตาร์บริเวณมุมซ้ายบน\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/id-1.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill How To Profile\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/id-1.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n<hr /></div>\r\n</div>\r\n\r\n<div>2.จะพบเลข ID ในตำแหน่งในหน้าข้อมูลไอดี\r\n<div style=\"margin-bottom:20px; margin-left:0px; margin-right:0px; margin-top:10px; text-align:center\"><a href=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/id-2.jpg\" rel=\"noreferrer noopener\" target=\"_blank\"><img alt=\"Fill How To QR\" src=\"https://www.lucky-store.in.th/ckfinder/userfiles/images/light-of-thel/id-2.jpg\" style=\"max-width:80%\" /></a>\r\n\r\n</div>\r\n</div>\r\n</div>', 404, 1, 'https://imgur.com/IqiQzhc.jpg', '2022-03-03 09:39:40'),
(15, 'Ulala: Idle Adventure', 'ulala-idle-adventure', 'By X.D. Global', 'รอการอัพเดท . .', 152, 1, 'https://imgur.com/UfgHl1s.jpg', '2022-02-28 22:35:52'),
(16, 'SOL Fantasy', 'sol-fantasy', 'By VNG', 'รอการอัพเดท . .', 174, 1, 'https://imgur.com/R5GeAUs.jpg', '2022-03-02 17:57:08'),
(17, 'Crossing Void Global', 'crossing-void', 'By 91Act Limited', 'รอการอัพเดท . .', 171, 1, 'https://imgur.com/1qTIYa9.jpg', '2022-02-15 12:27:15'),
(18, 'Lumia Saga', 'lumia-saga', 'By Century Game', '<p>รอการอัพเดท . .</p>', 119, 1, 'https://imgur.com/lDr4Vrc.jpg', '2022-02-28 21:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `kbank_tb`
--

CREATE TABLE `kbank_tb` (
  `kb_id` int(11) NOT NULL,
  `kb_date` varchar(255) DEFAULT NULL,
  `kb_time` varchar(255) DEFAULT NULL,
  `kb_amount` double(11,2) NOT NULL DEFAULT 0.00,
  `kb_number` varchar(255) DEFAULT NULL,
  `kb_chanel` varchar(366) DEFAULT NULL,
  `kb_adddate` datetime DEFAULT NULL,
  `kb_userid` int(11) DEFAULT NULL,
  `kb_status_check` tinyint(1) NOT NULL DEFAULT 1,
  `kb_status` varchar(255) DEFAULT NULL COMMENT 'contact = ติดต่อ,wait = รอ,success = สำเร็จ,error = ไม่สำเร็จ	'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loggamepay_tb`
--

CREATE TABLE `loggamepay_tb` (
  `lgp_id` int(11) NOT NULL,
  `lgp_userid` int(11) DEFAULT NULL,
  `lgp_price` double(11,2) NOT NULL DEFAULT 0.00,
  `lgp_price_cost` double(11,2) NOT NULL DEFAULT 0.00,
  `lgp_uid` varchar(255) DEFAULT NULL,
  `lgp_product` varchar(255) DEFAULT NULL,
  `lgp_game` varchar(255) DEFAULT NULL,
  `lgp_status` int(11) NOT NULL DEFAULT 0,
  `lgp_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `username` varchar(255) NOT NULL,
  `order_product_id` int(11) DEFAULT NULL,
  `my_address` text DEFAULT NULL,
  `order_date` datetime NOT NULL COMMENT 'วันที่สั่งซื้อ',
  `total` decimal(8,2) NOT NULL DEFAULT 0.00 COMMENT 'ราคารวม',
  `user_id` int(11) NOT NULL COMMENT 'ผู้สั่งซื้อ',
  `type_price` tinyint(1) NOT NULL DEFAULT 0,
  `read_message` tinyint(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL COMMENT 'รหัสสั่งซื้อ',
  `product_id` int(11) NOT NULL COMMENT 'รหัสสินค้า',
  `product_info_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL COMMENT 'จำนวนสั่งซื้อ',
  `price` decimal(8,2) NOT NULL COMMENT 'ราคา',
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `name` varchar(100) NOT NULL DEFAULT 'Lorem Ipsum' COMMENT 'ชื่อสินค้า',
  `price` decimal(8,2) NOT NULL DEFAULT 0.00 COMMENT 'ราคาสินค้า',
  `vipprice` decimal(8,2) NOT NULL DEFAULT 0.00,
  `rewardprice` decimal(8,2) NOT NULL DEFAULT 0.00,
  `reward_point` decimal(8,2) DEFAULT 0.00,
  `brandname` text DEFAULT NULL COMMENT 'ยี่ห้อสินค้า',
  `image` varchar(255) DEFAULT 'https://placehold.it/600x600' COMMENT 'รูปภาพหลักสินค้า',
  `created` datetime DEFAULT NULL COMMENT 'วันที่สร้าง',
  `counts` int(11) NOT NULL DEFAULT 0,
  `stack` int(11) NOT NULL DEFAULT 0,
  `products_status` tinyint(4) NOT NULL DEFAULT 1,
  `product_categorie_id` int(11) NOT NULL COMMENT 'รหัสประเภทสินค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `vipprice`, `rewardprice`, `reward_point`, `brandname`, `image`, `created`, `counts`, `stack`, `products_status`, `product_categorie_id`) VALUES
(1, '30 Shells', '20.00', '20.00', '600.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 03:53:16', 547, 0, 1, 6),
(2, '75 Shells', '50.00', '50.00', '1500.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 04:45:00', 270, 0, 1, 6),
(3, '150 Shells', '100.00', '100.00', '3000.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 04:45:00', 119, 0, 1, 6),
(4, '225 Shells', '150.00', '150.00', '4500.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 04:45:00', 48, 0, 1, 6),
(5, '450 Shells', '300.00', '300.00', '9000.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 04:45:00', 81, 0, 1, 6),
(6, '750 Shells', '500.00', '480.00', '15000.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 04:45:00', 78, 0, 1, 6),
(7, '1500 Shells', '1000.00', '980.00', '30000.00', '0.00', 'เติมเกมในค่าย <a href=\"https://termgame.com/app\" target=\"_blank\">Garena</a> อาทิ RoV LoL HoN ได้รับเชลล์เพิ่ม 10%', 'https://i.imgur.com/W3vEimz.png', '2019-08-09 04:45:00', 129, 0, 1, 6),
(8, 'Razer Pin', '50.00', '50.00', '500.00', '0.00', '<a href=\"https://gold.razer.com/\" target=\"_blank\">บัตรเติมเกมต่างๆ</a> ROM, Pubg', 'https://i.imgur.com/PDqyNWG.png', '2019-08-10 04:12:19', 0, 0, 1, 7),
(9, 'Razer Pin', '100.00', '100.00', '1000.00', '0.00', '<a href=\"https://gold.razer.com/\" target=\"_blank\">บัตรเติมเกมต่างๆ</a> ROM, Pubg', 'https://i.imgur.com/PDqyNWG.png', '2019-08-10 04:12:19', 0, 0, 1, 7),
(10, 'Razer Pin', '300.00', '300.00', '3000.00', '0.00', '<a href=\"https://gold.razer.com/\" target=\"_blank\">บัตรเติมเกมต่างๆ</a> ROM, Pubg', 'https://i.imgur.com/PDqyNWG.png', '2019-08-10 04:12:19', 0, 0, 1, 7),
(11, 'Razer Pin', '500.00', '500.00', '5000.00', '0.00', '<a href=\"https://gold.razer.com/\" target=\"_blank\">บัตรเติมเกมต่างๆ</a> ROM, Pubg', 'https://i.imgur.com/PDqyNWG.png', '2019-08-10 04:12:19', 0, 0, 1, 7),
(12, 'Razer Pin', '1000.00', '1000.00', '10000.00', '0.00', '<a href=\"https://gold.razer.com/\" target=\"_blank\">บัตรเติมเกมต่างๆ</a> ROM, Pubg', 'https://i.imgur.com/PDqyNWG.png', '2019-08-10 04:12:19', 0, 0, 1, 7),
(13, 'Ex Cash', '49.00', '49.00', '1440.00', '0.00', 'เติมเกมในค่าย EXTREAM อาทิ RO(PC) Cabal', 'https://i.imgur.com/mF8oRKy.png', '2019-09-08 19:12:17', 2, 0, 1, 8),
(14, 'Ex Cash', '88.00', '88.00', '2600.00', '0.00', 'เติมเกมในค่าย EXTREAM อาทิ RO(PC) Cabal', 'https://i.imgur.com/DZ4neae.png', '2019-09-08 19:12:19', 0, 0, 1, 8),
(15, 'Ex Cash', '148.00', '148.00', '4400.00', '0.00', 'เติมเกมในค่าย EXTREAM อาทิ RO(PC) Cabal', 'https://i.imgur.com/3cHLO47.png', '2019-09-08 19:13:19', 0, 0, 1, 8),
(22, '50 บาท', '50.00', '48.00', '0.00', '0.00', 'เติมมือถือวันทูคอล เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/Ir3ueXf.png', '2020-03-09 01:26:55', 0, 0, 1, 18),
(23, '100 บาท', '100.00', '98.00', '0.00', '0.00', 'เติมมือถือวันทูคอล เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/ywE6uAc.png', '2020-03-09 01:27:56', 0, 0, 1, 18),
(24, '300 บาท', '300.00', '298.00', '0.00', '0.00', 'เติมมือถือวันทูคอล เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/GweoIBE.png', '2020-03-09 01:28:28', 0, 0, 1, 18),
(25, '500 บาท', '500.00', '498.00', '0.00', '0.00', 'เติมมือถือวันทูคอล เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/fk0Knhu.png', '2020-03-09 01:28:54', 0, 0, 1, 18),
(26, '55 บาท', '55.00', '53.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/FQv5iYr.png', '2020-03-09 01:31:00', 0, 0, 1, 17),
(27, '89 บาท', '89.00', '87.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/w5kj4Uz.png', '2020-03-09 01:31:31', 2, 0, 1, 17),
(28, '189 บาท', '189.00', '187.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/B8GHxq2.png', '2020-03-09 01:31:57', 0, 0, 1, 17),
(29, '245 บาท', '245.00', '243.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/G2ALo5u.png', '2020-03-09 01:32:33', 0, 0, 1, 17),
(30, '349 บาท', '349.00', '347.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/lzypSgj.png', '2020-03-09 01:33:02', 0, 0, 1, 17),
(31, '450 บาท', '450.00', '448.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/YWqFECv.png', '2020-03-09 01:33:42', 0, 0, 1, 17),
(32, '500 บาท', '500.00', '498.00', '0.00', '0.00', 'เติมเกมในค่าย Asiasoft อาทิ Yulgang DragonNest Audition', 'https://i.imgur.com/w6DJOT1.png', '2020-03-09 01:34:05', 0, 0, 1, 17),
(33, '1000 บาท', '1000.00', '998.00', '0.00', '0.00', 'เติมมือถือวันทูคอล เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/AKjsEGE.png', '2020-03-09 01:35:38', 0, 0, 1, 18),
(34, '50 บาท', '50.00', '48.00', '0.00', '0.00', 'เติมมือถือทรูมูฟ ทรูวอลเล็ท เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/4dCHeIz.png', '2020-03-09 01:49:31', 0, 0, 1, 9),
(35, '90 บาท', '90.00', '88.00', '0.00', '0.00', 'เติมมือถือทรูมูฟ ทรูวอลเล็ท เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/czotSKz.png', '2020-03-09 01:50:02', 0, 0, 1, 9),
(36, '150 บาท', '150.00', '148.00', '0.00', '0.00', 'เติมมือถือทรูมูฟ ทรูวอลเล็ท เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/7giLWqg.png', '2020-03-09 01:50:26', 0, 0, 1, 9),
(37, '300 บาท', '300.00', '298.00', '0.00', '0.00', 'เติมมือถือทรูมูฟ ทรูวอลเล็ท เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/6TsoQI8.png', '2020-03-09 01:50:52', 1, 0, 1, 9),
(38, '500 บาท', '500.00', '498.00', '0.00', '0.00', 'เติมมือถือทรูมูฟ ทรูวอลเล็ท เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/yTQ3gdw.png', '2020-03-09 01:51:12', 0, 0, 1, 9),
(39, '1000 บาท', '1000.00', '998.00', '0.00', '0.00', 'เติมมือถือทรูมูฟ ทรูวอลเล็ท เกม เว็บหรือแอปต่างๆ', 'https://i.imgur.com/YsfNw2A.png', '2020-03-09 01:51:32', 1, 0, 1, 9),
(41, '60 บาท', '60.00', '58.00', '0.00', '0.00', 'บัตรเติมเงิน', 'https://i.imgur.com/G3IhlSf.png', '2020-03-12 19:25:28', 0, 0, 1, 20),
(42, '100 บาท', '100.00', '98.00', '0.00', '0.00', 'บัตรเติมเงิน', 'https://i.imgur.com/ufZ3Ls0.png', '2020-03-12 19:26:03', 0, 0, 1, 20),
(43, '300 บาท', '300.00', '398.00', '0.00', '0.00', 'บัตรเติมเงิน', 'https://i.imgur.com/E2nDsYq.png', '2020-03-12 19:26:22', 0, 0, 1, 20),
(44, '500 บาท', '500.00', '498.00', '0.00', '0.00', 'บัตรเติมเงิน', 'https://i.imgur.com/IE8bDu2.png', '2020-03-12 19:26:47', 0, 0, 1, 20),
(45, '100 บาท', '100.00', '98.00', '0.00', '0.00', 'สามารถใช้ซื้อสติ๊กเกอร์ ธีม เติมเงินเกม รับส่วนลดพิเศษ 1% - เติมแอพพลิเคชั่น LINE', 'https://i.imgur.com/qdyuYgS.png', '2020-03-12 19:28:18', 0, 0, 1, 21),
(46, '300 บาท', '300.00', '298.00', '0.00', '0.00', 'สามารถใช้ซื้อสติ๊กเกอร์ ธีม เติมเงินเกม รับส่วนลดพิเศษ 1% - เติมแอพพลิเคชั่น LINE', 'https://i.imgur.com/uPcF5R2.png', '2020-03-12 19:28:44', 0, 0, 1, 21),
(47, '500 บาท', '500.00', '498.00', '0.00', '0.00', 'สามารถใช้ซื้อสติ๊กเกอร์ ธีม เติมเงินเกม รับส่วนลดพิเศษ 1% - เติมแอพพลิเคชั่น LINE', 'https://i.imgur.com/TJIgD0o.png', '2020-03-12 19:29:02', 0, 0, 1, 21),
(48, '75 บาท', '75.00', '73.00', '0.00', '0.00', 'ราคาพิเศษ เฉพาะที่เราเท่านั้น - เติมเงินในแพลตฟอร์ม STEAM สำหรับซื้อเกมหรือไอเทม', 'https://i.imgur.com/7ERK63j.png', '2020-03-12 19:31:32', 0, 0, 1, 22),
(49, '250 บาท', '250.00', '248.00', '0.00', '0.00', 'ราคาพิเศษ เฉพาะที่เราเท่านั้น - เติมเงินในแพลตฟอร์ม STEAM สำหรับซื้อเกมหรือไอเทม', 'https://i.imgur.com/7bxs2jX.png', '2020-03-12 19:31:57', 0, 0, 1, 22),
(50, '750 บาท', '750.00', '748.00', '0.00', '0.00', 'ราคาพิเศษ เฉพาะที่เราเท่านั้น - เติมเงินในแพลตฟอร์ม STEAM สำหรับซื้อเกมหรือไอเทม', 'https://i.imgur.com/PteVNwS.png', '2020-03-12 19:32:21', 0, 0, 1, 22),
(51, '1500 บาท', '1500.00', '1498.00', '0.00', '0.00', 'ราคาพิเศษ เฉพาะที่เราเท่านั้น - เติมเงินในแพลตฟอร์ม STEAM สำหรับซื้อเกมหรือไอเทม', 'https://i.imgur.com/EKs9Igg.png', '2020-03-12 19:32:43', 0, 0, 1, 22),
(52, '50 บาท', '50.00', '48.00', '0.00', '0.00', 'สามารถเติมเกมออนไลน์ในเครือ Cubizone', 'https://i.imgur.com/YImcDU2.png', '2020-03-12 19:34:58', 0, 0, 1, 23),
(53, '200 บาท', '200.00', '198.00', '0.00', '0.00', 'สามารถเติมเกมออนไลน์ในเครือ Cubizone คลิ๊กที่นี่ เพื่อตรวจสอบรายชื่อเกม', 'https://i.imgur.com/all3YRp.png', '2020-03-12 19:35:27', 0, 0, 1, 23),
(54, '500 บาท', '500.00', '498.00', '0.00', '0.00', 'สามารถเติมเกมออนไลน์ในเครือ Cubizone คลิ๊กที่นี่ เพื่อตรวจสอบรายชื่อเกม', 'https://i.imgur.com/HYeHP7D.png', '2020-03-12 19:35:43', 0, 0, 1, 23),
(55, '1000 บาท', '1000.00', '998.00', '0.00', '0.00', 'สามารถเติมเกมออนไลน์ในเครือ Cubizone คลิ๊กที่นี่ เพื่อตรวจสอบรายชื่อเกม', 'https://i.imgur.com/XrSLXs8.png', '2020-03-12 19:36:01', 0, 0, 1, 23),
(56, '20 บาท', '20.00', '18.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/OXstW72.png', '2020-03-12 19:37:43', 0, 0, 1, 24),
(57, '49 บาท', '49.00', '47.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/5an40C1.png', '2020-03-12 19:38:11', 0, 0, 1, 24),
(58, '149 บาท', '149.00', '147.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/Bj7TDiX.png', '2020-03-12 19:38:41', 0, 0, 1, 24),
(59, '299 บาท', '299.00', '297.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/SMeEJ6x.png', '2020-03-12 19:39:21', 0, 0, 1, 24),
(60, '399 บาท', '399.00', '397.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/MrVBt6i.png', '2020-03-12 19:39:44', 0, 0, 1, 24),
(61, '555', '555.00', '553.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/xOOE8EI.png', '2020-03-12 19:40:10', 0, 0, 1, 24),
(62, '999 บาท', '999.00', '997.00', '0.00', '0.00', 'เติมเกมค่าย Ini3 สามารถเข้าดูเกมของค่ายทั้งหมด', 'https://i.imgur.com/AErvbGd.png', '2020-03-12 19:40:50', 2, 0, 1, 24),
(63, '195 บาท', '195.00', '193.00', '0.00', '0.00', 'ราคาพิเศษ เฉพาะที่เราเท่านั้น - เติมกับเว็บไซต์ Battle.net อาทิ OverWatch, World of Warcraft', 'https://i.imgur.com/7NVJo6J.png', '2020-03-12 19:44:41', 0, 0, 1, 25);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL COMMENT 'รหัส',
  `name` varchar(50) DEFAULT NULL COMMENT 'รหัสประเภทสินค้า',
  `codename` varchar(100) NOT NULL COMMENT 'ประเภทสินค้า',
  `type_product` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT 'https://placehold.it/350x200',
  `show_active` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL COMMENT 'วันที่สร้าง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `codename`, `type_product`, `image`, `show_active`, `created`) VALUES
(1, 'REALM OF VALOR', 'rov', 1, 'https://i.imgur.com/RvIOPIK.jpg', 1, '2018-11-28 17:18:06'),
(2, 'FREE FIRE', 'freefire', 1, 'https://i.imgur.com/aDt4jO0.jpg', 1, '2018-11-28 17:18:06'),
(3, 'SPEED DRIFTERS', 'speeddrifters', 1, 'https://i.imgur.com/uE02h0u.jpg', 1, '2018-11-28 17:18:06'),
(4, 'POINT BLANK', 'pb', 1, 'https://i.imgur.com/fNt9Y7t.jpg', 1, '2018-11-28 17:18:06'),
(5, 'ITEM CODE', 'itemcode', 2, 'https://placehold.it/220x250', 0, '2018-11-28 17:18:06'),
(6, 'GARENA CARD', 'garena', 3, 'https://i.imgur.com/hSL0UCT.jpg', 1, '2018-11-28 17:18:06'),
(7, 'RAZER PIN', 'razer', 3, 'https://i.imgur.com/Lo45ivN.jpg', 1, '2018-11-28 17:18:06'),
(8, 'EX CASH', 'excash', 3, 'https://i.imgur.com/q8D2vtS.jpg', 1, '2018-11-28 17:18:06'),
(9, 'TRUE MONEY', 'truemoney', 3, 'https://i.imgur.com/G3MFjzW.jpg', 1, '2018-11-28 17:18:06'),
(15, 'STEAM', 'steam', 1, 'https://i.imgur.com/y2TP5sY.jpg', 1, '2019-08-08 18:06:05'),
(16, 'FIFA ONLINE 4', 'fifa4', 1, 'https://i.imgur.com/GVldgRo.jpg', 1, '2019-08-08 18:08:55'),
(17, '@CASH', '@CASH', 3, 'https://i.imgur.com/bsrDiEl.jpg', 0, '2020-03-09 01:17:43'),
(18, 'AIS', 'AIS', 3, 'https://i.imgur.com/fqDJPTD.jpg', 1, '2020-03-09 01:19:31'),
(19, 'HON', 'hero of newerth', 1, 'https://i.imgur.com/wjxJpSG.png', 0, '2020-03-09 02:25:28'),
(20, 'DTAC', 'DTAC', 3, 'https://i.imgur.com/8v0SARg.jpg', 0, '2020-03-12 19:22:10'),
(21, 'LINE PREPAID', 'LINE PREPAID', 3, 'https://i.imgur.com/VxepkCY.jpg', 0, '2020-03-12 19:22:27'),
(22, 'STEAM CARD', 'STEAM CARD', 3, 'https://i.imgur.com/8fTPcKm.jpg', 1, '2020-03-12 19:22:43'),
(23, 'CUBI CARD', 'CUBI CARD', 3, 'https://i.imgur.com/FwPr3ZT.jpg', 0, '2020-03-12 19:22:59'),
(24, 'Ini3 Cookie Card', 'Ini3 Cookie Card', 3, 'https://i.imgur.com/pj3wiGe.jpg', 0, '2020-03-12 19:23:11'),
(25, 'Battle net', 'Battle net', 3, 'https://i.imgur.com/z74nNO8.jpg', 0, '2020-03-12 19:23:34'),
(26, 'กด', 'กด', 1, 'https://placehold.it/350x200', 1, '2021-07-15 06:25:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 1,
  `info` varchar(255) NOT NULL,
  `product_cat` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roller_chance`
--

CREATE TABLE `roller_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roller_chance`
--

INSERT INTO `roller_chance` (`id`, `rw_type`, `name`, `chance`) VALUES
(1, 'stock|1', 'True Money 50 Bath', 0),
(2, 'stock|2', 'True Money 90 Bath', 0),
(3, 'stock|3', 'True Money 150 Bath', 0),
(4, 'stock|4', 'True Money 300 Bath', 0),
(8, 'stock|5', 'True Money 500 Bath', 0),
(9, 'stock|6', 'True Money 1,000 Bath', 0),
(10, 'stock|7', 'Garena 30 Shells', 3),
(11, 'stock|8', 'Garena 75 Shells', 3),
(12, 'stock|9', 'Garena 150 Shells', 0),
(13, 'stock|10', 'Garena 450 Shells', 1),
(14, 'stock|11', 'Garena 750 Shells', 1),
(15, 'stock|12', 'Garena 1500 Shells', 1),
(16, 'none', 'ไม่ได้รางวัล', 40),
(17, 'credit|1|5', '1 - 5 เครดิต', 47),
(18, 'credit|5|50', '5 - 50 เครดิต', 6);

-- --------------------------------------------------------

--
-- Table structure for table `roller_st_chance`
--

CREATE TABLE `roller_st_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roller_st_chance`
--

INSERT INTO `roller_st_chance` (`id`, `rw_type`, `name`, `chance`) VALUES
(1, 'stock|1', 'True Money 50 Bath', 0),
(2, 'stock|2', 'True Money 90 Bath', 0),
(3, 'stock|3', 'True Money 150 Bath', 0),
(4, 'stock|4', 'True Money 300 Bath', 0),
(8, 'stock|5', 'True Money 500 Bath', 0),
(9, 'stock|6', 'True Money 1,000 Bath', 0),
(10, 'stock|7', 'Garena 30 Shells', 0),
(11, 'stock|8', 'Garena 75 Shells', 0),
(12, 'stock|9', 'Garena 150 Shells', 0),
(13, 'stock|10', 'Garena 450 Shells', 0),
(14, 'stock|11', 'Garena 750 Shells', 30),
(15, 'stock|12', 'Garena 1,500 Shells', 50),
(16, 'none', 'ไม่ได้รางวัล', 20),
(17, 'credit|1|5', '1 - 5 เครดิต', 0),
(18, 'credit|5|50', '5 - 50 เครดิต', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rov_chance`
--

CREATE TABLE `rov_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `chance` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rov_chance`
--

INSERT INTO `rov_chance` (`id`, `rw_type`, `name`, `chance`) VALUES
(1, 'none1', 'ไม่ได้รับรางวัล [1]', 37),
(2, 'credit|1|5', 'เครดิต 1-5 เครดิต', 13),
(3, 'credit|5|50', 'เครดิต 5-50 เครดิต', 2),
(4, 'stock|1', 'True Money 50 Bath', 5),
(5, 'stock|2', 'True Money 90 Bath', 3),
(6, 'stock|3', 'True Money 150 Bath', 1),
(7, 'stock|4', 'True Money 300 Bath', 1),
(8, 'stock|5', 'True Money 500 Bath', 1),
(9, 'stock|6', 'True Money 1,000 Bath', 1),
(10, 'none2', 'ไม่ได้รับรางวัล [2]', 0),
(11, 'none3', 'ไม่ได้รับรางวัล [3]', 38);

-- --------------------------------------------------------

--
-- Table structure for table `rov_history`
--

CREATE TABLE `rov_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL DEFAULT '0',
  `item_detail` text NOT NULL,
  `item_type` tinyint(1) NOT NULL DEFAULT 1,
  `item_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_version` tinyint(1) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rov_rewards`
--

CREATE TABLE `rov_rewards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rov_rewards`
--

INSERT INTO `rov_rewards` (`id`, `name`) VALUES
(1, 'True Money 50 Bath'),
(2, 'True Money 90 Bath'),
(3, 'True Money 150 Bath'),
(4, 'True Money 300 Bath'),
(5, 'True Money 500 Bath'),
(6, 'True Money 1,000 Bath'),
(7, 'Garena 30 Shells'),
(8, 'Garena 75 Shells'),
(9, 'Garena 150 Shells'),
(10, 'Garena 450 Shells'),
(11, 'Garena 750 Shells'),
(12, 'Garena 1,500 Shells');

-- --------------------------------------------------------

--
-- Table structure for table `rov_setting`
--

CREATE TABLE `rov_setting` (
  `id` int(11) NOT NULL,
  `open_close` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rov_setting`
--

INSERT INTO `rov_setting` (`id`, `open_close`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rov_stock`
--

CREATE TABLE `rov_stock` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `contents` text NOT NULL,
  `stock_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rov_st_chance`
--

CREATE TABLE `rov_st_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) NOT NULL,
  `chance` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rov_st_chance`
--

INSERT INTO `rov_st_chance` (`id`, `rw_type`, `chance`) VALUES
(1, 'none1', 10),
(2, 'credit|1|5', 5),
(3, 'credit|5|50', 0),
(4, 'stock|1', 15),
(5, 'stock|2', 30),
(6, 'stock|3', 30),
(7, 'stock|4', 0),
(8, 'none2', 0),
(9, 'none3', 10);

-- --------------------------------------------------------

--
-- Table structure for table `rov_st_history`
--

CREATE TABLE `rov_st_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL DEFAULT '0',
  `item_detail` text NOT NULL,
  `item_type` tinyint(1) NOT NULL DEFAULT 1,
  `item_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_version` tinyint(1) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rov_st_stock`
--

CREATE TABLE `rov_st_stock` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `contents` text NOT NULL,
  `stock_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `popup_show` int(1) NOT NULL,
  `title_homepage` text NOT NULL,
  `facebook_page` text NOT NULL,
  `facebookpage_id` text NOT NULL,
  `facebookapp_id` text NOT NULL,
  `facebookapp_secret` text NOT NULL,
  `line_id` varchar(100) NOT NULL,
  `line_link` text NOT NULL,
  `youtube_ch` text NOT NULL,
  `phone_wallet` varchar(50) NOT NULL,
  `name_wallet` varchar(100) DEFAULT NULL,
  `phone_pp` varchar(50) DEFAULT NULL,
  `name_pp` varchar(100) DEFAULT NULL,
  `phone_contact` varchar(20) NOT NULL,
  `live_chat` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_keys` mediumtext NOT NULL,
  `google_analytics` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'https://placehold.it/960x502',
  `image_menu_1` varchar(255) DEFAULT 'https://placehold.it/350x200',
  `image_menu_2` varchar(255) DEFAULT 'https://placehold.it/350x200',
  `image_menu_3` varchar(255) DEFAULT 'https://placehold.it/350x200',
  `image_menu_4` varchar(255) DEFAULT 'https://placehold.it/1280x250',
  `url_menu_1` text NOT NULL,
  `url_menu_2` text NOT NULL,
  `url_menu_3` text NOT NULL,
  `url_menu_4` text NOT NULL,
  `image_menu_lucky_1` varchar(255) DEFAULT 'https://placehold.it/565x215',
  `image_menu_lucky_2` varchar(255) DEFAULT 'https://placehold.it/565x215',
  `image_menu_lucky_3` varchar(255) NOT NULL DEFAULT 'https://placehold.it/565x215',
  `author` text NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `popup_show`, `title_homepage`, `facebook_page`, `facebookpage_id`, `facebookapp_id`, `facebookapp_secret`, `line_id`, `line_link`, `youtube_ch`, `phone_wallet`, `name_wallet`, `phone_pp`, `name_pp`, `phone_contact`, `live_chat`, `description`, `meta_keys`, `google_analytics`, `image`, `image_menu_1`, `image_menu_2`, `image_menu_3`, `image_menu_4`, `url_menu_1`, `url_menu_2`, `url_menu_3`, `url_menu_4`, `image_menu_lucky_1`, `image_menu_lucky_2`, `image_menu_lucky_3`, `author`, `created`) VALUES
(1, 0, '24-Store', 'https://www.facebook.com/24Storegaming/', '104774534550303', '177416110995988', '87664b401563e5a6c65e14df309afbf5', '@24-store', 'http://line.me/ti/p/~@24store', 'https://www.youtube.com', '090-903-5610', 'สิริพร มั่งมูล', '071-1-11139-5', '24-สโตร์', '090-903-5610', '<!-- Getbutton.io widget -->\r\n<!-- /Getbutton.io widget -->', 'ซื้อ - ขายไอดีเกมออนไลน์ บัตรเติมเกม ไอเทมโค้ตเกมรวมไปถึง ระบบสุ่มรางวัล มากมาย', 'ขายไอดีเกม, เว็บสุ่มบัตรการีน่า, สุ่มรางวัล, รับซื้อไอดีเกม, ขายไอดีเกมออนไลน์, ขายบัตรเติมเงินเกม, ไอดีเกมราคาถูก, รับซื้อไอดีเกม ขายไอดีเกม PUBG, รับซื้อไอดีเกม SPEED Diffters, รับซื้อไอดีเกม Free fire, รับซื้อไอดีเกม Point Blank, รับซื้อไอดีเกม FIFA Online, ขายไอดีเกม PUBG, ขายไอดีเกม SPEED Diffters, ขายไอดีเกม Free fire, ขายไอดีเกม Point Blank, ขายไอดีเกม FIFA Online', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-GTCE6F0NSL\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-GTCE6F0NSL\');\r\n</script>', 'https://placehold.it/960x502', 'https://imgur.com/U3m66wt.png', 'https://imgur.com/HjGh1eY.png', 'https://imgur.com/3pqyOdX.png', 'https://imgur.com/vLr4zio.png', 'https://www.freestore.in.th/card-online', 'https://www.freestore.in.th/luckysrandom', 'https://www.freestore.in.th/itemcode', 'https://www.freestore.in.th/product', 'https://imgur.com/Gskzn5y.png', 'https://imgur.com/L8ytNWU.jpg', 'https://imgur.com/nY7LM9x.png', 'https://www.jane-studio.com/', '2022-03-05 07:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brandname` text NOT NULL,
  `slide_button` varchar(100) NOT NULL,
  `slide_url` varchar(200) NOT NULL DEFAULT 'https://www.gamepay.in.th',
  `image` varchar(100) NOT NULL DEFAULT 'https://placehold.it/1920x500',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `name`, `brandname`, `slide_button`, `slide_url`, `image`, `created`) VALUES
(4, 'ระบบสุ่มรางวัลใหม่', 'สุ่มรางวัลเริ่มต้นเพียง 10 เครดิต มีให้เลือกหลากหลายเกม . .', 'เริ่มเล่นเลย', '/luckysrandom', 'https://i.imgur.com/yX8GRnj.png', '2020-06-29 02:20:35');

-- --------------------------------------------------------

--
-- Table structure for table `spinff_chance`
--

CREATE TABLE `spinff_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) DEFAULT NULL,
  `rw_item` int(11) NOT NULL,
  `chance` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spinff_chance`
--

INSERT INTO `spinff_chance` (`id`, `rw_type`, `rw_item`, `chance`) VALUES
(1, 'none', 8, 40),
(2, 'credit|1|50', 6, 45),
(3, 'credit|50|100', 7, 3),
(4, 'stock|1', 1, 6),
(5, 'stock|2', 2, 3),
(6, 'stock|3', 3, 0),
(7, 'stock|4', 4, 0),
(8, 'stock|5', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spinff_history`
--

CREATE TABLE `spinff_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `item_name` varchar(255) DEFAULT NULL,
  `item_detail` text DEFAULT NULL,
  `item_type` int(11) DEFAULT 0 COMMENT '0 ไม่ได้รางวัล,1 เครดิต , 2 FreeFire',
  `item_cost` double(11,2) NOT NULL DEFAULT 0.00,
  `item_amount` double(11,2) NOT NULL DEFAULT 0.00,
  `game` varchar(255) NOT NULL DEFAULT 'spin',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spinff_rewards`
--

CREATE TABLE `spinff_rewards` (
  `id` int(11) NOT NULL,
  `lucky_id` varchar(25) NOT NULL,
  `color_item` varchar(25) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text_item` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `image_item` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spinff_rewards`
--

INSERT INTO `spinff_rewards` (`id`, `lucky_id`, `color_item`, `name`, `text_item`, `image`, `image_item`) VALUES
(1, '1', '#e65759', 'Diamond × 68 เพชร', 'คุณได้รับ Diamond × 68 เพชร', 'https://imgur.com/1JsTBla.png', 'https://imgur.com/6b4PlI2.png'),
(2, '2', '#e65759', 'Diamond × 172 เพชร', 'คุณได้รับ Diamond × 172 เพชร', 'https://imgur.com/nXlLrHm.png', 'https://imgur.com/E4IgC3K.png'),
(3, '3', '#504A4B', 'หมวก F', 'คุณได้รับ ID หมวก F แคปรูปภาพแล้วติดต่อทางเพจได้เลยครับ', 'https://imgur.com/BKcWkLA.png', 'https://i.imgur.com/sNldzmp.png'),
(4, '4', '#504A4B', 'ท้าปกธงฟรีฟาย', 'รบกวนลูกค้าแคปของรางวัลที่ได้แล้วไปแจ้งที่หน้าเพจได้เลยครับ', 'https://imgur.com/h1DxwuM.png', 'https://i.imgur.com/lUCxpzb.png'),
(5, '5', '#504A4B', 'Diamond × 3,697 เพชร', 'คุณได้รับ Diamond × 3,697 เพชร', 'https://imgur.com/UBqluDF.png', 'https://imgur.com/3sJuTfT.png'),
(6, 'credit_1_50', '#e65759', '1-50 เครดิต', 'คุณได้รับ 1-50 เครดิต', NULL, 'https://imgur.com/DC9kG4X.png'),
(7, 'credit_50_100', '#e65759', '50-100 เครดิต', 'คุณได้รับ 50-100 เครดิต', NULL, 'https://imgur.com/RHaqazk.png'),
(8, '8', '#e65759', 'ไม่ได้รับรางวัล', 'คุณไม่ได้รับรางวัล', NULL, 'https://imgur.com/R9GANCd.png'),
(9, '9', '#e65759', 'ไม่ได้รับรางวัล', 'คุณไม่ได้รับรางวัล', NULL, 'https://imgur.com/R9GANCd.png');

-- --------------------------------------------------------

--
-- Table structure for table `spinff_stock`
--

CREATE TABLE `spinff_stock` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL COMMENT 'ใส่แค่เลขบัตรการีน่า',
  `stock_cost` double(11,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spinff_st_chance`
--

CREATE TABLE `spinff_st_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) DEFAULT NULL,
  `chance` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spinff_st_chance`
--

INSERT INTO `spinff_st_chance` (`id`, `rw_type`, `chance`) VALUES
(1, 'none', 0),
(2, 'credit|1|50', 0),
(3, 'credit|50|100', 0),
(4, 'stock|1', 10),
(5, 'stock|2', 20),
(6, 'stock|3', 20),
(7, 'stock|4', 40),
(8, 'stock|5', 40);

-- --------------------------------------------------------

--
-- Table structure for table `spinff_st_history`
--

CREATE TABLE `spinff_st_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `item_name` varchar(255) DEFAULT NULL,
  `item_detail` text DEFAULT NULL,
  `item_type` int(11) DEFAULT 0 COMMENT '0 ไม่ได้รางวัล,1 เครดิต , 2 FreeFire',
  `item_cost` double(11,2) NOT NULL DEFAULT 0.00,
  `item_amount` double(11,2) NOT NULL DEFAULT 0.00,
  `game` varchar(255) NOT NULL DEFAULT 'spin',
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spinff_st_stock`
--

CREATE TABLE `spinff_st_stock` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL COMMENT 'ใส่แค่เลขบัตรการีน่า',
  `stock_cost` double(11,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spin_chance`
--

CREATE TABLE `spin_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) NOT NULL,
  `rw_item` tinyint(2) NOT NULL,
  `chance` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spin_chance`
--

INSERT INTO `spin_chance` (`id`, `rw_type`, `rw_item`, `chance`) VALUES
(1, 'none', 5, 50),
(2, 'stock|1', 1, 2),
(3, 'stock|2', 2, 0),
(4, 'stock|3', 3, 0),
(5, 'stock|4', 4, 0),
(6, 'credit|10', 10, 36),
(7, 'credit|25', 25, 5);

-- --------------------------------------------------------

--
-- Table structure for table `spin_history`
--

CREATE TABLE `spin_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` tinyint(1) NOT NULL DEFAULT 0,
  `item_name` varchar(255) NOT NULL,
  `item_detail` text NOT NULL,
  `item_type` tinyint(1) NOT NULL DEFAULT 1,
  `item_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_version` tinyint(1) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `spin_rewards`
--

CREATE TABLE `spin_rewards` (
  `id` int(11) NOT NULL,
  `color_item` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text_item` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_item` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spin_rewards`
--

INSERT INTO `spin_rewards` (`id`, `color_item`, `name`, `text_item`, `image`, `image_item`) VALUES
(1, '#e65759', 'การีน่า 30 Shells', 'คุณได้รับบัตร Garena 30 Shells', 'https://imgur.com/3HhSKRo.png', 'https://i.imgur.com/HMPFdXR.png'),
(2, '#D4AF37', 'ท้าปกธงฟรีฟาย', 'รบกวนลูกค้าแคปของรางวัลที่ได้แล้วไปแจ้งที่หน้าเพจได้เลยครับ', 'https://imgur.com/3HhSKRo.png', 'https://i.imgur.com/W7bPUwx.png'),
(3, '#504A4B', 'หมวก F', 'คุณได้รับ ID หมวก F แคปรูปภาพแล้วติดต่อทางเพจได้เลยครับ', 'https://imgur.com/3HhSKRo.png', 'https://i.imgur.com/jmOuzXr.png'),
(4, '#504A4B', 'การีน่า 1500 Shells', 'คุณได้รับบัตร Garena 1500 Shells', 'https://imgur.com/3HhSKRo.png', 'https://i.imgur.com/ANKjGxK.png'),
(5, '#e65759', 'ไม่ได้รับรางวัล', 'คุณไม่ได้รับรางวัล', '', 'https://i.imgur.com/FLBY2X3.png'),
(6, '#e65759', 'ไม่ได้รับรางวัล', 'คุณไม่ได้รับรางวัล', '', 'https://imgur.com/p5LJat9.png'),
(10, '#e65759', '10 เครดิต', 'คุณได้รับ 10 เครดิต', '', 'https://imgur.com/se97F9i.png'),
(25, '#e65759', '25 เครดิต', 'คุณได้รับ 25 เครดิต', '', 'https://imgur.com/GMnoDbA.png');

-- --------------------------------------------------------

--
-- Table structure for table `spin_setting`
--

CREATE TABLE `spin_setting` (
  `id` int(11) NOT NULL,
  `open_close` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `spin_setting`
--

INSERT INTO `spin_setting` (`id`, `open_close`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `spin_stock`
--

CREATE TABLE `spin_stock` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `contents` text NOT NULL,
  `stock_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `owner_id` int(11) NOT NULL DEFAULT 0,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `truemoney`
--

CREATE TABLE `truemoney` (
  `card_id` int(6) UNSIGNED NOT NULL,
  `password` varchar(14) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `amount` int(4) UNSIGNED NOT NULL,
  `make_amount` int(4) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL,
  `added_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `truewallet`
--

CREATE TABLE `truewallet` (
  `card_id` int(6) UNSIGNED NOT NULL,
  `report_id` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `number_phone` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT 0,
  `amount` double(11,2) NOT NULL DEFAULT 0.00,
  `type` enum('creditor') DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'wait' COMMENT 'wait = รอ,success = สำเร็จ,error = ไม่สำเร็จ',
  `wallet_time` datetime NOT NULL,
  `added_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `truewallet`
--

INSERT INTO `truewallet` (`card_id`, `report_id`, `password`, `number_phone`, `name`, `user_id`, `amount`, `type`, `status`, `wallet_time`, `added_time`) VALUES
(1, 'umk3029761225', '50012291861268', '0834500243', 'ธนโชค ปวงสุก', 0, 10.00, NULL, 'wait', '2022-03-05 19:40:00', '2022-03-05 19:42:09'),
(2, 'umk3029690577', '50012291570191', '0927849191', 'อธิปัตย์ โตนุ่ม', 0, 30.00, NULL, 'wait', '2022-03-05 19:24:00', '2022-03-05 19:42:09'),
(3, 'umk3029061860', '50012288736944', '0983928010', 'ฐิติโชติ พันธ์มาศ', 0, 2.01, NULL, 'wait', '2022-03-05 16:31:00', '2022-03-05 19:42:10'),
(4, 'umk3028550095', '50012286412041', '0614278946', 'วัชรพล ลีสว่างวงศ์', 0, 40.00, NULL, 'wait', '2022-03-05 13:43:00', '2022-03-05 19:42:10'),
(5, 'umk3028425162', '50012285820188', '0635734463', 'กิตติพงษ์ หมั่นหา', 0, 20.00, NULL, 'wait', '2022-03-05 13:02:00', '2022-03-05 19:42:10'),
(6, 'umk3028412987', '50012285762703', '0635734463', 'กิตติพงษ์ หมั่นหา', 0, 50.00, NULL, 'wait', '2022-03-05 12:58:00', '2022-03-05 19:42:11'),
(7, 'umk3028253925', '50012284992104', '0633752068', 'พงศธร ปานเขียน', 0, 50.00, NULL, 'wait', '2022-03-05 12:08:00', '2022-03-05 19:42:11'),
(8, 'umk3028063623', '50012284031765', '0634428253', 'อันธิกา ป้อมเรือง', 0, 60.00, NULL, 'wait', '2022-03-05 11:01:00', '2022-03-05 19:42:11'),
(9, 'umk3027720201', '50012282130766', '0910452443', 'ณัฐพล อุ่นน้ำใจ', 0, 90.00, NULL, 'wait', '2022-03-05 08:30:00', '2022-03-05 19:42:12'),
(10, 'umk3027707790', '50012282055736', '0959166946', 'กรวิชญ์ อินจัด', 0, 20.00, NULL, 'wait', '2022-03-05 08:23:00', '2022-03-05 19:42:12'),
(11, 'umk3027704884', '50012282038345', '0610454835', 'กฤษดา สร้อยสูงเนิน', 0, 160.00, NULL, 'wait', '2022-03-05 08:22:00', '2022-03-05 19:42:13'),
(12, 'umk3027693143', '50012281966909', '0959166946', 'กรวิชญ์ อินจัด', 0, 10.00, NULL, 'wait', '2022-03-05 08:15:00', '2022-03-05 19:42:13'),
(13, 'umk3027355085', '50012280356142', '0841579936', 'ชากีรีน สะอะ', 0, 20.00, NULL, 'wait', '2022-03-05 03:46:00', '2022-03-05 19:42:13'),
(14, 'umk3027353189', '50012280350427', '0841579936', 'ชากีรีน สะอะ', 0, 10.00, NULL, 'wait', '2022-03-05 03:45:00', '2022-03-05 19:42:14'),
(15, 'umk3026242081', '50012276678591', '0988367470', 'มงคล แซ่ตั้น', 0, 15.00, NULL, 'wait', '2022-03-04 21:23:00', '2022-03-05 19:42:14'),
(16, 'umk3025859924', '50012275234399', '0637616132', 'โชติกา งดงาม', 0, 10.00, NULL, 'wait', '2022-03-04 19:58:00', '2022-03-05 19:42:14'),
(17, 'umk3025784223', '50012274933883', '0832188600', 'อำนาจ เงางาม', 0, 50.00, NULL, 'wait', '2022-03-04 19:41:00', '2022-03-05 19:42:15'),
(18, 'umk3025678023', '50012274493558', '0820674580', 'ธีรพัฒน์ บุญมาเลิศ', 0, 20.00, NULL, 'wait', '2022-03-04 19:17:00', '2022-03-05 19:42:15'),
(19, 'umk3025454704', '50012273519352', '0961970720', 'ณัฐวุฒิ ชมภูงาม', 0, 50.00, NULL, 'wait', '2022-03-04 18:22:00', '2022-03-05 19:42:15'),
(20, 'umk3025441012', '50012273457113', '0637946766', 'ณพสิทธิ์ เอี่ยมสอาด', 0, 20.00, NULL, 'wait', '2022-03-04 18:18:00', '2022-03-05 19:42:16'),
(21, 'umk3025393240', '50012273239334', '0904880291', 'ยุทธนา ยะอื่อ', 0, 20.00, NULL, 'wait', '2022-03-04 18:05:00', '2022-03-05 19:42:16'),
(22, 'umk3025368204', '50012273125154', '0904880291', 'ยุทธนา ยะอื่อ', 0, 20.00, NULL, 'wait', '2022-03-04 17:58:00', '2022-03-05 19:42:17'),
(23, 'umk3025168937', '50012272209669', '0993071825', 'ทนาย สุวรรณฉวี', 0, 30.00, NULL, 'wait', '2022-03-04 16:57:00', '2022-03-05 19:42:17'),
(24, 'umk3024934774', '50012271183125', '0982592733', 'ณัฏฐนิชา แซ่หว้า', 0, 20.00, NULL, 'wait', '2022-03-04 15:40:00', '2022-03-05 19:42:17'),
(25, 'umk3024919077', '50012271115534', '0982592733', 'ณัฏฐนิชา แซ่หว้า', 0, 20.00, NULL, 'wait', '2022-03-04 15:35:00', '2022-03-05 19:42:18'),
(26, 'umk3024911447', '50012271082309', '0982592733', 'ณัฏฐนิชา แซ่หว้า', 0, 20.00, NULL, 'wait', '2022-03-04 15:33:00', '2022-03-05 19:42:18'),
(27, 'umk3024746756', '50012270364845', '0904880291', 'ยุทธนา ยะอื่อ', 0, 50.00, NULL, 'wait', '2022-03-04 14:37:00', '2022-03-05 19:42:18'),
(28, 'umk3024574535', 'R', '0933698520', 'R', 0, 50.00, NULL, 'wait', '2022-03-04 13:38:00', '2022-03-05 19:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `truewallet_check`
--

CREATE TABLE `truewallet_check` (
  `card_id` int(6) NOT NULL,
  `password` varchar(14) DEFAULT NULL,
  `number_phone` varchar(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `amount` double(11,2) NOT NULL DEFAULT 0.00,
  `status` varchar(100) NOT NULL DEFAULT 'wait' COMMENT '	wait = รอ,success = สำเร็จ,error = ไม่สำเร็จ',
  `wallet_time` datetime DEFAULT NULL,
  `added_time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `typegamepay_list`
--

CREATE TABLE `typegamepay_list` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `detail` text DEFAULT NULL,
  `url_friendly` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'https://placehold.it/650x220',
  `show_active` tinyint(1) DEFAULT 1,
  `created` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typegamepay_list`
--

INSERT INTO `typegamepay_list` (`id`, `name`, `content`, `detail`, `url_friendly`, `image`, `show_active`, `created`) VALUES
(1, 'FREE FIRE (TH)', 'ลูกค้าสามารถกดเลือกแพ็คเกจสุดคุ้มเราของได้เลย', '<p><img alt=\"pubgm\" class=\"img-fluid w-100\" src=\"https://i.imgur.com/r9xcJAu.jpg\" /></p>', 'free-fire', '/uploads/z4jmfBA.jpg?v=2', 1, '2020-04-15 19:49:25'),
(2, 'PUB G MOBILE', 'รายละเอียด . . PUB G', '<img src=\"https://i.imgur.com/r9xcJAu.jpg\" alt=\"pubgm\" class=\"img-fluid w-100\">', 'pub-g', '/uploads/aJtAS3k.jpg?v=1', 0, '2020-03-20 21:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `typegamepay_tb`
--

CREATE TABLE `typegamepay_tb` (
  `tgp_id` int(11) NOT NULL,
  `tgp_game` varchar(255) DEFAULT NULL,
  `tgp_price` double(11,2) NOT NULL DEFAULT 0.00,
  `tgp_pricenormal` double(11,2) NOT NULL,
  `tgp_prize_cost` double(11,2) NOT NULL,
  `tgp_discount` double(11,2) NOT NULL DEFAULT 0.00,
  `tgp_type` varchar(100) DEFAULT NULL,
  `tgp_display` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typegamepay_tb`
--

INSERT INTO `typegamepay_tb` (`tgp_id`, `tgp_game`, `tgp_price`, `tgp_pricenormal`, `tgp_prize_cost`, `tgp_discount`, `tgp_type`, `tgp_display`) VALUES
(1, 'freefire', 45.00, 50.00, 38.57, 5.00, 'free-fire', '172 Diamond'),
(2, 'freefire', 85.00, 90.00, 69.57, 5.00, 'free-fire', '309 Diamond'),
(3, 'freefire', 135.00, 150.00, 115.32, 15.00, 'free-fire', '517 Diamond'),
(4, 'freefire', 265.00, 300.00, 230.65, 35.00, 'free-fire', '1,052 Diamond'),
(5, 'freefire', 440.00, 500.00, 384.16, 60.00, 'free-fire', '1,800 Diamond'),
(6, 'freefire', 850.00, 1000.00, 768.32, 150.00, 'free-fire', '3,697 Diamond'),
(9, 'freefire', 54.00, 60.00, 51.42, 6.00, 'free-fire', 'แพ็คสุดคุ้ม-รายสัปดาห์'),
(10, 'freefire', 225.00, 250.00, 204.94, 25.00, 'free-fire', 'แพ็คสุดคุ้ม-รายเดือน'),
(11, 'pubgm', 30.00, 0.00, 0.00, 0.00, 'pub-g', '70 + 4 Extra Unknown Cash'),
(12, 'pubgm', 40.00, 0.00, 0.00, 0.00, 'pub-g', '88 + 4 Extra Unknown Cash'),
(13, 'pubgm', 75.00, 0.00, 0.00, 0.00, 'pub-g', '175 + 9 Extra Unknown Cash'),
(14, 'pubgm', 165.00, 0.00, 0.00, 0.00, 'pub-g', '300 + 25 Extra Unknown Cash'),
(15, 'pubgm', 220.00, 0.00, 0.00, 0.00, 'pub-g', '525 + 32 Extra Unknown Cash');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT 'รหัสสมาชิก',
  `username` varchar(100) NOT NULL COMMENT 'ชื่อเข้าใช้',
  `password` varchar(50) NOT NULL COMMENT 'รหัสผ่าน',
  `pass_before` varchar(50) DEFAULT NULL,
  `user_type` enum('user','vip','stream','staff','admin') NOT NULL DEFAULT 'user' COMMENT 'ประเภทสมาชิก',
  `credit` decimal(15,2) DEFAULT 0.00 COMMENT 'แต้มคงเหลือ',
  `wallet_point` decimal(20,2) DEFAULT 0.00 COMMENT 'วอลเล็ตพ้อยต์',
  `reward_points` decimal(20,2) DEFAULT 0.00 COMMENT 'แต้มสะสม',
  `user_id_facebook` varchar(50) DEFAULT NULL,
  `fb_name` text DEFAULT NULL,
  `fb_pic` varchar(255) NOT NULL DEFAULT 'https://placehold.it/200x200',
  `email` varchar(100) NOT NULL COMMENT 'อีเมล์',
  `address_lucky_prize` varchar(255) DEFAULT NULL,
  `phone` int(14) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp() COMMENT 'วันที่สร้าง',
  `login_latest` datetime DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT '127.0.0.1',
  `image_user` varchar(255) DEFAULT NULL,
  `banking_status` tinyint(1) DEFAULT 0,
  `banking_check` tinyint(1) DEFAULT 0,
  `total_sharepoint` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wpk_admin`
--

CREATE TABLE `wpk_admin` (
  `id` int(11) NOT NULL,
  `t_user` varchar(255) DEFAULT NULL,
  `t_pass` varchar(255) DEFAULT NULL,
  `t_pin` varchar(255) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xslot_chance`
--

CREATE TABLE `xslot_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xslot_chance`
--

INSERT INTO `xslot_chance` (`id`, `rw_type`, `name`, `chance`) VALUES
(1, 'stock|1', 'True Money 50 Bath', 0),
(2, 'stock|2', 'True Money 90 Bath', 0),
(3, 'stock|3', 'True Money 150 Bath', 0),
(4, 'stock|4', 'True Money 300 Bath', 0),
(8, 'stock|5', 'True Money 500 Bath', 0),
(9, 'stock|6', 'True Money 1,000 Bath', 0),
(10, 'stock|7', 'Garena 30 Shells', 3),
(11, 'stock|8', 'Garena 75 Shells', 3),
(12, 'stock|9', 'Garena 150 Shells', 0),
(13, 'stock|10', 'Garena 450 Shells', 0),
(14, 'stock|11', 'Garena 750 Shells', 0),
(15, 'stock|12', 'Garena 1500 Shells', 0),
(16, 'none', 'ไม่ได้รางวัล', 47),
(17, 'credit|1|5', '1 - 5 เครดิต', 44),
(18, 'credit|5|50', '5 - 50 เครดิต', 3);

-- --------------------------------------------------------

--
-- Table structure for table `xslot_st_chance`
--

CREATE TABLE `xslot_st_chance` (
  `id` int(11) NOT NULL,
  `rw_type` varchar(255) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `chance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xslot_st_chance`
--

INSERT INTO `xslot_st_chance` (`id`, `rw_type`, `name`, `chance`) VALUES
(1, 'stock|1', 'True Money 50 Bath', 0),
(2, 'stock|2', 'True Money 90 Bath', 0),
(3, 'stock|3', 'True Money 150 Bath', 0),
(4, 'stock|4', 'True Money 300 Bath', 0),
(8, 'stock|5', 'True Money 500 Bath', 0),
(9, 'stock|6', 'True Money 1,000 Bath', 0),
(10, 'stock|7', 'Garena 30 Shells', 0),
(11, 'stock|8', 'Garena 75 Shells', 0),
(12, 'stock|9', 'Garena 150 Shells', 0),
(13, 'stock|10', 'Garena 450 Shells', 0),
(14, 'stock|11', 'Garena 750 Shells', 0),
(15, 'stock|12', 'Garena 1,500 Shells', 100),
(16, 'none', 'ไม่ได้รางวัล', 0),
(17, 'credit|1|5', '1 - 5 เครดิต', 0),
(18, 'credit|5|50', '5 - 50 เครดิต', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_tb`
--
ALTER TABLE `card_tb`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_logs`
--
ALTER TABLE `dashboard_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freefire_openid`
--
ALTER TABLE `freefire_openid`
  ADD PRIMARY KEY (`ffid_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_categorie`
--
ALTER TABLE `game_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kbank_tb`
--
ALTER TABLE `kbank_tb`
  ADD PRIMARY KEY (`kb_id`);

--
-- Indexes for table `loggamepay_tb`
--
ALTER TABLE `loggamepay_tb`
  ADD PRIMARY KEY (`lgp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categorie_id` (`product_categorie_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roller_chance`
--
ALTER TABLE `roller_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roller_st_chance`
--
ALTER TABLE `roller_st_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_chance`
--
ALTER TABLE `rov_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_history`
--
ALTER TABLE `rov_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_type` (`item_type`),
  ADD KEY `item_name` (`item_name`);

--
-- Indexes for table `rov_rewards`
--
ALTER TABLE `rov_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_setting`
--
ALTER TABLE `rov_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_stock`
--
ALTER TABLE `rov_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_st_chance`
--
ALTER TABLE `rov_st_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_st_history`
--
ALTER TABLE `rov_st_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rov_st_stock`
--
ALTER TABLE `rov_st_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spinff_chance`
--
ALTER TABLE `spinff_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spinff_history`
--
ALTER TABLE `spinff_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_type` (`item_type`);

--
-- Indexes for table `spinff_rewards`
--
ALTER TABLE `spinff_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spinff_stock`
--
ALTER TABLE `spinff_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spinff_st_chance`
--
ALTER TABLE `spinff_st_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spinff_st_history`
--
ALTER TABLE `spinff_st_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spinff_st_stock`
--
ALTER TABLE `spinff_st_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_chance`
--
ALTER TABLE `spin_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_history`
--
ALTER TABLE `spin_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_type` (`item_type`);

--
-- Indexes for table `spin_rewards`
--
ALTER TABLE `spin_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_setting`
--
ALTER TABLE `spin_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spin_stock`
--
ALTER TABLE `spin_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truemoney`
--
ALTER TABLE `truemoney`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `password` (`password`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `make_amount` (`make_amount`);

--
-- Indexes for table `truewallet`
--
ALTER TABLE `truewallet`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `password` (`password`),
  ADD UNIQUE KEY `report_id` (`report_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `truewallet_check`
--
ALTER TABLE `truewallet_check`
  ADD PRIMARY KEY (`card_id`),
  ADD UNIQUE KEY `password` (`password`);

--
-- Indexes for table `typegamepay_list`
--
ALTER TABLE `typegamepay_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `typegamepay_tb`
--
ALTER TABLE `typegamepay_tb`
  ADD PRIMARY KEY (`tgp_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `user_id_facebook` (`user_id_facebook`),
  ADD KEY `credit` (`credit`),
  ADD KEY `user_type` (`user_type`),
  ADD KEY `fb_pic` (`fb_pic`),
  ADD KEY `email` (`email`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `wpk_admin`
--
ALTER TABLE `wpk_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xslot_chance`
--
ALTER TABLE `xslot_chance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xslot_st_chance`
--
ALTER TABLE `xslot_st_chance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_tb`
--
ALTER TABLE `card_tb`
  MODIFY `card_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT for table `dashboard_logs`
--
ALTER TABLE `dashboard_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `freefire_openid`
--
ALTER TABLE `freefire_openid`
  MODIFY `ffid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game_categorie`
--
ALTER TABLE `game_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kbank_tb`
--
ALTER TABLE `kbank_tb`
  MODIFY `kb_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loggamepay_tb`
--
ALTER TABLE `loggamepay_tb`
  MODIFY `lgp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส';

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส', AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roller_chance`
--
ALTER TABLE `roller_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roller_st_chance`
--
ALTER TABLE `roller_st_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `rov_chance`
--
ALTER TABLE `rov_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `rov_history`
--
ALTER TABLE `rov_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rov_rewards`
--
ALTER TABLE `rov_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rov_setting`
--
ALTER TABLE `rov_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rov_stock`
--
ALTER TABLE `rov_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rov_st_chance`
--
ALTER TABLE `rov_st_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rov_st_history`
--
ALTER TABLE `rov_st_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rov_st_stock`
--
ALTER TABLE `rov_st_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `spinff_chance`
--
ALTER TABLE `spinff_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spinff_history`
--
ALTER TABLE `spinff_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spinff_rewards`
--
ALTER TABLE `spinff_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `spinff_stock`
--
ALTER TABLE `spinff_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spinff_st_chance`
--
ALTER TABLE `spinff_st_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `spinff_st_history`
--
ALTER TABLE `spinff_st_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spinff_st_stock`
--
ALTER TABLE `spinff_st_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_chance`
--
ALTER TABLE `spin_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `spin_history`
--
ALTER TABLE `spin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spin_rewards`
--
ALTER TABLE `spin_rewards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `spin_setting`
--
ALTER TABLE `spin_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `spin_stock`
--
ALTER TABLE `spin_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truemoney`
--
ALTER TABLE `truemoney`
  MODIFY `card_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truewallet`
--
ALTER TABLE `truewallet`
  MODIFY `card_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `truewallet_check`
--
ALTER TABLE `truewallet_check`
  MODIFY `card_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typegamepay_list`
--
ALTER TABLE `typegamepay_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `typegamepay_tb`
--
ALTER TABLE `typegamepay_tb`
  MODIFY `tgp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก';

--
-- AUTO_INCREMENT for table `wpk_admin`
--
ALTER TABLE `wpk_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `xslot_chance`
--
ALTER TABLE `xslot_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `xslot_st_chance`
--
ALTER TABLE `xslot_st_chance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_categorie_id`) REFERENCES `product_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
