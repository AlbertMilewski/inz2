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


-- --------------------------------------------------------

--
-- Table structure for table `aktualne_menu`
--

CREATE TABLE `aktualne_menu` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `typ` varchar(255) COLLATE utf8_unicode_ci NOT NULL
);

--
-- Dumping data for table `aktualne_menu`
--

INSERT INTO `aktualne_menu` (`id`, `title`, `date`, `typ`) VALUES
(1, 'Zupa krem z zielonych warzyw','2020-12-23', 'obiad'),
(2, 'Ryż na parze z sosem meksykańskim', '2020-12-23',  'obiad' ),
(3, 'Filet z indyka na parze', '2020-12-23' , 'obiad' ),
(4, 'Zupa pomidorowa z makaronem', '2020-12-17', 'obiad'),
(5, 'Barszcz czerwony z jajkiem', '2020-12-17', 'obiad'),
(6, 'Łosoś na parze z ziemniakami', '2020-11-17', 'obiad'),
(7, 'Bułeczka drożdżowa', '2020-12-23', 'kolacja'),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi','2020-12-15', 'obiad'),
(9, 'Musli na mleku', '2020-12-23','kolacja'),
(10, 'Zupa jarzynowa z ziemniakami', '2020-12-16', 'obiad'),
(11, 'Potrawka z kurczaka z ryżem', '2020-12-23', 'sniadanie'),
(12, 'Rosół z makaronem', '2020-12-16', 'obiad'),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem', '2020-12-23' , 'kolacja'),
(14, 'Pulpety drobiowe z sosem pomidorowym', '2020-12-21', 'obiad'),
(15, 'Zupa szczawiowa', '2020-12-21', 'sniadanie'),
(16, 'Kluski lane ze strogonowem', '2020-12-23', 'sniadanie'),
(17, 'Zupa krupnik z ziemniakami', '2020-12-20', 'obiad'),
(18, 'Naleśnik owsiany z serkiem naturalnym', '2020-12-23' , 'sniadanie'),
(19, 'Kotlety ziemniaczane', '2020-12-19' , 'obiad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktualne_menu`
--
ALTER TABLE `aktualne_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktualne_menu`
--
ALTER TABLE `aktualne_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;


