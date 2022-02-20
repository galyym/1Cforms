-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 20, 2022 at 01:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1cform_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `1cform`
--

CREATE TABLE `1cform` (
  `id` int(11) NOT NULL,
  `name_company` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `numhouse` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `1cform`
--

INSERT INTO `1cform` (`id`, `name_company`, `name`, `surname`, `email`, `postcode`, `region`, `city`, `street`, `numhouse`) VALUES
(1, 'TOO Click', 'Test', 'Test', 'asd@asd.asd', 212121, 'Almaty', 'Almaty', 'Almaty', 54),
(2, 'Ð¢ÐžÐž ÐœÐ°ÐºÑÐ¸Ð¼', 'ÐœÐ°ÐºÑÐ¸Ð¼', 'ÐœÐ°ÐºÑÐ¸Ð¼Ð¾Ð²', 'max@max.ru', 212121, 'ÐÐ»Ð¼Ð°Ñ‚Ñ‹', 'ÐÐ»Ð¼Ð°Ñ‚Ñ‹', 'ÐÐ»Ð¼Ð°Ñ‚Ñ‹', 21);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `tweet_id`, `comment`, `post_date`) VALUES
(22, 12, 13, 'Aaaaaa', '2022-01-27 20:01:33'),
(23, 12, 13, 'fvcvcv', '2022-01-27 20:01:36'),
(24, 12, 13, 'sfsdfsdf', '2022-01-27 20:01:39'),
(25, 12, 12, 'adfdfd', '2022-01-27 20:01:44'),
(26, 12, 12, 'sdfdsf', '2022-01-27 20:01:46'),
(27, 12, 11, 'dgfsdfsd', '2022-01-27 20:01:51'),
(30, 12, 16, 'asasasas', '2022-02-20 12:10:15'),
(31, 12, 16, 'cool', '2022-02-20 12:10:21'),
(32, 12, 15, '212121', '2022-02-20 12:10:32'),
(33, 12, 14, 'fdgdhgd', '2022-02-20 12:10:38'),
(34, 12, 14, 'dfghdhgf', '2022-02-20 12:10:40'),
(35, 12, 14, 'shtfghh', '2022-02-20 12:10:42');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `text`, `price`) VALUES
(1, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° 1Ð¡', 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° 1Ð¡ ÐŸÑ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ 8.3 Ð¸ Ð»ÑŽÐ±Ð°Ñ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ñ.', 8200),
(2, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° Windows', 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° Windows 10 Ð¸Ð»Ð¸ Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Windows 10 Ð´Ð¾ Windows 11', 5500),
(3, 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° ÐÐ½Ñ‚Ð¸Ð²Ð¸Ñ€ÑƒÑÐ°', 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ° Ð°Ð½Ñ‚Ð¸Ð²Ð¸Ñ€ÑƒÑÐ¾Ð²: Kaspersky Internet Security, DrWeb, Avast Ð¸ Ñ‚Ð°Ðº Ð´Ð°Ð»ÐµÐµ', 22450);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `short_content` longtext NOT NULL,
  `content` longtext NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `title`, `short_content`, `content`, `post_date`, `likes`) VALUES
