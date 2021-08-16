-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--
create database soft_project;
use soft_project;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` int(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `hashed_password`) VALUES
(5, 'kanon', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`) VALUES
('BCS', 'BCS'),
('GRE', 'GRE'),
('VARSITY COACHING', 'VARSITY COACHING');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `test_id` int(100) DEFAULT NULL,
  `mark` varchar(10) DEFAULT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `user_id`, `test_id`, `mark`, `time`) VALUES
(1, 2, 1, '0', '04/19/19 10:38:38 pm'),
(2, 2, 2, '10', '04/19/19 10:38:53 pm'),
(3, 2, 3, '20', '04/20/19 08:28:33 am'),
(4, 2, 4, '20', '04/20/19 08:34:01 am'),
(5, 2, 5, '10', '04/20/19 08:47:48 am'),
(6, 2, 6, '0', '04/20/19 08:48:43 am'),
(7, 2, 6, '0', '04/20/19 08:48:43 am'),
(8, 2, 7, '10', '04/20/19 08:49:11 am'),
(9, 2, 8, '0', '04/20/19 08:49:31 am'),
(10, 3, 9, '0', '04/20/19 08:56:23 am'),
(11, 3, 10, '10', '04/20/19 08:56:40 am'),
(12, 2, 11, '20', '04/20/19 12:33:47 pm'),
(13, 2, 12, '20', '04/20/19 12:37:56 pm'),
(14, 2, 13, '0', '04/20/19 12:38:24 pm'),
(15, 2, 15, '10', '10/28/19 11:29:52 pm'),
(16, 2, 15, '10', '10/28/19 11:29:52 pm'),
(17, 2, 16, '10', '11/19/19 12:39:02 am');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `q_desc` varchar(200) NOT NULL,
  `ans1` varchar(100) NOT NULL,
  `ans2` varchar(100) NOT NULL,
  `ans3` varchar(100) NOT NULL,
  `ans4` varchar(100) NOT NULL,
  `true_ans` varchar(100) NOT NULL,
  `difficulty` tinyint(1) NOT NULL,
  `course_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `q_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `difficulty`, `course_id`) VALUES
