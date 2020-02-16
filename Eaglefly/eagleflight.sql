-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2018 at 02:50 AM
-- Server version: 5.7.21
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eagleflight`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `Username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`Username`, `password`) VALUES
('shiva', '12345'),
('dhivya', '123456'),
('sowmi', '123'),
('mano', '123');

-- --------------------------------------------------------

--
-- Table structure for table `faredetails`
--

CREATE TABLE `faredetails` (
  `passengername` varchar(20) NOT NULL,
  `age` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `Fare` varchar(20) NOT NULL,
  `flightname` varchar(20) NOT NULL,
  `flightid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_name` varchar(20) NOT NULL,
  `flight_id` varchar(20) NOT NULL,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `Fare` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_name`, `flight_id`, `source`, `destination`, `Time`, `Fare`) VALUES
('', '', '', '', '', ''),
('toothpaste', '01', 'grocery', 'dhivakar', '10', '15'),
('turmeric', '02', 'grocery', 'dhivakar', '10', '15'),
('indigo', 'bkgzf76', 'delhi', 'chennai', '14:50 ', '12000'),
('EMIRATES', 'EBJDY310', 'MUMBAI', 'DELHI', '13:00', '20000'),
('EMIRATES', 'ESGWIW564', 'KANNAKUMARI', 'JAMMU', '17:00', '25000'),
('EMIRATES', 'GHSFT45', 'DELHI', 'GOA', '13:00', '11000'),
('emiraets', 'hacu6', 'delhi', 'goa', '7:45 am', '15000'),
('emirates', 'hsut34', 'haryana', 'delhi', '8:00 pm', '11000'),
('EMIRATES', 'HYFUJ634', 'DELHI', 'MUMBAI', '12:15', '12000'),
('JETAIRWAYS', 'JSURSI658', 'MUMBAI', 'CHENNAI', '19:00', '13000'),
('JETAIRWAYS', 'JSUYEV387', 'CHENNAI', 'DELHI', '12:00 PM', '12000'),
('KINGFISHER', 'KUIST725', 'CHENNAI', 'GOA', '8:10 PM', '30000'),
('indica', 'qwer', 'chennai', 'bombay', '11:46', '21000'),
('SPICEJET', 'SJHDU4987', 'MUMBAI', 'DELHI', '11:45 AM', '22000'),
('indigo', 'uss123', 'chennai', 'mumbai', '', '10000'),
('INDIGO', 'UUSVBR35', 'CHENNAI', 'MUMBAI', '7:45 PM', '21000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Username` varchar(40) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`) VALUES
('bala@123.com', '8855'),
('dhiva123@gmail.com', 'dhiva123'),
('dhivyachandrasekar1198@gmail.com', 'dhivya123'),
('fjvheruhg', '12345'),
('kirthana26@gmail.com', 'kirthu'),
('kirthana96@gmail.com', 'kirthu'),
('kirthana98@gmail.com', 'kirthana'),
('loki@gmail.com', '123456'),
('mano123@gmail.com', 'mano123'),
('nagan@gmail.com', '123'),
('naveen@123gmail.com', '57076682'),
('navin@gmail.com', '3344'),
('shiva', '12345'),
('shivateja@gmail.com', '1234'),
('sivateja12345@gmail.com', '123456789'),
('sowmiya', '12345'),
('sowmiya806@gmail.com', 'kalaichelvi'),
('vicky.nagan@gmail.com', 'nagan');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `product_id` int(15) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `orderdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `booking_id` mediumint(9) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `age` mediumint(9) DEFAULT NULL,
  `journey_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`booking_id`, `name`, `gender`, `age`, `journey_date`) VALUES
(4, 'pavan', 'male ', 18, '0002-11-17'),
(5, 'shiva', 'male', 18, '0002-11-17'),
(6, 'shiva', 'male', 19, '0002-11-17'),
(7, 'shiva', 'male', 19, '0003-11-17'),
(8, 'shiva', 'male', 19, '0003-11-17'),
(9, 'shiva', 'male', 19, '0003-11-17'),
(10, 'shiva', 'male', 19, '0003-11-17'),
(11, 'shiva', 'male', 19, '0006-11-17'),
(12, 'shiva', 'male', 19, '0006-11-17'),
(13, 'shiva', 'male', 19, '0006-11-17'),
(14, 'dhiva', 'female', 19, '0007-11-17'),
(15, 'dhivya', 'female', 19, '0007-11-17'),
(16, 'asfa', 'male', 22, '0007-11-17'),
(17, 'nagan', 'male', 18, '0007-11-17'),
(18, 'kirthana', 'female', 19, '0008-11-17'),
(19, '345', 'male', 67, '0008-11-17'),
(20, 'mano', 'male', 18, '0008-11-17'),
(21, 'naveen', 'male', 17, '0008-11-17'),
(22, 'mano', 'male', 18, '0008-11-17'),
(23, 'naveen', 'male', 18, '0008-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `sup_name` varchar(30) NOT NULL,
  `sup_pric` int(10) NOT NULL,
  `actual_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `sup_name`, `sup_pric`, `actual_price`) VALUES
(1, 'excel', 'Detergents', 'Dhivakar', 500, 600);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`fname`, `lname`, `email`, `password`) VALUES
('', '', '', ''),
('?', '?', '?', '?'),
('bala', 'murali', 'bala@123.com', '8855'),
('dhiva', 'karan', 'dhiva123@gmail.com', 'dhiva123'),
('dhivya', 'chandrasekar', 'dhivyachandrasekar1198@gmail.com', 'dhivya123'),
('jhebgfu', 'dhfgeru', 'fjvheruhg', '12345'),
('kirthana', 'viveka', 'kirthana26@gmail.com', 'kirthu'),
('kirthana', 'vivek', 'kirthana96@gmail.com', 'kirthu'),
('kirthana', 'vivek', 'kirthana98@gmail.com', 'kirthana'),
('lokesh', 'reddy', 'loki@gmail.com', '123456'),
('mano', 'bala', 'mano123@gmail.com', 'mano123'),
('nagan', 'norwhal', 'nagan@gmail.com', '123'),
('naveen', 'kumar', 'naveen@123gmail.com', '57076682'),
('navin', 'kumar', 'navin@gmail.com', '3344'),
('shiva', 'teja', 'shivateja@gmail.com', '1234'),
('shiva', 'teja', 'sivateja12345@gmail.com', '123456789'),
('sowmi', 'devi', 'sowmiya806@gmail.com', 'kalaichelvi'),
('nagan', 'norwhal', 'vicky.nagan@gmail.com', 'nagan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`),
  ADD UNIQUE KEY `flight_id` (`flight_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `booking_id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
