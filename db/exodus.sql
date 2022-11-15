-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2022 at 04:08 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exodus`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `title` varchar(40) NOT NULL,
  `location` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `title`, `location`, `name`, `email`, `number`, `phone`, `date`, `status`) VALUES
(1, 'GISHWATI', 'mukura', 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', '4', '0781548519', '0000-00-00', ''),
(2, 'GISHWATI', 'mukura', 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', '4', '0781548519', '0000-00-00', ''),
(3, 'GISHWATI', 'mukura', 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', '4', '0781548519', '0000-00-00', ''),
(4, 'CULTURE HERITAGE', 'South provience', 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', '3', '0781548519', '0000-00-00', ''),
(5, 'CULTURE HERITAGE', 'South provience', 'irumva', 'irumva@gmail.com', '3', '0781548519', '0000-00-00', ''),
(6, 'CULTURE HERITAGE', 'South provience', 'Irumva Emmanuel', 'irumva@gmail.com', '3', '0781548519', '0000-00-00', ''),
(11, 'Nyungwe', 'south western', 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', '9', '0781548519', '0000-00-00', '1'),
(12, 'CULTURE HERITAGE', 'South provience', 'Jean claude', 'jeanclaude@gmail.com', '6', '0781548519', '2022-11-14', '0');

-- --------------------------------------------------------

--
-- Table structure for table `destination`
--

CREATE TABLE `destination` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `time` varchar(50) NOT NULL,
  `near` varchar(34) NOT NULL,
  `price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `destination`
--

INSERT INTO `destination` (`id`, `title`, `file_name`, `location`, `time`, `near`, `price`) VALUES
(6, 'Nyanza', '(17).jpg', 'kigali', '8 DAY TOUR', 'downtown', ''),
(7, 'AKAGERA', '(38).jpg', 'Eastern', '8 DAY TOUR', 'downtown', ''),
(8, 'MUHAZI', '(14).jpg', 'downtown', '8 DAY TOUR', 'kivu', ''),
(9, 'GISHWATI', '1 (4).jpg', 'downtown', '3 DAY TOUR', 'kivu', '4000'),
(10, 'volcanoes park', '(80).jpg', 'musanze', '3  DAY TOUR', 'gorillas', '5000'),
(11, 'GISHWATI', 'gishwati-forest-reserve.jpg', 'mukura', '3  DAY TOUR', 'congo', '4500'),
(12, 'AKAGERA', 'Facts-about-Akagera-National-Park.jpg', 'north_eastern ', '3  DAY TOUR', 'congo', '6000'),
(13, 'Desert', 'client-descend-at-napoleon.jpg', 'north_eastern ', '4 DAY TOUR', 'burundi', '5500'),
(14, 'Nyungwe', 'Nyungwe-forest-national-park.jpg', 'southwestern', '1 DAY TOUR', 'burundi', '5000'),
(15, 'CULTURE HERITAGE', 'gishwati-forest-reserve.jpg', 'South provience', '1 DAY TOUR', 'kivu', '4000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `comment`, `subject`, `date`, `profile`) VALUES
(1, 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', 'Known as the land of a thousand hills, Rwanda\'s stunning scenery and warm', 'greeting', '2022-11-10', ''),
(2, 'Eugene MUGIRANEZA', 'eugenemugiraneza2@gmail.com', 'Known as the land of a thousand hills, Rwanda\'s stunning scenery and warm', 'greeting', '2022-11-10', ''),
(3, 'MOSES', 'moses@gmail.com', 'thank your you have good tour', 'vistit rwanda', '2022-11-10', ''),
(4, 'irumva', 'emmanuel@gmail.com', 'qAWSEFGHJKDSDFGHGDSGFGHFG', 'visit rwanda', '2022-11-10', ''),
(5, 'Vital', 'vital@gmail.com', 'Checking the network cables, modem, and router\r\nReconnecting to Wi-Fi', 'thank', '2022-11-13', 'EUGENE.jpg'),
(6, 'isaac', 'isaac@gmail.com', 'The .dropdown class is used to indicate a dropdown menu.\r\nUse the .dropdown-menu class to actually build the dropdown menu.', 'greeting', '2022-11-13', 'veda.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(6) NOT NULL,
  `hotelName` varchar(50) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `location` varchar(30) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `near` varchar(30) NOT NULL,
  `price` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hotelName`, `file_name`, `location`, `duration`, `near`, `price`) VALUES
(18, 'UBUMWE HOTEL', 'REGACY.jpg', 'kigali', '1 Day', 'burundi', 4000),
(19, 'SERENA', 'selena1.jpg', 'kigali', '5 DAY', 'congo', 4000),
(20, 'SERENA 2', 'selena1.jpg', 'downtown', '1 Day', 'kivu', 50000),
(21, '5 SRTAR', '5 STAR.jpg', 'Gisenyi', '5 DAY', 'kivu', 3000),
(22, 'Kigali Hotel', 'kigali hotel.jpg', 'Kigali,Rwanda', '2 Day', 'T2000', 50000),
(23, 'Mille colline', 'hotel-des-mille-collines.jpg', 'kigali', '2 Day', 'downtown', 4000),
(24, 'Gisenyi', 'download (1).jfif', 'Gisenyi', '1 Day', 'rubavu', 9000),
(25, 'Radison Blue Kigali', 'radi.jpg', 'kigali', '1 Day', 'kacyiru', 3000),
(29, 'UBUMWE HOTEL555', 'radi.jpg', 'kigali', '1 Day', 'burundi', 9000),
(30, 'UBUMWE HOTEL', 'selena.jpg', 'downtown', '1 Day', 'congo', 9000),
(31, 'UBUMWE HOTEL', '5 STAR.jpg', 'kigali', '1 Day', 'downtown', 9000),
(32, 'UBUMWE HOTEL', 'download (1).jfif', 'kigali', '1 Day', 'kivu', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(12) NOT NULL,
  `Location` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `phone`, `Location`, `password`, `userType`) VALUES
(1, 'eugene', 'eugenemugiraneza2@gmail.com', 781548519, '', '123456', 'Admin'),
(3, 'clement', 'eugenemugiraneza2@gmail.com', 781548519, '', '123456', ''),
(4, 'irumva', 'emmanuel@gmail.com', 781548519, '', '12345', 'endUser'),
(5, 'emmanuel', 'eugenemugiraneza2@gmail.com', 781548519, '', '12345', 'Admin'),
(6, 'yotam', 'eugenemugiraneza2@gmail.com', 781548519, '', '12345', 'endUser'),
(7, 'Bella', 'bella@gmail.com', 781548519, 'Location', '123456', 'endUser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `destination`
--
ALTER TABLE `destination`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
