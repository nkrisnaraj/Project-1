-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2024 at 11:21 AM
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
-- Database: `elitez`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `adminID` int(11) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(200) NOT NULL,
  `adminContactNumber` int(11) NOT NULL,
  `adminAddress` varchar(50) NOT NULL,
  `is_first_login` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`adminID`, `adminName`, `email`, `password`, `adminContactNumber`, `adminAddress`, `is_first_login`) VALUES
(1, 'N Krisnaraj', 'nkrisnaraj007@gmail.com', '$2y$10$iFxjRdcjvXK0kqGQ5XH3xeOSRNWT1.ejhFQ3p2JzlbHqStJt8hn4a', 768252429, 'Javalkulam, Anaicoddai, Jaffna', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `billID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `billDate` datetime DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `customer_id` varchar(255) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `product_name`, `customer_id`, `product_id`, `quantity`, `price`, `product_image`, `created_at`, `updated_at`, `status`) VALUES
(18, 'Pepsi small 200ml', 'CUST1', 'P002', 10, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-17 13:45:22', '2024-10-19 11:37:44', 'ordered'),
(20, 'Pepsi 1.5l', 'CUST1', 'P001', 6, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-18 11:11:45', '2024-10-19 11:37:44', 'ordered'),
(21, 'Maliban Chocalate cr', 'CUST1', 'P004', 5, 450.00, '../../../public/images/products/P004/116172--01--1555692003.jpeg', '2024-10-18 16:36:12', '2024-10-19 11:43:21', 'ordered'),
(22, 'Maliban Digestive bi', 'CUST1', 'P006', 7, 345.00, '../../../public/images/products/P006/123489--01--1695123853.jpeg', '2024-10-18 16:36:17', '2024-10-19 21:25:33', 'ordered'),
(23, 'Pepsi 1.5l', 'CUST1', 'P001', 1, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-18 16:41:35', '2024-10-19 11:37:44', 'ordered'),
(24, 'Pepsi 1.5l', 'CUST1', 'P001', 9, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 11:44:01', '2024-10-19 22:31:42', 'pending'),
(25, 'Pepsi tin 200ml', 'CUST1', 'P003', 8, 185.00, '../../../public/images/products/P003/4060800303141.jpg', '2024-10-19 11:44:14', '2024-10-19 11:59:50', 'pending'),
(26, 'Pepsi small 200ml', 'CUST1', 'P002', 7, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-19 11:48:26', '2024-10-19 13:42:28', 'ordered'),
(27, 'Pepsi 1.5l', 'CUST2', 'P001', 3, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 15:54:52', '2024-10-19 16:08:09', 'ordered'),
(28, 'Pepsi tin 200ml', 'CUST2', 'P003', 4, 185.00, '../../../public/images/products/P003/4060800303141.jpg', '2024-10-19 15:55:29', '2024-10-19 16:08:09', 'ordered'),
(29, 'Pepsi small 200ml', 'CUST2', 'P002', 11, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-19 17:08:39', '2024-10-19 17:14:01', 'ordered'),
(30, 'Maliban Chocalate cr', 'CUST2', 'P004', 18, 450.00, '../../../public/images/products/P004/116172--01--1555692003.jpeg', '2024-10-19 17:08:49', '2024-10-19 19:06:13', 'ordered'),
(31, 'Maliban Cream filled', 'CUST2', 'P005', 1, 280.00, '../../../public/images/products/P005/120651--01--1643726820.jpeg', '2024-10-19 17:08:55', '2024-10-19 19:07:35', 'ordered'),
(32, 'Pepsi small 200ml', 'CUST2', 'P002', 100, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-19 19:09:07', '2024-10-19 19:09:41', 'ordered'),
(33, 'Pepsi tin 200ml', 'CUST2', 'P003', 10, 185.00, '../../../public/images/products/P003/4060800303141.jpg', '2024-10-19 19:09:15', '2024-10-19 19:09:41', 'ordered'),
(34, 'Pepsi 1.5l', 'CUST2', 'P001', 5, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 19:14:06', '2024-10-19 19:14:15', 'ordered'),
(35, 'Pepsi small 200ml', 'CUST2', 'P002', 1, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-19 19:18:35', '2024-10-19 19:18:41', 'ordered'),
(36, 'Pepsi 1.5l', 'CUST2', 'P001', 25, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 19:25:43', '2024-10-19 19:26:03', 'ordered'),
(37, 'Pepsi tin 200ml', 'CUST2', 'P003', 45, 185.00, '../../../public/images/products/P003/4060800303141.jpg', '2024-10-19 19:25:47', '2024-10-19 19:26:03', 'ordered'),
(38, 'Maliban Cream filled', 'CUST2', 'P005', 21, 280.00, '../../../public/images/products/P005/120651--01--1643726820.jpeg', '2024-10-19 19:31:35', '2024-10-19 19:31:54', 'ordered'),
(39, 'Maliban Digestive bi', 'CUST2', 'P006', 13, 345.00, '../../../public/images/products/P006/123489--01--1695123853.jpeg', '2024-10-19 19:31:39', '2024-10-19 19:31:54', 'ordered'),
(40, 'Pepsi 1.5l', 'CUST2', 'P001', 100, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 20:08:25', '2024-10-19 20:08:38', 'ordered'),
(41, 'Maliban Digestive bi', 'CUST2', 'P006', 100, 345.00, '../../../public/images/products/P006/123489--01--1695123853.jpeg', '2024-10-19 20:18:23', '2024-10-19 20:19:08', 'ordered'),
(42, 'Maliban Cream filled', 'CUST2', 'P005', 7, 280.00, '../../../public/images/products/P005/120651--01--1643726820.jpeg', '2024-10-19 20:18:28', '2024-10-20 09:01:09', 'ordered'),
(47, 'Pepsi 1.5l', 'CUST1', 'P001', 45, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 21:47:51', '2024-10-19 22:34:40', 'pending'),
(48, 'Pepsi 1.5l', 'CUST1', 'P001', 5, 334.00, '../../../public/images/products/P001/images (1).jpeg', '2024-10-19 21:48:29', '2024-10-19 22:45:17', 'pending'),
(49, 'Pepsi small 200ml', 'CUST1', 'P002', 1, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-19 21:48:38', '2024-10-19 21:48:38', 'pending'),
(57, 'Pepsi small 200ml', 'CUST2', 'P002', 1, 120.00, '../../../public/images/products/P002/images.jpeg', '2024-10-20 07:43:24', '2024-10-20 07:43:24', 'pending'),
(58, 'Pepsi tin 200ml', 'CUST2', 'P003', 1, 185.00, '../../../public/images/products/P003/4060800303141.jpg', '2024-10-20 07:43:41', '2024-10-20 07:43:41', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `companyowners`
--

CREATE TABLE `companyowners` (
  `companyOwnerID` varchar(11) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `companyAddress` varchar(300) NOT NULL,
  `district` varchar(100) NOT NULL,
  `businessInfo` varchar(40) NOT NULL,
  `companyOwnerName` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(200) NOT NULL,
  `companyContactNumber` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_first_login` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `companyowners`
--

INSERT INTO `companyowners` (`companyOwnerID`, `companyName`, `companyAddress`, `district`, `businessInfo`, `companyOwnerName`, `email`, `password`, `companyContactNumber`, `image`, `is_first_login`) VALUES
('COMP1', 'Pepsi', 'Javal Kulam , Anaicoddai', 'Jaffna', '', 'Pepsi', 'krisnarajkrisna007@gmail.com', '$2y$10$7J.fkHFQYOne/nL9B/mT0uarlN11ozFcP9.zCgttAwC4LJ6GAPVW.', 768252429, '', 0),
('COMP2', 'Maliban', 'pointpedro', 'Jaffna', '', 'MalibanPVT', 'krisnakrish07@gmail.com', '$2y$10$mD.2gfF/HQoDqGnroL/xSOnaucYq1584nwUDxGl2KNggJHi/AFDnq', 768252429, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactID` varchar(10) NOT NULL,
  `companyOwnerID` varchar(11) DEFAULT NULL,
  `customerID` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `dataFile` varchar(255) DEFAULT NULL,
  `sender` varchar(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerID` varchar(20) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(255) NOT NULL,
  `customerContactNumber` int(11) NOT NULL,
  `customerShopName` varchar(50) NOT NULL,
  `customerAddress` varchar(100) NOT NULL,
  `customerDistrict` varchar(50) NOT NULL,
  `customerShopReferenceNo` varchar(30) NOT NULL,
  `image` varchar(700) NOT NULL,
  `is_first_login` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `customerName`, `email`, `password`, `customerContactNumber`, `customerShopName`, `customerAddress`, `customerDistrict`, `customerShopReferenceNo`, `image`, `is_first_login`) VALUES
('CUST1', 'subatharan', 'nihashinisuba@gmail.com', '$2y$10$Vv3b9h2j/UYpkvhd/ywEEepzEHjtpkGwezfyKVTMdHa1ZxcqLtRN2', 761234577, 'Siva multi center', 'Thampacity,Vadamaratsi', 'Jaffna', '4545', '../../../public/images/customer/CUST1/UWU Road race (1).png', 0),
('CUST2', 'Krisnaraj', 'cst21001@std.uwu.ac.lk', '$2y$10$DA4NuV4KXVVs9A4zN5m5z.oLMHmECIyalGs1SMzLL0qGrx7ONrrBa', 768252429, 'krisna foodcity', 'badulla town, badulla', 'Badulla', '4545', '../../../public/images/customer/CUST2/vecteezy_ai-generated-athletes-running-istanbul-half-marathon-in_35779450.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer_reports`
--

CREATE TABLE `customer_reports` (
  `reportID` int(11) NOT NULL,
  `customerID` varchar(20) DEFAULT NULL,
  `productID` varchar(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `reportType` varchar(50) DEFAULT NULL,
  `reportDescription` text DEFAULT NULL,
  `reportDate` datetime DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveredorders`
--

CREATE TABLE `deliveredorders` (
  `delivered_order_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notificationID` int(11) NOT NULL,
  `customerID` varchar(20) DEFAULT NULL,
  `companyOwnerID` varchar(11) DEFAULT NULL,
  `notificationType` varchar(50) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `reportID` int(11) DEFAULT NULL,
  `notificationMessage` text DEFAULT NULL,
  `notificationDate` datetime DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `orderItemID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `productID` varchar(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`orderItemID`, `orderID`, `productID`, `quantity`, `price`) VALUES
(7, 103, 'P001', 1, 334.00),
(8, 104, 'P006', 11, 345.00),
(9, 104, 'P001', 6, 334.00),
(10, 105, 'P002', 10, 120.00),
(11, 106, 'P002', 10, 120.00),
(12, 106, 'P001', 6, 334.00),
(13, 107, 'P002', 10, 120.00),
(14, 107, 'P001', 6, 334.00),
(15, 108, 'P002', 10, 120.00),
(16, 108, 'P001', 6, 334.00),
(17, 109, 'P004', 5, 450.00),
(18, 110, 'P002', 7, 120.00),
(19, 111, 'P001', 3, 334.00),
(20, 111, 'P003', 4, 185.00),
(21, 112, 'P002', 11, 120.00),
(22, 113, 'P004', 18, 450.00),
(23, 114, 'P005', 1, 280.00),
(24, 115, 'P002', 100, 120.00),
(25, 115, 'P003', 10, 185.00),
(26, 116, 'P001', 5, 334.00),
(27, 117, 'P002', 1, 120.00),
(28, 118, 'P001', 25, 334.00),
(29, 118, 'P003', 45, 185.00),
(30, 119, 'P001', 25, 334.00),
(31, 119, 'P003', 45, 185.00),
(32, 120, 'P001', 25, 334.00),
(33, 120, 'P003', 45, 185.00),
(34, 121, 'P001', 25, 334.00),
(35, 121, 'P003', 45, 185.00),
(36, 122, 'P005', 21, 280.00),
(37, 122, 'P006', 13, 345.00),
(38, 123, 'P001', 100, 334.00),
(39, 124, 'P006', 100, 345.00),
(40, 125, 'P006', 7, 345.00),
(41, 126, 'P005', 7, 280.00);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` varchar(20) NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT current_timestamp(),
  `total` decimal(10,2) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'processing',
  `deliveryDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `total`, `status`, `deliveryDate`) VALUES
(103, 'CUST1', '2024-10-17 19:27:16', 334.00, 'pending', '0000-00-00 00:00:00'),
(104, 'CUST1', '2024-10-18 22:06:36', 5799.00, 'processing', '0000-00-00 00:00:00'),
(105, 'CUST1', '2024-10-19 11:46:16', 1200.00, 'processing', '0000-00-00 00:00:00'),
(106, 'CUST1', '2024-10-19 12:03:22', 3204.00, 'processing', '0000-00-00 00:00:00'),
(107, 'CUST1', '2024-10-19 17:04:06', 3204.00, 'processing', '0000-00-00 00:00:00'),
(108, 'CUST1', '2024-10-19 17:07:44', 3204.00, 'processing', '0000-00-00 00:00:00'),
(109, 'CUST1', '2024-10-19 17:13:21', 2250.00, 'processing', '0000-00-00 00:00:00'),
(110, 'CUST1', '2024-10-19 19:12:27', 840.00, 'processing', '0000-00-00 00:00:00'),
(111, 'CUST2', '2024-10-19 21:38:08', 1742.00, 'pending', '0000-00-00 00:00:00'),
(112, 'CUST2', '2024-10-19 22:44:01', 1320.00, 'pending', '0000-00-00 00:00:00'),
(113, 'CUST2', '2024-10-20 00:36:12', 8100.00, 'pending', '0000-00-00 00:00:00'),
(114, 'CUST2', '2024-10-20 00:37:35', 280.00, 'pending', '0000-00-00 00:00:00'),
(115, 'CUST2', '2024-10-20 00:39:41', 13850.00, 'pending', '0000-00-00 00:00:00'),
(116, 'CUST2', '2024-10-20 00:44:15', 1670.00, 'pending', '0000-00-00 00:00:00'),
(117, 'CUST2', '2024-10-20 00:48:41', 120.00, 'pending', '0000-00-00 00:00:00'),
(118, 'CUST2', '2024-10-20 00:56:03', 16675.00, 'processing', '0000-00-00 00:00:00'),
(119, 'CUST2', '2024-10-20 00:57:23', 16675.00, 'processing', '0000-00-00 00:00:00'),
(120, 'CUST2', '2024-10-20 00:57:57', 16675.00, 'processing', '0000-00-00 00:00:00'),
(121, 'CUST2', '2024-10-20 01:01:14', 16675.00, 'pending', '0000-00-00 00:00:00'),
(122, 'CUST2', '2024-10-20 01:01:54', 10365.00, 'pending', '0000-00-00 00:00:00'),
(123, 'CUST2', '2024-10-20 01:38:38', 33400.00, 'pending', '0000-00-00 00:00:00'),
(124, 'CUST2', '2024-10-20 01:49:07', 34500.00, 'pending', '0000-00-00 00:00:00'),
(125, 'CUST1', '2024-10-20 02:55:33', 2415.00, 'processing', '0000-00-00 00:00:00'),
(126, 'CUST2', '2024-10-20 14:31:09', 1960.00, 'processing', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `paymentID` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `paymentDate` datetime DEFAULT current_timestamp(),
  `amount` decimal(10,2) DEFAULT NULL,
  `paymentMethod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`paymentID`, `orderID`, `paymentDate`, `amount`, `paymentMethod`) VALUES
(1, 111, '2024-10-20 00:09:51', 1742.00, 'credit_card'),
(2, 112, '2024-10-20 00:29:47', 1320.00, 'credit_card'),
(3, 113, '2024-10-20 00:36:18', 8100.00, 'cash_on_delivery'),
(4, 114, '2024-10-20 00:38:04', 280.00, 'credit_card'),
(5, 115, '2024-10-20 00:39:45', 13850.00, 'cash_on_delivery'),
(6, 116, '2024-10-20 00:44:18', 1670.00, 'cash_on_delivery'),
(7, 117, '2024-10-20 00:48:51', 120.00, 'cash_on_delivery'),
(8, 121, '2024-10-20 01:01:22', 16675.00, 'cash_on_delivery'),
(9, 122, '2024-10-20 01:02:08', 10365.00, 'credit_card'),
(10, 123, '2024-10-20 01:46:04', 33400.00, 'credit_card'),
(11, 124, '2024-10-20 01:49:13', 34500.00, 'cash_on_delivery');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productID` varchar(11) NOT NULL,
  `productName` varchar(20) NOT NULL,
  `productCategory` varchar(20) NOT NULL,
  `productPrice` double NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `productNetweight` varchar(20) NOT NULL,
  `productImage` varchar(300) NOT NULL,
  `companyOwnerID` varchar(11) NOT NULL,
  `status` varchar(15) DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `productCategory`, `productPrice`, `productQuantity`, `productNetweight`, `productImage`, `companyOwnerID`, `status`) VALUES
('P001', 'Pepsi 1.5l', 'Soft Drinks', 334, 400, '1500ml', '../../../public/images/products/P001/images (1).jpeg', 'COMP1', 'available'),
('P002', 'Pepsi small 200ml', 'Soft Drinks', 120, 1000, '120ml', '../../../public/images/products/P002/images.jpeg', 'COMP1', 'available'),
('P003', 'Pepsi tin 200ml', 'Soft Drinks', 185, 720, '200 ml', '../../../public/images/products/P003/4060800303141.jpg', 'COMP1', 'available'),
('P004', 'Maliban Chocalate cr', 'Biscuits', 450, 240, '400g', '../../../public/images/products/P004/116172--01--1555692003.jpeg', 'COMP2', 'available'),
('P005', 'Maliban Cream filled', 'Biscuits', 280, 360, '225', '../../../public/images/products/P005/120651--01--1643726820.jpeg', 'COMP2', 'available'),
('P006', 'Maliban Digestive bi', 'Biscuits', 345, 620, '185g', '../../../public/images/products/P006/123489--01--1695123853.jpeg', 'COMP2', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `reviewID` varchar(35) NOT NULL,
  `productID` varchar(11) NOT NULL,
  `customerID` varchar(20) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `reviewText` text DEFAULT NULL,
  `reviewDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_requests`
--

CREATE TABLE `registration_requests` (
  `id` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `businessName` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contactNumber` varchar(15) NOT NULL,
  `district` varchar(100) NOT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `email`, `created_at`) VALUES
(1, 'nkrisnaraj007@gmail.com', '2024-10-19 13:59:14'),
(2, 'kris@gmail.com', '2024-10-19 13:59:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`billID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `cart_items_ibfk_2` (`product_id`);

--
-- Indexes for table `companyowners`
--
ALTER TABLE `companyowners`
  ADD PRIMARY KEY (`companyOwnerID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `customer_reports`
--
ALTER TABLE `customer_reports`
  ADD PRIMARY KEY (`reportID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `deliveredorders`
--
ALTER TABLE `deliveredorders`
  ADD PRIMARY KEY (`delivered_order_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notificationID`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `companyOwnerID` (`companyOwnerID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `reportID` (`reportID`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`orderItemID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_customer` (`customerID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `FK_companyOwnerID` (`companyOwnerID`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`reviewID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `registration_requests`
--
ALTER TABLE `registration_requests`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `billID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `customer_reports`
--
ALTER TABLE `customer_reports`
  MODIFY `reportID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliveredorders`
--
ALTER TABLE `deliveredorders`
  MODIFY `delivered_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notificationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `orderItemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `registration_requests`
--
ALTER TABLE `registration_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customerID`),
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`productID`);

--
-- Constraints for table `customer_reports`
--
ALTER TABLE `customer_reports`
  ADD CONSTRAINT `customer_reports_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  ADD CONSTRAINT `customer_reports_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `customer_reports_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `deliveredorders`
--
ALTER TABLE `deliveredorders`
  ADD CONSTRAINT `deliveredorders_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`),
  ADD CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`companyOwnerID`) REFERENCES `companyowners` (`companyOwnerID`),
  ADD CONSTRAINT `notifications_ibfk_3` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `notifications_ibfk_4` FOREIGN KEY (`reportID`) REFERENCES `customer_reports` (`reportID`);

--
-- Constraints for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK_companyOwnerID` FOREIGN KEY (`companyOwnerID`) REFERENCES `companyowners` (`companyOwnerID`) ON DELETE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`),
  ADD CONSTRAINT `product_reviews_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
