-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2016 at 01:03 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `birthday`, `gender`, `email`, `telephone`, `cellphone`, `local_address`, `permanent_address`, `employee_id`, `department_id`, `designation_item_id`, `date_hired`, `exit_date`, `salary`, `role_id`, `username`, `password`, `profile_picture`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Chad Dylan', 'Cooper', '1989-10-15', 'M', 'louielapig@gmail.com', '625-698-5598x7148', '269-049-4503x4685', '662 Kaleb Square Apt. 213\nCrawfordbury, GA 13484', '7061 Rodger Ramp Suite 578\nKerlukeshire, WV 62237-1250', '388835', 2, 4, '2003-06-13', NULL, '17290.00', 1, 'administrator', '$2y$10$.n2TsgB4gqIxrp/raqW0tOu7QgPfc874tAda.WO08UEWmKHhvN2Ee', '', 'LkrXWEHRqp6wC0k5BM76rpCfWxuZHz33dEqmxkIVN6l6lEpAYBJzZtN0TCnA', NULL, '2016-05-02 21:20:00', '2016-05-03 02:04:31'),
(2, 'Dalton', 'Harvey', '1993-05-20', 'F', 'liam.pollich@yahoo.com', '699.875.5071', '05204398169', '346 Kozey Skyway Apt. 105\nStarkland, CA 80789', '6146 Wilma Route\nLake Jerrellfurt, PA 14280-9852', '429838', 5, 4, '1972-11-20', NULL, '18549.00', 2, 'employee', '$2y$10$cu/Qy1kMBaHSWkOd0z3u7e.S5o44P831cxaPhHL4RF4IcVQIw7E7y', '', NULL, NULL, '2016-05-02 21:20:00', '2016-05-02 21:20:00'),
(3, 'Jairo', 'Shields', '1986-06-13', 'M', 'esperanza13@hotmail.com', '1-582-214-3454x468', '105-889-6697x110', '32332 Altenwerth Spur\nAnkundingburgh, KY 60323-3083', '977 Ryann Drive\nMarcellusville, IA 84388', '518235', 4, 4, '1993-12-16', NULL, '16855.00', 3, 'manager', '$2y$10$1VQJ/9IdyXcbtktlMyy7AuHVKLWz3ITZJpvq6R9OUKvPb/6Bfswx.', '', 'qGchXIXZTyvwe2hpHa9sxfH5CpxFsl4vWfj8CiXGQZhvjPM6Kp9EWnDTHj5P', NULL, '2016-05-02 21:20:01', '2016-05-03 02:12:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
