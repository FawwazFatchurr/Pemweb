-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2024 at 11:41 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elden`
--

-- --------------------------------------------------------

--
-- Table structure for table `armor`
--

CREATE TABLE `armor` (
  `id` int NOT NULL,
  `image_weapon` varchar(1000) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slot` varchar(50) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `poise` int DEFAULT NULL,
  `physical` decimal(5,2) DEFAULT NULL,
  `vs_strike` decimal(5,2) DEFAULT NULL,
  `vs_slash` decimal(5,2) DEFAULT NULL,
  `vs_pierce` decimal(5,2) DEFAULT NULL,
  `magic` decimal(5,2) DEFAULT NULL,
  `fire` decimal(5,2) DEFAULT NULL,
  `lightning` decimal(5,2) DEFAULT NULL,
  `holy` decimal(5,2) DEFAULT NULL,
  `immunity` int DEFAULT NULL,
  `robustness` int DEFAULT NULL,
  `focus` int DEFAULT NULL,
  `vitality` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `armor`
--

INSERT INTO `armor` (`id`, `image_weapon`, `name`, `slot`, `weight`, `poise`, `physical`, `vs_strike`, `vs_slash`, `vs_pierce`, `magic`, `fire`, `lightning`, `holy`, `immunity`, `robustness`, `focus`, `vitality`) VALUES
(1, NULL, 'Alberich’s Bracers', 'Arm', '1.40', 0, '1.30', '1.00', '1.30', '1.30', '3.20', '2.90', '3.10', '3.20', 13, 8, 22, 24),
(2, NULL, 'Alberich’s Pointed Hat', 'Head', '1.70', 0, '1.80', '1.40', '1.80', '1.80', '4.60', '4.20', '4.40', '4.60', 16, 10, 29, 31),
(3, NULL, 'Alberich’s Pointed Hat (Altered)', 'Head', '1.00', 0, '0.90', '0.20', '0.90', '0.90', '4.40', '3.80', '4.00', '4.40', 12, 7, 23, 24),
(4, NULL, 'Alberich’s Robe', 'Body', '4.10', 1, '5.30', '4.20', '5.30', '5.30', '12.80', '11.90', '12.40', '12.80', 38, 23, 67, 71),
(5, NULL, 'Alberich’s Robe (Altered)', 'Body', '3.20', 0, '4.20', '2.70', '4.20', '4.20', '12.60', '11.40', '11.90', '12.60', 32, 19, 57, 61),
(6, NULL, 'Alberich’s Set', 'Set', '9.70', 2, '11.40', '8.90', '11.40', '11.40', '27.90', '25.80', '27.10', '27.90', 93, 55, 159, 170),
(7, NULL, 'Alberich’s Trousers', 'Leg', '2.50', 1, '3.00', '2.30', '3.00', '3.00', '7.30', '6.80', '7.20', '7.30', 26, 14, 41, 44),
(8, NULL, 'Albinauric Mask', 'Head', '3.80', 3, '4.00', '3.10', '4.00', '3.80', '2.50', '3.10', '2.10', '2.50', 12, 23, 10, 10),
(9, NULL, 'Albinauric Set', 'Set', '12.60', 17, '15.40', '11.90', '15.90', '15.20', '10.50', '11.90', '8.20', '10.50', 37, 73, 31, 31),
(10, NULL, 'All-Knowing Armor', 'Body', '10.70', 16, '12.90', '11.90', '13.50', '11.90', '12.40', '9.50', '10.20', '8.80', 28, 46, 21, 21),
(11, NULL, 'All-Knowing Armor (Altered)', 'Body', '9.30', 13, '12.40', '10.90', '12.90', '11.40', '11.40', '8.80', '9.50', '8.00', 22, 38, 16, 16),
(12, NULL, 'All-Knowing Gauntlets', 'Arm', '3.50', 4, '3.20', '2.90', '3.30', '2.90', '3.10', '2.30', '2.50', '2.10', 9, 15, 7, 7),
(13, NULL, 'All-Knowing Greaves', 'Leg', '6.60', 10, '7.40', '6.80', '7.70', '6.80', '7.10', '5.40', '5.80', '5.00', 17, 29, 13, 13),
(14, NULL, 'All-Knowing Helm', 'Head', '4.60', 5, '4.60', '4.20', '4.80', '4.20', '4.40', '3.40', '3.60', '3.10', 12, 20, 9, 9),
(15, NULL, 'All-Knowing Set', 'Set', '25.40', 35, '28.10', '25.80', '29.30', '25.80', '27.00', '20.60', '22.10', '19.00', 66, 110, 50, 50),
(16, NULL, 'Aristocrat Boots', 'Leg', '2.90', 1, '4.30', '4.80', '4.30', '4.30', '3.60', '3.80', '4.30', '3.60', 29, 21, 23, 19),
(17, NULL, 'Aristocrat Coat', 'Body', '7.10', 3, '8.80', '8.80', '8.00', '8.80', '10.90', '11.40', '10.90', '8.80', 50, 32, 42, 46),
(18, NULL, 'Aristocrat Garb', 'Body', '4.90', 2, '7.80', '8.60', '7.80', '7.80', '6.50', '6.90', '7.80', '6.50', 47, 33, 36, 30),
(19, NULL, 'Aristocrat Garb (Altered)', 'Body', '4.10', 1, '7.10', '8.00', '7.10', '7.10', '6.10', '6.70', '7.10', '6.10', 42, 29, 32, 25),
(20, NULL, 'Aristocrat Hat', 'Head', '3.00', 1, '3.10', '3.10', '2.80', '3.10', '3.80', '4.00', '3.80', '3.10', 22, 14, 18, 20),
(21, NULL, 'Aristocrat Headband', 'Head', '1.20', 0, '1.90', '1.90', '1.90', '1.60', '4.00', '3.60', '3.80', '4.00', 15, 10, 25, 22),
(22, NULL, 'Aristocrat Set', 'Set', '9.00', 3, '14.00', '15.30', '14.00', '13.70', '14.10', '14.30', '15.90', '14.10', 91, 64, 84, 71),
(23, NULL, 'Ash-of-War Scarab', 'Head', '5.10', 2, '3.80', '3.80', '4.00', '3.80', '4.60', '4.60', '4.60', '4.50', 42, 22, 27, 26),
(24, NULL, 'Astrologer Gloves', 'Arm', '1.40', 1, '1.30', '1.00', '1.00', '1.00', '3.20', '3.10', '3.20', '3.10', 14, 7, 24, 21),
(25, NULL, 'Astrologer Hood', 'Head', '1.70', 1, '1.80', '1.40', '1.40', '1.40', '4.60', '4.50', '4.60', '4.50', 18, 9, 31, 27),
(26, NULL, 'Astrologer Robe', 'Body', '6.30', 5, '6.70', '6.10', '6.10', '6.10', '13.50', '13.00', '13.30', '13.00', 50, 24, 90, 76),
(27, NULL, 'Astrologer Robe (Altered)', 'Body', '5.30', 2, '6.10', '5.30', '5.30', '5.30', '13.30', '12.80', '13.00', '12.80', 42, 21, 75, 64),
(28, NULL, 'Astrologer Set', 'Set', '13.30', 10, '13.60', '11.90', '11.90', '11.90', '29.00', '28.00', '28.70', '28.00', 113, 55, 201, 171),
(29, NULL, 'Astrologer Trousers', 'Leg', '3.90', 3, '3.80', '3.40', '3.40', '3.40', '7.70', '7.40', '7.60', '7.40', 31, 15, 56, 47),
(30, NULL, 'Azur’s Glintstone Crown', 'Head', '3.60', 2, '2.80', '2.30', '2.50', '2.50', '5.80', '4.60', '4.70', '5.00', 23, 14, 44, 39),
(31, NULL, 'Azur’s Glintstone Robe', 'Body', '7.10', 3, '7.10', '6.10', '6.70', '6.70', '15.40', '12.80', '13.00', '13.80', 50, 28, 99, 83),
(32, NULL, 'Azur’s Glintstone Set', 'Set', '11.80', 5, '10.90', '8.50', '9.80', '9.80', '24.60', '20.20', '20.60', '22.00', 85, 50, 165, 142),
(33, NULL, 'Azur’s Manchettes', 'Arm', '1.10', 0, '1.00', '0.10', '0.60', '0.60', '3.40', '2.80', '2.90', '3.20', 12, 8, 22, 20),
(34, NULL, 'Bandit Boots', 'Leg', '4.40', 2, '4.00', '4.50', '5.00', '5.00', '5.40', '5.40', '5.80', '5.00', 34, 20, 35, 35),
(35, NULL, 'Bandit Garb', 'Body', '7.70', 4, '8.00', '8.80', '9.50', '9.50', '10.20', '10.20', '10.90', '9.50', 52, 32, 54, 54),
(36, NULL, 'Bandit Manchettes', 'Arm', '1.70', 0, '1.50', '1.60', '1.70', '1.70', '1.90', '1.90', '2.10', '1.70', 15, 8, 17, 17),
(37, NULL, 'Bandit Mask', 'Head', '3.00', 0, '2.80', '3.10', '3.10', '3.10', '3.10', '3.40', '3.60', '3.10', 30, 14, 14, 16),
(38, NULL, 'Bandit Set', 'Set', '16.80', 6, '16.30', '18.00', '19.30', '19.30', '20.60', '20.90', '22.40', '19.30', 131, 74, 120, 122),
(39, NULL, 'Banished Knight Armor', 'Body', '17.50', 28, '18.70', '15.00', '19.20', '17.50', '13.50', '13.50', '13.00', '13.30', 60, 83, 38, 42),
(40, NULL, 'Banished Knight Armor (Altered)', 'Body', '16.50', 25, '18.50', '14.60', '18.90', '17.00', '13.50', '13.50', '13.00', '13.20', 52, 69, 32, 34),
(41, NULL, 'Banished Knight Gauntlets', 'Arm', '5.80', 6, '4.70', '3.70', '4.90', '4.40', '3.30', '3.30', '3.20', '3.30', 20, 28, 13, 14),
(42, NULL, 'Banished Knight Greaves', 'Leg', '10.80', 17, '10.80', '8.60', '11.10', '10.10', '7.70', '7.70', '7.40', '7.60', 37, 51, 24, 26),
(43, NULL, 'Banished Knight Helm', 'Head', '7.50', 9, '6.80', '5.40', '7.00', '6.30', '4.80', '4.80', '4.60', '4.70', 26, 35, 16, 18),
(44, NULL, 'Beast Champion Armor (Altered)', 'Body', '16.40', 25, '17.20', '16.10', '18.70', '18.70', '13.20', '13.90', '13.00', '13.70', 50, 75, 34, 32),
(45, NULL, 'Beast Champion Gauntlets', 'Arm', '5.80', 6, '4.40', '4.10', '4.70', '4.60', '3.20', '3.40', '3.20', '3.30', 19, 30, 14, 13),
(46, NULL, 'Beast Champion Greaves', 'Leg', '10.80', 17, '10.10', '9.40', '10.80', '10.60', '7.40', '7.90', '7.30', '7.70', 35, 56, 26, 24),
(47, NULL, 'Beast Champion Helm', 'Head', '7.50', 9, '6.30', '5.90', '6.80', '6.70', '4.60', '4.90', '4.60', '4.80', 24, 39, 18, 16),
(48, NULL, 'Beast Champion Set', 'Set', '41.60', 60, '38.30', '35.70', '41.00', '40.20', '28.20', '30.00', '27.90', '29.30', 135, 215, 100, 91),
(49, NULL, 'Black Dumpling', 'Head', '2.70', 1, '2.80', '2.80', '3.10', '2.80', '3.10', '3.40', '3.60', '3.10', 24, 15, 0, 20),
(50, NULL, 'Black Hood', 'Head', '3.00', 1, '2.80', '3.10', '3.10', '3.10', '3.10', '3.40', '3.60', '3.10', 33, 16, 16, 18),
(51, NULL, 'Black Knife Armor', 'Body', '9.20', 14, '11.40', '10.90', '12.40', '12.40', '8.80', '9.50', '6.70', '11.40', 28, 46, 23, 23),
(52, NULL, 'Black Knife Armor (Altered)', 'Body', '9.00', 12, '11.30', '10.80', '12.30', '12.30', '8.70', '9.40', '6.60', '11.30', 25, 42, 21, 21),
(53, NULL, 'Black Knife Gauntlets', 'Arm', '3.10', 3, '2.80', '2.70', '3.10', '3.10', '2.10', '2.30', '1.60', '2.80', 9, 15, 8, 8),
(54, NULL, 'Black Knife Greaves', 'Leg', '5.70', 8, '6.50', '6.20', '7.10', '7.10', '5.00', '5.40', '3.80', '6.50', 17, 29, 14, 14),
(55, NULL, 'Black Knife Hood', 'Head', '3.80', 4, '3.80', '3.60', '4.20', '4.20', '2.80', '3.10', '2.10', '3.80', 11, 18, 9, 9),
(56, NULL, 'Black Knife Set', 'Set', '21.80', 29, '24.50', '23.40', '26.80', '26.80', '18.70', '20.30', '14.20', '24.50', 65, 108, 54, 54),
(57, NULL, 'Black Wolf Mask', 'Head', '5.90', 8, '5.20', '4.60', '5.20', '5.50', '4.00', '4.50', '3.60', '4.20', 16, 33, 11, 11),
(58, NULL, 'Blackflame Monk Armor', 'Body', '11.80', 19, '13.50', '11.40', '14.60', '12.90', '10.20', '13.00', '8.00', '10.20', 32, 55, 21, 32),
(59, NULL, 'Blackflame Monk Gauntlets', 'Arm', '3.90', 4, '3.30', '2.80', '3.60', '3.20', '2.50', '3.20', '1.90', '2.50', 11, 18, 7, 11),
(60, NULL, 'Blackflame Monk Greaves', 'Leg', '7.30', 11, '7.70', '6.50', '8.40', '7.40', '5.80', '7.40', '4.50', '5.80', 20, 34, 13, 20),
(61, NULL, 'Blackflame Monk Hood', 'Head', '4.00', 5, '4.40', '3.40', '4.60', '4.20', '2.80', '4.40', '2.10', '2.80', 11, 20, 5, 11),
(62, NULL, 'Blackflame Monk Set', 'Set', '27.00', 39, '28.90', '24.10', '31.20', '27.70', '21.30', '28.00', '16.50', '21.30', 74, 127, 46, 74),
(63, NULL, 'Blackguard’s Iron Mask', 'Head', '6.20', 8, '5.80', '4.40', '6.10', '5.50', '4.20', '4.40', '4.00', '4.50', 22, 31, 12, 12),
(64, NULL, 'Blaidd’s Armor', 'Body', '13.70', 24, '14.60', '12.90', '14.60', '15.30', '11.40', '12.60', '10.20', '11.90', 38, 76, 25, 25),
(65, NULL, 'Blaidd’s Armor (Altered)', 'Body', '12.50', 20, '14.00', '12.40', '14.00', '14.60', '10.90', '12.40', '9.50', '11.40', 32, 57, 22, 21),
(66, NULL, 'Blaidd’s Gauntlets', 'Arm', '4.60', 5, '3.60', '3.20', '3.60', '3.80', '2.80', '3.20', '2.70', '2.90', 13, 21, 8, 8),
(67, NULL, 'Blaidd’s Greaves', 'Leg', '8.50', 14, '8.40', '7.30', '8.40', '8.80', '6.50', '7.30', '6.20', '6.80', 24, 39, 16, 16),
(68, NULL, 'Blaidd’s Set', 'Set', '32.70', 51, '31.80', '28.00', '31.80', '33.40', '24.70', '27.60', '22.70', '25.80', 91, 169, 60, 60);

