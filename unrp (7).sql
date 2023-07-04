-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: localhost
-- Vytvořeno: Úte 31. srp 2021, 18:45
-- Verze serveru: 10.3.29-MariaDB-0+deb10u1
-- Verze PHP: 7.3.29-1+0~20210701.86+debian10~1.gbp7ad6eb

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `unrp`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `accounts`
--

CREATE TABLE `accounts` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `addon_account`
--

CREATE TABLE `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `addon_account`
--

INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
('bank_savings', 'Bank Savings', 0),
('caution', 'caution', 0),
('motels_bed_black_money', 'Motels Black Money Bed', 0),
('motels_black_money', 'Motels Black Money ', 0),
('property_black_money', 'Dirty Money Property', 0),
('society_ambulance', 'EMS', 1),
('society_banker', 'Banker', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_realestateagent', 'Agent immobilier', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `addon_account_data`
--

CREATE TABLE `addon_account_data` (
  `id` int(11) NOT NULL,
  `account_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `addon_account_data`
--

INSERT INTO `addon_account_data` (`id`, `account_name`, `money`, `owner`) VALUES
(1, 'society_cardealer', 0, NULL),
(2, 'society_police', 11, NULL),
(3, 'society_ambulance', 0, NULL),
(4, 'society_mechanic', 0, NULL),
(5, 'society_taxi', 0, NULL),
(6, 'society_banker', 0, NULL),
(7, 'society_realestateagent', 0, NULL),
(8, 'bank_savings', 0, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(9, 'caution', 0, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(10, 'property_black_money', 0, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(11, 'bank_savings', 0, 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(12, 'caution', 0, 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(13, 'property_black_money', 0, 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(14, 'bank_savings', 0, '4f4977682d51ac0596cb703418fba81f07cde8ea'),
(15, 'caution', 0, '4f4977682d51ac0596cb703418fba81f07cde8ea'),
(16, 'property_black_money', 0, '4f4977682d51ac0596cb703418fba81f07cde8ea'),
(17, 'property_black_money', 0, 'd460da1023ad3a478bef0db6dfa380e850a476d1'),
(18, 'bank_savings', 0, 'd460da1023ad3a478bef0db6dfa380e850a476d1'),
(19, 'caution', 0, 'd460da1023ad3a478bef0db6dfa380e850a476d1'),
(20, 'bank_savings', 0, 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(21, 'property_black_money', 0, 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(22, 'caution', 0, 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(23, 'bank_savings', 0, '391609334412e181c69b22e9ecf5a590ab0e8b14'),
(24, 'caution', 0, '391609334412e181c69b22e9ecf5a590ab0e8b14'),
(25, 'property_black_money', 0, '391609334412e181c69b22e9ecf5a590ab0e8b14'),
(26, 'bank_savings', 0, '07d3159b66c8a6b8587510e9e95a6d12dc647279'),
(27, 'caution', 0, '07d3159b66c8a6b8587510e9e95a6d12dc647279'),
(28, 'property_black_money', 0, '07d3159b66c8a6b8587510e9e95a6d12dc647279'),
(29, 'bank_savings', 0, '66d5f066c3339e8556c857a532d7bc92ccb14262'),
(30, 'caution', 0, '66d5f066c3339e8556c857a532d7bc92ccb14262'),
(31, 'property_black_money', 0, '66d5f066c3339e8556c857a532d7bc92ccb14262'),
(32, 'bank_savings', 0, '90d23e573ef6c08489c5023675b47b9914851425'),
(33, 'caution', 0, '90d23e573ef6c08489c5023675b47b9914851425'),
(34, 'property_black_money', 0, '90d23e573ef6c08489c5023675b47b9914851425'),
(35, 'bank_savings', 0, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(36, 'caution', 0, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(37, 'property_black_money', 0, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(38, 'bank_savings', 0, 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(39, 'caution', 0, 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(40, 'property_black_money', 0, 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(41, 'bank_savings', 0, 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(42, 'caution', 0, 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(43, 'property_black_money', 0, 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(44, 'bank_savings', 0, 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(45, 'caution', 0, 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(46, 'property_black_money', 0, 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(47, 'bank_savings', 0, 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(48, 'caution', 0, 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(49, 'property_black_money', 0, 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(50, 'bank_savings', 0, 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(51, 'caution', 0, 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(52, 'property_black_money', 0, 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(53, 'property_black_money', 0, 'char1:398cc59fa4edec59248bdec0038524a9c005525a'),
(54, 'caution', 0, 'char1:398cc59fa4edec59248bdec0038524a9c005525a'),
(55, 'bank_savings', 0, 'char1:398cc59fa4edec59248bdec0038524a9c005525a'),
(56, 'bank_savings', 0, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea'),
(57, 'caution', 0, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea'),
(58, 'property_black_money', 0, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea'),
(59, 'caution', 0, 'char1:399b392f36dff554cbb3a864e32c909637e83b17'),
(60, 'bank_savings', 0, 'char1:399b392f36dff554cbb3a864e32c909637e83b17'),
(61, 'property_black_money', 0, 'char1:399b392f36dff554cbb3a864e32c909637e83b17'),
(62, 'property_black_money', 0, 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f'),
(63, 'bank_savings', 0, 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f'),
(64, 'caution', 0, 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f'),
(65, 'bank_savings', 0, 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(66, 'caution', 0, 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(67, 'property_black_money', 0, 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(68, 'property_black_money', 0, 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3'),
(69, 'caution', 0, 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3'),
(70, 'bank_savings', 0, 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3'),
(71, 'property_black_money', 0, 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0'),
(72, 'caution', 0, 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0'),
(73, 'bank_savings', 0, 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0'),
(74, 'motels_bed_black_money', 0, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(75, 'motels_black_money', 0, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(76, 'motels_bed_black_money', 0, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea'),
(77, 'motels_black_money', 0, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea'),
(78, 'bank_savings', 0, 'char1:90d23e573ef6c08489c5023675b47b9914851425'),
(79, 'caution', 0, 'char1:90d23e573ef6c08489c5023675b47b9914851425'),
(80, 'motels_bed_black_money', 0, 'char1:90d23e573ef6c08489c5023675b47b9914851425'),
(81, 'motels_black_money', 0, 'char1:90d23e573ef6c08489c5023675b47b9914851425'),
(82, 'property_black_money', 0, 'char1:90d23e573ef6c08489c5023675b47b9914851425'),
(83, 'motels_bed_black_money', 0, 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(84, 'motels_black_money', 0, 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(85, 'motels_bed_black_money', 0, 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0'),
(86, 'motels_black_money', 0, 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0'),
(87, 'motels_bed_black_money', 0, 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(88, 'motels_black_money', 0, 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58');

-- --------------------------------------------------------

--
-- Struktura tabulky `addon_inventory`
--

CREATE TABLE `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `addon_inventory`
--

INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
('motels', 'Motels Inventory', 0),
('motels_bed', 'Motels Bed Inventory', 0),
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_cardealer', 'Cardealer', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `addon_inventory_items`
--

CREATE TABLE `addon_inventory_items` (
  `id` int(11) NOT NULL,
  `inventory_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `addon_inventory_items`
--

INSERT INTO `addon_inventory_items` (`id`, `inventory_name`, `name`, `count`, `owner`) VALUES
(1, 'society_mechanic', '', 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `baninfo`
--

CREATE TABLE `baninfo` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `playername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `bank_transfer`
--

CREATE TABLE `bank_transfer` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `identifier` varchar(60) DEFAULT NULL,
  `price` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `bank_transfer`
--

INSERT INTO `bank_transfer` (`id`, `type`, `identifier`, `price`, `name`, `time`) VALUES
(22, 1, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '1000', 'Brm Brm', '2021-08-28 13:08:54'),
(23, 2, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '1000', 'Teasty Teasty', '2021-08-28 13:08:54'),
(24, 1, 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '1000', 'Brm Brm', '2021-08-28 13:09:12'),
(25, 2, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '1000', 'Teasty Teasty', '2021-08-28 13:09:12');

-- --------------------------------------------------------

--
-- Struktura tabulky `banlist`
--

CREATE TABLE `banlist` (
  `license` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `expiration` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `banlisthistory`
--

CREATE TABLE `banlisthistory` (
  `id` int(11) NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `identifier` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `liveid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `xblid` varchar(21) COLLATE utf8mb4_bin DEFAULT NULL,
  `discord` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL,
  `playerip` varchar(25) COLLATE utf8mb4_bin DEFAULT NULL,
  `targetplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `sourceplayername` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `timeat` int(11) NOT NULL,
  `added` varchar(40) COLLATE utf8mb4_bin NOT NULL,
  `expiration` int(11) NOT NULL,
  `permanent` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `billing`
--

INSERT INTO `billing` (`id`, `identifier`, `sender`, `target_type`, `target`, `label`, `amount`) VALUES
(2, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'd460da1023ad3a478bef0db6dfa380e850a476d1', 'society', 'society_police', 'Pokuta: Misuse of a horn', 30),
(3, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'd460da1023ad3a478bef0db6dfa380e850a476d1', 'society', 'society_police', 'Pokuta: Misuse of a horn', 30),
(4, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'd460da1023ad3a478bef0db6dfa380e850a476d1', 'society', 'society_police', 'Pokuta: Misuse of a horn', 30),
(5, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'd460da1023ad3a478bef0db6dfa380e850a476d1', 'society', 'society_police', 'Pokuta: Misuse of a horn', 30),
(6, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'd460da1023ad3a478bef0db6dfa380e850a476d1', 'society', 'society_police', 'Pokuta: Assault on a Civilian', 2000),
(7, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'd460da1023ad3a478bef0db6dfa380e850a476d1', 'society', 'society_police', 'Pokuta: Assault on a Civilian', 2000);

-- --------------------------------------------------------

--
-- Struktura tabulky `cardealer_vehicles`
--

CREATE TABLE `cardealer_vehicles` (
  `id` int(11) NOT NULL,
  `vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `datastore`
--

CREATE TABLE `datastore` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shared` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `datastore`
--

INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
('motels', 'Motels Datastore', 0),
('motels_bed', 'Motels Bed Datastore', 0),
('property', 'Property', 0),
('society_ambulance', 'EMS', 1),
('society_mechanic', 'Mechanic', 1),
('society_police', 'Police', 1),
('society_taxi', 'Taxi', 1),
('user_ears', 'Ears', 0),
('user_glasses', 'Glasses', 0),
('user_helmet', 'Helmet', 0),
('user_mask', 'Mask', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `datastores`
--

CREATE TABLE `datastores` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `datastore_data`
--

CREATE TABLE `datastore_data` (
  `id` int(11) NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `datastore_data`
--

INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(1, 'society_police', NULL, '{}'),
(2, 'society_ambulance', NULL, '{}'),
(3, 'society_mechanic', NULL, '{\"garage\":[]}'),
(4, 'society_taxi', NULL, '{}'),
(5, 'property', '0d7260980c0de3c2b03d14a09918c880cf07cb58', '{\"dressing\":[{\"skin\":{\"blemishes_2\":0,\"makeup_4\":0,\"bags_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"watches_1\":-1,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"pants_1\":0,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"torso_1\":14,\"age_2\":0,\"chest_1\":0,\"hair_1\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"arms_2\":0,\"decals_2\":0,\"tshirt_1\":46,\"helmet_2\":0,\"neck_thickness\":0,\"makeup_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"eyebrows_1\":0,\"mask_2\":0,\"nose_5\":0,\"cheeks_3\":0,\"sun_2\":0,\"chin_2\":0,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"helmet_1\":-1,\"chin_4\":0,\"eyebrows_3\":0,\"tshirt_2\":6,\"arms\":0,\"blemishes_1\":0,\"hair_color_1\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"chain_2\":0,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"pants_2\":0,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"complexion_1\":0,\"chest_3\":0,\"lipstick_4\":0,\"sun_1\":0,\"bproof_1\":0,\"chin_1\":0,\"jaw_1\":0,\"sex\":0,\"blush_1\":0,\"nose_6\":0,\"moles_2\":0,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"beard_4\":0,\"mask_1\":9,\"eyebrows_5\":0,\"nose_3\":0},\"label\":\"Pes\"},{\"skin\":{\"blemishes_2\":0,\"makeup_4\":0,\"bags_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"neck_thickness\":0,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"mask_1\":9,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"torso_1\":14,\"age_2\":0,\"chest_1\":0,\"hair_1\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"arms_2\":0,\"decals_2\":0,\"tshirt_1\":46,\"jaw_1\":0,\"eyebrows_1\":0,\"makeup_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"nose_5\":0,\"mask_2\":0,\"chin_2\":0,\"helmet_1\":-1,\"sun_2\":0,\"chin_4\":0,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"watches_1\":-1,\"cheeks_3\":0,\"eyebrows_3\":0,\"hair_color_1\":0,\"arms\":0,\"pants_1\":5,\"blemishes_1\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"chain_2\":0,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"pants_2\":0,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"complexion_1\":0,\"chest_3\":0,\"lipstick_4\":0,\"sun_1\":0,\"bproof_1\":0,\"chin_1\":0,\"helmet_2\":0,\"sex\":0,\"blush_1\":0,\"nose_6\":0,\"tshirt_2\":6,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"beard_4\":0,\"moles_2\":0,\"eyebrows_5\":0,\"nose_3\":0},\"label\":\"Krysa\"},{\"skin\":{\"blemishes_2\":0,\"blemishes_1\":0,\"bags_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"watches_1\":-1,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"mask_1\":9,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"pants_2\":0,\"age_2\":0,\"chest_1\":0,\"hair_1\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"arms_2\":0,\"decals_2\":0,\"tshirt_1\":50,\"complexion_1\":0,\"eyebrows_1\":0,\"chin_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"nose_5\":0,\"mask_2\":0,\"cheeks_3\":0,\"chin_2\":0,\"sun_2\":0,\"helmet_1\":-1,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"chin_4\":0,\"tshirt_2\":6,\"eyebrows_3\":0,\"makeup_4\":0,\"torso_1\":14,\"hair_color_1\":0,\"moles_2\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"neck_thickness\":0,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"chain_2\":0,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"arms\":0,\"chest_3\":0,\"lipstick_4\":0,\"jaw_1\":0,\"bproof_1\":0,\"sun_1\":0,\"makeup_1\":0,\"sex\":0,\"blush_1\":0,\"nose_6\":0,\"helmet_2\":0,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"beard_4\":0,\"pants_1\":5,\"eyebrows_5\":0,\"nose_3\":0},\"label\":\"Krecek\"},{\"skin\":{\"blemishes_2\":0,\"makeup_4\":0,\"bags_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"watches_1\":-1,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"mask_1\":9,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"torso_1\":14,\"age_2\":0,\"chest_1\":0,\"cheeks_3\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"lipstick_4\":0,\"decals_2\":0,\"tshirt_1\":52,\"pants_1\":5,\"eyebrows_1\":0,\"makeup_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"nose_5\":0,\"mask_2\":0,\"neck_thickness\":0,\"chin_2\":0,\"sun_2\":0,\"hair_1\":0,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"chin_4\":0,\"moles_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"hair_color_1\":0,\"chain_2\":0,\"arms\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"blemishes_1\":0,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"pants_2\":0,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"complexion_1\":0,\"chest_3\":0,\"arms_2\":0,\"sun_1\":0,\"bproof_1\":0,\"helmet_2\":0,\"chin_1\":0,\"sex\":0,\"blush_1\":0,\"nose_6\":0,\"tshirt_2\":6,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"beard_4\":0,\"jaw_1\":0,\"eyebrows_5\":0,\"nose_3\":0},\"label\":\"Pejsek\"},{\"skin\":{\"blemishes_2\":0,\"makeup_4\":0,\"bags_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"eyebrows_1\":0,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"pants_1\":0,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"pants_2\":0,\"age_2\":0,\"chest_1\":0,\"cheeks_3\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"arms_2\":0,\"decals_2\":0,\"tshirt_1\":52,\"jaw_1\":0,\"torso_1\":17,\"makeup_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"nose_5\":0,\"mask_2\":0,\"chin_2\":0,\"hair_1\":0,\"sun_2\":0,\"tshirt_2\":0,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"neck_thickness\":0,\"chin_4\":0,\"eyebrows_3\":0,\"watches_1\":-1,\"chain_2\":0,\"hair_color_1\":0,\"moles_2\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"helmet_1\":-1,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"arms\":0,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"complexion_1\":0,\"chest_3\":0,\"blemishes_1\":0,\"lipstick_4\":0,\"sun_1\":0,\"bproof_1\":0,\"chin_1\":0,\"sex\":0,\"blush_1\":0,\"nose_6\":0,\"helmet_2\":0,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"beard_4\":0,\"nose_3\":0,\"eyebrows_5\":0,\"mask_1\":9},\"label\":\"grcccc\"},{\"skin\":{\"blemishes_2\":0,\"blemishes_1\":0,\"bags_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"watches_1\":-1,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"mask_1\":9,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"torso_1\":17,\"age_2\":0,\"chest_1\":0,\"hair_1\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"arms_2\":0,\"decals_2\":0,\"tshirt_1\":52,\"tshirt_2\":0,\"eyebrows_1\":0,\"chin_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"nose_5\":0,\"mask_2\":0,\"neck_thickness\":0,\"chin_2\":0,\"sun_2\":0,\"pants_1\":0,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"helmet_1\":-1,\"chin_4\":0,\"eyebrows_3\":0,\"hair_color_1\":0,\"cheeks_3\":0,\"jaw_1\":0,\"chain_2\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"makeup_4\":0,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"pants_2\":0,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"complexion_1\":0,\"chest_3\":0,\"lipstick_4\":0,\"bproof_1\":0,\"sun_1\":0,\"makeup_1\":0,\"helmet_2\":0,\"sex\":0,\"blush_1\":0,\"nose_6\":0,\"moles_2\":0,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"beard_4\":0,\"arms\":0,\"eyebrows_5\":0,\"nose_3\":0},\"label\":\"grcccc\"},{\"skin\":{\"blemishes_2\":0,\"makeup_4\":0,\"bags_2\":0,\"hair_2\":0,\"sun_1\":0,\"age_1\":0,\"bags_1\":0,\"beard_3\":0,\"complexion_2\":0,\"eyebrows_1\":0,\"bodyb_1\":-1,\"blush_3\":0,\"bodyb_3\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"glasses_1\":0,\"cheeks_2\":0,\"ears_2\":0,\"cheeks_1\":0,\"blush_2\":0,\"skin_md_weight\":50,\"shoes_2\":0,\"nose_1\":0,\"pants_1\":0,\"bproof_2\":0,\"eyebrows_4\":0,\"lip_thickness\":0,\"eye_color\":0,\"glasses_2\":0,\"beard_2\":0,\"eye_squint\":0,\"lipstick_1\":0,\"makeup_2\":0,\"moles_1\":0,\"jaw_2\":0,\"pants_2\":0,\"age_2\":0,\"chest_1\":0,\"hair_1\":0,\"bodyb_4\":0,\"nose_4\":0,\"beard_1\":0,\"lipstick_4\":0,\"moles_2\":0,\"tshirt_1\":60,\"helmet_2\":0,\"decals_2\":0,\"chin_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"chin_2\":0,\"mask_2\":0,\"torso_1\":17,\"nose_5\":0,\"sun_2\":0,\"complexion_1\":0,\"watches_2\":0,\"bracelets_1\":-1,\"nose_2\":0,\"helmet_1\":-1,\"cheeks_3\":0,\"eyebrows_3\":0,\"mask_1\":9,\"makeup_1\":0,\"hair_color_1\":0,\"chin_4\":0,\"torso_2\":0,\"chest_2\":0,\"shoes_1\":0,\"nose_6\":0,\"decals_1\":0,\"chain_1\":0,\"bodyb_2\":0,\"dad\":0,\"watches_1\":-1,\"lipstick_3\":0,\"chin_3\":0,\"hair_color_2\":0,\"arms\":0,\"chest_3\":0,\"lipstick_2\":0,\"blemishes_1\":0,\"arms_2\":0,\"bproof_1\":0,\"neck_thickness\":0,\"sex\":0,\"blush_1\":0,\"chain_2\":0,\"tshirt_2\":0,\"bracelets_2\":0,\"mom\":21,\"eyebrows_6\":0,\"nose_3\":0,\"jaw_1\":0,\"eyebrows_5\":0,\"beard_4\":0},\"label\":\"bagr\"}]}'),
(6, 'user_mask', '0d7260980c0de3c2b03d14a09918c880cf07cb58', '{\"hasMask\":true,\"skin\":{\"mask_2\":0,\"mask_1\":9}}'),
(7, 'user_helmet', '0d7260980c0de3c2b03d14a09918c880cf07cb58', '{\"hasHelmet\":true,\"skin\":{\"helmet_1\":1,\"helmet_2\":0}}'),
(8, 'user_glasses', '0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(9, 'user_ears', '0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(10, 'property', 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(11, 'user_ears', 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(12, 'user_glasses', 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(13, 'user_helmet', 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(14, 'user_mask', 'Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(15, 'property', '4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(16, 'user_ears', '4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(17, 'user_glasses', '4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(18, 'user_mask', '4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(19, 'user_helmet', '4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(20, 'property', 'd460da1023ad3a478bef0db6dfa380e850a476d1', '{}'),
(21, 'user_ears', 'd460da1023ad3a478bef0db6dfa380e850a476d1', '{}'),
(22, 'user_helmet', 'd460da1023ad3a478bef0db6dfa380e850a476d1', '{}'),
(23, 'user_glasses', 'd460da1023ad3a478bef0db6dfa380e850a476d1', '{}'),
(24, 'user_mask', 'd460da1023ad3a478bef0db6dfa380e850a476d1', '{}'),
(25, 'property', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{\"dressing\":[{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":1,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"tshirt_2\":0,\"mask_2\":0,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"blush_1\":0,\"bags_1\":0,\"torso_2\":0,\"mask_1\":0,\"eyebrows_3\":0,\"decals_1\":0,\"bproof_2\":0,\"helmet_2\":0,\"bodyb_4\":0,\"eyebrows_6\":0,\"nose_3\":0,\"eye_color\":0,\"makeup_2\":0,\"nose_6\":0,\"nose_1\":0,\"shoes_2\":0,\"torso_1\":0,\"hair_2\":0,\"nose_5\":0,\"chin_1\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"eyebrows_2\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"cheeks_3\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"mom\":21,\"beard_3\":0,\"glasses_2\":0,\"beard_4\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"sex\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"lipstick_2\":0,\"chin_4\":0,\"complexion_1\":0,\"watches_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"moles_1\":0,\"chin_2\":0,\"hair_color_1\":0,\"glasses_1\":0,\"moles_2\":0,\"nose_2\":0,\"blemishes_2\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"helmet_1\":-1,\"makeup_3\":0,\"beard_1\":0,\"pants_2\":0,\"neck_thickness\":0,\"jaw_2\":0,\"eye_squint\":0,\"blush_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"complexion_2\":0,\"hair_color_2\":0,\"sun_2\":0,\"eyebrows_4\":0,\"beard_2\":0,\"hairColor\":[0,0],\"chest_1\":0,\"face_md_weight\":50},\"label\":\"1\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":8,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"pants_2\":0,\"tshirt_2\":0,\"mask_2\":0,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"mask_1\":202,\"bags_1\":0,\"torso_2\":0,\"helmet_1\":-1,\"eyebrows_3\":0,\"nose_3\":0,\"mom\":21,\"bodyb_4\":0,\"neck_thickness\":0,\"eyebrows_6\":0,\"eye_color\":0,\"cheeks_3\":0,\"makeup_2\":0,\"bproof_1\":0,\"nose_1\":0,\"torso_1\":0,\"nose_5\":0,\"hair_2\":0,\"chin_1\":0,\"decals_1\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"eyebrows_2\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"moles_1\":0,\"complexion_1\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"helmet_2\":0,\"beard_3\":0,\"glasses_2\":0,\"watches_2\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"lipstick_2\":0,\"chin_4\":0,\"makeup_4\":0,\"nose_6\":0,\"ears_1\":-1,\"shoes_2\":0,\"chin_2\":0,\"glasses_1\":0,\"hair_color_1\":0,\"bproof_2\":0,\"moles_2\":0,\"nose_2\":0,\"chest_1\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"sex\":0,\"makeup_3\":0,\"beard_1\":0,\"blush_2\":0,\"hair_color_2\":0,\"jaw_2\":0,\"eyebrows_4\":0,\"complexion_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"blush_1\":0,\"beard_4\":0,\"sun_2\":0,\"blemishes_2\":0,\"beard_2\":0,\"hairColor\":[0,0],\"eye_squint\":0,\"face_md_weight\":50},\"label\":\"2\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":2,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"tshirt_2\":0,\"mom\":21,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"mask_1\":0,\"bags_1\":0,\"torso_2\":0,\"watches_2\":0,\"eyebrows_3\":0,\"nose_3\":0,\"bodyb_4\":0,\"torso_1\":0,\"eye_color\":0,\"eyebrows_6\":0,\"decals_1\":0,\"bproof_2\":0,\"makeup_2\":0,\"neck_thickness\":0,\"nose_1\":0,\"nose_5\":0,\"chin_1\":0,\"hair_2\":0,\"complexion_1\":0,\"eyebrows_2\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"cheeks_3\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"sex\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"helmet_2\":0,\"beard_3\":0,\"glasses_2\":0,\"shoes_2\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"bproof_1\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"blush_2\":0,\"chin_4\":0,\"lipstick_2\":0,\"moles_1\":0,\"ears_1\":-1,\"mask_2\":0,\"chin_2\":0,\"glasses_1\":0,\"hair_color_1\":0,\"beard_4\":0,\"moles_2\":0,\"helmet_1\":-1,\"chest_1\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"nose_6\":0,\"makeup_3\":0,\"beard_1\":0,\"pants_2\":0,\"complexion_2\":0,\"jaw_2\":0,\"eye_squint\":0,\"hair_color_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"blush_1\":0,\"eyebrows_4\":0,\"sun_2\":0,\"hairColor\":[0,0],\"blemishes_2\":0,\"nose_2\":0,\"beard_2\":0,\"face_md_weight\":50},\"label\":\"3\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":10,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"pants_2\":0,\"tshirt_2\":0,\"mask_2\":0,\"jaw_1\":0,\"chain_1\":0,\"shoes_2\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"mask_1\":202,\"bags_1\":0,\"torso_2\":0,\"bproof_2\":0,\"chest_1\":0,\"bodyb_4\":0,\"nose_6\":0,\"eye_color\":0,\"beard_4\":0,\"eyebrows_6\":0,\"cheeks_3\":0,\"torso_1\":0,\"makeup_2\":0,\"nose_5\":0,\"nose_1\":0,\"chin_1\":0,\"decals_1\":0,\"hair_2\":0,\"eyebrows_2\":0,\"sex\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"nose_3\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"mom\":21,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"beard_3\":0,\"glasses_2\":0,\"helmet_2\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"lipstick_2\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"blush_2\":0,\"chin_4\":0,\"watches_2\":0,\"bproof_1\":0,\"ears_1\":-1,\"moles_1\":0,\"chin_2\":0,\"complexion_1\":0,\"hair_color_1\":0,\"glasses_1\":0,\"moles_2\":0,\"helmet_1\":-1,\"blush_1\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"beard_1\":0,\"neck_thickness\":0,\"hair_color_2\":0,\"jaw_2\":0,\"eyebrows_4\":0,\"complexion_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"blemishes_2\":0,\"hairColor\":[0,0],\"sun_2\":0,\"nose_2\":0,\"beard_2\":0,\"lipstick_1\":0,\"eye_squint\":0,\"face_md_weight\":50}},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":10,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"beard_4\":0,\"mask_2\":0,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"blush_1\":0,\"bags_1\":0,\"torso_2\":0,\"mask_1\":202,\"eyebrows_3\":0,\"shoes_2\":0,\"eyebrows_2\":0,\"bodyb_4\":0,\"bproof_2\":0,\"eyebrows_6\":0,\"eye_color\":0,\"mom\":21,\"makeup_2\":0,\"complexion_1\":0,\"nose_1\":0,\"ears_1\":-1,\"nose_5\":0,\"hair_2\":0,\"chin_1\":0,\"decals_1\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"sex\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"moles_1\":0,\"nose_3\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"nose_6\":0,\"beard_3\":0,\"glasses_2\":0,\"helmet_2\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"watches_2\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"blush_2\":0,\"chin_4\":0,\"bproof_1\":0,\"makeup_4\":0,\"cheeks_3\":0,\"torso_1\":0,\"chin_2\":0,\"glasses_1\":0,\"hair_color_1\":0,\"lipstick_2\":0,\"moles_2\":0,\"helmet_1\":-1,\"beard_2\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"pants_2\":0,\"makeup_3\":0,\"beard_1\":0,\"neck_thickness\":0,\"complexion_2\":0,\"jaw_2\":0,\"eye_squint\":0,\"hair_color_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"chest_1\":0,\"eyebrows_4\":0,\"sun_2\":0,\"tshirt_2\":0,\"blemishes_2\":0,\"hairColor\":[0,0],\"nose_2\":0,\"face_md_weight\":50},\"label\":\"2\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":11,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"tshirt_2\":0,\"mask_2\":0,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"blush_1\":0,\"bags_1\":0,\"torso_2\":0,\"mask_1\":202,\"eyebrows_3\":0,\"blemishes_2\":0,\"nose_3\":0,\"helmet_2\":0,\"bodyb_4\":0,\"eyebrows_6\":0,\"helmet_1\":-1,\"eye_color\":0,\"makeup_2\":0,\"complexion_1\":0,\"nose_1\":0,\"mom\":21,\"torso_1\":0,\"hair_2\":0,\"nose_5\":0,\"chin_1\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"eyebrows_2\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"cheeks_3\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"decals_1\":0,\"beard_3\":0,\"glasses_2\":0,\"sex\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"bproof_2\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"lipstick_2\":0,\"chin_4\":0,\"watches_2\":0,\"bproof_1\":0,\"neck_thickness\":0,\"moles_1\":0,\"beard_4\":0,\"ears_1\":-1,\"hair_color_1\":0,\"chin_2\":0,\"moles_2\":0,\"nose_2\":0,\"glasses_1\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"nose_6\":0,\"makeup_3\":0,\"beard_1\":0,\"pants_2\":0,\"hairColor\":[0,0],\"jaw_2\":0,\"eye_squint\":0,\"blush_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"complexion_2\":0,\"hair_color_2\":0,\"sun_2\":0,\"shoes_2\":0,\"beard_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"face_md_weight\":50},\"label\":\"5\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":13,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"age_2\":0,\"bags_2\":0,\"skin_md_weight\":50,\"cheeks_3\":0,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"tshirt_2\":0,\"mask_2\":0,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"mask_1\":202,\"bags_1\":0,\"torso_2\":0,\"nose_3\":0,\"eyebrows_3\":0,\"complexion_1\":0,\"bodyb_4\":0,\"bproof_2\":0,\"eye_color\":0,\"eyebrows_6\":0,\"beard_4\":0,\"neck_thickness\":0,\"makeup_2\":0,\"nose_5\":0,\"nose_1\":0,\"chin_1\":0,\"decals_1\":0,\"hair_2\":0,\"eyebrows_2\":0,\"sex\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"nose_6\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"mom\":21,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"hairColor\":[0,0],\"beard_3\":0,\"glasses_2\":0,\"helmet_2\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"watches_2\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"blush_2\":0,\"chin_4\":0,\"bproof_1\":0,\"lipstick_2\":0,\"moles_1\":0,\"ears_1\":-1,\"glasses_1\":0,\"chin_2\":0,\"hair_color_1\":0,\"torso_1\":0,\"moles_2\":0,\"nose_2\":0,\"blush_1\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"pants_2\":0,\"makeup_3\":0,\"beard_1\":0,\"model\":1885233650,\"shoes_2\":0,\"jaw_2\":0,\"eye_squint\":0,\"hair_color_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"complexion_2\":0,\"beard_2\":0,\"sun_2\":0,\"helmet_1\":-1,\"blemishes_2\":0,\"eyebrows_4\":0,\"chest_1\":0,\"face_md_weight\":50},\"label\":\"5\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":13,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"nose_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"bracelets_1\":-1,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"tshirt_2\":0,\"mom\":21,\"jaw_1\":0,\"chain_1\":0,\"lipstick_1\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"blush_1\":0,\"bags_1\":0,\"torso_2\":0,\"mask_1\":202,\"chest_1\":0,\"bproof_2\":0,\"helmet_1\":-1,\"bodyb_4\":0,\"nose_1\":0,\"eyebrows_6\":0,\"eye_color\":0,\"decals_1\":0,\"makeup_2\":0,\"beard_4\":0,\"chin_2\":0,\"neck_thickness\":0,\"nose_5\":0,\"hair_2\":0,\"chin_1\":0,\"nose_3\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"eyebrows_2\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"glasses_2\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"helmet_2\":0,\"beard_3\":0,\"torso_1\":0,\"shoes_2\":0,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"cheeks_3\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"lipstick_2\":0,\"chin_4\":0,\"ears_1\":-1,\"watches_2\":0,\"bproof_1\":0,\"age_2\":0,\"moles_1\":0,\"complexion_1\":0,\"hair_color_1\":0,\"glasses_1\":0,\"moles_2\":0,\"nose_2\":0,\"blemishes_2\":0,\"headBlend\":{\"skinMix\":0.5,\"thirdMix\":0.0,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"shapeThird\":0,\"shapeFirst\":21,\"shapeMix\":0.5},\"cheeks_1\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"beard_1\":0,\"jaw_2\":0,\"pants_2\":0,\"hair_color_2\":0,\"eyebrows_4\":0,\"mask_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"complexion_2\":0,\"blush_2\":0,\"sun_2\":0,\"sex\":0,\"beard_2\":0,\"hairColor\":[0,0],\"eye_squint\":0,\"face_md_weight\":50},\"label\":\"7\"},{\"skin\":{\"chest_3\":0,\"watches_1\":-1,\"ears_2\":0,\"blemishes_1\":0,\"tshirt_1\":1,\"eyebrows_5\":0,\"decals_2\":0,\"bodyb_2\":0,\"lip_thickness\":0,\"nose_6\":0,\"bags_2\":0,\"skin_md_weight\":50,\"model\":1885233650,\"complexion_2\":0,\"props\":{\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1],\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1]},\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"beard_4\":0,\"mom\":21,\"jaw_1\":0,\"chain_1\":0,\"shoes_2\":0,\"blush_3\":0,\"cheeks_2\":0,\"chest_2\":0,\"blush_1\":0,\"bags_1\":0,\"torso_2\":0,\"beard_2\":0,\"eyebrows_3\":0,\"helmet_1\":-1,\"bodyb_4\":0,\"lipstick_2\":0,\"eye_color\":0,\"eyebrows_6\":0,\"sex\":0,\"cheeks_3\":0,\"makeup_2\":0,\"neck_thickness\":0,\"nose_1\":0,\"nose_5\":0,\"chin_1\":0,\"hair_2\":0,\"decals_1\":0,\"eyebrows_2\":0,\"makeup_1\":0,\"hair_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"lipstick_1\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"makeup_4\":0,\"nose_3\":0,\"pants_1\":0,\"drawables\":{\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"11\":[\"jackets\",0],\"9\":[\"vest\",0],\"10\":[\"decals\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"5\":[\"bags\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0]},\"bodyb_3\":-1,\"lipstick_3\":0,\"jaw_2\":0,\"beard_3\":0,\"glasses_2\":0,\"torso_1\":2,\"shoes_1\":0,\"nose_4\":0,\"sun_1\":0,\"bracelets_2\":0,\"chain_2\":0,\"helmet_2\":0,\"chin_3\":0,\"age_1\":0,\"bodyb_1\":-1,\"lipstick_4\":0,\"blush_2\":0,\"chin_4\":0,\"bproof_2\":0,\"moles_1\":0,\"complexion_1\":0,\"watches_2\":0,\"bproof_1\":0,\"hairColor\":[0,0],\"hair_color_1\":0,\"chin_2\":0,\"moles_2\":0,\"nose_2\":0,\"glasses_1\":0,\"headBlend\":{\"skinMix\":0.5,\"shapeFirst\":21,\"shapeSecond\":0,\"skinThird\":0,\"skinFirst\":21,\"skinSecond\":0,\"hasParent\":false,\"thirdMix\":0.0,\"shapeThird\":0,\"shapeMix\":0.5},\"cheeks_1\":0,\"ears_1\":-1,\"makeup_3\":0,\"beard_1\":0,\"bracelets_1\":-1,\"age_2\":0,\"hair_color_2\":0,\"eyebrows_4\":0,\"pants_2\":0,\"arms\":0,\"dad\":0,\"eyebrows_1\":0,\"headOverlay\":[{\"name\":\"Blemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"FacialHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Eyebrows\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"Ageing\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Makeup\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Blush\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":2},{\"name\":\"Complexion\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"SunDamage\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"Lipstick\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"MolesFreckles\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"ChestHair\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":1},{\"name\":\"BodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0},{\"name\":\"AddBodyBlemishes\",\"overlayValue\":255,\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"colourType\":0}],\"arms_2\":0,\"mask_2\":0,\"chest_1\":0,\"sun_2\":0,\"tshirt_2\":0,\"blemishes_2\":0,\"mask_1\":0,\"eye_squint\":0,\"face_md_weight\":50},\"label\":\"2\"}]}'),
(26, 'user_ears', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}');
INSERT INTO `datastore_data` (`id`, `name`, `owner`, `data`) VALUES
(27, 'user_glasses', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{\"hasGlasses\":true,\"skin\":{\"glasses_2\":0,\"glasses_1\":1}}'),
(28, 'user_helmet', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(29, 'user_mask', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(30, 'user_ears', '391609334412e181c69b22e9ecf5a590ab0e8b14', '{}'),
(31, 'property', '391609334412e181c69b22e9ecf5a590ab0e8b14', '{}'),
(32, 'user_helmet', '391609334412e181c69b22e9ecf5a590ab0e8b14', '{}'),
(33, 'user_glasses', '391609334412e181c69b22e9ecf5a590ab0e8b14', '{}'),
(34, 'user_mask', '391609334412e181c69b22e9ecf5a590ab0e8b14', '{}'),
(35, 'property', '07d3159b66c8a6b8587510e9e95a6d12dc647279', '{}'),
(36, 'user_glasses', '07d3159b66c8a6b8587510e9e95a6d12dc647279', '{}'),
(37, 'user_ears', '07d3159b66c8a6b8587510e9e95a6d12dc647279', '{}'),
(38, 'user_helmet', '07d3159b66c8a6b8587510e9e95a6d12dc647279', '{}'),
(39, 'user_mask', '07d3159b66c8a6b8587510e9e95a6d12dc647279', '{}'),
(40, 'property', '66d5f066c3339e8556c857a532d7bc92ccb14262', '{}'),
(41, 'user_glasses', '66d5f066c3339e8556c857a532d7bc92ccb14262', '{}'),
(42, 'user_ears', '66d5f066c3339e8556c857a532d7bc92ccb14262', '{}'),
(43, 'user_helmet', '66d5f066c3339e8556c857a532d7bc92ccb14262', '{}'),
(44, 'user_mask', '66d5f066c3339e8556c857a532d7bc92ccb14262', '{}'),
(45, 'user_ears', '90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(46, 'user_glasses', '90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(47, 'user_helmet', '90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(48, 'user_mask', '90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(49, 'property', '90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(50, 'property', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{\"dressing\":[{\"label\":\"adfasf\",\"skin\":{\"decals_1\":0,\"bracelets_2\":0,\"lipstick_1\":0,\"cheeks_1\":0,\"nose_5\":0,\"beard_1\":0,\"chest_3\":0,\"blemishes_1\":0,\"watches_1\":-1,\"bodyb_4\":0,\"bproof_2\":0,\"moles_1\":0,\"bodyb_1\":-1,\"dad\":0,\"watches_2\":0,\"jaw_2\":0,\"eyebrows_1\":0,\"neck_thickness\":0,\"makeup_3\":0,\"chin_1\":0,\"nose_2\":0,\"jaw_1\":0,\"bags_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"eye_squint\":0,\"chin_2\":0,\"chin_4\":0,\"lipstick_2\":0,\"chest_2\":0,\"glasses_2\":0,\"makeup_1\":0,\"ears_1\":-1,\"eyebrows_4\":0,\"ears_2\":0,\"decals_2\":0,\"hair_color_2\":0,\"chain_2\":0,\"eyebrows_6\":0,\"arms_2\":0,\"mask_2\":0,\"bodyb_2\":0,\"sex\":0,\"shoes_1\":0,\"helmet_2\":0,\"bodyb_3\":-1,\"chin_3\":0,\"nose_4\":0,\"face_md_weight\":50,\"glasses_1\":0,\"beard_4\":0,\"nose_1\":0,\"complexion_1\":0,\"nose_6\":0,\"nose_3\":0,\"tshirt_1\":0,\"makeup_4\":0,\"moles_2\":0,\"hair_color_1\":0,\"pants_1\":0,\"eyebrows_3\":0,\"chain_1\":0,\"chin_13\":0,\"beard_3\":0,\"bproof_1\":0,\"lipstick_4\":0,\"age_1\":0,\"blush_3\":0,\"age_2\":0,\"mom\":21,\"torso_1\":4,\"eyebrows_5\":0,\"hair_2\":0,\"sun_2\":0,\"cheeks_2\":0,\"arms\":0,\"makeup_2\":0,\"torso_2\":0,\"blush_1\":0,\"bags_2\":0,\"chest_1\":0,\"skin_md_weight\":50,\"eye_color\":0,\"lip_thickness\":0,\"pants_2\":0,\"hair_1\":0,\"cheeks_3\":0,\"blush_2\":0,\"blemishes_2\":0,\"bracelets_1\":-1,\"eyebrows_2\":0,\"helmet_1\":-1,\"complexion_2\":0,\"shoes_2\":0,\"mask_1\":1,\"sun_1\":0,\"beard_2\":0}}]}'),
(51, 'user_glasses', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(52, 'user_ears', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(53, 'user_helmet', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(54, 'user_mask', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(55, 'user_glasses', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(56, 'property', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{\"dressing\":[{\"skin\":{\"eyebrows_6\":0,\"jaw_1\":0,\"blemishes_1\":0,\"decals_2\":0,\"tshirt_2\":0,\"bags_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"cheeks_1\":0,\"helmet_2\":0,\"neck_thickness\":0,\"age_1\":0,\"dad\":0,\"cheeks_2\":0,\"eyebrows_3\":0,\"bodyb_3\":-1,\"pants_1\":0,\"complexion_2\":0,\"cheeks_3\":0,\"chin_4\":0,\"lip_thickness\":0,\"nose_5\":0,\"nose_4\":0,\"shoes_1\":0,\"lipstick_4\":0,\"chin_1\":0,\"mask_1\":0,\"complexion_1\":0,\"moles_1\":0,\"nose_3\":0,\"shoes_2\":0,\"eye_color\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"chin_3\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"nose_2\":0,\"eyebrows_5\":0,\"watches_1\":-1,\"beard_1\":0,\"sun_2\":0,\"bodyb_4\":0,\"skin_md_weight\":50,\"arms\":0,\"lipstick_2\":0,\"beard_3\":0,\"watches_2\":0,\"eyebrows_1\":0,\"beard_4\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"face_md_weight\":50,\"bodyb_2\":0,\"mom\":21,\"blemishes_2\":0,\"sex\":0,\"moles_2\":0,\"pants_2\":0,\"jaw_2\":0,\"chest_3\":0,\"bodyb_1\":-1,\"chin_2\":0,\"decals_1\":0,\"arms_2\":0,\"nose_1\":0,\"chest_2\":0,\"glasses_1\":0,\"tshirt_1\":4,\"makeup_4\":0,\"eye_squint\":0,\"beard_2\":0,\"hair_color_1\":0,\"chain_1\":0,\"helmet_1\":-1,\"blush_2\":0,\"chain_2\":0,\"sun_1\":0,\"blush_3\":0,\"ears_2\":0,\"glasses_2\":0,\"age_2\":0,\"blush_1\":0,\"hair_1\":0,\"nose_6\":0,\"makeup_1\":0,\"chin_13\":0,\"mask_2\":0,\"lipstick_1\":0,\"torso_2\":0,\"bags_1\":0,\"hair_color_2\":0,\"torso_1\":0,\"makeup_3\":0,\"chest_1\":0,\"hair_2\":0},\"label\":\"fsf\"},{\"skin\":{\"decals_1\":0,\"jaw_1\":0,\"blemishes_1\":0,\"decals_2\":0,\"tshirt_2\":0,\"bags_2\":0,\"bracelets_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"cheeks_1\":0,\"helmet_2\":0,\"neck_thickness\":0,\"age_1\":0,\"dad\":0,\"cheeks_2\":0,\"eyebrows_3\":0,\"bodyb_3\":-1,\"pants_1\":78,\"complexion_2\":0,\"cheeks_3\":0,\"chin_4\":0,\"lip_thickness\":0,\"nose_5\":0,\"nose_4\":0,\"shoes_1\":25,\"lipstick_4\":0,\"chin_1\":0,\"mask_1\":0,\"complexion_1\":0,\"moles_1\":0,\"nose_3\":0,\"chest_2\":0,\"eye_color\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"chin_3\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"nose_2\":0,\"eyebrows_5\":0,\"watches_1\":-1,\"beard_1\":0,\"sun_2\":0,\"bodyb_4\":0,\"skin_md_weight\":50,\"sex\":0,\"lipstick_2\":0,\"beard_3\":0,\"blush_3\":0,\"eyebrows_1\":0,\"beard_4\":0,\"bproof_1\":0,\"bracelets_1\":-1,\"face_md_weight\":50,\"bodyb_2\":0,\"mom\":21,\"arms\":17,\"blemishes_2\":0,\"moles_2\":0,\"pants_2\":2,\"jaw_2\":0,\"beard_2\":0,\"eyebrows_6\":0,\"chin_2\":0,\"ears_2\":0,\"shoes_2\":0,\"arms_2\":0,\"nose_1\":0,\"glasses_1\":0,\"tshirt_1\":15,\"makeup_4\":0,\"eye_squint\":0,\"chain_1\":0,\"hair_color_1\":0,\"chest_3\":0,\"helmet_1\":-1,\"blush_2\":0,\"chain_2\":0,\"bodyb_1\":-1,\"makeup_3\":0,\"nose_6\":0,\"glasses_2\":0,\"age_2\":0,\"blush_1\":0,\"hair_1\":0,\"makeup_1\":0,\"chin_13\":0,\"sun_1\":0,\"mask_2\":0,\"lipstick_1\":0,\"torso_2\":3,\"bags_1\":0,\"hair_color_2\":0,\"torso_1\":139,\"watches_2\":0,\"chest_1\":0,\"hair_2\":0},\"label\":\"devlogy\"},{\"skin\":{\"decals_1\":0,\"jaw_1\":0,\"blemishes_1\":0,\"decals_2\":0,\"tshirt_2\":1,\"bags_2\":0,\"arms_2\":0,\"makeup_2\":0,\"bproof_2\":0,\"cheeks_1\":0,\"helmet_2\":0,\"neck_thickness\":0,\"age_1\":0,\"makeup_1\":0,\"cheeks_2\":0,\"eyebrows_3\":0,\"bodyb_3\":-1,\"pants_1\":78,\"complexion_2\":0,\"cheeks_3\":0,\"chin_4\":0,\"lip_thickness\":0,\"nose_5\":0,\"nose_4\":0,\"shoes_1\":25,\"lipstick_4\":0,\"chin_1\":0,\"bodyb_1\":-1,\"complexion_1\":0,\"moles_1\":0,\"nose_3\":0,\"chest_2\":0,\"eye_color\":0,\"lipstick_3\":0,\"eyebrows_4\":0,\"chin_3\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"nose_2\":0,\"eyebrows_5\":0,\"watches_1\":-1,\"beard_1\":0,\"sun_2\":0,\"bodyb_4\":0,\"skin_md_weight\":50,\"arms\":17,\"lipstick_2\":0,\"beard_3\":0,\"blush_3\":0,\"eyebrows_1\":0,\"beard_4\":0,\"hair_2\":0,\"bracelets_1\":-1,\"face_md_weight\":50,\"bodyb_2\":0,\"mom\":21,\"bracelets_2\":0,\"blemishes_2\":0,\"moles_2\":0,\"pants_2\":2,\"jaw_2\":0,\"beard_2\":0,\"bags_1\":0,\"chin_2\":0,\"ears_2\":0,\"shoes_2\":0,\"mask_1\":0,\"nose_1\":0,\"glasses_1\":0,\"tshirt_1\":76,\"makeup_4\":0,\"eye_squint\":0,\"sex\":0,\"hair_color_1\":0,\"chain_1\":0,\"chest_3\":0,\"blush_2\":0,\"chain_2\":0,\"helmet_1\":-1,\"bproof_1\":0,\"eyebrows_6\":0,\"glasses_2\":0,\"age_2\":0,\"blush_1\":0,\"hair_1\":0,\"dad\":0,\"nose_6\":0,\"chin_13\":0,\"lipstick_1\":0,\"sun_1\":0,\"makeup_3\":0,\"torso_2\":3,\"hair_color_2\":0,\"torso_1\":167,\"watches_2\":0,\"chest_1\":0,\"mask_2\":0},\"label\":\"devlogmore\"}]}'),
(57, 'user_ears', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(58, 'user_helmet', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(59, 'user_mask', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(60, 'user_ears', 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(61, 'user_helmet', 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(62, 'user_glasses', 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(63, 'property', 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(64, 'user_mask', 'char3:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(65, 'property', 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(66, 'user_glasses', 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(67, 'user_ears', 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(68, 'user_helmet', 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(69, 'user_mask', 'char4:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(70, 'property', 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{\"dressing\":[{\"label\":\"gagaga\",\"skin\":{\"complexion_1\":0,\"blush_2\":0,\"sun_1\":0,\"mask_1\":0,\"bracelets_2\":0,\"cheeks_2\":0,\"jaw_2\":0,\"chest_1\":0,\"makeup_3\":0,\"eyebrows_5\":0,\"chin_13\":0,\"beard_1\":0,\"eyebrows_6\":0,\"nose_6\":0,\"chin_1\":0,\"chain_2\":0,\"face_md_weight\":50,\"blemishes_2\":0,\"age_2\":0,\"tshirt_1\":4,\"glasses_1\":0,\"watches_2\":0,\"eyebrows_2\":0,\"hair_1\":0,\"lipstick_2\":0,\"sun_2\":0,\"nose_5\":0,\"shoes_2\":0,\"torso_1\":0,\"blush_1\":0,\"eye_squint\":0,\"glasses_2\":0,\"bodyb_2\":0,\"eyebrows_4\":0,\"skin_md_weight\":50,\"sex\":0,\"nose_4\":0,\"bproof_1\":0,\"chain_1\":0,\"mask_2\":0,\"makeup_1\":0,\"decals_2\":0,\"eyebrows_1\":0,\"beard_2\":0,\"eyebrows_3\":0,\"chin_3\":0,\"chin_2\":0,\"lipstick_4\":0,\"cheeks_1\":0,\"helmet_2\":0,\"ears_2\":0,\"makeup_2\":0,\"lipstick_3\":0,\"bproof_2\":0,\"hair_color_2\":0,\"pants_1\":0,\"chest_3\":0,\"mom\":21,\"arms\":0,\"eye_color\":0,\"nose_3\":0,\"hair_2\":0,\"nose_1\":0,\"bags_2\":0,\"chest_2\":0,\"lip_thickness\":0,\"pants_2\":0,\"blush_3\":0,\"hair_color_1\":0,\"makeup_4\":0,\"torso_2\":0,\"age_1\":0,\"bodyb_3\":-1,\"helmet_1\":-1,\"beard_4\":0,\"lipstick_1\":0,\"bodyb_1\":-1,\"complexion_2\":0,\"blemishes_1\":0,\"moles_1\":0,\"beard_3\":0,\"nose_2\":0,\"bracelets_1\":-1,\"watches_1\":-1,\"jaw_1\":0,\"dad\":0,\"arms_2\":0,\"bodyb_4\":0,\"tshirt_2\":0,\"moles_2\":0,\"decals_1\":0,\"chin_4\":0,\"cheeks_3\":0,\"shoes_1\":0,\"neck_thickness\":0,\"ears_1\":-1,\"bags_1\":0}}]}'),
(71, 'user_glasses', 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(72, 'user_ears', 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(73, 'user_helmet', 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(74, 'user_mask', 'char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(75, 'property', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(76, 'user_glasses', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(77, 'user_ears', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(78, 'user_mask', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(79, 'user_helmet', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(80, 'property', 'char1:398cc59fa4edec59248bdec0038524a9c005525a', '{}'),
(81, 'user_glasses', 'char1:398cc59fa4edec59248bdec0038524a9c005525a', '{}'),
(82, 'user_ears', 'char1:398cc59fa4edec59248bdec0038524a9c005525a', '{}'),
(83, 'user_helmet', 'char1:398cc59fa4edec59248bdec0038524a9c005525a', '{}'),
(84, 'user_mask', 'char1:398cc59fa4edec59248bdec0038524a9c005525a', '{}'),
(85, 'property', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(86, 'user_ears', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(87, 'user_glasses', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(88, 'user_helmet', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(89, 'user_mask', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(90, 'property', 'char1:399b392f36dff554cbb3a864e32c909637e83b17', '{}'),
(91, 'user_ears', 'char1:399b392f36dff554cbb3a864e32c909637e83b17', '{}'),
(92, 'user_glasses', 'char1:399b392f36dff554cbb3a864e32c909637e83b17', '{}'),
(93, 'user_helmet', 'char1:399b392f36dff554cbb3a864e32c909637e83b17', '{}'),
(94, 'user_mask', 'char1:399b392f36dff554cbb3a864e32c909637e83b17', '{}'),
(95, 'property', 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f', '{}'),
(96, 'user_ears', 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f', '{}'),
(97, 'user_glasses', 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f', '{}'),
(98, 'user_helmet', 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f', '{}'),
(99, 'user_mask', 'char1:81e216893a417beabdddc65cc1795d4c89c22d3f', '{}'),
(100, 'property', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', '{}'),
(101, 'user_ears', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', '{}'),
(102, 'user_glasses', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', '{}'),
(103, 'user_helmet', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', '{}'),
(104, 'user_mask', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', '{}'),
(105, 'user_ears', 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3', '{}'),
(106, 'property', 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3', '{}'),
(107, 'user_glasses', 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3', '{}'),
(108, 'user_helmet', 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3', '{}'),
(109, 'user_mask', 'char1:26cc2c59000e845a8478fe0ff98107824d9522a3', '{}'),
(110, 'property', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(111, 'user_ears', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(112, 'user_helmet', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(113, 'user_glasses', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(114, 'user_mask', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(115, 'motels', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(116, 'motels_bed', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(117, 'motels', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(118, 'motels_bed', 'char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '{}'),
(119, 'motels', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(120, 'motels_bed', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(121, 'property', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(122, 'user_ears', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(123, 'user_glasses', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(124, 'user_helmet', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(125, 'user_mask', 'char1:90d23e573ef6c08489c5023675b47b9914851425', '{}'),
(126, 'motels', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(127, 'motels_bed', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '{}'),
(128, 'motels', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(129, 'motels_bed', 'char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '{}'),
(130, 'motels', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}'),
(131, 'motels_bed', 'char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '{}');

-- --------------------------------------------------------

--
-- Struktura tabulky `dpkeybinds`
--

CREATE TABLE `dpkeybinds` (
  `id` varchar(50) DEFAULT NULL,
  `keybind1` varchar(50) DEFAULT 'num4',
  `emote1` varchar(255) DEFAULT '',
  `keybind2` varchar(50) DEFAULT 'num5',
  `emote2` varchar(255) DEFAULT '',
  `keybind3` varchar(50) DEFAULT 'num6',
  `emote3` varchar(255) DEFAULT '',
  `keybind4` varchar(50) DEFAULT 'num7',
  `emote4` varchar(255) DEFAULT '',
  `keybind5` varchar(50) DEFAULT 'num8',
  `emote5` varchar(255) DEFAULT '',
  `keybind6` varchar(50) DEFAULT 'num9',
  `emote6` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `dpkeybinds`
--

INSERT INTO `dpkeybinds` (`id`, `keybind1`, `emote1`, `keybind2`, `emote2`, `keybind3`, `emote3`, `keybind4`, `emote4`, `keybind5`, `emote5`, `keybind6`, `emote6`) VALUES
('steam:110000139e48090', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:0d7260980c0de3c2b03d14a09918c880cf07cb58', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001424c02e9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000112efa5af', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000147b9b7d7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000014547e2ea', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013d663dcb', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000133862af7', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000011c27317a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('license:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000149f741f9', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001437ed47b', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013d326fef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:110000143ec0cef', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000014293d9b0', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013c862f7c', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000013ed01dd6', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:11000010cf905de', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001428a8bc1', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', ''),
('steam:1100001097c765a', 'num4', '', 'num5', '', 'num6', '', 'num7', '', 'num8', '', 'num9', '');

-- --------------------------------------------------------

--
-- Struktura tabulky `fine_types`
--

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(53, 'Misuse of a horn', 30, 0),
(54, 'Illegally Crossing a continuous Line', 40, 0),
(55, 'Driving on the wrong side of the road', 250, 0),
(56, 'Illegal U-Turn', 250, 0),
(57, 'Illegally Driving Off-road', 170, 0),
(58, 'Refusing a Lawful Command', 30, 0),
(59, 'Illegally Stopping a Vehicle', 150, 0),
(60, 'Illegal Parking', 70, 0),
(61, 'Failing to Yield to the right', 70, 0),
(62, 'Failure to comply with Vehicle Information', 90, 0),
(63, 'Failing to stop at a Stop Sign ', 105, 0),
(64, 'Failing to stop at a Red Light', 130, 0),
(65, 'Illegal Passing', 100, 0),
(66, 'Driving an illegal Vehicle', 100, 0),
(67, 'Driving without a License', 1500, 0),
(68, 'Hit and Run', 800, 0),
(69, 'Exceeding Speeds Over < 5 mph', 90, 0),
(70, 'Exceeding Speeds Over 5-15 mph', 120, 0),
(71, 'Exceeding Speeds Over 15-30 mph', 180, 0),
(72, 'Exceeding Speeds Over > 30 mph', 300, 0),
(73, 'Impeding traffic flow', 110, 1),
(74, 'Public Intoxication', 90, 1),
(75, 'Disorderly conduct', 90, 1),
(76, 'Obstruction of Justice', 130, 1),
(77, 'Insults towards Civilans', 75, 1),
(78, 'Disrespecting of an LEO', 110, 1),
(79, 'Verbal Threat towards a Civilan', 90, 1),
(80, 'Verbal Threat towards an LEO', 150, 1),
(81, 'Providing False Information', 250, 1),
(82, 'Attempt of Corruption', 1500, 1),
(83, 'Brandishing a weapon in city Limits', 120, 2),
(84, 'Brandishing a Lethal Weapon in city Limits', 300, 2),
(85, 'No Firearms License', 600, 2),
(86, 'Possession of an Illegal Weapon', 700, 2),
(87, 'Possession of Burglary Tools', 300, 2),
(88, 'Grand Theft Auto', 1800, 2),
(89, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2),
(90, 'Frabrication of an Illegal Substance', 1500, 2),
(91, 'Possession of an Illegal Substance ', 650, 2),
(92, 'Kidnapping of a Civilan', 1500, 2),
(93, 'Kidnapping of an LEO', 2000, 2),
(94, 'Robbery', 650, 2),
(95, 'Armed Robbery of a Store', 650, 2),
(96, 'Armed Robbery of a Bank', 1500, 2),
(97, 'Assault on a Civilian', 2000, 3),
(98, 'Assault of an LEO', 2500, 3),
(99, 'Attempt of Murder of a Civilian', 3000, 3),
(100, 'Attempt of Murder of an LEO', 5000, 3),
(101, 'Murder of a Civilian', 10000, 3),
(102, 'Murder of an LEO', 30000, 3),
(103, 'Involuntary manslaughter', 1800, 3),
(104, 'Fraud', 2000, 2);

-- --------------------------------------------------------

--
-- Struktura tabulky `insto_accounts`
--

CREATE TABLE `insto_accounts` (
  `id` int(11) NOT NULL,
  `forename` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `surname` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `insto_accounts`
--

INSERT INTO `insto_accounts` (`id`, `forename`, `surname`, `username`, `password`, `avatar_url`) VALUES
(57, 'Jon', 'Brno', 'jfxs', '123456', 'https://image.flaticon.com/icons/png/512/149/149071.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `insto_instas`
--

CREATE TABLE `insto_instas` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filters` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `insto_likes`
--

CREATE TABLE `insto_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `inapId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `inventories`
--

CREATE TABLE `inventories` (
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `inventories`
--

INSERT INTO `inventories` (`name`, `owner`, `items`) VALUES
('test', NULL, '\"something\"');

-- --------------------------------------------------------

--
-- Struktura tabulky `items`
--

CREATE TABLE `items` (
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `rare` int(11) NOT NULL,
  `can_remove` int(11) NOT NULL,
  `stackable` tinyint(1) DEFAULT 1,
  `closeonuse` tinyint(1) DEFAULT 1,
  `description` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `items`
--

INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`, `stackable`, `closeonuse`, `description`) VALUES
('alive_chicken', 'Living chicken', 1, 0, 1, 1, 1, NULL),
('beer', 'Beer', 1, 0, 0, 1, 1, NULL),
('blowpipe', 'Blowtorch', 2, 0, 1, 1, 1, NULL),
('bread', 'Bread', 1, 0, 1, 1, 1, NULL),
('cannabis', 'Cannabis', 3, 0, 1, 1, 1, NULL),
('carokit', 'Body Kit', 3, 0, 1, 1, 1, NULL),
('carotool', 'Tools', 2, 0, 1, 1, 1, NULL),
('cheeseburger', 'CheeseBurger', -1, 0, 1, 1, 1, NULL),
('cigarette', 'Cigarette', 1, 0, 1, 1, 1, NULL),
('clothe', 'Cloth', 1, 0, 1, 1, 1, NULL),
('copper', 'Copper', 1, 0, 1, 1, 1, NULL),
('cutted_wood', 'Cut wood', 1, 0, 1, 1, 1, NULL),
('diamond', 'Diamond', 1, 0, 1, 1, 1, NULL),
('essence', 'Gas', 1, 0, 1, 1, 1, NULL),
('fabric', 'Fabric', 1, 0, 1, 1, 1, NULL),
('fish', 'Fish', 1, 0, 1, 1, 1, NULL),
('fixkit', 'Repair Kit', 3, 0, 1, 1, 1, NULL),
('fixtool', 'Repair Tools', 2, 0, 1, 1, 1, NULL),
('gazbottle', 'Gas Bottle', 2, 0, 1, 1, 1, NULL),
('gold', 'Gold', 1, 0, 1, 1, 1, NULL),
('gym_membership', 'Permanentka', 1, 0, 1, 1, 1, NULL),
('handcuffs', 'Handcuffs', 1, 0, 1, 0, 1, NULL),
('iron', 'Iron', 1, 0, 1, 1, 1, NULL),
('joint', 'Joint', 1, 0, 1, 1, 1, NULL),
('marijuana', 'Marijuana', 2, 0, 1, 1, 1, NULL),
('mask1', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask10', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask11', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask12', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask13', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask14', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask15', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask16', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask17', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask18', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask19', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask2', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask20', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask21', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask22', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask23', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask24', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask25', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask26', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask27', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask28', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask29', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask3', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask30', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask31', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask32', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask33', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask34', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask35', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask36', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask37', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask38', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask39', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask4', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask40', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask5', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask58', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask6', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask7', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask8', 'Maska', 1, 0, 1, 1, 1, NULL),
('mask9', 'Maska', 1, 0, 1, 1, 1, NULL),
('medikit', 'Medikit', 2, 0, 1, 1, 1, NULL),
('muffin', 'Muffin', 1, 0, 1, 1, 1, NULL),
('packaged_chicken', 'Chicken fillet', 1, 0, 1, 1, 1, NULL),
('packaged_plank', 'Packaged wood', 1, 0, 1, 1, 1, NULL),
('petrol', 'Oil', 1, 0, 1, 1, 1, NULL),
('petrol_raffin', 'Processed oil', 1, 0, 1, 1, 1, NULL),
('powerade', 'Powerade', 1, 0, 1, 1, 1, NULL),
('protein_shake', 'Protein Shake', 1, 0, 1, 1, 1, NULL),
('radio', 'Vysilacka', 1, 0, 1, 1, 1, NULL),
('rope', 'rope', 0, 0, 1, 0, 1, NULL),
('slaughtered_chicken', 'Slaughtered chicken', 1, 0, 1, 1, 1, NULL),
('soda', 'Soda', 1, 0, 1, 1, 1, NULL),
('sportlunch', 'Sportlunch', 1, 0, 1, 1, 1, NULL),
('stone', 'Stone', 1, 0, 1, 1, 1, NULL),
('umbrella', 'Dešník', 1, 0, 1, 1, 1, NULL),
('washed_stone', 'Washed stone', 1, 0, 1, 1, 1, NULL),
('wood', 'Wood', 1, 0, 1, 1, 1, NULL),
('wool', 'Wool', 1, 0, 1, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `jobs`
--

CREATE TABLE `jobs` (
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `jobs`
--

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('ambulance', 'EMS', 1),
('banker', 'Banker', 1),
('belloitaliano', 'Belloitaliano', 1),
('cardealer', 'Cardealer', 1),
('fisherman', 'Fisherman', 0),
('fueler', 'Fueler', 0),
('lumberjack', 'Lumberjack', 0),
('mafia', 'Mafia', 1),
('mafia2', 'Familjen', 1),
('mechanic', 'Mechanic', 1),
('miner', 'Miner', 0),
('offambulance', 'Off-Duty', 0),
('offpolice', 'Off-Duty', 0),
('police', 'LSPD', 1),
('realestateagent', 'Real Estate Agent', 1),
('reporter', 'Reporter', 1),
('slaughterer', 'Butcher', 0),
('tailor', 'Tailor', 0),
('taxi', 'Taxi', 1),
('unemployed', 'Unemployed', 0),
('unicorn', 'Unicorn', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `job_grades`
--

CREATE TABLE `job_grades` (
  `id` int(11) NOT NULL,
  `job_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `job_grades`
--

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}'),
(2, 'ambulance', 0, 'training', 'OJT', 1000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(3, 'ambulance', 1, 'intern', 'Intern', 5000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(4, 'ambulance', 2, 'nurse', 'Nurse', 10000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(5, 'ambulance', 3, 'head_nurse', 'Head Nurse', 15000, '{\"tshirt_2\":0,\"hair_color_1\":5,\"glasses_2\":3,\"shoes\":9,\"torso_2\":3,\"hair_color_2\":0,\"pants_1\":24,\"glasses_1\":4,\"hair_1\":2,\"sex\":0,\"decals_2\":0,\"tshirt_1\":15,\"helmet_1\":8,\"helmet_2\":0,\"arms\":92,\"face\":19,\"decals_1\":60,\"torso_1\":13,\"hair_2\":0,\"skin\":34,\"pants_2\":5}', '{\"tshirt_2\":3,\"decals_2\":0,\"glasses\":0,\"hair_1\":2,\"torso_1\":73,\"shoes\":1,\"hair_color_2\":0,\"glasses_1\":19,\"skin\":13,\"face\":6,\"pants_2\":5,\"tshirt_1\":75,\"pants_1\":37,\"helmet_1\":57,\"torso_2\":0,\"arms\":14,\"sex\":1,\"glasses_2\":0,\"decals_1\":0,\"hair_2\":0,\"helmet_2\":0,\"hair_color_1\":0}'),
(6, 'banker', 0, 'advisor', 'Advisor', 10, '{}', '{}'),
(7, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}'),
(8, 'banker', 2, 'business_banker', 'Investment banker', 30, '{}', '{}'),
(9, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}'),
(10, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}'),
(11, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}'),
(12, 'fisherman', 0, 'employee', 'Employee', 0, '{}', '{}'),
(13, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}'),
(14, 'reporter', 0, 'employee', 'Employee', 0, '{}', '{}'),
(15, 'tailor', 0, 'employee', 'Employee', 0, '{\"mask_1\":0,\"arms\":1,\"glasses_1\":0,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":0,\"torso_1\":24,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":0,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":0,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":36,\"tshirt_2\":0,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":48,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}', '{\"mask_1\":0,\"arms\":5,\"glasses_1\":5,\"hair_color_2\":4,\"makeup_1\":0,\"face\":19,\"glasses\":0,\"mask_2\":0,\"makeup_3\":0,\"skin\":29,\"helmet_2\":0,\"lipstick_4\":0,\"sex\":1,\"torso_1\":52,\"makeup_2\":0,\"bags_2\":0,\"chain_2\":0,\"ears_1\":-1,\"bags_1\":0,\"bproof_1\":0,\"shoes_2\":1,\"lipstick_2\":0,\"chain_1\":0,\"tshirt_1\":23,\"eyebrows_3\":0,\"pants_2\":0,\"beard_4\":0,\"torso_2\":0,\"beard_2\":6,\"ears_2\":0,\"hair_2\":0,\"shoes_1\":42,\"tshirt_2\":4,\"beard_3\":0,\"hair_1\":2,\"hair_color_1\":0,\"pants_1\":36,\"helmet_1\":-1,\"bproof_2\":0,\"eyebrows_4\":0,\"eyebrows_2\":0,\"decals_1\":0,\"age_2\":0,\"beard_1\":5,\"shoes\":10,\"lipstick_1\":0,\"eyebrows_1\":0,\"glasses_2\":0,\"makeup_4\":0,\"decals_2\":0,\"lipstick_3\":0,\"age_1\":0}'),
(16, 'miner', 0, 'employee', 'Employee', 0, '{\"tshirt_2\":1,\"ears_1\":8,\"glasses_1\":15,\"torso_2\":0,\"ears_2\":2,\"glasses_2\":3,\"shoes_2\":1,\"pants_1\":75,\"shoes_1\":51,\"bags_1\":0,\"helmet_2\":0,\"pants_2\":7,\"torso_1\":71,\"tshirt_1\":59,\"arms\":2,\"bags_2\":0,\"helmet_1\":0}', '{}'),
(17, 'slaughterer', 0, 'employee', 'Employee', 0, '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":67,\"pants_1\":36,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":0,\"torso_1\":56,\"beard_2\":6,\"shoes_1\":12,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":15,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":0,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}', '{\"age_1\":0,\"glasses_2\":0,\"beard_1\":5,\"decals_2\":0,\"beard_4\":0,\"shoes_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"hair_2\":0,\"arms\":72,\"pants_1\":45,\"skin\":29,\"eyebrows_2\":0,\"shoes\":10,\"helmet_1\":-1,\"lipstick_1\":0,\"helmet_2\":0,\"hair_color_1\":0,\"glasses\":0,\"makeup_4\":0,\"makeup_1\":0,\"hair_1\":2,\"bproof_1\":0,\"bags_1\":0,\"mask_1\":0,\"lipstick_3\":0,\"chain_1\":0,\"eyebrows_4\":0,\"sex\":1,\"torso_1\":49,\"beard_2\":6,\"shoes_1\":24,\"decals_1\":0,\"face\":19,\"lipstick_4\":0,\"tshirt_1\":9,\"mask_2\":0,\"age_2\":0,\"eyebrows_3\":0,\"chain_2\":0,\"glasses_1\":5,\"ears_1\":-1,\"bags_2\":0,\"ears_2\":0,\"torso_2\":0,\"bproof_2\":0,\"makeup_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"pants_2\":0,\"beard_3\":0,\"hair_color_2\":4}'),
(18, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}'),
(19, 'mechanic', 1, 'novice', 'beginner', 24, '{}', '{}'),
(20, 'mechanic', 2, 'experimente', 'experienced', 36, '{}', '{}'),
(21, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}'),
(22, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}'),
(28, 'realestateagent', 0, 'location', 'Employee', 10, '{}', '{}'),
(29, 'realestateagent', 1, 'vendeur', 'Seller', 25, '{}', '{}'),
(30, 'realestateagent', 2, 'gestion', 'Management', 40, '{}', '{}'),
(31, 'realestateagent', 3, 'boss', 'Boss', 0, '{}', '{}'),
(32, 'taxi', 0, 'recrue', 'Recruit', 12, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(33, 'taxi', 1, 'novice', 'Novice', 24, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":32,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":0,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":27,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(34, 'taxi', 2, 'experimente', 'Experienced', 36, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(35, 'taxi', 3, 'uber', 'Uber', 48, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":26,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":57,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":11,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(36, 'taxi', 4, 'boss', 'Boss', 0, '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":29,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":31,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":4,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":1,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":0,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":0,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":4,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":10,\"pants_1\":24}', '{\"hair_2\":0,\"hair_color_2\":0,\"torso_1\":57,\"bags_1\":0,\"helmet_2\":0,\"chain_2\":0,\"eyebrows_3\":0,\"makeup_3\":0,\"makeup_2\":0,\"tshirt_1\":38,\"makeup_1\":0,\"bags_2\":0,\"makeup_4\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_4\":0,\"bproof_2\":0,\"hair_color_1\":0,\"decals_2\":0,\"pants_2\":1,\"age_2\":0,\"glasses_2\":0,\"ears_2\":0,\"arms\":21,\"lipstick_1\":0,\"ears_1\":-1,\"mask_2\":0,\"sex\":1,\"lipstick_3\":0,\"helmet_1\":-1,\"shoes_2\":0,\"beard_2\":0,\"beard_1\":0,\"lipstick_2\":0,\"beard_4\":0,\"glasses_1\":5,\"bproof_1\":0,\"mask_1\":0,\"decals_1\":1,\"hair_1\":0,\"eyebrows_2\":0,\"beard_3\":0,\"age_1\":0,\"tshirt_2\":0,\"skin\":0,\"torso_2\":0,\"eyebrows_1\":0,\"face\":0,\"shoes_1\":49,\"pants_1\":11}'),
(37, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}'),
(38, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}'),
(39, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}'),
(40, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}'),
(41, 'mafia', 0, 'associate', 'Ri-ri', 1, '{}', '{}'),
(42, 'mafia', 1, 'soldier', 'Anëtar', 1, '{}', '{}'),
(43, 'mafia', 2, 'caporegime', 'Nënsferë', 1, '{}', '{}'),
(44, 'mafia', 3, 'underboss', 'Këshilltar', 1, '{}', '{}'),
(45, 'mafia', 4, 'boss', 'Shef', 1, '{}', '{}'),
(46, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(47, 'unicorn', 1, 'dancer', 'Dancer', 300, '{}', '{}'),
(48, 'unicorn', 2, 'viceboss', 'Co-Boss', 500, '{}', '{}'),
(49, 'unicorn', 3, 'boss', 'Boss', 600, '{}', '{}'),
(61, 'police', 0, 'recruit', 'Kadet', 20, '{}', '{}'),
(62, 'police', 1, 'officer1', 'Officer I', 20, '{}', '{}'),
(63, 'police', 2, 'officer2', 'Officer II', 20, '{}', '{}'),
(64, 'police', 3, 'officer3', 'Officer III', 20, '{}', '{}'),
(65, 'police', 4, 'stg1', 'Sergant I', 20, '{}', '{}'),
(66, 'police', 5, 'stg2', 'Sergant II', 20, '{}', '{}'),
(67, 'police', 6, 'liut', 'Lieuteant', 20, '{}', '{}'),
(68, 'police', 7, 'capt', 'Captain', 20, '{}', '{}'),
(69, 'police', 8, 'boss4', 'Commander', 100, '{}', '{}'),
(70, 'police', 9, 'boss3', 'Deputy chief of Police\n', 100, '{}', '{}'),
(71, 'police', 10, 'boss2', 'Assistant of Police\n', 100, '{}', '{}'),
(72, 'police', 11, 'boss', 'Chief of Police\n', 100, '{}', '{}'),
(73, 'ambulance', 4, 'doctor', 'Doctor', 20000, '{}', '{}'),
(74, 'ambulance', 5, 'head_doc', 'Head Doctor', 25000, '{}', '{}'),
(75, 'ambulance', 6, 'dep', 'Deputy', 30000, '{}', '{}'),
(76, 'ambulance', 7, 'boss', 'Surgeon General', 35000, '{}', '{}'),
(77, 'offpolice', 0, 'recruit', 'Recruit', 12, '{}', '{}'),
(78, 'offpolice', 1, 'officer', 'Officer', 24, '{}', '{}'),
(79, 'offpolice', 2, 'sergeant', 'Sergeant', 36, '{}', '{}'),
(80, 'offpolice', 3, 'lieutenant', 'Lieutenant', 48, '{}', '{}'),
(81, 'offpolice', 4, 'boss', 'Boss', 0, '{}', '{}'),
(82, 'offambulance', 0, 'ambulance', 'Ambulance', 12, '{}', '{}'),
(83, 'offambulance', 1, 'doctor', 'Doctor', 24, '{}', '{}'),
(84, 'offambulance', 2, 'chief_doctor', 'Chef', 36, '{}', '{}'),
(85, 'offambulance', 3, 'boss', 'Boss', 48, '{}', '{}'),
(86, 'mafia2', 0, 'soldato', 'Rifiuto', 1, '{}', '{}'),
(87, 'mafia2', 2, 'mafioso', 'Pedone', 1, '{}', '{}'),
(88, 'mafia2', 3, 'capo', 'Cugino', 1, '{}', '{}'),
(89, 'mafia2', 4, 'assassin', 'Consigliere', 1, '{}', '{}'),
(90, 'mafia2', 5, 'consigliere', 'Famiglia', 1, '{}', '{}'),
(91, 'mafia2', 6, 'boss', 'Padrino', 1, '{}', '{}'),
(92, 'unicorn', 0, 'barman', 'Barman', 300, '{}', '{}'),
(93, 'unicorn', 1, 'dancer', 'Tanečník', 300, '{}', '{}'),
(94, 'unicorn', 2, 'viceboss', 'Coboss', 500, '{}', '{}'),
(95, 'unicorn', 3, 'boss', 'Boss', 600, '{}', '{}'),
(96, 'belloitaliano', 0, 'barman', 'Barman', 300, '{}', '{}');

-- --------------------------------------------------------

--
-- Struktura tabulky `licenses`
--

CREATE TABLE `licenses` (
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `licenses`
--

INSERT INTO `licenses` (`type`, `label`) VALUES
('aircraft', 'Aircraft License'),
('boat', 'Boat License'),
('boating', 'Boating License'),
('dmv', 'Traffic Laws'),
('drive', 'Drivers license'),
('drive_bike', 'Motorcycle licence'),
('drive_truck', 'Truck license'),
('weapon', 'Weapons license'),
('weed_processing', 'Weed Processing License');

-- --------------------------------------------------------

--
-- Struktura tabulky `linden_inventory`
--

CREATE TABLE `linden_inventory` (
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `linden_inventory`
--

INSERT INTO `linden_inventory` (`owner`, `name`, `data`, `lastupdated`) VALUES
('cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', 'Personal Locker-cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '[{\"slot\":1,\"metadata\":{\"registered\":\"Franta Jebly\",\"components\":[],\"durability\":56.60000000000004,\"serial\":\"366268LUN823221\",\"ammo\":30},\"count\":1,\"name\":\"WEAPON_CARBINERIFLE\"}]', '2021-08-17 14:44:25');

-- --------------------------------------------------------

--
-- Struktura tabulky `lsrp_motels`
--

CREATE TABLE `lsrp_motels` (
  `id` bigint(255) NOT NULL,
  `ident` varchar(50) NOT NULL,
  `motel_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Vypisuji data pro tabulku `lsrp_motels`
--

INSERT INTO `lsrp_motels` (`id`, `ident`, `motel_id`) VALUES
(1, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '17');

-- --------------------------------------------------------

--
-- Struktura tabulky `migrations`
--

CREATE TABLE `migrations` (
  `id` int(11) NOT NULL,
  `module` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `migrations`
--

INSERT INTO `migrations` (`id`, `module`, `last`) VALUES
(1, 'skin', 0),
(2, 'society', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `multichar`
--

CREATE TABLE `multichar` (
  `identifier` varchar(100) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `multicharacter_slots`
--

CREATE TABLE `multicharacter_slots` (
  `identifier` varchar(60) NOT NULL,
  `slots` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `multicharacter_slots`
--

INSERT INTO `multicharacter_slots` (`identifier`, `slots`) VALUES
('1', 3),
('0d7260980c0de3c2b03d14a09918c880cf07cb58', 5);

-- --------------------------------------------------------

--
-- Struktura tabulky `multichar_donators`
--

CREATE TABLE `multichar_donators` (
  `identifier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `owned_properties`
--

CREATE TABLE `owned_properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `owned_properties`
--

INSERT INTO `owned_properties` (`id`, `name`, `price`, `rented`, `owner`) VALUES
(2, 'WhispymoundDrive', 7500, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(6, 'MedEndApartment5', 2500, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(8, 'OldSpiceWarm', 25000, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(9, 'OldSpiceWarm', 25000, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(10, 'PowerBrokerIce', 25000, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(11, 'PowerBrokerConservative', 25000, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(12, 'PowerBrokerConservative', 25000, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(14, 'LowEndApartment', 2813, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(15, 'MedEndApartment7', 2500, 1, '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(16, 'MedEndApartment7', 2500, 1, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58');

-- --------------------------------------------------------

--
-- Struktura tabulky `owned_vehicles`
--

CREATE TABLE `owned_vehicles` (
  `owner` varchar(60) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) NOT NULL DEFAULT 'civ',
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(60) NOT NULL DEFAULT 'Unknown',
  `fuel` int(11) NOT NULL DEFAULT 100,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  `image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `owned_vehicles`
--

INSERT INTO `owned_vehicles` (`owner`, `plate`, `vehicle`, `type`, `job`, `category`, `name`, `fuel`, `stored`, `image`) VALUES
('cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', 'AHL 921', '{\"plate\":\"AHL 921\",\"model\":-440768424}', 'car', 'civ', 'motorcycles', 'Blazer Sport', 100, 0, NULL),
('0d7260980c0de3c2b03d14a09918c880cf07cb58', 'BGW 368', '{\"plate\":\"BGW 368\",\"model\":1131912276}', 'car', 'civ', 'cycles', 'BMX', 100, 0, NULL),
('char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', 'FMG 898', '{\"modSmokeEnabled\":false,\"modDial\":-1,\"modSeats\":-1,\"fuelLevel\":62.0,\"xenonColor\":255,\"pearlescentColor\":0,\"modExhaust\":-1,\"modLivery\":0,\"modAirFilter\":-1,\"modHood\":-1,\"plate\":\"FMG 898\",\"modOrnaments\":-1,\"modSideSkirt\":-1,\"modStruts\":-1,\"modSpoilers\":-1,\"modBrakes\":-1,\"modRearBumper\":-1,\"modBackWheels\":-1,\"modTrimA\":-1,\"modTrunk\":-1,\"plateIndex\":4,\"modSuspension\":-1,\"neonEnabled\":[false,false,false,false],\"modArchCover\":-1,\"tyreSmokeColor\":[255,255,255],\"wheels\":0,\"color2\":0,\"modRightFender\":-1,\"modDoorSpeaker\":-1,\"modDashboard\":-1,\"modTank\":-1,\"model\":-1627000575,\"modEngine\":-1,\"tankHealth\":1000.0,\"modGrille\":-1,\"modFrontBumper\":-1,\"modFrame\":-1,\"modEngineBlock\":-1,\"engineHealth\":1000.0,\"modVanityPlate\":-1,\"modShifterLeavers\":-1,\"neonColor\":[255,0,255],\"modXenon\":false,\"modWindows\":-1,\"modAerials\":-1,\"modTurbo\":false,\"modTransmission\":-1,\"color1\":134,\"modFrontWheels\":-1,\"modRoof\":-1,\"modPlateHolder\":-1,\"modTrimB\":-1,\"modHorns\":-1,\"modSpeakers\":-1,\"bodyHealth\":1000.0,\"modFender\":-1,\"modHydrolic\":-1,\"extras\":{\"7\":true,\"10\":true,\"12\":true,\"2\":true,\"5\":true},\"wheelColor\":156,\"modSteeringWheel\":-1,\"modAPlate\":-1,\"windowTint\":-1,\"modArmor\":-1,\"dirtLevel\":5.2}', 'car', 'civ', 'supers', 'police2', 100, 0, NULL),
('0d7260980c0de3c2b03d14a09918c880cf07cb58', 'LHL 866', '{\"modHorns\":-1,\"modSpeakers\":-1,\"modEngineBlock\":-1,\"modLivery\":-1,\"modHood\":-1,\"modShifterLeavers\":-1,\"modWindows\":-1,\"modTurbo\":false,\"modArchCover\":-1,\"modFender\":-1,\"modXenon\":false,\"wheelColor\":156,\"pearlescentColor\":111,\"modOrnaments\":-1,\"neonColor\":[255,0,255],\"modTrimB\":-1,\"dirtLevel\":2.1,\"modTrunk\":-1,\"modArmor\":-1,\"modSpoilers\":-1,\"model\":1131912276,\"modSuspension\":-1,\"modFrontBumper\":-1,\"modVanityPlate\":-1,\"xenonColor\":255,\"bodyHealth\":1000.0,\"modDoorSpeaker\":-1,\"modGrille\":-1,\"engineHealth\":1000.0,\"modSteeringWheel\":-1,\"tyreSmokeColor\":[255,255,255],\"modSeats\":-1,\"modTrimA\":-1,\"windowTint\":-1,\"modFrontWheels\":-1,\"modHydrolic\":-1,\"modAirFilter\":-1,\"modBrakes\":-1,\"modDashboard\":-1,\"modEngine\":-1,\"modStruts\":-1,\"modBackWheels\":-1,\"modPlateHolder\":-1,\"modTransmission\":-1,\"modRightFender\":-1,\"fuelLevel\":57.6,\"plateIndex\":4,\"tankHealth\":1000.0,\"modDial\":-1,\"modSideSkirt\":-1,\"wheels\":6,\"modAPlate\":-1,\"modSmokeEnabled\":false,\"color2\":0,\"modTank\":-1,\"plate\":\"LHL 866\",\"modExhaust\":-1,\"neonEnabled\":[false,false,false,false],\"modRearBumper\":-1,\"extras\":[],\"color1\":7,\"modFrame\":-1,\"modRoof\":-1,\"modAerials\":-1}', 'car', 'civ', 'cycles', 'BMX', 100, 1, NULL),
('cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', 'LML 321', '{\"modHydrolic\":-1,\"modDashboard\":-1,\"extras\":{\"12\":false,\"10\":true,\"1\":true},\"modPlateHolder\":-1,\"tankHealth\":987.8,\"modAerials\":-1,\"modSpoilers\":-1,\"modShifterLeavers\":-1,\"modBrakes\":-1,\"modArmor\":-1,\"fuelLevel\":55.8,\"modArchCover\":-1,\"modSeats\":-1,\"modAPlate\":-1,\"modSteeringWheel\":-1,\"wheels\":7,\"plate\":\"LML 321\",\"modHorns\":-1,\"color2\":12,\"modDial\":-1,\"windowTint\":-1,\"modTrimA\":-1,\"modLivery\":-1,\"modTransmission\":-1,\"neonEnabled\":[false,false,false,false],\"modGrille\":-1,\"modSuspension\":-1,\"modTrunk\":-1,\"modExhaust\":-1,\"modXenon\":false,\"tyreSmokeColor\":[255,255,255],\"engineHealth\":1000.0,\"modVanityPlate\":-1,\"modDoorSpeaker\":-1,\"modRearBumper\":-1,\"modAirFilter\":-1,\"modTurbo\":false,\"modOrnaments\":-1,\"modTank\":-1,\"modHood\":-1,\"modFrontWheels\":-1,\"modWindows\":-1,\"modRoof\":-1,\"plateIndex\":0,\"modSpeakers\":-1,\"modTrimB\":-1,\"color1\":4,\"bodyHealth\":963.1,\"modEngineBlock\":-1,\"modEngine\":-1,\"modBackWheels\":-1,\"modStruts\":-1,\"pearlescentColor\":111,\"modSideSkirt\":-1,\"modFender\":-1,\"modFrame\":-1,\"dirtLevel\":5.2,\"modFrontBumper\":-1,\"wheelColor\":156,\"modSmokeEnabled\":false,\"xenonColor\":255,\"neonColor\":[255,0,255],\"modRightFender\":-1,\"model\":-1216765807}', 'car', 'civ', 'supers', 'Adder', 100, 0, NULL),
('0d7260980c0de3c2b03d14a09918c880cf07cb58', 'NNG 470', '{\"modHorns\":-1,\"modFrontBumper\":-1,\"plate\":\"NNG 470\",\"windowTint\":-1,\"modEngineBlock\":-1,\"modBackWheels\":-1,\"modFrame\":-1,\"color1\":134,\"modEngine\":-1,\"plateIndex\":4,\"modXenon\":false,\"modShifterLeavers\":-1,\"modSmokeEnabled\":false,\"modSuspension\":-1,\"modHood\":-1,\"color2\":134,\"modPlateHolder\":-1,\"modTurbo\":false,\"modRoof\":-1,\"modFrontWheels\":-1,\"modTrunk\":-1,\"modTrimB\":-1,\"modGrille\":-1,\"modStruts\":-1,\"modHydrolic\":-1,\"modTransmission\":-1,\"wheels\":1,\"modSpeakers\":-1,\"neonEnabled\":[false,false,false,false],\"model\":2046537925,\"modSideSkirt\":-1,\"modSeats\":-1,\"modLivery\":5,\"wheelColor\":156,\"modArmor\":-1,\"modVanityPlate\":-1,\"modArchCover\":-1,\"modDashboard\":-1,\"neonColor\":[255,0,255],\"modExhaust\":-1,\"modFender\":-1,\"extras\":{\"2\":false,\"1\":true},\"pearlescentColor\":0,\"modAerials\":-1,\"modRearBumper\":-1,\"modWindows\":-1,\"fuelLevel\":98.5,\"bodyHealth\":999.0,\"modDial\":-1,\"modSteeringWheel\":-1,\"modSpoilers\":-1,\"xenonColor\":255,\"modAirFilter\":-1,\"modRightFender\":-1,\"tankHealth\":999.9,\"dirtLevel\":4.1,\"modDoorSpeaker\":-1,\"modBrakes\":-1,\"modTrimA\":-1,\"engineHealth\":998.5,\"modAPlate\":-1,\"modTank\":-1,\"modOrnaments\":-1,\"tyreSmokeColor\":[255,255,255]}', 'car', 'police', 'cars', 'Police Cruiser', 100, 1, NULL),
('char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', 'SKF 126', '{\"model\":-1205801634,\"plate\":\"SKF 126\"}', 'car', 'civ', 'muscles', 'Blade', 100, 0, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_app_chat`
--

CREATE TABLE `phone_app_chat` (
  `id` int(11) NOT NULL,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_calls`
--

CREATE TABLE `phone_calls` (
  `id` int(11) NOT NULL,
  `owner` varchar(10) NOT NULL COMMENT 'Num tel proprio',
  `num` varchar(10) NOT NULL COMMENT 'Num reférence du contact',
  `incoming` int(11) NOT NULL COMMENT 'Défini si on est à l''origine de l''appels',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Appels accepter ou pas'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `phone_calls`
--

INSERT INTO `phone_calls` (`id`, `owner`, `num`, `incoming`, `time`, `accepts`) VALUES
(125, '666-6666', 'ambulance', 1, '2021-08-19 17:19:23', 0),
(126, '110-6897', 'ambulance', 1, '2021-08-27 18:08:29', 0),
(127, '110-6897', '372-3012', 1, '2021-08-27 18:22:10', 1),
(128, '372-3012', '110-6897', 0, '2021-08-27 18:22:10', 1),
(129, '110-6897', '372-3012', 1, '2021-08-27 18:22:10', 1),
(130, '372-3012', '110-6897', 0, '2021-08-27 18:22:11', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_ch_reddit`
--

CREATE TABLE `phone_ch_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_messages`
--

CREATE TABLE `phone_messages` (
  `id` int(11) NOT NULL,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `phone_messages`
--

INSERT INTO `phone_messages` (`id`, `transmitter`, `receiver`, `message`, `time`, `isRead`, `owner`) VALUES
(106, 'police', '666-6666', 'cscs', '2021-08-19 17:01:00', 1, 1),
(107, 'ambulance', '666-6666', '....', '2021-08-19 17:19:33', 1, 1),
(108, 'police', '666-6666', 'asasfasfasfasf', '2021-08-20 14:07:53', 1, 1),
(109, '666-6666', '258-7963', 'dasdasd', '2021-08-20 14:09:10', 1, 0),
(110, '258-7963', '666-6666', 'dasdasd', '2021-08-20 14:09:10', 1, 1),
(111, '666-6666', '258-7963', 'GPS: 470.37127685547, -975.22845458984', '2021-08-20 14:09:17', 1, 0),
(112, '258-7963', '666-6666', 'GPS: 470.37127685547, -975.22845458984', '2021-08-20 14:09:17', 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_reddit`
--

CREATE TABLE `phone_reddit` (
  `id` int(11) NOT NULL,
  `redgkit` varchar(20) DEFAULT NULL,
  `reditsage` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_shops`
--

CREATE TABLE `phone_shops` (
  `id` int(11) NOT NULL,
  `store` varchar(255) NOT NULL,
  `item` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `label` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `phone_shops`
--

INSERT INTO `phone_shops` (`id`, `store`, `item`, `price`, `label`) VALUES
(18, 'https://img.pngio.com/sim-card-png-clipart-sim-cards-png-1483_1162.png', 'sim', 50, 'SIM CARD');

-- --------------------------------------------------------

--
-- Struktura tabulky `phone_users_contacts`
--

CREATE TABLE `phone_users_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `phone_users_contacts`
--

INSERT INTO `phone_users_contacts` (`id`, `identifier`, `number`, `display`) VALUES
(8, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '258-7963', '258-7963');

-- --------------------------------------------------------

--
-- Struktura tabulky `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `properties`
--

INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{\"y\":564.89,\"z\":182.959,\"x\":119.384}', '{\"x\":117.347,\"y\":559.506,\"z\":183.304}', '{\"y\":557.032,\"z\":183.301,\"x\":118.037}', '{\"y\":567.798,\"z\":182.131,\"x\":119.249}', '[]', NULL, 1, 1, 0, '{\"x\":118.748,\"y\":566.573,\"z\":175.697}', 1500000),
(7, 'LowEndApartment', 'Appartement de base', '{\"y\":-1078.735,\"z\":28.4031,\"x\":292.528}', '{\"y\":-1007.152,\"z\":-102.002,\"x\":265.845}', '{\"y\":-1002.802,\"z\":-100.008,\"x\":265.307}', '{\"y\":-1078.669,\"z\":28.401,\"x\":296.738}', '[]', NULL, 1, 1, 0, '{\"x\":265.916,\"y\":-999.38,\"z\":-100.008}', 562500),
(43, 'MazeBankBuilding', 'Maze Bank Building', '{\"x\":-79.18,\"y\":-795.92,\"z\":43.35}', NULL, NULL, '{\"x\":-72.50,\"y\":-786.92,\"z\":43.40}', '[]', NULL, 0, 0, 1, NULL, 0),
(44, 'OldSpiceWarm', 'Old Spice Warm', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(45, 'OldSpiceClassical', 'Old Spice Classical', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(46, 'OldSpiceVintage', 'Old Spice Vintage', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_01c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(47, 'ExecutiveRich', 'Executive Rich', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(48, 'ExecutiveCool', 'Executive Cool', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(49, 'ExecutiveContrast', 'Executive Contrast', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_02a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(50, 'PowerBrokerIce', 'Power Broker Ice', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03a\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(51, 'PowerBrokerConservative', 'Power Broker Conservative', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03b\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(52, 'PowerBrokerPolished', 'Power Broker Polished', NULL, '{\"x\":-75.69,\"y\":-827.08,\"z\":242.43}', '{\"x\":-75.51,\"y\":-823.90,\"z\":242.43}', NULL, '[\"ex_dt1_11_office_03c\"]', 'MazeBankBuilding', 0, 1, 0, '{\"x\":-71.81,\"y\":-814.34,\"z\":242.39}', 5000000),
(104, 'MedEndApartment5', 'Medium Apartment 5', '{\"y\":4642.17,\"z\":42.88,\"x\":1724.43}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":4637.34,\"z\":42.31,\"x\":1724.27}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000),
(106, 'MedEndApartment7', 'Medium Apartment 7', '{\"y\":6577.19,\"z\":31.74,\"x\":12.57}', '{\"y\":-1012.27,\"z\":-100.2,\"x\":346.49}', '{\"y\":-1000.09,\"z\":-100.2,\"x\":347.06}', '{\"y\":6572.61,\"z\":31.72,\"x\":16.93}', '[]', NULL, 1, 1, 0, '{\"x\":345.3,\"y\":-995.24,\"z\":-100.2}', 500000);

-- --------------------------------------------------------

--
-- Struktura tabulky `redux_user_peds`
--

CREATE TABLE `redux_user_peds` (
  `identifier` varchar(255) DEFAULT NULL,
  `pedmodel` varchar(255) DEFAULT NULL,
  `randomized` varchar(255) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabulky `rented_vehicles`
--

CREATE TABLE `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `store` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `shops`
--

INSERT INTO `shops` (`id`, `store`, `item`, `price`) VALUES
(1, 'TwentyFourSeven', 'bread', 30),
(2, 'TwentyFourSeven', 'water', 15),
(3, 'RobsLiquor', 'bread', 30),
(4, 'RobsLiquor', 'water', 15),
(5, 'LTDgasoline', 'bread', 30),
(6, 'LTDgasoline', 'water', 15),
(7, 'TwentyFourSeven', 'beer', 45),
(8, 'RobsLiquor', 'beer', 45),
(9, 'LTDgasoline', 'beer', 45),
(10, 'TwentyFourSeven', 'handcuffs', 100),
(11, 'TwentyFourSeven', 'rope', 100);

-- --------------------------------------------------------

--
-- Struktura tabulky `skill`
--

CREATE TABLE `skill` (
  `identifier` varchar(255) NOT NULL,
  `gym` varchar(255) NOT NULL,
  `gymstatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `skill`
--

INSERT INTO `skill` (`identifier`, `gym`, `gymstatus`) VALUES
('0d7260980c0de3c2b03d14a09918c880cf07cb58', '-25', '1'),
('4f4977682d51ac0596cb703418fba81f07cde8ea', '-34', '1'),
('char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '-31', '1'),
('char1:26cc2c59000e845a8478fe0ff98107824d9522a3', '-24', '1'),
('char1:398cc59fa4edec59248bdec0038524a9c005525a', '-29', '1'),
('char1:399b392f36dff554cbb3a864e32c909637e83b17', '-29', '1'),
('char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', '-29', '1'),
('char1:4f4977682d51ac0596cb703418fba81f07cde8ea', '-29', '1'),
('char1:81e216893a417beabdddc65cc1795d4c89c22d3f', '-29', '1'),
('char1:90d23e573ef6c08489c5023675b47b9914851425', '-14', '1'),
('char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', '-19', '1'),
('char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', '-34', '1'),
('char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', '-29', '1'),
('char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', '18', '1');

-- --------------------------------------------------------

--
-- Struktura tabulky `society_moneywash`
--

CREATE TABLE `society_moneywash` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `sprays`
--

CREATE TABLE `sprays` (
  `id` int(11) NOT NULL,
  `x` float(8,4) NOT NULL,
  `y` float(8,4) NOT NULL,
  `z` float(8,4) NOT NULL,
  `rx` float(8,4) NOT NULL,
  `ry` float(8,4) NOT NULL,
  `rz` float(8,4) NOT NULL,
  `scale` float(8,4) NOT NULL,
  `text` varchar(32) NOT NULL,
  `font` varchar(32) NOT NULL,
  `color` int(3) NOT NULL,
  `interior` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabulky `twitter_accounts`
--

CREATE TABLE `twitter_accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(64) COLLATE utf8mb4_bin NOT NULL DEFAULT '0',
  `avatar_url` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Vypisuji data pro tabulku `twitter_accounts`
--

INSERT INTO `twitter_accounts` (`id`, `username`, `password`, `avatar_url`) VALUES
(38, 'negr', '123456', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(39, 'grgu', '123456', 'https://image.flaticon.com/icons/png/512/149/149071.png'),
(40, 'kastrovatkokot', 'heslo123', 'https://image.flaticon.com/icons/png/512/149/149071.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `twitter_likes`
--

CREATE TABLE `twitter_likes` (
  `id` int(11) NOT NULL,
  `authorId` int(11) DEFAULT NULL,
  `tweetId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `twitter_tweets`
--

CREATE TABLE `twitter_tweets` (
  `id` int(11) NOT NULL,
  `authorId` int(11) NOT NULL,
  `realUser` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `twitter_tweets`
--

INSERT INTO `twitter_tweets` (`id`, `authorId`, `realUser`, `message`, `image`, `time`, `likes`) VALUES
(10703, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'fthfg', '', '2021-08-18 22:51:33', 0),
(10704, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', 'fhfg', '', '2021-08-18 22:51:47', 0),
(10705, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '@grgu', NULL, '2021-08-18 22:52:17', 0),
(10706, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '@grgu fz', NULL, '2021-08-18 22:59:49', 0),
(10707, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '@grgu jgzjgh', NULL, '2021-08-18 22:59:53', 0),
(10708, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '', '', '2021-08-18 23:38:27', 0),
(10709, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '', 'https://media.discordapp.net/attachments/804425512596275220/877699315374649344/screenshot.jpg', '2021-08-18 23:43:49', 0),
(10710, 39, '0d7260980c0de3c2b03d14a09918c880cf07cb58', '', 'https://media.discordapp.net/attachments/877699791440715817/877706173489500260/screenshot.jpg', '2021-08-19 00:11:02', 0),
(10711, 40, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '', 'https://media.discordapp.net/attachments/879729633908637746/880161506220712006/screenshot.jpg', '2021-08-25 18:47:37', 0),
(10712, 40, 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', '', 'https://media.discordapp.net/attachments/879729633908637746/880880408256979004/screenshot.jpg', '2021-08-27 18:24:19', 0);

-- --------------------------------------------------------

--
-- Struktura tabulky `users`
--

CREATE TABLE `users` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounts` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `inventory` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '{"x":-240.68,"y":-909.6,"z":32.31,"heading":206.25}',
  `is_dead` int(11) DEFAULT 0,
  `dob` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_male` int(11) DEFAULT 1,
  `accessories` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateofbirth` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skin` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondjob` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unemployed',
  `secondjob_grade` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tattoos` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` bit(1) NOT NULL DEFAULT b'0',
  `last_motel` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_motel_room` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `users`
--

INSERT INTO `users` (`identifier`, `name`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `is_dead`, `dob`, `is_male`, `accessories`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `last_property`, `skin`, `status`, `secondjob`, `secondjob_grade`, `tattoos`, `disabled`, `last_motel`, `last_motel_room`) VALUES
('07d3159b66c8a6b8587510e9e95a6d12dc647279', NULL, '{\"money\":0,\"bank\":55400,\"black_money\":0}', 'user', '[{\"count\":1,\"metadata\":{\"serial\":\"385529RGQ476565\",\"registered\":\"Eduardo Sanchez\",\"components\":[],\"ammo\":0,\"durability\":100.0},\"slot\":1,\"name\":\"WEAPON_COMBATPISTOL\"},{\"count\":1,\"metadata\":{\"type\":\"1\"},\"slot\":9,\"name\":\"panties\"}]', 'unemployed', 0, NULL, '{\"heading\":219.9,\"z\":30.6,\"y\":-1407.3,\"x\":239.9}', 0, NULL, 1, NULL, 'Eduardo', 'Sanchez', '05/12/1985', 'm', 78, NULL, NULL, '{\"arms\":0,\"nose_2\":0,\"nose_4\":0,\"makeup_4\":0,\"makeup_1\":0,\"bags_2\":0,\"face_md_weight\":50,\"moles_1\":0,\"cheeks_1\":0,\"chest_3\":0,\"lipstick_1\":0,\"bodyb_3\":-1,\"blemishes_2\":0,\"bproof_1\":0,\"chest_1\":0,\"lipstick_3\":0,\"chin_3\":0,\"eyebrows_3\":0,\"arms_2\":0,\"nose_5\":0,\"beard_1\":0,\"torso_1\":0,\"bodyb_2\":0,\"tshirt_1\":0,\"ears_1\":-1,\"chain_2\":0,\"hair_color_1\":0,\"nose_6\":0,\"lipstick_2\":0,\"eyebrows_4\":0,\"neck_thickness\":0,\"decals_2\":0,\"jaw_2\":0,\"beard_2\":0,\"bproof_2\":0,\"beard_3\":0,\"chain_1\":0,\"complexion_2\":0,\"eye_color\":0,\"shoes_1\":0,\"chin_4\":0,\"dad\":0,\"chest_2\":0,\"sun_1\":0,\"age_1\":0,\"decals_1\":0,\"shoes_2\":0,\"watches_1\":-1,\"cheeks_2\":0,\"bracelets_2\":0,\"cheeks_3\":0,\"eye_squint\":0,\"chin_2\":0,\"age_2\":0,\"nose_3\":0,\"helmet_1\":-1,\"bracelets_1\":-1,\"ears_2\":0,\"bodyb_4\":0,\"tshirt_2\":0,\"blemishes_1\":0,\"mom\":21,\"eyebrows_1\":0,\"hair_2\":0,\"helmet_2\":0,\"mask_1\":0,\"jaw_1\":0,\"torso_2\":0,\"blush_3\":0,\"hair_1\":0,\"sun_2\":0,\"bags_1\":0,\"makeup_2\":0,\"blush_1\":0,\"complexion_1\":0,\"hair_color_2\":0,\"mask_2\":0,\"makeup_3\":0,\"eyebrows_6\":0,\"blush_2\":0,\"glasses_2\":0,\"beard_4\":0,\"chin_1\":0,\"eyebrows_5\":0,\"lipstick_4\":0,\"skin_md_weight\":50,\"watches_2\":0,\"glasses_1\":0,\"pants_1\":0,\"eyebrows_2\":0,\"nose_1\":0,\"sex\":0,\"lip_thickness\":0,\"moles_2\":0,\"bodyb_1\":-1,\"pants_2\":0}', '[{\"percent\":45.51,\"name\":\"hunger\",\"val\":455100},{\"percent\":46.6325,\"name\":\"thirst\",\"val\":466325},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('0d7260980c0de3c2b03d14a09918c880cf07cb58', NULL, '{\"black_money\":0,\"money\":0,\"bank\":5400}', 'admin', '[]', 'unemployed', 0, NULL, '{\"y\":-959.7,\"z\":31.2,\"heading\":197.3,\"x\":-266.7}', 0, NULL, 1, NULL, 'Dfhdghdf', 'Gfhdfhhdf', '11/11/1925', 'm', 48, '382-3570', NULL, '{\"nose_4\":0,\"moles_1\":0,\"blush_3\":0,\"torso_2\":0,\"helmet_2\":0,\"blush_2\":0,\"jaw_1\":0,\"chest_2\":0,\"bags_1\":0,\"bodyb_1\":-1,\"makeup_2\":0,\"nose_3\":0,\"makeup_3\":0,\"eyebrows_4\":0,\"eyebrows_1\":0,\"sun_1\":0,\"glasses_1\":0,\"shoes_2\":0,\"lip_thickness\":0,\"shoes_1\":0,\"chin_2\":0,\"lipstick_2\":0,\"sun_2\":0,\"nose_2\":0,\"mask_1\":0,\"beard_1\":0,\"bproof_1\":0,\"beard_2\":0,\"arms\":0,\"bproof_2\":0,\"age_1\":0,\"mask_2\":0,\"hair_1\":0,\"chain_1\":0,\"eyebrows_6\":0,\"glasses_2\":0,\"blush_1\":0,\"skin_md_weight\":50,\"bodyb_3\":-1,\"chest_1\":0,\"eye_color\":0,\"makeup_4\":0,\"torso_1\":0,\"nose_5\":0,\"nose_6\":0,\"age_2\":0,\"chin_3\":0,\"eyebrows_5\":0,\"tshirt_2\":0,\"blemishes_1\":0,\"hair_2\":0,\"lipstick_3\":0,\"helmet_1\":-1,\"hair_color_2\":0,\"decals_1\":0,\"jaw_2\":0,\"complexion_1\":0,\"sex\":0,\"decals_2\":0,\"tshirt_1\":0,\"makeup_1\":0,\"bags_2\":0,\"bodyb_2\":0,\"ears_2\":0,\"chain_2\":0,\"face_md_weight\":50,\"lipstick_4\":0,\"hair_color_1\":0,\"ears_1\":-1,\"pants_1\":0,\"cheeks_1\":0,\"chin_4\":0,\"moles_2\":0,\"chin_1\":0,\"cheeks_2\":0,\"nose_1\":0,\"lipstick_1\":0,\"bracelets_1\":-1,\"watches_1\":-1,\"eyebrows_3\":0,\"beard_3\":0,\"watches_2\":0,\"neck_thickness\":0,\"blemishes_2\":0,\"pants_2\":0,\"beard_4\":0,\"eyebrows_2\":0,\"complexion_2\":0,\"bracelets_2\":0,\"chest_3\":0,\"eye_squint\":0,\"dad\":0,\"arms_2\":0,\"bodyb_4\":0,\"cheeks_3\":0,\"mom\":21}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('391609334412e181c69b22e9ecf5a590ab0e8b14', NULL, '{\"bank\":53400,\"black_money\":0,\"money\":0}', 'admin', '[]', 'unemployed', 0, NULL, '{\"x\":100.5,\"heading\":231.6,\"z\":20.7,\"y\":-1935.4}', 0, NULL, 1, NULL, 'Misak', 'Kokot', '08/15/2000', 'm', 70, NULL, NULL, '{\"lipstick_1\":0,\"hair_1\":0,\"watches_2\":0,\"jaw_1\":0,\"eyebrows_6\":0,\"makeup_1\":0,\"lipstick_4\":0,\"blush_3\":0,\"blush_1\":0,\"shoes_2\":0,\"bracelets_1\":-1,\"chin_2\":0,\"arms\":0,\"bproof_2\":0,\"chest_3\":0,\"pants_2\":0,\"beard_3\":0,\"helmet_2\":0,\"mom\":21,\"bodyb_4\":0,\"chain_1\":0,\"complexion_1\":0,\"glasses_1\":0,\"decals_2\":0,\"hair_2\":0,\"lipstick_2\":0,\"eyebrows_2\":0,\"bags_2\":0,\"cheeks_3\":0,\"age_2\":0,\"complexion_2\":0,\"eyebrows_3\":0,\"eyebrows_4\":0,\"blemishes_2\":0,\"nose_3\":1,\"age_1\":0,\"beard_2\":0,\"lip_thickness\":0,\"sex\":0,\"glasses_2\":0,\"sun_1\":0,\"blemishes_1\":0,\"chin_1\":0,\"moles_2\":0,\"jaw_2\":0,\"nose_5\":0,\"watches_1\":-1,\"chain_2\":0,\"bags_1\":0,\"nose_1\":1,\"eyebrows_1\":0,\"hair_color_1\":0,\"nose_4\":0,\"chest_1\":0,\"beard_4\":0,\"bproof_1\":0,\"chin_3\":0,\"hair_color_2\":0,\"mask_1\":0,\"chin_4\":0,\"eye_color\":0,\"torso_2\":0,\"decals_1\":0,\"blush_2\":0,\"sun_2\":0,\"helmet_1\":-1,\"beard_1\":0,\"lipstick_3\":0,\"torso_1\":0,\"makeup_3\":0,\"ears_1\":-1,\"moles_1\":0,\"cheeks_2\":0,\"nose_2\":3,\"tshirt_2\":0,\"face_md_weight\":50,\"bracelets_2\":0,\"bodyb_3\":-1,\"ears_2\":0,\"cheeks_1\":0,\"shoes_1\":0,\"mask_2\":0,\"makeup_4\":0,\"bodyb_2\":0,\"dad\":0,\"neck_thickness\":0,\"chest_2\":0,\"bodyb_1\":-1,\"skin_md_weight\":56,\"arms_2\":0,\"tshirt_1\":0,\"eye_squint\":0,\"nose_6\":0,\"eyebrows_5\":0,\"pants_1\":0,\"makeup_2\":0}', '[{\"percent\":41.53,\"val\":415300,\"name\":\"hunger\"},{\"percent\":43.6475,\"val\":436475,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('4f4977682d51ac0596cb703418fba81f07cde8ea', NULL, '{\"bank\":51697,\"black_money\":0,\"money\":0}', 'admin', '[{\"name\":\"ammo-9\",\"count\":10,\"slot\":1},{\"name\":\"bulletproof\",\"count\":2,\"slot\":2},{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"durability\":100},\"count\":1,\"slot\":3},{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"durability\":100},\"count\":1,\"slot\":4},{\"name\":\"WEAPON_STUNGUN\",\"metadata\":{\"durability\":100},\"count\":1,\"slot\":5},{\"name\":\"burger\",\"count\":2,\"slot\":6}]', 'police', 11, NULL, '{\"heading\":90.1,\"z\":31.8,\"y\":-998.3,\"x\":457.0}', 0, NULL, 1, NULL, 'Trevis', 'Tousty', '12/12/1987', 'm', 73, '773-1240', NULL, '{\"moles_1\":0,\"skin_md_weight\":50,\"decals_1\":0,\"mask_1\":0,\"helmet_1\":-1,\"lip_thickness\":0,\"watches_1\":-1,\"beard_2\":0,\"sex\":0,\"blush_1\":0,\"age_2\":0,\"lipstick_3\":0,\"glasses_1\":0,\"complexion_1\":0,\"blush_3\":0,\"beard_1\":0,\"chin_1\":0,\"sun_1\":0,\"cheeks_3\":0,\"chin_3\":0,\"glasses_2\":0,\"makeup_1\":0,\"torso_2\":0,\"chain_2\":0,\"arms\":0,\"bags_2\":0,\"hair_2\":0,\"eyebrows_4\":0,\"jaw_1\":0,\"eyebrows_5\":0,\"pants_2\":0,\"pants_1\":0,\"helmet_2\":0,\"age_1\":0,\"eyebrows_3\":0,\"cheeks_2\":0,\"makeup_4\":0,\"nose_4\":0,\"bodyb_3\":-1,\"chest_3\":0,\"blemishes_1\":0,\"eyebrows_2\":0,\"mom\":21,\"nose_5\":0,\"torso_1\":0,\"arms_2\":0,\"jaw_2\":0,\"eye_color\":0,\"eye_squint\":0,\"hair_1\":0,\"tshirt_1\":0,\"neck_thickness\":0,\"ears_1\":-1,\"eyebrows_1\":0,\"chest_1\":0,\"chin_2\":0,\"chin_4\":0,\"nose_6\":0,\"bracelets_1\":-1,\"sun_2\":0,\"face_md_weight\":50,\"lipstick_2\":0,\"chain_1\":0,\"chest_2\":0,\"bproof_1\":0,\"bracelets_2\":0,\"hair_color_1\":0,\"lipstick_1\":0,\"ears_2\":0,\"beard_3\":0,\"blemishes_2\":0,\"makeup_3\":0,\"makeup_2\":0,\"bodyb_2\":0,\"tshirt_2\":0,\"watches_2\":0,\"decals_2\":0,\"bags_1\":0,\"complexion_2\":0,\"mask_2\":0,\"bodyb_1\":-1,\"bproof_2\":0,\"beard_4\":0,\"nose_1\":0,\"nose_3\":0,\"eyebrows_6\":0,\"moles_2\":0,\"bodyb_4\":0,\"shoes_2\":0,\"hair_color_2\":0,\"cheeks_1\":0,\"lipstick_4\":0,\"dad\":0,\"nose_2\":0,\"shoes_1\":0,\"blush_2\":0}', '[{\"percent\":94.39,\"name\":\"hunger\",\"val\":943900},{\"percent\":58.80999999999999,\"name\":\"thirst\",\"val\":588100},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('66d5f066c3339e8556c857a532d7bc92ccb14262', NULL, '{\"black_money\":0,\"bank\":50000,\"money\":0}', 'user', '[]', 'unemployed', 0, NULL, '{\"heading\":205.8,\"x\":-269.4,\"y\":-955.3,\"z\":31.2}', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[{\"percent\":99.7,\"name\":\"hunger\",\"val\":997000},{\"percent\":99.775,\"name\":\"thirst\",\"val\":997750},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('90d23e573ef6c08489c5023675b47b9914851425', NULL, '{\"bank\":51600,\"money\":0,\"black_money\":0}', 'user', '[{\"metadata\":{\"serial\":\"366268LUN823221\",\"registered\":\"Si Kokot\",\"components\":[],\"ammo\":12,\"durability\":82.8700000000001},\"slot\":1,\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\"},{\"metadata\":{\"type\":\"weapon\"},\"slot\":2,\"count\":566,\"name\":\"ammo-9\"}]', 'unemployed', 0, NULL, '{\"z\":30.5,\"heading\":82.2,\"x\":218.6,\"y\":-1382.6}', 0, NULL, 1, NULL, 'Si', 'Kokot', '12/12/1996', 'm', 96, NULL, NULL, '{\"skin_md_weight\":50,\"bodyb_1\":-1,\"beard_4\":0,\"bproof_1\":0,\"shoes_1\":0,\"age_1\":0,\"cheeks_2\":0,\"sun_2\":0,\"moles_2\":0,\"chin_4\":0,\"lipstick_4\":0,\"pants_1\":0,\"torso_2\":0,\"eye_color\":0,\"bodyb_4\":0,\"bags_2\":0,\"hair_color_2\":0,\"decals_1\":0,\"glasses_2\":0,\"tshirt_1\":0,\"lip_thickness\":0,\"eyebrows_1\":0,\"chin_1\":0,\"nose_5\":0,\"nose_2\":0,\"eyebrows_6\":0,\"watches_2\":0,\"mask_1\":0,\"age_2\":0,\"bproof_2\":0,\"bracelets_1\":-1,\"nose_3\":0,\"jaw_2\":0,\"mask_2\":0,\"lipstick_1\":0,\"arms_2\":0,\"hair_color_1\":0,\"nose_1\":0,\"chin_2\":0,\"blemishes_2\":0,\"eyebrows_3\":0,\"glasses_1\":0,\"helmet_2\":0,\"tshirt_2\":0,\"nose_4\":0,\"moles_1\":0,\"beard_1\":0,\"mom\":21,\"bodyb_3\":-1,\"bodyb_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"chest_2\":0,\"makeup_3\":0,\"nose_6\":0,\"blush_1\":0,\"torso_1\":0,\"chest_3\":0,\"lipstick_3\":0,\"complexion_2\":0,\"bracelets_2\":0,\"watches_1\":-1,\"decals_2\":0,\"hair_2\":4,\"helmet_1\":-1,\"neck_thickness\":0,\"cheeks_3\":0,\"ears_2\":0,\"pants_2\":0,\"arms\":0,\"blush_3\":0,\"lipstick_2\":0,\"blush_2\":0,\"bags_1\":0,\"chain_2\":0,\"eyebrows_4\":0,\"eye_squint\":0,\"chest_1\":0,\"chin_3\":0,\"makeup_4\":0,\"beard_2\":0,\"ears_1\":-1,\"complexion_1\":0,\"face_md_weight\":50,\"eyebrows_5\":0,\"cheeks_1\":0,\"blemishes_1\":0,\"makeup_1\":0,\"dad\":0,\"sex\":1,\"chain_1\":0,\"shoes_2\":0,\"sun_1\":0,\"jaw_1\":0,\"hair_1\":3,\"beard_3\":0}', '[{\"percent\":30.94,\"name\":\"hunger\",\"val\":309400},{\"percent\":35.705,\"name\":\"thirst\",\"val\":357050},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', NULL, '{\"bank\":1463712,\"money\":98950,\"black_money\":0}', 'admin', '[{\"slot\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"metadata\":{\"registered\":\"Franta Jebly\",\"ammo\":12,\"durability\":95.93000000000002,\"components\":[],\"serial\":\"385529RGQ476565\"},\"count\":1},{\"slot\":2,\"name\":\"money\",\"count\":98950},{\"slot\":3,\"name\":\"booleanuodate\",\"metadata\":{\"type\":\"1\"},\"count\":1},{\"slot\":4,\"name\":\"ammo-9\",\"metadata\":{\"type\":\"1\"},\"count\":32},{\"slot\":15,\"name\":\"ammo-rifle\",\"count\":1354}]', 'police', 11, NULL, '{\"x\":153.7,\"heading\":245.4,\"y\":-830.9,\"z\":31.0}', 0, NULL, 1, NULL, 'Franta', 'Jebly', '12/05/1987', 'm', 90, '258-7963', NULL, '{\"chin_3\":0,\"bproof_1\":0,\"bags_2\":0,\"makeup_1\":0,\"chest_3\":0,\"mask_1\":202,\"lipstick_4\":0,\"shoes_2\":0,\"glasses_2\":0,\"torso_1\":0,\"model\":1885233650,\"shoes_1\":0,\"eyebrows_1\":0,\"nose_2\":0,\"chain_1\":0,\"torso_2\":0,\"arms\":0,\"eyebrows_4\":0,\"watches_2\":0,\"beard_2\":0,\"decals_1\":0,\"cheeks_3\":0,\"hair_color_2\":0,\"bproof_2\":0,\"complexion_2\":0,\"beard_3\":0,\"makeup_2\":0,\"jaw_2\":0,\"tshirt_1\":10,\"bodyb_1\":-1,\"pants_1\":0,\"bags_1\":0,\"chin_4\":0,\"ears_2\":0,\"blemishes_2\":0,\"skin_md_weight\":50,\"chest_2\":0,\"bodyb_4\":0,\"blemishes_1\":0,\"drawtextures\":[[\"face\",0],[\"masks\",0],[\"hair\",0],[\"torsos\",0],[\"legs\",0],[\"bags\",0],[\"shoes\",0],[\"neck\",0],[\"undershirts\",0],[\"vest\",0],[\"decals\",0],[\"jackets\",0]],\"nose_3\":0,\"mom\":21,\"nose_6\":0,\"eyebrows_3\":0,\"blush_3\":0,\"age_1\":0,\"eye_squint\":0,\"dad\":0,\"hair_color_1\":0,\"face_md_weight\":50,\"makeup_4\":0,\"arms_2\":0,\"ears_1\":-1,\"cheeks_1\":0,\"bodyb_2\":0,\"eyebrows_6\":0,\"beard_1\":0,\"headStructure\":[0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],\"blush_1\":0,\"nose_1\":0,\"lipstick_3\":0,\"nose_4\":0,\"chest_1\":0,\"eyebrows_2\":0,\"sun_2\":0,\"complexion_1\":0,\"hairColor\":[0,0],\"mask_2\":0,\"eyebrows_5\":0,\"moles_1\":0,\"headBlend\":{\"skinSecond\":0,\"skinMix\":0.5,\"shapeMix\":0.5,\"skinFirst\":21,\"hasParent\":false,\"shapeSecond\":0,\"thirdMix\":0.0,\"shapeThird\":0,\"skinThird\":0,\"shapeFirst\":21},\"sun_1\":0,\"beard_4\":0,\"glasses_1\":0,\"headOverlay\":[{\"colourType\":0,\"name\":\"Blemishes\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":1,\"name\":\"FacialHair\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":1,\"name\":\"Eyebrows\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":0,\"name\":\"Ageing\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":2,\"name\":\"Makeup\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":2,\"name\":\"Blush\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":0,\"name\":\"Complexion\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":0,\"name\":\"SunDamage\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":1,\"name\":\"Lipstick\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":0,\"name\":\"MolesFreckles\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":1,\"name\":\"ChestHair\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":0,\"name\":\"BodyBlemishes\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255},{\"colourType\":0,\"name\":\"AddBodyBlemishes\",\"overlayOpacity\":0.0,\"firstColour\":0,\"secondColour\":0,\"overlayValue\":255}],\"helmet_1\":-1,\"lipstick_1\":0,\"decals_2\":0,\"blush_2\":0,\"watches_1\":-1,\"jaw_1\":0,\"bracelets_2\":0,\"nose_5\":0,\"tshirt_2\":0,\"chin_2\":0,\"pants_2\":0,\"neck_thickness\":0,\"helmet_2\":0,\"proptextures\":[[\"hats\",-1],[\"glasses\",0],[\"earrings\",-1],[\"mouth\",-1],[\"lhand\",-1],[\"rhand\",-1],[\"watches\",-1],[\"braclets\",-1]],\"hair_1\":0,\"eye_color\":0,\"makeup_3\":0,\"chain_2\":0,\"bracelets_1\":-1,\"hair_2\":0,\"cheeks_2\":0,\"props\":{\"3\":[\"mouth\",-1],\"4\":[\"lhand\",-1],\"1\":[\"glasses\",0],\"2\":[\"earrings\",-1],\"7\":[\"braclets\",-1],\"0\":[\"hats\",-1],\"5\":[\"rhand\",-1],\"6\":[\"watches\",-1]},\"moles_2\":0,\"age_2\":0,\"bodyb_3\":-1,\"chin_1\":0,\"lipstick_2\":0,\"lip_thickness\":0,\"drawables\":{\"9\":[\"vest\",0],\"7\":[\"neck\",0],\"8\":[\"undershirts\",0],\"11\":[\"jackets\",0],\"6\":[\"shoes\",0],\"3\":[\"torsos\",0],\"4\":[\"legs\",0],\"1\":[\"masks\",0],\"2\":[\"hair\",0],\"0\":[\"face\",0],\"10\":[\"decals\",0],\"5\":[\"bags\",0]},\"sex\":0}', '[{\"percent\":56.91,\"val\":569100,\"name\":\"hunger\"},{\"percent\":67.6825,\"val\":676825,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 'unemployed', '0', '[{\"Count\":1,\"nameHash\":\"MP_Bea_M_Head_000\",\"collection\":\"mpbeach_overlays\"}]', b'0', NULL, NULL),
('char1:0d7260980c0de3c2b03d14a09918c880cf07cb58', NULL, '{\"bank\":113255,\"black_money\":0,\"money\":6028}', 'admin', '[{\"metadata\":{\"durability\":100},\"slot\":1,\"name\":\"WEAPON_KNUCKLE\",\"count\":1},{\"metadata\":{\"durability\":100,\"registered\":\"Brm Brm\",\"serial\":\"324895TRU849060\",\"ammo\":0,\"components\":[]},\"slot\":2,\"name\":\"WEAPON_PISTOL\",\"count\":1},{\"metadata\":{\"durability\":103.75,\"registered\":\"Brm Brm\",\"serial\":\"347332CIR117790\",\"ammo\":54,\"components\":[]},\"slot\":3,\"name\":\"WEAPON_MG\",\"count\":1},{\"metadata\":{\"durability\":99.61,\"registered\":\"Brm Brm\",\"serial\":\"806472UOH386490\",\"ammo\":1,\"components\":[]},\"slot\":4,\"name\":\"WEAPON_MUSKET\",\"count\":1},{\"metadata\":{\"type\":\"weapon\"},\"slot\":5,\"name\":\"ammo-rifle\",\"count\":20633},{\"metadata\":{\"durability\":100},\"slot\":6,\"name\":\"WEAPON_MACHETE\",\"count\":1},{\"metadata\":{\"durability\":100},\"slot\":7,\"name\":\"WEAPON_FLASHLIGHT\",\"count\":1},{\"metadata\":{\"type\":\"item\"},\"slot\":8,\"name\":\"radio\",\"count\":1},{\"slot\":9,\"name\":\"money\",\"count\":6028},{\"metadata\":{\"type\":\"weapon\"},\"slot\":10,\"name\":\"ammo-rifle2\",\"count\":946},{\"metadata\":{\"durability\":100},\"slot\":11,\"name\":\"WEAPON_FLASHBANG\",\"count\":1},{\"metadata\":{\"type\":\"item\"},\"slot\":12,\"name\":\"gym_membership\",\"count\":1},{\"metadata\":{\"durability\":79.98000000000015,\"registered\":\"Brm Brm\",\"serial\":\"161810SGJ915911\",\"ammo\":0,\"components\":[]},\"slot\":13,\"name\":\"WEAPON_MARKSMANRIFLE\",\"count\":1},{\"metadata\":{\"durability\":96.10000000000014,\"registered\":\"Brm Brm\",\"serial\":\"800751VMW234828\",\"ammo\":9,\"components\":[]},\"slot\":14,\"name\":\"WEAPON_SNIPERRIFLE\",\"count\":1},{\"metadata\":{\"durability\":0,\"registered\":\"Brm Brm\",\"serial\":\"936450BAQ786029\",\"ammo\":0,\"components\":[\"clip_extended\",\"suppressor\"]},\"slot\":15,\"name\":\"WEAPON_MICROSMG\",\"count\":1},{\"metadata\":{\"durability\":0,\"registered\":\"Kristian Margeten\",\"serial\":\"154147MJD465952\",\"ammo\":0,\"components\":[\"suppressor\"]},\"slot\":16,\"name\":\"WEAPON_APPISTOL\",\"count\":1},{\"metadata\":{\"type\":\"weapon\"},\"slot\":17,\"name\":\"ammo-9\",\"count\":8556},{\"metadata\":{\"durability\":0,\"registered\":\"Brm Brm\",\"serial\":\"953255DTQ560638\",\"ammo\":0,\"components\":[]},\"slot\":18,\"name\":\"WEAPON_ADVANCEDRIFLE\",\"count\":1},{\"metadata\":{\"type\":\"weapon\"},\"slot\":19,\"name\":\"ammo-45\",\"count\":8659},{\"metadata\":{\"durability\":44.41999999999994,\"type\":\"weapon\"},\"slot\":20,\"name\":\"ammo-sniper\",\"count\":9785},{\"slot\":21,\"name\":\"ammo-9\",\"count\":18},{\"metadata\":{\"durability\":75.49000000000005,\"type\":\"item\"},\"slot\":22,\"name\":\"radio\",\"count\":1},{\"slot\":23,\"name\":\"ammo-45\",\"count\":30},{\"slot\":24,\"name\":\"ammo-rifle\",\"count\":30},{\"metadata\":{\"type\":\"weapon\"},\"slot\":25,\"name\":\"ammo-musket\",\"count\":867},{\"metadata\":{\"type\":\"weapon\"},\"slot\":26,\"name\":\"at_clip_extended_smg\",\"count\":9999},{\"metadata\":{\"type\":\"item\"},\"slot\":27,\"name\":\"mask58\",\"count\":1},{\"metadata\":{\"type\":\"item\"},\"slot\":28,\"name\":\"mask1\",\"count\":1}]', 'police', 2, NULL, '{\"z\":29.2,\"heading\":104.8,\"x\":-118.3,\"y\":-1366.1}', 0, NULL, 1, NULL, 'Brm', 'Brm', '12/12/1999', 'm', 48, '110-6897', NULL, '{\"hair_1\":0,\"makeup_2\":0,\"bproof_2\":0,\"nose_4\":0,\"nose_3\":0,\"chin_1\":0,\"ears_2\":0,\"bags_1\":0,\"eyebrows_6\":0,\"beard_3\":0,\"bracelets_1\":-1,\"chain_2\":0,\"complexion_2\":0,\"pants_2\":0,\"eyebrows_4\":0,\"chain_1\":0,\"lipstick_3\":0,\"chin_13\":0,\"lipstick_4\":0,\"lipstick_2\":0,\"bodyb_3\":-1,\"chin_4\":0,\"face_md_weight\":50,\"shoes_2\":0,\"decals_2\":0,\"ears_1\":-1,\"age_2\":0,\"tshirt_1\":0,\"bracelets_2\":0,\"sex\":0,\"makeup_3\":0,\"moles_2\":0,\"cheeks_2\":0,\"chin_3\":0,\"lipstick_1\":0,\"sun_2\":0,\"watches_1\":-1,\"watches_2\":0,\"dad\":0,\"nose_1\":0,\"bproof_1\":0,\"eyebrows_5\":0,\"cheeks_1\":0,\"complexion_1\":0,\"jaw_1\":0,\"blush_3\":0,\"mask_1\":1,\"arms_2\":0,\"decals_1\":0,\"beard_1\":0,\"beard_4\":0,\"blemishes_1\":0,\"chin_2\":0,\"skin_md_weight\":50,\"bodyb_4\":0,\"tshirt_2\":0,\"blush_1\":0,\"blemishes_2\":0,\"nose_5\":0,\"helmet_1\":-1,\"hair_color_1\":0,\"bodyb_1\":-1,\"lip_thickness\":0,\"sun_1\":0,\"eye_squint\":0,\"nose_6\":0,\"eyebrows_2\":0,\"bags_2\":0,\"torso_2\":0,\"mom\":21,\"mask_2\":0,\"hair_color_2\":0,\"eye_color\":0,\"glasses_2\":0,\"pants_1\":0,\"makeup_4\":0,\"cheeks_3\":0,\"nose_2\":0,\"jaw_2\":0,\"chest_1\":0,\"bodyb_2\":0,\"moles_1\":0,\"eyebrows_3\":0,\"eyebrows_1\":0,\"chest_3\":0,\"shoes_1\":0,\"blush_2\":0,\"age_1\":0,\"hair_2\":0,\"neck_thickness\":0,\"makeup_1\":0,\"glasses_1\":0,\"torso_1\":4,\"chest_2\":0,\"helmet_2\":0,\"beard_2\":0,\"arms\":0}', '[]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:26cc2c59000e845a8478fe0ff98107824d9522a3', NULL, '{\"money\":0,\"bank\":5200,\"black_money\":0}', 'user', '[]', 'unemployed', 0, NULL, '{\"y\":-879.1,\"x\":-182.5,\"heading\":154.4,\"z\":29.3}', 0, NULL, 1, NULL, 'Neviem', 'Neviem', '12/12/1999', 'm', 185, '504-7426', NULL, '{\"chain_2\":0,\"shoes_2\":0,\"bracelets_2\":0,\"eye_squint\":0,\"jaw_2\":0,\"eyebrows_5\":0,\"glasses_2\":0,\"decals_1\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"decals_2\":0,\"chest_2\":0,\"torso_1\":0,\"cheeks_2\":0,\"bproof_1\":0,\"age_2\":0,\"mask_2\":0,\"ears_2\":0,\"beard_3\":0,\"chin_4\":0,\"makeup_4\":0,\"chin_1\":0,\"eyebrows_3\":0,\"chain_1\":0,\"jaw_1\":0,\"lipstick_1\":0,\"blemishes_2\":0,\"chin_2\":0,\"blush_3\":0,\"makeup_3\":0,\"complexion_1\":0,\"cheeks_3\":0,\"bags_2\":0,\"beard_1\":0,\"mom\":21,\"moles_1\":0,\"lip_thickness\":0,\"nose_1\":0,\"skin_md_weight\":50,\"makeup_1\":0,\"arms\":0,\"watches_1\":-1,\"age_1\":0,\"blush_1\":0,\"ears_1\":-1,\"complexion_2\":0,\"glasses_1\":0,\"eyebrows_4\":0,\"bodyb_3\":-1,\"eyebrows_2\":0,\"nose_3\":0,\"bags_1\":0,\"beard_4\":0,\"helmet_2\":0,\"hair_color_1\":0,\"lipstick_4\":0,\"blemishes_1\":0,\"mask_1\":0,\"hair_1\":0,\"bracelets_1\":-1,\"makeup_2\":0,\"sun_1\":0,\"arms_2\":0,\"lipstick_2\":0,\"beard_2\":0,\"eyebrows_1\":0,\"moles_2\":0,\"chest_1\":0,\"bodyb_1\":-1,\"neck_thickness\":0,\"shoes_1\":0,\"pants_1\":0,\"blush_2\":0,\"sex\":0,\"watches_2\":0,\"eye_color\":0,\"chin_3\":0,\"sun_2\":0,\"nose_6\":0,\"pants_2\":0,\"chest_3\":0,\"helmet_1\":-1,\"nose_4\":0,\"bodyb_4\":0,\"hair_2\":0,\"bproof_2\":0,\"tshirt_1\":0,\"face_md_weight\":50,\"nose_2\":0,\"torso_2\":0,\"eyebrows_6\":0,\"dad\":0,\"hair_color_2\":0,\"bodyb_2\":0,\"chin_13\":0,\"cheeks_1\":0,\"nose_5\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:398cc59fa4edec59248bdec0038524a9c005525a', NULL, '{\"bank\":7400,\"black_money\":0,\"money\":0}', 'user', '[]', 'unemployed', 0, NULL, '{\"y\":-943.8,\"x\":-29.2,\"heading\":202.6,\"z\":33.7}', 1, NULL, 1, NULL, 'Ad', 'Ad', '01/01/1990', 'm', 200, '878-2645', NULL, '{\"eyebrows_5\":0,\"moles_2\":0,\"neck_thickness\":0,\"eyebrows_4\":0,\"tshirt_2\":0,\"sun_2\":0,\"makeup_3\":0,\"chain_1\":0,\"watches_2\":0,\"cheeks_1\":0,\"chain_2\":0,\"beard_2\":0,\"beard_4\":0,\"arms\":0,\"nose_5\":0,\"torso_1\":0,\"helmet_2\":0,\"nose_1\":0,\"mask_1\":0,\"ears_2\":0,\"blush_2\":0,\"tshirt_1\":0,\"ears_1\":-1,\"makeup_1\":0,\"nose_4\":0,\"moles_1\":0,\"chin_2\":0,\"nose_6\":0,\"bags_1\":0,\"chin_3\":0,\"chin_1\":0,\"shoes_2\":0,\"hair_color_1\":0,\"cheeks_2\":0,\"torso_2\":0,\"mom\":21,\"lip_thickness\":0,\"complexion_1\":0,\"chin_13\":0,\"glasses_1\":0,\"lipstick_3\":0,\"arms_2\":0,\"bproof_2\":0,\"makeup_4\":0,\"blemishes_2\":0,\"blush_1\":0,\"blemishes_1\":0,\"cheeks_3\":0,\"beard_1\":0,\"hair_1\":0,\"sex\":1,\"jaw_2\":0,\"eye_squint\":0,\"bodyb_1\":-1,\"decals_2\":0,\"decals_1\":0,\"bodyb_4\":0,\"bodyb_2\":0,\"bodyb_3\":-1,\"nose_3\":0,\"lipstick_2\":0,\"eyebrows_6\":0,\"chest_3\":0,\"nose_2\":0,\"eye_color\":0,\"bags_2\":0,\"dad\":0,\"skin_md_weight\":50,\"blush_3\":0,\"lipstick_1\":0,\"beard_3\":0,\"bproof_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"jaw_1\":0,\"shoes_1\":0,\"eyebrows_1\":0,\"makeup_2\":0,\"mask_2\":0,\"face_md_weight\":50,\"eyebrows_3\":0,\"helmet_1\":-1,\"bracelets_2\":0,\"chin_4\":0,\"watches_1\":-1,\"hair_2\":0,\"age_2\":0,\"pants_1\":0,\"chest_2\":0,\"sun_1\":0,\"eyebrows_2\":0,\"chest_1\":0,\"age_1\":0,\"pants_2\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"hair_color_2\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:399b392f36dff554cbb3a864e32c909637e83b17', NULL, '{\"black_money\":0,\"bank\":5012,\"money\":0}', 'user', '[]', 'offambulance', 0, NULL, '{\"x\":-222.2,\"heading\":155.9,\"z\":29.9,\"y\":-880.1}', 0, NULL, 1, NULL, 'Ahoj', 'Kkte', '09/18/1998', 'm', 187, '750-0903', NULL, '{\"eyebrows_5\":0,\"moles_2\":0,\"neck_thickness\":0,\"blush_1\":0,\"eyebrows_6\":0,\"sun_2\":0,\"makeup_3\":0,\"chain_1\":0,\"jaw_2\":0,\"cheeks_1\":0,\"chain_2\":0,\"beard_2\":0,\"beard_4\":0,\"arms\":1,\"nose_5\":0,\"torso_1\":7,\"helmet_2\":0,\"nose_1\":3,\"mask_1\":2,\"ears_2\":0,\"cheeks_3\":0,\"tshirt_1\":4,\"ears_1\":-1,\"makeup_1\":0,\"nose_4\":0,\"moles_1\":0,\"chin_2\":0,\"hair_2\":0,\"bags_1\":0,\"chin_3\":0,\"chin_1\":0,\"bproof_2\":0,\"lip_thickness\":0,\"eye_squint\":0,\"torso_2\":2,\"mom\":21,\"tshirt_2\":3,\"complexion_1\":0,\"chin_13\":0,\"eyebrows_4\":0,\"lipstick_3\":0,\"arms_2\":0,\"bodyb_3\":-1,\"makeup_4\":0,\"eyebrows_2\":0,\"hair_1\":0,\"blemishes_1\":0,\"lipstick_2\":0,\"beard_1\":0,\"bodyb_1\":-1,\"bracelets_2\":0,\"blush_2\":0,\"glasses_1\":0,\"beard_3\":0,\"decals_2\":0,\"decals_1\":0,\"shoes_2\":2,\"bodyb_2\":0,\"blemishes_2\":0,\"nose_3\":0,\"nose_2\":5,\"skin_md_weight\":54,\"chest_3\":0,\"eye_color\":0,\"pants_1\":4,\"bags_2\":0,\"dad\":3,\"mask_2\":0,\"blush_3\":0,\"lipstick_1\":0,\"hair_color_1\":2,\"bproof_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"jaw_1\":0,\"shoes_1\":0,\"eyebrows_1\":0,\"watches_2\":0,\"helmet_1\":-1,\"face_md_weight\":52,\"eyebrows_3\":0,\"sex\":0,\"cheeks_2\":0,\"chin_4\":0,\"watches_1\":-1,\"makeup_2\":0,\"age_2\":0,\"nose_6\":0,\"chest_2\":0,\"sun_1\":0,\"bodyb_4\":0,\"chest_1\":0,\"age_1\":0,\"pants_2\":1,\"complexion_2\":0,\"bracelets_1\":-1,\"hair_color_2\":4}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a', NULL, '{\"bank\":5800,\"money\":0,\"black_money\":0}', 'user', '[{\"name\":\"jewels\",\"count\":98,\"slot\":1}]', 'unemployed', 0, NULL, '{\"y\":-919.4,\"x\":-102.0,\"heading\":32.4,\"z\":29.4}', 0, NULL, 1, NULL, 'Pepa', 'Marko', '07/04/1989', 'm', 200, '294-6847', NULL, '{\"chin_3\":0,\"eyebrows_1\":0,\"eye_squint\":0,\"chest_3\":0,\"beard_3\":0,\"shoes_1\":0,\"glasses_1\":0,\"beard_1\":18,\"arms\":20,\"blemishes_1\":0,\"mask_2\":0,\"bproof_2\":0,\"helmet_2\":0,\"bodyb_3\":-1,\"ears_2\":0,\"decals_2\":0,\"lipstick_4\":0,\"lipstick_1\":0,\"age_1\":0,\"mask_1\":0,\"sun_1\":0,\"jaw_1\":0,\"nose_3\":0,\"bracelets_1\":-1,\"moles_2\":0,\"bodyb_1\":-1,\"bodyb_2\":0,\"chin_4\":0,\"shoes_2\":0,\"eye_color\":0,\"hair_1\":2,\"makeup_1\":0,\"decals_1\":0,\"blush_2\":0,\"tshirt_1\":3,\"cheeks_3\":0,\"nose_6\":0,\"pants_2\":0,\"jaw_2\":0,\"complexion_1\":0,\"sex\":0,\"makeup_3\":0,\"lipstick_3\":0,\"bproof_1\":0,\"eyebrows_2\":0,\"chin_13\":0,\"hair_color_1\":0,\"nose_1\":0,\"age_2\":0,\"bodyb_4\":0,\"complexion_2\":0,\"bracelets_2\":0,\"ears_1\":-1,\"watches_1\":-1,\"tshirt_2\":0,\"hair_color_2\":0,\"cheeks_2\":0,\"blush_3\":0,\"glasses_2\":0,\"neck_thickness\":0,\"torso_1\":4,\"arms_2\":0,\"dad\":0,\"blemishes_2\":0,\"beard_2\":10,\"eyebrows_6\":0,\"pants_1\":0,\"nose_2\":0,\"bags_2\":0,\"nose_5\":0,\"chin_2\":0,\"cheeks_1\":0,\"face_md_weight\":50,\"makeup_4\":0,\"bags_1\":0,\"makeup_2\":0,\"chest_1\":0,\"chain_2\":0,\"hair_2\":0,\"skin_md_weight\":50,\"sun_2\":0,\"eyebrows_5\":0,\"mom\":24,\"chin_1\":0,\"nose_4\":0,\"watches_2\":0,\"lipstick_2\":0,\"torso_2\":0,\"blush_1\":0,\"helmet_1\":-1,\"lip_thickness\":0,\"eyebrows_3\":0,\"moles_1\":0,\"beard_4\":0,\"chest_2\":0,\"eyebrows_4\":0,\"chain_1\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:4f4977682d51ac0596cb703418fba81f07cde8ea', NULL, '{\"bank\":8016,\"black_money\":0,\"money\":0}', 'admin', '[]', 'police', 10, NULL, '{\"y\":-1029.7,\"z\":28.8,\"heading\":168.8,\"x\":159.8}', 0, NULL, 1, NULL, 'Teasty', 'Teasty', '12/12/1987', 'm', 140, '134-7876', NULL, '{\"eyebrows_5\":0,\"moles_2\":0,\"neck_thickness\":0,\"eyebrows_4\":0,\"eyebrows_6\":0,\"sun_2\":0,\"makeup_3\":0,\"chain_1\":0,\"watches_2\":0,\"cheeks_1\":0,\"chain_2\":0,\"beard_2\":0,\"beard_4\":0,\"arms\":0,\"nose_5\":0,\"torso_1\":0,\"helmet_2\":0,\"nose_1\":0,\"mask_1\":0,\"ears_2\":0,\"blush_2\":0,\"tshirt_1\":0,\"ears_1\":-1,\"makeup_1\":0,\"nose_4\":0,\"moles_1\":0,\"chin_2\":0,\"nose_6\":0,\"bags_1\":0,\"chin_3\":0,\"chin_1\":0,\"hair_2\":0,\"eyebrows_2\":0,\"lip_thickness\":0,\"torso_2\":0,\"mom\":21,\"bodyb_1\":-1,\"complexion_1\":0,\"chin_13\":0,\"tshirt_2\":0,\"lipstick_3\":0,\"arms_2\":0,\"bodyb_3\":-1,\"makeup_4\":0,\"age_2\":0,\"mask_2\":0,\"beard_3\":0,\"shoes_2\":0,\"beard_1\":0,\"hair_1\":0,\"bracelets_2\":0,\"eyebrows_1\":0,\"eye_squint\":0,\"lipstick_2\":0,\"decals_2\":0,\"decals_1\":0,\"hair_color_1\":0,\"bodyb_2\":0,\"jaw_2\":0,\"nose_3\":0,\"helmet_1\":-1,\"chest_1\":0,\"sex\":0,\"eye_color\":0,\"nose_2\":0,\"bags_2\":0,\"dad\":0,\"pants_1\":0,\"blush_3\":0,\"lipstick_1\":0,\"cheeks_3\":0,\"bproof_1\":0,\"glasses_2\":0,\"lipstick_4\":0,\"skin_md_weight\":50,\"shoes_1\":0,\"chest_3\":0,\"blush_1\":0,\"bodyb_4\":0,\"face_md_weight\":50,\"eyebrows_3\":0,\"bproof_2\":0,\"makeup_2\":0,\"chin_4\":0,\"watches_1\":-1,\"blemishes_1\":0,\"blemishes_2\":0,\"glasses_1\":0,\"chest_2\":0,\"sun_1\":0,\"jaw_1\":0,\"cheeks_2\":0,\"age_1\":0,\"pants_2\":0,\"complexion_2\":0,\"bracelets_1\":-1,\"hair_color_2\":0}', '[{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 'police', '10', NULL, b'0', NULL, NULL),
('char1:81e216893a417beabdddc65cc1795d4c89c22d3f', NULL, '{\"bank\":5200,\"money\":0,\"black_money\":0}', 'user', '[]', 'unemployed', 0, NULL, '{\"y\":-881.5,\"x\":-151.2,\"heading\":24.2,\"z\":29.3}', 0, NULL, 1, NULL, 'Thomas', 'Johnson', '02/01/1999', 'm', 191, '779-7292', NULL, '{\"chin_3\":0,\"nose_5\":0,\"eye_squint\":0,\"chest_3\":0,\"beard_3\":0,\"shoes_1\":7,\"glasses_1\":0,\"beard_1\":0,\"arms\":0,\"blemishes_1\":0,\"mask_2\":0,\"helmet_1\":-1,\"helmet_2\":0,\"ears_1\":-1,\"makeup_2\":0,\"decals_2\":0,\"lipstick_4\":0,\"lipstick_1\":0,\"age_1\":0,\"mask_1\":0,\"sun_1\":0,\"jaw_1\":0,\"beard_2\":0,\"bracelets_1\":-1,\"moles_2\":0,\"bodyb_1\":-1,\"blush_2\":0,\"chin_4\":0,\"shoes_2\":0,\"eye_color\":0,\"chain_2\":0,\"bags_1\":0,\"mom\":22,\"hair_1\":10,\"tshirt_1\":15,\"lipstick_3\":0,\"nose_6\":0,\"decals_1\":0,\"jaw_2\":0,\"complexion_1\":0,\"sex\":0,\"nose_3\":0,\"bproof_2\":0,\"bproof_1\":0,\"eyebrows_2\":0,\"chin_13\":0,\"chain_1\":0,\"chin_1\":0,\"age_2\":0,\"nose_1\":0,\"complexion_2\":0,\"eyebrows_1\":0,\"makeup_3\":0,\"watches_1\":-1,\"tshirt_2\":0,\"hair_color_2\":0,\"cheeks_1\":0,\"pants_2\":0,\"glasses_2\":0,\"neck_thickness\":0,\"torso_1\":16,\"arms_2\":0,\"pants_1\":26,\"blemishes_2\":0,\"moles_1\":0,\"hair_color_1\":0,\"chest_1\":0,\"chin_2\":0,\"bags_2\":0,\"bodyb_2\":0,\"makeup_4\":0,\"bracelets_2\":0,\"ears_2\":0,\"cheeks_3\":0,\"bodyb_4\":0,\"nose_2\":0,\"lipstick_2\":0,\"bodyb_3\":-1,\"hair_2\":0,\"skin_md_weight\":35,\"sun_2\":0,\"eyebrows_5\":0,\"eyebrows_6\":0,\"dad\":1,\"nose_4\":0,\"watches_2\":0,\"makeup_1\":0,\"blush_3\":0,\"blush_1\":0,\"torso_2\":0,\"lip_thickness\":0,\"cheeks_2\":0,\"eyebrows_3\":0,\"beard_4\":0,\"chest_2\":0,\"eyebrows_4\":0,\"face_md_weight\":50}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:90d23e573ef6c08489c5023675b47b9914851425', NULL, '{\"black_money\":0,\"bank\":5400,\"money\":0}', 'user', '[{\"metadata\":{\"components\":[],\"ammo\":0,\"registered\":\"Brm Brm\",\"serial\":\"379851LED811109\",\"durability\":0},\"count\":1,\"name\":\"WEAPON_SMG\",\"slot\":1},{\"metadata\":{\"components\":[],\"ammo\":16,\"registered\":\"Kristian Margeten\",\"serial\":\"773535ZQP738616\",\"durability\":74.75000000000029},\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":2},{\"metadata\":{\"components\":[],\"ammo\":15,\"registered\":\"Brm Brm\",\"serial\":\"609270BFT846038\",\"durability\":89.68000000000018},\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":3},{\"metadata\":{\"components\":[],\"ammo\":18,\"registered\":\"Brm Brm\",\"serial\":\"428313JEL169956\",\"durability\":42.42999999999993},\"count\":1,\"name\":\"WEAPON_APPISTOL\",\"slot\":4},{\"metadata\":{\"components\":[],\"ammo\":9,\"registered\":\"Brm Brm\",\"serial\":\"463407CSV129799\",\"durability\":81.96000000000027},\"count\":1,\"name\":\"WEAPON_SNIPERRIFLE\",\"slot\":5},{\"metadata\":{\"type\":\"weapon\"},\"count\":9941,\"name\":\"ammo-sniper\",\"slot\":6},{\"metadata\":{\"type\":\"weapon\"},\"count\":9445,\"name\":\"ammo-9\",\"slot\":7}]', 'police', 2, NULL, '{\"y\":-1254.7,\"z\":1.7,\"heading\":1.0,\"x\":-1511.1}', 1, NULL, 1, NULL, 'dasdsa', 'asdasd', '02/12/1999', 'm', 179, '741-6194', NULL, '{\"jaw_1\":0,\"age_1\":0,\"makeup_1\":0,\"watches_1\":-1,\"eyebrows_1\":0,\"nose_6\":0,\"chest_3\":0,\"arms\":0,\"hair_1\":0,\"helmet_2\":0,\"nose_2\":0,\"blemishes_1\":0,\"eyebrows_5\":0,\"neck_thickness\":0,\"cheeks_2\":0,\"cheeks_1\":0,\"blemishes_2\":0,\"chain_1\":0,\"chin_3\":0,\"glasses_1\":0,\"bracelets_1\":-1,\"skin_md_weight\":50,\"nose_1\":0,\"makeup_4\":0,\"helmet_1\":-1,\"bodyb_2\":0,\"arms_2\":0,\"lipstick_3\":0,\"chin_13\":0,\"bags_2\":0,\"hair_color_1\":0,\"torso_1\":0,\"nose_5\":0,\"eyebrows_2\":0,\"mask_1\":0,\"moles_2\":0,\"ears_1\":-1,\"eye_squint\":0,\"bproof_2\":0,\"lipstick_2\":0,\"hair_color_2\":0,\"beard_2\":0,\"sex\":0,\"sun_2\":0,\"eyebrows_3\":0,\"sun_1\":0,\"face_md_weight\":50,\"mom\":21,\"jaw_2\":0,\"chin_4\":0,\"ears_2\":0,\"makeup_3\":0,\"lip_thickness\":0,\"bodyb_1\":-1,\"age_2\":0,\"dad\":0,\"torso_2\":0,\"mask_2\":0,\"makeup_2\":0,\"pants_2\":0,\"bodyb_3\":-1,\"hair_2\":0,\"chin_2\":0,\"eye_color\":0,\"tshirt_1\":0,\"blush_2\":0,\"nose_3\":0,\"beard_4\":0,\"bags_1\":0,\"bproof_1\":0,\"bodyb_4\":0,\"eyebrows_6\":0,\"shoes_1\":0,\"bracelets_2\":0,\"lipstick_4\":0,\"tshirt_2\":0,\"complexion_1\":0,\"chest_1\":0,\"blush_3\":0,\"chain_2\":0,\"decals_1\":0,\"watches_2\":0,\"moles_1\":0,\"eyebrows_4\":0,\"chest_2\":0,\"lipstick_1\":0,\"pants_1\":0,\"nose_4\":0,\"complexion_2\":0,\"decals_2\":0,\"beard_1\":0,\"shoes_2\":0,\"blush_1\":0,\"chin_1\":0,\"glasses_2\":0,\"cheeks_3\":0,\"beard_3\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:9517e6c915c922b300cb8db3dfdc64e71d9292d0', NULL, '{\"bank\":6600,\"black_money\":0,\"money\":0}', 'user', '[{\"count\":1,\"name\":\"gym_membership\",\"slot\":1}]', 'unemployed', 0, NULL, '{\"z\":30.8,\"heading\":92.7,\"x\":223.2,\"y\":-773.4}', 0, NULL, 1, NULL, 'Kristian', 'Margeten', '12/10/1999', 'm', 180, '372-3012', NULL, '{\"bodyb_4\":0,\"makeup_3\":0,\"lipstick_3\":0,\"blemishes_2\":0,\"mask_1\":0,\"moles_2\":0,\"nose_4\":0,\"cheeks_1\":0,\"bodyb_2\":0,\"tshirt_1\":15,\"helmet_2\":3,\"chin_3\":0,\"ears_2\":0,\"bags_1\":0,\"torso_2\":0,\"decals_2\":0,\"arms_2\":0,\"chest_1\":0,\"sun_2\":0,\"glasses_1\":3,\"shoes_1\":2,\"nose_6\":0,\"face_md_weight\":50,\"dad\":3,\"shoes_2\":0,\"bproof_2\":0,\"jaw_2\":0,\"sex\":0,\"skin_md_weight\":50,\"sun_1\":0,\"age_1\":0,\"bracelets_2\":0,\"chin_4\":0,\"lipstick_4\":0,\"bodyb_1\":-1,\"beard_3\":0,\"blush_3\":0,\"neck_thickness\":0,\"nose_5\":0,\"chain_2\":0,\"eyebrows_1\":0,\"complexion_2\":0,\"eyebrows_6\":0,\"lipstick_1\":0,\"chain_1\":0,\"chin_2\":0,\"bags_2\":0,\"eye_color\":0,\"bproof_1\":0,\"decals_1\":0,\"nose_3\":0,\"helmet_1\":7,\"mom\":21,\"watches_1\":-1,\"tshirt_2\":0,\"chin_1\":0,\"eyebrows_3\":0,\"nose_1\":0,\"ears_1\":-1,\"beard_2\":0,\"makeup_2\":0,\"hair_color_1\":0,\"chin_13\":0,\"hair_2\":4,\"complexion_1\":0,\"cheeks_2\":0,\"age_2\":0,\"moles_1\":0,\"beard_4\":0,\"eyebrows_5\":0,\"torso_1\":42,\"blemishes_1\":0,\"hair_color_2\":0,\"bracelets_1\":-1,\"hair_1\":19,\"pants_1\":7,\"lipstick_2\":0,\"chest_3\":0,\"chest_2\":0,\"bodyb_3\":-1,\"blush_2\":0,\"nose_2\":0,\"lip_thickness\":0,\"pants_2\":0,\"eyebrows_4\":0,\"blush_1\":0,\"arms\":11,\"makeup_1\":0,\"cheeks_3\":0,\"eyebrows_2\":0,\"jaw_1\":0,\"makeup_4\":0,\"glasses_2\":0,\"watches_2\":0,\"eye_squint\":0,\"mask_2\":0,\"beard_1\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', NULL, '{\"bank\":5600,\"black_money\":0,\"money\":9398}', 'admin', '[{\"slot\":1,\"name\":\"money\",\"count\":9398,\"metadata\":{\"type\":\"1\"}},{\"slot\":10,\"name\":\"lighter\",\"count\":1,\"metadata\":{\"type\":\"1\"}},{\"slot\":9,\"name\":\"spray\",\"count\":1,\"metadata\":{\"type\":\"1\"}}]', 'police', 5, NULL, '{\"y\":-991.0,\"z\":25.5,\"heading\":97.2,\"x\":444.6}', 0, NULL, 1, NULL, 'Franta', 'Jebly', '12/05/1987', 'm', 181, '981-8787', NULL, '{\"makeup_4\":0,\"eye_squint\":0,\"decals_1\":0,\"moles_1\":0,\"bracelets_2\":0,\"nose_1\":0,\"arms_2\":0,\"sex\":0,\"chain_2\":0,\"blush_3\":0,\"helmet_1\":-1,\"jaw_2\":0,\"nose_6\":0,\"skin_md_weight\":50,\"eyebrows_3\":0,\"blush_1\":0,\"neck_thickness\":0,\"cheeks_3\":0,\"eyebrows_6\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"eyebrows_1\":0,\"chin_3\":0,\"bodyb_2\":0,\"watches_1\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"chin_2\":0,\"complexion_2\":0,\"pants_1\":0,\"nose_5\":0,\"bodyb_3\":-1,\"moles_2\":0,\"nose_2\":0,\"helmet_2\":0,\"hair_color_2\":0,\"eyebrows_5\":0,\"lipstick_4\":0,\"beard_3\":0,\"age_2\":0,\"lipstick_3\":0,\"hair_color_1\":0,\"beard_1\":0,\"bags_2\":0,\"chin_4\":0,\"age_1\":0,\"glasses_1\":0,\"nose_3\":0,\"torso_1\":0,\"torso_2\":0,\"bproof_2\":0,\"tshirt_1\":0,\"beard_4\":0,\"watches_2\":0,\"sun_2\":0,\"shoes_2\":0,\"arms\":0,\"makeup_2\":0,\"tshirt_2\":0,\"shoes_1\":0,\"ears_1\":-1,\"chest_1\":0,\"chest_3\":0,\"bodyb_1\":-1,\"chain_1\":0,\"cheeks_2\":0,\"bags_1\":0,\"glasses_2\":0,\"blush_2\":0,\"beard_2\":0,\"pants_2\":0,\"mom\":21,\"lipstick_2\":0,\"ears_2\":0,\"sun_1\":0,\"chest_2\":0,\"cheeks_1\":0,\"lip_thickness\":0,\"complexion_1\":0,\"decals_2\":0,\"hair_2\":0,\"makeup_1\":0,\"eye_color\":0,\"mask_2\":0,\"dad\":0,\"chin_1\":0,\"jaw_1\":0,\"bracelets_1\":-1,\"blemishes_1\":0,\"hair_1\":0,\"chin_13\":0,\"nose_4\":0,\"bproof_1\":0,\"bodyb_4\":0,\"lipstick_1\":0,\"makeup_3\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('Char1cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e', NULL, '{\"black_money\":0,\"bank\":25496,\"money\":5000}', 'admin', '[{\"metadata\":{\"durability\":95.70999999999994,\"components\":[],\"registered\":\"Franta Jebly\",\"ammo\":0,\"serial\":\"385529RGQ476565\"},\"count\":1,\"slot\":1,\"name\":\"WEAPON_PISTOL\"},{\"metadata\":{\"type\":\"1\"},\"count\":1,\"slot\":2,\"name\":\"phone\"},{\"metadata\":{\"weight\":0,\"bag\":\"RGQ1628953400\"},\"count\":1,\"slot\":3,\"name\":\"paperbag\"},{\"metadata\":{\"type\":\"1\"},\"count\":1,\"slot\":4,\"name\":\"identification\"},{\"count\":5000,\"slot\":5,\"name\":\"money\"},{\"metadata\":{\"type\":\"1\"},\"count\":1,\"slot\":15,\"name\":\"garbage\"},{\"count\":1,\"slot\":9,\"name\":\"lockpick\"}]', 'mafia', 4, NULL, '{\"y\":-1758.1,\"x\":-58.4,\"heading\":303.7,\"z\":29.1}', 0, NULL, 1, NULL, 'Franta', 'Jebly', '12/05/1977', 'm', 88, NULL, NULL, '{\"bodyb_1\":-1,\"lipstick_3\":0,\"shoes_2\":0,\"bodyb_4\":0,\"blemishes_2\":0,\"hair_color_1\":0,\"bodyb_2\":0,\"torso_2\":0,\"nose_3\":0,\"lip_thickness\":0,\"bags_1\":0,\"eyebrows_1\":0,\"lipstick_4\":0,\"makeup_1\":0,\"eyebrows_2\":0,\"bracelets_2\":0,\"face_md_weight\":50,\"watches_1\":-1,\"nose_5\":0,\"lipstick_2\":0,\"decals_1\":0,\"chin_3\":0,\"mom\":21,\"cheeks_3\":0,\"blemishes_1\":0,\"glasses_1\":0,\"bproof_1\":0,\"moles_2\":0,\"neck_thickness\":0,\"torso_1\":0,\"chain_2\":0,\"makeup_3\":0,\"beard_3\":0,\"moles_1\":0,\"cheeks_1\":0,\"decals_2\":0,\"makeup_4\":0,\"eyebrows_6\":0,\"watches_2\":0,\"nose_6\":0,\"jaw_2\":0,\"ears_2\":0,\"cheeks_2\":0,\"beard_4\":0,\"hair_2\":0,\"chin_4\":0,\"ears_1\":-1,\"glasses_2\":0,\"jaw_1\":0,\"bags_2\":0,\"makeup_2\":0,\"chin_1\":0,\"chest_2\":0,\"nose_1\":0,\"pants_1\":0,\"age_2\":0,\"chest_3\":0,\"sun_2\":0,\"blush_3\":0,\"skin_md_weight\":50,\"eyebrows_3\":0,\"shoes_1\":0,\"eye_color\":0,\"chin_2\":0,\"beard_2\":0,\"hair_color_2\":0,\"eyebrows_5\":0,\"eyebrows_4\":0,\"blush_1\":0,\"arms\":0,\"hair_1\":0,\"chest_1\":0,\"sex\":0,\"bracelets_1\":-1,\"helmet_1\":-1,\"arms_2\":0,\"tshirt_1\":0,\"tshirt_2\":0,\"age_1\":0,\"complexion_2\":0,\"lipstick_1\":0,\"sun_1\":0,\"blush_2\":0,\"complexion_1\":0,\"bproof_2\":0,\"helmet_2\":0,\"nose_4\":0,\"nose_2\":0,\"mask_2\":0,\"beard_1\":0,\"eye_squint\":0,\"dad\":0,\"chain_1\":0,\"mask_1\":0,\"pants_2\":0,\"bodyb_3\":-1}', '[{\"percent\":22.78,\"name\":\"hunger\",\"val\":227800},{\"percent\":42.085,\"name\":\"thirst\",\"val\":420850},{\"percent\":0.0,\"name\":\"drunk\",\"val\":0}]', 'unemployed', '0', NULL, b'0', NULL, NULL),
('char2:0d7260980c0de3c2b03d14a09918c880cf07cb58', NULL, '{\"black_money\":0,\"bank\":5000,\"money\":850}', 'admin', '[{\"metadata\":{\"durability\":99.63,\"ammo\":12,\"registered\":\"asaf asasf\",\"serial\":\"622261JBK206457\",\"components\":[]},\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\",\"slot\":1},{\"metadata\":{\"durability\":95.89,\"ammo\":18,\"registered\":\"asaf asasf\",\"serial\":\"396555HAH409747\",\"components\":[]},\"count\":1,\"name\":\"WEAPON_APPISTOL\",\"slot\":2},{\"metadata\":{\"type\":\"item\",\"durability\":95.89},\"count\":1,\"name\":\"mask58\",\"slot\":3},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask4\",\"slot\":4},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask5\",\"slot\":5},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask2\",\"slot\":6},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask7\",\"slot\":7},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask8\",\"slot\":8},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask9\",\"slot\":9},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask10\",\"slot\":10},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask11\",\"slot\":11},{\"metadata\":{\"durability\":88.17,\"ammo\":30,\"registered\":\"asaf asasf\",\"serial\":\"156886MEF910846\",\"components\":[]},\"count\":1,\"name\":\"WEAPON_ASSAULTRIFLE_MK2\",\"slot\":12},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask13\",\"slot\":13},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask14\",\"slot\":14},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask15\",\"slot\":15},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask1\",\"slot\":16},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask17\",\"slot\":17},{\"metadata\":{\"durability\":101.03,\"ammo\":12,\"registered\":\"asaf asasf\",\"serial\":\"699902YYR895277\",\"components\":[]},\"count\":1,\"name\":\"WEAPON_MICROSMG\",\"slot\":18},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask19\",\"slot\":19},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask20\",\"slot\":20},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask6\",\"slot\":21},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask12\",\"slot\":22},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask23\",\"slot\":23},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask24\",\"slot\":24},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask25\",\"slot\":25},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask26\",\"slot\":26},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask27\",\"slot\":27},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask28\",\"slot\":28},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask29\",\"slot\":29},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask30\",\"slot\":30},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask21\",\"slot\":31},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask32\",\"slot\":32},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask34\",\"slot\":34},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask35\",\"slot\":35},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask36\",\"slot\":36},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask37\",\"slot\":37},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask38\",\"slot\":38},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask39\",\"slot\":39},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask40\",\"slot\":40},{\"count\":850,\"name\":\"money\",\"slot\":41},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask31\",\"slot\":42},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask16\",\"slot\":43},{\"metadata\":{\"durability\":100,\"ammo\":0,\"registered\":\"asaf asasf\",\"serial\":\"292398RWI139017\",\"components\":[]},\"count\":1,\"name\":\"WEAPON_ASSAULTRIFLE\",\"slot\":44},{\"metadata\":{\"type\":\"weapon\"},\"count\":1000,\"name\":\"ammo-rifle\",\"slot\":45},{\"metadata\":{\"type\":\"weapon\"},\"count\":820,\"name\":\"ammo-rifle2\",\"slot\":46},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask33\",\"slot\":47},{\"metadata\":{\"type\":\"weapon\"},\"count\":791,\"name\":\"ammo-9\",\"slot\":48},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask22\",\"slot\":49},{\"metadata\":{\"type\":\"item\"},\"count\":1,\"name\":\"mask18\",\"slot\":50}]', 'police', 2, NULL, '{\"y\":-1273.7,\"z\":4.9,\"heading\":210.9,\"x\":-1340.3}', 0, NULL, 1, NULL, 'asaf', 'asasf', '10/10/1999', 'm', 48, '995-2511', NULL, '{\"helmet_2\":0,\"nose_3\":0,\"bracelets_2\":0,\"beard_2\":0,\"chin_3\":0,\"watches_2\":0,\"sex\":0,\"bodyb_4\":0,\"nose_5\":0,\"eyebrows_3\":0,\"complexion_2\":0,\"bags_2\":0,\"hair_color_1\":0,\"makeup_1\":0,\"blemishes_2\":0,\"arms\":17,\"hair_color_2\":0,\"beard_4\":0,\"hair_2\":0,\"bracelets_1\":-1,\"pants_2\":2,\"cheeks_3\":0,\"age_2\":0,\"chin_13\":0,\"sun_1\":0,\"chest_2\":0,\"arms_2\":0,\"moles_1\":0,\"pants_1\":78,\"eye_squint\":0,\"chest_1\":0,\"face_md_weight\":50,\"tshirt_1\":76,\"torso_2\":3,\"bodyb_3\":-1,\"chin_2\":0,\"nose_6\":0,\"skin_md_weight\":50,\"jaw_2\":0,\"jaw_1\":0,\"chest_3\":0,\"blush_3\":0,\"beard_1\":0,\"chain_1\":0,\"decals_1\":0,\"bproof_2\":0,\"cheeks_2\":0,\"nose_2\":0,\"eye_color\":0,\"glasses_2\":0,\"shoes_1\":25,\"watches_1\":-1,\"blush_2\":0,\"bproof_1\":0,\"eyebrows_6\":0,\"lipstick_4\":0,\"chain_2\":0,\"nose_1\":0,\"eyebrows_2\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"lipstick_3\":0,\"blemishes_1\":0,\"chin_1\":0,\"shoes_2\":0,\"neck_thickness\":0,\"helmet_1\":-1,\"nose_4\":0,\"hair_1\":0,\"dad\":0,\"decals_2\":0,\"chin_4\":0,\"ears_1\":-1,\"bodyb_2\":0,\"mom\":21,\"makeup_4\":0,\"mask_1\":0,\"bags_1\":0,\"eyebrows_1\":0,\"tshirt_2\":1,\"moles_2\":0,\"age_1\":0,\"lip_thickness\":0,\"ears_2\":0,\"beard_3\":0,\"cheeks_1\":0,\"makeup_3\":0,\"glasses_1\":0,\"makeup_2\":0,\"bodyb_1\":-1,\"torso_1\":167,\"lipstick_1\":0,\"lipstick_2\":0,\"mask_2\":0,\"blush_1\":0,\"sun_2\":0,\"eyebrows_5\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char3:0d7260980c0de3c2b03d14a09918c880cf07cb58', NULL, '{\"money\":0,\"black_money\":0,\"bank\":5600}', 'admin', '[]', 'unemployed', 0, NULL, '{\"z\":31.2,\"heading\":311.1,\"x\":-250.9,\"y\":-971.0}', 0, NULL, 1, NULL, 'ADad', 'Adaad', '10/11/1999', 'm', 48, '348-0251', NULL, '{\"sun_2\":0,\"bodyb_4\":0,\"age_2\":0,\"ears_2\":0,\"cheeks_2\":0,\"nose_6\":0,\"bags_1\":0,\"eye_color\":0,\"pants_1\":0,\"bodyb_1\":-1,\"hair_1\":0,\"chest_1\":0,\"complexion_2\":0,\"cheeks_3\":0,\"tshirt_1\":0,\"beard_1\":0,\"nose_3\":0,\"lipstick_4\":0,\"ears_1\":-1,\"torso_2\":0,\"bodyb_3\":-1,\"moles_2\":0,\"hair_color_2\":0,\"makeup_3\":0,\"eyebrows_6\":0,\"eye_squint\":0,\"beard_2\":0,\"age_1\":0,\"chin_4\":0,\"beard_3\":0,\"shoes_1\":0,\"hair_2\":0,\"eyebrows_4\":0,\"complexion_1\":0,\"torso_1\":0,\"chin_1\":0,\"skin_md_weight\":50,\"blush_1\":0,\"chain_1\":0,\"makeup_1\":0,\"blush_2\":0,\"beard_4\":0,\"sex\":0,\"blush_3\":0,\"arms\":0,\"nose_1\":0,\"chin_3\":0,\"hair_color_1\":0,\"neck_thickness\":0,\"bproof_2\":0,\"tshirt_2\":0,\"lipstick_2\":0,\"chest_2\":0,\"watches_2\":0,\"chin_2\":0,\"glasses_2\":0,\"makeup_2\":0,\"arms_2\":0,\"makeup_4\":0,\"blemishes_1\":0,\"sun_1\":0,\"glasses_1\":0,\"lipstick_3\":0,\"shoes_2\":0,\"eyebrows_2\":0,\"bodyb_2\":0,\"bags_2\":0,\"chest_3\":0,\"blemishes_2\":0,\"helmet_1\":-1,\"nose_5\":0,\"helmet_2\":0,\"nose_2\":0,\"decals_2\":0,\"mask_2\":0,\"bracelets_1\":-1,\"decals_1\":0,\"eyebrows_1\":0,\"chain_2\":0,\"moles_1\":0,\"nose_4\":0,\"face_md_weight\":50,\"eyebrows_5\":0,\"jaw_1\":0,\"jaw_2\":0,\"bproof_1\":0,\"mom\":21,\"lip_thickness\":0,\"chin_13\":0,\"watches_1\":-1,\"dad\":0,\"pants_2\":0,\"mask_1\":0,\"lipstick_1\":0,\"eyebrows_3\":0,\"bracelets_2\":0,\"cheeks_1\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL);
INSERT INTO `users` (`identifier`, `name`, `accounts`, `group`, `inventory`, `job`, `job_grade`, `loadout`, `position`, `is_dead`, `dob`, `is_male`, `accessories`, `firstname`, `lastname`, `dateofbirth`, `sex`, `height`, `phone_number`, `last_property`, `skin`, `status`, `secondjob`, `secondjob_grade`, `tattoos`, `disabled`, `last_motel`, `last_motel_room`) VALUES
('char4:0d7260980c0de3c2b03d14a09918c880cf07cb58', NULL, '{\"money\":0,\"bank\":5200,\"black_money\":0}', 'admin', '[]', 'unemployed', 0, NULL, '{\"z\":32.3,\"heading\":339.3,\"x\":-241.2,\"y\":-911.1}', 0, NULL, 1, NULL, 'Jack', 'Daniels', '10/10/1985', 'm', 200, '665-6725', NULL, '{\"beard_2\":0,\"chain_1\":0,\"moles_1\":0,\"jaw_1\":0,\"bags_2\":0,\"chin_2\":0,\"eyebrows_5\":0,\"eyebrows_6\":0,\"nose_6\":0,\"hair_1\":0,\"cheeks_2\":0,\"bags_1\":0,\"bracelets_1\":-1,\"shoes_2\":0,\"tshirt_1\":0,\"bproof_1\":0,\"age_1\":0,\"blemishes_1\":0,\"complexion_2\":0,\"chest_2\":0,\"beard_4\":0,\"lipstick_2\":0,\"nose_1\":0,\"lipstick_4\":0,\"blemishes_2\":0,\"sun_2\":0,\"decals_1\":0,\"nose_5\":0,\"mask_2\":0,\"hair_2\":0,\"bracelets_2\":0,\"tshirt_2\":0,\"watches_2\":0,\"torso_2\":0,\"blush_3\":0,\"beard_1\":0,\"nose_4\":0,\"lipstick_3\":0,\"bproof_2\":0,\"pants_2\":0,\"makeup_3\":0,\"beard_3\":0,\"lip_thickness\":0,\"chin_3\":0,\"decals_2\":0,\"hair_color_2\":0,\"eyebrows_4\":0,\"dad\":0,\"torso_1\":0,\"bodyb_3\":-1,\"chin_13\":0,\"bodyb_2\":0,\"lipstick_1\":0,\"arms_2\":0,\"mom\":21,\"ears_2\":0,\"glasses_1\":0,\"helmet_1\":-1,\"jaw_2\":0,\"makeup_1\":0,\"eye_squint\":0,\"glasses_2\":0,\"nose_2\":0,\"shoes_1\":0,\"skin_md_weight\":50,\"moles_2\":0,\"makeup_4\":0,\"bodyb_4\":0,\"hair_color_1\":0,\"complexion_1\":0,\"ears_1\":-1,\"eyebrows_2\":0,\"chin_4\":0,\"arms\":0,\"cheeks_3\":0,\"age_2\":0,\"bodyb_1\":-1,\"sun_1\":0,\"chest_3\":0,\"watches_1\":-1,\"eyebrows_1\":0,\"face_md_weight\":50,\"makeup_2\":0,\"nose_3\":0,\"helmet_2\":0,\"neck_thickness\":0,\"chest_1\":0,\"blush_1\":0,\"chain_2\":0,\"cheeks_1\":0,\"sex\":0,\"blush_2\":0,\"eyebrows_3\":0,\"eye_color\":0,\"chin_1\":0,\"mask_1\":0,\"pants_1\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('char5:0d7260980c0de3c2b03d14a09918c880cf07cb58', NULL, '{\"black_money\":0,\"bank\":8400,\"money\":98250}', 'admin', '[{\"metadata\":{\"ammo\":12,\"durability\":99.57,\"registered\":\"Jimmy Strom\",\"serial\":\"264181KBF933645\",\"components\":[]},\"slot\":1,\"count\":1,\"name\":\"WEAPON_COMBATPISTOL\"},{\"slot\":2,\"count\":1,\"name\":\"gym_membership\"},{\"metadata\":{\"type\":\"weapon\"},\"slot\":3,\"count\":919,\"name\":\"ammo-9\"},{\"metadata\":{\"ammo\":29,\"durability\":99.89,\"registered\":\"Jimmy Strom\",\"serial\":\"351456QES786265\",\"components\":[]},\"slot\":4,\"count\":1,\"name\":\"WEAPON_SMG\"},{\"slot\":6,\"count\":98250,\"name\":\"money\"}]', 'unicorn', 2, NULL, '{\"z\":29.5,\"y\":-947.1,\"x\":328.5,\"heading\":80.2}', 0, NULL, 1, NULL, 'Jimmy', 'Strom', '10/10/1999', 'm', 200, '752-2645', NULL, '{\"makeup_4\":0,\"eye_squint\":0,\"decals_1\":0,\"moles_1\":0,\"bracelets_2\":0,\"nose_1\":0,\"arms_2\":0,\"sex\":0,\"chain_2\":0,\"makeup_2\":0,\"ears_1\":-1,\"jaw_2\":0,\"nose_6\":0,\"skin_md_weight\":50,\"eyebrows_3\":0,\"blush_1\":0,\"age_2\":0,\"cheeks_3\":0,\"eyebrows_6\":0,\"blemishes_2\":0,\"eyebrows_4\":0,\"mask_1\":0,\"eyebrows_1\":0,\"bracelets_1\":-1,\"bodyb_2\":0,\"watches_1\":-1,\"face_md_weight\":50,\"eyebrows_2\":0,\"chin_2\":0,\"complexion_2\":0,\"pants_1\":0,\"sun_1\":0,\"bodyb_3\":-1,\"moles_2\":0,\"nose_2\":0,\"helmet_2\":0,\"shoes_1\":0,\"lip_thickness\":0,\"blush_2\":0,\"lipstick_2\":0,\"ears_2\":0,\"lipstick_3\":0,\"hair_color_1\":0,\"beard_1\":0,\"tshirt_1\":4,\"chin_4\":0,\"age_1\":0,\"blemishes_1\":0,\"hair_color_2\":0,\"torso_1\":0,\"torso_2\":0,\"bproof_2\":0,\"arms\":0,\"bodyb_4\":0,\"watches_2\":0,\"sun_2\":0,\"shoes_2\":0,\"helmet_1\":-1,\"blush_3\":0,\"tshirt_2\":0,\"chest_2\":0,\"bproof_1\":0,\"chest_1\":0,\"lipstick_1\":0,\"bodyb_1\":-1,\"chain_1\":0,\"nose_3\":0,\"bags_1\":0,\"glasses_2\":0,\"beard_4\":0,\"hair_1\":0,\"pants_2\":0,\"mom\":21,\"decals_2\":0,\"beard_3\":0,\"cheeks_2\":0,\"chest_3\":0,\"cheeks_1\":0,\"chin_1\":0,\"complexion_1\":0,\"nose_5\":0,\"lipstick_4\":0,\"makeup_1\":0,\"eye_color\":0,\"mask_2\":0,\"bags_2\":0,\"neck_thickness\":0,\"jaw_1\":0,\"beard_2\":0,\"dad\":0,\"eyebrows_5\":0,\"chin_13\":0,\"nose_4\":0,\"chin_3\":0,\"hair_2\":0,\"glasses_1\":0,\"makeup_3\":0}', NULL, 'unemployed', '0', NULL, b'0', NULL, NULL),
('d460da1023ad3a478bef0db6dfa380e850a476d1', NULL, '{\"black_money\":0,\"bank\":50890,\"money\":199990003}', 'admin', '[{\"count\":1,\"name\":\"medikit\",\"slot\":1},{\"metadata\":{\"durability\":0,\"registered\":\"A A\",\"components\":[],\"ammo\":53,\"serial\":\"787527HUV472360\"},\"count\":1,\"name\":\"WEAPON_MG\",\"slot\":2},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"WEAPON_FLASHLIGHT\",\"slot\":3},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"WEAPON_STUNGUN\",\"slot\":4},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":5},{\"metadata\":{\"durability\":100},\"count\":1,\"name\":\"WEAPON_NIGHTSTICK\",\"slot\":6},{\"count\":199990003,\"name\":\"money\",\"slot\":7},{\"count\":143,\"name\":\"ammo-rifle2\",\"slot\":8},{\"count\":1,\"name\":\"ammo-9\",\"slot\":9}]', 'police', 11, NULL, '{\"heading\":344.0,\"z\":29.7,\"y\":-992.3,\"x\":162.8}', 1, NULL, 1, NULL, 'A', 'A', '04/11/2000', 'm', 72, '392-6639', NULL, '{\"skin_md_weight\":50,\"lipstick_1\":0,\"lipstick_3\":0,\"eyebrows_5\":0,\"lipstick_4\":0,\"chin_3\":0,\"chin_4\":0,\"nose_2\":0,\"bproof_2\":0,\"glasses_1\":0,\"age_2\":0,\"nose_3\":0,\"age_1\":0,\"dad\":0,\"eyebrows_1\":0,\"chest_2\":0,\"bodyb_2\":0,\"sex\":0,\"jaw_1\":0,\"cheeks_3\":0,\"pants_2\":0,\"ears_1\":-1,\"eye_squint\":0,\"pants_1\":0,\"ears_2\":0,\"mask_2\":0,\"complexion_2\":0,\"beard_3\":0,\"nose_5\":0,\"chin_2\":0,\"arms_2\":0,\"helmet_2\":0,\"arms\":0,\"hair_2\":0,\"tshirt_1\":0,\"eyebrows_6\":0,\"eyebrows_4\":0,\"moles_1\":0,\"hair_color_2\":0,\"chest_3\":0,\"cheeks_1\":0,\"hair_1\":0,\"blemishes_2\":0,\"face_md_weight\":50,\"decals_2\":0,\"eyebrows_2\":0,\"makeup_2\":0,\"mom\":21,\"jaw_2\":0,\"nose_1\":0,\"glasses_2\":0,\"blush_3\":0,\"torso_1\":0,\"makeup_4\":0,\"eyebrows_3\":0,\"hair_color_1\":0,\"beard_2\":0,\"cheeks_2\":0,\"chest_1\":0,\"bracelets_1\":-1,\"eye_color\":0,\"tshirt_2\":0,\"bodyb_4\":0,\"blemishes_1\":0,\"bproof_1\":0,\"decals_1\":0,\"complexion_1\":0,\"chain_2\":0,\"blush_1\":0,\"beard_1\":0,\"shoes_1\":0,\"makeup_1\":0,\"chin_1\":0,\"bags_1\":0,\"blush_2\":0,\"mask_1\":0,\"nose_4\":0,\"bags_2\":0,\"bodyb_1\":-1,\"lipstick_2\":0,\"lip_thickness\":0,\"bracelets_2\":0,\"sun_2\":0,\"makeup_3\":0,\"sun_1\":0,\"bodyb_3\":-1,\"neck_thickness\":0,\"shoes_2\":0,\"torso_2\":0,\"chain_1\":0,\"moles_2\":0,\"watches_1\":-1,\"helmet_1\":-1,\"watches_2\":0,\"beard_4\":0,\"nose_6\":0}', '[{\"percent\":90.0,\"val\":900000,\"name\":\"hunger\"},{\"percent\":92.5,\"val\":925000,\"name\":\"thirst\"},{\"percent\":0.0,\"val\":0,\"name\":\"drunk\"}]', 'unemployed', '0', NULL, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `user_contacts`
--

CREATE TABLE `user_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `user_lastcharacter`
--

CREATE TABLE `user_lastcharacter` (
  `identifier` varchar(60) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `user_licenses`
--

CREATE TABLE `user_licenses` (
  `id` int(11) NOT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `user_licenses`
--

INSERT INTO `user_licenses` (`id`, `type`, `owner`) VALUES
(1, 'weapon', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(2, 'drive', 'd460da1023ad3a478bef0db6dfa380e850a476d1'),
(4, 'boating', '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(5, 'dmv', '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(6, 'drive', '0d7260980c0de3c2b03d14a09918c880cf07cb58'),
(7, 'weapon', 'd460da1023ad3a478bef0db6dfa380e850a476d1'),
(8, 'dmv', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(9, 'drive', 'cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(10, 'dmv', '90d23e573ef6c08489c5023675b47b9914851425'),
(11, 'dmv', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(12, 'dmv', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(13, 'drive', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(14, 'dmv', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(15, 'drive', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(16, 'drive_truck', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(17, 'drive_bike', 'char1:4c7c4889b7ea49b948fdf9b55211e25d7610474a'),
(18, 'drive', 'char1:cb3c1382c4d5cf85d13c7eea2be1004deba3eb2e'),
(19, 'dmv', 'char1:0d7260980c0de3c2b03d14a09918c880cf07cb58');

-- --------------------------------------------------------

--
-- Struktura tabulky `user_parkings`
--

CREATE TABLE `user_parkings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` int(11) NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `user_slots`
--

CREATE TABLE `user_slots` (
  `identifier` varchar(75) NOT NULL,
  `slots` text NOT NULL DEFAULT '{"slot2":false,"slot3":false,"slot4":false}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicles`
--

CREATE TABLE `vehicles` (
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `hash` varchar(60) NOT NULL DEFAULT '',
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `imglink` text DEFAULT NULL,
  `instore` tinyint(1) UNSIGNED DEFAULT 1,
  `trunksize` int(6) UNSIGNED NOT NULL DEFAULT 0,
  `rarity` varchar(50) NOT NULL DEFAULT 'common',
  `stock` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vehicles`
--

INSERT INTO `vehicles` (`name`, `model`, `hash`, `price`, `category`, `imglink`, `instore`, `trunksize`, `rarity`, `stock`) VALUES
('Adder', 'adder', '-1216765807', 1000000, 'ltdedition', 'https://i.imgur.com/dPxjhuH.png', 1, 25000, 'common', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicleshop_categories`
--

CREATE TABLE `vehicleshop_categories` (
  `name` varchar(100) NOT NULL,
  `label` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vehicleshop_categories`
--

INSERT INTO `vehicleshop_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupes'),
('cycles', 'Cycles'),
('motorcycles', 'Motorcycles'),
('muscles', 'Muscles'),
('offroads', 'Off-Roads'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('supers', 'Supers'),
('suvs', 'SUVs'),
('vans', 'Vans');

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicleshop_vehicles`
--

CREATE TABLE `vehicleshop_vehicles` (
  `code` varchar(100) NOT NULL,
  `hash` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vehicleshop_vehicles`
--

INSERT INTO `vehicleshop_vehicles` (`code`, `hash`, `price`, `category`) VALUES
('Asbo', 'asbo', 15000, 'compacts');

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
('compacts', 'Compacts'),
('coupes', 'Coupés'),
('ltdedition', 'Limited Edition'),
('motorcycles', 'Motorbikes'),
('muscle', 'Muscle'),
('offroad', 'Off Road'),
('sedans', 'Sedans'),
('sports', 'Sports'),
('sportsclassics', 'Sports Classics'),
('suvs', 'SUVs'),
('vans', 'Vans'),
('vips', 'Super');

-- --------------------------------------------------------

--
-- Struktura tabulky `vehicle_sold`
--

CREATE TABLE `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_aircrafts`
--

CREATE TABLE `vs_aircrafts` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_aircrafts`
--

INSERT INTO `vs_aircrafts` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Buzzard', 'buzzard2', 500000, 'helis', 'https://wiki.rage.mp/images/thumb/6/6e/Buzzard2.png/800px-Buzzard2.png'),
(2, 'Frogger', 'frogger', 750000, 'helis', 'https://wiki.rage.mp/images/thumb/2/2d/Frogger.png/800px-Frogger.png'),
(3, 'Havok', 'havok', 250000, 'helis', 'https://wiki.rage.mp/images/thumb/4/40/Havok.png/800px-Havok.png'),
(4, 'Maverick', 'maverick', 625000, 'helis', 'https://wiki.rage.mp/images/thumb/7/73/Maverick.png/800px-Maverick.png'),
(5, 'Sea Sparrow', 'seasparrow', 375000, 'helis', 'https://wiki.rage.mp/images/thumb/d/d5/Seasparrow.png/800px-Seasparrow.png'),
(6, 'SuperVolito', 'supervolito', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/9/9e/Supervolito.png/800px-Supervolito.png'),
(7, 'SuperVolito Carbon', 'supervolito2', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/a/a8/Supervolito2.png/800px-Supervolito2.png'),
(8, 'Swift', 'swift', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/0/00/Swift.png/800px-Swift.png'),
(9, 'Swift Deluxe', 'swift2', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/5/5f/Swift2.png/800px-Swift2.png'),
(10, 'Volatus', 'volatus', 875000, 'helis', 'https://wiki.rage.mp/images/thumb/6/65/Volatus.png/800px-Volatus.png'),
(20, 'Alpha Z1', 'alphaz1', 450000, 'planes', 'https://wiki.rage.mp/images/thumb/4/46/Alphaz1.png/800px-Alphaz1.png'),
(21, 'Besra', 'besra', 500000, 'planes', 'https://wiki.rage.mp/images/thumb/3/35/Besra.png/800px-Besra.png'),
(22, 'Cuban 800', 'cuban800', 200000, 'planes', 'https://wiki.rage.mp/images/thumb/6/63/Cuban800.png/800px-Cuban800.png'),
(23, 'Dodo', 'dodo', 350000, 'planes', 'https://wiki.rage.mp/images/thumb/f/fc/Dodo.png/800px-Dodo.png'),
(24, 'Duster', 'duster', 100000, 'planes', 'https://wiki.rage.mp/images/thumb/a/a0/Duster.png/800px-Duster.png'),
(25, 'Howard NX25', 'howard', 450000, 'planes', 'https://wiki.rage.mp/images/thumb/0/09/Howard.png/800px-Howard.png'),
(26, 'Luxor', 'luxor', 700000, 'planes', 'https://wiki.rage.mp/images/f/f3/Luxor.png'),
(27, 'Luxor Deluxe', 'luxor2', 750000, 'planes', 'https://wiki.rage.mp/images/thumb/a/a8/Luxor2.png/800px-Luxor2.png'),
(28, 'Mammatus', 'mammatus', 250000, 'planes', 'https://wiki.rage.mp/images/thumb/a/a7/Mammatus.png/800px-Mammatus.png'),
(29, 'Ultra Light', 'microlight', 50000, 'planes', 'https://wiki.rage.mp/images/thumb/6/62/Microlight.png/800px-Microlight.png'),
(30, 'Nimbus', 'nimbus', 600000, 'planes', 'https://wiki.rage.mp/images/thumb/c/c8/Nimbus.png/800px-Nimbus.png'),
(31, 'Rogue', 'rogue', 450000, 'planes', 'https://wiki.rage.mp/images/thumb/5/59/Rogue.png/800px-Rogue.png'),
(32, 'Sea Breeze', 'seabreeze', 400000, 'planes', 'https://wiki.rage.mp/images/thumb/a/ae/Seabreeze.png/800px-Seabreeze.png'),
(33, 'Shamal', 'shamal', 650000, 'planes', 'https://wiki.rage.mp/images/thumb/b/be/Shamal.png/800px-Shamal.png'),
(34, 'Mallard', 'stunt', 150000, 'planes', 'https://wiki.rage.mp/images/thumb/a/aa/Stunt.png/800px-Stunt.png'),
(35, 'Velum', 'velum', 300000, 'planes', 'https://wiki.rage.mp/images/c/c3/Velum.png'),
(36, 'Velum 5-Seater', 'velum2', 300000, 'planes', 'https://wiki.rage.mp/images/thumb/e/e7/Velum2.png/800px-Velum2.png'),
(37, 'Vestra', 'vestra', 500000, 'planes', 'https://wiki.rage.mp/images/thumb/8/8f/Vestra.png/800px-Vestra.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_aircraft_categories`
--

CREATE TABLE `vs_aircraft_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_aircraft_categories`
--

INSERT INTO `vs_aircraft_categories` (`id`, `name`, `label`) VALUES
(1, 'helis', 'Helicopters'),
(2, 'planes', 'Planes');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_ambulance`
--

CREATE TABLE `vs_ambulance` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_ambulance`
--

INSERT INTO `vs_ambulance` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Ambulance', 'ambulance', 500, 'ambulance', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
(2, 'Fire Truck', 'firetruk', 750, 'ambulance', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png'),
(3, 'Ambulance', 'ambulance', 500, 'doctor', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
(4, 'Fire Truck', 'firetruk', 750, 'doctor', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png'),
(5, 'Ambulance', 'ambulance', 500, 'chief_doctor', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
(6, 'Fire Truck', 'firetruk', 750, 'chief_doctor', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png'),
(7, 'Ambulance', 'ambulance', 500, 'boss', 'https://wiki.rage.mp/images/thumb/f/f5/Ambulance.png/800px-Ambulance.png'),
(8, 'Fire Truck', 'firetruk', 750, 'boss', 'https://wiki.rage.mp/images/thumb/5/5b/FireTruck.png/800px-FireTruck.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_ambulance_categories`
--

CREATE TABLE `vs_ambulance_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_ambulance_categories`
--

INSERT INTO `vs_ambulance_categories` (`id`, `name`, `label`) VALUES
(1, 'ambulance', 'Jr. EMT'),
(2, 'doctor', 'EMT'),
(3, 'chief_doctor', 'Sr. EMT'),
(4, 'boss', 'EMT Supervisor');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_boats`
--

CREATE TABLE `vs_boats` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_boats`
--

INSERT INTO `vs_boats` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Dinghy 1', 'dinghy', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/3/39/Dinghy.png/800px-Dinghy.png'),
(2, 'Dinghy 2', 'dinghy2', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/0/09/Dinghy2.png/800px-Dinghy2.png'),
(3, 'Dinghy 3', 'dinghy3', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/5/56/Dinghy3.png/800px-Dinghy3.png'),
(4, 'Dinghy 4', 'dinghy4', 15000, 'boats', 'https://wiki.rage.mp/images/thumb/8/86/Dinghy4.png/800px-Dinghy4.png'),
(5, 'Jetmax', 'jetmax', 22500, 'boats', 'https://wiki.rage.mp/images/thumb/e/e6/Jetmax.png/800px-Jetmax.png'),
(6, 'Marquis', 'marquis', 37500, 'boats', 'https://wiki.rage.mp/images/thumb/7/70/Marquis.png/800px-Marquis.png'),
(7, 'Longfin', 'longfin', 40000, 'boats', 'https://wiki.rage.mp/images/thumb/3/34/0x6EF89CCC.png/800px-0x6EF89CCC.png'),
(8, 'Seashark', 'seashark', 8000, 'boats', 'https://wiki.rage.mp/images/thumb/e/e7/Seashark.png/800px-Seashark.png'),
(9, 'Seashark 3', 'seashark3', 8000, 'boats', 'https://wiki.rage.mp/images/thumb/f/f3/Seashark3.png/800px-Seashark3.png'),
(10, 'Speeder', 'speeder', 35000, 'boats', 'https://wiki.rage.mp/images/thumb/f/f4/Speeder.png/800px-Speeder.png'),
(11, 'Speeder 2', 'speeder2', 35000, 'boats', 'https://wiki.rage.mp/images/thumb/8/89/Speeder2.png/800px-Speeder2.png'),
(12, 'Squalo', 'squalo', 25000, 'boats', 'https://wiki.rage.mp/images/thumb/e/ec/Squalo.png/800px-Squalo.png'),
(13, 'Suntrap', 'suntrap', 27500, 'boats', 'https://wiki.rage.mp/images/thumb/2/27/Suntrap.png/800px-Suntrap.png'),
(14, 'Toro', 'toro', 30000, 'boats', 'https://wiki.rage.mp/images/thumb/9/94/Toro.png/800px-Toro.png'),
(15, 'Toro 2', 'toro2', 32500, 'boats', 'https://wiki.rage.mp/images/thumb/d/d7/Toro2.png/800px-Toro2.png'),
(16, 'Tropic', 'tropic', 20000, 'boats', 'https://wiki.rage.mp/images/thumb/8/86/Tropic.png/800px-Tropic.png'),
(17, 'Tropic 2', 'tropic2', 20000, 'boats', 'https://wiki.rage.mp/images/thumb/a/a7/Tropic2.png/800px-Tropic2.png'),
(20, 'Kraken', 'submersible2', 32500, 'subs', 'https://wiki.rage.mp/images/thumb/6/62/Submersible2.png/800px-Submersible2.png'),
(21, 'Submarine', 'submersible', 30000, 'subs', 'https://wiki.rage.mp/images/3/3c/Submersible.png'),
(22, 'Avisa', 'avisa', 35000, 'subs', 'https://wiki.rage.mp/images/thumb/1/19/0x9A474B5E.png/800px-0x9A474B5E.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_boat_categories`
--

CREATE TABLE `vs_boat_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_boat_categories`
--

INSERT INTO `vs_boat_categories` (`id`, `name`, `label`) VALUES
(1, 'boats', 'Boats'),
(2, 'subs', 'Submersibles');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_cars`
--

CREATE TABLE `vs_cars` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_cars`
--

INSERT INTO `vs_cars` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Asbo', 'asbo', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/c/cb/Asbo.png/800px-Asbo.png'),
(2, 'Blista', 'blista', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/5/58/Blista.png/800px-Blista.png'),
(3, 'Brioso R/A', 'brioso', 17500, 'compacts', 'https://wiki.rage.mp/images/thumb/6/6f/Brioso.png/800px-Brioso.png'),
(4, 'Brioso 300', 'brioso2', 12500, 'compacts', 'https://wiki.rage.mp/images/thumb/4/41/0x55365079.png/800px-0x55365079.png'),
(5, 'Club', 'club', 12500, 'compacts', 'https://wiki.rage.mp/images/thumb/5/50/Club.png/800px-Club.png'),
(6, 'Dilettante', 'dilettante', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/b/b9/Dilettante.png/800px-Dilettante.png'),
(7, 'Issi', 'issi2', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/0/0b/Issi2.png/800px-Issi2.png'),
(8, 'Issi Classic', 'issi3', 12500, 'compacts', 'https://wiki.rage.mp/images/thumb/7/73/Issi3.png/800px-Issi3.png'),
(9, 'Kanjo Blista', 'kanjo', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/2/25/Kanjo.png/800px-Kanjo.png'),
(10, 'Panto', 'panto', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/e/e5/Panto.png/800px-Panto.png'),
(11, 'Prairie', 'prairie', 15000, 'compacts', 'https://wiki.rage.mp/images/thumb/3/3d/Prairie.png/800px-Prairie.png'),
(12, 'Rhapsody', 'rhapsody', 12500, 'compacts', 'https://wiki.rage.mp/images/thumb/e/e2/Rhapsody.png/800px-Rhapsody.png'),
(13, 'WeEvil', 'weevil', 12500, 'compacts', 'https://wiki.rage.mp/images/thumb/c/c0/0x61FE4D6A.png/800px-0x61FE4D6A.png'),
(50, 'Asea', 'asea', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/c/ce/Asea.png/800px-Asea.png'),
(51, 'Asterope', 'asterope', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/0/05/Asterope.png/800px-Asterope.png'),
(52, 'Cognoscenti S', 'cog55', 50000, 'sedans', 'https://wiki.rage.mp/images/thumb/d/d5/Cog55.png/800px-Cog55.png'),
(53, 'Cognoscenti S Armored', 'cog552', 75000, 'sedans', 'https://wiki.rage.mp/images/thumb/7/79/Cog552.png/800px-Cog552.png'),
(54, 'Cognoscenti L', 'cognoscenti', 50000, 'sedans', 'https://wiki.rage.mp/images/thumb/5/51/Cognoscenti.png/800px-Cognoscenti.png'),
(55, 'Cognoscenti L Armored', 'cognoscenti2', 75000, 'sedans', 'https://wiki.rage.mp/images/thumb/2/2e/Cognoscenti2.png/800px-Cognoscenti2.png'),
(56, 'Emperor', 'emperor', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/c/c5/Emperor.png/800px-Emperor.png'),
(57, 'Emperor 2', 'emperor2', 10000, 'sedans', 'https://wiki.rage.mp/images/thumb/1/16/Emperor2.png/800px-Emperor2.png'),
(58, 'Fugitive', 'fugitive', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/7/73/Fugitive.png/800px-Fugitive.png'),
(59, 'Glendale', 'glendale', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/b/b2/Glendale.png/800px-Glendale.png'),
(60, 'Glendale Custom', 'glendale2', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/b/bd/Glendale2.png/800px-Glendale2.png'),
(61, 'Ingot', 'ingot', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/7/74/Ingot.png/800px-Ingot.png'),
(62, 'Intruder', 'intruder', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/9/92/Intruder.png/800px-Intruder.png'),
(63, 'Premier', 'premier', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/9/9d/Premier.png/800px-Premier.png'),
(64, 'Primo', 'primo', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/4/45/Primo.png/800px-Primo.png'),
(65, 'Primo Custom', 'primo2', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/3/30/Primo2.png/800px-Primo2.png'),
(66, 'Regina', 'regina', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/5/5f/Regina.png/800px-Regina.png'),
(67, 'Romero Hearse', 'romero', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/7/73/Romero.png/800px-Romero.png'),
(68, 'Schafter', 'schafter2', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/c/cc/Schafter2.png/800px-Schafter2.png'),
(69, 'Schafter V12 Armored', 'schafter5', 40000, 'sedans', 'https://wiki.rage.mp/images/thumb/2/28/Schafter5.png/800px-Schafter5.png'),
(70, 'Schafter LWB Armored', 'schafter6', 40000, 'sedans', 'https://wiki.rage.mp/images/thumb/a/a6/Schafter6.png/800px-Schafter6.png'),
(71, 'Stafford', 'stafford', 25000, 'sedans', 'https://wiki.rage.mp/images/e/e9/Stafford.png'),
(72, 'Stanier', 'stanier', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/5/57/Stanier.png/800px-Stanier.png'),
(73, 'Stratum', 'stratum', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/b/ba/Stratum.png/800px-Stratum.png'),
(74, 'Stretch', 'stretch', 50000, 'sedans', 'https://wiki.rage.mp/images/thumb/8/8a/Stretch.png/800px-Stretch.png'),
(75, 'Super Diamond', 'superd', 50000, 'sedans', 'https://wiki.rage.mp/images/thumb/6/6e/Superd.png/800px-Superd.png'),
(76, 'Surge', 'surge', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/1/1a/Surge.png/800px-Surge.png'),
(77, 'Tailgater', 'tailgater', 15000, 'sedans', 'https://wiki.rage.mp/images/thumb/a/af/Tailgater.png/800px-Tailgater.png'),
(78, 'Warrener', 'warrener', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/2/22/Warrener.png/800px-Warrener.png'),
(79, 'Washington', 'washington', 12500, 'sedans', 'https://wiki.rage.mp/images/thumb/e/e2/Washington.png/800px-Washington.png'),
(100, 'Baller', 'baller', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/7/79/Baller.png/800px-Baller.png'),
(101, 'Baller 2', 'baller2', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/9/98/Baller2.png/800px-Baller2.png'),
(102, 'Baller LE', 'baller3', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/9/9b/Baller3.png/800px-Baller3.png'),
(103, 'Baller LE LWB', 'baller4', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/e/e8/Baller4.png/800px-Baller4.png'),
(104, 'Baller LE Armored', 'baller5', 50000, 'suvs', 'https://wiki.rage.mp/images/thumb/3/34/Baller5.png/800px-Baller5.png'),
(105, 'Baller LE LWB Armored', 'baller6', 50000, 'suvs', 'https://wiki.rage.mp/images/thumb/8/81/Baller6.png/800px-Baller6.png'),
(106, 'BeeJay XL', 'bjxl', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/d/da/Bjxl.png/800px-Bjxl.png'),
(107, 'Cavalcade', 'cavalcade', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/9/9e/Cavalcade.png/800px-Cavalcade.png'),
(108, 'Cavalcade 2', 'cavalcade2', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/b/bc/Cavalcade2.png/800px-Cavalcade2.png'),
(109, 'Dubsta', 'dubsta', 45000, 'suvs', 'https://wiki.rage.mp/images/thumb/e/ec/Dubsta.png/800px-Dubsta.png'),
(110, 'Dubsta Luxuary', 'dubsta2', 45000, 'suvs', 'https://wiki.rage.mp/images/thumb/3/36/Dubsta2.png/800px-Dubsta2.png'),
(111, 'Fhantom', 'fq2', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/a/a4/Fq2.png/800px-Fq2.png'),
(112, 'Grabger', 'granger', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/4/4d/Granger.png/800px-Granger.png'),
(113, 'Gresley', 'gresley', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/d/d6/Gresley.png/800px-Gresley.png'),
(114, 'Habanero', 'habanero', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/1/1e/Habanero.png/800px-Habanero.png'),
(115, 'Huntley S', 'huntley', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/1/1c/Huntley.png/800px-Huntley.png'),
(116, 'Landstalker', 'landstalker', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/7/70/Landstalker.png/800px-Landstalker.png'),
(117, 'Landstalker XL', 'landstalker2', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/b/b1/Landstalker2.png/800px-Landstalker2.png'),
(118, 'Mesa', 'mesa', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/c/cc/Mesa.png/800px-Mesa.png'),
(119, 'Novak', 'novak', 25000, 'suvs', 'https://wiki.rage.mp/images/7/76/Novak.png'),
(120, 'Patriot', 'patriot', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/1/12/Patriot.png/800px-Patriot.png'),
(121, 'Patriot Stretch', 'patriot2', 45000, 'suvs', 'https://wiki.rage.mp/images/8/83/Patriot2.png'),
(122, 'Radius', 'radi', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/9/9c/Radi.png/800px-Radi.png'),
(123, 'Rebla GTS', 'rebla', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/9/94/Rebla.png/800px-Rebla.png'),
(124, 'Rocoto', 'rocoto', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/2/23/Rocoto.png/800px-Rocoto.png'),
(125, 'Seminole', 'seminole', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/c/cc/Seminole.png/800px-Seminole.png'),
(126, 'Seminole Frontier', 'seminole2', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/d/d9/Seminole2.png/800px-Seminole2.png'),
(127, 'Serrano', 'serrano', 22500, 'suvs', 'https://wiki.rage.mp/images/thumb/a/ac/Serrano.png/800px-Serrano.png'),
(128, 'Toros', 'toros', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/f/f1/Toros.png/800px-Toros.png'),
(129, 'XLS', 'xls', 25000, 'suvs', 'https://wiki.rage.mp/images/thumb/0/0f/Xls.png/800px-Xls.png'),
(130, 'XLS Armored', 'xls2', 50000, 'suvs', 'https://wiki.rage.mp/images/thumb/3/35/Xls2.png/800px-Xls2.png'),
(150, 'Cognoscenti Cabrio', 'cogcabrio', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/1/1b/CogCabrio.png/800px-CogCabrio.png'),
(151, 'Exemplar', 'exemplar', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/a/a4/Exemplar.png/800px-Exemplar.png'),
(152, 'F620', 'f620', 45000, 'coupes', 'https://wiki.rage.mp/images/thumb/2/21/F620.png/800px-F620.png'),
(153, 'Felon', 'felon', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/0/04/Felon.png/800px-Felon.png'),
(154, 'Felon GT', 'felon2', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/6/6e/Felon2.png/800px-Felon2.png'),
(155, 'Jackal', 'jackal', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/7/70/Jackal.png/800px-Jackal.png'),
(156, 'Oracle XS', 'oracle', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/1/17/Oracle.png/800px-Oracle.png'),
(157, 'Oracle', 'oracle2', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/4/4d/Oracle2.png/800px-Oracle2.png'),
(158, 'Sentinel', 'sentinel', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/9/91/Sentinel.png/800px-Sentinel.png'),
(159, 'Sentinel XS', 'sentinel2', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/d/dd/Sentinel2.png/800px-Sentinel2.png'),
(160, 'Windsor', 'windsor', 50000, 'coupes', 'https://wiki.rage.mp/images/thumb/2/2d/Windsor.png/800px-Windsor.png'),
(161, 'Windsor Drop', 'windsor2', 50000, 'coupes', 'https://wiki.rage.mp/images/thumb/5/57/Windsor2.png/800px-Windsor2.png'),
(162, 'Zion', 'zion', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/5/51/Zion.png/800px-Zion.png'),
(163, 'Zion Cabrio', 'zion2', 35000, 'coupes', 'https://wiki.rage.mp/images/thumb/f/f2/Zion2.png/800px-Zion2.png'),
(200, 'Blade', 'blade', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/a/ad/Blade.png/800px-Blade.png'),
(201, 'Buccaneer', 'buccaneer', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/d/de/Buccaneer.png/800px-Buccaneer.png'),
(202, 'Buccaneer Rider', 'buccaneer2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/1/16/Buccaneer2.png/800px-Buccaneer2.png'),
(203, 'Chino', 'chino', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/4/4d/Chino.png/800px-Chino.png'),
(204, 'Chino Custom', 'chino2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/6/61/Chino2.png/800px-Chino2.png'),
(205, 'Clique', 'clique', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/3/3c/Clique.png/800px-Clique.png'),
(206, 'Coquette BlackFin', 'coquette3', 50000, 'muscles', 'https://wiki.rage.mp/images/thumb/6/67/Coquette3.png/800px-Coquette3.png'),
(207, 'Deviant', 'deviant', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/d/d5/Deviant.png/800px-Deviant.png'),
(208, 'Dominator', 'dominator', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/6/6e/Dominator.png/800px-Dominator.png'),
(209, 'Dominator Pisswasser', 'dominator2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/5/57/Dominator2.png/800px-Dominator2.png'),
(210, 'Dominator GTX', 'dominator3', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/b/ba/Dominator3.png/800px-Dominator3.png'),
(211, 'Dukes', 'dukes', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/6/6e/Dukes.png/800px-Dukes.png'),
(212, 'Dukes Beater', 'dukes3', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/4/45/Dukes3.png/800px-Dukes3.png'),
(213, 'Ellie', 'ellie', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/e/ef/Ellie.png/800px-Ellie.png'),
(214, 'Faction', 'faction', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/5/55/Faction.png/800px-Faction.png'),
(215, 'Faction Custom', 'faction2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/4/41/Faction2.png/800px-Faction2.png'),
(216, 'Faction Custom Donk', 'faction3', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/a/a8/Faction3.png/800px-Faction3.png'),
(217, 'Gauntlet', 'gauntlet', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/7/71/Gauntlet.png/800px-Gauntlet.png'),
(218, 'Gauntlet Redwood', 'gauntlet2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/b/b0/Gauntlet2.png/800px-Gauntlet2.png'),
(219, 'Gauntlet Classic', 'gauntlet3', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/8/88/Gauntlet3.png/800px-Gauntlet3.png'),
(220, 'Gauntlet Hellfire', 'gauntlet4', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/e/ec/Gauntlet4.png/800px-Gauntlet4.png'),
(221, 'Gauntlet Classic Custom', 'gauntlet5', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/d/de/Gauntlet5.png/800px-Gauntlet5.png'),
(222, 'Hermes', 'hermes', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/0/0d/Hermes.png/800px-Hermes.png'),
(223, 'Hotknife', 'hotknife', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/1/16/Hotknife.png/800px-Hotknife.png'),
(224, 'Hustler', 'hustler', 30000, 'muscles', 'https://wiki.rage.mp/images/3/3f/Hustler.png'),
(225, 'Impaler', 'impaler', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/3/31/Impaler.png/800px-Impaler.png'),
(226, 'Lurcher', 'lurcher', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/0/03/Lurcher.png/800px-Lurcher.png'),
(227, 'Manana Custom', 'manana2', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/9/9e/Manana2.png/800px-Manana2.png'),
(228, 'Moonbeam', 'moonbeam', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/5/5d/Moonbeam.png/800px-Moonbeam.png'),
(229, 'Moonbeam Custom', 'moonbeam2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/c/c1/Moonbeam2.png/800px-Moonbeam2.png'),
(230, 'Nightshade', 'nightshade', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/e/ec/Nightshade.png/800px-Nightshade.png'),
(231, 'Peyote Gasser', 'peyote2', 30000, 'muscles', 'https://wiki.rage.mp/images/thumb/3/35/Peyote2.png/800px-Peyote2.png'),
(232, 'Phoenix', 'phoenix', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/5/53/Pheonix.png/800px-Pheonix.png'),
(233, 'Picador', 'picador', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/1/15/Picador.png/800px-Picador.png'),
(234, 'Rat-Loader', 'ratloader', 12500, 'muscles', 'https://wiki.rage.mp/images/thumb/7/7a/Ratloader.png/800px-Ratloader.png'),
(235, 'Rat-Truck', 'ratloader2', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/b/b7/Ratloader2.png/800px-Ratloader2.png'),
(236, 'Ruiner', 'ruiner', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/b/b4/Ruiner.png/800px-Ruiner.png'),
(237, 'Sabre Turbo', 'sabregt', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/0/04/Sabregt.png/800px-Sabregt.png'),
(238, 'Sabre Turbo Custom', 'sabregt2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/b/ba/Sabregt2.png/800px-Sabregt2.png'),
(239, 'Slamvan', 'slamvan', 15000, 'muscles', 'https://wiki.rage.mp/images/3/39/SlamVan.png'),
(240, 'Slamvan Lost', 'slamvan2', 15000, 'muscles', 'https://wiki.rage.mp/images/3/3a/SlamVan2.png'),
(241, 'Slamvan Custom', 'slamvan3', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/f/fe/Slamvan3.png/800px-Slamvan3.png'),
(242, 'Stallion', 'stalion', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/c/ce/Stalion.png/800px-Stalion.png'),
(243, 'Stallion Burger Shot', 'stalion2', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/4/4a/Stalion2.png/800px-Stalion2.png'),
(244, 'Tampa', 'tampa', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/3/30/Tampa.png/800px-Tampa.png'),
(245, 'Tulip', 'tulip', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/c/cf/Tulip.png/800px-Tulip.png'),
(246, 'Vamos', 'vamos', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/0/07/Vamos.png/800px-Vamos.png'),
(247, 'Vigero', 'vigero', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/2/22/Vigero.png/800px-Vigero.png'),
(248, 'Virgo', 'virgo', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/4/41/Virgo.png/800px-Virgo.png'),
(249, 'Virgo Classic Custom', 'virgo2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/8/81/Virgo2.png/800px-Virgo2.png'),
(250, 'Virgo Classic', 'virgo3', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/4/4d/Virgo3.png/800px-Virgo3.png'),
(251, 'Voodoo Custom', 'voodoo', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/1/1e/Voodoo.png/800px-Voodoo.png'),
(252, 'Voodoo', 'voodoo2', 12500, 'muscles', 'https://wiki.rage.mp/images/thumb/5/5e/Voodoo2.png/800px-Voodoo2.png'),
(253, 'Yosemite', 'yosemite', 15000, 'muscles', 'https://wiki.rage.mp/images/thumb/7/7a/Yosemite.png/800px-Yosemite.png'),
(254, 'Yosemite Drift', 'yosemite2', 20000, 'muscles', 'https://wiki.rage.mp/images/thumb/5/58/Yosemite2.png/800px-Yosemite2.png'),
(260, 'Roosevelt', 'btype', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/6/64/Btype.png/800px-Btype.png'),
(261, 'Franken Strange', 'btype3', 50000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/3/34/Btype3.png/800px-Btype3.png'),
(262, 'Roosevelt Valor', 'btype2', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/9/98/Btype2.png/800px-Btype2.png'),
(263, 'Casco', 'casco', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/d/d7/Casco.png/800px-Casco.png'),
(264, 'Cheburek', 'cheburek', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/4/4f/Cheburek.png/800px-Cheburek.png'),
(265, 'Cheetah Classic', 'cheetah2', 50000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/d/dd/Cheetah2.png/800px-Cheetah2.png'),
(266, 'Coquette Classic', 'coquette2', 50000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/8/8a/Coquette2.png/800px-Coquette2.png'),
(267, 'Dynasty', 'dynasty', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/8/88/Dynasty.png'),
(268, 'Fagaloa', 'fagaloa', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/1/15/Fagaloa.png/800px-Fagaloa.png'),
(269, 'Stirling GT', 'feltzer3', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/0/0b/Feltzer3.png/800px-Feltzer3.png'),
(270, 'GT 500', 'gt500', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/8/84/Gt500.png/800px-Gt500.png'),
(271, 'Infernus Classic', 'infernus2', 50000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/9/91/Infernus2.png/800px-Infernus2.png'),
(272, 'Mamba', 'mamba', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/c/c0/Mamba.png/800px-Mamba.png'),
(273, 'Manana', 'manana', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/5/50/Manana.png/800px-Manana.png'),
(274, 'Michelli GT', 'michelli', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/1/15/Michelli.png'),
(275, 'Monroe', 'monroe', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/6/64/Monroe.png/800px-Monroe.png'),
(276, 'Nebula Turbo', 'nebula', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/e/ea/Nebula.png'),
(277, 'Peyote', 'peyote', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/2/21/Peyote.png/800px-Peyote.png'),
(278, 'Peyote Gasser', 'peyote3', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/d/d9/Peyote3.png/800px-Peyote3.png'),
(279, 'Pigalle', 'pigalle', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/7/76/Pigalle.png/800px-Pigalle.png'),
(280, 'Rapid GT Classic', 'rapidgt3', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/0/09/Rapidgt3.png/800px-Rapidgt3.png'),
(281, 'Retinue', 'retinue', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/5/53/Retinue.png/800px-Retinue.png'),
(282, 'Retinue MK II', 'retinue2', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/8/86/Retinue2.png/800px-Retinue2.png'),
(283, 'Savestra', 'savestra', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/2/26/Savestra.png/800px-Savestra.png'),
(284, 'Stinger', 'stinger', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/b/b6/Stinger.png/800px-Stinger.png'),
(285, 'Stinger GT', 'stingergt', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/8/8d/Stingergt.png/800px-Stingergt.png'),
(287, 'Torero', 'torero', 50000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/5/5f/Torero.png/800px-Torero.png'),
(288, 'Tornado', 'tornado', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/4/40/Tornado.png/800px-Tornado.png'),
(289, 'Tornado 2', 'tornado2', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/0/05/Tornado2.png/800px-Tornado2.png'),
(290, 'Tornado 3', 'tornado3', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/7/7d/Tornado3.png/800px-Tornado3.png'),
(291, 'Tornado 4', 'tornado4', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/f/fa/Tornado4.png/800px-Tornado4.png'),
(292, 'Tornado Custom', 'tornado5', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/8/83/Tornado5.png/800px-Tornado5.png'),
(293, 'Tornado Rat Rod', 'tornado6', 35000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/6/69/Tornado6.png/800px-Tornado6.png'),
(294, 'Turismo Classic', 'turismo2', 50000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/f/fa/Turismo2.png/800px-Turismo2.png'),
(295, 'Viseris', 'viseris', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/2/24/Viseris.png/800px-Viseris.png'),
(296, '190z', 'z190', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/e/e1/Z190.png'),
(297, 'Zion Classic', 'zion3', 30000, 'sportsclassics', 'https://wiki.rage.mp/images/5/5a/Zion3.png'),
(298, 'Z-Type', 'ztype', 40000, 'sportsclassics', 'https://wiki.rage.mp/images/thumb/5/56/Ztype.png/800px-Ztype.png'),
(300, 'Alpha', 'alpha', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/a/a8/Alpha.png/800px-Alpha.png'),
(301, 'Banshee', 'banshee', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/d/d3/Banshee.png/800px-Banshee.png'),
(302, 'Bestia GTS', 'bestiagts', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/5/5c/Bestiagts.png/800px-Bestiagts.png'),
(303, 'Blista Compact', 'blista2', 25000, 'sports', 'https://wiki.rage.mp/images/thumb/0/0c/Blista2.png/800px-Blista2.png'),
(304, 'Blista Go Go Monkey', 'blista3', 25000, 'sports', 'https://wiki.rage.mp/images/thumb/8/8c/Blista3.png/800px-Blista3.png'),
(305, 'Buffalo', 'buffalo', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/0/0a/Buffalo.png/800px-Buffalo.png'),
(306, 'Buffalo S', 'buffalo2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/2/2c/Buffalo2.png/800px-Buffalo2.png'),
(307, 'Buffalo Sprunk', 'buffalo3', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/6/68/Buffalo3.png/800px-Buffalo3.png'),
(308, 'Carbonizzare', 'carbonizzare', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/4/43/Carbonizzare.png/800px-Carbonizzare.png'),
(309, 'Comet', 'comet2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/c/cb/Comet2.png/800px-Comet2.png'),
(310, 'Comet Retro Custom', 'comet3', 52500, 'sports', 'https://wiki.rage.mp/images/thumb/b/b6/Comet3.png/800px-Comet3.png'),
(311, 'Comet Safari', 'comet4', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/f/f1/Comet4.png/800px-Comet4.png'),
(312, 'Comet SR', 'comet5', 55000, 'sports', 'https://wiki.rage.mp/images/c/ca/Comet5.png'),
(313, 'Coquette', 'coquette', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/d/d6/Coquette.png/800px-Coquette.png'),
(314, 'Coquette D10', 'coquette4', 100000, 'sports', 'https://wiki.rage.mp/images/thumb/9/97/Coquette4.png/800px-Coquette4.png'),
(315, '8F Drafter', 'drafter', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/a/aa/Drafter.png/800px-Drafter.png'),
(316, 'Elegy Retro Custom', 'elegy', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/e/ea/Elegy.png/800px-Elegy.png'),
(317, 'Elegy RH8', 'elegy2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/3/33/Elegy2.png/800px-Elegy2.png'),
(318, 'Feltzer', 'feltzer2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/7/7c/Feltzer2.png/800px-Feltzer2.png'),
(319, 'Flash GT', 'flashgt', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/8/80/Flashgt.png/800px-Flashgt.png'),
(320, 'Furore GT', 'furoregt', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/c/cb/Furoregt.png/800px-Furoregt.png'),
(321, 'Fusilade', 'fusilade', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/5/56/Fusilade.png/800px-Fusilade.png'),
(322, 'Futo', 'futo', 25000, 'sports', 'https://wiki.rage.mp/images/thumb/0/04/Futo.png/800px-Futo.png'),
(323, 'GB200', 'gb200', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/3/35/Gb200.png/800px-Gb200.png'),
(324, 'Hotring Sabre', 'hotring', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/2/26/Hotring.png/800px-Hotring.png'),
(325, 'Imorgon', 'imorgon', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/1/1f/Imorgon.png/800px-Imorgon.png'),
(326, 'Issi Sport', 'issi7', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/0/04/Issi7.png/727px-Issi7.png'),
(327, 'Itali GTO', 'italigto', 100000, 'sports', 'https://wiki.rage.mp/images/thumb/8/83/ItaliGTO.png/800px-ItaliGTO.png'),
(328, 'Itali RSX', 'italirsx', 100000, 'sports', 'https://wiki.rage.mp/images/thumb/1/1a/0xBB78956A.png/800px-0xBB78956A.png'),
(329, 'Jester', 'jester', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/e/e0/Jester.png/800px-Jester.png'),
(330, 'Jester (Racecar)', 'jester2', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/3/34/Jester2.png/800px-Jester2.png'),
(331, 'Jester Classic', 'jester3', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/1/19/Jester3.png/800px-Jester3.png'),
(332, 'Jugular', 'jugular', 50000, 'sports', 'https://wiki.rage.mp/images/6/69/Jugular.png'),
(333, 'Khamelion', 'khamelion', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/2/2e/Khamelion.png/800px-Khamelion.png'),
(334, 'Komoda', 'komoda', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/4/47/Komoda.png/800px-Komoda.png'),
(335, 'Kuruma', 'kuruma', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/8/8f/Kuruma.png/800px-Kuruma.png'),
(336, 'Locust', 'locust', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/1/1e/Locust.png/780px-Locust.png'),
(337, 'Lynx', 'lynx', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/a/a7/Lynx2.png/800px-Lynx2.png'),
(338, 'Massacro', 'massacro', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/7/78/Massacro.png/800px-Massacro.png'),
(339, 'Massacro (Racecar)', 'massacro2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/b/be/Massacro2.png/800px-Massacro2.png'),
(340, 'Neo', 'neo', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/7/74/Neo.png/800px-Neo.png'),
(341, 'Neon', 'neon', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/1/17/Neon.png/800px-Neon.png'),
(342, '9F', 'ninef', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/5/59/Ninef.png/800px-Ninef.png'),
(343, '9F Cabrio', 'ninef2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/f/f6/Ninef2.png/800px-Ninef2.png'),
(344, 'Omnis', 'omnis', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/1/12/Omnis.png/800px-Omnis.png'),
(345, 'Paragon R', 'paragon', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/1/1e/Paragon.png/800px-Paragon.png'),
(346, 'Pariah', 'pariah', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/d/df/Pariah.png/800px-Pariah.png'),
(347, 'Penumbra', 'penumbra', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/9/93/Penumbra.png/800px-Penumbra.png'),
(348, 'Penumbra FF', 'penumbra2', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/d/dd/Penumbra2.png/800px-Penumbra2.png'),
(349, 'Raiden', 'raiden', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/5/5f/Raiden.png/800px-Raiden.png'),
(350, 'Rapid GT', 'rapidgt', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/e/e9/Rapidgt.png/800px-Rapidgt.png'),
(351, 'Rapid GT 2', 'rapidgt2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/3/3e/Rapidgt2.png/800px-Rapidgt2.png'),
(352, 'Raptor', 'raptor', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/0/08/Raptor.png/800px-Raptor.png'),
(353, 'Revolter', 'revolter', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/2/24/Revolter.png/800px-Revolter.png'),
(354, 'Ruston', 'ruston', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/b/ba/Ruston.png/800px-Ruston.png'),
(355, 'Schafter V12', 'schafter3', 25000, 'sports', 'https://wiki.rage.mp/images/thumb/a/a9/Schafter3.png/800px-Schafter3.png'),
(356, 'Schafter LWB', 'schafter4', 25000, 'sports', 'https://wiki.rage.mp/images/thumb/2/29/Schafter4.png/800px-Schafter4.png'),
(357, 'Schlagen GT', 'schlagen', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/9/97/Schlagen.png/800px-Schlagen.png'),
(358, 'Schwartzer', 'schwarzer', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/1/19/Schwarzer.png/800px-Schwarzer.png'),
(359, 'Sentinel Classic', 'sentinel3', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/0/0f/Sentinel3.png/800px-Sentinel3.png'),
(360, 'Seven 70', 'seven70', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/6/60/Seven70.png/800px-Seven70.png'),
(361, 'Specter', 'specter', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/f/f1/Specter.png/800px-Specter.png'),
(362, 'Specter Custom', 'specter2', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/9/9f/Specter2.png/800px-Specter2.png'),
(363, 'Streiter', 'streiter', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/8/81/Streiter.png/800px-Streiter.png'),
(364, 'Sugoi', 'sugoi', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/2/25/Sugoi.png/800px-Sugoi.png'),
(365, 'Sultan', 'sultan', 25000, 'sports', 'https://wiki.rage.mp/images/thumb/f/f4/Sultan.png/800px-Sultan.png'),
(366, 'Sultan Classic', 'sultan2', 37500, 'sports', 'https://wiki.rage.mp/images/thumb/5/57/Sultan2.png/800px-Sultan2.png'),
(367, 'Surano', 'surano', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/9/96/Surano.png/800px-Surano.png'),
(368, 'Drift Tampa', 'tampa2', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/a/af/Tampa2.png/800px-Tampa2.png'),
(369, 'Tropos Rallye', 'tropos', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/7/71/Tropos.png/800px-Tropos.png'),
(370, 'Verlierer', 'verlierer2', 75000, 'sports', 'https://wiki.rage.mp/images/thumb/8/81/Verlierer2.png/800px-Verlierer2.png'),
(371, 'V-STR', 'vstr', 50000, 'sports', 'https://wiki.rage.mp/images/thumb/4/43/Vstr.png/800px-Vstr.png'),
(400, 'Adder', 'adder', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/c/c2/Adder.png/800px-Adder.png'),
(401, 'Autarch', 'autarch', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/3/38/Autarch.png/800px-Autarch.png'),
(402, 'Banshee 900R', 'banshee2', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/9/9b/Banshee2.png/800px-Banshee2.png'),
(403, 'Bullet', 'bullet', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/7/7a/Bullet.png/800px-Bullet.png'),
(404, 'Cheetah', 'cheetah', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/9/9e/Cheetah.png/800px-Cheetah.png'),
(405, 'Cyclone', 'cyclone', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/7/79/Cyclone.png/800px-Cyclone.png'),
(406, 'Deveste Eight', 'deveste', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/3/3f/Deveste.png/800px-Deveste.png'),
(407, 'Emerus', 'emerus', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/0/0a/Emerus.png/790px-Emerus.png'),
(408, 'Entity XF', 'entityxf', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/6/61/Entityxf.png/800px-Entityxf.png'),
(409, 'Entity XXR', 'entity2', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/f/f3/Entity2.png/800px-Entity2.png'),
(410, 'FMJ', 'fmj', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/d/d2/Fmj.png/800px-Fmj.png'),
(411, 'PR4', 'formula', 500000, 'supers', 'https://wiki.rage.mp/images/thumb/c/cf/Formula.png/800px-Formula.png'),
(412, 'R88', 'formula2', 500000, 'supers', 'https://wiki.rage.mp/images/thumb/0/03/Formula2.png/800px-Formula2.png'),
(413, 'Furia', 'furia', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/0/05/Furia.png/800px-Furia.png'),
(414, 'GP1', 'gp1', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/a/a4/Gp1.png/800px-Gp1.png'),
(415, 'Infernus', 'infernus', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/d/d2/Infernus.png/800px-Infernus.png'),
(416, 'Itali GTB', 'italigtb', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/d/dd/Italigtb.png/800px-Italigtb.png'),
(417, 'Itali GTB Custom', 'italigtb2', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/5/57/Italigtb2.png/800px-Italigtb2.png'),
(418, 'Krieger', 'krieger', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/f/fc/Krieger.png/732px-Krieger.png'),
(419, 'RE-7B', 'le7b', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/e/ee/Le7b.png/800px-Le7b.png'),
(420, 'Nero', 'nero', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/e/ed/Nero.png/800px-Nero.png'),
(421, 'Nero Custom', 'nero2', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/e/ec/Nero2.png/800px-Nero2.png'),
(422, 'BR8', 'openwheel1', 500000, 'supers', 'https://wiki.rage.mp/images/thumb/a/ae/Openwheel1.png/800px-Openwheel1.png'),
(423, 'DR1', 'openwheel2', 500000, 'supers', 'https://wiki.rage.mp/images/thumb/4/49/Openwheel2.png/800px-Openwheel2.png'),
(424, 'Osiris', 'osiris', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/e/e3/Osiris.png/800px-Osiris.png'),
(425, 'Penetrator', 'penetrator', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/d/d9/Penetrator.png/800px-Penetrator.png'),
(426, 'Pfister 811', 'pfister811', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/8/8e/Pfister811.png/800px-Pfister811.png'),
(427, 'X80 Proto', 'prototipo', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/f/fb/Prototipo.png/800px-Prototipo.png'),
(428, 'Reaper', 'reaper', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/6/6a/Reaper.png/800px-Reaper.png'),
(429, 'S80RR', 's80', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/a/a2/S80.png/756px-S80.png'),
(430, 'SC1', 'sc1', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/5/59/Sc1.png/800px-Sc1.png'),
(431, 'ETR1', 'sheava', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/0/06/Sheava.png/800px-Sheava.png'),
(432, 'Sultan RS', 'sultanrs', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/8/88/Sultanrs.png/800px-Sultanrs.png'),
(433, 'T20', 't20', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/7/7d/T20.png/800px-T20.png'),
(434, 'Taipan', 'taipan', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/8/8a/Taipan.png/800px-Taipan.png'),
(435, 'Tempesta', 'tempesta', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/8/8a/Tempesta.png/800px-Tempesta.png'),
(436, 'Tezeract', 'tezeract', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/a/ab/Tezeract.png/800px-Tezeract.png'),
(437, 'Tigon', 'tigon', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/f/f4/Tigon.png/800px-Tigon.png'),
(438, 'Thrax', 'thrax', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/4/4f/Thrax.png/670px-Thrax.png'),
(439, 'Turismo R', 'turismor', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/7/7f/Turismor.png/800px-Turismor.png'),
(440, 'Tyrant', 'tyrant', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/0/0a/Tyrant.png/800px-Tyrant.png'),
(441, 'Tyrus', 'tyrus', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/e/e4/Tyrus.png/800px-Tyrus.png'),
(442, 'Vacca', 'vacca', 300000, 'supers', 'https://wiki.rage.mp/images/thumb/1/14/Vacca.png/800px-Vacca.png'),
(443, 'Vagner', 'vagner', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/9/92/Vagner.png/800px-Vagner.png'),
(444, 'Visione', 'visione', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/0/01/Visione.png/800px-Visione.png'),
(445, 'Voltic', 'voltic', 250000, 'supers', 'https://wiki.rage.mp/images/thumb/e/ef/Voltic.png/800px-Voltic.png'),
(446, 'XA-21', 'xa21', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/4/4d/Xa21.png/800px-Xa21.png'),
(447, 'Zentorno', 'zentorno', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/2/2b/Zentorno.png/800px-Zentorno.png'),
(448, 'Zorrusso', 'zorrusso', 375000, 'supers', 'https://wiki.rage.mp/images/thumb/7/79/Zorrusso.png/660px-Zorrusso.png'),
(500, 'Akuma', 'akuma', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/1/16/Akuma.png/800px-Akuma.png'),
(501, 'Avarus', 'avarus', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/1/13/Avarus.png/800px-Avarus.png'),
(502, 'Bagger', 'bagger', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/6/64/Bagger.png/800px-Bagger.png'),
(503, 'Bati 801', 'bati', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/c/ce/Bati.png/800px-Bati.png'),
(504, 'Bati 801RR', 'bati2', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/6/60/Bati2.png/800px-Bati2.png'),
(505, 'BF400', 'bf400', 7500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/3/3a/BF400.png/800px-BF400.png'),
(506, 'Blazer', 'blazer', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/3/3e/Blazer.png/800px-Blazer.png'),
(507, 'Blazer Hot Rod', 'blazer3', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/d/d5/Blazer3.png/800px-Blazer3.png'),
(508, 'Blazer Sport', 'blazer4', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/5/5f/Blazer4.png/800px-Blazer4.png'),
(509, 'Caddy', 'caddy', 5000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/9/94/Caddy.png/800px-Caddy.png'),
(510, 'Caddy 2', 'caddy2', 5000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/2/25/Caddy2.png/800px-Caddy2.png'),
(511, 'Caddy 3', 'caddy3', 5000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/8/8c/Caddy3.png/800px-Caddy3.png'),
(512, 'Carbon RS', 'carbonrs', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/d/d3/CarbonRS.png/800px-CarbonRS.png'),
(513, 'Chimera', 'chimera', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/3/36/Chimera.png/800px-Chimera.png'),
(514, 'Cliffhanger', 'cliffhanger', 7500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/1/12/Cliffhanger.png/800px-Cliffhanger.png'),
(515, 'Daemon', 'daemon', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/2/27/Daemon.png/800px-Daemon.png'),
(516, 'Daemon 2', 'daemon2', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/8/86/Daemon2.png/800px-Daemon2.png'),
(517, 'Defiler', 'defiler', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/41/Defiler.png/800px-Defiler.png'),
(518, 'Diabolus', 'diablous', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/48/Diablous.png/800px-Diablous.png'),
(519, 'Diabolus Custom', 'diablous2', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/3/3e/Diablous2.png/800px-Diablous2.png'),
(520, 'Double T', 'double', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/0/01/Double.png/800px-Double.png'),
(521, 'Enduro', 'enduro', 7500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/f/f3/Enduro.png/800px-Enduro.png'),
(522, 'Esskey', 'esskey', 7500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/2/24/Esskey.png/800px-Esskey.png'),
(523, 'Faggio Sport', 'faggio', 2500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/4d/Faggio.png/800px-Faggio.png'),
(524, 'Faggio', 'faggio2', 2500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/2/25/Faggio2.png/800px-Faggio2.png'),
(525, 'Faggio Mod', 'faggio3', 2500, 'motorcycles', 'https://wiki.rage.mp/images/thumb/a/a6/Faggio3.png/800px-Faggio3.png'),
(526, 'FCR 1000', 'fcr', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/46/Fcr.png/800px-Fcr.png'),
(527, 'FCR 1000 Custom', 'fcr2', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/d/d5/Fcr2.png/800px-Fcr2.png'),
(528, 'Gargoyle', 'gargoyle', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/44/Gargoyle.png/800px-Gargoyle.png'),
(529, 'Hakuchou', 'hakuchou', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/2/23/Hakuchou.png/800px-Hakuchou.png'),
(530, 'Hakuchou Sport', 'hakuchou2', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/8/87/Hakuchou2.png/800px-Hakuchou2.png'),
(531, 'Hexer', 'hexer', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/5/56/Hexer.png/800px-Hexer.png'),
(532, 'Innovation', 'innovation', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/42/Innovation.png/800px-Innovation.png'),
(533, 'Lectro', 'lectro', 15000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/0/00/Lectro.png/800px-Lectro.png'),
(534, 'Manchez', 'manchez', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/3/3c/Manchez.png/800px-Manchez.png'),
(535, 'Manchez 2', 'manchez2', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/a/a3/0x40C332A3.png/800px-0x40C332A3.png'),
(536, 'Nemesis', 'nemesis', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/e/e3/Nemesis.png/800px-Nemesis.png'),
(537, 'Nightblade', 'nightblade', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/c/c1/Nightblade.png/800px-Nightblade.png'),
(538, 'PCJ 600', 'pcj', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/9/99/Pcj.png/800px-Pcj.png'),
(539, 'Rat Bike', 'ratbike', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/4/49/Ratbike.png/800px-Ratbike.png'),
(540, 'Ruffian', 'ruffian', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/f/f6/Ruffian.png/800px-Ruffian.png'),
(541, 'Sanchez', 'sanchez', 10000, 'motorcycles', 'https://wiki.rage.mp/images/5/52/Sanchez.png'),
(542, 'Sanchez Sport', 'sanchez2', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/6/6d/Sanchez2.png/800px-Sanchez2.png'),
(543, 'Sanctus', 'sanctus', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/e/e2/Sanctus.png/800px-Sanctus.png'),
(544, 'Stryder', 'stryder', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/c/c3/Stryder.png/800px-Stryder.png'),
(545, 'Sovereign', 'sovereign', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/a/ae/Sovereign.png/800px-Sovereign.png'),
(546, 'Thrust', 'thrust', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/9/90/Thrust.png/800px-Thrust.png'),
(547, 'Vader', 'vader', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/d/dc/Vader.png/800px-Vader.png'),
(548, 'Veto Classic', 'veto', 5000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/1/11/0xCCE5C8FA.png/800px-0xCCE5C8FA.png'),
(549, 'Veto Modern', 'veto2', 5000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/c/cc/0xA703E4A9.png/800px-0xA703E4A9.png'),
(550, 'Vindicator', 'vindicator', 20000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/b/bb/Vindicator.png/800px-Vindicator.png'),
(551, 'Vortex', 'vortex', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/5/52/Vortex.png/800px-Vortex.png'),
(552, 'Woflsbane', 'wolfsbane', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/c/c6/Wolfsbane.png/800px-Wolfsbane.png'),
(553, 'Zombie Bobber', 'zombiea', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/7/7f/Zombiea.png/800px-Zombiea.png'),
(554, 'Zombie Chopper', 'zombieb', 10000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/2/2c/Zombieb.png/800px-Zombieb.png'),
(555, 'Shotaro', 'shotaro', 30000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/e/e3/Shotaro.png/800px-Shotaro.png'),
(600, 'Bf Injection', 'bfinjection', 15000, 'offroads', 'https://wiki.rage.mp/images/thumb/3/3d/Bfinject.png/800px-Bfinject.png'),
(601, 'Bifta', 'bifta', 15000, 'offroads', 'https://wiki.rage.mp/images/thumb/b/b7/Bifta.png/800px-Bifta.png'),
(602, 'Bison', 'bison', 25000, 'offroads', 'https://wiki.rage.mp/images/f/f6/Bison.png'),
(603, 'Bison 3', 'bison3', 25000, 'offroads', 'https://wiki.rage.mp/images/7/7f/Bison3.png'),
(604, 'Bobcat XL', 'bobcatxl', 25000, 'offroads', 'https://wiki.rage.mp/images/d/d8/BobcatXL.png'),
(605, 'Bodhi', 'bodhi2', 15000, 'offroads', 'https://wiki.rage.mp/images/thumb/c/ce/Bodhi2.png/800px-Bodhi2.png'),
(606, 'Brawler', 'brawler', 45000, 'offroads', 'https://wiki.rage.mp/images/thumb/f/fa/Brawler.png/800px-Brawler.png'),
(607, 'Caracara 4x4', 'caracara2', 50000, 'offroads', 'https://wiki.rage.mp/images/3/3b/Caracara2.png'),
(608, 'Contender', 'contender', 45000, 'offroads', 'https://wiki.rage.mp/images/thumb/2/2e/Contender.png/800px-Contender.png'),
(609, 'Duneloader', 'dloader', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/1/1a/Dloader.png/800px-Dloader.png'),
(610, 'Dubsta 6x6', 'dubsta3', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/d/d6/Dubsta3.png/800px-Dubsta3.png'),
(611, 'Dune Buggy', 'dune', 10000, 'offroads', 'https://wiki.rage.mp/images/thumb/c/c6/Dune.png/800px-Dune.png'),
(612, 'Space Docker', 'dune2', 10000, 'offroads', 'https://wiki.rage.mp/images/thumb/1/10/Dune2.png/800px-Dune2.png'),
(613, 'Everon', 'everon', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/8/83/Everon.png/800px-Everon.png'),
(614, 'Freecrawler', 'freecrawler', 25000, 'offroads', 'https://wiki.rage.mp/images/5/56/Freecrawler.png'),
(615, 'Guardian', 'guardian', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/f/fd/Guardian.png/800px-Guardian.png'),
(616, 'Hellion', 'hellion', 25000, 'offroads', 'https://wiki.rage.mp/images/c/cf/Hellion.png'),
(617, 'Insurgent', 'insurgent2', 75000, 'offroads', 'https://wiki.rage.mp/images/thumb/2/2c/Insurgent2.png/800px-Insurgent2.png'),
(618, 'Kalahari', 'kalahari', 20000, 'offroads', 'https://wiki.rage.mp/images/thumb/5/55/Kalahari.png/800px-Kalahari.png'),
(619, 'Kamacho', 'kamacho', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/d/d0/Kamacho.png/800px-Kamacho.png'),
(620, 'Marshall', 'marshall', 210000, 'offroads', 'https://wiki.rage.mp/images/thumb/7/71/Marshall.png/800px-Marshall.png'),
(621, 'Mesa Trail', 'mesa3', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/c/c6/Mesa3.png/800px-Mesa3.png'),
(622, 'Liberator', 'monster', 210000, 'offroads', 'https://wiki.rage.mp/images/thumb/1/13/Monster.png/800px-Monster.png'),
(623, 'Outlaw', 'outlaw', 15000, 'offroads', 'https://wiki.rage.mp/images/thumb/f/f0/Outlaw.png/800px-Outlaw.png'),
(624, 'Rancher XL', 'rancherxl', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/e/ef/Rancherxl.png/800px-Rancherxl.png'),
(625, 'Rusty Rebel', 'rebel', 15000, 'offroads', 'https://wiki.rage.mp/images/thumb/e/e3/Rebel.png/800px-Rebel.png'),
(626, 'Rebel', 'rebel2', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/9/90/Rebel2.png/800px-Rebel2.png'),
(627, 'Riata', 'riata', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/4/4d/Riata.png/800px-Riata.png'),
(628, 'Sadler', 'sadler', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/3/37/Sadler.png/800px-Sadler.png'),
(629, 'Sandking XL', 'sandking', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/6/64/Sandking.png/800px-Sandking.png'),
(630, 'Sandking SWB', 'sandking2', 50000, 'offroads', 'https://wiki.rage.mp/images/thumb/d/d1/Sandking2.png/800px-Sandking2.png'),
(631, 'Squaddie', 'squaddie', 75000, 'offroads', 'https://wiki.rage.mp/images/thumb/d/d6/0xF9E67C05.png/800px-0xF9E67C05.png'),
(632, 'Trophy Truck', 'trophytruck', 75000, 'offroads', 'https://wiki.rage.mp/images/thumb/1/18/Trophytruck.png/800px-Trophytruck.png'),
(633, 'Desert Raid', 'trophytruck2', 75000, 'offroads', 'https://wiki.rage.mp/images/thumb/8/85/Trophytruck2.png/800px-Trophytruck2.png'),
(634, 'Vagrant', 'vagrant', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/8/87/Vagrant.png/800px-Vagrant.png'),
(635, 'Verus', 'verus', 10000, 'offroads', 'https://wiki.rage.mp/images/thumb/1/10/0x11CBC051.png/780px-0x11CBC051.png'),
(636, 'Vetir', 'vetir', 75000, 'offroads', 'https://wiki.rage.mp/images/thumb/1/11/0x780FFBD2.png/800px-0x780FFBD2.png'),
(637, 'Winky', 'winky', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/b/b2/0xF376F1E6.png/800px-0xF376F1E6.png'),
(638, 'Yosemite Rancher', 'yosemite3', 25000, 'offroads', 'https://wiki.rage.mp/images/thumb/8/87/Yosemite3.png/800px-Yosemite3.png'),
(639, 'Zhaba', 'zhaba', 75000, 'offroads', 'https://wiki.rage.mp/images/thumb/a/a2/Zhaba.png/738px-Zhaba.png'),
(650, 'Burrito', 'burrito3', 20000, 'vans', 'https://wiki.rage.mp/images/8/89/Burrito3.png'),
(651, 'Camper', 'camper', 25000, 'vans', 'https://wiki.rage.mp/images/b/bd/Camper.png'),
(652, 'Gang Burrito', 'gburrito', 20000, 'vans', 'https://wiki.rage.mp/images/b/b0/GBurrito.png'),
(653, 'Gang Burrito 2', 'gburrito2', 20000, 'vans', 'https://wiki.rage.mp/images/f/ff/GBurrito2.png'),
(654, 'Journey', 'journey', 10000, 'vans', 'https://wiki.rage.mp/images/0/0c/Journey.png'),
(655, 'Minivan', 'minivan', 15000, 'vans', 'https://wiki.rage.mp/images/1/12/Minivan.png'),
(656, 'Minivan Custom', 'minivan2', 20000, 'vans', 'https://wiki.rage.mp/images/2/21/Minivan2.png'),
(657, 'Paradise', 'paradise', 20000, 'vans', 'https://wiki.rage.mp/images/b/b3/Paradise.png'),
(658, 'Rumpo Trail', 'rumpo3', 25000, 'vans', 'https://wiki.rage.mp/images/7/7a/Rumpo3.png'),
(659, 'Speedo', 'speedo', 20000, 'vans', 'https://wiki.rage.mp/images/2/2b/Speedo.png'),
(660, 'Surfer', 'surfer', 20000, 'vans', 'https://wiki.rage.mp/images/d/d7/Surfer.png'),
(661, 'Surfer 2', 'surfer2', 10000, 'vans', 'https://wiki.rage.mp/images/d/d5/Surfer2.png'),
(662, 'Youga', 'youga', 20000, 'vans', 'https://wiki.rage.mp/images/d/d5/Youga.png'),
(663, 'Youga Classic', 'youga2', 20000, 'vans', 'https://wiki.rage.mp/images/thumb/e/e6/Youga2.png/800px-Youga2.png'),
(664, 'Youga Classic 4x4', 'youga3', 25000, 'vans', 'https://wiki.rage.mp/images/thumb/0/00/Youga3.png/800px-Youga3.png'),
(685, 'BMX', 'bmx', 150, 'cycles', 'https://wiki.rage.mp/images/thumb/4/40/Bmx.png/800px-Bmx.png'),
(686, 'Cruiser', 'cruiser', 200, 'cycles', 'https://wiki.rage.mp/images/thumb/6/66/Cruiser.png/800px-Cruiser.png'),
(687, 'Fixter', 'fixter', 200, 'cycles', 'https://wiki.rage.mp/images/thumb/2/29/Fixter.png/800px-Fixter.png'),
(688, 'Scorcher', 'scorcher', 350, 'cycles', 'https://wiki.rage.mp/images/thumb/3/34/Scorcher.png/800px-Scorcher.png'),
(689, 'Race bike Whippet', 'tribike', 500, 'cycles', 'https://wiki.rage.mp/images/thumb/f/fe/TriBike.png/800px-TriBike.png'),
(690, 'Race bike Endurex', 'tribike2', 500, 'cycles', 'https://wiki.rage.mp/images/thumb/d/dc/TriBike2.png/800px-TriBike2.png'),
(691, 'Race bike Tri-Cycles', 'tribike3', 500, 'cycles', 'https://wiki.rage.mp/images/thumb/5/5d/TriBike3.png/800px-TriBike3.png'),
(692, 'Gt63samg', 'gt63samg', 2, 'supers', 'https://img.gta5-mods.com/q95/images/mercedes-benz-gt63-s-amg-add-on-lod-s-tuning-sound/7578f3-Screenshot_8.png'),
(693, 'police2', 'police2', 2, 'supers', 'https://img.gta5-mods.com/q95/images/mercedes-benz-gt63-s-amg-add-on-lod-s-tuning-sound/7578f3-Screenshot_8.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_car_categories`
--

CREATE TABLE `vs_car_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_car_categories`
--

INSERT INTO `vs_car_categories` (`id`, `name`, `label`) VALUES
(1, 'compacts', 'Compacts'),
(2, 'coupes', 'Coupes'),
(3, 'cycles', 'Cycles'),
(4, 'motorcycles', 'Motorcycles'),
(5, 'muscles', 'Muscles'),
(6, 'offroads', 'Off-Roads'),
(7, 'sedans', 'Sedans'),
(8, 'sports', 'Sports'),
(9, 'sportsclassics', 'Sports Classics'),
(10, 'supers', 'Supers'),
(11, 'suvs', 'SUVs'),
(12, 'vans', 'Vans');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_divisions`
--

CREATE TABLE `vs_divisions` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_divisions`
--

INSERT INTO `vs_divisions` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Maverick', 'polmav', 1000, 'aviation', 'https://wiki.rage.mp/images/thumb/f/fc/Polmav.png/800px-Polmav.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_division_categories`
--

CREATE TABLE `vs_division_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_division_categories`
--

INSERT INTO `vs_division_categories` (`id`, `name`, `label`) VALUES
(1, 'aviation', 'Aviation');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_mecano`
--

CREATE TABLE `vs_mecano` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_mecano`
--

INSERT INTO `vs_mecano` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Flatbed', 'flatbed', 1000, 'recrue', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
(2, 'Tow Truck', 'towtruck', 750, 'recrue', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
(3, 'Tow Truck', 'towtruck2', 500, 'recrue', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
(4, 'Flatbed', 'flatbed', 1000, 'novice', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
(5, 'Tow Truck', 'towtruck', 750, 'novice', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
(6, 'Tow Truck', 'towtruck2', 500, 'novice', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
(7, 'Flatbed', 'flatbed', 1000, 'experimente', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
(8, 'Tow Truck', 'towtruck', 750, 'experimente', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
(9, 'Tow Truck', 'towtruck2', 500, 'experimente', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
(10, 'Flatbed', 'flatbed', 1000, 'chief', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
(11, 'Tow Truck', 'towtruck', 750, 'chief', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
(12, 'Tow Truck', 'towtruck2', 500, 'chief', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png'),
(13, 'Flatbed', 'flatbed', 1000, 'boss', 'https://wiki.rage.mp/images/thumb/c/c2/Flatbed.png/800px-Flatbed.png'),
(14, 'Tow Truck', 'towtruck', 750, 'boss', 'https://wiki.rage.mp/images/thumb/5/52/Towtruck.png/800px-Towtruck.png'),
(15, 'Tow Truck', 'towtruck2', 500, 'boss', 'https://wiki.rage.mp/images/thumb/3/34/Towtruck2.png/800px-Towtruck2.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_mecano_categories`
--

CREATE TABLE `vs_mecano_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_mecano_categories`
--

INSERT INTO `vs_mecano_categories` (`id`, `name`, `label`) VALUES
(1, 'recrue', 'Recruit'),
(2, 'novice', 'Novice'),
(3, 'experimente', 'Experienced'),
(4, 'chief', 'Chief'),
(5, 'boss', 'Boss');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_police`
--

CREATE TABLE `vs_police` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_police`
--

INSERT INTO `vs_police` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Police Cruiser', 'police', 500, 'recruit', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png'),
(2, 'Police Cruiser', 'police2', 750, 'recruit', 'https://wiki.rage.mp/images/thumb/c/c9/Police2.png/800px-Police2.png'),
(3, 'Police Cruiser', 'police', 500, 'officer', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png'),
(4, 'Police Cruiser', 'police2', 750, 'officer', 'https://wiki.rage.mp/images/thumb/c/c9/Police2.png/800px-Police2.png'),
(5, 'Police Cruiser', 'police', 500, 'sergeant', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png'),
(6, 'Police Cruiser', 'police2', 750, 'sergeant', 'https://wiki.rage.mp/images/thumb/c/c9/Police2.png/800px-Police2.png'),
(7, 'Police Cruiser', 'police', 500, 'lieutenant', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png'),
(8, 'Police Cruiser', 'police2', 750, 'lieutenant', 'https://wiki.rage.mp/images/thumb/c/c9/Police2.png/800px-Police2.png'),
(9, 'Police Cruiser', 'police', 500, 'boss', 'https://wiki.rage.mp/images/thumb/b/bf/Police.png/800px-Police.png'),
(10, 'Police Cruiser', 'police2', 750, 'boss', 'https://wiki.rage.mp/images/thumb/c/c9/Police2.png/800px-Police2.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_police_categories`
--

CREATE TABLE `vs_police_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_police_categories`
--

INSERT INTO `vs_police_categories` (`id`, `name`, `label`) VALUES
(1, 'recruit', 'Recruit'),
(2, 'officer', 'Officer'),
(3, 'sergeant', 'Sergeant'),
(4, 'lieutenant', 'Lieutenant'),
(5, 'boss', 'Chief');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_trucks`
--

CREATE TABLE `vs_trucks` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_trucks`
--

INSERT INTO `vs_trucks` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Hauler', 'hauler', 100000, 'haul', 'https://wiki.rage.mp/images/thumb/8/83/Hauler.png/800px-Hauler.png'),
(2, 'Packer', 'packer', 100000, 'haul', 'https://wiki.rage.mp/images/thumb/0/03/Packer.png/800px-Packer.png'),
(3, 'Phantom', 'phantom', 105000, 'haul', 'https://wiki.rage.mp/images/thumb/e/ec/Phantom.png/800px-Phantom.png'),
(4, 'Phantom Custom', 'phantom3', 110000, 'haul', 'https://wiki.rage.mp/images/thumb/8/81/Phantom3.png/800px-Phantom3.png'),
(10, 'Benson', 'benson', 55000, 'box', 'https://wiki.rage.mp/images/thumb/b/bd/Benson.png/800px-Benson.png'),
(11, 'Boxville 1', 'boxville', 45000, 'box', 'https://wiki.rage.mp/images/0/09/Boxville.png'),
(12, 'Boxville 2', 'boxville2', 45000, 'box', 'https://wiki.rage.mp/images/f/fe/Boxville2.png'),
(13, 'Boxville 3', 'boxville3', 45000, 'box', 'https://wiki.rage.mp/images/5/5c/Boxville3.png'),
(14, 'Boxville 4', 'boxville4', 45000, 'box', 'https://wiki.rage.mp/images/2/29/Boxville4.png'),
(15, 'Mule 1', 'mule', 40000, 'box', 'https://wiki.rage.mp/images/thumb/e/e7/Mule.png/800px-Mule.png'),
(16, 'Mule 2', 'mule2', 40000, 'box', 'https://wiki.rage.mp/images/thumb/8/82/Mule2.png/800px-Mule2.png'),
(17, 'Mule 3', 'mule3', 40000, 'box', 'https://wiki.rage.mp/images/thumb/6/6a/Mule3.png/800px-Mule3.png'),
(18, 'Pounder', 'pounder', 55000, 'box', 'https://wiki.rage.mp/images/thumb/a/a6/Pounder.png/800px-Pounder.png'),
(20, 'Airport Bus', 'airbus', 50000, 'trans', 'https://wiki.rage.mp/images/thumb/3/32/Airbus.png/800px-Airbus.png'),
(21, 'Bus', 'bus', 50000, 'trans', 'https://wiki.rage.mp/images/thumb/4/43/Bus.png/800px-Bus.png'),
(22, 'Dashound', 'coach', 50000, 'trans', 'https://wiki.rage.mp/images/thumb/9/9d/Coach.png/800px-Coach.png'),
(23, 'Festival Bus', 'pbus2', 75000, 'trans', 'https://wiki.rage.mp/images/f/f4/Pbus2.png'),
(24, 'Rental Bus', 'rentalbus', 35000, 'trans', 'https://wiki.rage.mp/images/thumb/4/48/Rentalbus.png/800px-Rentalbus.png'),
(25, 'Tour Bus', 'tourbus', 35000, 'trans', 'https://wiki.rage.mp/images/thumb/a/ac/Tourbus.png/800px-Tourbus.png'),
(30, 'Biff', 'biff', 30000, 'other', 'https://wiki.rage.mp/images/thumb/6/62/Biff.png/800px-Biff.png'),
(31, 'Dozer', 'bulldozer', 20000, 'other', 'https://wiki.rage.mp/images/thumb/f/f5/Bulldozer.png/800px-Bulldozer.png'),
(32, 'Forklift', 'forklift', 5000, 'other', 'https://wiki.rage.mp/images/thumb/a/ab/Forklift.png/800px-Forklift.png'),
(33, 'Field Master', 'tractor2', 15000, 'other', 'https://wiki.rage.mp/images/thumb/c/c8/Tractor2.png/800px-Tractor2.png'),
(34, 'Lawn Mower', 'mower', 1500, 'other', 'https://wiki.rage.mp/images/thumb/a/a5/Mower.png/800px-Mower.png'),
(35, 'Mixer 1', 'mixer', 30000, 'other', 'https://wiki.rage.mp/images/thumb/4/4d/Mixer.png/800px-Mixer.png'),
(36, 'Mixer 2', 'mixer2', 30000, 'other', 'https://wiki.rage.mp/images/thumb/e/e7/Mixer2.png/800px-Mixer2.png'),
(37, 'Rubble', 'rubble', 30000, 'other', 'https://wiki.rage.mp/images/thumb/1/14/Rubble.png/800px-Rubble.png'),
(38, 'Scrap Truck', 'scrap', 10000, 'other', 'https://wiki.rage.mp/images/thumb/b/b8/Scrap.png/800px-Scrap.png'),
(39, 'Slamtruck', 'slamtruck', 20000, 'other', 'https://wiki.rage.mp/images/thumb/2/22/0xC1A8A914.png/800px-0xC1A8A914.png'),
(40, 'Tipper 1', 'tiptruck', 30000, 'other', 'https://wiki.rage.mp/images/thumb/2/2e/TipTruck.png/800px-TipTruck.png'),
(41, 'Tipper 2', 'tiptruck2', 30000, 'other', 'https://wiki.rage.mp/images/thumb/c/c9/TipTruck2.png/800px-TipTruck2.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_truck_categories`
--

CREATE TABLE `vs_truck_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_truck_categories`
--

INSERT INTO `vs_truck_categories` (`id`, `name`, `label`) VALUES
(1, 'haul', 'Haulers'),
(2, 'box', 'Boxed Trucks'),
(3, 'trans', 'Transport Trucks'),
(4, 'other', 'Other Trucks');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_vipboats`
--

CREATE TABLE `vs_vipboats` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_vipboats`
--

INSERT INTO `vs_vipboats` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Tropic Yacht', 'tropic2', 27000, 'boats', 'https://wiki.rage.mp/images/thumb/a/a7/Tropic2.png/800px-Tropic2.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_vipboat_categories`
--

CREATE TABLE `vs_vipboat_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_vipboat_categories`
--

INSERT INTO `vs_vipboat_categories` (`id`, `name`, `label`) VALUES
(1, 'boats', 'Boats');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_vips`
--

CREATE TABLE `vs_vips` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `model` varchar(60) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) DEFAULT NULL,
  `image` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_vips`
--

INSERT INTO `vs_vips` (`id`, `name`, `model`, `price`, `category`, `image`) VALUES
(1, 'Shotaro', 'shotaro', 30000, 'motorcycles', 'https://wiki.rage.mp/images/thumb/e/e3/Shotaro.png/800px-Shotaro.png');

-- --------------------------------------------------------

--
-- Struktura tabulky `vs_vip_categories`
--

CREATE TABLE `vs_vip_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `label` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Vypisuji data pro tabulku `vs_vip_categories`
--

INSERT INTO `vs_vip_categories` (`id`, `name`, `label`) VALUES
(1, 'motorcycles', 'Motos');

-- --------------------------------------------------------

--
-- Struktura tabulky `weashops`
--

CREATE TABLE `weashops` (
  `id` int(11) NOT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Vypisuji data pro tabulku `weashops`
--

INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
(1, 'GunShop', 'WEAPON_PISTOL', 300),
(2, 'BlackWeashop', 'WEAPON_PISTOL', 500),
(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60),
(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70),
(5, 'GunShop', 'WEAPON_MACHETE', 90),
(6, 'BlackWeashop', 'WEAPON_MACHETE', 110),
(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150),
(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150),
(9, 'GunShop', 'WEAPON_BAT', 100),
(10, 'BlackWeashop', 'WEAPON_BAT', 100),
(11, 'GunShop', 'WEAPON_STUNGUN', 50),
(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50),
(13, 'GunShop', 'WEAPON_MICROSMG', 1400),
(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700),
(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400),
(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500),
(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000),
(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000),
(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000),
(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500),
(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000),
(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000),
(23, 'GunShop', 'WEAPON_FIREWORK', 18000),
(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000),
(25, 'GunShop', 'WEAPON_GRENADE', 500),
(26, 'BlackWeashop', 'WEAPON_GRENADE', 650),
(27, 'GunShop', 'WEAPON_BZGAS', 200),
(28, 'BlackWeashop', 'WEAPON_BZGAS', 350),
(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100),
(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100),
(31, 'GunShop', 'WEAPON_BALL', 50),
(32, 'BlackWeashop', 'WEAPON_BALL', 50),
(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100),
(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100),
(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100),
(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000),
(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000),
(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000),
(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000),
(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);

-- --------------------------------------------------------

--
-- Struktura tabulky `yellow_tweets`
--

CREATE TABLE `yellow_tweets` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `addon_account`
--
ALTER TABLE `addon_account`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `addon_account_data`
--
ALTER TABLE `addon_account_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  ADD KEY `index_addon_account_data_account_name` (`account_name`);

--
-- Indexy pro tabulku `addon_inventory`
--
ALTER TABLE `addon_inventory`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  ADD KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  ADD KEY `index_addon_inventory_inventory_name` (`inventory_name`);

--
-- Indexy pro tabulku `bank_transfer`
--
ALTER TABLE `bank_transfer`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexy pro tabulku `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexy pro tabulku `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `datastore`
--
ALTER TABLE `datastore`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `datastores`
--
ALTER TABLE `datastores`
  ADD PRIMARY KEY (`name`),
  ADD KEY `owner` (`owner`);

--
-- Indexy pro tabulku `datastore_data`
--
ALTER TABLE `datastore_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  ADD KEY `index_datastore_data_name` (`name`);

--
-- Indexy pro tabulku `fine_types`
--
ALTER TABLE `fine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `insto_accounts`
--
ALTER TABLE `insto_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexy pro tabulku `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_instas_insto_accounts` (`authorId`);

--
-- Indexy pro tabulku `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_insto_likes_insto_accounts` (`authorId`),
  ADD KEY `FK_insto_likes_insto_instas` (`inapId`);

--
-- Indexy pro tabulku `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`name`),
  ADD KEY `owner` (`owner`);

--
-- Indexy pro tabulku `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `job_grades`
--
ALTER TABLE `job_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_name` (`job_name`),
  ADD KEY `grade` (`grade`);

--
-- Indexy pro tabulku `licenses`
--
ALTER TABLE `licenses`
  ADD PRIMARY KEY (`type`);

--
-- Indexy pro tabulku `linden_inventory`
--
ALTER TABLE `linden_inventory`
  ADD UNIQUE KEY `name` (`name`,`owner`);

--
-- Indexy pro tabulku `lsrp_motels`
--
ALTER TABLE `lsrp_motels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `motel_id` (`motel_id`),
  ADD KEY `ident` (`ident`);

--
-- Indexy pro tabulku `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `owned_properties`
--
ALTER TABLE `owned_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexy pro tabulku `owned_vehicles`
--
ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexy pro tabulku `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_calls`
--
ALTER TABLE `phone_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_messages`
--
ALTER TABLE `phone_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_reddit`
--
ALTER TABLE `phone_reddit`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_shops`
--
ALTER TABLE `phone_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexy pro tabulku `rented_vehicles`
--
ALTER TABLE `rented_vehicles`
  ADD PRIMARY KEY (`plate`);

--
-- Indexy pro tabulku `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store` (`store`);

--
-- Indexy pro tabulku `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexy pro tabulku `society_moneywash`
--
ALTER TABLE `society_moneywash`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `sprays`
--
ALTER TABLE `sprays`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexy pro tabulku `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_likes_twitter_accounts` (`authorId`),
  ADD KEY `FK_twitter_likes_twitter_tweets` (`tweetId`);

--
-- Indexy pro tabulku `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_twitter_tweets_twitter_accounts` (`authorId`);

--
-- Indexy pro tabulku `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `index_users_phone_number` (`phone_number`);

--
-- Indexy pro tabulku `user_contacts`
--
ALTER TABLE `user_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_user_contacts_identifier_name_number` (`identifier`,`name`,`number`);

--
-- Indexy pro tabulku `user_lastcharacter`
--
ALTER TABLE `user_lastcharacter`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Indexy pro tabulku `user_licenses`
--
ALTER TABLE `user_licenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `user_parkings`
--
ALTER TABLE `user_parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `user_slots`
--
ALTER TABLE `user_slots`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Indexy pro tabulku `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`model`),
  ADD KEY `rarity` (`rarity`);

--
-- Indexy pro tabulku `vehicleshop_categories`
--
ALTER TABLE `vehicleshop_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `vehicleshop_vehicles`
--
ALTER TABLE `vehicleshop_vehicles`
  ADD PRIMARY KEY (`code`);

--
-- Indexy pro tabulku `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`name`);

--
-- Indexy pro tabulku `vehicle_sold`
--
ALTER TABLE `vehicle_sold`
  ADD PRIMARY KEY (`plate`);

--
-- Indexy pro tabulku `vs_aircrafts`
--
ALTER TABLE `vs_aircrafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_aircraft_categories`
--
ALTER TABLE `vs_aircraft_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_ambulance`
--
ALTER TABLE `vs_ambulance`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_ambulance_categories`
--
ALTER TABLE `vs_ambulance_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_boats`
--
ALTER TABLE `vs_boats`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_boat_categories`
--
ALTER TABLE `vs_boat_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_cars`
--
ALTER TABLE `vs_cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_car_categories`
--
ALTER TABLE `vs_car_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_divisions`
--
ALTER TABLE `vs_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_division_categories`
--
ALTER TABLE `vs_division_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_mecano`
--
ALTER TABLE `vs_mecano`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_mecano_categories`
--
ALTER TABLE `vs_mecano_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_police`
--
ALTER TABLE `vs_police`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_police_categories`
--
ALTER TABLE `vs_police_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_trucks`
--
ALTER TABLE `vs_trucks`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_truck_categories`
--
ALTER TABLE `vs_truck_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_vipboats`
--
ALTER TABLE `vs_vipboats`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_vipboat_categories`
--
ALTER TABLE `vs_vipboat_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_vips`
--
ALTER TABLE `vs_vips`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `vs_vip_categories`
--
ALTER TABLE `vs_vip_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `weashops`
--
ALTER TABLE `weashops`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `addon_account_data`
--
ALTER TABLE `addon_account_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pro tabulku `addon_inventory_items`
--
ALTER TABLE `addon_inventory_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `bank_transfer`
--
ALTER TABLE `bank_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pro tabulku `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pro tabulku `cardealer_vehicles`
--
ALTER TABLE `cardealer_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `datastore_data`
--
ALTER TABLE `datastore_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT pro tabulku `fine_types`
--
ALTER TABLE `fine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT pro tabulku `insto_accounts`
--
ALTER TABLE `insto_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT pro tabulku `insto_instas`
--
ALTER TABLE `insto_instas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT pro tabulku `insto_likes`
--
ALTER TABLE `insto_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT pro tabulku `job_grades`
--
ALTER TABLE `job_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pro tabulku `lsrp_motels`
--
ALTER TABLE `lsrp_motels`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `owned_properties`
--
ALTER TABLE `owned_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pro tabulku `phone_app_chat`
--
ALTER TABLE `phone_app_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pro tabulku `phone_calls`
--
ALTER TABLE `phone_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT pro tabulku `phone_ch_reddit`
--
ALTER TABLE `phone_ch_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `phone_messages`
--
ALTER TABLE `phone_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT pro tabulku `phone_reddit`
--
ALTER TABLE `phone_reddit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `phone_shops`
--
ALTER TABLE `phone_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pro tabulku `phone_users_contacts`
--
ALTER TABLE `phone_users_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT pro tabulku `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pro tabulku `society_moneywash`
--
ALTER TABLE `society_moneywash`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `sprays`
--
ALTER TABLE `sprays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `twitter_accounts`
--
ALTER TABLE `twitter_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pro tabulku `twitter_likes`
--
ALTER TABLE `twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT pro tabulku `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10713;

--
-- AUTO_INCREMENT pro tabulku `user_contacts`
--
ALTER TABLE `user_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `user_licenses`
--
ALTER TABLE `user_licenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pro tabulku `user_parkings`
--
ALTER TABLE `user_parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pro tabulku `vs_aircrafts`
--
ALTER TABLE `vs_aircrafts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pro tabulku `vs_aircraft_categories`
--
ALTER TABLE `vs_aircraft_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `vs_ambulance`
--
ALTER TABLE `vs_ambulance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `vs_ambulance_categories`
--
ALTER TABLE `vs_ambulance_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `vs_boats`
--
ALTER TABLE `vs_boats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pro tabulku `vs_boat_categories`
--
ALTER TABLE `vs_boat_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pro tabulku `vs_cars`
--
ALTER TABLE `vs_cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;

--
-- AUTO_INCREMENT pro tabulku `vs_car_categories`
--
ALTER TABLE `vs_car_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pro tabulku `vs_divisions`
--
ALTER TABLE `vs_divisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `vs_division_categories`
--
ALTER TABLE `vs_division_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `vs_mecano`
--
ALTER TABLE `vs_mecano`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pro tabulku `vs_mecano_categories`
--
ALTER TABLE `vs_mecano_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `vs_police`
--
ALTER TABLE `vs_police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pro tabulku `vs_police_categories`
--
ALTER TABLE `vs_police_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `vs_trucks`
--
ALTER TABLE `vs_trucks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pro tabulku `vs_truck_categories`
--
ALTER TABLE `vs_truck_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pro tabulku `vs_vipboats`
--
ALTER TABLE `vs_vipboats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `vs_vipboat_categories`
--
ALTER TABLE `vs_vipboat_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `vs_vips`
--
ALTER TABLE `vs_vips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `vs_vip_categories`
--
ALTER TABLE `vs_vip_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pro tabulku `weashops`
--
ALTER TABLE `weashops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pro tabulku `yellow_tweets`
--
ALTER TABLE `yellow_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=895;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `insto_instas`
--
ALTER TABLE `insto_instas`
  ADD CONSTRAINT `FK_insto_instas_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`);

--
-- Omezení pro tabulku `insto_likes`
--
ALTER TABLE `insto_likes`
  ADD CONSTRAINT `FK_insto_likes_insto_accounts` FOREIGN KEY (`authorId`) REFERENCES `insto_accounts` (`id`),
  ADD CONSTRAINT `FK_insto_likes_insto_instas` FOREIGN KEY (`inapId`) REFERENCES `insto_instas` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `twitter_likes`
--
ALTER TABLE `twitter_likes`
  ADD CONSTRAINT `FK_twitter_likes_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`),
  ADD CONSTRAINT `FK_twitter_likes_twitter_tweets` FOREIGN KEY (`tweetId`) REFERENCES `twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Omezení pro tabulku `twitter_tweets`
--
ALTER TABLE `twitter_tweets`
  ADD CONSTRAINT `FK_twitter_tweets_twitter_accounts` FOREIGN KEY (`authorId`) REFERENCES `twitter_accounts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
