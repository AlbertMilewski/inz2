-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Sty 2021, 11:36
-- Wersja serwera: 10.4.17-MariaDB
-- Wersja PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `title`, `date`, `created`, `modified`, `status`) VALUES
(1, 'Internet of Things World Forum', '2020-06-17', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(2, 'The Future of Money and Technology Summit', '2020-06-27', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(3, 'Chrome Dev Summit', '2020-06-13', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(4, 'The Lean Startup Conference', '2020-07-07', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(5, 'Web Submit for Developers', '2020-07-29', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(6, 'Digital Codex Submit 2019', '2020-08-11', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(7, 'Google for Games Developer Summit', '2020-06-17', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(8, 'Android Dev Summit 2020', '2020-06-27', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(9, 'Flutter Interact', '2020-06-27', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(10, 'Software Architecture Conference', '2020-07-18', '2020-06-04 16:41:40', '2020-06-04 16:41:40', 1),
(11, 'Lead Dev London', '2020-06-30', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(12, 'Cyber Security & Cloud Expo', '2020-06-30', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(13, 'Blockchain Expo Europe', '2020-07-07', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(14, 'International Conference on Next Generation Computer and Information Technology', '2020-07-20', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(15, '5G Expo North America', '2020-07-04', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(16, '5G Expo North America', '2020-06-13', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(17, 'IoT Tech Expo North America', '2020-08-21', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(18, 'CYBER SECURITY & CLOUD EXPO NORTH AMERICA', '2020-08-21', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1),
(19, '5G Expo Global', '2020-08-31', '2020-06-17 16:41:40', '2020-06-17 16:41:40', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