-- --------------------------------------------------------

--
-- Table structure for table `character`
--

CREATE TABLE `character` (
  `Class` varchar(255) NOT NULL,
  `Level` int NOT NULL,
  `Vigor` int NOT NULL,
  `Mind` int NOT NULL,
  `Endu` int NOT NULL,
  `Str` int NOT NULL,
  `Dex` int NOT NULL,
  `Intel` int NOT NULL,
  `Faith` int NOT NULL,
  `Arcane` int NOT NULL,
  `HP` int NOT NULL,
  `FP` int NOT NULL,
  `Stamina` int NOT NULL,
  `Poise` int NOT NULL,
  `Eqload` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `character`
--

INSERT INTO `character` (`Class`, `Level`, `Vigor`, `Mind`, `Endu`, `Str`, `Dex`, `Intel`, `Faith`, `Arcane`, `HP`, `FP`, `Stamina`, `Poise`, `Eqload`) VALUES
('Astrologer', 6, 9, 15, 9, 8, 12, 16, 7, 9, 396, 95, 94, 0, 46.6),
('Bandit', 5, 10, 11, 10, 9, 13, 9, 8, 14, 414, 82, 96, 0, 48.2),
('Confessor', 10, 10, 13, 10, 12, 12, 9, 14, 9, 414, 88, 96, 0, 48.2),
('Hero', 7, 14, 9, 12, 16, 9, 7, 8, 11, 499, 75, 99, 0, 51.4),
('Prisoner', 9, 11, 12, 11, 11, 14, 14, 6, 9, 434, 85, 97, 0, 49.8),
('Prophet', 7, 10, 14, 8, 11, 10, 7, 16, 10, 414, 91, 92, 0, 45),
('Samurai', 9, 12, 11, 13, 12, 15, 9, 8, 8, 455, 82, 101, 0, 52.9),
('Vagabond', 9, 15, 10, 11, 14, 13, 9, 9, 7, 522, 78, 97, 0, 49.8),
('Warrior', 8, 11, 12, 11, 10, 16, 10, 8, 9, 434, 85, 97, 0, 49.8),
('Wretch', 1, 10, 10, 10, 10, 10, 10, 10, 10, 414, 78, 96, 0, 48.2);

-- --------------------------------------------------------

--
-- Table structure for table `shield`
--

CREATE TABLE `shield` (
  `id` int NOT NULL,
  `image_weapon` varchar(1000) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `damage_types` varchar(50) DEFAULT NULL,
  `str_scaling` varchar(50) DEFAULT NULL,
  `dex_scaling` varchar(50) DEFAULT NULL,
  `int_scaling` varchar(50) DEFAULT NULL,
  `fai_scaling` varchar(50) DEFAULT NULL,
  `arc_scaling` varchar(50) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `phys_damage` int DEFAULT NULL,
  `mag_damage` int DEFAULT NULL,
  `fir_damage` int DEFAULT NULL,
  `lgt_damage` int DEFAULT NULL,
  `hly_damage` int DEFAULT NULL,
  `crit_damage` int DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shield`
--

INSERT INTO `shield` (`id`, `image_weapon`, `name`, `type`, `damage_types`, `str_scaling`, `dex_scaling`, `int_scaling`, `fai_scaling`, `arc_scaling`, `weight`, `phys_damage`, `mag_damage`, `fir_damage`, `lgt_damage`, `hly_damage`, `crit_damage`, `skill`) VALUES
(1, '0', 'Carian Knight Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, 'D (54)', NULL, NULL, '4.50', 63, 40, 0, 0, 0, 100, 'No Skill'),
(2, '0', 'Large Leather Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.00', 75, 0, 0, 0, 0, 100, 'Parry'),
(3, '0', 'Horse Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'No Skill'),
(4, '0', 'Candletree Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'Parry'),
(5, '0', 'Flame Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'Parry'),
(6, '0', 'Hawk Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'Parry'),
(7, '0', 'Beast Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(8, '0', 'Red Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(9, '0', 'Blue Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(10, '0', 'Eclipse Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'No Skill'),
(11, '0', 'Inverted Hawk Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(12, '0', 'Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(13, '0', 'Black Leather Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.00', 75, 0, 0, 0, 0, 100, 'No Skill'),
(14, '0', 'Messmer Soldier Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '5.00', 80, 0, 0, 0, 0, 100, 'No Skill'),
(15, '0', 'Wolf Crest Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '6.00', 82, 0, 0, 0, 0, 100, 'No Skill'),
(16, '0', 'Serpent Crest Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '6.00', 82, 0, 0, 0, 0, 100, 'No Skill'),
(17, '0', 'Golden Lion Shield', 'Medium Shield', 'Strike', 'B (108)', NULL, NULL, NULL, NULL, '5.50', 81, 0, 0, 0, 0, 100, 'Roaring Bash'),
(18, '0', 'Dragon Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.50', 115, 0, 0, 0, 0, 100, 'Shield Bash'),
(19, '0', 'Distinguished Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.00', 112, 0, 0, 0, 0, 100, 'No Skill'),
(20, '0', 'Crucible Hornshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '11.50', 123, 0, 0, 0, 0, 100, 'Shield Bash'),
(21, '0', 'Dragonclaw Shield', 'Greatshield', 'Strike', 'C (72)', 'D (36)', NULL, NULL, NULL, '13.50', 99, 0, 0, 64, 0, 100, 'Shield Bash'),
(22, '0', 'Briar Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '9.50', 98, 0, 0, 0, 0, 100, 'Shield Bash'),
(23, '0', 'Erdtree Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, 'D (54)', NULL, '13.50', 100, 0, 0, 0, 65, 100, 'Golden Retaliation'),
(24, '0', 'Golden Beast Crest Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '12.50', 104, 0, 0, 0, 0, 100, 'No Skill'),
(25, '0', 'Jellyfish Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '8.00', 103, 0, 0, 0, 0, 100, 'Contagious Fury'),
(26, '0', 'Fingerprint Stone Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '29.00', 139, 0, 0, 0, 0, 100, 'Shield Bash'),
(27, '0', 'Icon Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '11.50', 111, 0, 0, 0, 0, 100, 'No Skill'),
(28, '0', 'One-Eyed Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '20.50', 146, 0, 0, 0, 0, 100, 'Flame Spit'),
(29, '0', 'Visage Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '24.00', 155, 0, 0, 0, 0, 100, 'Tongues of Fire'),
(30, '0', 'Spiked Palisade Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '11.50', 116, 0, 0, 0, 0, 100, 'Shield Bash'),
(31, '0', 'Manor Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '16.00', 111, 0, 0, 0, 0, 100, 'Shield Bash'),
(32, '0', 'Crossed-Tree Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '16.00', 111, 0, 0, 0, 0, 100, 'Shield Bash'),
(33, '0', 'Inverted Hawk Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '16.00', 111, 0, 0, 0, 0, 100, 'Shield Bash'),
(34, '0', 'Ant Skull Plate', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '13.50', 114, 0, 0, 0, 0, 100, 'Shield Bash'),
(35, '0', 'Redmane Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '14.00', 108, 0, 0, 0, 0, 100, 'No Skill'),
(36, '0', 'Eclipse Crest Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '15.00', 110, 0, 0, 0, 0, 100, 'No Skill'),
(37, '0', 'Cuckoo Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '15.00', 110, 0, 0, 0, 0, 100, 'No Skill'),
(38, '0', 'Golden Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.00', 113, 0, 0, 0, 0, 100, 'No Skill'),
(39, '0', 'Gilded Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.50', 115, 0, 0, 0, 0, 100, 'No Skill'),
(40, '0', 'Haligtree Crest Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '18.50', 116, 0, 0, 0, 0, 100, 'No Skill'),
(41, '0', 'Wooden Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '8.00', 95, 0, 0, 0, 0, 100, 'No Skill'),
(42, '0', 'Lordsworn Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '10.00', 99, 0, 0, 0, 0, 100, 'Shield Bash'),
(43, '0', 'Black Steel Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '19.50', 119, 0, 0, 0, 0, 100, 'Shield Bash'),
(44, '0', 'Verdigris Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '28.00', 162, 0, 0, 0, 0, 100, 'Moore Charge');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `img` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'https://i.pinimg.com/736x/ea/18/25/ea1825a2e10b1a86731c684dd83ff0e3.jpg',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `img`, `created_at`) VALUES
(1, 'faw', '$2y$10$gY9M7Q16GYpQ5hhtPj4LyeC7rQsnBAqp.qy4S4UvvIr1sr7Yay8RS', 'fawwazfathur01@gmail.com', '', '2024-12-14 03:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `weapon`
--

CREATE TABLE `weapon` (
  `id` int NOT NULL,
  `image_weapon` varchar(1000) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `damage_types` varchar(50) DEFAULT NULL,
  `str_scaling` varchar(50) DEFAULT NULL,
  `dex_scaling` varchar(50) DEFAULT NULL,
  `int_scaling` varchar(50) DEFAULT NULL,
  `fai_scaling` varchar(50) DEFAULT NULL,
  `arc_scaling` varchar(50) DEFAULT NULL,
  `weight` decimal(5,2) DEFAULT NULL,
  `phys_damage` int DEFAULT NULL,
  `mag_damage` int DEFAULT NULL,
  `fir_damage` int DEFAULT NULL,
  `lgt_damage` int DEFAULT NULL,
  `hly_damage` int DEFAULT NULL,
  `crit_damage` int DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `weapon`
--

INSERT INTO `weapon` (`id`, `image_weapon`, `name`, `type`, `damage_types`, `str_scaling`, `dex_scaling`, `int_scaling`, `fai_scaling`, `arc_scaling`, `weight`, `phys_damage`, `mag_damage`, `fir_damage`, `lgt_damage`, `hly_damage`, `crit_damage`, `skill`) VALUES
(1, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10000.webp', 'Dagger', 'Dagger', 'Slash/Pierce', 'D (52)', 'B (97)', NULL, NULL, NULL, '1.50', 74, 0, 0, 0, 0, 130, 'Quickstep'),
(2, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10001.webp', 'Black Knife', 'Dagger', 'Slash/Pierce', 'E (18)', 'B (99)', NULL, 'C (63)', NULL, '2.00', 66, 0, 0, 0, 65, 110, 'Blade of Death'),
(3, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10002.webp', 'Parrying Dagger', 'Dagger', 'Slash/Pierce', 'E (24)', 'B (114)', NULL, NULL, NULL, '1.50', 75, 0, 0, 0, 0, 110, 'Parry'),
(4, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10003.webp', 'Miséricorde', 'Dagger', 'Slash/Pierce', 'E (22)', 'C (75)', NULL, NULL, NULL, '2.00', 92, 0, 0, 0, 0, 140, 'Quickstep'),
(5, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10004.webp', 'Reduvia', 'Dagger', 'Slash/Pierce', 'E (18)', 'C (72)', NULL, NULL, 'B (99)', '2.50', 79, 0, 0, 0, 0, 110, 'Reduvia Blood Blade'),
(6, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10005.webp', 'Crystal Knife', 'Dagger', 'Slash/Pierce', 'C (60)', 'D (37)', 'B (90)', NULL, NULL, '2.00', 82, 53, 0, 0, 0, 100, 'Quickstep'),
(7, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10006.webp', 'Celebrant Sickle', 'Dagger', 'Slash/Pierce', 'E (22)', 'B (100)', NULL, NULL, NULL, '1.50', 79, 0, 0, 0, 0, 100, 'Quickstep'),
(8, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10007.webp', 'Glintstone Kris', 'Dagger', 'Slash/Pierce', 'E (18)', 'C (81)', 'C (72)', NULL, NULL, '1.50', 57, 68, 0, 0, 0, 110, 'Glintstone Dart'),
(9, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10008.webp', 'Scorpion Stinger', 'Dagger', 'Slash/Pierce', 'D (54)', 'B (126)', NULL, NULL, NULL, '2.50', 79, 0, 0, 0, 0, 110, 'Repeating Thrust'),
(10, 'https://elden-ring.atlasforge.gg/images/icons/MENU_ItemIcon_10009.webp', 'Great Knife', 'Dagger', 'Slash/Pierce', 'E (7)', 'B (120)', NULL, NULL, NULL, '1.50', 75, 0, 0, 0, 0, 110, 'Quickstep'),
(11, NULL, 'Wakizashi', 'Dagger', 'Slash/Pierce', 'D (51)', 'C (67)', NULL, NULL, NULL, '3.00', 94, 0, 0, 0, 0, 100, 'Quickstep'),
(12, NULL, 'Cinquedea', 'Dagger', 'Slash/Pierce', 'B (102)', 'D (30)', NULL, NULL, NULL, '3.50', 98, 0, 0, 0, 0, 100, 'Quickstep'),
(13, NULL, 'Ivory Sickle', 'Dagger', 'Slash/Pierce', 'D (34)', 'C (88)', 'C (72)', NULL, NULL, '2.00', 60, 60, 0, 0, 0, 100, 'Quickstep'),
(14, NULL, 'Bloodstained Dagger', 'Dagger', 'Slash/Pierce', 'B (105)', 'D (30)', NULL, NULL, NULL, '2.00', 81, 0, 0, 0, 0, 110, 'Quickstep'),
(15, NULL, 'Erdsteel Dagger', 'Dagger', 'Slash/Pierce', 'D (45)', 'D (45)', NULL, 'D (54)', NULL, '2.00', 67, 0, 0, 0, 0, 110, 'Quickstep'),
(16, NULL, 'Blade of Calling', 'Dagger', 'Slash/Pierce', 'D (45)', 'C (68)', NULL, 'B (135)', NULL, '1.50', 71, 0, 0, 0, 43, 110, 'Blade of Gold'),
(17, NULL, 'Main-gauche', 'Dagger', 'Slash/Pierce', 'D (45)', 'B (90)', NULL, NULL, NULL, '2.00', 79, 0, 0, 0, 0, 110, 'Parry'),
(18, NULL, 'Falchion', 'Curved Sword', 'Slash', 'C (66)', 'C (66)', NULL, NULL, NULL, '3.50', 109, 0, 0, 0, 0, 100, 'Spinning Slash'),
(19, NULL, 'Beastman Curved Sword', 'Curved Sword', 'Slash', 'B (97)', 'D (27)', NULL, NULL, NULL, '4.00', 113, 0, 0, 0, 0, 100, 'Spinning Slash'),
(20, NULL, 'Shotel', 'Curved Sword', 'Slash', 'D (27)', 'C (87)', NULL, NULL, NULL, '2.00', 96, 0, 0, 0, 0, 100, 'Spinning Slash'),
(21, NULL, 'Shamshir', 'Curved Sword', 'Slash', 'D (54)', 'C (75)', NULL, NULL, NULL, '3.50', 108, 0, 0, 0, 0, 100, 'Spinning Slash'),
(22, NULL, 'Bandit Curved Sword', 'Curved Sword', 'Slash', 'D (52)', 'C (72)', NULL, NULL, NULL, '5.00', 118, 0, 0, 0, 0, 100, 'Spinning Slash'),
(23, NULL, 'Magma Blade', 'Curved Sword', 'Slash', 'C (81)', 'D (55)', NULL, 'C (72)', NULL, '4.00', 96, 0, 62, 0, 0, 100, 'Magma Shower'),
(24, NULL, 'Flowing Curved Sword', 'Curved Sword', 'Slash', 'D (37)', 'C (82)', NULL, NULL, NULL, '3.50', 109, 0, 0, 0, 0, 100, 'Spinning Slash'),
(25, NULL, 'Wing of Astel', 'Curved Sword', 'Slash', 'E (18)', 'C (81)', 'B (99)', NULL, NULL, '2.50', 65, 78, 0, 0, 0, 100, 'Nebula'),
(26, NULL, 'Scavenger Curved Sword', 'Curved Sword', 'Slash', 'C (60)', 'C (75)', NULL, NULL, NULL, '3.50', 105, 0, 0, 0, 0, 100, 'Spinning Slash'),
(27, NULL, 'Eclipse Shotel', 'Curved Sword', 'Slash', 'D (36)', 'C (63)', NULL, 'C (81)', NULL, '3.00', 77, 0, 0, 0, 77, 100, 'Death Flare'),
(28, NULL, 'Serpent-God Curved Sword', 'Curved Sword', 'Slash', 'C (82)', 'D (30)', NULL, NULL, NULL, '4.00', 113, 0, 0, 0, 0, 100, 'Spinning Slash'),
(29, NULL, 'Mantis Blade', 'Curved Sword', 'Slash', 'D (54)', 'C (72)', NULL, NULL, NULL, '4.00', 112, 0, 0, 0, 0, 100, 'Spinning Slash'),
(30, NULL, 'Onyx Lord Greatsword', 'Curved Greatsword', 'Slash', 'B (90)', 'E (18)', 'B (90)', NULL, NULL, '11.50', 118, 76, 0, 0, 0, 100, 'Onyx Lords Repulsion'),
(31, NULL, 'Dismounter', 'Curved Greatsword', 'Slash', 'C (70)', 'D (55)', NULL, NULL, NULL, '10.00', 138, 0, 0, 0, 0, 100, 'Spinning Slash'),
(32, NULL, 'Bloodhound Fang', 'Curved Greatsword', 'Slash', 'C (73)', 'B (108)', NULL, NULL, NULL, '11.50', 141, 0, 0, 0, 0, 100, 'Bloodhound Finesse'),
(33, NULL, 'Magma Wyrm Scalesword', 'Curved Greatsword', 'Slash', 'B (108)', 'D (45)', NULL, 'B (99)', NULL, '15.00', 114, 0, 74, 0, 0, 100, 'Magma Guillotine'),
(34, NULL, 'Zamor Curved Sword', 'Curved Greatsword', 'Slash', 'C (72)', 'B (90)', NULL, NULL, NULL, '9.00', 130, 0, 0, 0, 0, 100, 'Zamor Ice Storm'),
(35, NULL, 'Omen Cleaver', 'Curved Greatsword', 'Slash', 'C (66)', 'C (64)', NULL, NULL, NULL, '11.50', 142, 0, 0, 0, 0, 100, 'Spinning Slash'),
(36, NULL, 'Monk Flameblade', 'Curved Greatsword', 'Slash', 'D (55)', 'C (78)', NULL, NULL, NULL, '9.00', 134, 0, 0, 0, 0, 100, 'Spinning Slash'),
(37, NULL, 'Beastman Cleaver', 'Curved Greatsword', 'Slash', 'B (114)', NULL, NULL, NULL, NULL, '16.50', 143, 0, 0, 0, 0, 100, 'Spinning Slash'),
(38, NULL, 'Morgott Cursed Sword', 'Curved Greatsword', 'Slash', 'D (27)', 'B (108)', NULL, NULL, 'D (54)', '7.50', 120, 0, 0, 0, 0, 110, 'Cursed-Blood Slice'),
(39, NULL, 'Putrescence Cleaver', 'Greataxe', 'Slash', 'C (81)', 'E (18)', NULL, NULL, 'C (63)', '13.50', 141, 42, 0, 0, 0, 100, 'Spinning Guillotine'),
(40, NULL, 'Freyja Greatsword', 'Curved Greatsword', 'Slash', 'B (90)', 'E (15)', NULL, NULL, NULL, '14.00', 146, 0, 0, 0, 0, 100, 'Spinning Slash'),
(41, NULL, 'Horned Warrior Greatsword', 'Curved Greatsword', 'Slash', 'B (91)', 'D (45)', NULL, 'D (45)', NULL, '13.00', 130, 0, 0, 0, 0, 100, 'Horn Calling: Storm'),
(42, NULL, 'Uchigatana', 'Katana', 'Slash/Pierce', 'D (54)', 'C (82)', NULL, NULL, NULL, '5.50', 115, 0, 0, 0, 0, 100, 'Unsheathe'),
(43, NULL, 'Nagakiba', 'Katana', 'Slash/Pierce', 'D (40)', 'B (90)', NULL, NULL, NULL, '7.00', 115, 0, 0, 0, 0, 100, 'Unsheathe'),
(44, NULL, 'Hand of Malenia', 'Katana', 'Slash/Pierce', 'E (9)', 'B (135)', NULL, NULL, NULL, '7.00', 117, 0, 0, 0, 0, 100, 'Waterfowl Dance'),
(45, NULL, 'Meteoric Ore Blade', 'Katana', 'Slash/Pierce', 'C (81)', 'D (30)', 'C (64)', NULL, NULL, '7.50', 112, 72, 0, 0, 0, 100, 'Gravitas'),
(46, NULL, 'Rivers of Blood', 'Katana', 'Slash/Pierce', 'E (18)', 'B (90)', NULL, NULL, 'D (59)', '6.50', 76, 0, 76, 0, 0, 100, 'Corpse Piler'),
(47, NULL, 'Moonveil', 'Katana', 'Slash/Pierce', 'E (21)', 'B (90)', 'B (108)', NULL, NULL, '6.50', 73, 87, 0, 0, 0, 100, 'Transient Moonlight'),
(48, NULL, 'Dragonscale Blade', 'Katana', 'Slash/Pierce', 'D (54)', 'B (108)', NULL, NULL, NULL, '5.50', 110, 0, 0, 0, 0, 100, 'Ice Lightning Sword'),
(49, NULL, 'Serpentbone Blade', 'Katana', 'Slash/Pierce', 'E (15)', 'B (112)', NULL, NULL, NULL, '6.00', 120, 0, 0, 0, 0, 100, 'Double Slash'),
(50, NULL, 'Sword of Night', 'Katana', 'Slash/Pierce', 'B (113)', NULL, NULL, NULL, NULL, '6.50', 110, 33, 0, 0, 0, 100, 'Witching Hour Slash'),
(51, NULL, 'Twinblade', 'Twinblade', 'Standard/Pierce', 'D (52)', 'C (64)', NULL, NULL, NULL, '7.00', 119, 0, 0, 0, 0, 100, 'Spinning Slash'),
(52, NULL, 'Godskin Peeler', 'Twinblade', 'Standard/Pierce', 'D (28)', 'B (90)', NULL, NULL, NULL, '8.00', 121, 0, 0, 0, 0, 100, 'Black Flame Tornado'),
(53, NULL, 'Twinned Knight Swords', 'Twinblade', 'Standard/Pierce', 'C (81)', 'D (36)', NULL, NULL, NULL, '8.00', 122, 0, 0, 0, 0, 100, 'Spinning Slash'),
(54, NULL, 'Eleonora Poleblade', 'Twinblade', 'Standard/Pierce', 'E (18)', 'C (72)', NULL, NULL, 'D (54)', '6.00', 72, 0, 72, 0, 0, 100, 'Bloodblade Dance'),
(55, NULL, 'Gargoyle Twinblade', 'Twinblade', 'Standard/Pierce', 'B (99)', 'E (15)', NULL, NULL, NULL, '8.50', 123, 0, 0, 0, 0, 100, 'Spinning Slash'),
(56, NULL, 'Gargoyle Black Blades', 'Twinblade', 'Standard/Pierce', 'B (118)', 'E (18)', NULL, 'D (45)', NULL, '8.50', 81, 0, 0, 0, 97, 100, 'Spinning Slash'),
(57, NULL, 'Bloodfiend Sacred Spear', 'Spear Heavy', 'Standard/Pierce', 'D (36)', 'E (7)', NULL, NULL, NULL, '8.00', 115, 0, 0, 0, 0, 100, 'Bloodfiends Bloodboon'),
(58, NULL, 'Mohgwyn Sacred Spear', 'Spear Heavy', 'Pierce', 'C (72)', 'D (27)', NULL, 'C (72)', NULL, '10.00', 96, 0, 62, 0, 0, 100, 'Bloodboon Ritual'),
(59, NULL, 'Siluria Tree', 'Spear Heavy', 'Pierce', 'B (104)', 'D (27)', NULL, 'C (81)', NULL, '10.00', 90, 0, 0, 0, 90, 100, 'Siluria Woe'),
(60, NULL, 'Serpent-Hunter', 'Spear Heavy', 'Pierce', 'A (171)', 'E (9)', NULL, NULL, NULL, '12.00', 111, 0, 0, 0, 0, 100, 'Great-Serpent Hunt'),
(61, NULL, 'Vyke War Spear', 'Spear Heavy', 'Pierce', 'D (36)', 'B (108)', NULL, 'C (72)', NULL, '8.00', 103, 0, 66, 0, 0, 100, 'Frenzyflame Thrust'),
(62, NULL, 'Lance', 'Spear Heavy', 'Pierce', 'C (75)', 'C (60)', NULL, NULL, NULL, '9.00', 123, 0, 0, 0, 0, 100, 'Charge Forth'),
(63, NULL, 'Treespear', 'Spear Heavy', 'Pierce', 'D (37)', 'C (66)', NULL, 'D (54)', NULL, '9.50', 122, 0, 0, 0, 79, 100, 'Sacred Order'),
(64, NULL, 'Spear of the Impaler', 'Spear Heavy', 'Standard/Pierce', 'E (9)', 'B (108)', NULL, 'C (72)', NULL, '9.50', 85, 0, 102, 0, 0, 100, 'Messmers Assault'),
(65, NULL, 'Messmer Soldier Spear', 'Spear Heavy', 'Standard/Pierce', 'C (70)', 'C (70)', NULL, NULL, NULL, '8.50', 122, 0, 0, 0, 0, 100, 'Impaling Thrust'),
(66, NULL, 'Barbed Staff-Spear', 'Spear Heavy', 'Standard/Pierce', 'D (27)', 'D (41)', NULL, 'A (144)', NULL, '7.50', 86, 0, 0, 0, 86, 100, 'Jori Inquisition'),
(67, NULL, 'Halberd', 'Halberd', 'Standard/Pierce', 'C (81)', 'D (57)', NULL, NULL, NULL, '8.00', 125, 0, 0, 0, 0, 100, 'Charge Forth'),
(68, NULL, 'Pest Glaive', 'Halberd', 'Slash/Pierce', 'D (54)', 'C (88)', NULL, NULL, NULL, '7.00', 120, 0, 0, 0, 0, 100, 'Spinning Slash'),
(69, NULL, 'Lucerne', 'Halberd', 'Pierce', 'D (45)', 'B (90)', NULL, NULL, NULL, '7.00', 121, 0, 0, 0, 0, 100, 'Charge Forth'),
(70, NULL, 'Banished Knight Halberd', 'Halberd', 'Standard/Pierce', 'C (60)', 'C (78)', NULL, NULL, NULL, '8.00', 125, 0, 0, 0, 0, 100, 'Charge Forth'),
(71, NULL, 'Commanders Standard', 'Halberd', 'Standard/Pierce', 'B (99)', 'D (54)', NULL, NULL, NULL, '11.50', 138, 0, 0, 0, 0, 100, 'Rallying Standard'),
(72, NULL, 'Nightrider Glaive', 'Halberd', 'Slash/Pierce', 'B (118)', 'E (7)', NULL, NULL, NULL, '12.00', 129, 0, 0, 0, 0, 100, 'Spinning Slash'),
(73, NULL, 'Winged Scythe', 'Reaper', 'Slash', 'D (36)', 'C (63)', NULL, 'C (81)', NULL, '7.50', 87, 0, 0, 0, 104, 100, 'Angel Wings'),
(74, NULL, 'Great Club', 'Colossal Weapon', 'Strike', 'B (121)', NULL, NULL, 'D (36)', NULL, '17.00', 154, 0, 0, 0, 46, 100, 'Golden Land'),
(75, NULL, 'Carian Knight Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, 'D (54)', NULL, NULL, '4.50', 63, 40, 0, 0, 0, 100, 'No Skill'),
(76, NULL, 'Large Leather Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.00', 75, 0, 0, 0, 0, 100, 'Parry'),
(77, NULL, 'Horse Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'No Skill'),
(78, NULL, 'Candletree Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'Parry'),
(79, NULL, 'Flame Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'Parry'),
(80, NULL, 'Hawk Crest Wooden Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 76, 0, 0, 0, 0, 100, 'Parry'),
(81, NULL, 'Beast Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(82, NULL, 'Red Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(83, NULL, 'Blue Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(84, NULL, 'Eclipse Crest Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'No Skill'),
(85, NULL, 'Inverted Hawk Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(86, NULL, 'Heater Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.50', 77, 0, 0, 0, 0, 100, 'Parry'),
(87, NULL, 'Black Leather Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '3.00', 75, 0, 0, 0, 0, 100, 'No Skill'),
(88, NULL, 'Messmer Soldier Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '5.00', 80, 0, 0, 0, 0, 100, 'No Skill'),
(89, NULL, 'Wolf Crest Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '6.00', 82, 0, 0, 0, 0, 100, 'No Skill'),
(90, NULL, 'Serpent Crest Shield', 'Medium Shield', 'Strike', 'C (72)', NULL, NULL, NULL, NULL, '6.00', 82, 0, 0, 0, 0, 100, 'No Skill'),
(91, NULL, 'Golden Lion Shield', 'Medium Shield', 'Strike', 'B (108)', NULL, NULL, NULL, NULL, '5.50', 81, 0, 0, 0, 0, 100, 'Roaring Bash'),
(92, NULL, 'Dragon Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.50', 115, 0, 0, 0, 0, 100, 'Shield Bash'),
(93, NULL, 'Distinguished Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.00', 112, 0, 0, 0, 0, 100, 'No Skill'),
(94, NULL, 'Crucible Hornshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '11.50', 123, 0, 0, 0, 0, 100, 'Shield Bash'),
(95, NULL, 'Dragonclaw Shield', 'Greatshield', 'Strike', 'C (72)', 'D (36)', NULL, NULL, NULL, '13.50', 99, 0, 0, 64, 0, 100, 'Shield Bash'),
(96, NULL, 'Briar Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '9.50', 98, 0, 0, 0, 0, 100, 'Shield Bash'),
(97, NULL, 'Erdtree Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, 'D (54)', NULL, '13.50', 100, 0, 0, 0, 65, 100, 'Golden Retaliation'),
(98, NULL, 'Golden Beast Crest Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '12.50', 104, 0, 0, 0, 0, 100, 'No Skill'),
(99, NULL, 'Jellyfish Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '8.00', 103, 0, 0, 0, 0, 100, 'Contagious Fury'),
(100, NULL, 'Fingerprint Stone Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '29.00', 139, 0, 0, 0, 0, 100, 'Shield Bash'),
(101, NULL, 'Icon Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '11.50', 111, 0, 0, 0, 0, 100, 'No Skill'),
(102, NULL, 'One-Eyed Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '20.50', 146, 0, 0, 0, 0, 100, 'Flame Spit'),
(103, NULL, 'Visage Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '24.00', 155, 0, 0, 0, 0, 100, 'Tongues of Fire'),
(104, NULL, 'Spiked Palisade Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '11.50', 116, 0, 0, 0, 0, 100, 'Shield Bash'),
(105, NULL, 'Manor Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '16.00', 111, 0, 0, 0, 0, 100, 'Shield Bash'),
(106, NULL, 'Crossed-Tree Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '16.00', 111, 0, 0, 0, 0, 100, 'Shield Bash'),
(107, NULL, 'Inverted Hawk Towershield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '16.00', 111, 0, 0, 0, 0, 100, 'Shield Bash'),
(108, NULL, 'Ant Skull Plate', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '13.50', 114, 0, 0, 0, 0, 100, 'Shield Bash'),
(109, NULL, 'Redmane Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '14.00', 108, 0, 0, 0, 0, 100, 'No Skill'),
(110, NULL, 'Eclipse Crest Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '15.00', 110, 0, 0, 0, 0, 100, 'No Skill'),
(111, NULL, 'Cuckoo Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '15.00', 110, 0, 0, 0, 0, 100, 'No Skill'),
(112, NULL, 'Golden Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.00', 113, 0, 0, 0, 0, 100, 'No Skill'),
(113, NULL, 'Gilded Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '17.50', 115, 0, 0, 0, 0, 100, 'No Skill'),
(114, NULL, 'Haligtree Crest Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '18.50', 116, 0, 0, 0, 0, 100, 'No Skill'),
(115, NULL, 'Wooden Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '8.00', 95, 0, 0, 0, 0, 100, 'No Skill'),
(116, NULL, 'Lordsworn Shield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '10.00', 99, 0, 0, 0, 0, 100, 'Shield Bash'),
(117, NULL, 'Black Steel Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '19.50', 119, 0, 0, 0, 0, 100, 'Shield Bash'),
(118, NULL, 'Verdigris Greatshield', 'Greatshield', 'Strike', 'B (90)', NULL, NULL, NULL, NULL, '28.00', 162, 0, 0, 0, 0, 100, 'Moore Charge'),
(119, NULL, 'Glintstone Staff', 'Glintstone Staff', 'Strike', 'D (36)', NULL, 'S (255)', NULL, NULL, '3.00', 25, 0, 0, 0, 0, 100, 'No Skill'),
(120, NULL, 'Crystal Staff', 'Glintstone Staff', 'Strike', 'C (75)', NULL, 'S (282)', NULL, NULL, '4.50', 31, 0, 0, 0, 0, 100, 'No Skill'),
(121, NULL, 'Gelmir Glintstone Staff', 'Glintstone Staff', 'Strike', 'D (36)', NULL, 'B (120)', NULL, NULL, '2.50', 29, 0, 0, 0, 0, 100, 'No Skill'),
(122, NULL, 'Demi-Human Queen Staff', 'Glintstone Staff', 'Strike', 'C (75)', NULL, 'S (225)', NULL, NULL, '3.00', 31, 0, 0, 0, 0, 100, 'No Skill'),
(123, NULL, 'Carian Regal Scepter', 'Glintstone Staff', 'Strike', 'D (36)', 'D (30)', 'S (288)', NULL, NULL, '3.00', 24, 0, 0, 0, 0, 100, 'Spinning Weapon'),
(124, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(125, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(126, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(127, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(128, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(129, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(130, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(131, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(132, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(133, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(134, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(135, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(136, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(137, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(138, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, ''),
(139, '', '', '', '', '', '', '', '', '', '0.00', 0, 0, 0, 0, 0, 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armor`
--
ALTER TABLE `armor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `character`
--
ALTER TABLE `character`
  ADD PRIMARY KEY (`Class`);

--
-- Indexes for table `shield`
--
ALTER TABLE `shield`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `armor`
--
ALTER TABLE `armor`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `shield`
--
ALTER TABLE `shield`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
