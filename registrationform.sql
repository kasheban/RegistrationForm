-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2021 at 05:06 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registrationform`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'test1', 'test1@gmail.com', '$2y$10$hlOdknYvcAF2xnaoWDUBW.7YVT6OQK7OB8bYG/Mqe.PnKvbSIxvji', '2021-10-01 08:39:39', '2021-10-01 08:39:39'),
(2, 'test2', 'test2@gmail.com', '$2y$10$vnxx9.KT1SRAm9BMCaGTi.ZEy51.6guRN1cu/XN3Rj5A2/YJp1Eu2', '2021-10-01 09:16:02', '2021-10-01 09:16:02'),
(3, 'test3', 'test3@gmail.com', '$2y$10$hMx1SxCFAlXMPhp7KF.IyuvZAFMEezj9Lk.g3RJ0/D2/4E75Nw3vK', '2021-10-01 10:26:18', '2021-10-01 10:26:18'),
(4, 'Ravanesh Vequiso', 'mndrgn@gmail.com', '$2y$10$Gb6OGS5e5kvGRDq4k0Gvg.uGvvrcbmYEMLPwIBg11luG3V4FjF2x2', '2021-10-01 10:36:10', '2021-10-01 10:36:10'),
(5, 'aloy', 'aloy@gmail.com', '$2y$10$APN7uM7uVOjSmM.cFoVhbe32o6W0udeFtuKS0UnMykVL/SWwFTnlq', '2021-10-01 18:28:51', '2021-10-01 18:28:51'),
(6, 'ban', 'ban@gmail.com', '$2y$10$ng.PePWe6x8JmPG.9GnXZOX6u4NMbZ4NGV.bDSMpyqgbKDKqitixa', '2021-10-01 18:30:36', '2021-10-01 18:30:36'),
(7, 'rox', 'rox@gmail.com', '$2y$10$RZIJg4DmpBs.X21SVw5/ZefAycCP2JXMrOGlQbpkfzXI60Qz2t26a', '2021-10-01 18:38:24', '2021-10-01 18:38:24'),
(8, 'up', 'up@gmail.com', '$2y$10$0r1Xp9HTvwnCtrdvhvNfousXIpCuaDjbjt9jMaUDt5J0mG52mZ.Di', '2021-10-01 18:38:56', '2021-10-01 18:38:56'),
(9, 'pewpew', 'pew@gmail.com', '$2y$10$qCTquDvvXRPXfwm8kxPHW.Z9NwCu72muJWmoIsIucVxAPw3WTFZom', '2021-10-01 18:42:41', '2021-10-01 18:42:41'),
(10, 'bahaw', 'bahaw@gmail.com', '$2y$10$Vh.AAgNLyt.XovLFLy93H.U5wAHmvoDRiKCY38C7AD1ZSI.8I4bJy', '2021-10-01 19:04:13', '2021-10-01 19:04:13'),
(11, 'Anotha', 'anotha@gmail.com', '$2y$10$5EXSrlg0b93B5e92Ians5.AsCMPy34kiFkfT/EYDctRDpVYpPkYcm', '2021-10-01 19:04:44', '2021-10-01 19:04:44');

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
(1, '2021_10_01_133932_create_accounts_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