(1, '1. à¦²à¦°à§à¦¡ à¦•à§à¦¯à¦¾à¦¨à¦¿à¦‚ à¦­à¦¾à¦°à¦¤ à¦‰à¦ªà¦®à¦¹à¦¾à¦¦à§‡à¦¶à§‡ à¦ªà§à¦°à¦¥à¦® à¦•à§‹à¦¨ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾ à¦šà¦¾à¦²à§ à¦•à¦°à§‡à¦¨? ', 'à¦šà¦¿à¦°à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¬à¦¨à§à¦¦à§‹à¦¬à¦¸à§à¦¥', 'à¦¦à§à¦¬à§ˆà¦¤ à¦¶à¦¾à¦¸à¦¨', 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦ªà§à¦²à¦¿à¦¶', 'à¦ªà§à¦²à¦¿à¦¶', 1, '1'),
(2, '1. à¦²à¦°à§à¦¡ à¦•à§à¦¯à¦¾à¦¨à¦¿à¦‚ à¦­à¦¾à¦°à¦¤ à¦‰à¦ªà¦®à¦¹à¦¾à¦¦à§‡à¦¶à§‡ à¦ªà§à¦°à¦¥à¦® à¦•à§‹à¦¨ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾ à¦šà¦¾à¦²à§ à¦•à¦°à§‡à¦¨? ', 'à¦šà¦¿à¦°à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¬à¦¨à§à¦¦à§‹à¦¬à¦¸à§à¦¥', 'à¦¦à§à¦¬à§ˆà¦¤ à¦¶à¦¾à¦¸à¦¨', 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦ªà§à¦²à¦¿à¦¶', 'à¦ªà§à¦²à¦¿à¦¶', 1, '1'),
(3, ' à¦²à¦°à§à¦¡ à¦•à§à¦¯à¦¾à¦¨à¦¿à¦‚ à¦­à¦¾à¦°à¦¤ à¦‰à¦ªà¦®à¦¹à¦¾à¦¦à§‡à¦¶à§‡ à¦ªà§à¦°à¦¥à¦® à¦•à§‹à¦¨ à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾ à¦šà¦¾à¦²à§ à¦•à¦°à§‡à¦¨?à¦šà¦¿à¦°à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¬à¦¨à§à¦¦à§‹à¦¬', 'à¦šà¦¿à¦°à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¬à¦¨à§à¦¦à§‹à¦¬à¦¸à§à¦¥', 'à¦¦à§à¦¬à§ˆà¦¤ à¦¶à¦¾à¦¸à¦¨', 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦ªà§à¦²à¦¿à¦¶', 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 1, 'BCS'),
(4, 'à¦ªà¦¾à¦•à¦¿à¦¸à§à¦¤à¦¾à¦¨à§‡à¦° à¦—à¦£à¦ªà¦°à¦¿à¦·à¦¦à§‡à¦° à¦…à¦§à¦¿à¦¬à§‡à¦¶à¦¨à§‡ à¦¬à¦¾à¦‚à¦²à¦¾à¦•à§‡ à¦°à¦¾à¦·à§à¦Ÿà§à¦°à¦­à¦¾à¦·à¦¾ à¦•à¦°à¦¾à¦° à¦ªà§à¦°à¦¥à¦® à¦¦à¦¾à¦¬à§€ à¦•à§‡ à¦‰à¦¤à§', 'à¦†à¦¬à§à¦¦à§à¦² à¦®à¦¤à¦¿à¦¨', 'à¦§à§€à¦°à§‡à¦¨à§à¦¦à§à¦°à¦¨à¦¾à¦¥ à¦¦à¦¤à§à¦¤', 'à¦¶à§‡à¦°à§‡ à¦¬à¦¾à¦‚à¦²à¦¾ à¦ à¦•à§‡ à¦«à¦œà¦²à§à¦² à¦¹à¦•', 'à¦¹à§‹à¦¸à§‡à¦¨ à¦¶à¦¹à§€à¦¦ à¦¸à§‹à¦¹à¦°à¦¾à¦“à§Ÿà¦¾à¦°à§à¦¦à§€', 'à¦§à§€à¦°à§‡à¦¨à§à¦¦à§à¦°à¦¨à¦¾à¦¥ à¦¦à¦¤à§à¦¤', 1, 'BCS'),
(5, 'à¦œà§€à¦¬à¦¨à¦¢à§à¦²à§€ à¦•à¦¿? ', 'à¦à¦•à¦Ÿà¦¿ à¦‰à¦ªà¦¨à§à¦¯à¦¾à¦¸à§‡à¦° à¦¨à¦¾à¦®', 'à¦à¦•à¦Ÿà¦¿ à¦•à¦¾à¦¬à§à¦¯à¦—à§à¦°à¦¨à§à¦¥à§‡à¦° à¦¨à¦¾à¦®', 'à¦à¦•à¦Ÿà¦¿ à¦†à¦¤à§à¦®à¦œà§€à¦¬à¦¨à§€à¦° à¦¨à¦¾à¦®', 'à¦à¦•à¦Ÿà¦¿ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¨à¦¾à¦®', 'à¦à¦•à¦Ÿà¦¿ à¦‰à¦ªà¦¨à§à¦¯à¦¾à¦¸à§‡à¦° à¦¨à¦¾à¦®', 1, 'BCS'),
(6, '\"à¦¸à§‹à§Ÿà¦¾à¦š à¦…à¦¬ à¦¨à§‹ à¦—à§à¦°à¦¾à¦‰à¦¨à§à¦¡\" à¦•à§‹à¦¥à¦¾à§Ÿ à¦…à¦¬à¦¸à§à¦¥à¦¿à¦¤?', 'à¦¯à¦®à§à¦¨à¦¾ à¦¨à¦¦à§€à¦¤à§‡', 'à¦¬à¦™à§à¦—à§‹à¦ªà¦¸à¦¾à¦—à¦°à§‡', 'à¦®à§‡à¦˜à¦¨à¦¾à¦° à¦®à§‹à¦¹à¦¨à¦¾à§Ÿ', 'à¦¸à¦¨à§à¦¦à§€à¦ª à¦šà§à¦¯à¦¾à¦¨à§‡à¦²à§‡', 'à¦¬à¦™à§à¦—à§‹à¦ªà¦¸à¦¾à¦—à¦°à§‡', 1, 'BCS');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `q_id1` int(11) DEFAULT NULL,
  `q_id2` int(11) DEFAULT NULL,
  `q_id3` int(11) DEFAULT NULL,
  `q_id4` int(11) DEFAULT NULL,
  `q_id5` int(11) DEFAULT NULL,
  `q_id6` int(11) DEFAULT NULL,
  `q_id7` int(11) DEFAULT NULL,
  `q_id8` int(11) DEFAULT NULL,
  `q_id9` int(11) DEFAULT NULL,
  `q_id10` int(11) DEFAULT NULL,
  `user_answer1` varchar(50) DEFAULT NULL,
  `user_answer2` varchar(50) DEFAULT NULL,
  `user_answer3` varchar(50) DEFAULT NULL,
  `user_answer4` varchar(50) DEFAULT NULL,
  `user_answer5` varchar(50) DEFAULT NULL,
  `user_answer6` varchar(50) DEFAULT NULL,
  `user_answer7` varchar(50) DEFAULT NULL,
  `user_answer8` varchar(50) DEFAULT NULL,
  `user_answer9` varchar(50) DEFAULT NULL,
  `user_answer10` varchar(50) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `user_id`, `q_id1`, `q_id2`, `q_id3`, `q_id4`, `q_id5`, `q_id6`, `q_id7`, `q_id8`, `q_id9`, `q_id10`, `user_answer1`, `user_answer2`, `user_answer3`, `user_answer4`, `user_answer5`, `user_answer6`, `user_answer7`, `user_answer8`, `user_answer9`, `user_answer10`, `mark`, `time`) VALUES
(1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', '', '', '', '', '', '', '', '', '', NULL, '04/19/19 10:38:38 pm'),
(2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦ªà§à¦²à¦¿à¦¶', '', '', '', '', '', '', '', '', '', NULL, '04/19/19 10:38:53 pm'),
(3, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦ªà§à¦²à¦¿à¦¶', 'à¦ªà§à¦²à¦¿à¦¶', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:28:33 am'),
(4, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦ªà§à¦²à¦¿à¦¶', 'à¦ªà§à¦²à¦¿à¦¶', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:34:01 am'),
(5, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', '', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:47:48 am'),
(6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', '', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:48:43 am'),
(7, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', '', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:49:11 am'),
(8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', '', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:49:31 am'),
(9, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦ªà§à¦²à¦¿à¦¶', '', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:56:23 am'),
(10, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', '', '', '', '', '', '', '', '', '', NULL, '04/20/19 08:56:40 am'),
(11, 2, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦¶à§‡à¦°à§‡ à¦¬à¦¾à¦‚à¦²à¦¾ à¦ à¦•à§‡ à¦«à¦œà¦²à', 'à¦à¦•à¦Ÿà¦¿ à¦‰à¦ªà¦¨à§à¦¯à¦¾à¦¸à§‡à¦° à¦¨à¦¾à¦®', '', '', '', '', '', '', '', NULL, '04/20/19 12:33:47 pm'),
(12, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦¶à§‡à¦°à§‡ à¦¬à¦¾à¦‚à¦²à¦¾ à¦ à¦•à§‡ à¦«à¦œà¦²à', '', 'à¦¬à¦™à§à¦—à§‹à¦ªà¦¸à¦¾à¦—à¦°à§‡', '', '', '', '', '', '', NULL, '04/20/19 12:37:56 pm'),
(13, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 'à¦ªà§à¦²à¦¿à¦¶', 'à¦¹à§‹à¦¸à§‡à¦¨ à¦¶à¦¹à§€à¦¦ à¦¸à§‹à¦¹à¦°à¦¾à¦“à§Ÿ', 'à¦à¦•à¦Ÿà¦¿ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¨', 'à¦¸à¦¨à§à¦¦à§€à¦ª à¦šà§à¦¯à¦¾à¦¨à§‡à¦²à§‡', '', '', '', '', '', '', NULL, '04/20/19 12:38:24 pm'),
(14, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦¹à§‹à¦¸à§‡à¦¨ à¦¶à¦¹à§€à¦¦ à¦¸à§‹à¦¹à¦°à¦¾à¦“à§Ÿ', 'à¦à¦•à¦Ÿà¦¿ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¨', 'à¦®à§‡à¦˜à¦¨à¦¾à¦° à¦®à§‹à¦¹à¦¨à¦¾à§Ÿ', '', '', '', '', '', '', NULL, '10/28/19 11:29:52 pm'),
(15, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 'à¦¸à¦¤à§€à¦¦à¦¾à¦¹ à¦¨à¦¿à¦¬à¦¾à¦°à¦£', 'à¦¹à§‹à¦¸à§‡à¦¨ à¦¶à¦¹à§€à¦¦ à¦¸à§‹à¦¹à¦°à¦¾à¦“à§Ÿ', 'à¦à¦•à¦Ÿà¦¿ à¦šà¦²à¦šà§à¦šà¦¿à¦¤à§à¦°à§‡à¦° à¦¨', 'à¦®à§‡à¦˜à¦¨à¦¾à¦° à¦®à§‹à¦¹à¦¨à¦¾à§Ÿ', '', '', '', '', '', '', NULL, '10/28/19 11:29:52 pm'),
(16, 2, 3, 4, 5, 6, 0, 0, 0, 0, 0, 0, 'à¦šà¦¿à¦°à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¬à¦¨à§à¦¦à§‹à¦¬à¦¸à', 'à¦§à§€à¦°à§‡à¦¨à§à¦¦à§à¦°à¦¨à¦¾à¦¥ à¦¦à¦¤à§à¦¤', 'à¦à¦•à¦Ÿà¦¿ à¦•à¦¾à¦¬à§à¦¯à¦—à§à¦°à¦¨à§à¦¥à§‡à', 'à¦¸à¦¨à§à¦¦à§€à¦ª à¦šà§à¦¯à¦¾à¦¨à§‡à¦²à§‡', '', '', '', '', '', '', NULL, '11/19/19 12:39:02 am');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `phone` int(15) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `phone`, `mail`, `address`, `sex`, `type`, `test_id`) VALUES
(2, 'kanon', '81dc9bdb52d04dc20036dbd8313ed055', 134587656, 'b@gmail.com', 'sdfdfdsfsdf', 'male', '', 0),
(3, 'prince', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'c@gmail.com', 'dggdgfgdg', 'male', '', 0),
(4, 'monty', '81dc9bdb52d04dc20036dbd8313ed055', 2147483647, 'm@gmail.com', 'Chand housing', 'female', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
