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
-- Struktura tabeli dla tabeli `dania`
--

CREATE TABLE `dania` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `dania`
--

INSERT INTO `dania` (`id`, `title`) VALUES
(1, 'Zupa krem z zielonych warzyw'),
(2, 'Ryż na parze z sosem meksykańskim'),
(3, 'Filet z indyka na parze'),
(4, 'Zupa pomidorowa z makaronem'),
(5, 'Barszcz czerwony z jajkiem'),
(6, 'Łosoś na parze z ziemniakami'),
(7, 'Bułeczka drożdżowa'),
(8, 'Zupa krem pomarańczowy z płatkami migdałowymi'),
(9, 'Musli na mleku'),
(10, 'Zupa jarzynowa z ziemniakami'),
(11, 'Potrawka z kurczaka z ryżem'),
(12, 'Rosół z makaronem'),
(13, 'Pasta z piersi kurczaka z jajkiem i ogórkiem'),
(14, 'Pulpety drobiowe z sosem pomidorowym'),
(15, 'Zupa szczawiowa'),
(16, 'Kluski lane ze strogonowem'),
(17, 'Zupa krupnik z ziemniakami'),
(18, 'Naleśnik owsiany z serkiem naturalnym'),
(19, 'Kotlety ziemniaczane');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dania`
--
ALTER TABLE `dania`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dania`
--
ALTER TABLE `dania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
