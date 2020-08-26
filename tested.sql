-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2020 at 11:26 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tested`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `follows_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_21_094538_create_followers_table', 2),
(5, '2020_08_21_095118_create_notifications_table', 3),
(6, '2020_08_24_131641_add_column_soft_deletes_in_users_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Waino Schmitt', 'pcrooks@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4AHf6UlTzn', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(2, 'Kris Ernser', 'bernhard.lilyan@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PBeznudU4F', '2020-08-24 01:25:53', '2020-08-24 01:25:53', '2020-08-24 01:25:53'),
(3, 'Alexandra Schaefer', 'mgraham@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XSmI0d1rF7', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(4, 'Katheryn Schaefer', 'tschiller@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZECn7eGNTZ', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(5, 'Ivory Gaylord', 'rollin.reilly@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gaAT0xR7LP', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(6, 'Lysanne Johns DDS', 'norris.becker@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FS7gaSODA6', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(7, 'Jamie Fahey', 'lesch.maiya@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dsXLAVWhhx', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(8, 'Prof. Donnell Kuhlman', 'verner.nolan@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QRVQP7U2a8', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(9, 'Miss Briana Beahan', 'athompson@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bWzW2JHld5', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(10, 'Turner Conroy', 'nnienow@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nCCQ2lGr71', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(11, 'Dr. Hardy McClure', 'mills.reagan@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BeCFCqlWfQ', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(12, 'Kay Von', 'keeling.alvena@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'a9J9SalheU', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(13, 'Prof. Antwon Auer DDS', 'buckridge.karlie@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QGCgVcc4vY', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(14, 'Linnea Langosh', 'johanna.wilderman@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qXolaIvDac', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(15, 'Yolanda Emmerich DDS', 'zena.senger@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QwIj9JoOSx', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(16, 'Earline Rutherford', 'amira22@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xG0GonXZe3', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(17, 'Maye Bernier', 'denesik.stephon@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XNlcImbUwC', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(18, 'Austyn Moen', 'fsmitham@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'x6bo0eLHNp', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(19, 'Marjorie Reinger', 'blanche78@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xiWPHxtdVB', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(20, 'Kirstin Schumm', 'hassan.moen@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'L9ycKfIje9', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(21, 'Prof. Aiyana Kertzmann', 'hessel.ryley@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TfUW6IWz1T', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(22, 'Cathy Altenwerth', 'kasandra36@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hkqqHPnTvE', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(23, 'Myrtis Hegmann', 'wboyer@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1COT9uQigv', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(24, 'Marcellus O\'Hara', 'zdonnelly@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dmv2qyLXZF', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(25, 'Mr. Madyson Wisoky DVM', 'qchristiansen@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HTzE1QspLt', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(26, 'Prof. Verner Becker', 'luis.ziemann@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0QXQV2dzjs', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(27, 'Tyra Corwin', 'lmayer@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'moDGq7UMTX', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(28, 'Miss Delphine Hickle Sr.', 'meghan.krajcik@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd2uCAAVdGk', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(29, 'Aracely Emmerich', 'rrippin@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lmnuB2lFIO', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(30, 'Yessenia Langworth', 'sincere78@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RZU8nA37i1', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(31, 'Mrs. Kira Hane', 'hnikolaus@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZMaPAb6eM2', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(32, 'Darlene Dibbert', 'rylan.gleason@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FRYFPUr2OQ', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(33, 'Dasia Schinner', 'schuppe.nick@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'P0WArPi3rZ', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(34, 'Eloy Medhurst DVM', 'hegmann.coby@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7PRmoGi0Yw', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(35, 'Abigayle Dickinson', 'zschmeler@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dJi9hrbosk', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(36, 'Rodrigo Willms', 'gerhold.buster@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '85xDoHA6QD', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(37, 'Cecilia Mraz', 'parker74@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bLJpoxMzwn', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(38, 'Dr. Ana Legros DVM', 'kbrekke@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kB7cjUKqwb', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(39, 'Gene Waters', 'casandra.hermann@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xgjPc6USbk', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(40, 'Tyrell Morissette IV', 'kozey.quincy@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7OnBGnUtRU', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(41, 'Mckenzie Bradtke DVM', 'layla61@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OYgEZvB5Iz', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(42, 'Elnora Homenick', 'elisha.gulgowski@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zsIMPakWz3', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(43, 'Erin Miller', 'dejah30@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3RAxKN51dL', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(44, 'Alfonso McCullough', 'wlueilwitz@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fhTe2ZSXia', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(45, 'Prof. Scarlett Kuhic PhD', 'fpaucek@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sRt0DHZBpY', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(46, 'Roma Ebert', 'stokes.hassan@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mh8HheS8Zu', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(47, 'Dr. Theodora Carter PhD', 'roel.heathcote@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N36oTlThi3', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(48, 'Evelyn Mann', 'johan.cronin@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eKmsdUCx0u', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(49, 'Hans Ferry III', 'chamill@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Lbe7knvji', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(50, 'Prof. Waldo Donnelly PhD', 'annamae99@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eUYfuqquoJ', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(51, 'Abby Lesch', 'dicki.gail@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v5IC2lARRu', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(52, 'Prof. Effie Lueilwitz V', 'yebert@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's3VJAzHnKh', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(53, 'Miss Anastasia Hodkiewicz II', 'jayme.heaney@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IFl1BbmrRg', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(54, 'Beaulah Pollich', 'ugorczany@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eVJ3mY4qqj', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(55, 'Anastasia Hodkiewicz', 'wreichel@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PbzbmczwV9', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(56, 'Alberta Lubowitz', 'rkovacek@example.com', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9qkpXXzGyj', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(57, 'Dr. Lewis Cummerata Sr.', 'esta77@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '81Dd0rVQf0', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(58, 'Bret Grimes', 'mafalda.simonis@example.org', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CMd1FYAEZ6', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(59, 'Eudora Wilderman', 'arely.beer@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pZagXqQz5s', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL),
(60, 'Travis Bayer', 'gleason.montana@example.net', '2020-08-24 01:25:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kAsJqwWdau', '2020-08-24 01:25:53', '2020-08-24 01:25:53', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_user_id_index` (`user_id`),
  ADD KEY `followers_follows_id_index` (`follows_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
