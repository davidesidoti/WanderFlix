-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2024 at 11:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wanderflix`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `watched` tinyint(1) NOT NULL DEFAULT 0,
  `watched_at` date DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `name`, `watched`, `watched_at`, `group_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Sharktales', 1, '2024-05-30', NULL, 1, 1, '2024-10-12 20:25:09', '2024-10-12 20:25:09'),
(2, 'Dune', 1, '2024-06-02', 3, 1, 1, '2024-10-12 20:25:27', '2024-10-12 20:25:27'),
(3, 'A un metro da te', 1, '2024-06-05', NULL, 1, 1, '2024-10-12 20:25:46', '2024-10-12 20:25:46'),
(4, 'Bullet Train', 1, '2024-06-14', NULL, 1, 1, '2024-10-12 20:26:00', '2024-10-12 20:26:00'),
(5, 'Cars 2', 1, '2024-06-17', 2, 1, 1, '2024-10-12 20:26:12', '2024-10-12 20:26:12'),
(6, 'Dune 2', 1, '2024-06-25', 3, 1, 1, '2024-10-12 20:26:25', '2024-10-12 20:26:25'),
(7, 'Spider-Man', 1, '2024-06-28', 1, 1, 1, '2024-10-12 20:26:40', '2024-10-12 20:26:40'),
(8, 'Spider-Man 2', 1, '2024-07-02', 1, 1, 1, '2024-10-12 20:26:56', '2024-10-12 20:26:56'),
(9, 'Spider-Man 3', 1, '2024-07-03', 1, 1, 1, '2024-10-12 20:27:16', '2024-10-12 20:27:16'),
(10, 'WALL•E', 1, '2024-07-05', NULL, 1, 1, '2024-10-12 20:27:31', '2024-10-12 20:27:31'),
(11, 'Shrek terzo', 1, '2024-07-09', NULL, 1, 1, '2024-10-12 20:27:42', '2024-10-12 20:27:42'),
(12, 'Kung Fu Panda', 1, '2024-07-13', 7, 1, 1, '2024-10-12 20:28:00', '2024-10-12 20:28:37'),
(13, 'Spider-Man: Un nuovo universo', 1, '2024-07-15', 1, 1, 1, '2024-10-12 20:29:13', '2024-10-12 20:29:13'),
(14, 'Inside Out 2', 1, '2024-07-22', NULL, 1, 1, '2024-10-12 20:29:26', '2024-10-12 20:29:26'),
(15, 'The Amazing Spider-Man', 1, '2024-07-22', 1, 1, 1, '2024-10-12 20:29:37', '2024-10-12 20:29:37'),
(16, 'Cars 3', 1, '2024-07-27', 2, 1, 1, '2024-10-12 20:29:48', '2024-10-12 20:29:48'),
(17, 'The Amazing Spider-Man 2', 1, '2024-07-29', 1, 1, 1, '2024-10-12 20:29:59', '2024-10-12 20:29:59'),
(18, 'Shrek e vissero felici e contenti', 1, '2024-08-01', 5, 1, 1, '2024-10-12 20:30:12', '2024-10-12 20:30:12'),
(19, 'Collateral Beauty', 1, '2024-08-04', NULL, 1, 1, '2024-10-12 20:30:23', '2024-10-12 20:30:23'),
(20, 'Spider-Man: Homecoming', 1, '2024-08-05', 1, 1, 1, '2024-10-12 20:30:34', '2024-10-12 20:30:34'),
(21, 'A Family Affair', 1, '2024-08-06', NULL, 1, 1, '2024-10-12 20:30:43', '2024-10-12 20:30:43'),
(22, 'Spider-Man: Far From Home', 1, '2024-08-07', 1, 1, 1, '2024-10-12 20:31:06', '2024-10-12 20:31:06'),
(23, 'Spider-Man: No Way Home', 1, '2024-08-15', 1, 1, 1, '2024-10-12 20:31:19', '2024-10-12 20:31:19'),
(24, 'Kung Fu Panda 2', 1, '2024-08-16', 7, 1, 1, '2024-10-12 20:31:31', '2024-10-12 20:31:31'),
(25, 'Kung Fu Panda 3', 1, '2024-08-18', 7, 1, 1, '2024-10-12 20:31:45', '2024-10-12 20:31:45'),
(26, 'It ends with us', 1, '2024-08-27', NULL, 1, 1, '2024-10-12 20:32:00', '2024-10-12 20:32:00'),
(27, 'Deadpool & Wolverine', 1, '2024-08-30', NULL, 1, 1, '2024-10-12 20:32:13', '2024-10-12 20:32:13'),
(28, 'X-Men', 1, '2024-09-02', 8, 1, 1, '2024-10-12 20:32:36', '2024-10-12 20:34:41'),
(29, 'Surf Up', 1, '2024-09-05', NULL, 1, 1, '2024-10-12 20:35:22', '2024-10-12 20:35:22'),
(30, 'Kung Fu Panda 4', 0, NULL, 7, 1, 1, '2024-10-12 20:35:55', '2024-10-12 20:35:55'),
(31, 'Harry Potter e il prigioniero di Azkaban', 0, NULL, 9, 1, 1, '2024-10-12 20:36:48', '2024-10-12 20:36:48'),
(32, 'Harry Potter e il calice di fuoco', 0, NULL, 9, 1, 1, '2024-10-12 20:36:56', '2024-10-12 20:36:56'),
(33, 'Harry Potter e l\'Ordine della Fenice', 0, NULL, 9, 1, 1, '2024-10-12 20:37:01', '2024-10-12 20:37:01'),
(34, 'Harry Potter e il principe mezzosangue', 0, NULL, 9, 1, 1, '2024-10-12 20:37:06', '2024-10-12 20:37:06'),
(35, 'Harry Potter e i doni della morte - Parte 1', 0, NULL, 9, 1, 1, '2024-10-12 20:37:11', '2024-10-12 20:37:11'),
(36, 'Harry Potter e i Doni della Morte - Parte 2', 0, NULL, 9, 1, 1, '2024-10-12 20:37:16', '2024-10-12 20:37:16'),
(37, 'Pirati dei Caraibi - La maledizione della prima luna', 0, NULL, 10, 1, 1, '2024-10-12 20:39:19', '2024-10-12 20:39:19'),
(38, 'Pirati dei Caraibi - La maledizione del forziere fantasma', 0, NULL, 10, 1, 1, '2024-10-12 20:39:24', '2024-10-12 20:39:24'),
(39, 'Pirati dei Caraibi - Ai confini del mondo', 0, NULL, 10, 1, 1, '2024-10-12 20:39:28', '2024-10-12 20:39:28'),
(40, 'Pirati dei Caraibi - Oltre i confini del mare', 0, NULL, 10, 1, 1, '2024-10-12 20:39:33', '2024-10-12 20:39:33'),
(41, 'Pirati dei Caraibi - La vendetta di Salazar', 0, NULL, 10, 1, 1, '2024-10-12 20:39:37', '2024-10-12 20:39:37'),
(42, 'X-Men 2', 0, NULL, 8, 1, 1, '2024-10-12 20:39:43', '2024-10-12 20:39:43'),
(43, 'X-Men - Conflitto finale', 0, NULL, 8, 1, 1, '2024-10-12 20:39:46', '2024-10-12 20:39:46'),
(44, 'X-Men le origini - Wolverine', 0, NULL, 8, 1, 1, '2024-10-12 20:39:51', '2024-10-12 20:39:51'),
(45, 'X-Men - L\'inizio', 0, NULL, 8, 1, 1, '2024-10-12 20:39:55', '2024-10-12 20:39:55'),
(46, 'Wolverine - L\'immortale', 0, NULL, 8, 1, 1, '2024-10-12 20:39:59', '2024-10-12 20:39:59'),
(47, 'X-Men - Giorni di un futuro passato', 0, NULL, 8, 1, 1, '2024-10-12 20:40:04', '2024-10-12 20:40:04'),
(48, 'X-Men: Apocalypse', 0, NULL, 8, 1, 1, '2024-10-12 20:40:08', '2024-10-12 20:40:08'),
(49, 'Logan – The Wolverine', 0, NULL, 8, 1, 1, '2024-10-12 20:40:12', '2024-10-12 20:40:12'),
(50, 'X-Men: Dark Phoenix', 0, NULL, 8, 1, 1, '2024-10-12 20:40:16', '2024-10-12 20:40:16'),
(51, 'The New Mutants', 0, NULL, 8, 1, 1, '2024-10-12 20:40:21', '2024-10-12 20:40:21'),
(52, 'Spider-Man: Across the Spider-Verse', 0, NULL, 1, 1, 1, '2024-10-12 20:40:59', '2024-10-12 20:40:59'),
(53, 'Avatar', 0, NULL, 11, 1, 1, '2024-10-12 20:42:07', '2024-10-12 20:42:07'),
(54, 'Avatar 2', 0, NULL, 11, 1, 1, '2024-10-12 20:42:13', '2024-10-12 20:42:13'),
(55, 'Captain Marvel', 0, NULL, 12, 1, 1, '2024-10-12 20:42:55', '2024-10-12 20:42:55'),
(56, 'Avengers: Endgame', 0, NULL, 12, 1, 1, '2024-10-12 20:43:00', '2024-10-12 20:43:00'),
(57, 'Black Widow', 0, NULL, 12, 1, 1, '2024-10-12 20:43:04', '2024-10-12 20:43:04'),
(58, 'Shang-Chi e la Leggenda dei Dieci Anelli', 0, NULL, 12, 1, 1, '2024-10-12 20:43:08', '2024-10-12 20:43:08'),
(59, 'Eternals', 0, NULL, 12, 1, 1, '2024-10-12 20:43:13', '2024-10-12 20:43:13'),
(60, 'Doctor Strange nel Multiverso della Follia', 0, NULL, 12, 1, 1, '2024-10-12 20:43:18', '2024-10-12 20:43:18'),
(61, 'Thor: Love and Thunder', 0, NULL, 12, 1, 1, '2024-10-12 20:43:22', '2024-10-12 20:43:22'),
(62, 'Black Panther: Wakanda Forever', 0, NULL, 12, 1, 1, '2024-10-12 20:43:27', '2024-10-12 20:43:27'),
(63, 'Ant-Man and the Wasp: Quantumania', 0, NULL, 12, 1, 1, '2024-10-12 20:43:31', '2024-10-12 20:43:31'),
(64, 'Guardiani della Galassia Vol. 3', 0, NULL, 12, 1, 1, '2024-10-12 20:43:36', '2024-10-12 20:43:36'),
(65, 'The Marvels', 0, NULL, 12, 1, 1, '2024-10-12 20:43:41', '2024-10-12 20:43:41'),
(66, 'Madagascar 2', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:00', '2024-10-12 20:44:00'),
(67, 'Your Name', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:03', '2024-10-12 20:44:03'),
(68, 'Up', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:05', '2024-10-12 20:44:05'),
(69, 'We live in time', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:08', '2024-10-12 20:44:08'),
(70, 'Parasite', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:12', '2024-10-12 20:44:12'),
(71, 'Get Out', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:14', '2024-10-12 20:44:14'),
(72, 'Surf Up 2', 0, NULL, NULL, 1, 1, '2024-10-12 20:44:18', '2024-10-12 20:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'Spiderman Movies', '#3575a1', NULL, '2024-10-12 20:41:38'),
(2, 'Cars Movies', '#f54055', NULL, '2024-10-12 20:00:41'),
(3, 'Dune Movies', '#fc8347', NULL, '2024-10-12 20:00:32'),
(5, 'Shrek Movies', '#418c30', NULL, '2024-10-12 19:59:55'),
(7, 'Kung Fu Panda Movies', '#ba8437', '2024-10-12 20:28:25', '2024-10-12 20:28:25'),
(8, 'X-Men Movies', '#2b507d', '2024-10-12 20:34:22', '2024-10-12 20:34:22'),
(9, 'Harry Potter Movies', '#5b3bad', '2024-10-12 20:36:24', '2024-10-12 20:37:56'),
(10, 'Pirati dei Caraibi Movies', '#258556', '2024-10-12 20:38:35', '2024-10-12 20:38:35'),
(11, 'Avatar Movies', '#388794', '2024-10-12 20:41:23', '2024-10-12 20:41:23'),
(12, 'Marvel Movies', '#872d2d', '2024-10-12 20:42:41', '2024-10-12 20:42:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2024_10_12_161810_create_groups_table', 1),
(18, '2024_10_12_162257_create_films_table', 2),
(19, '2024_10_13_200752_create_series_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `watched_episodes` int(11) NOT NULL DEFAULT 0,
  `total_episodes` int(11) NOT NULL DEFAULT 0,
  `completed_at` date DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `name`, `completed`, `watched_episodes`, `total_episodes`, `completed_at`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'How I Met Your Mother', 1, 208, 208, '2024-09-19', 1, 1, '2024-10-13 18:38:47', '2024-10-13 18:38:47'),
(2, 'Il Trono di Spade', 0, 1, 73, NULL, 1, 1, '2024-10-13 18:39:59', '2024-10-13 19:18:01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Davide', 'sidotidavide@gmail.com', NULL, '$2y$12$TzldJj1nLqXaU7k7XWWjA.urIB2yWk5cdWQBXUu7iV/IiyJNjSygS', 'TFIPZa2XAvMmTCxOiG6S4gz96W7qRaIJNfE3x3Z1gXta4J9UQtUtn3J0zDql', '2024-10-12 14:22:24', '2024-10-12 14:22:24'),
(2, 'Sara', 'saralippolis22@gmail.com', NULL, '$2y$12$QOUgmyE5yBGmRtnFKpGHueZ8Oony5.hXPkYQNJZ4Z.HDv8aVQwfkG', NULL, '2024-10-12 15:35:28', '2024-10-12 15:35:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `films_group_id_foreign` (`group_id`),
  ADD KEY `films_created_by_foreign` (`created_by`),
  ADD KEY `films_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `series_created_by_foreign` (`created_by`),
  ADD KEY `series_updated_by_foreign` (`updated_by`);

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
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `films_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `films_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `series`
--
ALTER TABLE `series`
  ADD CONSTRAINT `series_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `series_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
