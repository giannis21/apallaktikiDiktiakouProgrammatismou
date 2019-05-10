-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2018 at 01:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diktiakos`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `code` int(11) NOT NULL,
  `username` mediumtext,
  `password` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`code`, `username`, `password`) VALUES
(1, 'frag', 'fragion');

-- --------------------------------------------------------

--
-- Table structure for table `admin_kentrou`
--

CREATE TABLE `admin_kentrou` (
  `code` int(11) NOT NULL,
  `username` mediumtext NOT NULL,
  `password` mediumtext NOT NULL,
  `kentro_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_kentrou`
--

INSERT INTO `admin_kentrou` (`code`, `username`, `password`, `kentro_code`) VALUES
(1, 'giannis', 'frag', 1),
(2, 'pap', 'pap1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `eksetasi`
--

CREATE TABLE `eksetasi` (
  `code` int(11) NOT NULL,
  `date` mediumtext NOT NULL,
  `time` mediumtext NOT NULL,
  `kentro_code` int(11) NOT NULL,
  `flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eksetasi`
--

INSERT INTO `eksetasi` (`code`, `date`, `time`, `kentro_code`, `flag`) VALUES
(2, '20/07/2018', '02:32', 1, 1),
(4, '3/3/2019', '9', 1, 1),
(5, '4/4/2019', '2', 9, 1),
(6, '02/3/2017', '10:00', 9, 1),
(7, '3/4/2018', '00:21', 1, 1),
(8, '5/2/2018', '01:01', 1, 1),
(9, '23/4/2008', '10:00', 1, 1),
(10, '3/3/2015', '9:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eksetazomenos`
--

