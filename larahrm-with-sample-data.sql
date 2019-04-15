-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 12:59 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `larahrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `absences`
--

CREATE TABLE IF NOT EXISTS `absences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE IF NOT EXISTS `attendances` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` datetime NOT NULL,
  `time_out` datetime NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `user_id`, `date`, `time_in`, `time_out`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '2016-05-01', '2016-05-03 13:15:00', '2016-05-03 13:15:00', NULL, '2016-05-02 21:22:18', '2016-05-02 21:22:18'),
(2, 2, '2016-05-03', '2016-05-03 13:15:00', '2016-05-03 13:15:00', NULL, '2016-05-02 21:23:10', '2016-05-03 01:20:40'),
(3, 2, '2016-05-04', '2016-05-03 13:15:00', '2016-05-03 13:15:00', NULL, '2016-05-02 21:23:18', '2016-05-03 01:20:40'),
(4, 2, '2016-05-05', '2016-05-03 10:00:00', '2016-05-03 23:01:00', NULL, '2016-05-03 01:19:43', '2016-05-03 01:20:40'),
(5, 2, '2016-05-02', '2016-05-03 19:00:00', '2016-05-03 09:20:00', NULL, '2016-05-03 01:20:19', '2016-05-03 01:20:40'),
(6, 2, '2016-05-06', '2016-05-03 11:30:00', '2016-05-03 07:00:00', NULL, '2016-05-03 01:20:19', '2016-05-03 01:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `award_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gift_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cash_price` decimal(10,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `user_id`, `award_name`, `gift_item`, `cash_price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 26, 'Reiciendis.', 'Quasi dolor est ut.', '4720.00', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(2, 35, 'Expedita ipsa totam.', 'Quas qui iusto et.', '1105.00', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(3, 11, 'Recusandae fugiat.', 'Id dolorem dolor.', '3210.00', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(4, 27, 'Facilis a maiores.', 'Consectetur aut.', '4345.00', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(5, 26, 'Debitis dolores.', 'Reiciendis earum.', '3588.00', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(6, 9, 'Recusandae error.', 'Maxime delectus.', '2916.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(7, 11, 'Laborum expedita.', 'Ea quas facilis ut.', '1628.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(8, 14, 'Voluptatem voluptas.', 'Qui eos soluta.', '1824.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(9, 5, 'Ea et sunt eligendi.', 'Voluptatem debitis.', '735.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(10, 26, 'Aliquam porro.', 'Aliquid vel quia ut.', '3598.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(11, 49, 'Est aut eum modi.', 'Iure et ut ut ipsam.', '4327.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(12, 20, 'Quas deserunt.', 'Eaque dolore autem.', '3382.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(13, 45, 'Qui repellendus ut.', 'Rerum in assumenda.', '2062.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(14, 29, 'Similique magni ut.', 'Illum eius velit.', '1832.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(15, 40, 'Temporibus corrupti.', 'Impedit dolorum.', '971.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(16, 9, 'Totam neque ipsa.', 'Excepturi nostrum.', '2966.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(17, 1, 'Dolor vel nulla.', 'Id velit cupiditate.', '3702.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(18, 44, 'Qui a repudiandae.', 'Molestias.', '3731.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(19, 12, 'Ad iusto molestiae.', 'Vero quisquam ut.', '3268.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(20, 12, 'In dolor veritatis.', 'Quia aperiam.', '4901.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(21, 44, 'Tenetur minima.', 'Dignissimos culpa.', '2560.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(22, 41, 'Error deserunt eos.', 'Quia illum eum.', '4484.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(23, 13, 'Voluptas error.', 'Ipsum error soluta.', '1227.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(24, 46, 'Consequatur placeat.', 'Cumque ad hic totam.', '4581.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(25, 33, 'Voluptas non.', 'Repellendus.', '3062.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(26, 47, 'Recusandae et quis.', 'Commodi beatae.', '2047.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(27, 29, 'Occaecati quis.', 'Doloremque quasi.', '1154.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(28, 24, 'Ullam quaerat.', 'Enim velit dolorem.', '2510.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(29, 9, 'Est odio et.', 'Qui minus eligendi.', '3559.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(30, 1, 'A deleniti optio.', 'Facere tempora et.', '2201.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(31, 41, 'Et provident.', 'Placeat omnis hic.', '4627.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(32, 39, 'Et veritatis soluta.', 'Architecto quia.', '2605.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(33, 44, 'Et neque facilis.', 'Enim repudiandae.', '1613.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(34, 21, 'Itaque cumque.', 'Recusandae in quia.', '4356.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(35, 40, 'Laborum esse qui.', 'Architecto aliquid.', '2144.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(36, 32, 'Et id dolores quo.', 'Excepturi quis.', '3703.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(37, 40, 'Et fugiat officiis.', 'Magnam natus.', '4700.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(38, 17, 'Minima doloremque.', 'Aut ratione eos aut.', '4459.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(39, 20, 'Voluptatem et sunt.', 'Tempore vel.', '3048.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(40, 27, 'Doloremque.', 'Magnam consectetur.', '4083.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(41, 31, 'Harum assumenda.', 'Voluptatum.', '2666.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(42, 1, 'Eaque assumenda.', 'Repudiandae.', '2144.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(43, 8, 'Autem culpa nisi.', 'Aspernatur.', '1044.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(44, 50, 'Voluptatem quisquam.', 'Aperiam odio quas.', '4190.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(45, 36, 'Ut dolores optio.', 'Ducimus perferendis.', '1177.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(46, 5, 'Libero accusamus.', 'Quibusdam omnis.', '1742.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(47, 9, 'Natus deleniti.', 'Consequatur totam.', '2162.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(48, 50, 'Tempora unde.', 'Est est placeat.', '3502.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(49, 10, 'Asperiores.', 'Quam quae aut sed.', '3562.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(50, 28, 'Qui natus fuga.', 'Qui libero ducimus.', '1399.00', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE IF NOT EXISTS `bank_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `account_number` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `bank_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_name`, `account_number`, `bank_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Esse explicabo aut.', '99747158', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(2, 2, 'Velit quo eos quasi.', '7143908', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(3, 3, 'Delectus laboriosam.', '91735518', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(4, 4, 'Quaerat qui.', '24478676', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(5, 5, 'Qui dicta excepturi.', '14923729', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(6, 6, 'Tempore.', '56154363', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(7, 7, 'Vel sed officiis.', '10783143', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(8, 8, 'Vel vitae iusto est.', '27798722', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(9, 9, 'Et facilis impedit.', '61016813', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(10, 10, 'Voluptatibus.', '74798628', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(11, 11, 'Facilis ea facere.', '7932015', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(12, 12, 'Et in provident aut.', '61451571', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(13, 13, 'Neque veritatis.', '86694754', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(14, 14, 'Voluptatem aut.', '9321116', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(15, 15, 'Necessitatibus.', '43221104', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(16, 16, 'Quia eveniet.', '17932050', 'EastWest', NULL, '2016-05-02 21:20:08', '2016-05-02 21:20:08'),
(17, 17, 'Consequatur optio.', '45815190', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(18, 18, 'Modi enim.', '90420430', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(19, 19, 'Suscipit error.', '29382001', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(20, 20, 'Expedita eos iure.', '26356837', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(21, 21, 'Deleniti adipisci.', '11384915', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(22, 22, 'Aperiam repellat.', '48714336', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(23, 23, 'Nulla modi eaque.', '35175569', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(24, 24, 'Enim a occaecati.', '87506957', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(25, 25, 'Dolorum commodi.', '81595273', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(26, 26, 'Beatae rem hic at.', '42960140', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(27, 27, 'Incidunt dolores.', '58862011', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(28, 28, 'Quod reiciendis.', '4738745', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(29, 29, 'Reprehenderit sed.', '48761758', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(30, 30, 'Laudantium id.', '93194894', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(31, 31, 'Saepe laboriosam.', '26962421', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(32, 32, 'Id quam autem.', '88038478', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(33, 33, 'In doloribus dicta.', '66347270', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(34, 34, 'Iusto ut iste nisi.', '49013264', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(35, 35, 'Harum animi saepe.', '53049280', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(36, 36, 'Dolorem eos cumque.', '11451719', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(37, 37, 'Omnis quas.', '89607403', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(38, 38, 'Laudantium commodi.', '98927088', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(39, 39, 'Iure officiis.', '91394452', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(40, 40, 'Ut distinctio.', '64787034', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(41, 41, 'Consequatur enim.', '74520531', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(42, 42, 'Eos nulla.', '56152559', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(43, 43, 'Consectetur magni.', '26175804', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(44, 44, 'Nobis a architecto.', '60154982', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(45, 45, 'Ipsa in.', '18801171', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(46, 46, 'Soluta est dolores.', '26396545', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(47, 47, 'Sed quos quas.', '42510921', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(48, 48, 'Minima quia atque.', '79479100', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(49, 49, 'Est commodi.', '9302667', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(50, 50, 'Sed earum.', '24051192', 'EastWest', NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_no` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_vacancy_id` int(11) NOT NULL,
  `resume` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `application_date` date NOT NULL,
  `status` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `candidates_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cut_offs`
--

CREATE TABLE IF NOT EXISTS `cut_offs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `cut_offs`
--

INSERT INTO `cut_offs` (`id`, `date_start`, `date_end`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2016-05-01', '2016-05-30', NULL, '2016-05-02 21:21:54', '2016-05-02 21:22:02'),
(2, '2016-04-01', '2016-04-30', NULL, '2016-05-02 21:58:49', '2016-05-02 21:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department`, `department_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(2, 'Marketing', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(3, 'Sales', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(4, 'Admin', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(5, 'Content', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE IF NOT EXISTS `designations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `designation_item_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=101 ;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `user_id`, `designation_item_id`, `date_start`, `date_end`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 11, '2015-09-15', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(2, 2, 2, '2015-06-07', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(3, 3, 10, '2015-10-03', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(4, 4, 8, '2015-09-18', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(5, 5, 9, '2015-10-18', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(6, 6, 11, '2015-05-28', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(7, 7, 2, '2015-08-12', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(8, 8, 3, '2015-08-06', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(9, 9, 3, '2015-11-02', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(10, 10, 7, '2015-11-02', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(11, 11, 5, '2015-06-21', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(12, 12, 3, '2015-08-14', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(13, 13, 9, '2015-05-09', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(14, 14, 2, '2015-11-05', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(15, 15, 10, '2015-09-06', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(16, 16, 5, '2015-09-19', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(17, 17, 2, '2015-07-09', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(18, 18, 5, '2015-07-12', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(19, 19, 1, '2015-08-09', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(20, 20, 3, '2015-07-03', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(21, 21, 10, '2015-11-12', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(22, 22, 4, '2015-04-27', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(23, 23, 2, '2015-08-04', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(24, 24, 8, '2015-07-30', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(25, 25, 10, '2015-07-31', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(26, 26, 1, '2015-04-29', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(27, 27, 10, '2015-08-29', NULL, NULL, '2016-05-02 21:20:09', '2016-05-02 21:20:09'),
(28, 28, 11, '2015-07-17', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(29, 29, 2, '2015-07-07', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(30, 30, 1, '2015-04-26', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(31, 31, 5, '2015-07-03', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(32, 32, 8, '2015-05-03', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(33, 33, 11, '2015-07-09', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(34, 34, 5, '2015-05-26', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(35, 35, 5, '2015-10-20', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(36, 36, 8, '2015-11-22', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(37, 37, 2, '2015-10-14', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(38, 38, 3, '2015-05-04', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(39, 39, 1, '2015-08-03', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(40, 40, 8, '2015-10-29', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(41, 41, 7, '2015-07-05', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(42, 42, 4, '2015-11-28', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(43, 43, 1, '2015-07-16', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(44, 44, 8, '2015-05-28', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(45, 45, 2, '2015-07-12', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(46, 46, 11, '2015-07-21', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(47, 47, 1, '2015-05-07', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(48, 48, 11, '2015-11-20', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(49, 49, 4, '2015-09-15', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(50, 50, 3, '2015-09-13', NULL, NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(51, 27, 9, '2014-09-19', '2015-01-09', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(52, 44, 2, '2014-07-19', '2014-11-22', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(53, 19, 2, '2014-09-05', '2014-12-07', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(54, 34, 9, '2014-08-30', '2014-12-13', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(55, 8, 2, '2014-12-04', '2015-02-07', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(56, 10, 8, '2014-07-22', '2014-09-20', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(57, 46, 4, '2014-10-30', '2015-03-18', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(58, 46, 9, '2014-07-10', '2014-09-26', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(59, 37, 2, '2015-01-29', '2015-04-10', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(60, 48, 8, '2014-12-11', '2015-03-13', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(61, 5, 4, '2014-10-10', '2014-12-22', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(62, 2, 7, '2015-01-11', '2015-04-06', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(63, 8, 10, '2014-09-25', '2015-01-08', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(64, 23, 8, '2014-11-12', '2015-02-14', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(65, 47, 8, '2014-11-20', '2015-02-02', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(66, 37, 2, '2014-05-09', '2014-08-18', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(67, 49, 7, '2014-10-25', '2015-03-15', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(68, 46, 2, '2014-04-11', '2014-08-31', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(69, 38, 5, '2014-09-22', '2015-01-14', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(70, 46, 1, '2014-10-21', '2015-01-29', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(71, 34, 10, '2015-02-27', '2015-04-21', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(72, 8, 4, '2014-05-20', '2014-09-08', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(73, 45, 5, '2014-10-19', '2014-12-27', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(74, 45, 1, '2014-07-23', '2014-09-19', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(75, 27, 11, '2014-06-25', '2014-10-22', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(76, 17, 3, '2014-06-19', '2014-09-03', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(77, 44, 1, '2014-10-22', '2015-02-13', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(78, 25, 6, '2014-09-05', '2015-02-02', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(79, 40, 11, '2014-12-15', '2015-04-06', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(80, 31, 1, '2014-06-25', '2014-10-16', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(81, 31, 2, '2014-07-28', '2014-11-29', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(82, 43, 2, '2014-08-02', '2014-12-30', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(83, 32, 3, '2014-06-26', '2014-10-11', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(84, 1, 9, '2014-12-15', '2015-03-20', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(85, 32, 5, '2015-01-09', '2015-03-23', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(86, 7, 10, '2014-12-05', '2015-04-18', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(87, 18, 9, '2014-09-06', '2014-11-25', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(88, 30, 6, '2014-06-21', '2014-09-28', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(89, 22, 3, '2014-06-24', '2014-11-09', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(90, 11, 3, '2014-07-29', '2014-10-13', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(91, 10, 5, '2014-10-29', '2015-02-11', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(92, 37, 11, '2014-08-25', '2014-12-02', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(93, 49, 8, '2014-06-01', '2014-08-31', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(94, 27, 9, '2014-11-12', '2015-01-02', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(95, 17, 7, '2014-09-30', '2014-11-26', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(96, 6, 3, '2015-01-16', '2015-03-26', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(97, 9, 3, '2014-07-08', '2014-10-27', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(98, 48, 4, '2014-05-22', '2014-10-05', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(99, 26, 8, '2014-10-27', '2015-02-16', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10'),
(100, 44, 2, '2014-12-04', '2015-02-28', NULL, '2016-05-02 21:20:10', '2016-05-02 21:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `designation_items`
--

CREATE TABLE IF NOT EXISTS `designation_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `designation_item` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=12 ;

--
-- Dumping data for table `designation_items`
--

INSERT INTO `designation_items` (`id`, `designation_item`, `department_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Junior Web Developer', 1, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(2, 'Senior Web Developer', 1, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(3, 'Web Development Manager', 1, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(4, 'Marketing Manager', 2, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(5, 'Marketing Associate', 2, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(6, 'Sales Manager', 3, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(7, 'Sales Associate', 3, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(8, 'Admin Associate', 4, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(9, 'Content Manager', 5, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(10, 'Content Junior Writer', 5, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(11, 'Content Senior Writer', 5, NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `document_type_id` int(11) NOT NULL,
  `document` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE IF NOT EXISTS `document_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `document_type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `document_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Resume', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(2, 'Application Letter', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(3, 'Admission', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `description`, `date_start`, `date_end`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Sunt qui velit odio.', 'Nemo nihil maiores nemo et enim voluptas totam voluptatem. Dolorem dolor voluptatem placeat recusandae.\nPerspiciatis dolor enim eaque ut. Cupiditate et cum ducimus. In ut ipsum rerum voluptas.', '2016-01-01', '2016-01-02', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(2, 'Eaque et eos vero.', 'Ea similique dolore commodi nam quo omnis quia. Quaerat repellat dicta officiis. Placeat praesentium eum rerum reiciendis.', '2016-02-06', '2016-02-09', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(3, 'Doloremque.', 'Impedit reprehenderit qui commodi quia provident optio. Assumenda similique saepe voluptas maiores. Tempora veritatis illum vero qui voluptatem corporis sed repellendus.', '2016-06-16', '2016-06-21', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(4, 'Explicabo sed.', 'Dolor maiores assumenda consectetur saepe laborum inventore. Ex totam et libero culpa placeat. Vitae culpa modi omnis praesentium ullam possimus vel et. Dolor in quam quam doloremque facilis.', '2016-01-27', '2016-01-31', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(5, 'Et aut expedita.', 'Qui ut quasi ullam sapiente. Consequatur at odit nulla eum pariatur sed. Totam rerum iste in illo sit id aut. Sapiente molestiae praesentium in omnis.', '2015-12-31', '2016-01-05', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(6, 'Optio aspernatur.', 'Ipsam et blanditiis ullam repudiandae. Id perferendis et et. Voluptates et sed eos rerum sint neque. Non perferendis rerum enim itaque.', '2016-02-14', '2016-02-18', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(7, 'Officia aut minima.', 'Velit exercitationem vero ut quisquam adipisci aliquam. Temporibus a consequuntur beatae. Nobis possimus laborum illum velit a.', '2016-01-04', '2016-01-08', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(8, 'Dignissimos.', 'Ipsa ducimus consectetur consequatur quo sit. Totam eius sunt illo ullam est. Non consectetur harum enim. Ea id modi est minus veritatis aut incidunt earum.', '2016-06-10', '2016-06-10', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(9, 'Possimus.', 'Tempore possimus itaque hic maxime fugit ipsum quam aut. Est vel aperiam totam omnis quidem pariatur aut nam. Dolor delectus et assumenda alias facilis.', '2016-03-03', '2016-03-06', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(10, 'Est qui facere.', 'Deserunt excepturi eaque et delectus nemo. Modi et explicabo modi aut dolorem ea tempora. Eligendi omnis ipsa labore eveniet earum voluptatem neque.', '2016-03-12', '2016-03-14', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(11, 'Rerum dolore sunt.', 'Id sint quis est fuga nisi. Et ut ex qui deleniti itaque amet. Nam aliquid et tempora architecto repellendus animi. Iste sunt et sed qui soluta dicta minus.', '2015-10-27', '2015-11-01', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(12, 'Ut similique a.', 'Molestiae velit voluptatum maiores consequatur eveniet. Ea recusandae rem excepturi deserunt. In libero et incidunt doloribus nisi. Aut porro eos quidem.', '2016-04-05', '2016-04-05', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(13, 'Ut dolor qui et at.', 'Impedit ut sit suscipit et magnam animi. Autem dolores repellat sunt. Non reprehenderit laboriosam rerum est soluta qui quis.', '2016-01-03', '2016-01-08', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(14, 'Quae distinctio.', 'Cum ducimus corporis ad illum nemo facilis. Odit beatae et unde laboriosam alias fuga. Inventore nostrum vel consequatur eligendi minima. Aut aut eius nostrum aliquam delectus porro.', '2016-06-26', '2016-06-26', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(15, 'Dicta adipisci qui.', 'Praesentium nostrum aut et eius fugit minus. Dolorem neque assumenda omnis libero placeat soluta perspiciatis quos. Voluptatem est culpa quia sint sed.', '2016-01-25', '2016-01-25', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(16, 'Qui voluptatem.', 'Corporis aut aperiam commodi velit. Nesciunt maiores facilis itaque facere. Aliquam possimus tempora quidem et hic mollitia veritatis animi.', '2016-05-19', '2016-05-22', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(17, 'Explicabo qui.', 'Vel corporis est in sapiente in voluptates optio. Qui quibusdam numquam sed quia. Nam id consequatur hic natus et modi. Ex ea delectus ea quasi facere.', '2016-05-12', '2016-05-15', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(18, 'Laudantium sequi.', 'Minima totam accusamus eum repellendus aliquid. Neque qui pariatur ducimus quibusdam et temporibus deserunt dolores. Vel aut fuga sit eius nulla. Alias fugit repudiandae quo.', '2016-06-25', '2016-06-28', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(19, 'Quo quia deleniti.', 'Sed aperiam consequatur debitis non laborum excepturi rerum. Vitae qui necessitatibus asperiores quidem. Aperiam in velit dolor quis qui rerum illo rerum.', '2016-03-25', '2016-03-30', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(20, 'Dolor maxime.', 'Omnis est explicabo quae corrupti nostrum esse enim. Velit accusamus velit illum voluptas non qui consequatur. Vero quia et voluptatem et ex maxime vel. Non nihil aut quia autem rerum.', '2016-04-18', '2016-04-20', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(21, 'Perspiciatis.', 'Optio minima incidunt laborum laborum et et in. Recusandae et qui ea perspiciatis illo. Quia repudiandae est temporibus rerum voluptatem eligendi.', '2016-01-14', '2016-01-16', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(22, 'Id quo nemo.', 'Dolor libero culpa magnam ex consequatur voluptas aut vel. Et quia consequatur pariatur iste soluta et saepe voluptas. Ducimus atque qui minus iusto illo fugit a. Animi ab unde provident at.', '2016-05-11', '2016-05-15', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(23, 'Perferendis.', 'Nostrum aut ut minima nisi nisi voluptatem voluptas. Ab quos sit doloribus dolorum numquam delectus aut. Laudantium sequi qui deleniti odio modi rerum.', '2016-06-26', '2016-06-28', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(24, 'Ut aut nam impedit.', 'Provident quia sit maxime libero minus impedit veniam illo. Dolores quae ad assumenda ea rerum repellat voluptates. Eaque ratione rerum qui tempora. Id recusandae dignissimos eveniet aut eveniet.', '2016-03-04', '2016-03-04', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(25, 'Necessitatibus sed.', 'Quis ut tempora soluta voluptas voluptates. Ullam veritatis aut illum cupiditate sint qui facere temporibus. A doloribus aut ut quod commodi corporis.', '2015-11-21', '2015-11-21', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(26, 'Omnis placeat rerum.', 'Ut qui est voluptatem nemo nisi molestiae. Architecto quia dignissimos labore qui ad inventore. Numquam ea recusandae laudantium modi pariatur. Corporis deserunt vitae sit id.', '2016-04-12', '2016-04-13', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(27, 'Explicabo omnis.', 'Distinctio laudantium debitis et accusantium sint. Et et voluptatem necessitatibus tempora. Eum odio aut quam alias ea nemo quae. Ut sed provident quisquam necessitatibus labore.', '2016-04-26', '2016-04-26', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(28, 'Provident tempora.', 'Officiis amet eius quos alias soluta officia molestias et. Ratione nobis quis ab facere corporis vel expedita. Ab facere est placeat atque nesciunt.', '2016-03-08', '2016-03-10', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(29, 'Rem numquam aut.', 'Fugit vero reprehenderit sed neque inventore quis. Aut autem eos voluptatem natus non. Voluptate quae voluptatibus quia inventore. In quia numquam sint et.', '2016-02-02', '2016-02-04', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(30, 'Itaque facere.', 'Excepturi tempore nobis dolorum ipsum. Laudantium natus et cupiditate omnis minus. Eos harum fugiat dolorem.', '2016-06-03', '2016-06-07', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(31, 'Et quos consequatur.', 'Delectus dolorem numquam odit repudiandae. Voluptas sed inventore accusantium. Perspiciatis inventore maxime adipisci et aut non facilis.', '2015-11-25', '2015-11-29', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(32, 'Omnis enim et odio.', 'Ea ab laudantium est omnis non id. Et esse id hic. Voluptas adipisci odit iusto ratione et dicta rerum.', '2015-10-26', '2015-10-27', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(33, 'Totam aliquam ea.', 'Neque numquam dolorum aut. Aspernatur mollitia exercitationem consequatur nemo. Voluptas necessitatibus ab quas reiciendis illum voluptates.', '2016-02-14', '2016-02-15', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(34, 'Eos ut error velit.', 'Id voluptatum nobis perspiciatis voluptatem quibusdam. Odio provident impedit amet. Id et assumenda soluta blanditiis voluptas. Quia reiciendis ut quo.', '2016-04-09', '2016-04-09', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(35, 'Deserunt et.', 'Enim nihil sit autem distinctio neque assumenda. Unde officiis consequatur accusamus eius est. Et sunt non accusantium.', '2016-02-01', '2016-02-02', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(36, 'Aliquam cupiditate.', 'Impedit unde odio ut et dignissimos et debitis. Et aut tenetur nesciunt vel est. Aliquid eaque impedit ut minus fugit.', '2015-12-04', '2015-12-06', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(37, 'Quo dolorem.', 'Adipisci saepe fugiat aperiam. Assumenda voluptatibus quis accusamus dolor doloribus aspernatur ex. Dolorem ex sunt distinctio commodi voluptatem fugiat. Aut soluta cumque fuga consequuntur.', '2016-02-28', '2016-02-29', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(38, 'Voluptatem ut.', 'Vel aut odio rerum aliquam. Et adipisci quasi voluptas est. Magnam labore deleniti laudantium vitae est ex quibusdam.', '2015-12-30', '2015-12-30', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(39, 'Aperiam aperiam.', 'Quia cumque possimus quo ex nobis impedit. Sit quia totam laudantium sed. Deserunt est necessitatibus temporibus accusamus omnis fuga. Officia nostrum molestiae voluptatem porro natus.', '2016-05-12', '2016-05-14', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(40, 'Labore consequatur.', 'Pariatur rem soluta ea omnis corporis consequatur. Ullam perferendis asperiores quae dicta. Nostrum tempore omnis et eius ea earum impedit consequatur. Nihil eligendi consequatur et.', '2015-12-29', '2015-12-31', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(41, 'Et voluptatem nulla.', 'Ea dicta non autem qui. Consequuntur praesentium reprehenderit consequatur. Sunt qui fugiat omnis dolorem exercitationem. Dolores dicta hic fuga quo veritatis reprehenderit ut.', '2016-05-17', '2016-05-22', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(42, 'Animi error sed.', 'Qui qui aliquam numquam fugit vel temporibus et. Nulla rem iure omnis est. Aperiam est quae libero impedit.', '2016-06-14', '2016-06-15', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(43, 'Ut quaerat amet.', 'Asperiores in quasi magnam harum asperiores. Et possimus ut molestias consequatur ad ab nesciunt. Laudantium voluptates porro quo aut. Illo et omnis at.', '2016-03-20', '2016-03-23', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(44, 'Blanditiis aut.', 'Eaque autem ut quasi a. Voluptas cumque quaerat vitae velit totam ut. Dolorem voluptate officiis eaque.', '2016-03-13', '2016-03-13', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(45, 'Et explicabo itaque.', 'Ab dolores voluptatem maiores enim autem. Vel modi laborum nihil itaque qui. Maiores beatae occaecati labore quisquam. Et dignissimos enim eveniet doloribus perspiciatis.', '2016-04-02', '2016-04-04', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(46, 'Provident odit.', 'Nam aut aut rerum facilis. Doloremque sed molestiae nisi illo placeat et. Non alias et impedit aut ut ipsa nam sit.', '2016-06-11', '2016-06-15', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(47, 'Amet ullam labore.', 'Praesentium iure dolores ullam omnis aliquam quam. Qui est corrupti aut voluptas. Doloribus laudantium ea earum minima. Occaecati asperiores ratione quibusdam a.', '2015-10-27', '2015-11-01', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(48, 'Dolorem rerum.', 'Quia quis occaecati repellat ut ipsum aut nesciunt. Quo ut laudantium inventore harum. Magni illo optio autem numquam voluptas dolorem excepturi. Eveniet est dolorem sit numquam.', '2016-01-08', '2016-01-10', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(49, 'Ut quo qui.', 'Autem necessitatibus molestiae laboriosam quasi. Dolores optio aut a perferendis suscipit sit. Quis nam esse enim beatae facilis praesentium culpa.', '2015-12-19', '2015-12-21', '', NULL, '2016-05-02 21:20:11', '2016-05-02 21:20:11'),
(50, 'Explicabo optio.', 'Perspiciatis deserunt non omnis natus esse doloribus. Et ab blanditiis aliquam aut. Eaque est itaque eos.', '2016-02-22', '2016-02-27', '', NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_from` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `amount` decimal(7,2) NOT NULL,
  `attachment` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `occasion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `job_vacancies`
--

CREATE TABLE IF NOT EXISTS `job_vacancies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE IF NOT EXISTS `leaves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `applied_on` date NOT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `leave_type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Vacation Leave', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(2, 'Sick Leave', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(3, 'Maternal Leave', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(4, 'Paternal Leave', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07'),
(5, 'Birthday Leave', NULL, '2016-05-02 21:20:07', '2016-05-02 21:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_01_14_025419_create_departments_table', 1),
('2016_01_14_053708_create_bank_accounts_table', 1),
('2016_01_14_053728_create_roles_table', 1),
('2016_01_14_053811_create_document_types_table', 1),
('2016_01_14_053926_create_expenses_table', 1),
('2016_01_14_054052_create_leave_types_table', 1),
('2016_01_14_054950_create_events_table', 1),
('2016_01_15_043254_create_holidays_table', 1),
('2016_01_19_084359_create_notices_table', 1),
('2016_01_19_101239_create_designation_items_table', 1),
('2016_01_19_101350_create_designations_table', 1),
('2016_01_19_101452_create_leaves_table', 1),
('2016_01_19_101544_create_absences_table', 1),
('2016_01_19_101626_create_documents_table', 1),
('2016_01_19_101709_create_awards_table', 1),
('2016_04_04_060813_create_permissions_table', 1),
('2016_04_04_061152_create_role_permissions_table', 1),
('2016_04_13_025653_create_job_vacancies_table', 1),
('2016_04_13_031905_create_candidates_table', 1),
('2016_05_02_080304_create_attendances_table', 1),
('2016_05_02_081949_create_cut_offs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE IF NOT EXISTS `notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `published`, `title`, `description`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Repellat ea odit.', 'Illo enim reiciendis asperiores pariatur assumenda. Eaque saepe quo rerum magni vel fugit unde.', '', NULL, '2016-02-18 16:00:00', '2016-02-18 16:00:00'),
(2, 1, 'Ducimus culpa et.', 'Vitae sed quis occaecati autem et et. Optio aut ut dolorum illum voluptates dolores. Pariatur reprehenderit minus blanditiis ducimus aut.', '', NULL, '2016-03-19 16:00:00', '2016-03-19 16:00:00'),
(3, 1, 'Neque error quam.', 'Quis natus sit omnis sunt sunt. Reiciendis et suscipit amet aut quis.', '', NULL, '2016-03-11 16:00:00', '2016-03-11 16:00:00'),
(4, 1, 'Nisi cupiditate in.', 'Molestiae maxime qui qui. Cupiditate quae sit consequatur accusantium quos. Consequatur porro voluptatem voluptates dignissimos quasi. Dolorum id aut aperiam nostrum.', '', NULL, '2016-02-15 16:00:00', '2016-02-15 16:00:00'),
(5, 1, 'Minus consequatur.', 'Sint vel beatae placeat enim ut. Est rerum placeat repellat. Id et qui dolores iusto.', '', NULL, '2016-03-14 16:00:00', '2016-03-14 16:00:00'),
(6, 1, 'Quas quisquam.', 'Molestias iure voluptates inventore sit. Mollitia nam quia sunt similique consequuntur. Voluptatem officiis voluptatem sunt. Autem delectus enim et.', '', NULL, '2016-03-06 16:00:00', '2016-03-06 16:00:00'),
(7, 1, 'Hic enim a dolorem.', 'Distinctio suscipit sit quia recusandae est voluptatem inventore. Eum voluptatem voluptas eaque rerum aperiam. Recusandae exercitationem voluptate eum ut a aliquam omnis.', '', NULL, '2016-03-17 16:00:00', '2016-03-17 16:00:00'),
(8, 1, 'Eos minus quae id.', 'Ut odio quia id consequatur. In saepe incidunt odio dolores praesentium.', '', NULL, '2016-02-17 16:00:00', '2016-02-17 16:00:00'),
(9, 1, 'Alias eos ipsa.', 'Architecto velit odit quibusdam sunt quaerat molestiae. Quia tenetur officiis voluptatibus repellendus maxime. Non consequuntur quas molestiae voluptas.', '', NULL, '2016-03-11 16:00:00', '2016-03-11 16:00:00'),
(10, 1, 'Adipisci laboriosam.', 'Architecto quia quo esse commodi. Ducimus odit nobis magnam rerum modi sint. Ut quis aspernatur eos minima est est dolorem.', '', NULL, '2016-02-17 16:00:00', '2016-02-17 16:00:00'),
(11, 1, 'Perferendis.', 'In ut aspernatur consequatur repudiandae ipsa. Suscipit repudiandae ullam sapiente rem minus omnis. Nam deleniti in quam minima non tempora.', '', NULL, '2016-02-09 16:00:00', '2016-02-09 16:00:00'),
(12, 1, 'Quibusdam.', 'Ut eligendi et est quod quia et. Consequuntur dolor nihil et sint. Et tenetur voluptatem ut magnam quae aut assumenda molestias. Alias repellat cumque velit ab. Optio nulla dolorem eum illo nam amet.', '', NULL, '2016-03-17 16:00:00', '2016-03-17 16:00:00'),
(13, 1, 'Et delectus.', 'Fugiat provident incidunt voluptas aut commodi neque expedita. Eveniet qui dolorem earum aut. Et quibusdam officiis velit exercitationem deleniti dignissimos molestias.', '', NULL, '2016-03-07 16:00:00', '2016-03-07 16:00:00'),
(14, 1, 'Et maiores quo.', 'Dolore laborum unde consequatur voluptas quia rem autem. Enim distinctio ut non neque sint saepe. Eaque vel exercitationem incidunt quia libero. Fugiat magni aut velit natus consequatur.', '', NULL, '2016-03-10 16:00:00', '2016-03-10 16:00:00'),
(15, 1, 'Sapiente explicabo.', 'Cum dolorem ea voluptatibus sint. Accusamus perspiciatis perspiciatis ipsam. Ad non in sequi quia veniam.', '', NULL, '2016-02-18 16:00:00', '2016-02-18 16:00:00'),
(16, 1, 'Blanditiis.', 'Quis rerum tempora totam non veritatis aut. Aut et dolor cumque ut. Quisquam quibusdam quis dolor suscipit. Rerum quo incidunt officia id velit quod tempore numquam.', '', NULL, '2016-02-10 16:00:00', '2016-02-10 16:00:00'),
(17, 1, 'Numquam modi nisi.', 'Aspernatur sit atque inventore velit quia. Nisi ut occaecati veniam ipsa libero facere sed. Mollitia nemo quae qui aliquam. Quia tenetur omnis quaerat in eos.', '', NULL, '2016-03-02 16:00:00', '2016-03-02 16:00:00'),
(18, 1, 'Dolores ipsam ut.', 'Eum sed quo magni. Nulla soluta voluptas pariatur voluptatem sed ratione fugiat. Necessitatibus itaque ad voluptatibus numquam natus voluptas qui laboriosam. Nostrum perferendis ea non explicabo.', '', NULL, '2016-02-22 16:00:00', '2016-02-22 16:00:00'),
(19, 1, 'Accusamus qui nemo.', 'Distinctio velit perferendis eveniet eum excepturi. Quo temporibus ipsam id.\nPossimus quia rerum delectus. Voluptatum hic nobis non illum ex maxime.', '', NULL, '2016-03-09 16:00:00', '2016-03-09 16:00:00'),
(20, 1, 'Ipsa sit ab est ut.', 'Qui sapiente aperiam omnis assumenda et vel. Sunt commodi sed quia minima quod est. Eligendi culpa optio sit suscipit rem in error reprehenderit. Et molestiae error occaecati repudiandae laborum.', '', NULL, '2016-03-13 16:00:00', '2016-03-13 16:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `label`, `level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'view_absences', 'View Absences', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(2, 'create_absences', 'Create Absences', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(3, 'edit_absences', 'Edit Absences', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(4, 'delete_absences', 'Delete Absences', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(5, 'view_awards', 'View Awards', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(6, 'create_awards', 'Create Awards', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(7, 'edit_awards', 'Edit Awards', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(8, 'delete_awards', 'Delete Awards', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(9, 'view_bank_accounts', 'View Bank Accounts', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(10, 'create_bank_accounts', 'Create Bank Accounts', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(11, 'edit_bank_accounts', 'Edit Bank Accounts', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(12, 'delete_bank_accounts', 'Delete Bank Accounts', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(13, 'view_departments', 'View Departments', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(14, 'create_departments', 'Create Departments', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(15, 'edit_departments', 'Edit Departments', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(16, 'delete_departments', 'Delete Departments', 0, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(17, 'view_designations', 'View Designations', 1, NULL, '2016-05-02 21:20:12', '2016-05-02 21:20:12'),
(18, 'create_designations', 'Create Designations', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(19, 'edit_designations', 'Edit Designations', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(20, 'delete_designations', 'Delete Designations', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(21, 'view_designation_items', 'View Designation Items', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(22, 'create_designation_items', 'Create Designation Items', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(23, 'edit_designation_items', 'Edit Designation Items', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(24, 'delete_designation_items', 'Delete Designation Items', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(25, 'view_documents', 'View Documents', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(26, 'create_documents', 'Create Documents', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(27, 'edit_documents', 'Edit Documents', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(28, 'delete_documents', 'Delete Documents', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(29, 'view_document_types', 'View Document Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(30, 'create_document_types', 'Create Document Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(31, 'edit_document_types', 'Edit Document Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(32, 'delete_document_types', 'Delete Document Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(33, 'view_events', 'View Events', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(34, 'create_events', 'Create Events', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(35, 'edit_events', 'Edit Events', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(36, 'delete_events', 'Delete Events', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(37, 'view_expenses', 'View Expenses', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(38, 'create_expenses', 'Create Expenses', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(39, 'edit_expenses', 'Edit Expenses', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(40, 'delete_expenses', 'Delete Expenses', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(41, 'view_holidays', 'View Holidays', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(42, 'create_holidays', 'Create Holidays', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(43, 'edit_holidays', 'Edit Holidays', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(44, 'delete_holidays', 'Delete Holidays', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(45, 'view_leaves', 'View Leaves', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(46, 'create_leaves', 'Create Leaves', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(47, 'edit_leaves', 'Edit Leaves', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(48, 'delete_leaves', 'Delete Leaves', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(49, 'view_leave_types', 'View Leave Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(50, 'create_leave_types', 'Create Leave Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(51, 'edit_leave_types', 'Edit Leave Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(52, 'delete_leave_types', 'Delete Leave Types', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(53, 'view_notices', 'View Notices', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(54, 'create_notices', 'Create Notices', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(55, 'edit_notices', 'Edit Notices', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(56, 'delete_notices', 'Delete Notices', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(57, 'view_users', 'View Users', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(58, 'create_users', 'Create Users', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(59, 'edit_users', 'Edit Users', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(60, 'delete_users', 'Delete Users', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(61, 'view_job_vacancies', 'View Job Vacancies', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(62, 'create_job_vacancies', 'Create Job Vacancies', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(63, 'edit_job_vacancies', 'Edit Job Vacancies', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(64, 'delete_job_vacancies', 'Delete Job Vacancies', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(65, 'view_candidates', 'View Candidates', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(66, 'create_candidates', 'Create Candidates', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(67, 'edit_candidates', 'Edit Candidates', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(68, 'delete_candidates', 'Delete Candidates', 0, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(69, 'view_attendances', 'View Attendances', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(70, 'create_attendances', 'Create Attendances', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(71, 'edit_attendances', 'Edit Attendances', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(72, 'delete_attendances', 'Delete Attendances', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(73, 'view_cut_offs', 'View Cut Offs', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(74, 'create_cut_offs', 'Create Cut Offs', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(75, 'edit_cut_offs', 'Edit Cut Offs', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13'),
(76, 'delete_cut_offs', 'Delete Cut Offs', 1, NULL, '2016-05-02 21:20:13', '2016-05-02 21:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `layout` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `layout`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(2, 'Employee', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(3, 'Team Leader/Manager', 0, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE IF NOT EXISTS `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `level` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=131 ;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `permission_id`, `role_id`, `level`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(2, 2, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(3, 3, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(4, 4, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(5, 5, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(6, 6, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(7, 7, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(8, 8, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(9, 9, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(10, 10, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(11, 11, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(12, 12, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(13, 13, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(14, 14, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(15, 15, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(16, 16, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(17, 17, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(18, 18, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(19, 19, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(20, 20, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(21, 21, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(22, 22, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(23, 23, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(24, 24, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(25, 25, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(26, 26, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(27, 27, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(28, 28, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(29, 29, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(30, 30, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(31, 31, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(32, 32, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(33, 33, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(34, 34, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(35, 35, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(36, 36, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(37, 37, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(38, 38, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(39, 39, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(40, 40, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(41, 41, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(42, 42, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(43, 43, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(44, 44, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(45, 45, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(46, 46, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(47, 47, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(48, 48, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(49, 49, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(50, 50, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(51, 51, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(52, 52, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(53, 53, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(54, 54, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(55, 55, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(56, 56, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(57, 57, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(58, 58, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(59, 59, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(60, 60, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(61, 61, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(62, 62, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(63, 63, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(64, 64, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(65, 65, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(66, 66, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(67, 67, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(68, 68, 1, NULL, NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(69, 69, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(70, 70, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(71, 71, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(72, 72, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(73, 73, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(74, 74, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(75, 75, 1, 'all', NULL, '2016-05-02 21:20:14', '2016-05-02 21:20:14'),
(76, 76, 1, 'all', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(77, 1, 2, 'self', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(78, 5, 2, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(79, 25, 2, 'self', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(80, 33, 2, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(81, 37, 2, 'self', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(82, 41, 2, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(83, 45, 2, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(84, 46, 2, 'self', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(85, 53, 2, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(86, 61, 2, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(87, 1, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(88, 2, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(89, 3, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(90, 4, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(91, 5, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(92, 6, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(93, 7, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(94, 8, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(95, 17, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(96, 18, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(97, 19, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(98, 20, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(99, 25, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(100, 26, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(101, 27, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(102, 28, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(103, 37, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(104, 38, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(105, 39, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(106, 40, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(107, 45, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(108, 46, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(109, 47, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(110, 48, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(111, 57, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(112, 58, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(113, 59, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(114, 60, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(115, 69, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(116, 70, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(117, 71, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(118, 72, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(119, 73, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(120, 74, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(121, 75, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(122, 76, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(123, 61, 3, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(124, 62, 3, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(125, 63, 3, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(126, 64, 3, NULL, NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(127, 65, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(128, 66, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(129, 67, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15'),
(130, 68, 3, 'team', NULL, '2016-05-02 21:20:15', '2016-05-02 21:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cellphone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `local_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `employee_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_item_id` int(11) NOT NULL,
  `date_hired` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `profile_picture` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=54 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `birthday`, `gender`, `email`, `telephone`, `cellphone`, `local_address`, `permanent_address`, `employee_id`, `department_id`, `designation_item_id`, `date_hired`, `exit_date`, `salary`, `role_id`, `username`, `password`, `profile_picture`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Chad Dylan', 'Cooper', '1989-10-15', 'M', 'louielapig@gmail.com', '625-698-5598x7148', '269-049-4503x4685', '662 Kaleb Square Apt. 213\nCrawfordbury, GA 13484', '7061 Rodger Ramp Suite 578\nKerlukeshire, WV 62237-1250', '388835', 2, 4, '2003-06-13', NULL, '17290.00', 1, 'administrator', '$2y$10$.n2TsgB4gqIxrp/raqW0tOu7QgPfc874tAda.WO08UEWmKHhvN2Ee', '', 'LkrXWEHRqp6wC0k5BM76rpCfWxuZHz33dEqmxkIVN6l6lEpAYBJzZtN0TCnA', NULL, '2016-05-02 21:20:00', '2016-05-03 02:04:31'),
(2, 'Dalton', 'Harvey', '1993-05-20', 'F', 'liam.pollich@yahoo.com', '699.875.5071', '05204398169', '346 Kozey Skyway Apt. 105\nStarkland, CA 80789', '6146 Wilma Route\nLake Jerrellfurt, PA 14280-9852', '429838', 5, 4, '1972-11-20', NULL, '18549.00', 2, 'employee', '$2y$10$cu/Qy1kMBaHSWkOd0z3u7e.S5o44P831cxaPhHL4RF4IcVQIw7E7y', '', NULL, NULL, '2016-05-02 21:20:00', '2016-05-02 21:20:00'),
(3, 'Jairo', 'Shields', '1986-06-13', 'M', 'esperanza13@hotmail.com', '1-582-214-3454x468', '105-889-6697x110', '32332 Altenwerth Spur\nAnkundingburgh, KY 60323-3083', '977 Ryann Drive\nMarcellusville, IA 84388', '518235', 4, 4, '1993-12-16', NULL, '16855.00', 3, 'manager', '$2y$10$1VQJ/9IdyXcbtktlMyy7AuHVKLWz3ITZJpvq6R9OUKvPb/6Bfswx.', '', 'qGchXIXZTyvwe2hpHa9sxfH5CpxFsl4vWfj8CiXGQZhvjPM6Kp9EWnDTHj5P', NULL, '2016-05-02 21:20:01', '2016-05-03 02:12:28'),
(4, 'Jacinthe', 'Barrows', '2008-11-20', 'M', 'nmann@hotmail.com', '453.249.8065', '495-445-7806', '426 Carolyn Squares Suite 368\nEast Emiehaven, SC 21820', '2581 Rickey Spring Suite 264\nPort Luisastad, NV 18831-3739', '480382', 3, 10, '1973-07-31', NULL, '20420.00', 2, 'fpacocha', '$2y$10$rwsbc/Pldxb0ZIzgGWQnxOTUK/HdvpBzYapFU1oUrN8PHiE6bOBPi', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(5, 'Emmitt', 'Berge', '1984-11-01', 'F', 'agnes08@yost.com', '04899637212', '209.911.5703x260', '494 Kayli Plains\nSouth Naomie, TX 01897', '40291 Ratke Haven\nLeopoldmouth, OR 95935-6758', '234232', 4, 4, '1980-04-03', NULL, '15567.00', 2, 'ucruickshank', '$2y$10$IK1.6D0w2uswxJNqR6vyouW6gKRSpEnLYS1OeCpmhI42yuKz1LrQG', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(6, 'Marie', 'Howell', '1979-06-10', 'F', 'rex.kuhn@schiller.com', '006.708.9058x969', '998.520.1217x0950', '641 Morissette Turnpike\nNew Hayliefurt, GA 59159-9871', '82679 Andres Islands\nAgustinfort, AL 19601-4758', '443895', 5, 10, '1992-11-07', NULL, '18851.00', 2, 'ashleigh41', '$2y$10$DoV2uL/oOyjzjZt6sc4HxefvR0sxN/MfjKxTlB1Vw88VpIgV5NGQG', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(7, 'Maymie', 'Kemmer', '1983-04-28', 'F', 'eloisa34@medhurst.biz', '+31(9)9940371785', '(845)099-4387', '893 Hailey Cliffs\nNew Nataliaburgh, WI 31863-4296', '5016 Treutel Knolls\nPort Genevieveburgh, WY 42421-6126', '453779', 3, 6, '2012-12-06', NULL, '22914.00', 2, 'alberta61', '$2y$10$bG68Ettn4Ryd2nwh9FKg6eGPpPFUf7yXJ6.P6h4dT4VxdqaVA3XX.', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(8, 'Karley', 'Pfannerstill', '1982-12-06', 'F', 'elisha.wiegand@ankunding.net', '1-970-398-3265x875', '03188229053', '25530 Darien Shores\nErickafurt, AZ 95661-8441', '123 Witting Forges Apt. 913\nPort Gerard, AK 33437-6221', '278070', 4, 4, '1988-08-18', NULL, '20799.00', 2, 'simonis.veda', '$2y$10$etlIqkJq5Oxpdt2FFlIVKuHBnePBH1Xj01wS3xMlnzq/cnQFPxrby', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(9, 'Ila', 'Corkery', '2014-07-09', 'F', 'jermaine65@swift.info', '09225989337', '862.773.0235x0138', '37813 Von Parks Apt. 905\nPort Dedric, IN 32666', '7682 Tyson Squares Suite 517\nMyrtieton, AL 51683-2278', '201673', 2, 9, '1983-07-24', NULL, '24070.00', 2, 'kertzmann.tina', '$2y$10$NJyQUOiE5MB8KV0CLGS2UusPekTgXEXddtZPNJYscEuoWxPR6rt0i', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(10, 'Abdul', 'Lesch', '1982-12-05', 'M', 'pedro49@lowe.com', '947.683.6642', '07194230934', '187 Senger Isle\nEmilianoland, MD 06747', '916 Kelli Spring Suite 788\nWhiteland, TX 23979', '128453', 2, 7, '2012-07-25', NULL, '21570.00', 2, 'idibbert', '$2y$10$GOIWYWwg2Ec.zP66ZifTMeMDdsqJoVpyJN.ERhAkOo1x.s92DBacS', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(11, 'Coby', 'Franecki', '1976-03-10', 'F', 'terry.bartoletti@hotmail.com', '313-091-0413x591', '1-003-878-6393x402', '7601 Archibald Drives Suite 544\nBradtketon, MS 61776-9909', '89863 Carrie Mission Suite 410\nSouth Jody, AK 02720-3494', '60767', 3, 6, '1980-06-26', NULL, '21261.00', 2, 'aokeefe', '$2y$10$j9HEYXlrdKBNGXbNKSrE7eQOz9STJwadC.8MRpA0N678t8SeVq4TK', '', NULL, NULL, '2016-05-02 21:20:01', '2016-05-02 21:20:01'),
(12, 'Agustina', 'Davis', '2005-06-16', 'F', 'stracke.freida@walsh.com', '845.895.6064', '791.456.4527', '5920 Liza Parkways Apt. 325\nRyleymouth, MT 46368-0373', '54536 Tyshawn Cove Suite 563\nLake Rosa, GA 97170-3113', '82994', 1, 10, '1986-05-23', NULL, '18537.00', 2, 'thora88', '$2y$10$5RN4yP0vxoxapoJcR9wkz./33cNmixzDkZ1ftgj8H6ZxIltiejbnm', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(13, 'Gage', 'Hilll', '2008-12-30', 'M', 'nbrown@ryan.com', '(905)237-5261', '1-594-931-4668x161', '17098 Jacinthe Mount Apt. 137\nEast Elnaborough, AR 87524', '1914 Hollie Underpass Apt. 306\nTillmanchester, NM 15518-7549', '991870', 4, 8, '1971-07-20', NULL, '17026.00', 2, 'hgreenholt', '$2y$10$nisjTEn6xQlhNmO3T9eu1uwdOodWxojrotbUJctqoAKZG5fBbBIsi', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(14, 'Jazmin', 'Renner', '1992-12-14', 'M', 'sincere.boyle@spinka.org', '(695)173-5036x07038', '204-742-5014x91903', '6198 Jayson Pike Suite 392\nBoyleshire, MI 05507-4762', '0461 Alexandre Center Apt. 918\nRhettview, WI 62770', '614442', 1, 9, '1979-05-15', NULL, '21278.00', 2, 'fausto76', '$2y$10$r6MzOypXob9PVYwGpnzM1eiHGbTA.3jJO/FBMSAoQcsf94H35TJXW', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(15, 'Drew', 'Rau', '1970-01-30', 'M', 'bmohr@tillman.org', '706-923-2613', '063.781.7143x078', '4008 Viviane Spurs Apt. 050\nKovacekburgh, IN 29814', '59387 Urban Corner Suite 535\nEast Monte, AK 40261-1081', '696419', 5, 4, '1995-10-16', NULL, '19177.00', 2, 'amari32', '$2y$10$7Z0Anuqk9iILuuq5.aneJevVi5vdp/yCpbBXVvlSiFXOlOGjUJI9i', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(16, 'Dedrick', 'Wuckert', '1980-11-27', 'F', 'dwaelchi@gmail.com', '(562)908-0043x307', '138.718.9848x568', '09654 Bennett Tunnel\nCummingsshire, IN 59731', '63690 Bell Greens Apt. 307\nLake Greggview, HI 43432-6333', '780976', 2, 8, '1972-01-24', NULL, '24582.00', 2, 'halvorson.eldora', '$2y$10$EBEAwZhK4Yor9jbapxH1aevabaX/pCFp6lTZJ80L/nuAc06HepD92', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(17, 'Della', 'Pouros', '1976-10-19', 'M', 'vella96@yahoo.com', '629-574-5710x76582', '431.217.2241x9059', '4526 Aliza Haven\nCollinshire, VA 30361', '477 Walter Point\nEast Darrel, NE 23353-1555', '131311', 5, 3, '1971-10-17', NULL, '21631.00', 2, 'raegan28', '$2y$10$vdG8sR6CYc1ceFq39AsszeMIHrYlFRrmOLY4CxvpD7RxLxfRMzJlK', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(18, 'Gina', 'Kub', '2001-03-04', 'M', 'abins@gmail.com', '1-526-902-9138x19840', '06194248933', '207 Nichole Oval Suite 341\nEffertztown, MT 24988', '30209 Camylle Harbors Apt. 797\nGardnerland, HI 21861-2978', '978980', 5, 1, '1988-06-08', NULL, '23803.00', 2, 'estefania60', '$2y$10$SZYGeg1VvwqtRQ6pvGW3T.5wmG8msqLT2RKQTgIMyc5OI6fON3NEG', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(19, 'Samson', 'Walter', '1985-02-23', 'M', 'carroll.efrain@hotmail.com', '(727)897-3521x5061', '06699966569', '124 Graciela Mills\nJohnsbury, CA 77698-8493', '27149 Kenyatta Rapid Apt. 154\nHegmannside, UT 39694', '223312', 5, 1, '2014-10-10', NULL, '21987.00', 2, 'willms.susanna', '$2y$10$h7lKTrgT8LDFingI.ucANO5qLO426n5gnB647z6oy0i6C8yyChTGO', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(20, 'Blair', 'Casper', '2011-08-11', 'M', 'vbeer@yahoo.com', '972-006-5351', '037-130-4891x8214', '8238 Gleichner Flats Suite 161\nHermannbury, CO 68757', '98930 Johnny Stream\nWisokyview, IA 47695', '172732', 2, 2, '1999-06-28', NULL, '19896.00', 2, 'ncarter', '$2y$10$FQiGmRFWfS0UmnMOqNQ0l.q8gtoQ.c5VHUmyRGfegUL9Ld9SffZcu', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(21, 'Quinn', 'Orn', '1984-11-30', 'M', 'chasity.bauch@yahoo.com', '158-981-3561x760', '893-674-1750x537', '4317 Krajcik Crescent\nNew Helmer, MS 50425-2152', '10779 Rosenbaum Inlet\nNorth Kileyport, MN 20168', '214476', 2, 4, '2016-03-20', NULL, '23844.00', 2, 'amorissette', '$2y$10$67pfGbBvkYHA0LkzkoVUm.sXMkIPg0isIlNF/foPbuEZlnN20l.ae', '', NULL, NULL, '2016-05-02 21:20:02', '2016-05-02 21:20:02'),
(22, 'Candida', 'McCullough', '1992-10-09', 'F', 'melyna.ondricka@gmail.com', '+19(9)1602703382', '1-805-885-6267', '36934 Luna Tunnel\nDaviston, NY 97677', '9222 River Port Apt. 950\nEast Cliftonton, WV 47870', '999588', 5, 7, '1993-09-07', NULL, '24514.00', 2, 'sondricka', '$2y$10$mzr1hXPIC7rZJaJ4I0DxIOMAUOr2jO3pxPONbUYLGNXs0I.C6Wm8G', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(23, 'Briana', 'Wolff', '1980-04-08', 'M', 'quincy40@yahoo.com', '614-688-6479', '691-045-0159x785', '043 Edwin Street\nEast Arjunstad, NE 12897-0595', '075 Lakin Plaza Suite 710\nSouth Richmondmouth, AL 94262', '705989', 5, 1, '2002-08-06', NULL, '18783.00', 2, 'kilback.romaine', '$2y$10$QAEf6Tz9WbEpolf/mTu1KO7Rvk2V884k1joinrbaB4Jk4CnQRsTtq', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(24, 'Flavie', 'D''Amore', '1984-08-15', 'F', 'leta.hegmann@hudson.info', '1-495-017-8642x313', '910.830.6355', '63205 Bradtke Fords\nBalistrerimouth, TN 00093-5298', '5277 Briana Extension\nJadenshire, OK 68419-8422', '98829', 2, 5, '2014-08-01', NULL, '17537.00', 2, 'zbogisich', '$2y$10$cMpX6kYLp/TBlZjbotjIf.H87MUqJtFxjge83JRIAXhJRvvo7kKlG', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(25, 'Ari', 'Leannon', '1974-05-01', 'M', 'fdickens@hilpert.biz', '826-825-6662x1793', '277-369-7455', '0789 Paucek Port Suite 672\nWest Jodie, WA 67679-7754', '379 Harber Harbors Apt. 879\nStehrstad, IL 66949', '30702', 4, 2, '1994-09-04', NULL, '19431.00', 2, 'stiedemann.ara', '$2y$10$Az7R7Q3UWTDF1rjHXvDO/uPqFp5sTk8Z.RKks9iPMUL72UHnK0QcS', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(26, 'Hudson', 'Beer', '2012-08-25', 'M', 'tstark@wolf.net', '583.946.3076x3996', '03035497700', '251 Kaya Divide Suite 755\nMaybellborough, CT 85882-1316', '30144 Elvera Springs Apt. 199\nEast Adolfotown, MT 44830-4812', '972862', 5, 9, '2001-03-17', NULL, '15066.00', 2, 'corine34', '$2y$10$6Nom72dpoRRaDH0OhL9./.CGtoFGUwtGoyI8BkAKDg8rjdnl8GCnq', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(27, 'Estelle', 'Dicki', '1996-11-15', 'M', 'uframi@yahoo.com', '782-127-3065x34916', '(922)392-0892', '9371 White Mall Apt. 239\nPort Antonina, TX 60208-3519', '31954 Hudson Manor Apt. 999\nLake Gladyce, NM 97363-0924', '428877', 3, 6, '1972-04-09', NULL, '20031.00', 2, 'shields.michele', '$2y$10$pNfWn7F8gnk54M4hGPNkDekWpEAWwNiKhaS3gtCq42iw5gxqD2.wq', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(28, 'Elmira', 'Stehr', '2001-02-21', 'M', 'bednar.raegan@dicki.com', '527-147-0094x68441', '547-175-8287x536', '39047 Karlie Orchard Suite 674\nPort Sean, TX 99706-3034', '537 Kerluke Inlet Apt. 739\nJohnsport, MN 93037', '72829', 2, 9, '1996-01-21', NULL, '24529.00', 2, 'cschimmel', '$2y$10$p/ZkvTOgD4QJcPHPvM8t9.niOuqreqN94o3bm5.IT7AnmQyhajEfS', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(29, 'Reggie', 'Bruen', '1988-11-27', 'F', 'xdicki@gmail.com', '(891)907-8551', '+44(5)8543159996', '00226 Hagenes Mount Apt. 186\nPort Olaf, SD 61612', '4888 Hilll Lock\nWest Araborough, VA 24754', '170575', 3, 10, '1971-07-23', NULL, '18679.00', 2, 'snicolas', '$2y$10$BR6XIWHxFL2qvQQVMiyhQurPf84G61yIULChoDRnrcg8bgREpHQ42', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(30, 'Addison', 'Lueilwitz', '1972-05-19', 'M', 'robel.lester@gutmann.com', '194-548-2756x22571', '(109)823-3973x5921', '17112 Kristina Corner\nNorth Stephany, NV 71154', '3256 Mertz Lights Apt. 007\nLake Ramonamouth, WI 36333', '502888', 4, 7, '1979-05-29', NULL, '17160.00', 2, 'lhintz', '$2y$10$BDKk6OLEnW/Vs3v9Tqya8.lSZqI0EzS6MXhDwrcz9ZzU1H2DpruZq', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(31, 'Kraig', 'Friesen', '1995-12-10', 'M', 'xoreilly@gmail.com', '1-120-406-7121x1029', '296-369-4406', '21812 Bobbie Avenue\nEast Audreanneberg, DE 02194', '4836 Howe Garden Apt. 002\nSouth Jack, VT 60971', '198418', 1, 9, '1972-02-16', NULL, '21148.00', 2, 'hugh41', '$2y$10$6IjRX8vaACmjN9XiWrWpBunFsHAGX0kirk6.0a4MiK1MbhVFcuQqe', '', NULL, NULL, '2016-05-02 21:20:03', '2016-05-02 21:20:03'),
(32, 'Izaiah', 'Medhurst', '1998-02-14', 'F', 'isaac97@quitzon.com', '1-678-651-8284', '1-083-476-4438x728', '3363 August Center\nKiehnberg, MN 03070', '348 Ashley Radial Apt. 072\nEast Alyshatown, MO 72349', '293851', 4, 8, '2012-04-03', NULL, '20977.00', 2, 'homenick.cheyenne', '$2y$10$XLpma0DwSGenCTZkHAzAXud8hSRyCAr5u9vtC6yw7PgDCV11s0osG', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(33, 'Lavon', 'Beatty', '1971-05-05', 'F', 'oleannon@hotmail.com', '1-305-682-6943x2650', '(727)490-7730', '0557 Ezekiel Wells Apt. 473\nPort June, GA 97910', '5074 Gabriella Curve\nSouth Henderson, MI 89437', '389399', 1, 1, '1971-07-21', NULL, '17840.00', 2, 'charlie.feil', '$2y$10$Mv.7gQdzgmAj9bXpFrJXPuY613Yczq9Ina.BGTay9ukdXG9nKQgfG', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(34, 'Evan', 'Wiegand', '1974-02-23', 'M', 'mayer.hector@dibbert.net', '1-816-129-3389x81198', '1-071-586-0241x27398', '29367 Tomas Dam\nHalieborough, NM 75641', '55387 Mohr Shores\nNorth Turner, OR 86591-3339', '871757', 2, 4, '1990-12-03', NULL, '21741.00', 2, 'oconnell.neal', '$2y$10$/5BCVIo7IYbYKRnu4AZsGupqE1IAB1sXdTQ1zo4DtHuO8FwdmtidG', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(35, 'Carlo', 'Emmerich', '1990-10-26', 'F', 'bins.kamryn@kertzmann.com', '770-457-5318', '(066)236-1713x383', '854 Abdiel Prairie\nLake Buck, PA 42889-7492', '399 Bertha Rapid Suite 353\nLake Aliburgh, FL 09407', '400462', 4, 1, '2003-03-08', NULL, '18659.00', 2, 'charlie.lind', '$2y$10$9DeOO.a3PGn6aBaBQXeMx.ZzB7mROo/EKxsDjHwCc1WgY53Ehdw5S', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(36, 'Jacky', 'Oberbrunner', '2006-09-05', 'M', 'runolfsson.lottie@romaguera.com', '548.409.0348', '1-718-863-6778x74515', '6314 Kuhlman Valleys\nGroverhaven, IN 26452-8900', '46352 Gulgowski Isle Suite 044\nPaucekton, IA 95288', '578683', 5, 6, '2003-02-20', NULL, '19746.00', 2, 'evelyn43', '$2y$10$/wBDTmISpx4UJFCj/seCIuYsu5JqFqKZcn9bldFSn8dHx593YDzxa', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(37, 'Sammy', 'Koepp', '2002-01-06', 'F', 'brekke.trevor@frami.org', '043-008-7134x04734', '02963553197', '711 Gibson Crescent\nNorth Lindsay, MT 70333', '746 Altenwerth Valleys Suite 900\nEast Itzel, NY 95204', '354615', 4, 1, '2012-11-25', NULL, '18670.00', 2, 'nayeli83', '$2y$10$nnCZeev1jYfvBnrQ9d38x.crwyOPDR9sqOvxOLr8fNDbTo4ZPoqnG', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(38, 'Tate', 'McKenzie', '1990-07-02', 'M', 'kohler.dakota@hotmail.com', '1-678-794-7474', '016.532.8477x7438', '89561 Ankunding Corner\nNew Elenor, NE 43075-1334', '6444 D''Amore Estates Suite 896\nSteuberburgh, AR 64706', '442892', 2, 8, '1990-07-21', NULL, '19518.00', 2, 'otrantow', '$2y$10$H7dG06lFDPLQotIbTEK87.PVmBam/CNDJ.ujNzil59Z.Uv/R/Zygi', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(39, 'Selena', 'Kassulke', '1979-12-23', 'M', 'zdickens@parker.com', '672.987.5114x808', '05408538416', '243 Tod Extension Apt. 143\nAdelaview, NJ 43838-9405', '350 Priscilla Stravenue Suite 199\nJusticemouth, IA 30470', '636744', 1, 10, '1982-07-18', NULL, '23790.00', 2, 'rokon', '$2y$10$7tLhi6jFQVF4VQ3MIAYlTOLiQx3RAPT6SanA42UxnnBvQB1Ic6GrS', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(40, 'Cameron', 'Nader', '1993-03-03', 'F', 'collier.guadalupe@gmail.com', '(312)653-5081', '+42(4)0525989807', '88961 Ray Union Suite 624\nDevonborough, CO 66244', '771 Emile Land Apt. 604\nLaurinetown, WA 70070-5317', '540173', 3, 3, '1985-10-15', NULL, '23998.00', 2, 'ernser.rocky', '$2y$10$ojFJ9szwzZrMeEALGQnm8.5txuhPx9SMaGIHw9kbJA0rpb7vxxk.S', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(41, 'Stanford', 'Hintz', '2002-04-03', 'M', 'graham.emie@hotmail.com', '1-496-298-5458x39411', '416-981-8746x89038', '2045 Witting Wells Suite 192\nKaleighhaven, PA 50492', '00901 Evalyn Junctions Apt. 047\nSouth Lon, NY 43829', '583252', 2, 7, '2009-04-12', NULL, '18303.00', 2, 'kozey.cleta', '$2y$10$4FEwjzv2cdyq7WLAD3ficuLB00ir3dkyLMqKsjhEB7BNRcSK14xfy', '', NULL, NULL, '2016-05-02 21:20:04', '2016-05-02 21:20:04'),
(42, 'Brigitte', 'Rodriguez', '2008-01-23', 'F', 'yolanda90@upton.com', '(359)794-8675', '830-913-4321x04836', '3083 Elwin Islands\nSouth Kileytown, AL 45732-3012', '593 Goodwin Rest\nVerlieside, WV 76559-4617', '618442', 3, 10, '2005-10-16', NULL, '20876.00', 2, 'edison14', '$2y$10$Wej1omGi2/Vx4EH0jY5ulu72aeXXR2DOCNOGjREGk43jkNLr0RuRi', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(43, 'Cassandre', 'Kulas', '1987-04-27', 'F', 'solson@mclaughlin.com', '542-597-3062x4740', '223-862-1484x90259', '646 Telly Viaduct\nWest Rosettashire, MO 25964', '025 Adolphus Place\nLake Janet, SC 74099', '389838', 5, 4, '1970-07-05', NULL, '20594.00', 2, 'lilly.pfeffer', '$2y$10$8Kc7x0zHB5MoPCT/Y.SFd.6iCOh1j6jOt25dty3nPgTMWpwvM5GQy', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(44, 'Amir', 'Sporer', '1975-10-24', 'F', 'terry.tobin@durgan.org', '(686)774-3934', '1-777-351-2650x3484', '6990 Reynolds Villages Suite 342\nLubowitzbury, CO 13854', '78355 Witting Summit\nSouth Damarisland, DC 17655-5109', '121264', 5, 10, '1972-02-01', NULL, '21547.00', 2, 'abagail.legros', '$2y$10$VE30Gjg4mvbFxW8LkDjmVOwWNDzpo8txUYRUaXShV9quwMTZ3v/Jm', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(45, 'Name', 'McLaughlin', '2001-12-23', 'M', 'michale.oberbrunner@moore.biz', '1-271-876-4374', '1-638-389-2272x74608', '5772 Stanton Vista\nWest Clarissa, LA 27752-9266', '35315 Denis Cove Apt. 555\nEast Billy, KS 35291-4310', '110404', 1, 10, '2001-07-28', NULL, '21183.00', 2, 'lcollier', '$2y$10$eKuZNy9v6kx2hu939GIZZO3zHED/wQWNDtTFh6i.sJTdPrnGTBQh.', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(46, 'Providenci', 'Koch', '1994-03-05', 'F', 'abby.schoen@boyer.com', '898.694.8552', '1-071-340-4214x40560', '4592 Perry Lane Suite 842\nNew Veronatown, AZ 98841-7056', '135 Zella Mountain Apt. 334\nConnchester, OK 68682-2747', '383389', 1, 3, '1979-01-05', NULL, '17978.00', 2, 'ngottlieb', '$2y$10$DOPY8SmIGZKeuKpdeO3um.Nbpp.IZmGmSpyJTSk3Qaq3olWKovfXu', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(47, 'Gayle', 'Schoen', '1984-03-02', 'M', 'alena86@yahoo.com', '777-895-0267', '(734)077-1519x33484', '55041 Bailee Avenue Apt. 719\nNew Helmerfurt, MO 98660-8698', '446 Floy Glens\nStellafurt, GA 43994', '3047', 4, 7, '1987-09-28', NULL, '20157.00', 2, 'apurdy', '$2y$10$F2XwiGRoQb/nBjZRZmpVMeBbYiE8exp.BtCzupm6F3x2suKSOOcxO', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(48, 'Kenyon', 'Kerluke', '1971-12-25', 'M', 'klein.euna@kris.com', '(149)986-5660x8278', '1-274-323-1268', '96436 Moen Wall Apt. 960\nBeulahborough, AL 34306-8548', '359 Elijah Street Apt. 900\nWest Blancafort, IL 91645-0018', '670100', 1, 2, '1996-12-26', NULL, '15373.00', 2, 'sleuschke', '$2y$10$jjBcuQTyfREarF/j1pbF.e.GEipbGcT99ri5ZjQnwIlQARs42VYne', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(49, 'Ludwig', 'Luettgen', '1977-07-10', 'M', 'von.cordell@bogan.net', '822.335.8559', '(166)110-1590x4025', '81965 Athena Estates Apt. 767\nNorth Gloriaborough, MD 62513', '597 Sanford Spur\nKenport, AZ 62887-2813', '876918', 1, 3, '1985-04-02', NULL, '15975.00', 2, 'rippin.makenzie', '$2y$10$NYNoFL3yhiU0v88PmQLbGevb8QadqRrPGBRECFo3qVNj9236DY0GG', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(50, 'Alfredo', 'Beer', '2001-05-10', 'M', 'windler.stuart@nader.biz', '922.526.5540', '307-286-8833x3307', '3243 Jamey Flats\nEast Prudencebury, MA 71544-9063', '3462 Ashley Loop Apt. 702\nSouth Lilianport, CT 85728', '277690', 1, 8, '1974-04-03', NULL, '17927.00', 2, 'gvon', '$2y$10$kXp9oSdmdQ4t6pfvHHM2cum4mCQ2GqwjOjlJ2lA6OoC8iGYKwYEhO', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(51, 'Herminia', 'Howell', '1983-04-13', 'F', 'johara@littel.net', '1-706-467-8285', '+53(8)7751175676', '639 Halvorson Crossing Apt. 693\nEast Jamar, OK 94108-2415', '9134 Ryleigh Fort Suite 166\nErnestinaland, OH 59956-7576', '674808', 3, 1, '2008-12-21', NULL, '20332.00', 2, 'lindgren.pearl', '$2y$10$f.G2GD0zGG4FFl0LmvT4.enkZZdjKf5cMJxs3XgaLjWKkRPHmcgHm', '', NULL, NULL, '2016-05-02 21:20:05', '2016-05-02 21:20:05'),
(52, 'Brody', 'Howe', '2015-09-06', 'M', 'iliana.corkery@yahoo.com', '(118)794-6994x4091', '1-333-111-9716x75792', '82324 Shanon Parkways\nDameonburgh, WA 05741', '21392 Ima Avenue Suite 900\nMonafurt, RI 14867', '775696', 3, 6, '2011-11-22', NULL, '18424.00', 2, 'esta.considine', '$2y$10$vEp2q/09Ljt8ryqzkCDQl.Uf9P8lTtCpSBARjcijIpvYQfIYF7i0K', '', NULL, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06'),
(53, 'Eloise', 'Bode', '1983-09-04', 'M', 'runte.lonzo@hodkiewicz.com', '127-949-9190', '06552891009', '484 Price Pines\nNorth Fredy, AL 97188', '07096 Kling Grove\nJammieshire, ND 09214-4026', '630264', 4, 10, '1989-03-02', NULL, '24210.00', 2, 'buck.terry', '$2y$10$Fxrt22BnflP5W1uYA8bA6eVgEtPZzMhu5J2jb0wh1KkK4zYQui3RW', '', NULL, NULL, '2016-05-02 21:20:06', '2016-05-02 21:20:06');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
