-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2017 at 06:17 PM
-- Server version: 5.7.17-0ubuntu0.16.04.2
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tooltime`
--
DROP DATABASE `tooltime` IF EXISTS;
CREATE DATABASE IF NOT EXISTS `tooltime` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tooltime`;

-- --------------------------------------------------------

--
-- Table structure for table `Gehört_zu`
--

DROP TABLE IF EXISTS `Gehört_zu`;
CREATE TABLE IF NOT EXISTS `Gehört_zu` (
  `wID` int(5) NOT NULL,
  `zID` int(3) NOT NULL,
  PRIMARY KEY (`wID`,`zID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Lagerort`
--

DROP TABLE IF EXISTS `Lagerort`;
CREATE TABLE IF NOT EXISTS `Lagerort` (
  `LortID` int(2) NOT NULL AUTO_INCREMENT,
  `Regal` int(1) DEFAULT NULL,
  `Fach` int(1) DEFAULT NULL,
  PRIMARY KEY (`LortID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Lagerort`
--

INSERT INTO `Lagerort` (`LortID`, `Regal`, `Fach`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 2, 1),
(6, 2, 2),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 4),
(11, 4, 1),
(12, 4, 2),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3),
(16, 6, 4),
(17, 6, 1),
(18, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Mitarbeiter`
--

DROP TABLE IF EXISTS `Mitarbeiter`;
CREATE TABLE IF NOT EXISTS `Mitarbeiter` (
  `mID` int(5) NOT NULL AUTO_INCREMENT,
  `mGruppe` varchar(15) DEFAULT NULL,
  `VName` varchar(15) DEFAULT NULL,
  `NName` varchar(15) DEFAULT NULL,
  `password` varchar(7) NOT NULL,
  PRIMARY KEY (`mID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Mitarbeiter`
--

INSERT INTO `Mitarbeiter` (`mID`, `mGruppe`, `VName`, `NName`, `password`) VALUES
(5, '1', 'Horst', 'Schlemmer', 'SchHo5'),
(6, '2', 'Dieter', 'Braun', 'BraDi6'),
(7, '1', 'Mario', 'Thomsen', 'ThoMa7'),
(8, '1', 'Kevin', 'Kevinson', 'KevKe8'),
(9, '1', 'Herbert', 'Müller', 'MülHe9'),
(10, '1', 'Frauke', 'Ludowig', 'LudFr10'),
(11, '1', 'Achmed', 'Mhemmed', 'MheAc11'),
(12, '1', 'Kay-Uwe', 'Pendler', 'PenKa12'),
(13, '1', 'Tom', 'Cruiz', 'CruTo13'),
(14, '1', 'Pamela', 'Anderson', 'AndPa14'),
(15, '1', 'Joschka', 'Fischer', 'FisJo15'),
(16, '1', 'Frauke', 'Petri', 'PetFr16'),
(17, '2', 'Angela', 'Merkel', 'MerAn17'),
(18, '2', 'Wladimir', 'Putin', 'PutWl18');

-- --------------------------------------------------------

--
-- Table structure for table `Projekt`
--

DROP TABLE IF EXISTS `Projekt`;
CREATE TABLE IF NOT EXISTS `Projekt` (
  `pID` int(8) NOT NULL AUTO_INCREMENT,
  `kID` int(8) DEFAULT NULL,
  `Ort` varchar(30) DEFAULT NULL,
  `Notiz` text,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Projekt`
--

INSERT INTO `Projekt` (`pID`, `kID`, `Ort`, `Notiz`) VALUES
(1, NULL, 'Haupthalle', '12m Kreuzeryacht'),
(2, NULL, 'Metallhalle', 'Motor mit Schaden'),
(3, NULL, 'Mastenbank', 'Mastbruch');

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
CREATE TABLE IF NOT EXISTS `Status` (
  `StatusID` int(5) NOT NULL AUTO_INCREMENT,
  `wID` int(6) DEFAULT NULL,
  `Defekt` int(3) DEFAULT NULL,
  `Nutzbar` int(3) DEFAULT NULL,
  `Neu` int(3) DEFAULT NULL,
  `Verliehen` int(3) DEFAULT NULL,
  `ZertName` varchar(80) DEFAULT NULL,
  `ZertDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Notiz` text,
  PRIMARY KEY (`StatusID`),
  KEY `wID` (`wID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Werkzeug`
--

DROP TABLE IF EXISTS `Werkzeug`;
CREATE TABLE IF NOT EXISTS `Werkzeug` (
  `wID` int(6) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(100) DEFAULT NULL,
  `wGruppe` int(1) DEFAULT NULL,
  `Anzahl` int(4) DEFAULT NULL,
  `LortID` int(2) DEFAULT NULL,
  PRIMARY KEY (`wID`),
  KEY `LortID` (`LortID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Werkzeug`
--

INSERT INTO `Werkzeug` (`wID`, `Bezeichnung`, `wGruppe`, `Anzahl`, `LortID`) VALUES
(1, 'Torx 20 Schraubenzieher Lang', 4, 5, 1),
(2, 'Festool TS 55 R', 2, 1, 2),
(3, 'Festool TS 55 R', 2, 1, 2),
(4, 'Festool CARVEX PS 420', 2, 1, 3),
(5, 'Festool CARVEX PS 420', 2, 1, 3),
(6, 'Festool OF 1010', 1, 1, 4),
(7, 'Festool OF 1010', 1, 1, 4),
(8, 'MIRKA DEROS 680 CV', 1, 1, 5),
(9, 'MIRKA DEROS 680 CV', 1, 1, 5),
(10, 'MIRKA Staubsauger 915 M', 6, 1, 6),
(11, 'MIRKA Staubsauger 915 M', 6, 1, 6),
(12, 'MIRKA Staubsauger 915 M', 6, 1, 6),
(13, 'MIRKA Staubsauger 915 M', 6, 1, 6),
(14, 'Kugelkopf Hammer 500G', 3, 10, 7),
(15, 'Kugelkopf Hammer 1000G', 3, 5, 7),
(16, 'Schlosser Hammer 500G', 3, 10, 7),
(17, 'Schlosser Hammer 1000G', 3, 5, 7),
(18, 'Japan Säge Typ Ryoba', 2, 10, 8),
(19, 'Japan Säge Typ Kataba', 2, 8, 8),
(20, 'Japan Säge Typ Dozuki', 2, 5, 8),
(21, 'Kettensäge Benzin', 2, 1, 9),
(22, 'wasserpumpenzange', 5, 5, NULL),
(23, 'Makita 18V Akku-Bohrschrauber', 7, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Zubehör`
--

DROP TABLE IF EXISTS `Zubehör`;
CREATE TABLE IF NOT EXISTS `Zubehör` (
  `zID` int(3) NOT NULL AUTO_INCREMENT,
  `LortID` int(2) DEFAULT NULL,
  `Anzahl` int(3) DEFAULT NULL,
  `Bezeichnung` text,
  PRIMARY KEY (`zID`),
  KEY `LortID` (`LortID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Zubehör`
--

INSERT INTO `Zubehör` (`zID`, `LortID`, `Anzahl`, `Bezeichnung`) VALUES
(1, 10, 1, 'Schwert 40 cm'),
(2, 10, 1, 'Schwert 60 cm'),
(3, NULL, 2, 'Kombiedüse mit Teleskoprohr'),
(4, NULL, 2, 'Schiene 2000 cm'),
(5, NULL, 12, 'Schraubzwingen für Schiene'),
(6, NULL, 2, 'Schiene 1200 cm'),
(7, NULL, 2, 'Schiene 1600 cm'),
(8, NULL, 1, 'Absaughaube'),
(9, NULL, 2, 'Radius Anschlag'),
(10, NULL, 2, 'Teller 125 mm');

-- --------------------------------------------------------

--
-- Table structure for table `entleiht`
--

DROP TABLE IF EXISTS `entleiht`;
CREATE TABLE IF NOT EXISTS `entleiht` (
  `mID` int(5) DEFAULT NULL,
  `wID` int(6) DEFAULT NULL,
  `AusleihDate` date DEFAULT NULL,
  `RueckgabeDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `mID` (`mID`),
  KEY `wID` (`wID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Status`
--
ALTER TABLE `Status`
  ADD CONSTRAINT `Status_ibfk_1` FOREIGN KEY (`wID`) REFERENCES `Werkzeug` (`wID`);

--
-- Constraints for table `Werkzeug`
--
ALTER TABLE `Werkzeug`
  ADD CONSTRAINT `Werkzeug_ibfk_1` FOREIGN KEY (`LortID`) REFERENCES `Lagerort` (`LortID`);

--
-- Constraints for table `Zubehör`
--
ALTER TABLE `Zubehör`
  ADD CONSTRAINT `Zubehör_ibfk_2` FOREIGN KEY (`LortID`) REFERENCES `Lagerort` (`LortID`);

--
-- Constraints for table `entleiht`
--
ALTER TABLE `entleiht`
  ADD CONSTRAINT `entleiht_ibfk_1` FOREIGN KEY (`mID`) REFERENCES `Mitarbeiter` (`mID`),
  ADD CONSTRAINT `entleiht_ibfk_2` FOREIGN KEY (`wID`) REFERENCES `Werkzeug` (`wID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
