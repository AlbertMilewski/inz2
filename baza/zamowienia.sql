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
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id`, `title`, `date`, `username`) VALUES
(1, 'Zupa krem z zielonych warzyw', '2020-12-23', 'amilewski'),
(2, 'Ryż na parze z sosem meksykańskim', '2020-12-23', 'amilewski'),
(3, 'Filet z indyka na parze', '2020-12-17', 'amilewski'),
(4, 'Zupa pomidorowa z makaronem', '2020-12-17', 'amilewski'),
(5, 'Barszcz czerwony z jajkiem', '2020-12-17', 'amilewski'),
(6, 'Łosoś na parze z ziemniakami', '2020-11-17', 'amilewski'),
(7, 'Bułeczka drożdżowa', '2020-12-15', 'amilewski'),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi', '2020-12-15', 'amilewski'),
(9, 'Musli na mleku', '2020-12-23', 'amilewski'),
(10, 'Zupa jarzynowa z ziemniakami', '2020-12-16', 'amilewski'),
(11, 'Potrawka z kurczaka z ryżem', '2020-12-16', 'amilewski'),
(12, 'Rosół z makaronem', '2020-12-16', 'amilewski'),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem', '2020-11-30', 'amilewski'),
(14, 'Pulpety drobiowe z sosem pomidorowym', '2020-12-21', 'amilewski'),
(15, 'Zupa szczawiowa', '2020-12-21', 'amilewski'),
(16, 'Kluski lane ze strogonowem', '2020-12-17', 'amilewski'),
(17, 'Zupa krupnik z ziemniakami', '2020-12-20', 'amilewski'),
(18, 'Naleśnik owsiany z serkiem naturalnym', '2020-12-19', 'amilewski'),
(19, 'Kotlety ziemniaczane', '2020-12-19', 'amilewski'),
(54, 'Kluski lane ze strogonowem', '2020-12-23', 'amilewski'),
(55, 'Kluski lane ze strogonowem', '2020-12-23', 'amilewski'),
(56, 'Kluski lane ze strogonowem', '2020-12-23', 'amilewski'),
(57, 'Kluski lane ze strogonowem', '2020-12-23', 'amilewski'),
(58, 'Kluski lane ze strogonowem', '2020-12-23', 'amilewski');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
