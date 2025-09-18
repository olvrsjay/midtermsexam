-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 18, 2025 at 04:22 AM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jaynall`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookstable`
--

DROP TABLE IF EXISTS `bookstable`;
CREATE TABLE IF NOT EXISTS `bookstable` (
  `bookID` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `publishedYear` date NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bookstable`
--

INSERT INTO `bookstable` (`bookID`, `title`, `author`, `category`, `publishedYear`) VALUES
(1, '48 Laws of Power', 'Robert Greene', 'Knowledge', '0000-00-00'),
(2, 'Rich Dad, Poor Dad', 'Robert Kiyosaki', 'Business', '0000-00-00'),
(3, '48 Laws of Power', 'Robert Greene', 'Knowledge', '0000-00-00'),
(4, 'Rich Dad, Poor Dad', 'Robert Kiyosaki', 'Business', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `borrowtable`
--

DROP TABLE IF EXISTS `borrowtable`;
CREATE TABLE IF NOT EXISTS `borrowtable` (
  `borrowID` int NOT NULL AUTO_INCREMENT,
  `bookID` int NOT NULL,
  `memberID` int NOT NULL,
  `staffID` int NOT NULL,
  `borrowDate` date NOT NULL,
  PRIMARY KEY (`borrowID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `borrowtable`
--

INSERT INTO `borrowtable` (`borrowID`, `bookID`, `memberID`, `staffID`, `borrowDate`) VALUES
(1, 342, 9102, 8941, '0000-00-00'),
(2, 678, 439832, 56739, '0000-00-00'),
(3, 342, 9102, 8941, '0000-00-00'),
(4, 678, 439832, 56739, '0000-00-00'),
(5, 342, 9102, 8941, '0000-00-00'),
(6, 678, 439832, 56739, '0000-00-00'),
(7, 342, 9102, 8941, '0000-00-00'),
(8, 678, 439832, 56739, '0000-00-00'),
(9, 342, 9102, 8941, '0000-00-00'),
(10, 678, 439832, 56739, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `memberstable`
--

DROP TABLE IF EXISTS `memberstable`;
CREATE TABLE IF NOT EXISTS `memberstable` (
  `memberID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  PRIMARY KEY (`memberID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `memberstable`
--

INSERT INTO `memberstable` (`memberID`, `name`, `Email`, `mobile`, `Adress`) VALUES
(1, 'Jay Oliveros', 'olvrsjay@gmail.com', '09934856540', 'Iloilo City'),
(2, 'Paul Basal', 'paulb@gmail.com', '09873000640', 'Pavia');

-- --------------------------------------------------------

--
-- Table structure for table `stafftable`
--

DROP TABLE IF EXISTS `stafftable`;
CREATE TABLE IF NOT EXISTS `stafftable` (
  `staffID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `position` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`staffID`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stafftable`
--

INSERT INTO `stafftable` (`staffID`, `name`, `position`, `email`, `password`) VALUES
(124, 'Uriel Lao', 'Manager', 'urielaoit@gmail.com', 'lefrereiloilo'),
(123, 'Zedrick Catuiran', 'book keeper', 'zcatuiran@usa.edu.ph', 'decahomesptown');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
