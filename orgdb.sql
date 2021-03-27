-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 06:13 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orgdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `commentable_id` int(10) UNSIGNED NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `body`, `url`, `user_id`, `commentable_id`, `commentable_type`, `created_at`, `updated_at`) VALUES
(1, 'General cleanliness of the public places like city square', 'take snaps and send to the admin', 4, 5, 'Project', '2020-05-22 08:26:48', '2020-05-22 08:26:48'),
(2, 'Great job done #Governor of NBGS', 'http:governor@work.com', 4, 7, 'Project', '2020-05-22 16:45:43', '2020-05-22 16:45:43'),
(3, 'great job', 'twitter.com/kuol', 4, 7, 'Project', '2020-05-22 16:52:55', '2020-05-22 16:52:55'),
(4, 'wow thats amazing', 'twitter.@kuol', 4, 7, 'App\\Project', '2020-05-22 16:53:55', '2020-05-22 16:53:55'),
(5, 'gf', 'hh', 4, 7, 'App\\Project', '2020-05-22 16:55:06', '2020-05-22 16:55:06'),
(6, 'thats good job #@kuol', 'screenshots to be forwarded', 5, 5, 'App\\Project', '2020-05-23 05:02:35', '2020-05-23 05:02:35'),
(7, 'gf', 'ee', 4, 5, 'App/Project', '2020-05-23 05:13:59', '2020-05-23 05:13:59'),
(8, 'completed in seven days', 'done deal', 4, 5, 'App\\Project', '2020-05-23 05:42:29', '2020-05-23 05:42:29'),
(9, 'great move', 'http:unicef.com', 4, 8, 'App\\Project', '2020-05-23 06:14:57', '2020-05-23 06:14:57'),
(10, 'vvf rr', 'ddcvv', 4, 8, 'App\\Project', '2020-05-23 06:15:45', '2020-05-23 06:15:45'),
(11, 'Lets be fast and consistent in the general cleanliness', 'http:org.com', 4, 5, 'App\\Project', '2020-05-23 07:19:34', '2020-05-23 07:19:34'),
(12, 'great job', 'https:news', 9, 9, 'App\\Project', '2020-06-14 12:22:14', '2020-06-14 12:22:14'),
(13, 'when is it starting', 'hope to be there', 4, 10, 'App\\Project', '2020-06-15 02:25:16', '2020-06-15 02:25:16'),
(14, 'i hope to be part of this project', 'kuolmarko47@gmail.com', 4, 11, 'App\\Project', '2020-06-15 03:53:22', '2020-06-15 03:53:22'),
(15, 'keeep it up', 'https:anthems.com', 9, 12, 'App\\Project', '2020-06-24 00:44:41', '2020-06-24 00:44:41'),
(16, 'thats great job', NULL, 6, 12, 'App\\Project', '2020-06-24 00:49:08', '2020-06-24 00:49:08'),
(17, 'this a great job', 'https:hairdressing', 10, 13, 'App\\Project', '2020-06-27 08:16:34', '2020-06-27 08:16:34'),
(18, 'great job', NULL, 6, 13, 'App\\Project', '2020-06-27 08:23:07', '2020-06-27 08:23:07'),
(19, 'wow this is great', 'https:ww', 11, 15, 'App\\Project', '2020-07-01 06:05:51', '2020-07-01 06:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'UNesco', 'Deals in provision of scholastic materials such as books, pens, rulers etc in the rural parts of ss', 1, '2020-05-05 22:41:51', '2020-05-26 05:05:44'),
(5, 'IOM', 'Responsible for the immigration and catering of refugees', 2, '2020-05-28 11:05:00', '2020-05-28 11:05:00'),
(7, 'Primary Health Care', 'emphasizes the general sanitation of the community over crowded areas', 4, '2020-05-21 10:52:39', '2020-06-18 14:58:49'),
(8, 'UNICEF', 'Deals in provision of scholastic materials to school children in the rural areas of \r\nof South Sudan.', 4, '2020-05-21 11:49:15', '2020-05-21 11:49:15'),
(9, 'Road Construction', 'This industry is meant to construct roads in different parts of SS', 5, '2020-05-23 05:05:10', '2020-05-23 05:05:10'),
(10, 'New Vision Group', 'News 24/7', 9, '2020-06-14 12:11:11', '2020-06-14 12:11:28'),
(13, 'South Phones', 'To be dealing in manufacturing of mobile phones in South Sudan and later to its neighbouring countries', 4, '2020-06-15 03:50:33', '2020-06-15 03:55:44'),
(15, 'Dante Saloons', 'Best saloon in the city', 10, '2020-06-27 08:12:35', '2020-06-27 08:19:45'),
(16, 'E-learning', 'teaching people online', 9, '2020-06-29 07:40:56', '2020-06-29 07:40:56'),
(17, 'School', 'Vincent school', 11, '2020-07-01 06:01:35', '2020-07-01 06:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2020_05_04_211909_create_companies_table', 1),
(13, '2020_05_04_212251_create_projects_table', 1),
(14, '2020_05_04_214319_create_tasks_table', 1),
(15, '2020_05_04_215200_create_comments_table', 1),
(16, '2020_05_04_220327_create_roles_table', 1),
(17, '2020_05_04_221701_create_project_user_table', 1),
(18, '2020_05_04_222314_create_task_user_table', 1),
(19, '2020_05_22_112050_create_comments_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yazol@gmail.com', '$2y$10$Mzx6q9FYGBagKJ4gOpaneOUI/Q2FWHoZxI6x15gulKV5fBKhwxONi', '2020-06-14 12:01:09');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `company_id`, `user_id`, `days`, `created_at`, `updated_at`) VALUES
(5, 'Primary Health Care', 'Dealing with general sanitation of NBGS', 1, 1, 8, '2020-05-20 14:41:55', '2020-05-27 14:41:55'),
(6, 'Protect the disability right', 'Offer equal rights to the disabled given that they have the \r\ncapability to do the required service.', 1, 1, 8, '2020-05-20 14:41:55', '2020-05-27 14:41:55'),
(7, 'Cleanliness', 'To promote general sanitation', NULL, 4, NULL, '2020-05-22 16:40:38', '2020-05-22 16:40:38'),
(8, 'Immunisation', 'Measles immunisation', NULL, 4, NULL, '2020-05-23 06:09:01', '2020-05-23 06:09:01'),
(9, 'News Anchoring', 'Daily news anchoring', NULL, 9, NULL, '2020-06-14 12:21:44', '2020-06-14 12:21:44'),
(10, 'Weekly Cleaning', 'www.weekly', NULL, 4, NULL, '2020-06-15 02:24:39', '2020-06-15 02:24:39'),
(11, 'Mobile App Development', 'Designing and developing applications for mobile phone in respect to their screen sizes', NULL, 4, NULL, '2020-06-15 03:52:22', '2020-06-15 03:52:22'),
(12, 'Anthems band project', 'teaching country men to master anthems', NULL, 9, NULL, '2020-06-24 00:42:39', '2020-06-24 00:42:39'),
(13, 'Hairdressing project', 'Ladies new fashion', NULL, 10, NULL, '2020-06-27 08:14:43', '2020-06-27 08:14:43'),
(14, 'Programming', 'java, html, css, javascript etc', NULL, 9, NULL, '2020-06-29 08:13:24', '2020-06-29 08:13:24'),
(15, 'Programming Python', 'python training', NULL, 11, NULL, '2020-07-01 06:04:03', '2020-07-01 06:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `project_user`
--

CREATE TABLE `project_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2020-05-01 09:30:13', '2020-05-15 09:30:13'),
(2, 'Moderator', '2020-05-01 09:30:13', '2020-05-02 09:30:13'),
(3, 'User', '2020-05-09 09:31:32', '2020-05-10 09:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `hours` int(10) UNSIGNED DEFAULT NULL,
  `company_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_user`
--

CREATE TABLE `task_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `task_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `first name`, `last name`, `city name`, `role_id`) VALUES
(1, 'kuol', 'kuolmark@gmail.com', 'kuolmark23', NULL, '2020-05-13 14:01:06', NULL, 'Kuol', 'Lual', 'Kampala', 1),
(4, 'yazol', 'yazol@gmail.com', '$2y$10$MnSW4K.VjiMxNy6fG4QEguAAkHgDvVCkR2bCeT.nXzjrFTuIEf/O2', '55vtJkUuXXkFnIMM22tQ5PvzUbZEvg783tUPu512sGUAzv5ll8LnjD3SrnNk', '2020-05-21 09:01:04', '2020-05-21 09:01:04', NULL, NULL, NULL, 3),
(5, 'Kuol Lual', 'kuol@gmail.com', '$2y$10$7eB0EEOpFIiCkoemJX.qtekVp/XDBWPQq/UOAyHgMpN9mJbigePSu', 'suDY2N1MfnijevK36DQwUQm255XWKBlcLPVARx4YIqeZZbRFffkaMZ7a3Tuq', '2020-05-23 05:01:06', '2020-05-23 05:01:06', NULL, NULL, NULL, 3),
(6, 'Kuol Admin', 'admin23@gmail.com', '$2y$10$L/ZPb2vHvZ8ypZFNI.VODOuV86CboRR8JB64q2GNq5wsDs1QR7awi', 'vhSz858rst54XXkakoP1pxo0Y2U1ecOyJbVilmfdHEiyVTSBB1gBKRrmfkgc', '2020-05-27 06:20:22', '2020-05-27 06:20:22', NULL, NULL, NULL, 1),
(7, 'Jerry', 'jerry@gmail.com', '$2y$10$7Gr5Nm9bybSutq4JYsutnu7sNxJtddXQg5uvXyAenk.NZRF8JtV7m', 'NtNQAo2vMEg84l1O3BRfZ8vtfgswGlEC5bpq8O4FvTmDW56Z4MrmugbUO1RQ', '2020-06-14 11:08:51', '2020-06-14 11:08:51', NULL, NULL, NULL, 1),
(8, 'Kuol Lual', 'admin423@gmail.com', '$2y$10$juQD9Wu/OATeV/79OtfIEeuSR6qThyR1BNf.E32TC5PRUPiXJEC2G', '6zKzCA0Sxf4Vt0H0E7WA954CBdc4DAYCW3Ryt2JzMkjIPWbVlbc6e2ycZRy3', '2020-06-14 11:11:33', '2020-06-14 11:11:33', NULL, NULL, NULL, 3),
(9, 'Marko', 'marko@gmail.com', '$2y$10$3r6b7Q37.2JaiMLR49MurehzQeindmU.8lenGozSpB1vWD4QkSHZa', 'H2UquiaWsMdabs9WpzoFK2vFiycJWL9AMYWgDUM1B3gxCb9J9rnXSq7es1Y3', '2020-06-14 12:04:32', '2020-06-14 12:04:32', NULL, NULL, NULL, 3),
(10, 'Daniel Ogwal', 'daniel.og223@gmail.com', '$2y$10$CZI97NVdnenyJCOUQ6/9p.9/hk2NxAuYXnCS0RcvyVMiJQqCKkMk2', 'LBl9nKHgMnIhALvziWdEBFY2zmKIMfhrlbpKPWHvcxj7prjRB58GmnhSWlcE', '2020-06-27 08:11:14', '2020-06-27 08:11:14', NULL, NULL, NULL, 3),
(11, 'Adriko Vincent', 'adrikovincent07@gmail.com', '$2y$10$iuGob0l.clehJiMDTWcboO.ySq3DEQgcDqmjPeFUgr6Xyd7CIrHEO', NULL, '2020-07-01 05:58:43', '2020-07-01 05:58:43', NULL, NULL, NULL, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_user_id_foreign` (`user_id`),
  ADD KEY `projects_company_id_foreign` (`company_id`);

--
-- Indexes for table `project_user`
--
ALTER TABLE `project_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_user_user_id_foreign` (`user_id`),
  ADD KEY `project_user_project_id_foreign` (`project_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_user_id_foreign` (`user_id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_company_id_foreign` (`company_id`);

--
-- Indexes for table `task_user`
--
ALTER TABLE `task_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_user_user_id_foreign` (`user_id`),
  ADD KEY `task_user_task_id_foreign` (`task_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `project_user`
--
ALTER TABLE `project_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `projects_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `project_user`
--
ALTER TABLE `project_user`
  ADD CONSTRAINT `project_user_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `project_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`),
  ADD CONSTRAINT `tasks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `task_user`
--
ALTER TABLE `task_user`
  ADD CONSTRAINT `task_user_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  ADD CONSTRAINT `task_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
