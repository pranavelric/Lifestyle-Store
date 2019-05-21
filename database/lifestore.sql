-- phpMyAdmin SQL Dump

-- version 4.1.6

-- http://www.phpmyadmin.net

--

-- Host: 127.0.0.1

-- Generation Time: Jun 30, 2017 at 03:53 PM

-- Server version: 5.6.16

-- PHP Version: 5.5.9



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET time_zone = "+00:00";





/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;

/*!40101 SET NAMES utf8 */;



--

-- Database: `ecommerce`

--



-- --------------------------------------------------------



--

-- Table structure for table `products`

--



CREATE TABLE IF NOT EXISTS `products` (

  `id` int(11) NOT NULL AUTO_INCREMENT,

  `name` varchar(30) DEFAULT NULL,

  `category` enum('book','stationery','other') DEFAULT NULL,

  `purchase_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;



--

-- Dumping data for table `products`

--



INSERT INTO `products` (`id`, `name`, `category`, `purchase_timestamp`) VALUES

(1, 'harry_potter', 'book', '2017-01-18 13:58:02'),

(2, 'deception_point', 'book', '2017-01-18 14:00:17'),

(3, 'drunkards_walk', 'book', '2017-01-18 14:00:17'),

(4, 'the_kite_runner', 'book', '2017-01-18 14:00:17'),

(5, 'animal_farm', 'book', '2017-01-18 14:00:17'),

(6, 'night_lamp', 'other', '2017-01-18 14:00:17'),

(7, 'pencil_box', 'stationery', '2017-01-18 14:00:17'),

(8, 'fountain_pen', 'stationery', '2017-01-18 14:00:17'),

(9, 'study_bed_table', 'other', '2017-01-18 14:00:17'),

(10, 'personal_diary', 'stationery', '2017-01-18 14:00:17');



-- --------------------------------------------------------



--

-- Table structure for table `users`

--



CREATE TABLE IF NOT EXISTS `users` (

  `id` int(11) NOT NULL AUTO_INCREMENT,

  `email` varchar(30) NOT NULL,

  `first_name` varchar(20) NOT NULL,

  `last_name` varchar(20) DEFAULT NULL,

  `phone` int(10) NOT NULL,

  `registration_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;



--

-- Dumping data for table `users`

--



INSERT INTO `users` (`id`, `email`, `first_name`, `last_name`, `phone`, `registration_timestamp`) VALUES

(1, 'venu@xyz.com', 'Venu', 'Sharma', 547903927, '2017-01-18 14:02:28'),

(2, 'shubham@xyz.com', 'Shubham', NULL, 538915694, '2017-01-18 14:10:51'),

(3, 'disha@xyz.com', 'Disha', 'Kaur', 557825323, '2017-01-18 14:02:39'),

(4, 'ankit@xyz.com', 'Ankit', 'Kumar', 561322116, '2017-01-18 14:02:50'),

(5, 'mrinal@xyz.com', 'Mrinal', 'Joy', 517918670, '2017-01-18 14:02:55'),

(6, 'abhilash@xyz.com', 'Abhilash', 'Jalsani', 509841902, '2017-01-18 14:03:00'),

(7, 'hardik@xyz.com', 'Hardik', 'Arora', 595452568, '2017-01-18 14:03:05'),

(8, 'yesha@xyz.com', 'Yesha', 'Krishna', 534532216, '2017-01-18 14:03:10'),

(9, 'rushit@xyz.com', 'Rushit', NULL, 534359370, '2017-01-18 14:14:12'),

(10, 'jessy@xyz.com', 'Jessy', 'Joseph', 591053100, '2017-01-18 14:16:04'),

(11, 'jasper@xyz.com', 'Jaspreet', NULL, 515078235, '2017-01-18 14:17:27'),

(12, 'prachi@xyz.com', 'Prachi', NULL, 530670640, '2017-01-18 14:17:32'),

(13, 'vtc-internshala@gmail.com', 'VTC', 'Internshala', 2147483647, '2017-01-22 19:59:30'),

(14, 'vtc-internshala@gmail.com', 'VTC', 'Internshala', 2147483647, '2017-01-22 20:03:10'),

(15, 'vtc-internshala@gmail.com', 'VTC', 'Internshala', 2147483647, '2017-01-22 20:18:30'),

(16, 'vtc-internshala@gmail.com', 'VTC', 'Internshala', 2147483647, '2017-01-22 20:18:35');



-- --------------------------------------------------------



--

-- Table structure for table `users_products`

--



CREATE TABLE IF NOT EXISTS `users_products` (

  `id` int(11) NOT NULL AUTO_INCREMENT,

  `user_id` int(11) DEFAULT NULL,

  `product_id` int(11) DEFAULT NULL,

  `purchase_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,

  PRIMARY KEY (`id`),

  KEY `user_id` (`user_id`),

  KEY `product_id` (`product_id`)

) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;



--

-- Dumping data for table `users_products`

--



INSERT INTO `users_products` (`id`, `user_id`, `product_id`, `purchase_timestamp`) VALUES

(1, 12, 3, '2016-10-10 12:40:12'),

(2, 12, 6, '2016-10-12 12:40:12'),

(3, 8, 6, '2016-10-29 06:42:12'),

(4, 4, 6, '2016-10-15 07:35:04'),

(5, 10, 9, '2016-10-09 20:45:16'),

(6, 7, 4, '2016-10-10 03:04:42'),

(7, 5, 1, '2016-10-19 11:28:54'),

(8, 4, 5, '2016-10-14 06:05:32'),

(9, 8, 5, '0000-00-00 00:00:00'),

(10, 7, 7, '2016-10-04 07:42:35'),

(11, 12, 2, '2016-10-14 06:53:41'),

(13, 7, 2, '2016-10-05 10:38:02'),

(14, 7, 8, '2016-10-06 12:04:49'),

(16, 11, 6, '2016-10-15 04:33:01');



--

-- Constraints for dumped tables

--



--

-- Constraints for table `users_products`

--

ALTER TABLE `users_products`

  ADD CONSTRAINT `users_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),

  ADD CONSTRAINT `users_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;