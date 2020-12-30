-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 07:24 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codexworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `dania`
--

CREATE TABLE `dania` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dania`
--

INSERT INTO `dania` (`id`, `title`, `status`) VALUES
(1, 'Zupa krem z zielonych warzyw', 1),
(2, 'Ryż na parze z sosem meksykańskim', 1),
(3, 'Filet z indyka na parze', 1),
(4, 'Zupa pomidorowa z makaronem', 1),
(5, 'Barszcz czerwony z jajkiem', 1),
(6, 'Łosoś na parze z ziemniakami', 1),
(7, 'Bułeczka drożdżowa', 1),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi', 1),
(9, 'Musli na mleku', 1),
(10, 'Zupa jarzynowa z ziemniakami', 1),
(11, 'Potrawka z kurczaka z ryżem', 1),
(12, 'Rosół z makaronem', 1),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem', 1),
(14, 'Pulpety drobiowe z sosem pomidorowym', 1),
(15, 'Zupa szczawiowa', 1),
(16, 'Kluski lane ze strogonowem', 1),
(17, 'Zupa krupnik z ziemniakami', 1),
(18, 'Naleśnik owsiany z serkiem naturalnym', 1),
(19, 'Kotlety ziemniaczane', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
