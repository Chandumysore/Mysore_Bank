-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 03:38 PM
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
-- Database: `bank_customers`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust`
--

CREATE TABLE `cust` (
  `acno` varchar(10) NOT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `hint` varchar(30) DEFAULT NULL,
  `bal` int(11) DEFAULT NULL,
  `stuts` int(11) DEFAULT NULL,
  `counter` int(2) DEFAULT NULL,
  `minbal` int(4) DEFAULT NULL,
  `dlimit` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust`
--

INSERT INTO `cust` (`acno`, `cname`, `contact`, `address`, `pass`, `hint`, `bal`, `stuts`, `counter`, `minbal`, `dlimit`) VALUES
('mys0100000', 'chandra hi', 8105255744, 'mysore', '123', 'pari', 0, NULL, 5, 500, 0),
('mys0104643', 'cheathan R', 7894561211, 'mysore', '123', 'pari', 0, NULL, 5, 500, 0),
('mys0108473', 'vijesha', 8732592416, 'mysore', '123', 'subbu sir', 4500, 0, 5, 500, 0),
('mys0112259', 'sanath R', 9480222583, 'mysore', '456', 'pari', 0, NULL, 5, 500, 0),
('mys0117408', 'karthik', 4545454545, 'mysore', '1221', 'hg', 1000, NULL, 5, 500, 0),
('mys0118229', 'Avinash P', 8105255744, 'mysore', '123', 'ijrs', 0, NULL, 5, 500, 0),
('mys0118436', 'Bharath ', 1234567890, 'mysore', '123', '123', 0, NULL, 5, 500, 0),
('mys0121899', 'chetan R', 7337792385, 'malavalli', '3223', 'lll', 0, NULL, 5, 500, 0),
('mys0129782', 'mys1', 500, 'my', '1', 'pari', 10, NULL, 5, 500, 0),
('mys0132843', 'Bharath ', 1234567890, 'mysore', '123', 'lll', 0, NULL, 5, 500, 0),
('mys0137522', 'chandra hi', 78945, 'mysore', '123', 'pari', 0, NULL, 5, 500, 0),
('mys0149290', 'chaitra s m', 7406568581, 'mysore', '123', 'sadvidhya', 0, 0, 5, 500, 0),
('mys0149829', 'Shashidhar R', 1234567890, 'Mysore ', '123', 'Shata', 9900, 0, 5, 500, 40000),
('mys0177309', 'sharu', 1234567890, 'mysore', '123', 'ollie', 500, NULL, 5, 500, 0),
('mys0179172', 'shashank', 8660681258, 'usauicbuj', '123', 'mysore', 0, NULL, 5, 500, 0),
('mys0188116', 'karan', 1234567890, 'mysore', '123', 'pari', 3000, 0, 5, 500, 0),
('mys0189472', 'Pooja gowda Ashok', 1000000000, 'mumbai', '123', '123', 0, NULL, 5, 500, 40000),
('mys0194198', 'chandra hi', 500, 'tiputur', '1', 'pari', 1010, 0, 5, 500, 0),
('mys1001', 'chandra', 1234567890, 'mysore', '3', 'pari', 90800, 0, 5, 500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `ID` varchar(10) NOT NULL,
  `Mname` varchar(30) NOT NULL,
  `pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`ID`, `Mname`, `pass`) VALUES
('09mys10015', 'Subhramanya', '321');

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `auto` int(11) NOT NULL,
  `ffrom` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `amt` int(30) NOT NULL,
  `toac` varchar(10) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t1`
--

INSERT INTO `t1` (`auto`, `ffrom`, `type`, `amt`, `toac`, `date`, `time`) VALUES
(1, 'self', 'debit', 500, 'mys1001', '29-12-2022 ', '23:02:03'),
(2, 'self', 'debit', 500, 'mys1001', '29-12-2022 ', '23:11:34'),
(3, 'self', 'credit', 2000, 'mys1001', '29-12-2022 ', '23:18:41'),
(4, 'self', 'credit', 5000, 'mys1001', '29-12-2022 ', '23:19:07'),
(8, 'self', 'debit', 500, 'mys1001', '30-12-2022 ', '01:13:57'),
(9, 'mys1001', 'credit_to_', 500, 'mys0194198', '30-12-2022 ', '01:14:18'),
(10, 'mys0194198', 'debit', 500, 'mys1001', '30-12-2022 ', '01:14:18'),
(11, 'self', 'credit', 500, 'mys1001', '30-12-2022 ', '01:16:10'),
(12, 'self', 'credit', 500, 'mys1001', '30-12-2022 ', '10:01:59'),
(13, 'self', 'debit', 500, 'mys1001', '30-12-2022 ', '10:02:15'),
(14, 'self', 'credit', 500, 'mys0117408', '30-12-2022 ', '14:05:06'),
(15, 'self', 'credit', 500, 'mys0117408', '30-12-2022 ', '14:07:55'),
(16, 'self', 'credit', 500, 'mys0177309', '30-12-2022 ', '14:10:40'),
(17, 'self', 'credit', 500, 'mys0108473', '30-12-2022 ', '14:45:33'),
(18, 'self', 'credit', 5000, 'mys0108473', '30-12-2022 ', '14:49:48'),
(19, 'mys0108473', 'credit_to_', 1000, 'mys1001', '30-12-2022 ', '14:50:28'),
(20, 'mys1001', 'debit', 1000, 'mys0108473', '30-12-2022 ', '14:50:28'),
(21, 'self', 'credit', 500, 'mys0149829', '31-12-2022 ', '20:56:37'),
(22, 'self', 'credit', 10000, 'mys0149829', '31-12-2022 ', '20:59:09'),
(23, 'self', 'debit', 300, 'mys0149829', '31-12-2022 ', '20:59:29'),
(24, 'mys0149829', 'credit_to_', 300, 'mys1001', '31-12-2022 ', '21:00:31'),
(25, 'mys1001', 'debit', 300, 'mys0149829', '31-12-2022 ', '21:00:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust`
--
ALTER TABLE `cust`
  ADD PRIMARY KEY (`acno`),
  ADD UNIQUE KEY `acno` (`acno`);

--
-- Indexes for table `t1`
--
ALTER TABLE `t1`
  ADD PRIMARY KEY (`auto`),
  ADD KEY `toac` (`toac`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t1`
--
ALTER TABLE `t1`
  MODIFY `auto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t1`
--
ALTER TABLE `t1`
  ADD CONSTRAINT `t1_ibfk_1` FOREIGN KEY (`toac`) REFERENCES `cust` (`acno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
