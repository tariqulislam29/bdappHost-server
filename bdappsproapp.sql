-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 05:03 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdappsproapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `new_app`
--

CREATE TABLE `new_app` (
  `id` int(10) UNSIGNED NOT NULL,
  `reg_id` int(11) NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `sms_keyword` varchar(50) NOT NULL,
  `ussd_keyword` int(11) NOT NULL,
  `delivery_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_app`
--

INSERT INTO `new_app` (`id`, `reg_id`, `app_id`, `api_key`, `sms_keyword`, `ussd_keyword`, `delivery_time`) VALUES
(2, 2, 'demo', '123554444', '23434ddd', 34344, '06:29:00'),
(3, 2, 'app-08887', 'jdsdksjksjdskjdskdsjkdsdsdsd', '23434ddd', 87977, '16:31:00'),
(4, 2, 'app-383822', 'ffrerdfdfd', '23434ddd', 36363, '00:09:00'),
(5, 0, 'undefined', 'undefined', 'undefined', 0, '00:00:00'),
(6, 0, 'undefined', 'undefined', 'undefined', 0, '00:00:00'),
(7, 1, 'tadssd', 'dsdsd', 'dsd', 323232, '13:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `new_content`
--

CREATE TABLE `new_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `new_id` int(11) NOT NULL,
  `reg_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_table`
--

CREATE TABLE `permission_table` (
  `id` int(4) NOT NULL,
  `user_id` int(4) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `division` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `study_level` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `email`, `name`, `phone`, `gender`, `dob`, `division`, `institute`, `study_level`, `password`, `status`) VALUES
(1, 'tariqbd1998@gmail.com', 'tariq', 1625796966, 'male', '2024-01-10', 'dhaka', 'NUB', 'university', '$2a$10$HxADXcq2Qvcig1KN2PsAwODhKYF4qANXnkrir2auCrr8PNHj5ur1a', 0),
(2, 'tariq.tvsl.2021@gmail.com', 'riad', 1736283743, 'Female', '2024-01-09', 'dhaka', 'ewu', 'university', '$2a$10$BoEANpaAQJbMIJLXku5WU.2xDKL2knrMa7tXRe.qEmuj9U6FFHkRS', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_app`
--
ALTER TABLE `new_app`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_content`
--
ALTER TABLE `new_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_table`
--
ALTER TABLE `permission_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registration_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_app`
--
ALTER TABLE `new_app`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `new_content`
--
ALTER TABLE `new_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `permission_table`
--
ALTER TABLE `permission_table`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