CREATE TABLE `eksetazomenos` (
  `code` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `eksetasi_code` int(11) NOT NULL,
  `if_approved` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eksetazomenos`
--

INSERT INTO `eksetazomenos` (`code`, `name`, `username`, `password`, `eksetasi_code`, `if_approved`) VALUES
(3, 'Maria', 'marb123', '123123', 7, 0),
(29, 'dimitris', 'dim123', '23u91293u', 9, 0),
(30, 'sakis', 'sakis12', '123123', 2, 0),
(31, 'elpida ', 'kakalia', 'elp12', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `eks_kentro`
--

CREATE TABLE `eks_kentro` (
  `code` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `eks_kentro`
--

INSERT INTO `eks_kentro` (`code`, `name`, `address`) VALUES
(1, 'proto', 'ksilokastroy'),
(3, 'deutero', 'aigaleo'),
(4, 'trito', 'ptolemaidos'),
(7, 'eleu8eriadh', 'leukosias'),
(9, 'zabrid', 'parnu8os');

-- --------------------------------------------------------

--
-- Table structure for table `exet_erotiseis`
--

CREATE TABLE `exet_erotiseis` (
  `exetcode` int(4) NOT NULL,
  `erotcode` int(11) NOT NULL,
  `apanthsh` text NOT NULL,
  `Date` text NOT NULL,
  `Time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exet_erotiseis`
--

INSERT INTO `exet_erotiseis` (`exetcode`, `erotcode`, `apanthsh`, `Date`, `Time`) VALUES
(3, 3, '20.000', '18/9/2018', '13:19:49'),
(3, 5, '600', '18/9/2018', '13:19:43'),
(3, 6, '5', '18/9/2018', '13:19:54'),
(3, 8, '293', '18/9/2018', '13:19:39'),
(3, 12, '1200', '18/9/2018', '13:19:46'),
(30, 3, '10.000', '18/9/2018', '13:2:56'),
(30, 4, '19', '18/9/2018', '13:3:0'),
(30, 5, '250', '18/9/2018', '13:2:41'),
(30, 7, '45', '18/9/2018', '13:3:8'),
(30, 12, '3000', '18/9/2018', '13:3:3');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `code` int(11) NOT NULL,
  `question` mediumtext NOT NULL,
  `ans1` mediumtext NOT NULL,
  `ans2` mediumtext NOT NULL,
  `ans3` mediumtext NOT NULL,
  `ans4` mediumtext NOT NULL,
  `corr` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`code`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `corr`) VALUES
(3, 'poios einai o mesos oros lekseon pou proferei mia gineka sth diarkeia ths meras?', '1500', '10.000', '20.000', '38.000', '20.000'),
(4, 'poses tainies james bond exoun guristei mexri simera?', '12', '19', '27', '32', '12'),
(5, 'poses trixes exei enas an8ropos kata meso oro sta frudia toy?', '250', '600', '1000', '2000', '2000'),
(6, 'posa litra aima periexei o an8ropinos organismos?', '3', '5', '7', '10', '5'),
(7, 'ti pososto epi tois ekato megalonoyn oi kores twn matiwn mas otan blepoume kapoion pou exoume eroteutei?', '45', '63', '70', '90', '70'),
(8, 'posa goal ebale o maradona sthn diarkeia ths karieras tou?', '169', '293', '563', '1001', '293'),
(9, 'pote trabixtike gia proth fora fotografia?', '1827', '1889', '1902', '1920', '1827'),
(11, 'poio einai to pososto twn gnhsiwn ksan8on ston kosmo?', '3', '7', '20', '25', '3'),
(12, 'posa agkathia exei kata meso oro enas skatzoxeros?', '1200', '3000', '6000', '12000', '6000'),
(27, 'posa kila fai xreiazetai enas elefantas imerisiws?', '100', '150', '300', '70', '300');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `admin_kentrou`
--
ALTER TABLE `admin_kentrou`
  ADD PRIMARY KEY (`code`),
  ADD KEY `kentro_code` (`kentro_code`);

--
-- Indexes for table `eksetasi`
--
ALTER TABLE `eksetasi`
  ADD PRIMARY KEY (`code`),
  ADD KEY `kentro_code` (`kentro_code`);

--
-- Indexes for table `eksetazomenos`
--
ALTER TABLE `eksetazomenos`
  ADD PRIMARY KEY (`code`),
  ADD KEY `eksetasi_code` (`eksetasi_code`);

--
-- Indexes for table `eks_kentro`
--
ALTER TABLE `eks_kentro`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `exet_erotiseis`
--
ALTER TABLE `exet_erotiseis`
  ADD PRIMARY KEY (`exetcode`,`erotcode`),
  ADD KEY `erotcode` (`erotcode`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_kentrou`
--
ALTER TABLE `admin_kentrou`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `eksetasi`
--
ALTER TABLE `eksetasi`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `eksetazomenos`
--
ALTER TABLE `eksetazomenos`
  MODIFY `code` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `eks_kentro`
--
ALTER TABLE `eks_kentro`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_kentrou`
--
ALTER TABLE `admin_kentrou`
  ADD CONSTRAINT `admin_kentrou_ibfk_1` FOREIGN KEY (`kentro_code`) REFERENCES `eks_kentro` (`code`);

--
-- Constraints for table `eksetasi`
--
ALTER TABLE `eksetasi`
  ADD CONSTRAINT `eksetasi_ibfk_1` FOREIGN KEY (`kentro_code`) REFERENCES `eks_kentro` (`code`);

--
-- Constraints for table `eksetazomenos`
--
ALTER TABLE `eksetazomenos`
  ADD CONSTRAINT `eksetazomenos_ibfk_1` FOREIGN KEY (`eksetasi_code`) REFERENCES `eksetasi` (`code`);

--
-- Constraints for table `exet_erotiseis`
--
ALTER TABLE `exet_erotiseis`
  ADD CONSTRAINT `exet_erotiseis_ibfk_1` FOREIGN KEY (`exetcode`) REFERENCES `eksetazomenos` (`code`),
  ADD CONSTRAINT `exet_erotiseis_ibfk_2` FOREIGN KEY (`erotcode`) REFERENCES `questions` (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
