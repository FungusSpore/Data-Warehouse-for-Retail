-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 09:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wjw`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchID` smallint(5) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `street`, `city`, `state`) VALUES
(1, 'Jalan Sultan Ismail', 'Kuala Lumpur', 'Wilayah Persekutuan'),
(2, 'Jalan Tun Fuad Stephens', 'Kota Kinabalu', 'Sabah'),
(3, 'Jalan Pintu Geng', 'Kuching', 'Sarawak'),
(4, 'Jalan Raja Dr. Nazrin Shah', 'Ipoh', 'Perak'),
(5, 'Jalan Temenggung', 'Johor Bahru', 'Johor'),
(6, 'Jalan Salleh Sulong', 'Kuantan', 'Pahang'),
(7, 'Jalan Maktab', 'Alor Setar', 'Kedah'),
(8, 'Jalan Tun Abdul Razak', 'Melaka', 'Melaka'),
(9, 'Jalan Penarak', 'Langkawi', 'Kedah'),
(10, 'Jalan Bagan Jermal', 'Butterworth', 'Pulau Pinang');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custID` smallint(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `branchID` smallint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custID`, `name`, `branchID`) VALUES
(1, 'John Doe', 1),
(2, 'Jane Smith', 2),
(3, 'David Lee', 3),
(4, 'Amy Wong', 4),
(5, 'Michael Chen', 5),
(6, 'Karen Tan', 6),
(7, 'Peter Ng', 7),
(8, 'Siti Aisyah', 8),
(9, 'Mohd Azmi', 9),
(10, 'Ahmad Ali', 10),
(11, 'Susan Lim', 1),
(12, 'Tommy Lee', 2),
(13, 'Megan Tan', 3),
(14, 'Chris Wong', 4),
(15, 'Nora Abdullah', 5),
(16, 'Sarah Chong', 6),
(17, 'Steven Tan', 7),
(18, 'Anna Lee', 8),
(19, 'Hassan Ali', 9),
(20, 'Raj Kumar', 10),
(21, 'Ahmad Shah', 1),
(22, 'Sharon Wong', 2),
(23, 'Eddie Lim', 3),
(24, 'Fatin Zahra', 4),
(25, 'Kevin Tan', 5),
(26, 'Nurul Huda', 6),
(27, 'Daniel Lim', 7),
(28, 'Izwan Ismail', 8),
(29, 'Nor Hazwani', 9),
(30, 'Nur Izzati', 10),
(31, 'Lim Wei', 1),
(32, 'Yvonne Goh', 2),
(33, 'Kumar Raju', 3),
(34, 'Jessica Ng', 4),
(35, 'Jamilah Ahmad', 5),
(36, 'Samuel Tan', 6),
(37, 'Siti Norhafizah', 7),
(38, 'Muhammad Hakim', 8),
(39, 'Ng Chee Koon', 9),
(40, 'Azim Azmi', 10),
(41, 'Lim Mei Ling', 1),
(42, 'Suresh Kumar', 2),
(43, 'Mary Lee', 3),
(44, 'Nadira Ahmad', 4),
(45, 'Tiffany Tan', 5),
(46, 'William Ong', 6),
(47, 'Aisha Abdullah', 7),
(48, 'Ameer Hamza', 8),
(49, 'Leong Wei', 9),
(50, 'Zulaikha Zainal', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` smallint(5) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `custID` smallint(5) DEFAULT NULL,
  `prodID` smallint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `quantity`, `orderDate`, `custID`, `prodID`) VALUES
(1, 5, '2022-01-03', 1, 1),
(2, 3, '2022-01-05', 2, 2),
(3, 2, '2022-01-10', 3, 3),
(4, 1, '2022-01-15', 4, 4),
(5, 4, '2022-02-02', 5, 5),
(6, 2, '2022-02-05', 6, 6),
(7, 1, '2022-02-11', 7, 7),
(8, 3, '2022-02-15', 8, 8),
(9, 2, '2022-03-04', 9, 9),
(10, 4, '2022-03-10', 10, 10),
(11, 1, '2022-03-15', 1, 1),
(12, 3, '2022-03-22', 23, 2),
(13, 2, '2022-04-01', 32, 3),
(14, 4, '2022-04-07', 41, 4),
(15, 1, '2022-04-15', 5, 5),
(16, 2, '2022-04-19', 46, 6),
(17, 3, '2022-04-24', 47, 7),
(18, 4, '2022-05-02', 38, 8),
(19, 1, '2022-05-09', 9, 9),
(20, 2, '2022-05-15', 10, 10),
(21, 3, '2022-06-03', 1, 1),
(22, 4, '2022-06-08', 22, 2),
(23, 2, '2022-06-15', 31, 3),
(24, 1, '2022-06-20', 43, 4),
(25, 4, '2022-07-03', 50, 5),
(26, 2, '2022-07-06', 6, 6),
(27, 1, '2022-07-12', 17, 7),
(28, 3, '2022-07-15', 28, 8),
(29, 2, '2022-08-04', 39, 9),
(30, 4, '2022-08-10', 10, 10),
(31, 5, '2022-08-01', 49, 7),
(32, 3, '2022-08-15', 10, 2),
(33, 1, '2022-09-05', 11, 6),
(34, 2, '2022-09-20', 12, 9),
(35, 4, '2022-10-03', 13, 4),
(36, 1, '2022-10-18', 14, 10),
(37, 3, '2022-11-01', 15, 2),
(38, 2, '2022-11-15', 16, 8),
(39, 1, '2022-12-01', 17, 1),
(40, 6, '2022-12-15', 18, 5),
(41, 3, '2022-01-05', 19, 3),
(42, 1, '2022-02-01', 20, 10),
(43, 4, '2022-03-03', 21, 4),
(44, 2, '2022-04-01', 22, 9),
(45, 3, '2022-05-02', 23, 2),
(46, 1, '2022-06-01', 24, 8),
(47, 5, '2022-07-01', 25, 1),
(48, 2, '2022-08-01', 26, 5),
(49, 3, '2022-09-01', 27, 3),
(50, 1, '2022-10-03', 28, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodID` smallint(5) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodID`, `name`, `description`) VALUES
(1, 'Laptop', 'A portable computer'),
(2, 'Smartphone', 'A handheld device used for communication and internet access'),
(3, 'Tablet', 'A mobile device with a touch screen display'),
(4, 'Headphones', 'A pair of audio devices worn over the ears'),
(5, 'Printer', 'A device that prints documents and images on paper'),
(6, 'Monitor', 'A display screen for computers'),
(7, 'Keyboard', 'An input device used to type characters and commands into a computer'),
(8, 'Mouse', 'A handheld input device used to move a cursor on a computer screen'),
(9, 'Camera', 'A device used to capture images and videos'),
(10, 'Speaker', 'A device used to produce sound from an audio source');

-- --------------------------------------------------------

--
-- Table structure for table `productstored`
--

CREATE TABLE `productstored` (
  `prodID` smallint(5) NOT NULL,
  `branchID` smallint(5) NOT NULL,
  `branchInventory` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productstored`
--

INSERT INTO `productstored` (`prodID`, `branchID`, `branchInventory`) VALUES
(1, 1, 50),
(1, 2, 25),
(1, 3, 40),
(1, 4, 60),
(1, 5, 30),
(1, 6, 20),
(1, 7, 10),
(1, 8, 15),
(1, 9, 5),
(1, 10, 35),
(2, 1, 30),
(2, 2, 45),
(2, 3, 15),
(2, 4, 50),
(2, 5, 20),
(2, 6, 35),
(2, 7, 5),
(2, 8, 25),
(2, 9, 10),
(2, 10, 30),
(3, 1, 20),
(3, 2, 10),
(3, 3, 35),
(3, 4, 25),
(3, 5, 40),
(3, 6, 30),
(3, 7, 15),
(3, 8, 20),
(3, 9, 5),
(3, 10, 10),
(4, 1, 25),
(4, 2, 35),
(4, 3, 10),
(4, 4, 45),
(4, 5, 15),
(4, 6, 20),
(4, 7, 5),
(4, 8, 30),
(4, 9, 25),
(4, 10, 10),
(5, 1, 40),
(5, 2, 20),
(5, 3, 30),
(5, 4, 10),
(5, 5, 35),
(5, 6, 25),
(5, 7, 15),
(5, 8, 5),
(5, 9, 20),
(5, 10, 30),
(6, 1, 10),
(6, 2, 30),
(6, 3, 25),
(6, 4, 20),
(6, 5, 40),
(6, 6, 35),
(6, 7, 10),
(6, 8, 15),
(6, 9, 5),
(6, 10, 20),
(7, 1, 15),
(7, 2, 10),
(7, 3, 25),
(7, 4, 30),
(7, 5, 20),
(7, 6, 5),
(7, 7, 15),
(7, 8, 20),
(7, 9, 10),
(7, 10, 5),
(8, 1, 20),
(8, 2, 35),
(8, 3, 25),
(8, 4, 10),
(8, 5, 15),
(8, 6, 30),
(8, 7, 20),
(8, 8, 5),
(8, 9, 15),
(8, 10, 10),
(9, 1, 3),
(9, 2, 12),
(9, 3, 5),
(9, 5, 6),
(9, 8, 12),
(9, 9, 15),
(9, 10, 15),
(10, 1, 8),
(10, 4, 4),
(10, 5, 20),
(10, 6, 6),
(10, 7, 8),
(10, 8, 11),
(10, 9, 16),
(10, 10, 18);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custID`),
  ADD KEY `branchID` (`branchID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `custID` (`custID`),
  ADD KEY `prodID` (`prodID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodID`);

--
-- Indexes for table `productstored`
--
ALTER TABLE `productstored`
  ADD PRIMARY KEY (`prodID`,`branchID`),
  ADD KEY `branchID` (`branchID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custID`) REFERENCES `customer` (`custID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`prodID`) REFERENCES `product` (`prodID`);

--
-- Constraints for table `productstored`
--
ALTER TABLE `productstored`
  ADD CONSTRAINT `productstored_ibfk_1` FOREIGN KEY (`prodID`) REFERENCES `product` (`prodID`),
  ADD CONSTRAINT `productstored_ibfk_2` FOREIGN KEY (`branchID`) REFERENCES `branch` (`branchID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
