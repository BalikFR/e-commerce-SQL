-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2023 at 08:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4
-- By Balik

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commerceynov`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `street`, `city`, `postal_code`, `country`, `created_at`, `updated_at`) VALUES
(31, 2, '700 Feest Mission', 'New Zanderchester', '10024-6081', 'Zambia', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(32, 5, '58382 Joanie Inlet Suite 002', 'North Alexa', '28998', 'Philippines', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(33, 8, '607 Kub Motorway', 'Thompsontown', '50122-9974', 'Antarctica (the territory South of 60 deg S)', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(34, 3, '85990 Klein Camp', 'East Pollyview', '72909-6543', 'Uganda', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(35, 9, '01246 Emard Way', 'New Ludwig', '31669', 'French Guiana', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(36, 3, '1319 Abbott Drives Apt. 129', 'Lake Zaria', '54785', 'Belgium', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(37, 9, '760 Koch Wall', 'South Dorthabury', '23136', 'Japan', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(38, 10, '9740 Herzog Spurs', 'Port Aricville', '66745-7812', 'Nicaragua', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(39, 7, '45821 Krystal Crossroad Apt. 203', 'Strosinland', '09003', 'Netherlands Antilles', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(40, 1, '38435 Michel Heights', 'West Torranceland', '70084', 'Greece', '2023-11-14 19:12:05', '2023-11-14 19:12:05'),
(41, 7, '32593 Owen Ramp Apt. 576', 'Blandachester', '29695', 'Russian Federation', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(42, 9, '0944 Champlin Cape', 'Brekkefurt', '75574-2132', 'Monaco', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(43, 10, '90332 Monty Curve Suite 239', 'Port Antoinetteberg', '97647-7246', 'Monaco', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(44, 9, '1177 Gutmann Camp', 'West Zechariahshire', '06635', 'Costa Rica', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(45, 9, '3323 Hessel Stream Suite 519', 'Bodechester', '81019', 'Italy', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(46, 6, '21831 Schamberger Unions', 'Mooreville', '00880-5149', 'Saint Martin', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(47, 5, '89541 Kub Forge', 'Schoenmouth', '57813', 'Heard Island and McDonald Islands', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(48, 8, '97415 Mosciski Burgs', 'North Bailey', '43095', 'Lithuania', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(49, 3, '8232 Adolph Points Apt. 498', 'New Skylarville', '71214', 'Chile', '2023-11-14 19:12:11', '2023-11-14 19:12:11'),
(50, 6, '6369 Lizeth Shoal', 'South Loyce', '50432', 'Togo', '2023-11-14 19:12:11', '2023-11-14 19:12:11');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 9, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(2, 9, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(3, 3, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(4, 7, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(5, 4, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(6, 1, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(7, 5, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(8, 1, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(9, 1, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(10, 8, '2023-11-14 18:31:43', '2023-11-14 18:31:43'),
(11, 2, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(12, 6, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(13, 2, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(14, 5, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(15, 4, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(16, 1, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(17, 7, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(18, 3, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(19, 8, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(20, 5, '2023-11-14 18:41:02', '2023-11-14 18:41:02'),
(21, 6, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(22, 10, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(23, 7, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(24, 6, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(25, 3, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(26, 2, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(27, 9, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(28, 5, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(29, 8, '2023-11-14 19:07:32', '2023-11-14 19:07:32'),
(30, 6, '2023-11-14 19:07:32', '2023-11-14 19:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `command_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`command_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 5, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(2, 7, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(3, 3, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(4, 8, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(5, 2, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(6, 10, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(7, 8, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(8, 9, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(9, 9, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(10, 7, '2023-11-14 18:31:46', '2023-11-14 18:31:46'),
(11, 6, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(12, 2, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(13, 3, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(14, 3, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(15, 3, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(16, 9, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(17, 9, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(18, 4, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(19, 6, '2023-11-14 18:40:52', '2023-11-14 18:40:52'),
(20, 9, '2023-11-14 18:40:52', '2023-11-14 18:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `command_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_status` enum('pending','paid') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_id`, `command_id`, `total_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 10, 37.98, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(2, 9, 53.46, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(3, 5, 85.08, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(4, 8, 92.86, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(5, 10, 65.08, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(6, 5, 69.88, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(7, 3, 69.79, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(8, 10, 24.69, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(9, 3, 78.91, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05'),
(10, 5, 72.18, 'pending', '2023-11-14 18:44:05', '2023-11-14 18:44:05');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `iban` varchar(30) DEFAULT NULL,
  `card_number` varchar(16) DEFAULT NULL,
  `expiration_date` varchar(7) DEFAULT NULL,
  `cvv` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `user_id`, `payment_method`, `iban`, `card_number`, `expiration_date`, `cvv`) VALUES
(11, 5, 'Credit Card', 'FR77249304855047584521647', '4439319637514740', '01/2024', '744'),
(12, 10, 'Credit Card', 'FR88534913342145565492838', '4276671280757879', '09/2027', '135'),
(13, 7, 'Credit Card', 'FR58636962809331584324334', '4421221511763693', '04/2025', '136'),
(14, 3, 'Credit Card', 'FR23574563670081917186962', '4951082712930397', '01/2027', '407'),
(15, 8, 'Credit Card', 'FR71423902391774922260026', '4905632715968870', '09/2024', '544'),
(16, 7, 'Credit Card', 'FR23598242604180983654332', '4630091616580136', '03/2025', '334'),
(17, 10, 'Credit Card', 'FR52405872342844642073261', '4879351194153282', '11/2028', '420'),
(18, 7, 'Credit Card', 'FR14676087957657717662466', '4752279623734516', '12/2026', '263'),
(19, 1, 'Credit Card', 'FR94967805347770147260567', '4668840829145944', '06/2025', '786'),
(20, 5, 'Credit Card', 'FR77813369905871627191873', '4518093609206522', '07/2025', '937'),
(21, 7, 'Credit Card', 'FR82696796170238555380545', '4917027627075744', '11/2028', '674'),
(22, 2, 'Credit Card', 'FR51202804349672057416263', '4592574418772626', '04/2028', '628'),
(23, 1, 'Credit Card', 'FR97610773216578049270664', '4974710833978633', '01/2024', '713'),
(24, 10, 'Credit Card', 'FR93464879587977741012335', '4119784035647179', '08/2025', '279'),
(25, 4, 'Credit Card', 'FR65667537953592231169307', '4191062591965791', '12/2026', '394'),
(26, 6, 'Credit Card', 'FR66557069595511771942953', '4490565665006488', '09/2027', '361'),
(27, 10, 'Credit Card', 'FR95592427826264598392490', '4238787559184384', '12/2024', '812'),
(28, 6, 'Credit Card', 'FR74772418694047809028551', '4162543207174456', '06/2027', '488'),
(29, 3, 'Credit Card', 'FR55945228476840613997212', '4582156279719962', '08/2027', '298'),
(30, 2, 'Credit Card', 'FR91983759096310941794742', '4952243694467220', '08/2028', '244'),
(31, 10, 'Credit Card', 'FR18637975945249546512900', '4329344627588675', '12/2024', '697'),
(32, 3, 'Credit Card', 'FR60320132184567568943713', '4374682817244584', '05/2027', '354'),
(33, 7, 'Credit Card', 'FR86704382678216051362331', '4856102281622372', '06/2024', '785'),
(34, 3, 'Credit Card', 'FR96866652328480239274637', '4400841857490065', '03/2026', '225'),
(35, 10, 'Credit Card', 'FR55510216903049299524032', '4083664440526187', '12/2028', '633'),
(36, 5, 'Credit Card', 'FR33971516372963480058554', '4501950027192039', '08/2025', '448'),
(37, 4, 'Credit Card', 'FR96681884654630882421826', '4310198458735580', '04/2025', '558'),
(38, 6, 'Credit Card', 'FR44793057159085152207579', '4441104992966069', '02/2028', '820'),
(39, 4, 'Credit Card', 'FR23867673627512684583544', '4150476074982457', '07/2028', '665'),
(40, 2, 'Credit Card', 'FR36492015464194627104642', '4553025539611861', '06/2026', '973'),
(41, 7, 'Credit Card', 'FR78984118668463958327006', '4046092409080507', '12/2028', '718'),
(42, 9, 'Credit Card', 'FR18363792843772316053351', '4661387608119159', '03/2027', '214'),
(43, 4, 'Credit Card', 'FR50443428962594892987223', '4808525007569567', '09/2027', '141'),
(44, 8, 'Credit Card', 'FR14301009792794308945309', '4288231682161686', '01/2025', '210'),
(45, 2, 'Credit Card', 'FR10398348725544321820138', '4454327764296324', '07/2028', '496'),
(46, 8, 'Credit Card', 'FR65869666341897392962682', '4181479027266727', '08/2024', '477'),
(47, 9, 'Credit Card', 'FR23171724030065973815834', '4558258495000430', '07/2028', '616'),
(48, 7, 'Credit Card', 'FR27177714495327776965920', '4611420326987276', '10/2025', '578'),
(49, 2, 'Credit Card', 'FR14685108749974079681636', '4987541705374686', '07/2027', '113'),
(50, 9, 'Credit Card', 'FR20934071152497627927403', '4220410760502242', '03/2028', '250');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `user_id`, `product_id`, `photo_url`) VALUES
(1, 4, 9, 'http://lorempixel.com/640/480/?51377'),
(2, 8, 3, 'http://lorempixel.com/640/480/?84564'),
(3, 2, 9, 'http://lorempixel.com/640/480/?19183'),
(4, 1, 1, 'http://lorempixel.com/640/480/?51468'),
(5, 3, 5, 'http://lorempixel.com/640/480/?51590'),
(6, 10, 7, 'http://lorempixel.com/640/480/?95891'),
(7, 2, 8, 'http://lorempixel.com/640/480/?33527'),
(8, 4, 1, 'http://lorempixel.com/640/480/?63024'),
(9, 10, 9, 'http://lorempixel.com/640/480/?60268'),
(10, 5, 7, 'http://lorempixel.com/640/480/?45908');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock_quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(1, 'deleniti', 'Description statique pour le produit deleniti.', 16.25, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(2, 'quod', 'Description statique pour le produit quod.', 87.43, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(3, 'dicta', 'Description statique pour le produit dicta.', 65.52, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(4, 'eaque', 'Description statique pour le produit eaque.', 88.24, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(5, 'architecto', 'Description statique pour le produit architecto.', 39.82, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(6, 'dolores', 'Description statique pour le produit dolores.', 50.66, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(7, 'molestiae', 'Description statique pour le produit molestiae.', 66.12, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(8, 'quia', 'Description statique pour le produit quia.', 91.45, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(9, 'aperiam', 'Description statique pour le produit aperiam.', 35.24, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(10, 'exercitationem', 'Description statique pour le produit exercitationem.', 73.49, 0, '2023-11-14 18:36:55', '2023-11-14 18:36:55'),
(11, 'doloribus', 'Description statique pour le produit doloribus.', 98.53, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(12, 'in', 'Description statique pour le produit in.', 81.78, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(13, 'similique', 'Description statique pour le produit similique.', 60.20, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(14, 'voluptatibus', 'Description statique pour le produit voluptatibus.', 82.48, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(15, 'enim', 'Description statique pour le produit enim.', 74.86, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(16, 'quos', 'Description statique pour le produit quos.', 87.28, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(17, 'rerum', 'Description statique pour le produit rerum.', 23.67, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(18, 'illum', 'Description statique pour le produit illum.', 53.34, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(19, 'eum', 'Description statique pour le produit eum.', 73.32, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16'),
(20, 'quam', 'Description statique pour le produit quam.', 14.90, 0, '2023-11-14 18:37:16', '2023-11-14 18:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `rate_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`rate_id`, `user_id`, `product_id`, `rating`, `review`) VALUES
(1, 8, 6, 2, 'Alice ventured to taste it, and yet it was very like a Jack-in-the-box, and up the conversation dropped, and the moment how large she had brought herself down to look about her any more HERE.\' \'But.'),
(2, 3, 3, 4, 'King. \'It began with the other side. The further off from England the nearer is to find that she never knew whether it was only sobbing,\' she thought, \'and hand round the table, but it had been, it.'),
(3, 7, 2, 1, 'I almost think I can kick a little!\' She drew her foot slipped, and in despair she put it. She went in without knocking, and hurried upstairs, in great fear lest she should push the matter worse..'),
(4, 5, 8, 1, 'Alice to find my way into a pig, and she felt sure it would be the right words,\' said poor Alice, that she was to find her in an undertone to the dance. So they began solemnly dancing round and get.'),
(5, 6, 3, 2, 'Mouse to tell me who YOU are, first.\' \'Why?\' said the Caterpillar. \'Well, perhaps you haven\'t found it so yet,\' said the Duchess; \'and that\'s the jury, in a low voice, \'Your Majesty must.'),
(6, 3, 5, 1, 'The first witness was the first figure,\' said the Cat, and vanished. Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a deep sigh, \'I was a dead silence. \'It\'s a mineral, I.'),
(7, 3, 9, 3, 'Hatter was out of sight, they were lying on the bank, and of having nothing to do.\" Said the mouse doesn\'t get out.\" Only I don\'t keep the same tone, exactly as if she did not answer, so Alice soon.'),
(8, 7, 10, 3, 'Alice could hear the Rabbit coming to look through into the loveliest garden you ever saw. How she longed to get her head impatiently; and, turning to Alice, and tried to fancy to cats if you like!\'.'),
(9, 10, 4, 2, 'I\'ve got to?\' (Alice had been looking at Alice as he spoke. \'A cat may look at the great hall, with the distant green leaves. As there seemed to think that will be When they take us up and said,.'),
(10, 4, 6, 5, 'Alice\'s side as she could. \'No,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, looking down at once, with a deep voice, \'What are you thinking of?\' \'I beg pardon, your Majesty,\'.'),
(11, 9, 2, 3, 'Mouse\'s tail; \'but why do you know about it, and yet it was very hot, she kept tossing the baby with some difficulty, as it can talk: at any rate: go and take it away!\' There was not a moment to be.'),
(12, 3, 2, 3, 'She took down a large ring, with the Queen, and Alice looked up, but it had no very clear notion how delightful it will be much the most important piece of rudeness was more than three.\' \'Your hair.'),
(13, 8, 7, 2, 'Queen\'s shrill cries to the jury. They were indeed a queer-looking party that assembled on the top of his tail. \'As if I might venture to ask any more HERE.\' \'But then,\' thought Alice, and, after.'),
(14, 8, 7, 5, 'Alice said; \'there\'s a large cat which was full of tears, until there was a paper label, with the grin, which remained some time after the others. \'Are their heads off?\' shouted the Queen, pointing.'),
(15, 5, 3, 5, 'HIS time of life. The King\'s argument was, that if something wasn\'t done about it just at present--at least I mean what I should be like then?\' And she tried another question. \'What sort of a globe.'),
(16, 9, 8, 1, 'Alice replied: \'what\'s the answer?\' \'I haven\'t the slightest idea,\' said the Gryphon as if she meant to take MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Of course not,\' said the.'),
(17, 1, 3, 2, 'Alice, quite forgetting in the newspapers, at the Queen, \'and he shall tell you my history, and you\'ll understand why it is right?\' \'In my youth,\' Father William replied to his son, \'I feared it.'),
(18, 6, 1, 5, 'Gryphon, the squeaking of the house before she got up this morning? I almost think I can find them.\' As she said to herself, \'if one only knew how to begin.\' For, you see, Miss, we\'re doing our.'),
(19, 6, 5, 2, 'Hatter, \'or you\'ll be asleep again before it\'s done.\' \'Once upon a heap of sticks and dry leaves, and the blades of grass, but she got up in her haste, she had read several nice little dog near our.'),
(20, 7, 10, 2, 'Bill had left off when they liked, so that they were nowhere to be ashamed of yourself,\' said Alice, \'we learned French and music.\' \'And washing?\' said the Mouse to tell you--all I know I have done.');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password_hash`, `email`, `first_name`, `last_name`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 'Neva09', '$2y$10$ylbUsuDf6SUCCFcwu7LUX.5NqkRSdGKIceoPT3DGl10JeytHA7LeK', 'Boyle.Johnathon@yahoo.com', 'Gavin', 'Kub', '+19(0)501211107', '2023-11-14 18:06:55', '2023-11-14 18:06:55'),
(2, 'Sunny.Schmeler', '$2y$10$OMbKxjsD4b0vH/FlZ.B3VuwmxFLMemp9Wy/XSNyaWsgY.3v.hMFke', 'dBaumbach@Vandervort.com', 'Jarret', 'Schamberger', '551.554.7923', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(3, 'Miller.Johanna', '$2y$10$/W4fWP/YVO19LT3SicwaTOgFP/lxboafOVVZYd0DcUzmcD3X3H/1O', 'Valentine10@gmail.com', 'Thad', 'Nienow', '(681)022-9199', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(4, 'Hansen.Sofia', '$2y$10$QEpLcUrZmmgfa7DqaKtfq.4ryw2WNAnBWhVUhqM0IJtWRLPiszugS', 'Edd.Lesch@Kessler.org', 'Kade', 'Bogan', '1-945-697-2898', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(5, 'Klocko.Davonte', '$2y$10$4sfC6M/XxoY0v8ZwbmhbjeTj4E8M/pQ9/rD9kcAgad4TpBr/n/wjm', 'Eli86@yahoo.com', 'Josianne', 'O\'Reilly', '+19(7)257951509', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(6, 'Queenie41', '$2y$10$Ir7XZd1uMuE3Qz2pH2JfyODVi3ThVtdKRaC6TvfDw83hWKYGN//se', 'Eliane40@gmail.com', 'Kay', 'Zieme', '1-307-245-0249x', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(7, 'Donnie.Lubowitz', '$2y$10$7EEK30TFwoOdp6ymjr.eu.BU.SbI4FSf3nY6S.fS63Un7EtHz2vUi', 'Daija89@yahoo.com', 'Thaddeus', 'Orn', '+25(2)158381691', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(8, 'Billie11', '$2y$10$EKWTRo2t0ihhdHEv0AqJmOxV6rmMtRbFvcFQY.mHTYmzIMWv7SdDK', 'Esperanza.Greenfelder@yahoo.com', 'Emmett', 'Dietrich', '1-775-957-5416', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(9, 'Roxanne86', '$2y$10$KaDyGC8y3BKDE.UaSM1iFOvFhqm8Jf0c2MH.QpED1Qe0C.EubxaVC', 'Vernie.Daugherty@Brakus.com', 'Reva', 'Carter', '413.520.4961', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(10, 'wRitchie', '$2y$10$sKFshBBeiNQWzGRv3eTVm.8sCz5lM9haUi32fz0F1PRP3D9AMoYf2', 'Damien.Jenkins@yahoo.com', 'Delphine', 'Fritsch', '416-387-6213x65', '2023-11-14 18:06:56', '2023-11-14 18:06:56'),
(11, 'jBartoletti', '$2y$10$ZNr8gpNnHiNCsxn5usUppOoq/M/yzxr/gynjSrwvW1CyvIoUhA4T2', 'Emmerich.Eloy@Kerluke.org', 'Hellen', 'Bechtelar', '06783054245', '2023-11-14 18:31:17', '2023-11-14 18:31:17'),
(12, 'Jordane.Heidenreich', '$2y$10$hQw0motT7r4Qon/CzNNTc.n2PvX2CpymeuVwMJ5lUl.Gy8IATxj2G', 'Dewitt.Wiza@Wilderman.biz', 'Nils', 'Moore', '00655731060', '2023-11-14 18:31:17', '2023-11-14 18:31:17'),
(13, 'Etha79', '$2y$10$nSaoMjAnB3CCEt/EKieGeOYx0a9wLDHmKZRURrHSEmPgQNMIAEj4S', 'Tyshawn09@hotmail.com', 'Cyril', 'Gusikowski', '939-330-2791', '2023-11-14 18:31:17', '2023-11-14 18:31:17'),
(14, 'pHane', '$2y$10$71gBWcVsHckftkYt.RH5P.FyKr4GArp/wTuuQgyvwZX0dPIl9JFB6', 'Brendon.DuBuque@Eichmann.com', 'Noemie', 'Renner', '1-071-180-8639x', '2023-11-14 18:31:17', '2023-11-14 18:31:17'),
(15, 'wReichert', '$2y$10$iFiiqp.1Ako8cVDmH2Trq.2URaE97cHgHGXYRH5i4zrT3d1zW0jlK', 'Cummerata.Humberto@yahoo.com', 'Christine', 'Zulauf', '686.155.7847x30', '2023-11-14 18:31:17', '2023-11-14 18:31:17'),
(16, 'Kertzmann.Guido', '$2y$10$vhs1wBCYSYOQpSFWQog0geo9bZewpJwC/FMx4xdNOaLN4VWYeh806', 'Davon32@yahoo.com', 'Lucious', 'Vandervort', '580-382-8121', '2023-11-14 18:31:18', '2023-11-14 18:31:18'),
(17, 'Tara18', '$2y$10$KTZVuiCcpaZ5bqx92FqN3eTQIT6pE8z0VAELGbjkxTZ/G7eQAvshK', 'cTowne@gmail.com', 'Andreane', 'McKenzie', '1-705-684-1274x', '2023-11-14 18:31:18', '2023-11-14 18:31:18'),
(18, 'Sporer.Juana', '$2y$10$chxwxpJw9jBD3doJmMX0luNsFuktiocZjBRO9PxfjKvtgGWYbEfqm', 'Brigitte.Funk@yahoo.com', 'Therese', 'Mayer', '05627542342', '2023-11-14 18:31:18', '2023-11-14 18:31:18'),
(19, 'uVonRueden', '$2y$10$9DFWieCHXhrFsamZuY4kcOVjYnfOp9cbzhVnRmB6f/OHXoQBtdXPK', 'VonRueden.Candido@hotmail.com', 'Tate', 'Bernhard', '1-900-135-2115', '2023-11-14 18:31:18', '2023-11-14 18:31:18'),
(20, 'Jerel.Bartoletti', '$2y$10$9W3.E31yzpjJJKslbWUzgu3Ajiesk13OgUHDBg358odEE0Yy8wX5O', 'Arlo.Casper@yahoo.com', 'Ellsworth', 'Emmerich', '08294876188', '2023-11-14 18:31:18', '2023-11-14 18:31:18'),
(21, 'Gustave75', '$2y$10$PT.djsr6aUua.zjtR/pkc.pNN/pYvOa0t8jI.iHNotF6TfwCE6lEa', 'Carroll.Bud@gmail.com', 'Dylan', 'Breitenberg', '1-750-592-7892x', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(22, 'Goodwin.Julian', '$2y$10$qI3zCD05cH2AoslJSO0aJODmayAaM4cLUmKRL.D2CcnVv/JlBY68C', 'Renner.Jaden@Rodriguez.org', 'Weldon', 'Herzog', '740.744.0110x58', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(23, 'Clark86', '$2y$10$6I38h0fdb92f7g62kMjo1.dQOlNdb6t9NxSsVDzYS3UF3etGAZOYy', 'Kitty53@Doyle.com', 'Dawn', 'Wuckert', '642.421.1945x99', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(24, 'Ursula77', '$2y$10$pVE6vcLjiifRNkFjbOB2ceh6n33T4GdvjpRUkYlvmU3dj1f3XuDXm', 'Cornelius.Kertzmann@Heathcote.info', 'Jazmin', 'Harber', '1-007-753-8639x', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(25, 'Lionel80', '$2y$10$SYpGlfaKnnIP3oI3r7HgvuWjIa.kjwgze/Im4zeJL3QVtVl1Y.SeK', 'Emilio67@Harvey.net', 'Dorcas', 'Schamberger', '1-334-017-2314x', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(26, 'Lyla84', '$2y$10$/GzIxjChITZW5NILoM0Thuk4JaSkOQyciQXszStnhcc58cN9p9ib6', 'Geovanny31@gmail.com', 'Jovany', 'Leffler', '+35(9)181222483', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(27, 'Rath.Tyra', '$2y$10$7vApK0N0LKfRyUpY3v7YlO68EzxfvCnhnC7X00zXtkUcfwCIMS9dS', 'Norma34@Lemke.biz', 'Dell', 'Tromp', '034-891-6204', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(28, 'Lonny12', '$2y$10$l87zRUAS.sE8Ka2.iINsBuDTlzfXC/7WQsh00bJpeT8EFsKYzsExq', 'Quigley.Jordy@yahoo.com', 'Winfield', 'Wiza', '764-907-7321', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(29, 'Cayla68', '$2y$10$JMylYlTgT0FNC/v55Bf7puX.bmm3E8ewkXmCye9b4tKbyxCd6G0vG', 'tDare@Wisoky.net', 'Caleigh', 'Cassin', '1-998-293-8573', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(30, 'jOHara', '$2y$10$LIVeNqOaArFbr4YujD5s.eWtfe3HWbjFCC8A5uSlp1bqEGPYKpA02', 'Mohr.Cielo@Rodriguez.net', 'Tyree', 'Gleason', '588.306.8058x92', '2023-11-14 18:31:57', '2023-11-14 18:31:57'),
(31, 'Harber.Tiara', '$2y$10$UalP4FXY0JQGikVq89n8/eVAFCciLKwODiNny6TOdWNzFArBclloy', 'Robert.Robel@yahoo.com', 'Jada', 'O\'Connell', '1-415-370-3902', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(32, 'Ebert.Margarita', '$2y$10$qQ1Hg3o1BqOgUXEj3E/XHOE/V295UMhgAV5nHvL.ePaZPLKPXxPzO', 'Jacobs.Ayla@Sipes.com', 'Johathan', 'Feest', '684-554-7709x49', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(33, 'tDAmore', '$2y$10$qFqsxDVGDeoR1IRZyMZINOAhejm6emqkJs8qZdJYDOGJzIzD4zscu', 'OKeefe.Delta@gmail.com', 'Jeremie', 'Paucek', '618-298-2903x20', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(34, 'Lonny13', '$2y$10$HrrUG6yFK12tsUeo06JgEud7588gePV2bLyHDe9VDZOTcb8J6M2li', 'mGlover@Hahn.com', 'Shanny', 'Quitzon', '1-707-180-5841', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(35, 'Roxanne.Quitzon', '$2y$10$3YfmJ//XV9lUQIDLT9GuXeXg1MSh8Tr050n42g9b7B70yCcJrwKLy', 'OConner.Kiara@gmail.com', 'Mollie', 'Bernier', '1-770-318-9416', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(36, 'Aurelio45', '$2y$10$BnyyKIZwIZZXIOIqlS18uObSGoUIXWkh6wz1bPA6rrEjtXV5L3eMO', 'Jailyn.Halvorson@hotmail.com', 'Cassidy', 'Mayer', '(006)759-0531x9', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(37, 'Larson.Juwan', '$2y$10$h6hOLU2LAzerjBQpatx9tuxKSBk8QtMph2lGVMFtbGLwZVeAyIk/a', 'Hermina.Ruecker@hotmail.com', 'Joanie', 'Halvorson', '820-765-1634x76', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(38, 'Reichel.Braxton', '$2y$10$FkamG5/mBJ.nIIrGgMQYRuXMZ1fl5I176IA5CJlZ0wzx0ky5L8UBW', 'Lind.Pascale@Marvin.org', 'Lourdes', 'Raynor', '(797)178-7596x3', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(39, 'Macejkovic.Julien', '$2y$10$75vfI7zY6JfmWepytmuDkOHbhyKXFPf/ACqlI91K32c0V5Fo2G26K', 'hThompson@yahoo.com', 'Dasia', 'Stamm', '03588388196', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(40, 'Keith96', '$2y$10$d.Dbx7/8Kn5mieDCjKPDVOfuYy0WAphR/foUz6D1Pu9J33XikMCXC', 'Berta12@Schmeler.org', 'Effie', 'Koch', '+56(5)014235427', '2023-11-14 18:37:14', '2023-11-14 18:37:14'),
(41, 'Bria.Jacobson', '$2y$10$w7bSwgRS5kFEnEsBDCWMd.mGFCinqc2Du2X0If3PhXiDV1FUJe7l6', 'Jalen65@Hodkiewicz.com', 'Danny', 'Botsford', '(114)263-8073x3', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(42, 'Boehm.Adah', '$2y$10$9Eeq5gsT2uRA49W98dvIcO2.lz41jUCahzreyVcDVJHozSuEch.N.', 'uKilback@Russel.com', 'Fae', 'Schiller', '+58(4)815306872', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(43, 'Ruben62', '$2y$10$8sYEXzMBAQ2i5X7IdnrbzemZBEiZ9uEBqOc3Cfkg6A.84vPWHCh8O', 'Wendell33@gmail.com', 'Michelle', 'Wunsch', '611.289.5803x29', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(44, 'Beahan.Layla', '$2y$10$14yc42T3jDCy.IvjzatqG.V2v9bhFeT6xmL.ln.8e9IVl9fbXzpZO', 'zDicki@Kozey.com', 'Frederic', 'Bradtke', '553-913-6094x60', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(45, 'Bernardo.Kohler', '$2y$10$../s3xFxRpcBoTCFuEXMJOpxShc..JLyTn4DCuvmXIu5lPBE7VOf6', 'Wilbert56@Maggio.com', 'Ara', 'Collins', '1-990-659-8065x', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(46, 'Margaretta32', '$2y$10$b4akS.xQPAfAN8E1t6QwnuLYxvi5BUf1c2NEcmNTqMRhJwh8F.QZ2', 'pLockman@Strosin.net', 'Columbus', 'Stanton', '450-010-2743x91', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(47, 'Mable.Little', '$2y$10$kS68fjSwb/5w7iPFKn.kQOOXdNBupOvP6Ak3/7cPosi60EGOqMkOa', 'Barrows.Chelsea@Kautzer.com', 'Herbert', 'McKenzie', '868-263-7403x96', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(48, 'Selena89', '$2y$10$SeH6KPulhILxDch8ou2gqu5g1HY82iL3aEy6nx8TINThSAWzlw0tS', 'Blaze08@yahoo.com', 'Eulalia', 'Ryan', '308-739-6299x82', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(49, 'Terrill.Walter', '$2y$10$gNAf5Z5Z/v7OZ7iax4hCDudsPiy9xH6E2FV7g1SNNxHYRgP/29tDy', 'bUpton@gmail.com', 'Richard', 'Schaefer', '1-307-502-1785x', '2023-11-14 19:07:35', '2023-11-14 19:07:35'),
(50, 'Wayne60', '$2y$10$4AOlUFC8CfwQJAxSxagzB.9Z9cDokf9lBUYeIGT3y8mHyxMYcqgnS', 'Jast.Amos@yahoo.com', 'Curt', 'Watsica', '(376)982-9839', '2023-11-14 19:07:35', '2023-11-14 19:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`user_id`, `product_id`, `quantity`) VALUES
(1, 8, 4),
(1, 14, 2),
(2, 8, 4),
(2, 15, 2),
(3, 10, 2),
(4, 7, 2),
(4, 10, 1),
(7, 19, 4),
(8, 1, 4),
(8, 13, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`command_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `command_id` (`command_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `command_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `command`
--
ALTER TABLE `command`
  ADD CONSTRAINT `command_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_ibfk_1` FOREIGN KEY (`command_id`) REFERENCES `command` (`command_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `photo_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `rate`
--
ALTER TABLE `rate`
  ADD CONSTRAINT `rate_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `rate_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD CONSTRAINT `user_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `user_cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
