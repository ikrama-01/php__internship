-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2022 at 09:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `regno` double(20,0) NOT NULL,
  `rollno` int(6) NOT NULL,
  `branch` varchar(25) NOT NULL,
  `studentemail` varchar(25) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `studmobno` double(20,0) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pincode` int(8) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`regno`, `rollno`, `branch`, `studentemail`, `lastname`, `firstname`, `middlename`, `address`, `studmobno`, `city`, `pincode`, `gender`) VALUES
(2220210465, 60, 'IT', 'ikrama.s@somaiya.edu', 'SUNASRA', 'IKRAMA', 'ABID', 'B-606, UNITED PARK, SULTANABAD, BEHRAMBAUG, JOGESHWARI WEST, MUMBAI, 400102', 919821344877, 'mumbai', 400102, 'Male'),
(2220210466, 60, 'IT', 'ikramasunasra7860@gmail.c', 'sunasra', 'ikrama', 'abid', 'B-606, UNITED PARK, SULTANABAD, BEHRAMBAUG, JOGESHWARI WEST, MUMBAI, 400102', 19821344877, 'mumbai', 400102, 'Male'),
(2220210467, 1, 'comps', 'ikrama00001@gmail.com', 'sunasra', 'ikrama', 'abid', 'B-606, UNITED PARK, SULTANABAD, BEHRAMBAUG, JOGESHWARI WEST, MUMBAI, 400102', 9821344877, 'mumbai suburban', 400102, 'Male'),
(2220210468, 3, 'IT', 'shrikant.bhosle@somaiya.e', 'bhosle', 'shrikant', 'ankush', 'latakta mahal, bhootiya haveli, chudail ka ghar,purana  bhangla room no. 420 ', 1546978521, 'mumbai', 400102, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`email`, `username`, `password`) VALUES
('ikrama.s@somaiya.edu', 'ikrama-01', '$2y$10$oau4vaLyGarC5'),
('ikrama00001@gmail.co', 'shrikant', '$2y$10$Uwt3BtRYbyjyD'),
('shrikant.bhosle@soma', 'ikrama', '$2y$10$2EyNCYCRo2vjZ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`regno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
