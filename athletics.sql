-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 30. Okt 2020 um 08:52
-- Server-Version: 10.4.13-MariaDB
-- PHP-Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `athletics`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `athlet`
--

CREATE TABLE `athlet` (
  `athlet_id` int(6) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `nation` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `athlet`
--

INSERT INTO `athlet` (`athlet_id`, `first_name`, `last_name`, `nation`) VALUES
(1, 'Rainer', 'Koch', 'Austria'),
(2, 'Chain', 'Mai', 'China'),
(3, 'Miro', 'Kras', 'Poland'),
(4, 'Attila', 'Pinter', 'Hungary'),
(5, 'Susanne', 'Winter', 'USA'),
(6, 'Manuela', 'Bauer', 'Switzerland');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `event`
--

CREATE TABLE `event` (
  `event_id` int(6) NOT NULL,
  `discipline_name` varchar(60) NOT NULL,
  `eventdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `event`
--

INSERT INTO `event` (`event_id`, `discipline_name`, `eventdate`) VALUES
(1, 'marathon', '2021-05-02'),
(2, 'biking', '2021-05-03'),
(3, 'swimming', '2021-05-05');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `eventplace`
--

CREATE TABLE `eventplace` (
  `eventplace_id` int(6) NOT NULL,
  `street_adress` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `eventplace`
--

INSERT INTO `eventplace` (`eventplace_id`, `street_adress`, `city`) VALUES
(1, 'Blumenstraße 5', 'Wien'),
(2, 'Wagnerstraße 13', 'Wien'),
(3, 'Waldweg 18', 'Vösendorf');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `helper`
--

CREATE TABLE `helper` (
  `helper_id` int(6) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `helper_activity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `helper`
--

INSERT INTO `helper` (`helper_id`, `first_name`, `last_name`, `helper_activity`) VALUES
(1, 'Peter', 'Müller', 'Staff'),
(2, 'Susi', 'Berger', 'medical team'),
(3, 'Paul', 'Obermair', 'catering'),
(4, 'Peter', 'Müller', 'Staff'),
(5, 'Susi', 'Berger', 'medical team'),
(6, 'Paul', 'Obermair', 'catering'),
(7, 'Maria', 'Weinhauser', 'cachier'),
(8, 'Gregor', 'Rust', 'guard');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `results`
--

CREATE TABLE `results` (
  `results_id` int(6) NOT NULL,
  `results_rank` int(10) DEFAULT NULL,
  `results_value` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `results`
--

INSERT INTO `results` (`results_id`, `results_rank`, `results_value`) VALUES
(1, 1, 200),
(2, 2, 100),
(3, 3, 50),
(4, 1, 200),
(5, 2, 100),
(6, 3, 75),
(7, 4, 50),
(8, 5, 25),
(9, 10, 200),
(10, 20, 100),
(11, 30, 75),
(12, 40, 50),
(13, 50, 25);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `worksharing`
--

CREATE TABLE `worksharing` (
  `worksharing_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `athlet`
--
ALTER TABLE `athlet`
  ADD PRIMARY KEY (`athlet_id`);

--
-- Indizes für die Tabelle `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indizes für die Tabelle `eventplace`
--
ALTER TABLE `eventplace`
  ADD PRIMARY KEY (`eventplace_id`);

--
-- Indizes für die Tabelle `helper`
--
ALTER TABLE `helper`
  ADD PRIMARY KEY (`helper_id`);

--
-- Indizes für die Tabelle `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`results_id`);

--
-- Indizes für die Tabelle `worksharing`
--
ALTER TABLE `worksharing`
  ADD KEY `worksharing_id` (`worksharing_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `athlet`
--
ALTER TABLE `athlet`
  MODIFY `athlet_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `eventplace`
--
ALTER TABLE `eventplace`
  MODIFY `eventplace_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `helper`
--
ALTER TABLE `helper`
  MODIFY `helper_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `results`
--
ALTER TABLE `results`
  MODIFY `results_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT für Tabelle `worksharing`
--
ALTER TABLE `worksharing`
  MODIFY `worksharing_id` int(6) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `athlet`
--
ALTER TABLE `athlet`
  ADD CONSTRAINT `athlet_ibfk_1` FOREIGN KEY (`athlet_id`) REFERENCES `results` (`results_id`);

--
-- Constraints der Tabelle `helper`
--
ALTER TABLE `helper`
  ADD CONSTRAINT `helper_ibfk_1` FOREIGN KEY (`helper_id`) REFERENCES `event` (`event_id`);

--
-- Constraints der Tabelle `worksharing`
--
ALTER TABLE `worksharing`
  ADD CONSTRAINT `worksharing_ibfk_1` FOREIGN KEY (`worksharing_id`) REFERENCES `helper` (`helper_id`),
  ADD CONSTRAINT `worksharing_ibfk_2` FOREIGN KEY (`worksharing_id`) REFERENCES `event` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
