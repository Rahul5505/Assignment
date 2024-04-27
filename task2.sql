-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 06:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CNM` int(11) NOT NULL,
  `CNAME` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `RATING` varchar(255) DEFAULT NULL,
  `SNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CNM`, `CNAME`, `CITY`, `RATING`, `SNO`) VALUES
(201, 'HOFFMAN', 'LONDON', '100', 1001),
(202, 'GIOVANNE', 'ROME', '200', 1003),
(203, 'LIU', 'SAN JOSE', '300', 1002),
(204, 'GRASS', 'BARCELONA', '100', 1002),
(205, 'NULL', 'NULL', 'NULL', 0),
(206, 'CLEMENS', 'LONDON', '300', 1007),
(207, 'PEREIRA', 'ROME', '100', 1004),
(208, 'anant', 'rajkot', '250', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salesperson`
--

CREATE TABLE `salesperson` (
  `SNO` int(11) NOT NULL,
  `SNAME` varchar(255) DEFAULT NULL,
  `CITY` varchar(255) DEFAULT NULL,
  `COMM` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salesperson`
--

INSERT INTO `salesperson` (`SNO`, `SNAME`, `CITY`, `COMM`) VALUES
(1001, 'PEEL', 'LONDON', 0.12),
(1002, 'SERRES', 'SAN JOSE', 0.13),
(1003, 'AXELROD', 'NEW YORK', 0.1),
(1004, 'MOTIKA', 'LONDON', 0.11),
(1005, 'RAFKIN', 'BARCELONA', 0.15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `ONM` int(11) NOT NULL,
  `AMT` float DEFAULT NULL,
  `ODE` varchar(255) DEFAULT NULL,
  `CNM` int(11) DEFAULT NULL,
  `SNO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`ONM`, `AMT`, `ODE`, `CNM`, `SNO`) VALUES
(3001, 18.69, '1994-10-03', 201, 1007),
(3002, 1900.1, '1994-10-03', 207, 1004),
(3003, 767.19, '1994-10-03', 201, 1001),
(3005, 3005, '1994-10-03', 203, 1002),
(3006, 3006, '1994-10-04', 201, 1007),
(3007, 3007, '1994-10-05', 204, 1002),
(3008, 3008, '1994-10-05', 206, 1001),
(3009, 3009, '1994-10-04', 202, 1003),
(3010, 3010, '1994-10-06', 204, 1002),
(3011, 3011, '1994-10-06', 206, 1001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CNM`);

--
-- Indexes for table `salesperson`
--
ALTER TABLE `salesperson`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`ONM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CNM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `salesperson`
--
ALTER TABLE `salesperson`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `ONM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
