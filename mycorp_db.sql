-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 01:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycorpec_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'Direktur', 'manage all'),
(2, 'Admin', 'manage content and blog'),
(3, 'Mandor', 'manage pembukaan presensi, presensi dan profile'),
(4, 'Teknisi', 'only presensi dan profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 1),
(3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(12, '::1', 'tester11@test.com', 2, '2024-04-24 10:31:51', 1),
(13, '::1', 'tester11@test.com', 2, '2024-04-24 10:36:13', 1),
(14, '::1', 'tester11@test.com', 2, '2024-04-24 11:43:31', 1),
(15, '::1', 'tester11@test.com', 2, '2024-04-25 06:12:36', 1),
(16, '::1', 'abayadmin123@gmail.com', 1, '2024-04-25 07:29:08', 1),
(17, '::1', 'abayadmin123@gmail.com', 1, '2024-04-25 12:00:25', 1),
(18, '::1', 'abayadmin123@gmail.com', 1, '2024-04-25 20:27:45', 1),
(19, '::1', 'tester11', NULL, '2024-04-25 21:12:23', 0),
(20, '::1', 'abayadmin123@gmail.com', 1, '2024-04-25 21:12:29', 1),
(21, '::1', 'abayadmin123@gmail.com', 1, '2024-04-26 08:18:27', 1),
(22, '::1', 'abayadmin123@gmail.com', 1, '2024-04-26 09:11:41', 1),
(23, '::1', 'abayadmin123@gmail.com', 1, '2024-04-26 13:56:59', 1),
(24, '::1', 'abayadmin123@gmail.com', 1, '2024-04-26 21:49:03', 1),
(25, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 00:35:25', 1),
(26, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 00:43:03', 1),
(27, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 00:46:40', 1),
(28, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 01:23:35', 1),
(29, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 01:42:53', 1),
(30, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 02:48:41', 1),
(31, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 04:05:00', 1),
(32, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 04:43:16', 1),
(33, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 07:21:35', 1),
(34, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 07:27:44', 1),
(35, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 08:05:12', 1),
(36, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 14:48:25', 1),
(37, '::1', 'abayadmin123@gmail.com', 1, '2024-05-07 18:34:44', 1),
(38, '::1', 'abayadmin123@gmail.com', 1, '2024-05-08 02:53:08', 1),
(39, '::1', 'abayadmin123@gmail.com', 1, '2024-05-12 18:43:45', 1),
(40, '::1', 'abayadmin123@gmail.com', 1, '2024-05-20 00:16:06', 1),
(41, '::1', 'abay123', NULL, '2024-05-21 07:51:19', 0),
(42, '::1', 'abay123', NULL, '2024-05-21 07:51:51', 0),
(43, '::1', 'abay123', NULL, '2024-05-21 07:51:58', 0),
(44, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 07:52:12', 1),
(45, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 09:38:27', 1),
(46, '::1', 'testerrr', NULL, '2024-05-21 11:35:36', 0),
(47, '::1', 'testerrr', NULL, '2024-05-21 11:35:43', 0),
(48, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 11:35:56', 1),
(49, '::1', 'tester11', NULL, '2024-05-21 11:37:13', 0),
(50, '::1', 'tester11', NULL, '2024-05-21 11:37:20', 0),
(51, '::1', 'tester11', NULL, '2024-05-21 11:39:07', 0),
(52, '::1', 'abay123', NULL, '2024-05-21 11:42:18', 0),
(53, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 11:42:24', 1),
(54, '::1', 'testerrr1', NULL, '2024-05-21 11:43:02', 0),
(55, '::1', 'abay123', NULL, '2024-05-21 12:02:58', 0),
(56, '::1', 'abay123', NULL, '2024-05-21 12:03:31', 0),
(57, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 12:03:37', 1),
(58, '::1', 'tester', NULL, '2024-05-21 12:04:16', 0),
(59, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 12:11:34', 1),
(60, '::1', 'testerrra', NULL, '2024-05-21 12:12:20', 0),
(61, '::1', 'testerrra', NULL, '2024-05-21 12:12:29', 0),
(62, '::1', 'testerrra', NULL, '2024-05-21 12:12:33', 0),
(63, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 12:24:59', 1),
(64, '::1', 'testerrra', 23, '2024-05-21 12:25:28', 0),
(65, '::1', 'testerrra', 23, '2024-05-21 12:26:14', 0),
(66, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 12:27:35', 1),
(67, '::1', 'tester123', 24, '2024-05-21 12:28:07', 0),
(68, '::1', 'tester11y34@test.com', 24, '2024-05-21 12:28:32', 1),
(69, '::1', 'abayadmin123@gmail.com', 1, '2024-05-21 12:41:39', 1),
(70, '::1', 'abayadmin123@gmail.com', 1, '2024-05-29 03:38:25', 1),
(71, '::1', 'tester11@test.com', 28, '2024-05-29 05:17:43', 1),
(72, '::1', 'abayadmin123@gmail.com', 1, '2024-05-29 05:17:56', 1),
(73, '::1', 'abayadmin123@gmail.com', 1, '2024-05-29 07:30:52', 1),
(74, '::1', 'abay123', NULL, '2024-05-29 10:39:42', 0),
(75, '::1', 'abayadmin123@gmail.com', 1, '2024-05-29 10:39:47', 1),
(76, '::1', 'abayadmin123@gmail.com', 1, '2024-06-01 09:39:27', 1),
(77, '::1', 'abayadmin123@gmail.com', 1, '2024-06-03 17:31:59', 1),
(78, '::1', 'abayadmin123@gmail.com', 1, '2024-06-04 05:16:53', 1),
(79, '::1', 'abayadmin123@gmail.com', 1, '2024-06-04 23:14:38', 1),
(80, '::1', 'abayadmin123@gmail.com', 1, '2024-06-05 02:20:42', 1),
(81, '::1', 'abayadmin123@gmail.com', 1, '2024-06-05 07:17:59', 1),
(82, '::1', 'abayadmin123@gmail.com', 1, '2024-06-07 02:25:12', 1),
(83, '::1', 'abayadmin123@gmail.com', 1, '2024-06-07 10:13:39', 1),
(84, '::1', 'abayadmin123@gmail.com', 1, '2024-06-07 10:43:16', 1),
(85, '::1', 'abayadmin123@gmail.com', 1, '2024-06-07 10:48:18', 1),
(86, '::1', 'abayadmin123@gmail.com', 1, '2024-06-07 10:51:02', 1),
(87, '::1', 'abayadmin123@gmail.com', 1, '2024-06-07 10:57:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1713428051, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `nik_krywn` varchar(255) DEFAULT NULL,
  `usia_karyawan` varchar(255) NOT NULL,
  `gaji_karyawan` varchar(255) DEFAULT NULL,
  `rek_karyawan` varchar(100) NOT NULL,
  `gmbr_rekktp` varchar(255) NOT NULL,
  `image_karyawan` varchar(255) NOT NULL DEFAULT 'default.webp',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `nik_krywn`, `usia_karyawan`, `gaji_karyawan`, `rek_karyawan`, `gmbr_rekktp`, `image_karyawan`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'abayadmin123@gmail.com', 'abay123', 'abay', '1234567', '23', NULL, '12345', '', 'default.webp', '$2y$10$eL.Wpx6iVQ9xm/VKHa5QJeixTTiuJfHSlj8sWx1M7WBw6jl1MXUl.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-04-25 07:29:00', '2024-04-25 07:29:00', NULL),
(28, 'tester112@test.com', 'testerrr123', 'rizki', '123456', '21', NULL, '123456', '1717755246_5730e3e69f5f75a4ce12.jpg', '1717732470_f07f402b4f73ad5ad6bf.jpg', '$2y$10$/lRkGlX9vVtCXhoQLIVBw.QwhRAB42KINFri77A9of/jQd5tUXGeq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-05-29 05:17:30', '2024-05-29 05:17:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
