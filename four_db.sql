-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2015 at 01:19 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `four_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cate_id` int(11) NOT NULL,
  `cate_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cate_robots` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cate_total_news` int(11) NOT NULL,
  `add_user_id` int(11) NOT NULL,
  `add_username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `add_date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` int(11) NOT NULL,
  `comment_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `new_id` int(11) NOT NULL,
  `comment_status` tinyint(4) NOT NULL,
  `add_user_id` int(11) NOT NULL,
  `add_username` int(50) NOT NULL,
  `add_date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `menu_link` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `menu_css` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `menu_parent_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `news_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8_unicode_ci NOT NULL,
  `news_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `news_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `news_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `news_robots` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `news_viewed` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `tags_title` text COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `cate_title` text COLLATE utf8_unicode_ci NOT NULL,
  `cate_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `add_user_id` int(11) NOT NULL,
  `add_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `add_date_time` datetime NOT NULL,
  `add_date_int` int(11) NOT NULL,
  `public_date_time` datetime NOT NULL,
  `public_date_time_int` int(11) NOT NULL,
  `news_status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_slug_int` int(11) NOT NULL,
  `page_content` text COLLATE utf8_unicode_ci NOT NULL,
  `page_image` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `page_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `page_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `page_robots` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `page_viewed` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `tags_id` int(11) NOT NULL,
  `tags_title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tags_slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tags_keywords` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `tags_description` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `tags_robots` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `add_user_id` int(11) NOT NULL,
  `add_username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `add_date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_avatar` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `add_date_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tags_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
