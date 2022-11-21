-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 21, 2022 at 06:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Médicaments homéopathiques', 'homéopathiques'),
(2, 'Médicaments stupéfiants', 'stupéfiants'),
(3, 'Médicaments dérivés du sang', 'medicaments'),
(4, 'Contraceptifs', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Médicaments homéopathiques1', '<p>Médicaments homéopathiques1 description </p>\r\n', 'homéopathiques', 899, '5.jpeg', '2022-11-20', 4),
(2, 1, 'Médicaments homéopathiques2', '<p>Médicaments homéopathiques 2 \r\n\r\ndescriptions 2</p>\r\n', 'homéopathiques', 799, '2.jpg', '2018-05-10', 3),
(3, 1, 'Médicaments homéopathiques 3', '<p>Médicaments homéopathiques 3 descriptions 3.</p>\r\n', 'homéopathiques', 599, '3.jpeg', '2018-05-12', 1),
(4, 1, 'Médicaments homéopathiques 4', '<p>-Médicaments homéopathiques 4. descriptions 4</p>\r\n', 'homéopathiques', 399, '4.jpeg', '2018-05-10', 3),
(5, 3, 'Médicaments dérivés du sang', '<p>Médicaments dérivés du sang description </p>\r\n', 'medicament', 339, '11.jpeg', '2018-07-09', 3),
(6, 1, 'Médicaments homéopathiques 6', '<p>Médicaments homéopathiques 6 descriptions 6.</p>\r\n', 'Médicaments homéopathiques1', 449.99, '12.jpg', '0000-00-00', 0),
(7, 3, 'Médicaments dérivés du sang 2', '<p>Médicaments dérivés du sang 2 descriptions 2 </p>\r\n', 'Médicaments dérivés du sang', 619, '22.jpg', '2022-11-20', 3),
(8, 1, 'Médicaments homéopathiques  7', '<p>Médicaments homéopathiques 7. descriptions 7</p>\r\n', 'Médicaments homéopathiques', 549.99, '13.jpg', '0000-00-00', 0),
(9, 2, 'Médicaments stupéfiants 1', '<p>- Médicaments stupéfiants 1 description 1.</p>\r\n', 'Médicaments stupéfiants', 599.99, '12.jpg', '0000-00-00', 0),
(10, 2, 'Médicaments stupéfiants 2', '<p>Médicaments stupéfiants 2 description 2 .</p>\r\n', 'Médicaments stupéfiants', 599.99, '3.jpeg', '2018-05-10', 1),
(11, 2, 'Médicaments stupéfiants 3 ', '<p>Médicaments stupéfiants 3 description 3.</p>\r\n', 'Médicaments stupéfiants', 489.98, '31.jpg', '2018-05-12', 1),
(12, 2, 'Médicaments stupéfiants 4', '<p>Médicaments stupéfiants 4 description 4</p>\r\n', 'Médicaments stupéfiants', 749.99, '32.jpeg', '2018-05-12', 3),
(13, 2, 'Médicaments stupéfiants 5', '<p>Médicaments stupéfiants 5 description 5 .</p>\r\n', 'Médicaments stupéfiants', 799.99, '34.jpeg', '2018-05-12', 1),
(14, 2, 'Médicaments stupéfiants 6', '<p>Médicaments stupéfiants 6 description 6</p>\r\n', 'Médicaments stupéfiants', 899.99, '21.jpg', '2018-05-10', 13),
(15, 2, 'Médicaments stupéfiants 7', '<p>Médicaments stupéfiants 7 description 7.</p>\r\n', 'Médicaments stupéfiants', 999.99, '23.jpg', '2018-07-09', 1),
(16, 2, 'Médicaments stupéfiants 8', '<p>Médicaments stupéfiants 8 description 8</p>\r\n', 'Médicaments stupéfiants', 649.99, '22.jpg', '2018-05-10', 2),
(17, 3, 'Médicaments dérivés du sang 4', '<p>Médicaments dérivés du sang 4 descriptions 4</p>\r\n', 'Médicaments dérivés du sang', 49.99, '21.jpg', '2018-05-12', 1),
(18, 3, 'Médicaments dérivés du sang 3', '<p>Médicaments dérivés du sang 3 description  3</p>\r\n', 'Médicaments dérivés du sang', 79.99, '23.jpg', '2018-05-12', 2),
(19, 3, 'Médicaments dérivés du sang 5', '<p>Médicaments dérivés du sang 5 descriptions 5</p>\r\n', 'Médicaments dérivés du sang', 99.99, '12.jpg', '2018-05-10', 1),
(20, 3, 'Médicaments dérivés du sang 6', '<p>Médicaments dérivés du sang 6 descriptions 6 </p>\r\n', 'Médicaments dérivés du sang', 339, '6.jpg', '2018-05-12', 1),
(27, 1, 'Médicaments homéopathiques', '<p>Médicaments homéopathique 2 description 2</p>\r\n\r\n', 'Médicaments homéopathique', 1599, '6.jpg', '2018-07-09', 9),
(28, 4, 'Contraceptifs 1', '<p>Contraceptifs description 1</p>\r\n\r\n', 'Contraceptifs', 829, '12.jpg', '0000-00-00', 0),
(29, 4, 'Contraceptifs 2', '<h2>Contraceptifs 2 description 2.</p>\r\n', 'Contraceptifs', 889.99, '6.jpg', '2018-07-09', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Code', 'Projects', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(9, 'harry@den.com', '$2y$10$Oongyx.Rv0Y/vbHGOxywl.qf18bXFiZOcEaI4ZpRRLzFNGKAhObSC', 0, 'Harry', 'Den', 'Silay City, Negros Occidental', '09092735719', 'male2.png', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'christine@gmail.com', '$2y$10$ozW4c8r313YiBsf7HD7m6egZwpvoE983IHfZsPRxrO1hWXfPRpxHO', 0, 'Christine', 'becker', 'demo', '7542214500', 'female3.jpg', 1, '', '', '2018-07-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
