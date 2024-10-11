-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 01:36 PM
-- Server version: 8.0.32
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `message` text,
  `chat_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('active','deleted') DEFAULT 'active',
  `reply_to` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `message`, `chat_time`, `created_at`, `status`, `reply_to`) VALUES
(1, 'Bob', 'Bhavesh', 'hii', '16:54', '2024-10-11 11:24:13', 'active', NULL),
(2, 'Bhavesh', 'Bob', 'hello', '16:54', '2024-10-11 11:24:20', 'active', NULL),
(3, 'Bhavesh', 'Bob', 'hii', '16:58', '2024-10-11 11:28:50', 'active', NULL),
(4, 'Bob', 'Bhavesh', 'Kya ho rha', '16:58', '2024-10-11 11:28:59', 'active', NULL),
(5, 'Bhavesh', 'Bob', 'hii', '17:00', '2024-10-11 11:30:47', 'active', NULL),
(6, 'Bob', 'Bhavesh', 'hii', '17:01', '2024-10-11 11:31:04', 'active', NULL),
(7, 'Bob', 'Singh', 'hii', '17:04', '2024-10-11 11:34:03', 'active', NULL),
(8, 'Singh', 'Bob', 'he', '17:04', '2024-10-11 11:34:12', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'Bhavesh', 'a@a.com', '1234'),
(2, 'Singh', 's@s.com', '1234'),
(3, 'Bob', 'bob@bob.com', '1234'),
(4, 'Hardik', 'hardik@aabhyasa.com', '1234'),
(5, 'Sharad', 'sharad@aabhyasa.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
