-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2022 at 03:23 PM
-- Server version: 5.5.54
-- PHP Version: 5.3.10-1ubuntu3.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tt`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `cname` varchar(30) NOT NULL,
  `sem` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  PRIMARY KEY (`cname`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cname`, `sem`, `sid`) VALUES
('CN', 5, 1),
('OOP', 3, 3),
('SS', 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `s5`
--

CREATE TABLE IF NOT EXISTS `s5` (
  `day` varchar(50) NOT NULL,
  `1` varchar(30) NOT NULL,
  `2` varchar(30) NOT NULL,
  `3` varchar(30) NOT NULL,
  `4` varchar(30) NOT NULL,
  `5` varchar(30) NOT NULL,
  `6` varchar(30) NOT NULL,
  PRIMARY KEY (`day`),
  KEY `cname` (`1`),
  KEY `2` (`2`),
  KEY `3` (`3`),
  KEY `4` (`4`),
  KEY `5` (`5`),
  KEY `6` (`6`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s5`
--

INSERT INTO `s5` (`day`, `1`, `2`, `3`, `4`, `5`, `6`) VALUES
('Fri', 'MSS', 'FLAT', 'MSS', 'SS', 'CN', 'DM'),
('Mon', 'FLAT', 'SS', 'DM', 'MM', 'CN', 'MSS'),
('Thu', 'MSS', 'MM', 'SS', 'MM', 'MINOR', 'MINOR'),
('Tue', 'CN', 'FLAT', 'MINOR', 'MINOR', 'LAB', 'LAB'),
('Wed', 'SS', 'MM', 'FLAT', 'CN', 'LAB', 'LAB');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `sid` int(11) NOT NULL,
  `sname` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`sid`, `sname`) VALUES
(1, 'jkp'),
(2, 'ypd'),
(3, 'DIVYA');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `staff` (`sid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
