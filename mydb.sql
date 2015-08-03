-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2015 at 03:55 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `news_title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `news_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `news_title`, `news_content`, `news_date`) VALUES
(0, 1, '', '', '2015-08-03 03:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `paid_day` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `name`, `total`, `paid_day`) VALUES
(1, 1, 'Ca nhan', 12345678, '2015-07-06 10:34:00'),
(2, 1, 'Google', 234561, '2015-07-06 10:34:09'),
(3, 1, 'Website', 15000000, '2015-07-06 10:38:06'),
(4, 1, 'Tiep khach hang', 3000000, '2015-07-06 10:39:16'),
(14, 1, 'yolo', 3000000, '2015-07-06 10:03:21'),
(15, 1, 'test', 100000, '2015-07-12 16:21:07'),
(16, 17, 'df', 34, '2015-08-02 19:39:59'),
(17, 17, '', 0, '2015-08-02 19:40:19'),
(18, 1, 'ko', 234, '2015-08-03 03:40:30'),
(19, 1, 'rer', 4546, '2015-08-03 03:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`) VALUES
(1, 'khanhnd@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'KhanhND'),
(2, 'tuan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'TuanNguyen'),
(3, 'minh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'MinhNguyen'),
(4, 'haha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Haha'),
(5, 'hahaha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Hehehe'),
(14, 'tinhnt@gmail.com', 'aaa5dda7c7fac002fe19483aa0054658', 'tinhnt'),
(15, 'kai@gmail.com', 'aaa5dda7c7fac002fe19483aa0054658', 'kai'),
(16, 'tranvantubk@gmail.com', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'four'),
(17, 'none@none.none', 'e10adc3949ba59abbe56e057f20f883e', 'four');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`), ADD KEY `fk_payments_1_idx` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
ADD CONSTRAINT `fk_payments_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
