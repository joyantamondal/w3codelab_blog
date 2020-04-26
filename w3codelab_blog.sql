-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 08:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w3codelab_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(16, 'Ruby'),
(17, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`) VALUES
(26, 16, 'Final', '<p>LoLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.rem ipsum dolor sit amet, consLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.ectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'upload/1c6bc738e3.png', 'admin', 'Final', '2020-04-24 07:34:08'),
(27, 16, 'last', '<p>testLoLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.rem ipsum dolor sit amet, consLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.ectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'upload/951d6f2ad5.png', 'test1', 'test1', '2020-04-25 15:41:21'),
(28, 17, 'sssssssss', '<p>ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</p>', 'upload/47127f4fd7.png', 'dd', 'dd', '2020-04-26 15:47:19'),
(29, 16, 'POP UP', '<p>bbbbbbbbbbbbbbbbbbffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbfffffffffffffffffffffffffffffffffffffffffbbbbbbbbbbbbbbbbbbffffffffffffffffffffffffffffffffffffffffff</p>', 'upload/79a4471c87.jpg', 'ff', 'cc', '2020-04-26 17:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`) VALUES
(1, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
