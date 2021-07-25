-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2021 at 04:26 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` varchar(50) NOT NULL,
  `table_no` int NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `table_no`, `status`, `time`) VALUES
('steak with cheese', 1, 'delivered', '2021-07-19 17:19:37'),
('chedder_cheese_fries', 1, 'delivered', '2021-07-19 17:19:58'),
('steak with cheese', 1, 'delivered', '2021-07-19 17:20:00'),
('steak with cheese', 1, 'delivered', '2021-07-19 17:21:03'),
('Garlic_Pizza', 1, 'delivered', '2021-07-19 17:21:06'),
('steak with cheese', 1, 'delivered', '2021-07-19 17:22:32'),
('chedder_cheese_fries', 1, 'delivered', '2021-07-19 17:27:43'),
('steak with cheese', 1, 'delivered', '2021-07-19 17:27:43'),
('steak with cheese', 1, 'delivered', '2021-07-20 07:19:00'),
('chedder_cheese_fries', 1, 'delivered', '2021-07-20 07:19:01'),
('big_burger', 1, 'delivered', '2021-07-20 07:19:02'),
('Garlic_Pizza', 1, 'delivered', '2021-07-20 07:19:04'),
('steak with cheese', 1, 'delivered', '2021-07-20 07:19:07'),
('big_burger', 1, 'delivered', '2021-07-20 12:57:43'),
('Garlic_Pizza', 1, 'delivered', '2021-07-20 12:57:44'),
('steak with cheese', 1, 'delivered', '2021-07-20 12:57:44'),
('steak with cheese', 1, 'delivered', '2021-07-20 13:31:22'),
('Garlic_Pizza', 1, 'delivered', '2021-07-20 13:31:24'),
('big_burger', 1, 'delivered', '2021-07-20 13:31:25'),
('chedder_cheese_fries', 1, 'delivered', '2021-07-20 13:31:26'),
('big_burger', 2, 'delivered', '2021-07-20 13:32:20'),
('big_burger', 2, 'delivered', '2021-07-20 13:32:20'),
('big_burger', 2, 'delivered', '2021-07-20 13:32:20'),
('Garlic_Pizza', 1, 'delivered', '2021-07-25 08:59:55'),
('big_burger', 1, 'delivered', '2021-07-25 08:59:57'),
('chedder_cheese_fries', 1, 'delivered', '2021-07-25 08:59:58'),
('steak with cheese', 1, 'delivered', '2021-07-25 09:00:21'),
('steak with cheese', 1, 'delivered', '2021-07-25 09:03:27'),
('Garlic_Pizza', 1, 'delivered', '2021-07-25 09:03:29'),
('big_burger', 1, 'delivered', '2021-07-25 09:03:30'),
('chedder_cheese_fries', 1, 'delivered', '2021-07-25 09:12:31'),
('big_burger', 1, 'delivered', '2021-07-25 09:12:32'),
('Garlic_Pizza', 1, 'delivered', '2021-07-25 09:12:33'),
('steak with cheese', 1, 'delivered', '2021-07-25 09:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `review` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `email`, `review`) VALUES
(4, 'ahtashamthedeveloper@gmail.com', 'very good website'),
(3, 'email@gmail.com', 'messageadf'),
(5, 'ahtashamthedeveloper@gmail.com', 'Its a hot day.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
