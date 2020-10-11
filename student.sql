-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 12:58 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidatepackages`
--

CREATE TABLE `candidatepackages` (
  `id` int(11) NOT NULL,
  `candidateId` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidatepackages`
--

INSERT INTO `candidatepackages` (`id`, `candidateId`, `packageId`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, 1, NULL, NULL),
(2, 2, 2, 1, NULL, NULL),
(3, 1, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `name`, `phone`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'saran', '9912272255', 1, NULL, NULL),
(2, 'saleem', '89898989898', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `departName` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `departName`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Software', 1, NULL, NULL),
(2, 'QA-Testing', 1, NULL, NULL),
(3, 'Electrical', 1, NULL, NULL),
(4, 'Elecronics', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `designationName` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designationName`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Associate software engineer', 1, NULL, NULL),
(2, 'software engineer', 1, NULL, NULL),
(3, 'senior software engineer', 1, NULL, NULL),
(4, 'application developer', 1, NULL, NULL),
(5, 'Team Lead', 1, NULL, NULL),
(6, 'QA-Team', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `email`, `userId`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'saran.saladi@gmail.com', 1, 1, '0000-00-00 00:00:00', '0000-00-00'),
(2, 'saran.saladi1@gmail.com', 1, 1, '0000-00-00 00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `departmentId` int(11) NOT NULL,
  `designationId` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `departmentId`, `designationId`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'saran', 1, 3, 1, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `packagecodes`
--

CREATE TABLE `packagecodes` (
  `id` int(11) NOT NULL,
  `packageId` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packagecodes`
--

INSERT INTO `packagecodes` (`id`, `packageId`, `code`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'SILVER_123', 1, NULL, NULL),
(2, 2, 'HINDI_567', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `packageName` varchar(50) NOT NULL,
  `cost` varchar(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `packageName`, `cost`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'telugu pack', '500', 1, NULL, NULL),
(2, 'hindi pack', '800', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`id`, `categoryName`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Mobiles', 1, '2020-10-08 19:21:51', 0),
(2, 'Laptops', 1, '2020-10-08 19:21:51', 0),
(3, 'watches', 1, '2020-10-08 19:21:51', 0),
(4, 'Kitchen', 1, '2020-10-08 19:21:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `productratings`
--

CREATE TABLE `productratings` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productratings`
--

INSERT INTO `productratings` (`id`, `productId`, `rating`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 4, 1, '0000-00-00 00:00:00', NULL),
(2, 2, 5, 1, '0000-00-00 00:00:00', NULL),
(3, 3, 3, 1, '0000-00-00 00:00:00', NULL),
(4, 4, 4, 1, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `productCategoryId` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `productCategoryId`, `cost`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'Sumsung M30 Mobile', 1, 5000, 1, '2020-10-08 19:27:04', NULL),
(2, 'HP smart laptop', 2, 50000, 1, '2020-10-08 20:07:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productsubcategories`
--

CREATE TABLE `productsubcategories` (
  `id` int(11) NOT NULL,
  `productcategoryId` int(11) NOT NULL,
  `subCategoryName` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productsubcategories`
--

INSERT INTO `productsubcategories` (`id`, `productcategoryId`, `subCategoryName`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Smart Phone', 1, '2020-10-08 19:24:17', NULL),
(2, 2, 'HP brand', 1, '2020-10-08 19:24:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salaries`
--

CREATE TABLE `salaries` (
  `id` int(11) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaries`
--

INSERT INTO `salaries` (`id`, `employeeId`, `salary`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 1, 145000, 1, NULL, NULL),
(2, 2, 203000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `phone`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'saran kumar', 'saran.saladi@gmail.com', '$2b$10$yUd2p7tS7gHeEpwxRqAqAOvCkX8HCd3ipBXN0whICy2nEiYXC8.ya', '9912272255', 0, '2020-10-05 13:45:51', '2020-10-05'),
(2, 'saran kumar', 'saran.saladi@gmail.com', '$2b$10$4HwIdoblVgtK9tDx7QnbuOixwzYNSdJI98bAXZ7Yml.RCBncWVBt6', '9912272255', 1, '2020-10-05 13:51:27', '2020-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `status`, `createdAt`, `updatedAt`) VALUES
(1, 'saranit16', 'saran', 1, NULL, '0000-00-00'),
(2, 'kumar', '2', 1, NULL, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidatepackages`
--
ALTER TABLE `candidatepackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packagecodes`
--
ALTER TABLE `packagecodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `packageId` (`packageId`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productratings`
--
ALTER TABLE `productratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsubcategories`
--
ALTER TABLE `productsubcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productcategoryId` (`productcategoryId`);

--
-- Indexes for table `salaries`
--
ALTER TABLE `salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `candidatepackages`
--
ALTER TABLE `candidatepackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packagecodes`
--
ALTER TABLE `packagecodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productratings`
--
ALTER TABLE `productratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `productsubcategories`
--
ALTER TABLE `productsubcategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `salaries`
--
ALTER TABLE `salaries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `packagecodes`
--
ALTER TABLE `packagecodes`
  ADD CONSTRAINT `packagecodes_ibfk_1` FOREIGN KEY (`packageId`) REFERENCES `packages` (`id`);

--
-- Constraints for table `productsubcategories`
--
ALTER TABLE `productsubcategories`
  ADD CONSTRAINT `productsubcategories_ibfk_1` FOREIGN KEY (`productcategoryId`) REFERENCES `productcategories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
