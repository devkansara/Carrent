-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2021 at 08:14 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(16, 'Ford Figo', 'MH 01 GJ 4920', 'assets/img/cars/figoo.png', 25, 20, 500, 300, 'yes'),
(17, 'Suzuki Dzire', 'MH 04 CZ 4949', 'assets/img/cars/dziree.png', 30, 20, 800, 500, 'yes'),
(18, 'Toyota Fortuner', 'MH 02 FL 9920', 'assets/img/cars/Fortunerr.jpg', 40, 30, 1200, 1000, 'yes'),
(19, 'Maruti Alto', 'MH 01 DE 1433', 'assets/img/cars/alto.png', 10, 6, 300, 230, 'yes'),
(20, 'Honda Amaze', 'MH 02 ED 3123', 'assets/img/cars/amaze.jpeg', 16, 10, 19, 12, 'yes'),
(21, 'Mahindra Bolero', 'MH 03 FG 2314', 'assets/img/cars/bolero.jpg', 25, 19, 500, 400, 'yes'),
(22, 'Tata Harrier', 'MH 04 HZ 6262', 'assets/img/cars/harrier.png', 40, 32, 2000, 1600, 'yes'),
(23, 'Tata Nano', 'MH 05 VB 6287', 'assets/img/cars/nano.jpg', 13, 9, 400, 320, 'yes'),
(24, 'Volkswagen Polo', 'MH 02 2627', 'assets/img/cars/polo.jpg', 20, 15, 900, 800, 'yes'),
(25, 'Kia Seltos', 'MH 01 LH 7121', 'assets/img/cars/seltos.jpg', 30, 23, 1500, 1300, 'yes'),
(26, 'Mercedes G Wagon', 'MH 04 DK 2412', 'assets/img/cars/gwagon.jpg', 60, 55, 4000, 3800, 'yes'),
(27, 'WagonR', 'MH 01 CV 6282', 'assets/img/cars/wagon.jpg', 23, 14, 600, 550, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`car_id`, `client_username`) VALUES
(16, 'dev'),
(17, 'dev'),
(18, 'dev'),
(26, 'dev'),
(27, 'dev'),
(19, 'harsh'),
(20, 'harsh'),
(21, 'harsh'),
(22, 'priyank'),
(23, 'priyank'),
(24, 'priyank'),
(25, 'priyank');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('dev', 'Dev Kansara', '9920911950', 'dev.kansara_19@sakec.ac.i', 'Pali Hills', 'root'),
('harsh', 'Harsh Dhandukiya', '9769255102', 'harsh.dhandukiya_19@sakec', 'Bandra', 'root'),
('priyank', 'Priyank Chheda', '7506019533', 'priyank.chheda_19@sakec.a', 'Jogeshwari', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('dev', 'Dev Kansara', '1234567890', 'dev.kansara_19@sakec.ac.i', 'Pali Hills', 'root'),
('kim', 'Kim Shah', '9930537387', 'kim.shah_19@sakec.ac.in', 'Mira Road', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(8, 'Self Drive', 'None', '9874563210', 'Bandra', 'Male', 'dev', 'yes'),
(9, 'Raju Rastogi', 'MH01263737', '9999999999', 'Worli', 'Male', 'dev', 'yes'),
(10, 'Ankita lokhande', 'MH012523732', '9874759861', 'Khar', 'Female', 'dev', 'yes'),
(13, 'Self Drive', '-', '-', '-', '-', 'harsh', 'yes'),
(14, 'Ramesh Jha', 'MH01255322', '8888888888', 'Goregaon', 'Male', 'harsh', 'yes'),
(15, 'Self Drive', '--', '--', '--', '--', 'priyank', 'yes'),
(16, 'Swapnil', 'Shah', '7777777777', 'Chembur', 'Male', 'priyank', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Dev', 'dadad@gmail.com', 'HELOOOOOO'),
('Harsh', 'dadad@gmail.com', 'Helaoaicjasocjad'),
('Dev', 'dadad@gmail.com', 'Very nyc'),
('Dev', 'dev@gmail.com', 'Helo');

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedcars`
--

INSERT INTO `rentedcars` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681263, 'dev', 16, 8, '2021-10-19', '2021-10-20', '2021-10-21', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681266, 'dev', 16, 8, '2021-10-19', '2021-10-20', '2021-10-21', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681269, 'dev', 16, 8, '2021-10-19', '2021-10-21', '2021-10-22', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681270, 'dev', 16, 8, '2021-10-19', '2021-10-22', '2021-10-23', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681271, 'dev', 16, 8, '2021-10-19', '2021-10-20', '2021-10-21', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681272, 'dev', 16, 8, '2021-10-19', '2021-10-20', '2021-10-21', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681273, 'dev', 16, 8, '2021-10-19', '2021-10-20', '2021-10-21', '2021-10-19', 500, 'days', NULL, 1, 500, 'R'),
(574681274, 'dev', 17, 9, '2021-10-21', '2021-10-22', '2021-10-23', '2021-10-21', 800, 'days', NULL, 1, 800, 'R'),
(574681275, 'dev', 17, 9, '2021-10-21', '2021-10-22', '2021-10-22', '2021-10-21', 800, 'days', NULL, 0, 0, 'R'),
(574681276, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681277, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681278, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681279, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681280, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681281, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681282, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681283, 'dev', 17, 9, '2021-11-08', '2021-11-10', '2021-11-11', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681284, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681285, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681286, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681287, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-11', '2021-11-08', 800, 'days', NULL, 2, 1600, 'R'),
(574681288, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681289, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681290, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681291, 'dev', 17, 9, '2021-11-08', '2021-11-09', '2021-11-10', '2021-11-08', 800, 'days', NULL, 1, 800, 'R'),
(574681292, 'dev', 18, 9, '2021-11-08', '2021-11-10', '2021-11-11', '2021-11-08', 1200, 'days', NULL, 1, 1200, 'R'),
(574681293, 'dev', 18, 9, '2021-11-09', '2021-11-10', '2021-11-11', '2021-11-09', 1200, 'days', NULL, 1, 1200, 'R'),
(574681294, 'dev', 16, 9, '2021-11-09', '2021-11-10', '2021-11-11', '2021-11-09', 500, 'days', NULL, 1, 500, 'R'),
(574681295, 'dev', 18, 9, '2021-11-10', '2021-11-11', '2021-11-12', '2021-11-10', 1200, 'days', NULL, 1, 1200, 'R');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681296;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);

--
-- Constraints for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD CONSTRAINT `rentedcars_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedcars_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`),
  ADD CONSTRAINT `rentedcars_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
