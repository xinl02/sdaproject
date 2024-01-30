-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 07:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sdaproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `fuelconsumption`
--

CREATE TABLE `fuelconsumption` (
  `fuelID` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `driverName` varchar(255) DEFAULT NULL,
  `fuelCost` double DEFAULT NULL,
  `fuelType` varchar(255) DEFAULT NULL,
  `vehicleNum` varchar(255) DEFAULT NULL,
  `vehicleType` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fuelconsumption`
--

INSERT INTO `fuelconsumption` (`fuelID`, `date`, `driverName`, `fuelCost`, `fuelType`, `vehicleNum`, `vehicleType`) VALUES
(9, '01/29/2024', 'Jun', 7, 'RON95', 'ABC7890', 'Axia'),
(12, '01/19/2024', 'JeongHan', 77, 'RON95', 'ABC1234', 'Car'),
(13, '01/31/2024', 'Amy Tan', 77, 'RON95', 'ABC1234', 'Car'),
(14, '01/14/2024', 'Woozi', 52, 'RON95', 'ABC1234', 'Van'),
(15, '01/31/2024', 'Amy Tan', 55, 'RON95', 'ABC7890', 'Car');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenanceID` int(11) NOT NULL,
  `vehicleType` varchar(255) DEFAULT NULL,
  `vehicleNum` varchar(255) DEFAULT NULL,
  `driverName` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `approveStatus` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`maintenanceID`, `vehicleType`, `vehicleNum`, `driverName`, `date`, `approveStatus`) VALUES
(3, 'BRV', 'ABC1234', 'Wonwoo', '2024-01-24', 'Approved'),
(10, 'BRV', 'DEF5678', 'Jun', '2024-01-11', 'Approved'),
(11, 'BRV', 'DEF5678', 'Amy Tan', '2024-01-09', 'Approved'),
(17, 'Axia', 'ABC1597', 'Amy Tan', '2024-01-24', 'Pending'),
(18, 'Lorry', 'ABC1593', 'Amy Tan', '2024-01-23', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fuelconsumption`
--
ALTER TABLE `fuelconsumption`
  ADD PRIMARY KEY (`fuelID`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenanceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fuelconsumption`
--
ALTER TABLE `fuelconsumption`
  MODIFY `fuelID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenanceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
