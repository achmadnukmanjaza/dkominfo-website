-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 03:35 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kominfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Bintal', 'bintal@gmail.com', NULL, '$2y$10$emQOSZPBf/D8bXbYqsN9Wu77Ot0ptH.aEwVTwr9HF8y5tL.yAe9Gu', '9DVudhtYalAuxqgNNcMKYpfNXz4IzJl1fXSixgAD4lPlPYYghjGbx51bJACY', '2020-10-04 23:32:36', '2020-10-04 23:32:36'),
(2, 'users', 'Kasembon', 'kasembon@gmail.com', NULL, '$2y$10$xy/8prkX/S0KbrBO8HU5Ruw.gZUP18BKQzjuPR1ZXqzhZ1OlfuP7O', '6aNx0pJGy9qSX8PQCGUZFMClohIFLmuvQGxKVDsPwxrNV8lqE3k1KFtrLKY7', '2020-10-14 19:50:54', '2020-10-14 19:50:54'),
(3, 'users', 'Ngantang', 'ngantang@gmail.com', NULL, '$2y$10$wYDCyw85NS9TR.znu1hvauvHbaAFSC6qD17hDN0yHRG6wzlm7cDyS', 'TdBlfYKSMUqto3hXvezlGA7YhAMM5hP7F6yD8tTvizaDYDAthax9tY30LypY', '2020-10-15 07:23:46', '2020-10-15 07:23:46'),
(4, 'users', 'Pujon', 'pujon@gmail.com', NULL, '$2y$10$skXnvxf44kkn3ZKEdu/1qeKOwywqevtCDio3xqBfIQkgnQ5Dy1zVu', 'jCmexdoL3Kd1mkyLCCNXj1YlmppL5PVJRrFbe0W99byD1hP9iiUTLa65enmg', '2020-10-15 07:26:23', '2020-10-15 07:26:23'),
(5, 'users', 'Singosari', 'singosari@gmail.com', NULL, '$2y$10$jokJEE3XCz5ybKwfVp01eebCwJmD.aRtHFR4nAtN/89PbBiO.olEe', '8q29Vel6vahN520zgFExjCAowOmvgJCXIY9n4BE3ExRGweDgJES13YkaJlmk', '2020-10-15 07:28:11', '2020-10-15 07:28:11'),
(6, 'users', 'Lawang', 'lawang@gmail.com', NULL, '$2y$10$SrMQI17M20hL5N0RBsBgMuFNEj2NgnsYwTHpigeD.mXnykb4Istmq', 'C9BvvUGzHPfXPNxe1DoSRVE2A37OKlVvS16s4cg0ctxB7msai9pR1sQ4OUwU', '2020-10-15 07:29:01', '2020-10-15 07:29:01'),
(7, 'users', 'Karangploso', 'karangploso@gmail.com', NULL, '$2y$10$BHD7Qn0.fPqQf3YHHZGXCu0is5R9s5xAfAtDbvukMzW9CM2NKkxem', 'MpoldxHTVssmFlPX5h11NJu1Jo0npEtvOvX8QTQg8LtA1cIkkuyAAHbcef5s', '2020-10-15 07:30:38', '2020-10-15 07:30:38'),
(8, 'users', 'Dau', 'dau@gmail.com', NULL, '$2y$10$3uKhg26oDU3ttqklbjNqd.n46cFhmzYzydU.IX/ndRFJV7mGNbYjm', 'MMJjiGAfSCtNKJqxfuiz6GHRhCLdbZeqEchUQCke0K4tBaTFQxRIceoYQz9C', '2020-10-15 07:31:33', '2020-10-15 07:31:33'),
(9, 'users', 'Tumpang', 'tumpang@gmail.com', NULL, '$2y$10$vq3KOoa2vV479iBspZGOrOydk/VzZzBcdKWSr7GmuNXhYjgxdlblq', 'uZ2Nt1sjrCK2xICdaYKVSmX6yPmXfiKkI52erY6gSvO73NLpH2Yy4naureKn', '2020-10-15 07:32:56', '2020-10-15 07:32:56'),
(10, 'users', 'Pakis', 'pakis@gmail.com', NULL, '$2y$10$oxJB0ocdKvu1r7AnNYcvSu3L4w3jOiCG7h7NTz4MB4ve4enykTaE6', 'uv2qoAOLl4WgvDLjsakeedsvHgZrQTTaUvs5avzaIxTVI4SphGyKT7n0aefc', '2020-10-15 07:34:24', '2020-10-15 07:34:24'),
(11, 'users', 'Jabung', 'jabung@gmail.com', NULL, '$2y$10$9gtTiYtrXIYB/OrvWHQZhObpZ8TlL.rADxADRbjwt/d8XFUSxo2cu', 'IJKx5tX12z6vaXfQ6ngRFKfEXGQnT9tCphGYpZf6qfjwaBfEsgoIfjDZLWrP', '2020-10-15 07:35:05', '2020-10-15 07:35:05'),
(12, 'users', 'Poncokusumo', 'poncokusumo@gmail.com', NULL, '$2y$10$ZuxhNL32Nq.MQKZsQdNEruWlIYXhSONox4d.ddCHs8y.J.wAfk8WG', '29aTRy8gvTX5bM42ynlqYn6c16hK1h7Yu40XSefWZJHYx1i3ghIb7SVH0ZkG', '2020-10-15 07:37:57', '2020-10-15 07:37:57'),
(13, 'users', 'Bululawang', 'bululawang@gmail.com', NULL, '$2y$10$SfNtjbWNIi0nMH.J54SqeOBromySB.8awAyjdL.W/q8IU7cTXeTYu', 'xsUF1JiszPwBPLKEASz40CHi51Nmnbgn2sNaX2JjJneD0jshhBhdmcLBQklU', '2020-10-15 07:39:04', '2020-10-15 07:39:04'),
(14, 'users', 'Wajak', 'wajak@gmail.com', NULL, '$2y$10$oSEOUrHrmIE9qiGhUzGqpep9dMGiL6niq8LSXTIkJJYkl9HneUGfW', 'y3N8RGJM5IdoAP8ChCfORb15qbX0NRq3blDCOt1tloA2tlCmQSqVLBGrRzcG', '2020-10-15 07:39:50', '2020-10-15 07:39:50'),
(15, 'users', 'Tajinan', 'tajinan@gmail.com', NULL, '$2y$10$lNpEXJTb6fJADyAGPazCJeJYn8apJrY7shj5LTJ4AjnWJum6T2xom', 'D41kh176Ybo4MpIA3OSVh0fdnAZUxm0P1njmU3SIvfuJDga94HAVdjdXi7OB', '2020-10-15 07:41:43', '2020-10-15 07:41:43'),
(16, 'users', 'Gondanglegi', 'gondanglegi@gmail.com', NULL, '$2y$10$kExz8royLSRwESjnx2sowO/XPBAQzCzgeQxpEVQ7ESAbQ51X8JU7u', '6gCUVcidU6ytIHUIwXnZZE1qYGOVFiaeSofnoBulYoIOUK3WNAJ9KJiZSppd', '2020-10-15 07:42:48', '2020-10-15 07:42:48'),
(17, 'users', 'Pagelaran', 'pagelaran@gmail.com', NULL, '$2y$10$SiWcwcZ1PV9JV62MvYMfAO4hsQZtW9n1JSpP5PbEzh/v47BNZaQsK', 'gGClYsdpH8jxf8hzCND814JYivly6zU23pfDyaBlu3EIhYFnU1kmTzeKUFlo', '2020-10-15 07:43:58', '2020-10-15 07:43:58'),
(18, 'users', 'Turen', 'turen@gmail.com', NULL, '$2y$10$DpBt.E/pggLF3HiHwWmY8enrxP/NJafPHRg2B47QBAsMHIcmb.tya', 'HFDBHwEb73zTdvquesD7u8iDNRZoxw5kAkjSzT2Gyw0RALEjEn3bRhL34zKG', '2020-10-15 07:44:54', '2020-10-15 07:44:54'),
(19, 'users', 'Dampit', 'dampit@gmail.com', NULL, '$2y$10$l1JYSrJpItOXPDL0w6e5tuhQI3LJAgvjJ0JP96JVtZXNoZJmG/enu', 'AOINlsRBYuMfARxK9wtoh0Yng7SzkgqDcoHuYA2l9Qqia8mo6aPJ4LvP4tcb', '2020-10-15 07:45:39', '2020-10-15 07:45:39'),
(20, 'users', 'Tirtoyudo', 'tirtoyudo@gmail.com', NULL, '$2y$10$35pYLkuZaGoGeujvcaD3C.V6Q4UvONUak7UfJvJ7mxwOxnaKbVImO', '72Q6xS91VfK2f3rGCE3PAOUJzzwB6RNVhNaSk3UV9F7E4AcFpUfHZ5zv2LrL', '2020-10-15 07:46:53', '2020-10-15 07:46:53'),
(21, 'users', 'Ampelgading', 'ampelgading@gmail.com', NULL, '$2y$10$f1VDaACZ47iq7bU9000MfOO6m/krkgHkr5lCXOZtu0SBeGe9deC0O', 'Orv7tyGn5FiG9GuaLJtCqq1H6CGKWayVrLrn5LDoEccv1QXpD59Nm8K2cSed', '2020-10-15 07:47:43', '2020-10-15 07:47:43'),
(22, 'users', 'Sumberwajing Wetan', 'sumberwajingwetan@gmail.com', NULL, '$2y$10$E8HGNUQD2bbTpfQrEYpjHeEHHyEyXfr5TSbh2sp.Huro1Ml4JKJCu', '40Jynia1TYzbxA0U2eFGrIx1CQitNVJ13PDxQY3zSGmHJRieP0fIuAGfL6zS', '2020-10-15 07:48:56', '2020-10-15 07:48:56'),
(23, 'users', 'Kepanjen', 'kepanjen@gmail.com', NULL, '$2y$10$sO0Dt.opWrAxrxzNiiDwmuDvEBNX6QdxdJxZz/vcsIUFT6gKOu2V.', 'K6bSMPGsL592p0bByg55L3uxoBKsH7wm7pXCv25iip4Msot2B7RMxYanzFhB', '2020-10-15 07:51:12', '2020-10-15 07:51:12'),
(24, 'users', 'Pakisaji', 'pakisaji@gmail.com', NULL, '$2y$10$sUvYpjOjWzpxg.NjexOwMuC5yPqSx8o.bAlKn9n5nxP6/FPZm5UsW', 'jrrrz9nALzHRHobqsNA6HJFC8dTdBobTyO4Ui9H1EFhN6LbhcgAikh8qQ8Tx', '2020-10-15 07:52:03', '2020-10-15 07:52:03'),
(25, 'users', 'Wagir', 'wagir@gmail.com', NULL, '$2y$10$tYna9MnsLXTQEosDy3oOeuSZ3xkcxe5navKblRc5IR5V1EHxv08nW', '9XgbyoNUJn7CkYzOTVmJx0bpZCKfRM9AeuliY19VAp2Rjnr8u34XOllFOwRb', '2020-10-15 07:52:52', '2020-10-15 07:52:52'),
(26, 'users', 'Ngajum', 'ngajum@gmail.com', NULL, '$2y$10$X1epbAylvtrXP0FZ7RheW.CdLi4f0owgBXbCy5p3fWytHvTC9Jt5a', 'pu2hL6wf6ju9gBOngNxih6kC926TkX7AJloiYkXi0v0FdyUKWo77yRlF4Mc0', '2020-10-15 07:54:10', '2020-10-15 07:54:10'),
(27, 'users', 'Wonosari', 'wonosari@gmail.com', NULL, '$2y$10$BejE8qY8lSbn5uc8XKZ9MOZkB/UToPLeBADVJJkKHxKcNKssakBce', 'mKS3YKREhSPZYFNshE0QzGMh13ZTG6XglPFBtTrocVxUXkdNtFTWOPxd2OB2', '2020-10-15 07:54:56', '2020-10-15 07:54:56'),
(28, 'users', 'Sumberpucung', 'sumberpucung@gmail.com', NULL, '$2y$10$EdD/XlqVzEzZ9V1gjNZj1.jc5hf5avek.DMaXOYaaa1LNOpwjvhBW', 'FKZvYlcWVEpwOHzY2caXzedyXPkbjMrT8N08FsdvWc1Cqpn9BxdL9rc7AbR0', '2020-10-15 07:58:02', '2020-10-15 07:58:02'),
(29, 'users', 'Kromengan', 'kromengan@gmail.com', NULL, '$2y$10$7TRgwnMXkfs0wKqIIdRiHO/1.n8idwyFBf2PjGf9g0JDc0mVZsZTq', 'DNybs7CINK9Ed71KBVQngVYzr0dp4XoL695LkF8tgXYJ0F6q6kHc9AzxoZb5', '2020-10-15 08:10:02', '2020-10-15 08:10:02'),
(30, 'users', 'Pagak', 'pagak@gmail.com', NULL, '$2y$10$FFqlEYg6s.tNPPywCOpd0OuRTkaaNeiAQYR5IrROE2m2ADcAbQnw2', 'jfXAgaBgQLl3conBTXwF6bpItjIekjamKMAIeALDmspp3Xm1lfjCP0aXCDPt', '2020-10-15 08:10:57', '2020-10-15 08:10:57'),
(31, 'users', 'Kalipare', 'kalipare@gmail.com', NULL, '$2y$10$dZVPQEiXO43VozTkx8Wdx.BvhLM9jX.QZtQu3dCO6OcBbhy2P4ooW', 'RbHkWJD7CfhikWrs9RFCb9a9IRBunvS8LndToAWBjKydevEkPKQHZDkwgvvc', '2020-10-15 08:11:55', '2020-10-15 08:11:55'),
(32, 'users', 'Donomulyo', 'donomulyo@gmail.com', NULL, '$2y$10$4B76xhEgNaH6xQ2b8SMVrOWx7b6g4PltscWZQ0yf39zNd6pZ1V2oK', 'GIsO2x9lT3ttLKcscBU9retPFkD0LDcJil78iYoo46eZnXCAwAPsGgPRUY4G', '2020-10-15 08:14:08', '2020-10-15 08:14:08'),
(33, 'users', 'Gedangan', 'gedangan@gmail.com', NULL, '$2y$10$0LTNHKLM0e1DIO80.IfRMuZjNMeYgeft2VUhZ1rnqEVBqlXQ8LLj.', 'L9fhNOaJbR3NrK0VF2ZRmIjLo3kmsxAsUOY5HeH0aWqnmHA5qtvFdQrwzTE7', '2020-10-15 08:14:57', '2020-10-15 08:14:57'),
(34, 'users', 'Bantur', 'bantur@gmail.com', NULL, '$2y$10$JpqeVQVXiCm2tIFyXnDgiOKJJaYvfQIY1IUCsfKd3SaaQn1XSoTSa', 'v6WsrPS38UEz4kCBkzool6Qv0zL5KS1YRnKvqWV7RiwlFsIrA5JyUYy8P0VF', '2020-10-15 08:15:42', '2020-10-15 08:15:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