(14, 12, 'Ð’Ñ‹Ð¿ÑƒÑ‰ÐµÐ½ Ð½Ð¾Ð²Ñ‹Ð¹ Ñ€ÐµÐ»Ð¸Ð· (2.0.35.2) ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ Â«Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð° Ð±Ð°Ð·Ð¾Ð²Ð°ÑÂ», Ñ€ÐµÐ´Ð°ÐºÑ†Ð¸Ñ 2.0', '&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;Ð ÐµÐ³Ð»Ð°Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð°Ñ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð½Ð¾ÑÑ‚ÑŒ&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;Ð”ÐµÐºÐ»Ð°Ñ€Ð°Ñ†Ð¸Ñ Ð¿Ð¾ ÐºÐ¾Ñ€Ð¿Ð¾Ñ€Ð°Ñ‚Ð¸Ð²Ð½Ð¾Ð¼Ñƒ Ð¿Ð¾Ð´Ð¾Ñ…Ð¾Ð´Ð½Ð¾Ð¼Ñƒ Ð½Ð°Ð»Ð¾Ð³Ñƒ, Ñ„Ð¾Ñ€Ð¼Ð° 100.00&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;Ð ÐµÐ°Ð»Ð¸Ð·Ð¾Ð²Ð°Ð½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð³Ñ€ÑƒÐ·ÐºÐ¸ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ð² Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ðµ XML Ð´Ð»Ñ ÑˆÐ°Ð±Ð»Ð¾Ð½Ð° Ð˜Ð¡ Ð¡ÐžÐÐž form_100_00_v29_r109 Ð¾Ñ‚ 23.12.2021 Ð³. Ð¨Ð°Ð±Ð»Ð¾Ð½ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÑÐµÑ‚ÑÑ Ð´Ð»Ñ ÑÐ´Ð°Ñ‡Ð¸ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð½Ð¾ÑÑ‚Ð¸ Ð·Ð° 2021 Ð³Ð¾Ð´.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;Ð”ÐµÐºÐ»Ð°Ñ€Ð°Ñ†Ð¸Ñ Ð¿Ð¾ Ð¸Ð½Ð´Ð¸Ð²Ð¸Ð´ÑƒÐ°Ð»ÑŒÐ½Ð¾Ð¼Ñƒ Ð¿Ð¾Ð´Ð¾Ñ…Ð¾Ð´Ð½Ð¾Ð¼Ñƒ Ð½Ð°Ð»Ð¾Ð³Ñƒ, Ñ„Ð¾Ñ€Ð¼Ð° 220.00&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;Ð ÐµÐ°Ð»Ð¸Ð·Ð¾Ð²Ð°Ð½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð³Ñ€ÑƒÐ·ÐºÐ¸ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ð² Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ðµ XML Ð´Ð»Ñ ÑˆÐ°Ð±Ð»Ð¾Ð½Ð° Ð˜Ð¡ Ð¡ÐžÐÐž form_220_00_v35_r85 Ð¾Ñ‚ 23.12.2021 Ð³. Ð¨Ð°Ð±Ð»Ð¾Ð½ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÑÐµÑ‚ÑÑ Ð´Ð»Ñ ÑÐ´Ð°Ñ‡Ð¸ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð½Ð¾ÑÑ‚Ð¸ Ð·Ð° 2021 Ð³Ð¾Ð´.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;Ð”ÐµÐºÐ»Ð°Ñ€Ð°Ñ†Ð¸Ñ Ð¿Ð¾ Ð·ÐµÐ¼ÐµÐ»ÑŒÐ½Ð¾Ð¼Ñƒ Ð½Ð°Ð»Ð¾Ð³Ñƒ, Ð½Ð°Ð»Ð¾Ð³Ñƒ Ð½Ð° Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ñ‹Ðµ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð° Ð¸ Ð½Ð°Ð»Ð¾Ð³Ñƒ Ð½Ð° Ð¸Ð¼ÑƒÑ‰ÐµÑÑ‚Ð²Ð¾, Ñ„Ð¾Ñ€Ð¼Ð° 700.00&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;Ð ÐµÐ°Ð»Ð¸Ð·Ð¾Ð²Ð°Ð½Ð° Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð²Ñ‹Ð³Ñ€ÑƒÐ·ÐºÐ¸ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ð² Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚Ðµ XML Ð´Ð»Ñ ÑˆÐ°Ð±Ð»Ð¾Ð½Ð° Ð˜Ð¡ Ð¡ÐžÐÐž form_700_00_v24_r132 Ð¾Ñ‚ 23.12.2021 Ð³. Ð¨Ð°Ð±Ð»Ð¾Ð½ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÑÐµÑ‚ÑÑ Ð´Ð»Ñ ÑÐ´Ð°Ñ‡Ð¸ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð½Ð¾ÑÑ‚Ð¸ Ð·Ð° 2021 Ð³Ð¾Ð´.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;ÐšÐ»Ð°ÑÑÐ¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€Ñ‹&lt;/span&gt;&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;ÐšÐ»Ð°ÑÑÐ¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€ Ð±Ð°Ð½ÐºÐ¾Ð² Ð Ðš Ð°ÐºÑ‚ÑƒÐ°Ð»Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ð½ Ð¿Ð¾ ÑÐ¾ÑÑ‚Ð¾ÑÐ½Ð¸ÑŽ Ð½Ð° 09.02.2022 Ð³Ð¾Ð´Ð°.&lt;/p&gt;\r\n&lt;p style=&quot;box-sizing: border-box; margin: 1.8em 0px 10px; line-height: 1.4em; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: border-box; font-weight: bold;&quot;&gt;Ð˜ÑÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð½Ñ‹Ðµ Ð¾ÑˆÐ¸Ð±ÐºÐ¸&lt;/span&gt;&lt;/p&gt;\r\n&lt;ol style=&quot;box-sizing: border-box; padding: 0px; margin: 0px 0px 10px 25px; color: #333333; font-family: Arial, Helvetica, sans-serif;&quot;&gt;\r\n&lt;li style=&quot;box-sizing: border-box; line-height: 20px;&quot;&gt;Ð˜ÑÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð° Ð¾ÑˆÐ¸Ð±ÐºÐ° ÑÐ²ÑÐ·Ñ‹Ð²Ð°Ð½Ð¸Ñ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð¾Ð² Ð¡Ð¤ Ð¸ Ð­Ð¡Ð¤ Ð¿Ñ€Ð¸ Ñ€Ð°Ð±Ð¾Ñ‚Ðµ Ð² ÐºÐ»Ð¸ÐµÐ½Ñ‚-ÑÐµÑ€Ð²ÐµÑ€Ð½Ð¾Ð¼ Ñ€ÐµÐ¶Ð¸Ð¼Ðµ.&lt;/li&gt;\r\n&lt;li style=&quot;box-sizing: border-box; line-height: 20px;&quot;&gt;Ð˜ÑÐ¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð° Ð¾ÑˆÐ¸Ð±ÐºÐ° Ð²Ñ‹Ð¿Ð¸ÑÐºÐ¸ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ñ… ÑÑ‡ÐµÑ‚Ð¾Ð²-Ñ„Ð°ÐºÑ‚ÑƒÑ€ Ð¿Ð¾Ð»ÑƒÑ‚ÐµÐ»ÑÐ¼ Ñ ÐºÐ°Ñ‚ÐµÐ³Ð¾Ñ€Ð¸ÐµÐ¹ Ð Ð¾Ð·Ð½Ð¸Ñ‡Ð½Ð°Ñ Ñ€ÐµÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ.&lt;/li&gt;\r\n&lt;li&gt;&amp;nbsp;&lt;/li&gt;\r\n&lt;/ol&gt;', '2022-02-20 12:08:15', 0),
(15, 12, 'Ð’ÐµÐ±Ð¸Ð½Ð°Ñ€ &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚&quot;. ÐžÐ±Ð·Ð¾Ñ€ Ñ€ÐµÐ»Ð¸Ð·Ð° 2.2.6.16. ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð´ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ &quot;ÐŸÑ€Ð¸ÐµÐ¼Ð½Ð°Ñ ÐºÐ¾Ð¼Ð¸ÑÑÐ¸Ñ&quot;: Ñ€ÐµÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ ÐŸÐ¾Ñ€ÑÐ´ÐºÐ° Ð¿Ñ€Ð¸ÐµÐ¼Ð° Ð² Ð²ÑƒÐ·Ñ‹ 2022; Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð¼ÐµÑ…Ð°Ð½Ð¸Ð·Ð¼Ð¾Ð² Ð²Ð·Ð°Ð¸Ð¼Ð¾Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ Ñ Ð¡ÑƒÐ¿ÐµÑ€ÑÐµÑ€Ð²Ð¸ÑÐ¾Ð¼ &quot;ÐŸÐ¾ÑÑ‚ÑƒÐ¿Ð»ÐµÐ½Ð¸Ðµ Ð² Ð²ÑƒÐ· Ð¾Ð½Ð»Ð°Ð¹Ð½&quot;. 25 Ñ„ÐµÐ²Ñ€Ð°Ð»Ñ 2022 Ð³.', '&lt;p&gt;&lt;span style=&quot;color: #333333; font-size: 13px;&quot;&gt;Ð¢ÐµÐ¼Ð°: &quot;ÐžÐ±Ð·Ð¾Ñ€ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ñ€ÐµÐ»Ð¸Ð·Ð° &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ ÐŸÐ ÐžÐ¤&quot;. ÐÐºÑ‚ÑƒÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð¿Ð¾Ð´ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ &quot;ÐŸÑ€Ð¸ÐµÐ¼Ð½Ð°Ñ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ñ&quot; Ð´Ð»Ñ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²Ð¸Ñ Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸ÑÐ¼ Ð² ÐŸÐ¾Ñ€ÑÐ´ÐºÐµ Ð¿Ñ€Ð¸ÐµÐ¼Ð°. Ð˜Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð¿Ð¾Ð´ÑÐ¸ÑÑ‚ÐµÐ¼Ðµ Ð¿Ð»Ð°Ð½Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ñ ÑƒÑ‡ÐµÐ±Ð½Ð¾Ð³Ð¾ Ð¿Ñ€Ð¾Ñ†ÐµÑÑÐ°. ÐžÑ‚Ñ‡ÐµÑ‚Ñ‹. Ð˜Ð½Ñ‚ÐµÐ³Ñ€Ð°Ñ†Ð¸Ñ&quot;.&lt;/span&gt;&lt;/p&gt;', '&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð²ÑƒÐ·Ð¾Ð², ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ðµ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÐ»Ð¸ &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚&quot;:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; title=&quot;https://sgu-infocom.ru/service/clientmap/&quot; href=&quot;https://sgu-infocom.ru/service/clientmap/&quot;&gt;https://sgu-infocom.ru/service/clientmap/&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð¢ÐµÐ»ÐµÐ³Ñ€Ð°Ð¼-Ñ‡Ð°Ñ‚ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð°:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;https://t.me/chat1cUniver&quot;&gt;https://t.me/chat1cUniver&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð¦ÐµÐ»ÑŒ:&lt;/strong&gt;&amp;nbsp;Ñ€Ð°ÑÑÐºÐ°Ð·Ð°Ñ‚ÑŒ Ð¾ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÑÑ… Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ñ€ÐµÐ»Ð¸Ð·Ð° &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ ÐŸÐ ÐžÐ¤&quot;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð”Ð°Ñ‚Ð°:&lt;/strong&gt;&amp;nbsp;25 Ñ„ÐµÐ²Ñ€Ð°Ð»Ñ 2022 Ð³ (Ð¿ÑÑ‚Ð½Ð¸Ñ†Ð°) Ð² 10:00 (Ð¼ÑÐº)&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot; align=&quot;left&quot;&gt;&lt;strong&gt;ÐŸÑ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð°:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ol style=&quot;padding: 0px; margin: 0px 0px 20px 20px; color: #333333; font-size: 13px;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐÐ¾Ð²Ñ‹Ðµ Ñ„ÑƒÐ½ÐºÑ†Ð¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ðµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚Ð¸ &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ ÐŸÐ ÐžÐ¤&quot; (15 Ð¼Ð¸Ð½ÑƒÑ‚):&lt;/li&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 0px 20px; zoom: 1;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð°ÐºÑ‚ÑƒÐ°Ð»Ð¸Ð·Ð°Ñ†Ð¸Ñ Ð¿Ð¾Ð´ÑÐ¸ÑÑ‚ÐµÐ¼Ñ‹ Ð¾Ñ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ð¸ Ð¿Ñ€Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ñ Ð¿Ñ€Ð¸ÐµÐ¼Ð½Ð¾Ð¹ ÐºÐ°Ð¼Ð¿Ð°Ð½Ð¸Ð¸ ÑÐ¾Ð³Ð»Ð°ÑÐ½Ð¾ Ñ‚Ñ€ÐµÐ±Ð¾Ð²Ð°Ð½Ð¸ÑÐ¼ ÐŸÐ¾Ñ€ÑÐ´ÐºÐ° Ð¿Ñ€Ð¸ÐµÐ¼Ð°;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ñ€Ð°Ð·Ð²Ð¸Ñ‚Ð¸Ðµ Ð¼ÐµÑ…Ð°Ð½Ð¸Ð·Ð¼Ð¾Ð² Ð²Ð·Ð°Ð¸Ð¼Ð¾Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ Ñ Ð¡ÑƒÐ¿ÐµÑ€ÑÐµÑ€Ð²Ð¸ÑÐ¾Ð¼ &quot;ÐŸÐ¾ÑÑ‚ÑƒÐ¿Ð»ÐµÐ½Ð¸Ðµ Ð² Ð²ÑƒÐ· Ð¾Ð½Ð»Ð°Ð¹Ð½&quot;;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð½Ð¾Ð²Ñ‹Ð¹ ÑÐ¿Ñ€Ð°Ð²Ð¾Ñ‡Ð½Ð¸Ðº &quot;ÐŸÑ€Ð¾Ð¸Ð·Ð²Ð¾Ð»ÑŒÐ½Ñ‹Ðµ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ñ‹&quot; Ð´Ð»Ñ Ñ…Ñ€Ð°Ð½ÐµÐ½Ð¸Ñ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð¾Ð² Ð¿Ð¾ÑÑ‚ÑƒÐ¿Ð°ÑŽÑ‰Ð¸Ñ…;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð½Ð¾Ð²Ð°Ñ Ð¿Ñ€ÐµÐ´Ð¾Ð¿Ñ€ÐµÐ´ÐµÐ»ÐµÐ½Ð½Ð°Ñ Ð³Ñ€ÑƒÐ¿Ð¿Ð° Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð¾Ð² Ð¾ÑÐ²Ð¾ÐµÐ½Ð¸Ñ;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð¸Ð·Ð¼ÐµÐ½ÐµÐ½Ð¸Ñ Ð² Ð¸Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÐµ ÑÐ¾ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð¸Ñ Ñ€Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸Ñ Ð¿Ñ€ÐµÐ¿Ð¾Ð´Ð°Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð°ÐºÑ‚ÑƒÐ°Ð»Ð¸Ð·Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð° Ð¿ÐµÑ‡Ð°Ñ‚Ð½Ð°Ñ Ñ„Ð¾Ñ€Ð¼Ð° ÑÐ¿Ñ€Ð°Ð²ÐºÐ¸ Ð² Ð²Ð¾ÐµÐ½Ð½Ñ‹Ð¹ ÐºÐ¾Ð¼Ð¸ÑÑÐ°Ñ€Ð¸Ð°Ñ‚;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½ Ñ„Ð°Ð¹Ð» ÑˆÐ°Ð±Ð»Ð¾Ð½Ð° Ð²Ñ‹Ð³Ñ€ÑƒÐ·ÐºÐ¸ Ð´Ð¸Ð¿Ð»Ð¾Ð¼Ð¾Ð² Ð² Ð¤Ð Ð”Ðž;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð”ÐµÐ¼Ð¾Ð½ÑÑ‚Ñ€Ð°Ñ†Ð¸Ñ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÐµÐ¹ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ñ€ÐµÐ»Ð¸Ð·Ð° &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ ÐŸÐ ÐžÐ¤&quot; (45 Ð¼Ð¸Ð½ÑƒÑ‚);&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐžÑ‚Ð²ÐµÑ‚Ñ‹ Ð½Ð° Ð²Ð¾Ð¿Ñ€Ð¾ÑÑ‹ (30 Ð¼Ð¸Ð½ÑƒÑ‚).&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð£Ñ‡Ð°ÑÑ‚Ð¸Ðµ Ð² Ð²ÐµÐ±Ð¸Ð½Ð°Ñ€Ðµ Ð±ÐµÑÐ¿Ð»Ð°Ñ‚Ð½Ð¾Ðµ. ÐžÐ±Ñ‰ÐµÐµ Ð²Ñ€ÐµÐ¼Ñ &amp;ndash; 1,5 Ñ‡Ð°ÑÐ°.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð”Ð»Ñ ÑƒÑ‡Ð°ÑÑ‚Ð¸Ñ Ð² Ð²ÐµÐ±Ð¸Ð½Ð°Ñ€Ðµ Ð½ÑƒÐ¶Ð½Ð¾ Ð¿Ñ€ÐµÐ´Ð²Ð°Ñ€Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð·Ð°Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ Ð¿Ð¾ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰ÐµÐ¹ ÑÑÑ‹Ð»ÐºÐµ:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;https://register.gotowebinar.com/register/1867440656526225932&quot;&gt;https://register.gotowebinar.com/register/1867440656526225932&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð˜Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸Ñ Ð¿Ð¾ Ð¿Ð¾Ð´ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¸ÑŽ Ðº Ð²ÐµÐ±Ð¸Ð½Ð°Ñ€Ñƒ:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; title=&quot;blocked::https://www.1c.ru/news/events/webinar/instr.pdf&quot; href=&quot;https://www.1c.ru/news/events/webinar/instr.pdf&quot; target=&quot;_blank&quot; rel=&quot;noopener&quot;&gt;https://www.1c.ru/news/events/webinar/instr.pdf&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÑ€Ð¸ Ð²Ð¾Ð·Ð½Ð¸ÐºÐ½Ð¾Ð²ÐµÐ½Ð¸Ð¸ Ð²Ð¾Ð¿Ñ€Ð¾ÑÐ¾Ð² Ð¿Ð¾ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð½Ð¾Ð¼Ñƒ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ñƒ Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ñ‚ÑŒÑÑ Ð½Ð° Ð»Ð¸Ð½Ð¸ÑŽ ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ñ†Ð¸Ð¹:&lt;/p&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 20px 20px; zoom: 1; color: #333333; font-size: 13px;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð¿Ð¾Ñ‡Ñ‚Ð°:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;mailto:1c@sgu-infocom.ru&quot;&gt;1c@sgu-infocom.ru&lt;/a&gt;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½: +7 499 700-00-65&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÑÐµÑ€Ð²Ð¸Ñ Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ðµ 1Ð¡-ÐšÐ¾Ð½Ð½ÐµÐºÑ‚ &amp;ndash; &quot;Ð›Ðš ÐžÑ‚Ñ€Ð°ÑÐ»ÐµÐ²Ñ‹Ðµ Ñ€ÐµÑˆÐµÐ½Ð¸Ñ Ð»Ð¸Ð½ÐµÐ¹ÐºÐ¸ 1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚&quot;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½Ð¾Ðµ Ð¾Ð¿Ð¸ÑÐ°Ð½Ð¸Ðµ Ð²Ð¾Ð·Ð¼Ð¾Ð¶Ð½Ð¾ÑÑ‚ÐµÐ¹ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð½Ð¾Ð³Ð¾ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð° &quot;1Ð¡:Ð£Ð½Ð¸Ð²ÐµÑ€ÑÐ¸Ñ‚ÐµÑ‚ ÐŸÐ ÐžÐ¤&quot; Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ Ð¾Ñ‚Ñ€Ð°ÑÐ»ÐµÐ²Ñ‹Ñ… Ñ€ÐµÑˆÐµÐ½Ð¸Ð¹ Ñ„Ð¸Ñ€Ð¼Ñ‹ &quot;1Ð¡&quot;:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;https://solutions.1c.ru/catalog/university-prof&quot;&gt;https://solutions.1c.ru/catalog/university-prof&lt;/a&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÑ€Ð¸ Ð²Ð¾Ð·Ð½Ð¸ÐºÐ½Ð¾Ð²ÐµÐ½Ð¸Ð¸ Ð²Ð¾Ð¿Ñ€Ð¾ÑÐ¾Ð² Ð¿Ð¾ Ð²ÐµÐ±Ð¸Ð½Ð°Ñ€Ñƒ Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ñ‚ÑŒÑÑ Ð² ÐºÐ¾Ð¼Ð¿Ð°Ð½Ð¸ÑŽ &quot;1Ð¡&quot; Ðº Ð Ð¾Ð´ÑŽÐºÐ¾Ð²Ñƒ ÐÐ»ÐµÐºÑÐ°Ð½Ð´Ñ€Ñƒ Ð¿Ð¾ Ñ‚ÐµÐ»ÐµÑ„Ð¾Ð½Ñƒ: +7 (910) 240-95-55 Ð¸ Ð°Ð´Ñ€ÐµÑÑƒ:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;mailto:roda@1c.ru&quot;&gt;roda@1c.ru&lt;/a&gt;.&lt;/p&gt;', '2022-02-20 12:09:24', 0),
(16, 12, 'ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½. ÐÐ¾Ð²Ñ‹Ð¹ Ð°Ð²Ñ‚Ð¾Ñ€ÑÐºÐ¸Ð¹ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ ÐºÑƒÑ€Ñ &quot;ÐŸÐ¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ° Ðº ÑÐºÐ·Ð°Ð¼ÐµÐ½Ñƒ 1Ð¡:Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ Ð¿Ð¾ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot; Ð² Ð£Ñ‡ÐµÐ±Ð½Ð¾Ð¼ Ñ†ÐµÐ½Ñ‚Ñ€Ðµ 1Ð¡ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½ Ñ 30 Ð¼Ð°Ñ Ð¿Ð¾ 2 Ð¸ÑŽÐ½Ñ 2022 Ð³Ð¾Ð´Ð°', '&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð£Ñ‡ÐµÐ±Ð½Ñ‹Ð¹ Ñ†ÐµÐ½Ñ‚Ñ€ &quot;1Ð¡ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½&quot;&lt;/strong&gt;&amp;nbsp;ÑÐ¾Ð¾Ð±Ñ‰Ð°ÐµÑ‚ Ð¾ Ð²Ñ‹Ð¿ÑƒÑÐºÐµ Ð½Ð¾Ð²Ð¾Ð³Ð¾ Ð°Ð²Ñ‚Ð¾Ñ€ÑÐºÐ¾Ð³Ð¾ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð¾Ð³Ð¾ ÐºÑƒÑ€ÑÐ°&amp;nbsp;&lt;strong&gt;ÐŸÐ¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ° Ðº ÑÐºÐ·Ð°Ð¼ÐµÐ½Ñƒ 1Ð¡:Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ Ð¿Ð¾ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;&lt;/strong&gt;&amp;nbsp;Ð¸ Ð¿Ñ€Ð¸Ð³Ð»Ð°ÑˆÐ°ÐµÑ‚ Ð²Ð°Ñ Ð¿Ñ€Ð¸Ð½ÑÑ‚ÑŒ ÑƒÑ‡Ð°ÑÑ‚Ð¸Ðµ&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;Ð² Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ð¸ Ñ 30 Ð¼Ð°Ñ Ð¿Ð¾ 2 Ð¸ÑŽÐ½Ñ 2022 Ð³Ð¾Ð´Ð°.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÐºÑƒÑ€ÑÐ°&lt;/strong&gt;: Ð½Ð° ÐºÑƒÑ€ÑÐµ ÑÐ»ÑƒÑˆÐ°Ñ‚ÐµÐ»Ð¸ ÑƒÐ·Ð½Ð°ÑŽÑ‚ Ñ‚Ñ€ÐµÐ±Ð¾Ð²Ð°Ð½Ð¸Ñ Ðº ÑƒÑÐ¿ÐµÑˆÐ½Ð¾Ð¹ ÑÐ´Ð°Ñ‡Ðµ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð° &quot;Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚- ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;. ÐžÑÐ²Ð¾ÑÑ‚ Ð¼ÐµÑ‚Ð¾Ð´Ð¸ÐºÑƒ Ñ€ÐµÑˆÐµÐ½Ð¸Ñ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð³Ð¾ Ð±Ð¸Ð»ÐµÑ‚Ð° Ð¸ Ð¿Ñ€Ð¾Ñ€ÐµÑˆÐ°ÑŽÑ‚ Ð¸Ð»Ð»ÑŽÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ Ð±Ð¸Ð»ÐµÑ‚Ñ‹.&lt;/p&gt;', '&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð¢Ñ€ÐµÐ±Ð¾Ð²Ð°Ð½Ð¸Ñ Ðº ÑÐ»ÑƒÑˆÐ°Ñ‚ÐµÐ»ÑÐ¼ ÐºÑƒÑ€ÑÐ°&lt;/strong&gt;:&lt;/p&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 20px 20px; zoom: 1; color: #333333; font-size: 13px;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐŸÑ€Ð¾Ð´Ð²Ð¸Ð½ÑƒÑ‚Ñ‹Ð¹ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð½Ñ‹Ñ… Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ‚Ð¾Ð² 1Ð¡, Ð² Ñ‚Ð¾Ð¼ Ñ‡Ð¸ÑÐ»Ðµ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð£Ñ‡Ð°ÑÑ‚Ð½Ð¸Ðº ÐºÑƒÑ€ÑÐ° Ð¿Ð¾Ð½Ð¸Ð¼Ð°ÐµÑ‚ Ð¸ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¿Ñ€Ð¸Ð½Ð¸Ð¼Ð°ÐµÑ‚ ÑÑ‚Ð°Ð½Ð´Ð°Ñ€Ñ‚Ñ‹, Ñ€ÐµÐ³Ð»Ð°Ð¼ÐµÐ½Ñ‚Ð¸Ñ€ÑƒÑŽÑ‰Ð¸Ðµ Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€ÑÐºÐ¾Ð³Ð¾ ÑƒÑ‡ÐµÑ‚Ð° Ð½Ð° Ð¿Ñ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ð¸, Ð° Ñ‚Ð°ÐºÐ¶Ðµ Ð½Ð¾Ñ€Ð¼Ð°Ñ‚Ð¸Ð²Ð½Ð¾-Ð¿Ñ€Ð°Ð²Ð¾Ð²Ñ‹Ðµ Ð°ÐºÑ‚Ñ‹, Ñ€ÐµÐ³ÑƒÐ»Ð¸Ñ€ÑƒÑŽÑ‰Ð¸Ðµ Ð½Ð°Ð»Ð¾Ð³Ð¾Ð²Ð¾Ðµ Ð·Ð°ÐºÐ¾Ð½Ð¾Ð´Ð°Ñ‚ÐµÐ»ÑŒÑÑ‚Ð²Ð¾ Ð² Ð ÐµÑÐ¿ÑƒÐ±Ð»Ð¸ÐºÐµ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐŸÑ€ÐµÐ´Ð²Ð°Ñ€Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ Ð¿Ñ€Ð¾Ñ…Ð¾Ð¶Ð´ÐµÐ½Ð¸Ðµ ÐºÑƒÑ€ÑÐ° &quot;1Ð¡:ÐŸÑ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ 8. Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°. ÐŸÑ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÐµÐ½Ð¸Ðµ Ñ‚Ð¸Ð¿Ð¾Ð²Ð¾Ð¹ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸&quot; Ð±ÑƒÐ´ÐµÑ‚ Ð¿Ð»ÑŽÑÐ¾Ð¼ Ð² Ñ€Ð°Ð¼ÐºÐ°Ñ… Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ¸ Ðº ÑÐºÐ·Ð°Ð¼ÐµÐ½Ñƒ.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;ÐšÑ€Ð°Ñ‚ÐºÐ¾Ðµ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ ÐºÑƒÑ€ÑÐ°:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 20px 20px; zoom: 1; color: #333333; font-size: 13px;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐžÑÐ½Ð¾Ð²Ð½Ñ‹Ðµ Ñ‚Ñ€ÐµÐ±Ð¾Ð²Ð°Ð½Ð¸Ñ Ðº ÑÐºÐ·Ð°Ð¼ÐµÐ½Ñƒ &quot;1Ð¡:Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ Ð¿Ð¾ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ 1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;, Ð¿Ð¾Ñ€ÑÐ´Ð¾Ðº Ð¿Ñ€Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ñ, Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ñ‹ Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ¸, &quot;ÑÐµÐºÑ€ÐµÑ‚Ñ‹&quot; ÑƒÑÐ¿ÐµÑˆÐ½Ð¾Ð¹ ÑÐ´Ð°Ñ‡Ð¸, Ñ‡ÐµÐ³Ð¾ Ð½Ðµ Ð½ÑƒÐ¶Ð½Ð¾ Ð¶Ð´Ð°Ñ‚ÑŒ Ð½Ð° ÑÐºÐ·Ð°Ð¼ÐµÐ½Ðµ.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð¸ Ñ€Ð°ÑÑ‡ÐµÑ‚ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð½Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹, Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ€ÐµÐ³Ð»Ð°Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð¾Ð³Ð¾ Ð½Ð°Ð»Ð¾Ð³Ð¾Ð²Ð¾Ð³Ð¾ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð° 200.00 &quot;Ð”ÐµÐºÐ»Ð°Ñ€Ð°Ñ†Ð¸Ñ Ð¿Ð¾ Ð¸Ð½Ð´Ð¸Ð²Ð¸Ð´ÑƒÐ°Ð»ÑŒÐ½Ð¾Ð¼Ñƒ Ð¿Ð¾Ð´Ð¾Ñ…Ð¾Ð´Ð½Ð¾Ð¼Ñƒ Ð½Ð°Ð»Ð¾Ð³Ñƒ Ð¸ ÑÐ¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾Ð¼Ñƒ Ð½Ð°Ð»Ð¾Ð³Ñƒ&quot;.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð¸ ÑƒÑ‡ÐµÑ‚ ÐÐ”Ð¡, Ñ„Ð¾Ñ€Ð¼Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ñ€ÐµÐ³Ð»Ð°Ð¼ÐµÐ½Ñ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð¾Ð³Ð¾ Ð½Ð°Ð»Ð¾Ð³Ð¾Ð²Ð¾Ð³Ð¾ Ð¾Ñ‚Ñ‡ÐµÑ‚Ð° 300.00 &quot;Ð”ÐµÐºÐ»Ð°Ñ€Ð°Ñ†Ð¸Ñ Ð¿Ð¾ Ð½Ð°Ð»Ð¾Ð³Ñƒ Ð½Ð° Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð½ÑƒÑŽ ÑÑ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚ÑŒ&quot;.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²ÐµÐ½Ð½Ð¾Ð³Ð¾ ÑƒÑ‡ÐµÑ‚Ð°. Ð Ð°ÑÑ‡ÐµÑ‚ Ð¿Ñ€Ð¾Ð¸Ð·Ð²Ð¾Ð´ÑÑ‚Ð²ÐµÐ½Ð½Ð¾Ð¹ ÑÐµÐ±ÐµÑÑ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚Ð¸ Ð¸ Ð²Ñ‹Ð¿ÑƒÑÐº Ð³Ð¾Ñ‚Ð¾Ð²Ð¾Ð¹ Ð¿Ñ€Ð¾Ð´ÑƒÐºÑ†Ð¸Ð¸.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐÐ°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸ ÑƒÑ‡ÐµÑ‚Ð° Ð¾ÑÐ½Ð¾Ð²Ð½Ñ‹Ñ… ÑÑ€ÐµÐ´ÑÑ‚Ð². Ð Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€Ð¸Ð¼ Ð¾Ð¿ÐµÑ€Ð°Ñ†Ð¸Ð¸ Ð¿Ð¾ ÐºÐ¾Ð¼Ð¿Ð»ÐµÐºÑ‚Ð°Ñ†Ð¸Ð¸, Ð¼Ð¾Ð´ÐµÑ€Ð½Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ð¸ Ñ€ÐµÑÑ‚Ñ€ÑƒÐºÑ‚ÑƒÑ€Ð¸Ð·Ð°Ñ†Ð¸Ð¸ Ð¾ÑÐ½Ð¾Ð²Ð½Ñ‹Ñ… ÑÑ€ÐµÐ´ÑÑ‚Ð².&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;ÐŸÐ¾Ð´Ð²ÐµÐ´ÐµÐ½Ð¸Ðµ Ð¸Ñ‚Ð¾Ð³Ð¾Ð² Ð¿Ñ€Ð¾Ð²ÐµÐ´ÐµÐ½Ð½Ð¾Ð³Ð¾ ÐºÑƒÑ€ÑÐ°. ÐšÐ°ÐºÐ¸Ðµ Ð·Ð½Ð°Ð½Ð¸Ñ, ÑƒÐ¼ÐµÐ½Ð¸Ñ, Ð½Ð°Ð²Ñ‹ÐºÐ¸ Ð¿Ñ€Ð¸Ð¾Ð±Ñ€ÐµÑ‚ÐµÐ½Ñ‹ Ð¸ ÐºÐ°Ðº Ð¸Ð¼Ð¸ Ñ€Ð°Ð·ÑƒÐ¼Ð½Ð¾ Ð²Ð¾ÑÐ¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÑŒÑÑ Ð¿Ñ€Ð¸ Ð¿Ð¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐµ Ð¸ ÑÐ´Ð°Ñ‡Ðµ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°, Ð° Ñ‚Ð°ÐºÐ¶Ðµ Ð² Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ð¾Ð¹ Ð´ÐµÑÑ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚Ð¸.&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð§Ñ‚Ð¾ Ð´ÐµÐ½ÑŒ Ð³Ñ€ÑÐ´ÑƒÑ‰Ð¸Ð¹ Ð½Ð°Ð¼ Ð³Ð¾Ñ‚Ð¾Ð²Ð¸Ñ‚: Ð±ÑƒÐ´ÑƒÑ‰ÐµÐµ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð° &quot;1Ð¡:Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚&quot; Ð¿Ð¾ Ð²Ð½ÐµÐ´Ñ€ÐµÐ½Ð¸ÑŽ Ð¿Ñ€Ð¸ÐºÐ»Ð°Ð´Ð½Ð¾Ð³Ð¾ Ñ€ÐµÑˆÐµÐ½Ð¸Ñ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8&quot;.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚:&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 20px 20px; zoom: 1; color: #333333; font-size: 13px;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;16 Ð°ÐºÐ°Ð´ÐµÐ¼Ð¸Ñ‡ÐµÑÐºÐ¸Ñ… Ñ‡Ð°ÑÐ¾Ð²;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð¾Ð½Ð»Ð°Ð¹Ð½-Ñ‚Ñ€Ð°Ð½ÑÐ»ÑÑ†Ð¸Ñ;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð´Ð°Ñ‚Ñ‹ Ð·Ð°Ð½ÑÑ‚Ð¸Ð¹: Ñ 30 Ð¼Ð°Ñ Ð¿Ð¾ 2 Ð¸ÑŽÐ½Ñ 2022 Ð³Ð¾Ð´Ð° Ñ 09:30 Ð´Ð¾ 12:30 Ñ‡.;&lt;/li&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ Ð±ÑƒÐ´ÐµÑ‚ Ð¿Ñ€Ð¾Ñ…Ð¾Ð´Ð¸Ñ‚ÑŒ Ð½Ð° Ð´ÐµÐ¼Ð¾Ð½ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ Ð±Ð°Ð·Ðµ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð¡Ñ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚ÑŒ ÐºÑƒÑ€ÑÐ°:&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;52&amp;nbsp;000 Ñ‚ÐµÐ½Ð³Ðµ&lt;/strong&gt;&amp;nbsp;Ð´Ð»Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÐµÐ¹; Ð´Ð»Ñ Ñ„Ð¸Ñ€Ð¼-Ð¿Ð°Ñ€Ñ‚Ð½ÐµÑ€Ð¾Ð² &amp;ndash;&amp;nbsp;&lt;strong&gt;47&lt;/strong&gt;&amp;nbsp;&lt;strong&gt;000 Ñ‚ÐµÐ½Ð³Ðµ&lt;/strong&gt;. Ð’ ÑÑ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚ÑŒ ÐºÑƒÑ€ÑÐ° Ð²ÐºÐ»ÑŽÑ‡ÐµÐ½Ñ‹ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ‹Ðµ Ð¼ÐµÑ‚Ð¾Ð´Ð¸Ñ‡ÐµÑÐºÐ¸Ðµ Ð¼Ð°Ñ‚ÐµÑ€Ð¸Ð°Ð»Ñ‹ Ð¿Ð¾ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð¾Ð¼Ñƒ Ð°Ð²Ñ‚Ð¾Ñ€ÑÐºÐ¾Ð¼Ñƒ ÐºÑƒÑ€ÑÑƒ &quot;ÐŸÐ¾Ð´Ð³Ð¾Ñ‚Ð¾Ð²ÐºÐ° Ðº ÑÐºÐ·Ð°Ð¼ÐµÐ½Ñƒ &quot;Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot; Ð¸ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ð¾Ð¼Ñƒ ÐºÑƒÑ€ÑÑƒ &quot;1Ð¡:ÐŸÑ€ÐµÐ´Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ 8. Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°. ÐŸÑ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¾Ðµ Ð¿Ñ€Ð¸Ð¼ÐµÐ½ÐµÐ½Ð¸Ðµ Ñ‚Ð¸Ð¿Ð¾Ð²Ð¾Ð¹ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸. Ð ÐµÐ´Ð°ÐºÑ†Ð¸Ñ 3.0&quot;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð’Ð½Ð¸Ð¼Ð°Ð½Ð¸Ðµ! Ð’Ð¸Ð´ÐµÐ¾Ð·Ð°Ð¿Ð¸ÑÑŒ Ðº ÐºÑƒÑ€ÑÑƒ Ð½Ðµ Ð²ÐµÐ´ÐµÑ‚ÑÑ Ð¸ Ð½Ðµ Ð¿Ñ€ÐµÐ´Ð¾ÑÑ‚Ð°Ð²Ð»ÑÐµÑ‚ÑÑ.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÐ¾ Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ð½Ð¸Ð¸ Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ñ ÑÐ»ÑƒÑˆÐ°Ñ‚ÐµÐ»ÑÐ¼ Ð²Ñ‹ÑÑ‹Ð»Ð°ÐµÑ‚ÑÑ ÑÐ²Ð¸Ð´ÐµÑ‚ÐµÐ»ÑŒÑÑ‚Ð²Ð¾ Ñ„Ð¸Ñ€Ð¼Ñ‹ &quot;1Ð¡&quot; ÐµÐ´Ð¸Ð½Ð¾Ð³Ð¾ Ð¾Ð±Ñ€Ð°Ð·Ñ†Ð° Ð¾ Ñ‚Ð¾Ð¼, Ñ‡Ñ‚Ð¾ Ð¿Ñ€Ð¾ÑÐ»ÑƒÑˆÐ°Ð½ Ð°Ð²Ñ‚Ð¾Ñ€ÑÐºÐ¸Ð¹ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ ÐºÑƒÑ€Ñ.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÐ¾ÑÐ»Ðµ Ð¿Ñ€Ð¾Ñ…Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ ÐºÑƒÑ€ÑÐ° Ñ€ÐµÐºÐ¾Ð¼ÐµÐ½Ð´ÑƒÐµÐ¼ ÑÐ´Ð°Ñ‚ÑŒ ÑÐºÐ·Ð°Ð¼ÐµÐ½&amp;nbsp;&lt;strong&gt;&quot;Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ ÐºÐ¾Ð½Ñ„Ð¸Ð³ÑƒÑ€Ð°Ñ†Ð¸Ð¸ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÐ¾Ð´Ñ€Ð¾Ð±Ð½Ð°Ñ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ð¸ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð° Ð¸ Ð¿Ñ€Ð¸Ð¼ÐµÑ€Ñ‹ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ñ… Ð·Ð°Ð´Ð°Ð½Ð¸Ð¹ Ñ€Ð°Ð·Ð¼ÐµÑ‰ÐµÐ½Ñ‹ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ Ñ„Ð¸Ñ€Ð¼Ñ‹ &quot;1Ð¡&quot;:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;https://www.1c.ru/rus/partners/training/questions.htm&quot;&gt;https://www.1c.ru/rus/partners/training/questions.htm&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð¡Ñ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚ÑŒ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð¾Ð²:&lt;/p&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 20px 20px; zoom: 1; color: #333333; font-size: 13px;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð´Ð¸ÑÑ‚Ð°Ð½Ñ†Ð¸Ð¾Ð½Ð½Ð¾:&lt;/li&gt;\r\n&lt;ul style=&quot;padding: 0px; margin: 0px 0px 0px 20px; zoom: 1;&quot;&gt;\r\n&lt;li style=&quot;line-height: 20px;&quot;&gt;Ð½Ð° Ð±Ð°Ð·Ðµ Ð´Ð¸ÑÑ‚Ñ€Ð¸Ð±ÑŒÑŽÑ‚Ð¾Ñ€Ð¾Ð² &amp;ndash; 22 200 Ñ‚Ð³. Ð¡Ñ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚ÑŒ ÑƒÐºÐ°Ð·Ð°Ð½Ð° Ñ ÑƒÑ‡ÐµÑ‚Ð¾Ð¼ ÐÐ”Ð¡ 12%.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;/ul&gt;\r\n&lt;p style=&quot;margin: 0px 0px 10px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ Ð´Ð¸ÑÑ‚Ð°Ð½Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ñ… ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð¾Ð² Ð¾Ð¿ÑƒÐ±Ð»Ð¸ÐºÐ¾Ð²Ð°Ð½Ð¾ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ Ñ„Ð¸Ñ€Ð¼Ñ‹ &quot;1Ð¡&quot;:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;https://www.1c.ru/spec&quot;&gt;https://www.1c.ru/spec&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;Ð”Ð¾Ð¿ÑƒÑÐº Ðº &quot;1Ð¡:Ð¡Ð¿ÐµÑ†Ð¸Ð°Ð»Ð¸ÑÑ‚-ÐºÐ¾Ð½ÑÑƒÐ»ÑŒÑ‚Ð°Ð½Ñ‚ Ð¿Ð¾ Ð²Ð½ÐµÐ´Ñ€ÐµÐ½Ð¸ÑŽ Ð¿Ñ€Ð¸ÐºÐ»Ð°Ð´Ð½Ð¾Ð³Ð¾ Ñ€ÐµÑˆÐµÐ½Ð¸Ñ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot; Ð¾ÑÑƒÑ‰ÐµÑÑ‚Ð²Ð»ÑÐµÑ‚ÑÑ Ð¿Ñ€Ð¸ Ð½Ð°Ð»Ð¸Ñ‡Ð¸Ð¸ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð° &quot;1Ð¡:ÐŸÑ€Ð¾Ñ„ÐµÑÑÐ¸Ð¾Ð½Ð°Ð»&quot; Ð¿Ð¾ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ðµ &quot;1Ð¡:Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€Ð¸Ñ 8 Ð´Ð»Ñ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½Ð°&quot;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;Ð—Ð°ÑÐ²ÐºÐ¸ Ð½Ð° Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ&lt;/strong&gt;&amp;nbsp;Ð¿Ñ€Ð¾ÑÐ¸Ð¼ Ð·Ð°Ð¿Ð¾Ð»Ð½ÑÑ‚ÑŒ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ &quot;1Ð¡&quot; ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;https://1c.kz/training/index.php&quot;&gt;https://1c.kz/training/index.php&lt;/a&gt;&amp;nbsp;Ð»Ð¸Ð±Ð¾ Ð¿Ñ€Ð¸ÑÑ‹Ð»Ð°Ñ‚ÑŒ Ð¿Ð¾ Ð¿Ð¾Ñ‡Ñ‚Ðµ:&amp;nbsp;&lt;a style=&quot;color: #c4161c; text-decoration-line: none; outline: none !important;&quot; href=&quot;mailto:training@1c.kz&quot;&gt;training@1c.kz&lt;/a&gt;.&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;&lt;strong&gt;ÐžÑ€Ð³Ð°Ð½Ð¸Ð·Ð°Ñ‚Ð¾Ñ€ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ: ÐŸÑ€ÐµÐ´ÑÑ‚Ð°Ð²Ð¸Ñ‚ÐµÐ»ÑŒÑÑ‚Ð²Ð¾ &quot;1Ð¡ ÐšÐ°Ð·Ð°Ñ…ÑÑ‚Ð°Ð½&quot;.&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p style=&quot;margin: 1.8em 0px; line-height: 1.4em; color: #333333; font-size: 13px;&quot;&gt;ÐŸÐ¾ Ð²ÑÐµÐ¼ Ð²Ð¾Ð¿Ñ€Ð¾ÑÐ°Ð¼ Ð¾Ð±Ñ€Ð°Ñ‰Ð°Ñ‚ÑŒÑÑ Ð¿Ð¾ Ñ‚ÐµÐ». +7 (7172) 95-42-40 (Ð²Ð½. 5).&lt;/p&gt;', '2022-02-20 12:10:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tweet_user_likes`
--

CREATE TABLE `tweet_user_likes` (
  `id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `avatar`) VALUES
(12, 'admin@admin.com', '00ea1da4192a2030f9ae023de3b3143ed647bbab', 'ÐÐ´Ð¼Ð¸Ð½', 'avatars/74e86352bacba5078f612cbe0531f0b636f76b31.jpg'),
(13, 'indira@mail.ru', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'Indira', 'avatars/default.png');

-- --------------------------------------------------------

--
-- Table structure for table `workers`
--

CREATE TABLE `workers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1cform`
--
ALTER TABLE `1cform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweet_user_likes`
--
ALTER TABLE `tweet_user_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1cform`
--
ALTER TABLE `1cform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tweet_user_likes`
--
ALTER TABLE `tweet_user_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `workers`
--
ALTER TABLE `workers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
