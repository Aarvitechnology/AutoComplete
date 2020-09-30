-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 02:35 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `signin_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_id`, `user_id`, `comment`, `is_active`) VALUES
(1, 2, 'Client Page by Comment', 1),
(2, 1, 'comment with client', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sign_up_table`
--

CREATE TABLE `sign_up_table` (
  `sign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_1` varchar(255) NOT NULL,
  `image_2` varchar(255) NOT NULL,
  `verify_msg` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sign_up_table`
--

INSERT INTO `sign_up_table` (`sign_id`, `user_id`, `image_1`, `image_2`, `verify_msg`) VALUES
(1, 2, '2-a.jpg', '2-b.jpg', 1),
(2, 1, '1-11.jpg', '1-12.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`) VALUES
(1, 'test'),
(2, 'demo'),
(3, 'Developer'),
(4, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`, `image`) VALUES
(1, 'yssyogesh', 'Yogesh Singh', '12345', 'images/20200907081441brake.png'),
(2, 'sona', 'Sonarika Bhadoria', '123456', 'images/20200907081441brake.png'),
(3, 'vishal', 'Vishal Sahu', '32145', 'images/20200907081441brake.png'),
(4, 'sunil', 'Sunil singh', '787945', 'images/20200907081441brake.png'),
(5, 'vijay', 'Vijay mourya', '147526', 'images/20200907081441brake.png'),
(6, 'anil', 'Anil singh', '235412', 'images/20200907081441brake.png'),
(7, 'jiten', 'jitendra singh', '12378', 'images/20200907081441brake.png'),
(8, 'vijay', 'Vijay Shah', '14752654', 'images/20200907081441brake.png'),
(9, 'anil', 'Anil Surya', '23541254', 'images/20200907081441brake.png'),
(10, 'jiten', 'jitendra Jagjit', '12378', 'images/20200907081441brake.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `sign_up_table`
--
ALTER TABLE `sign_up_table`
  ADD PRIMARY KEY (`sign_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sign_up_table`
--
ALTER TABLE `sign_up_table`
  MODIFY `sign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
