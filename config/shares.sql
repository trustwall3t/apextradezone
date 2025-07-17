-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2022 at 02:52 AM
-- Server version: 10.3.36-MariaDB-log-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scrixuez_shares`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(6) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(2, 'admin@yourdomain.com', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Table structure for table `adminmessage`
--

CREATE TABLE `adminmessage` (
  `id` int(6) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` blob NOT NULL,
  `status` tinyint(4) NOT NULL,
  `msgid` varchar(22) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ashares`
--

CREATE TABLE `ashares` (
  `id` int(6) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `pname` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `increase` double NOT NULL,
  `bonus` double NOT NULL,
  `status` int(122) NOT NULL,
  `date` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sharescat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sharesubcat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `shid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `last_increase_date` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `increased_usd` double NOT NULL DEFAULT 0,
  `dc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ac` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ashares`
--

INSERT INTO `ashares` (`id`, `email`, `pname`, `increase`, `bonus`, `status`, `date`, `sid`, `sharescat`, `sharesubcat`, `shid`, `amount`, `last_increase_date`, `increased_usd`, `dc`, `ac`) VALUES
(33, 'digitalwebplus52@gmail.com', 'Google', 2, 0, 0, '0', 'mys6317c0c51df72', 'shares', 'ict', '', '500', '', 0, '2022-09-06 19:36:41', '2022-09-06 19:01:23'),
(34, 'digitalwebplus52@gmail.com', 'Google', 2, 0, 0, '0', 'mys6317c0c51df72', 'shares', 'ict', '', '700', '2022-09-14 04:45:41', 98, '2022-09-14 06:30:59', '2022-09-06 19:02:07'),
(35, 'digitalwebplus52@gmail.com', 'Shell', 6, 0, 1, '2022-09-06 19:04:20', 'mys6317c24b19527', 'shares', 'oil industry', '', '1500', '2022-09-14 04:45:41', 630, '', '2022-09-06 19:04:20'),
(36, 'digitalwebplus52@gmail.com', 'Paul Real Estate', 2, 0, 1, '2022-09-14 06:29:26', 'mys6321ac8645f81', 'stocks', 'real estate', '', '1000', '', 0, '', '2022-09-14 06:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `btc`
--

CREATE TABLE `btc` (
  `id` int(11) NOT NULL,
  `mode` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `usd` double NOT NULL,
  `image` tinyblob NOT NULL,
  `btctnx` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `tnxid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `refcode` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `referred` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `btc`
--

INSERT INTO `btc` (`id`, `mode`, `usd`, `image`, `btctnx`, `email`, `status`, `tnxid`, `refcode`, `referred`, `date`) VALUES
(7, 'Bitcoin', 5000, '', 'ewhfjgeujkfvhervlj', 'digitalwebplus52@gmail.com', 'approved', 'tnx6317cf36b058a', '', '', '2022-09-06 22:52:38'),
(8, 'Mobile Money', 5000, '', '4321', 'digitalwebplus52@gmail.com', 'approved', 'tnx6321aee96ddb4', '', '', '2022-09-14 10:37:29');

-- --------------------------------------------------------

--
-- Table structure for table `exchange`
--

