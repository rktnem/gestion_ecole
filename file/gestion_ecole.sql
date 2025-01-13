-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 13 jan. 2025 à 07:40
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion_ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `class` varchar(6) DEFAULT NULL,
  `ecolageId` smallint DEFAULT NULL,
  `droitId` smallint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ecolageId` (`ecolageId`),
  KEY `droitId` (`droitId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `droit`
--

DROP TABLE IF EXISTS `droit`;
CREATE TABLE IF NOT EXISTS `droit` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `ecolage`
--

DROP TABLE IF EXISTS `ecolage`;
CREATE TABLE IF NOT EXISTS `ecolage` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `paymentmonth`
--

DROP TABLE IF EXISTS `paymentmonth`;
CREATE TABLE IF NOT EXISTS `paymentmonth` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `month` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `matricule` varchar(10) DEFAULT NULL,
  `classId` smallint DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classId` (`classId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `student_paymentmonth`
--

DROP TABLE IF EXISTS `student_paymentmonth`;
CREATE TABLE IF NOT EXISTS `student_paymentmonth` (
  `studentId` int DEFAULT NULL,
  `paymentMonthId` smallint DEFAULT NULL,
  `receiptReference` varchar(20) DEFAULT NULL,
  `paymentDate` date DEFAULT NULL,
  KEY `studentId` (`studentId`),
  KEY `paymentMonthId` (`paymentMonthId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
