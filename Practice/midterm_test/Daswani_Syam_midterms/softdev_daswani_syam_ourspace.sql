-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2015 at 07:09 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `softdev_daswani_syam_ourspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `myaddress`
--

CREATE TABLE IF NOT EXISTS `myaddress` (
  `id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `middlename` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `home_address` varchar(50) DEFAULT NULL,
  `landline` varchar(20) DEFAULT NULL,
  `cellphone` varchar(29) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myaddress`
--

INSERT INTO `myaddress` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `created_at`, `home_address`, `landline`, `cellphone`) VALUES
(1, 'Syam', 'Uy Sobierra', 'Daswani', 'M', '2015-07-21 04:50:13', 'Some address', '1234567', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `mycomment`
--

CREATE TABLE IF NOT EXISTS `mycomment` (
  `id` int(11) NOT NULL,
  `myaddress_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mycomment`
--

INSERT INTO `mycomment` (`id`, `myaddress_id`, `author`, `body`, `created_at`) VALUES
(1, 1, 'Some Author', 'this is the body', '2015-07-21 04:51:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myaddress`
--
ALTER TABLE `myaddress`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycomment`
--
ALTER TABLE `mycomment`
  ADD PRIMARY KEY (`id`), ADD KEY `myaddress_id` (`myaddress_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myaddress`
--
ALTER TABLE `myaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mycomment`
--
ALTER TABLE `mycomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `mycomment`
--
ALTER TABLE `mycomment`
ADD CONSTRAINT `mycomment_ibfk_1` FOREIGN KEY (`myaddress_id`) REFERENCES `myaddress` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
