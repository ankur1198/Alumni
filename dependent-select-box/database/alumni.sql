-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 09:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `country_tb`
--

CREATE TABLE `course_tb` (
  `cid` int(11) NOT NULL,
  `cname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_tb`
--

INSERT INTO `course_tb` (`cid`, `cname`) VALUES
(1, ' BBA'),
(2, 'MBA'),
(3, 'MCA'),
(4, 'M.COM'),
(5, 'LLM(2 years'),
(6, 'LLM'),
(7,'MCA(2 years)'),
(8, 'PhD');


-- --------------------------------------------------------

--
-- Table structure for table `state_tb`
--

CREATE TABLE `batch_tb` (
  `bid` int(11) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `course` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state_tb`
--

INSERT INTO `batch_tb` (`bid`, `batch`, `course`) VALUES
(1, '2013-16', 1),
(2, '2014-17', 1),
(3, '2015-18', 1),
(4, '2016-19', 1),
(5, '2015-17', 2),
(6, '2016-18', 2),
(7, '2017-19', 2),
(8, '2018-20', 2),
(9, '2019-21', 2),
(10, '2020-22', 2),
(11, '2017-20', 3),
(12, '2018-21', 3),
(13, '2019-22', 3),
(14, '2016-18', 4),
(15, '2018-20',4),
(16, '2019-21', 4),
(17, '2020-22', 4),
(18, '2016-18', 5),
(19,  '2017-19', 5),
(20, '2018-20', 5),
(21, '2019-20', 6),
(22, '2020-21', 6),
(23, '2020-22', 7),
(24, '2017',8),
(25, '2018',8),
(26, '2019',8),
(27, '2021',8);


--
-- Indexes for dumped tables
--

--
-- Indexes for table `country_tb`
--
ALTER TABLE `course_tb`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `state_tb`
--
ALTER TABLE `batch_tb`
  ADD PRIMARY KEY (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country_tb`
--
ALTER TABLE `country_tb`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `state_tb`
--
ALTER TABLE `state_tb`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