CREATE TABLE `exchange` (
  `id` int(11) NOT NULL,
  `userid` varchar(200) NOT NULL,
  `transactionid` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `amount` double NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messageadmin`
--

CREATE TABLE `messageadmin` (
  `id` int(6) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `msgid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pmethod`
--

CREATE TABLE `pmethod` (
  `id` int(6) NOT NULL,
  `email` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `pmethod` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `imgs` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pmethod`
--

INSERT INTO `pmethod` (`id`, `email`, `pmethod`, `details`, `imgs`) VALUES
(19, 'admin@yourdomain.com', 'Bitcoin', 'bc1qcq9e60ldx2dwxf72v5g5hr9yhc2yecvt928nnm', 'c406a78164277a92c82c693e3aa882be.jpg'),
(20, 'admin@yourdomain.com', 'Ethereum', '0xA3Fefc7Cd98C92A355B83D0D8aF8749F83cb024a', 'bc4bfece1549bcd453bc7b8b1ccf4f14.png'),
(21, 'admin@yourdomain.com', 'USDT', '0xA3Fefc7Cd98C92A355B83D0D8aF8749F83cb024a', '3822c089355971701f5906ad941cbb70.jpg'),
(22, 'admin@yourdomain.com', 'Mobile Money', '1234567890', 'e807f1fcf82d132f9bb018ca6738a19f.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(200) NOT NULL,
  `sname` varchar(200) NOT NULL,
  `wl` int(200) NOT NULL,
  `rb` int(200) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `bname` varchar(200) NOT NULL,
  `baddress` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `cy` varchar(200) NOT NULL,
  `hea` varchar(200) NOT NULL,
  `act` varchar(200) NOT NULL,
  `inert` varchar(200) NOT NULL,
  `jso` varchar(200) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `header` varchar(200) NOT NULL,
  `footer` varchar(200) NOT NULL,
  `css` varchar(200) NOT NULL,
  `jv` varchar(200) NOT NULL,
  `email_api` int(11) NOT NULL,
  `json_config` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sname`, `wl`, `rb`, `currency`, `branch`, `bname`, `baddress`, `email`, `phone`, `title`, `logo`, `cy`, `hea`, `act`, `inert`, `jso`, `menu`, `header`, `footer`, `css`, `jv`, `email_api`, `json_config`) VALUES
(2, 'yourdomain.com', 100, 50, '', '', 'Shares & Stock Investment', '', 'info@yourdomain.com', '', 'Welcome to Shares & Stock Investment', 'logostics.png', '2022', '', '', '', '', '', '', '', '', '', 0, '{\"gcaptcha\":{\"recaptcha_status\":\"1\",\"site_key\":\"6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI\",\"secret_key\":\"6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `shared`
--

CREATE TABLE `shared` (
  `id` int(6) NOT NULL,
  `email` varchar(111) COLLATE utf8_unicode_ci NOT NULL,
  `pname` varchar(122) COLLATE utf8_unicode_ci NOT NULL,
  `increase` double NOT NULL,
  `bonus` double NOT NULL,
  `status` int(122) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sharescat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sharesubcat` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `amount` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shared`
--

INSERT INTO `shared` (`id`, `email`, `pname`, `increase`, `bonus`, `status`, `date`, `sid`, `sharescat`, `sharesubcat`, `amount`) VALUES
(21, 'admin@yourdomain.com', 'Google', 2, 5, 1, '0000-00-00 00:00:00', 'mys6317c0c51df72', 'shares', 'ict', ''),
(22, 'admin@yourdomain.com', 'Apple', 5, 12, 1, '0000-00-00 00:00:00', 'mys6317c1fe40635', 'stocks', 'ict', ''),
(23, 'admin@yourdomain.com', 'Shell', 6, 20, 1, '0000-00-00 00:00:00', 'mys6317c24b19527', 'shares', 'oil industry', ''),
(28, 'admin@yourdomain.com', 'Paul Real Estate', 2, 1, 1, '0000-00-00 00:00:00', 'mys6321ac8645f81', 'stocks', 'real estate', '');

-- --------------------------------------------------------

--
-- Table structure for table `sharesgroup`
--

CREATE TABLE `sharesgroup` (
  `id` int(11) NOT NULL,
  `sharescat` varchar(200) NOT NULL,
  `sharesubcat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sharesgroup`
--

INSERT INTO `sharesgroup` (`id`, `sharescat`, `sharesubcat`) VALUES
(9, 'Shares', 'Oil Industry'),
(10, 'Stocks', 'Banking Sector'),
(11, 'Crypto', 'ICT'),
(12, 'Forex', 'Health Sector'),
(13, 'Metals', 'Brewing'),
(14, 'Storage', 'Real Estate '),
(15, 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `tfa`
--

CREATE TABLE `tfa` (
  `id` int(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `secret` varchar(100) NOT NULL,
  `qrcode` blob NOT NULL,
  `result` int(12) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `refcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify` tinyint(4) NOT NULL DEFAULT 0,
  `ver_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session` tinyint(4) NOT NULL DEFAULT 0,
  `referred` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refbonus` double NOT NULL,
  `walletbalance` double NOT NULL DEFAULT 0,
  `pm` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `eth` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `btc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usdt` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `2fa` tinyint(4) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `confirm`, `token`, `refcode`, `image`, `verify`, `ver_image`, `session`, `referred`, `refbonus`, `walletbalance`, `pm`, `eth`, `btc`, `usdt`, `2fa`, `date`, `phone`, `address`, `country`) VALUES
(187, 'Testuser', 'digitalwebplus52@gmail.com', '12345678', 1, '0(LVav8}5E', 's4WA7Jh8Rk', '7e9a6e20abc17624cbb1c5d746c02406.jpg', 1, NULL, 0, '', 0, 2628, 'cghfjgi', 'dfhryjkyul', 'qwertyuiopasdfghjklrtyuiodgcwduif', 'erhrtuj56j5', 0, '2022-08-29 18:49:00', '123456789', 'sdfhpro righ roh', 'AW'),
(188, 'admin@yourdomain.com', 'admin@yourdomain.com', 'admin123', 0, 'nOXrpg4}U)', 'cS2xkmeOpt', NULL, 0, NULL, 0, '', 0, 0, NULL, NULL, NULL, NULL, 0, '2022-11-09 14:37:30', '00909933', '', 'AL');

-- --------------------------------------------------------

--
-- Table structure for table `wbtc`
--

CREATE TABLE `wbtc` (
  `id` int(11) NOT NULL,
  `moni` double NOT NULL,
  `mode` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tnx` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `wal` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wbtc`
--

INSERT INTO `wbtc` (`id`, `moni`, `mode`, `email`, `status`, `tnx`, `wal`, `date`) VALUES
(6, 3000, 'Bitcoin', 'digitalwebplus52@gmail.com', 'completed', 'tnx6321b06ba14a6', 'qwertyuiopasdfghjklrtyuiodgcwduif', '2022-09-14 10:43:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminmessage`
--
ALTER TABLE `adminmessage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ashares`
--
ALTER TABLE `ashares`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `btc`
--
ALTER TABLE `btc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchange`
--
ALTER TABLE `exchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messageadmin`
--
ALTER TABLE `messageadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pmethod`
--
ALTER TABLE `pmethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shared`
--
ALTER TABLE `shared`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sharesgroup`
--
ALTER TABLE `sharesgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tfa`
--
ALTER TABLE `tfa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wbtc`
--
ALTER TABLE `wbtc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminmessage`
--
ALTER TABLE `adminmessage`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ashares`
--
ALTER TABLE `ashares`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `btc`
--
ALTER TABLE `btc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exchange`
--
ALTER TABLE `exchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messageadmin`
--
ALTER TABLE `messageadmin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pmethod`
--
ALTER TABLE `pmethod`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shared`
--
ALTER TABLE `shared`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sharesgroup`
--
ALTER TABLE `sharesgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tfa`
--
ALTER TABLE `tfa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `wbtc`
--
ALTER TABLE `wbtc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
