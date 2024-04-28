-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2024 at 12:23 PM
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
-- Database: `dailyexpense`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expense_id` int(20) NOT NULL,
  `user_id` varchar(15) NOT NULL,
  `expense` int(20) NOT NULL,
  `expensedate` varchar(15) NOT NULL,
  `expensecategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expense_id`, `user_id`, `expense`, `expensedate`, `expensecategory`) VALUES
(101, '9', 789, '2023-08-31', 'Medicine'),
(102, '9', 3, '2023-08-31', 'Entertainment'),
(103, '9', 469, '2023-08-29', 'Clothings'),
(104, '9', 985, '2023-08-25', 'Entertainment'),
(105, '12', 3, '2023-08-31', 'Clothings'),
(106, '12', 89, '2023-08-16', 'Bills & Recharges'),
(107, '9', 3, '2023-09-06', 'Clothings'),
(108, '9', 300, '2023-07-04', 'Food'),
(109, '9', 456, '2023-09-01', 'Clothings'),
(110, '9', 3, '2023-08-28', 'Entertainment'),
(111, '9', 300, '2023-09-03', 'Clothings'),
(112, '9', 789, '2021-06-03', 'Medicine'),
(113, '9', 756, '2021-02-23', 'Entertainment'),
(114, '9', 123, '2022-09-03', 'Medicine'),
(115, '9', 256, '2021-09-07', 'Medicine'),
(116, '9', 798, '2023-09-04', 'Medicine'),
(117, '9', 45, '2023-08-28', 'Entertainment'),
(118, '9', 50, '2023-10-20', 'Medicine'),
(119, '9', 786, '2023-10-20', 'Food'),
(120, '9', 1000, '2023-10-04', 'Entertainment'),
(121, '9', 500, '2023-10-19', 'Clothings'),
(122, '9', 426, '2023-10-16', 'Household Items'),
(123, '13', 120, '2024-03-31', 'Food'),
(124, '13', 240, '2024-03-30', 'Others'),
(125, '13', 720, '2024-03-27', 'Bills & Recharges'),
(126, '13', 500, '2024-03-23', 'Entertainment'),
(127, '13', 2100, '2024-03-11', 'Clothings'),
(128, '13', 423, '2024-02-14', 'Entertainment'),
(129, '13', 763, '2024-01-16', 'Household Items'),
(130, '13', 8210, '2023-12-29', 'Medicine'),
(131, '13', 430, '2023-11-14', 'Medicine'),
(133, '13', 4520, '2024-03-31', 'Rent'),
(134, '15', 20, '2024-04-02', 'Food'),
(135, '15', 165, '2024-03-31', 'Food'),
(136, '15', 15, '2024-02-09', 'Bills & Recharges'),
(137, '16', 1000, '2024-04-03', 'Clothings'),
(138, '16', 500, '2024-04-03', 'Medicine'),
(139, '16', 5000, '2024-04-03', 'Rent'),
(140, '16', 5000, '2024-02-21', 'Entertainment'),
(141, '16', 200000, '2024-03-08', 'Clothings'),
(142, '17', 1000, '2024-01-01', 'Medicine'),
(143, '17', 1900, '2024-01-15', 'Food'),
(144, '17', 2700, '2024-01-31', 'Bills & Recharges'),
(145, '17', 2460, '2024-02-01', 'Entertainment'),
(146, '17', 1500, '2024-02-15', 'Clothings'),
(147, '17', 4000, '2024-03-01', 'Rent'),
(148, '17', 3500, '2024-03-15', 'Household Items'),
(149, '17', 560, '2024-03-31', 'Others'),
(150, '17', 4560, '2024-04-08', 'Clothings'),
(151, '17', 520, '2024-04-06', 'Entertainment'),
(153, '17', 8520, '2024-04-10', 'Medicine');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`category_id`, `category_name`) VALUES
(1, 'Medicine'),
(2, 'Food'),
(3, 'Bills & Recharges'),
(4, 'Entertainment'),
(5, 'Clothings'),
(6, 'Rent'),
(7, 'Household Items'),
(8, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(13, 'pratik', 'abhang', 'pratik@gmail.com', 'f91e15dbec69fc40f81f0876e7009648');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expense_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
