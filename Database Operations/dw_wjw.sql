-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 09:57 PM
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
-- Database: `dw_wjw`
--

-- --------------------------------------------------------

--
-- Table structure for table `dim_branch`
--

CREATE TABLE `dim_branch` (
  `dim_branchID` smallint(5) NOT NULL,
  `jwID` smallint(5) NOT NULL,
  `street_name` varchar(50) DEFAULT NULL,
  `city_name` varchar(50) DEFAULT NULL,
  `state_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_branch`
--

INSERT INTO `dim_branch` (`dim_branchID`, `jwID`, `street_name`, `city_name`, `state_name`) VALUES
(0, 0, 'N/A', 'N/A', 'N/A'),
(1, 1, 'Jalan Sultan Ismail', 'Kuala Lumpur', 'Wilayah Persekutuan'),
(2, 2, 'Jalan Tun Fuad Stephens', 'Kota Kinabalu', 'Sabah'),
(3, 3, 'Jalan Pintu Geng', 'Kuching', 'Sarawak'),
(4, 4, 'Jalan Raja Dr. Nazrin Shah', 'Ipoh', 'Perak'),
(5, 5, 'Jalan Temenggung', 'Johor Bahru', 'Johor'),
(6, 6, 'Jalan Salleh Sulong', 'Kuantan', 'Pahang'),
(7, 7, 'Jalan Maktab', 'Alor Setar', 'Kedah'),
(8, 8, 'Jalan Tun Abdul Razak', 'Melaka', 'Melaka'),
(9, 9, 'Jalan Penarak', 'Langkawi', 'Kedah'),
(10, 10, 'Jalan Bagan Jermal', 'Butterworth', 'Pulau Pinang');

-- --------------------------------------------------------

--
-- Table structure for table `dim_customer`
--

CREATE TABLE `dim_customer` (
  `dim_custID` smallint(5) NOT NULL,
  `jwID` smallint(5) NOT NULL,
  `cust_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_customer`
--

INSERT INTO `dim_customer` (`dim_custID`, `jwID`, `cust_name`) VALUES
(0, 0, 'N/A'),
(1, 1, 'John Doe'),
(2, 2, 'Jane Smith'),
(3, 3, 'David Lee'),
(4, 4, 'Amy Wong'),
(5, 5, 'Michael Chen'),
(6, 6, 'Karen Tan'),
(7, 7, 'Peter Ng'),
(8, 8, 'Siti Aisyah'),
(9, 9, 'Mohd Azmi'),
(10, 10, 'Ahmad Ali'),
(11, 11, 'Susan Lim'),
(12, 12, 'Tommy Lee'),
(13, 13, 'Megan Tan'),
(14, 14, 'Chris Wong'),
(15, 15, 'Nora Abdullah'),
(16, 16, 'Sarah Chong'),
(17, 17, 'Steven Tan'),
(18, 18, 'Anna Lee'),
(19, 19, 'Hassan Ali'),
(20, 20, 'Raj Kumar'),
(21, 21, 'Ahmad Shah'),
(22, 22, 'Sharon Wong'),
(23, 23, 'Eddie Lim'),
(24, 24, 'Fatin Zahra'),
(25, 25, 'Kevin Tan'),
(26, 26, 'Nurul Huda'),
(27, 27, 'Daniel Lim'),
(28, 28, 'Izwan Ismail'),
(29, 29, 'Nor Hazwani'),
(30, 30, 'Nur Izzati'),
(31, 31, 'Lim Wei'),
(32, 32, 'Yvonne Goh'),
(33, 33, 'Kumar Raju'),
(34, 34, 'Jessica Ng'),
(35, 35, 'Jamilah Ahmad'),
(36, 36, 'Samuel Tan'),
(37, 37, 'Siti Norhafizah'),
(38, 38, 'Muhammad Hakim'),
(39, 39, 'Ng Chee Koon'),
(40, 40, 'Azim Azmi'),
(41, 41, 'Lim Mei Ling'),
(42, 42, 'Suresh Kumar'),
(43, 43, 'Mary Lee'),
(44, 44, 'Nadira Ahmad'),
(45, 45, 'Tiffany Tan'),
(46, 46, 'William Ong'),
(47, 47, 'Aisha Abdullah'),
(48, 48, 'Ameer Hamza'),
(49, 49, 'Leong Wei'),
(50, 50, 'Zulaikha Zainal');

-- --------------------------------------------------------

--
-- Table structure for table `dim_date`
--

CREATE TABLE `dim_date` (
  `dateID` smallint(5) NOT NULL,
  `dt` date NOT NULL,
  `day` smallint(6) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_date`
--

INSERT INTO `dim_date` (`dateID`, `dt`, `day`, `month`, `year`) VALUES
(1, '2022-01-03', 3, 1, 2022),
(2, '2022-01-05', 5, 1, 2022),
(3, '2022-01-10', 10, 1, 2022),
(4, '2022-01-15', 15, 1, 2022),
(5, '2022-02-02', 2, 2, 2022),
(6, '2022-02-05', 5, 2, 2022),
(7, '2022-02-11', 11, 2, 2022),
(8, '2022-02-15', 15, 2, 2022),
(9, '2022-03-04', 4, 3, 2022),
(10, '2022-03-10', 10, 3, 2022),
(11, '2022-03-15', 15, 3, 2022),
(12, '2022-03-22', 22, 3, 2022),
(13, '2022-04-01', 1, 4, 2022),
(14, '2022-04-07', 7, 4, 2022),
(15, '2022-04-15', 15, 4, 2022),
(16, '2022-04-19', 19, 4, 2022),
(17, '2022-04-24', 24, 4, 2022),
(18, '2022-05-02', 2, 5, 2022),
(19, '2022-05-09', 9, 5, 2022),
(20, '2022-05-15', 15, 5, 2022),
(21, '2022-06-03', 3, 6, 2022),
(22, '2022-06-08', 8, 6, 2022),
(23, '2022-06-15', 15, 6, 2022),
(24, '2022-06-20', 20, 6, 2022),
(25, '2022-07-03', 3, 7, 2022),
(26, '2022-07-06', 6, 7, 2022),
(27, '2022-07-12', 12, 7, 2022),
(28, '2022-07-15', 15, 7, 2022),
(29, '2022-08-04', 4, 8, 2022),
(30, '2022-08-10', 10, 8, 2022),
(31, '2022-08-01', 1, 8, 2022),
(32, '2022-08-15', 15, 8, 2022),
(33, '2022-09-05', 5, 9, 2022),
(34, '2022-09-20', 20, 9, 2022),
(35, '2022-10-03', 3, 10, 2022),
(36, '2022-10-18', 18, 10, 2022),
(37, '2022-11-01', 1, 11, 2022),
(38, '2022-11-15', 15, 11, 2022),
(39, '2022-12-01', 1, 12, 2022),
(40, '2022-12-15', 15, 12, 2022),
(41, '2022-01-05', 5, 1, 2022),
(42, '2022-02-01', 1, 2, 2022),
(43, '2022-03-03', 3, 3, 2022),
(44, '2022-04-01', 1, 4, 2022),
(45, '2022-05-02', 2, 5, 2022),
(46, '2022-06-01', 1, 6, 2022),
(47, '2022-07-01', 1, 7, 2022),
(48, '2022-08-01', 1, 8, 2022),
(49, '2022-09-01', 1, 9, 2022),
(50, '2022-10-03', 3, 10, 2022);

-- --------------------------------------------------------

--
-- Table structure for table `dim_product`
--

CREATE TABLE `dim_product` (
  `dim_prodID` smallint(5) NOT NULL,
  `jwID` smallint(5) NOT NULL,
  `proc_name` varchar(50) DEFAULT NULL,
  `proc_description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dim_product`
--

INSERT INTO `dim_product` (`dim_prodID`, `jwID`, `proc_name`, `proc_description`) VALUES
(0, 0, 'N/A', 'N/A'),
(1, 1, 'Laptop', 'A portable computer'),
(2, 2, 'Smartphone', 'A handheld device used for communication and internet access'),
(3, 3, 'Tablet', 'A mobile device with a touch screen display'),
(4, 4, 'Headphones', 'A pair of audio devices worn over the ears'),
(5, 5, 'Printer', 'A device that prints documents and images on paper'),
(6, 6, 'Monitor', 'A display screen for computers'),
(7, 7, 'Keyboard', 'An input device used to type characters and commands into a computer'),
(8, 8, 'Mouse', 'A handheld input device used to move a cursor on a computer screen'),
(9, 9, 'Camera', 'A device used to capture images and videos'),
(10, 10, 'Speaker', 'A device used to produce sound from an audio source');

-- --------------------------------------------------------

--
-- Table structure for table `fact_inventory`
--

CREATE TABLE `fact_inventory` (
  `dim_prodID` smallint(5) NOT NULL,
  `dim_branchID` smallint(5) NOT NULL,
  `dateID` smallint(5) NOT NULL,
  `inventoryLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fact_inventory`
--

INSERT INTO `fact_inventory` (`dim_prodID`, `dim_branchID`, `dateID`, `inventoryLevel`) VALUES
(1, 1, 1, 50),
(1, 2, 1, 25),
(1, 3, 1, 40),
(1, 4, 1, 60),
(1, 5, 1, 30),
(1, 6, 1, 20),
(1, 7, 1, 10),
(1, 8, 1, 15),
(1, 9, 1, 5),
(1, 10, 1, 35),
(1, 1, 11, 50),
(1, 2, 11, 25),
(1, 3, 11, 40),
(1, 4, 11, 60),
(1, 5, 11, 30),
(1, 6, 11, 20),
(1, 7, 11, 10),
(1, 8, 11, 15),
(1, 9, 11, 5),
(1, 10, 11, 35),
(1, 1, 21, 50),
(1, 2, 21, 25),
(1, 3, 21, 40),
(1, 4, 21, 60),
(1, 5, 21, 30),
(1, 6, 21, 20),
(1, 7, 21, 10),
(1, 8, 21, 15),
(1, 9, 21, 5),
(1, 10, 21, 35),
(1, 1, 39, 50),
(1, 2, 39, 25),
(1, 3, 39, 40),
(1, 4, 39, 60),
(1, 5, 39, 30),
(1, 6, 39, 20),
(1, 7, 39, 10),
(1, 8, 39, 15),
(1, 9, 39, 5),
(1, 10, 39, 35),
(1, 1, 47, 50),
(1, 2, 47, 25),
(1, 3, 47, 40),
(1, 4, 47, 60),
(1, 5, 47, 30),
(1, 6, 47, 20),
(1, 7, 47, 10),
(1, 8, 47, 15),
(1, 9, 47, 5),
(1, 10, 47, 35),
(2, 1, 2, 30),
(2, 2, 2, 45),
(2, 3, 2, 15),
(2, 4, 2, 50),
(2, 5, 2, 20),
(2, 6, 2, 35),
(2, 7, 2, 5),
(2, 8, 2, 25),
(2, 9, 2, 10),
(2, 10, 2, 30),
(2, 1, 12, 30),
(2, 2, 12, 45),
(2, 3, 12, 15),
(2, 4, 12, 50),
(2, 5, 12, 20),
(2, 6, 12, 35),
(2, 7, 12, 5),
(2, 8, 12, 25),
(2, 9, 12, 10),
(2, 10, 12, 30),
(2, 1, 22, 30),
(2, 2, 22, 45),
(2, 3, 22, 15),
(2, 4, 22, 50),
(2, 5, 22, 20),
(2, 6, 22, 35),
(2, 7, 22, 5),
(2, 8, 22, 25),
(2, 9, 22, 10),
(2, 10, 22, 30),
(2, 1, 32, 30),
(2, 2, 32, 45),
(2, 3, 32, 15),
(2, 4, 32, 50),
(2, 5, 32, 20),
(2, 6, 32, 35),
(2, 7, 32, 5),
(2, 8, 32, 25),
(2, 9, 32, 10),
(2, 10, 32, 30),
(2, 1, 37, 30),
(2, 2, 37, 45),
(2, 3, 37, 15),
(2, 4, 37, 50),
(2, 5, 37, 20),
(2, 6, 37, 35),
(2, 7, 37, 5),
(2, 8, 37, 25),
(2, 9, 37, 10),
(2, 10, 37, 30),
(2, 1, 18, 30),
(2, 2, 18, 45),
(2, 3, 18, 15),
(2, 4, 18, 50),
(2, 5, 18, 20),
(2, 6, 18, 35),
(2, 7, 18, 5),
(2, 8, 18, 25),
(2, 9, 18, 10),
(2, 10, 18, 30),
(3, 1, 3, 20),
(3, 2, 3, 10),
(3, 3, 3, 35),
(3, 4, 3, 25),
(3, 5, 3, 40),
(3, 6, 3, 30),
(3, 7, 3, 15),
(3, 8, 3, 20),
(3, 9, 3, 5),
(3, 10, 3, 10),
(3, 1, 13, 20),
(3, 2, 13, 10),
(3, 3, 13, 35),
(3, 4, 13, 25),
(3, 5, 13, 40),
(3, 6, 13, 30),
(3, 7, 13, 15),
(3, 8, 13, 20),
(3, 9, 13, 5),
(3, 10, 13, 10),
(3, 1, 23, 20),
(3, 2, 23, 10),
(3, 3, 23, 35),
(3, 4, 23, 25),
(3, 5, 23, 40),
(3, 6, 23, 30),
(3, 7, 23, 15),
(3, 8, 23, 20),
(3, 9, 23, 5),
(3, 10, 23, 10),
(3, 1, 2, 20),
(3, 2, 2, 10),
(3, 3, 2, 35),
(3, 4, 2, 25),
(3, 5, 2, 40),
(3, 6, 2, 30),
(3, 7, 2, 15),
(3, 8, 2, 20),
(3, 9, 2, 5),
(3, 10, 2, 10),
(3, 1, 49, 20),
(3, 2, 49, 10),
(3, 3, 49, 35),
(3, 4, 49, 25),
(3, 5, 49, 40),
(3, 6, 49, 30),
(3, 7, 49, 15),
(3, 8, 49, 20),
(3, 9, 49, 5),
(3, 10, 49, 10),
(4, 1, 4, 25),
(4, 2, 4, 35),
(4, 3, 4, 10),
(4, 4, 4, 45),
(4, 5, 4, 15),
(4, 6, 4, 20),
(4, 7, 4, 5),
(4, 8, 4, 30),
(4, 9, 4, 25),
(4, 10, 4, 10),
(4, 1, 14, 25),
(4, 2, 14, 35),
(4, 3, 14, 10),
(4, 4, 14, 45),
(4, 5, 14, 15),
(4, 6, 14, 20),
(4, 7, 14, 5),
(4, 8, 14, 30),
(4, 9, 14, 25),
(4, 10, 14, 10),
(4, 1, 24, 25),
(4, 2, 24, 35),
(4, 3, 24, 10),
(4, 4, 24, 45),
(4, 5, 24, 15),
(4, 6, 24, 20),
(4, 7, 24, 5),
(4, 8, 24, 30),
(4, 9, 24, 25),
(4, 10, 24, 10),
(4, 1, 35, 25),
(4, 2, 35, 35),
(4, 3, 35, 10),
(4, 4, 35, 45),
(4, 5, 35, 15),
(4, 6, 35, 20),
(4, 7, 35, 5),
(4, 8, 35, 30),
(4, 9, 35, 25),
(4, 10, 35, 10),
(4, 1, 43, 25),
(4, 2, 43, 35),
(4, 3, 43, 10),
(4, 4, 43, 45),
(4, 5, 43, 15),
(4, 6, 43, 20),
(4, 7, 43, 5),
(4, 8, 43, 30),
(4, 9, 43, 25),
(4, 10, 43, 10),
(5, 1, 5, 40),
(5, 2, 5, 20),
(5, 3, 5, 30),
(5, 4, 5, 10),
(5, 5, 5, 35),
(5, 6, 5, 25),
(5, 7, 5, 15),
(5, 8, 5, 5),
(5, 9, 5, 20),
(5, 10, 5, 30),
(5, 1, 15, 40),
(5, 2, 15, 20),
(5, 3, 15, 30),
(5, 4, 15, 10),
(5, 5, 15, 35),
(5, 6, 15, 25),
(5, 7, 15, 15),
(5, 8, 15, 5),
(5, 9, 15, 20),
(5, 10, 15, 30),
(5, 1, 25, 40),
(5, 2, 25, 20),
(5, 3, 25, 30),
(5, 4, 25, 10),
(5, 5, 25, 35),
(5, 6, 25, 25),
(5, 7, 25, 15),
(5, 8, 25, 5),
(5, 9, 25, 20),
(5, 10, 25, 30),
(5, 1, 40, 40),
(5, 2, 40, 20),
(5, 3, 40, 30),
(5, 4, 40, 10),
(5, 5, 40, 35),
(5, 6, 40, 25),
(5, 7, 40, 15),
(5, 8, 40, 5),
(5, 9, 40, 20),
(5, 10, 40, 30),
(5, 1, 31, 40),
(5, 2, 31, 20),
(5, 3, 31, 30),
(5, 4, 31, 10),
(5, 5, 31, 35),
(5, 6, 31, 25),
(5, 7, 31, 15),
(5, 8, 31, 5),
(5, 9, 31, 20),
(5, 10, 31, 30),
(6, 1, 6, 10),
(6, 2, 6, 30),
(6, 3, 6, 25),
(6, 4, 6, 20),
(6, 5, 6, 40),
(6, 6, 6, 35),
(6, 7, 6, 10),
(6, 8, 6, 15),
(6, 9, 6, 5),
(6, 10, 6, 20),
(6, 1, 16, 10),
(6, 2, 16, 30),
(6, 3, 16, 25),
(6, 4, 16, 20),
(6, 5, 16, 40),
(6, 6, 16, 35),
(6, 7, 16, 10),
(6, 8, 16, 15),
(6, 9, 16, 5),
(6, 10, 16, 20),
(6, 1, 26, 10),
(6, 2, 26, 30),
(6, 3, 26, 25),
(6, 4, 26, 20),
(6, 5, 26, 40),
(6, 6, 26, 35),
(6, 7, 26, 10),
(6, 8, 26, 15),
(6, 9, 26, 5),
(6, 10, 26, 20),
(6, 1, 33, 10),
(6, 2, 33, 30),
(6, 3, 33, 25),
(6, 4, 33, 20),
(6, 5, 33, 40),
(6, 6, 33, 35),
(6, 7, 33, 10),
(6, 8, 33, 15),
(6, 9, 33, 5),
(6, 10, 33, 20),
(7, 1, 7, 15),
(7, 2, 7, 10),
(7, 3, 7, 25),
(7, 4, 7, 30),
(7, 5, 7, 20),
(7, 6, 7, 5),
(7, 7, 7, 15),
(7, 8, 7, 20),
(7, 9, 7, 10),
(7, 10, 7, 5),
(7, 1, 17, 15),
(7, 2, 17, 10),
(7, 3, 17, 25),
(7, 4, 17, 30),
(7, 5, 17, 20),
(7, 6, 17, 5),
(7, 7, 17, 15),
(7, 8, 17, 20),
(7, 9, 17, 10),
(7, 10, 17, 5),
(7, 1, 27, 15),
(7, 2, 27, 10),
(7, 3, 27, 25),
(7, 4, 27, 30),
(7, 5, 27, 20),
(7, 6, 27, 5),
(7, 7, 27, 15),
(7, 8, 27, 20),
(7, 9, 27, 10),
(7, 10, 27, 5),
(7, 1, 31, 15),
(7, 2, 31, 10),
(7, 3, 31, 25),
(7, 4, 31, 30),
(7, 5, 31, 20),
(7, 6, 31, 5),
(7, 7, 31, 15),
(7, 8, 31, 20),
(7, 9, 31, 10),
(7, 10, 31, 5),
(8, 1, 8, 20),
(8, 2, 8, 35),
(8, 3, 8, 25),
(8, 4, 8, 10),
(8, 5, 8, 15),
(8, 6, 8, 30),
(8, 7, 8, 20),
(8, 8, 8, 5),
(8, 9, 8, 15),
(8, 10, 8, 10),
(8, 1, 18, 20),
(8, 2, 18, 35),
(8, 3, 18, 25),
(8, 4, 18, 10),
(8, 5, 18, 15),
(8, 6, 18, 30),
(8, 7, 18, 20),
(8, 8, 18, 5),
(8, 9, 18, 15),
(8, 10, 18, 10),
(8, 1, 28, 20),
(8, 2, 28, 35),
(8, 3, 28, 25),
(8, 4, 28, 10),
(8, 5, 28, 15),
(8, 6, 28, 30),
(8, 7, 28, 20),
(8, 8, 28, 5),
(8, 9, 28, 15),
(8, 10, 28, 10),
(8, 1, 38, 20),
(8, 2, 38, 35),
(8, 3, 38, 25),
(8, 4, 38, 10),
(8, 5, 38, 15),
(8, 6, 38, 30),
(8, 7, 38, 20),
(8, 8, 38, 5),
(8, 9, 38, 15),
(8, 10, 38, 10),
(8, 1, 46, 20),
(8, 2, 46, 35),
(8, 3, 46, 25),
(8, 4, 46, 10),
(8, 5, 46, 15),
(8, 6, 46, 30),
(8, 7, 46, 20),
(8, 8, 46, 5),
(8, 9, 46, 15),
(8, 10, 46, 10),
(9, 1, 9, 3),
(9, 2, 9, 12),
(9, 3, 9, 5),
(9, 5, 9, 6),
(9, 8, 9, 12),
(9, 9, 9, 15),
(9, 10, 9, 15),
(9, 1, 19, 3),
(9, 2, 19, 12),
(9, 3, 19, 5),
(9, 5, 19, 6),
(9, 8, 19, 12),
(9, 9, 19, 15),
(9, 10, 19, 15),
(9, 1, 29, 3),
(9, 2, 29, 12),
(9, 3, 29, 5),
(9, 5, 29, 6),
(9, 8, 29, 12),
(9, 9, 29, 15),
(9, 10, 29, 15),
(9, 1, 34, 3),
(9, 2, 34, 12),
(9, 3, 34, 5),
(9, 5, 34, 6),
(9, 8, 34, 12),
(9, 9, 34, 15),
(9, 10, 34, 15),
(9, 1, 13, 3),
(9, 2, 13, 12),
(9, 3, 13, 5),
(9, 5, 13, 6),
(9, 8, 13, 12),
(9, 9, 13, 15),
(9, 10, 13, 15),
(10, 1, 10, 8),
(10, 4, 10, 4),
(10, 5, 10, 20),
(10, 6, 10, 6),
(10, 7, 10, 8),
(10, 8, 10, 11),
(10, 9, 10, 16),
(10, 10, 10, 18),
(10, 1, 20, 8),
(10, 4, 20, 4),
(10, 5, 20, 20),
(10, 6, 20, 6),
(10, 7, 20, 8),
(10, 8, 20, 11),
(10, 9, 20, 16),
(10, 10, 20, 18),
(10, 1, 30, 8),
(10, 4, 30, 4),
(10, 5, 30, 20),
(10, 6, 30, 6),
(10, 7, 30, 8),
(10, 8, 30, 11),
(10, 9, 30, 16),
(10, 10, 30, 18),
(10, 1, 36, 8),
(10, 4, 36, 4),
(10, 5, 36, 20),
(10, 6, 36, 6),
(10, 7, 36, 8),
(10, 8, 36, 11),
(10, 9, 36, 16),
(10, 10, 36, 18),
(10, 1, 42, 8),
(10, 4, 42, 4),
(10, 5, 42, 20),
(10, 6, 42, 6),
(10, 7, 42, 8),
(10, 8, 42, 11),
(10, 9, 42, 16),
(10, 10, 42, 18),
(10, 1, 35, 8),
(10, 4, 35, 4),
(10, 5, 35, 20),
(10, 6, 35, 6),
(10, 7, 35, 8),
(10, 8, 35, 11),
(10, 9, 35, 16),
(10, 10, 35, 18);

-- --------------------------------------------------------

--
-- Table structure for table `fact_sales`
--

CREATE TABLE `fact_sales` (
  `dim_prodID` smallint(5) NOT NULL,
  `dim_custID` smallint(5) NOT NULL,
  `dim_branchID` smallint(5) NOT NULL,
  `dateID` smallint(5) NOT NULL,
  `totalSales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fact_sales`
--

INSERT INTO `fact_sales` (`dim_prodID`, `dim_custID`, `dim_branchID`, `dateID`, `totalSales`) VALUES
(1, 1, 1, 1, 5),
(1, 1, 1, 11, 1),
(1, 1, 1, 21, 3),
(1, 17, 7, 39, 1),
(1, 25, 5, 47, 5),
(2, 2, 2, 2, 3),
(2, 23, 3, 12, 3),
(2, 22, 2, 22, 4),
(2, 10, 10, 32, 3),
(2, 15, 5, 37, 3),
(2, 23, 3, 18, 3),
(3, 3, 3, 3, 2),
(3, 32, 2, 13, 2),
(3, 31, 1, 23, 2),
(3, 19, 9, 2, 3),
(3, 27, 7, 49, 3),
(4, 4, 4, 4, 1),
(4, 41, 1, 14, 4),
(4, 43, 3, 24, 1),
(4, 13, 3, 35, 4),
(4, 21, 1, 43, 4),
(5, 5, 5, 5, 4),
(5, 5, 5, 15, 1),
(5, 50, 10, 25, 4),
(5, 18, 8, 40, 6),
(5, 26, 6, 31, 2),
(6, 6, 6, 6, 2),
(6, 46, 6, 16, 2),
(6, 6, 6, 26, 2),
(6, 11, 1, 33, 1),
(7, 7, 7, 7, 1),
(7, 47, 7, 17, 3),
(7, 17, 7, 27, 1),
(7, 49, 9, 31, 5),
(8, 8, 8, 8, 3),
(8, 38, 8, 18, 4),
(8, 28, 8, 28, 3),
(8, 16, 6, 38, 2),
(8, 24, 4, 46, 1),
(9, 9, 9, 9, 2),
(9, 9, 9, 19, 1),
(9, 39, 9, 29, 2),
(9, 12, 2, 34, 2),
(9, 22, 2, 13, 2),
(10, 10, 10, 10, 4),
(10, 10, 10, 20, 2),
(10, 10, 10, 30, 4),
(10, 14, 4, 36, 1),
(10, 20, 10, 42, 1),
(10, 28, 8, 35, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dim_branch`
--
ALTER TABLE `dim_branch`
  ADD PRIMARY KEY (`dim_branchID`);

--
-- Indexes for table `dim_customer`
--
ALTER TABLE `dim_customer`
  ADD PRIMARY KEY (`dim_custID`);

--
-- Indexes for table `dim_date`
--
ALTER TABLE `dim_date`
  ADD PRIMARY KEY (`dateID`);

--
-- Indexes for table `dim_product`
--
ALTER TABLE `dim_product`
  ADD PRIMARY KEY (`dim_prodID`);

--
-- Indexes for table `fact_inventory`
--
ALTER TABLE `fact_inventory`
  ADD KEY `dim_prodID` (`dim_prodID`),
  ADD KEY `dim_branchID` (`dim_branchID`),
  ADD KEY `dateID` (`dateID`);

--
-- Indexes for table `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD KEY `dim_prodID` (`dim_prodID`),
  ADD KEY `dim_custID` (`dim_custID`),
  ADD KEY `dim_branchID` (`dim_branchID`),
  ADD KEY `dateID` (`dateID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dim_date`
--
ALTER TABLE `dim_date`
  MODIFY `dateID` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fact_inventory`
--
ALTER TABLE `fact_inventory`
  ADD CONSTRAINT `fact_inventory_ibfk_1` FOREIGN KEY (`dim_prodID`) REFERENCES `dim_product` (`dim_prodID`),
  ADD CONSTRAINT `fact_inventory_ibfk_2` FOREIGN KEY (`dim_branchID`) REFERENCES `dim_branch` (`dim_branchID`),
  ADD CONSTRAINT `fact_inventory_ibfk_3` FOREIGN KEY (`dateID`) REFERENCES `dim_date` (`dateID`);

--
-- Constraints for table `fact_sales`
--
ALTER TABLE `fact_sales`
  ADD CONSTRAINT `fact_sales_ibfk_1` FOREIGN KEY (`dim_prodID`) REFERENCES `dim_product` (`dim_prodID`),
  ADD CONSTRAINT `fact_sales_ibfk_2` FOREIGN KEY (`dim_custID`) REFERENCES `dim_customer` (`dim_custID`),
  ADD CONSTRAINT `fact_sales_ibfk_3` FOREIGN KEY (`dim_branchID`) REFERENCES `dim_branch` (`dim_branchID`),
  ADD CONSTRAINT `fact_sales_ibfk_4` FOREIGN KEY (`dateID`) REFERENCES `dim_date` (`dateID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
