-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2023 at 12:49 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testclicknext`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balanceID` bigint(20) UNSIGNED NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balanceID`, `amount`, `userID`) VALUES
(1, '9987', 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2014_10_12_000000_create_balance_table', 2),
(4, '2014_10_12_000000_create_transaction_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'token', '509bccc19231aaf29b213b0eadc4f18c2f79452ea2b3c01fbf0c40f68553bf04', '[\"*\"]', NULL, '2023-02-03 22:21:54', '2023-02-03 22:21:54'),
(2, 'App\\Models\\User', 1, 'token', '1faaff566ca65f469c37cc3ed40eab6450d783e3abad0259a3ff224c8765265c', '[\"*\"]', NULL, '2023-02-03 22:24:31', '2023-02-03 22:24:31'),
(3, 'App\\Models\\User', 1, 'token', '01467ebc145dc275121d46d056edb6dbe36194393a1b8178956648dbe3cea36c', '[\"*\"]', NULL, '2023-02-03 22:31:42', '2023-02-03 22:31:42'),
(4, 'App\\Models\\User', 1, 'token', 'b3a13176ceeb69d96c05594b614690729bb7915035a6e8fcea99d0c6c80beecf', '[\"*\"]', NULL, '2023-02-03 22:32:27', '2023-02-03 22:32:27'),
(5, 'App\\Models\\User', 1, 'token', '5dff0966d88ffa7ef943367efaf2d28b36b8f51a17b7ae96eef35aedec035968', '[\"*\"]', NULL, '2023-02-03 22:33:30', '2023-02-03 22:33:30'),
(6, 'App\\Models\\User', 1, 'token', '4e91f41e9c1e7bb471df7d7e511af8f47bef488af0ad4c24744adb72d3d58c0c', '[\"*\"]', NULL, '2023-02-03 22:34:10', '2023-02-03 22:34:10'),
(7, 'App\\Models\\User', 1, 'token', 'f6cd034d1efc1edad6de7d5e9f59a34cfd9ead8269796198e3b952f1f6270923', '[\"*\"]', NULL, '2023-02-03 22:35:46', '2023-02-03 22:35:46'),
(8, 'App\\Models\\User', 1, 'token', '29393097d2e940324875b6ec349415ca3c79d605bd090074cd54907bb5db9a18', '[\"*\"]', NULL, '2023-02-03 22:37:04', '2023-02-03 22:37:04'),
(9, 'App\\Models\\User', 1, 'token', 'e683a4288af3ed10514f59e158e23e0b273f3a45a98fe01101281bab0839c86d', '[\"*\"]', NULL, '2023-02-03 22:39:40', '2023-02-03 22:39:40'),
(10, 'App\\Models\\User', 1, 'token', 'c96dd85df530a31417955d45af56109d3e183f93b15fa228e1d5b66148093959', '[\"*\"]', NULL, '2023-02-03 22:45:24', '2023-02-03 22:45:24'),
(11, 'App\\Models\\User', 1, 'token', 'a582a6b77dcb1657993d2205fb630ce148c6661db54f0139baf37e39d7f0df82', '[\"*\"]', NULL, '2023-02-03 22:45:36', '2023-02-03 22:45:36'),
(12, 'App\\Models\\User', 1, 'token', '3ad32736c65e5522ca1376fff34393c5a214d1fc5e5cf25b238e4ed4e4c5a59f', '[\"*\"]', NULL, '2023-02-03 22:48:51', '2023-02-03 22:48:51'),
(13, 'App\\Models\\User', 1, 'token', '92938133590d77d9eb72860abe2849186a7667bb3b17fdcd66d19e3c37e352df', '[\"*\"]', NULL, '2023-02-03 22:50:20', '2023-02-03 22:50:20'),
(14, 'App\\Models\\User', 1, 'token', '7c25d88207e83c1d532e196e9a44712c6e203764409e68b02c5ed6e61d2e35da', '[\"*\"]', NULL, '2023-02-03 22:51:04', '2023-02-03 22:51:04'),
(15, 'App\\Models\\User', 1, 'token', '92955ff510a1349fb8f0df371647152cc3b8d2737e6015870e5f3b9004ae3b50', '[\"*\"]', NULL, '2023-02-03 22:51:57', '2023-02-03 22:51:57'),
(16, 'App\\Models\\User', 1, 'token', 'd1ac5740d17b3dc0566fba894dbf9be40f86f73d431e79803262f70e4c53f84d', '[\"*\"]', NULL, '2023-02-03 23:51:54', '2023-02-03 23:51:54'),
(17, 'App\\Models\\User', 1, 'token', '6ed0feb1929b94272ba0594bb577610d7437afa8acd5aa4ea8cd3c99b940eb03', '[\"*\"]', NULL, '2023-02-06 01:07:20', '2023-02-06 01:07:20'),
(18, 'App\\Models\\User', 1, 'token', '71d1ba2d5bae35a44ea0d9328da1dd2b5abba0159f82719e94b6966ac7899401', '[\"*\"]', NULL, '2023-02-06 01:10:22', '2023-02-06 01:10:22'),
(19, 'App\\Models\\User', 1, 'token', 'dcf95ee64e5b23da93bf06e5da7128a66508d99315344534448765dcde21c351', '[\"*\"]', NULL, '2023-02-06 01:10:46', '2023-02-06 01:10:46'),
(20, 'App\\Models\\User', 1, 'token', '779907fdb237a223b7fddcf1379330a3e54a8c1985790a38b53e15feb49387b6', '[\"*\"]', NULL, '2023-02-06 01:12:04', '2023-02-06 01:12:04'),
(21, 'App\\Models\\User', 1, 'token', 'e00335c75bfb6b790a62efd137fc0d90d35b3d9825425334bcd929fcf6d666c6', '[\"*\"]', NULL, '2023-02-06 01:12:11', '2023-02-06 01:12:11'),
(22, 'App\\Models\\User', 1, 'token', 'bd36c6b03437d099a7419ef7fbd166edbd568312d53196d7ec624ff3e602de39', '[\"*\"]', NULL, '2023-02-06 01:18:08', '2023-02-06 01:18:08'),
(23, 'App\\Models\\User', 1, 'token', 'de388703cbb14b083d970c67f82de7f104ff29715bd0590a6aefd339e2a013eb', '[\"*\"]', NULL, '2023-02-06 01:18:09', '2023-02-06 01:18:09'),
(24, 'App\\Models\\User', 1, 'token', 'e3c7b8db564e06d05e7d93a9ddbaf663b40f7b731493b47aedc156a8fa22542e', '[\"*\"]', NULL, '2023-02-06 01:19:35', '2023-02-06 01:19:35'),
(25, 'App\\Models\\User', 1, 'token', 'aa0156eeb8b3e439fd6352f35ac3748760c01977b3881f0554ab6a5d638eae0b', '[\"*\"]', NULL, '2023-02-06 01:20:06', '2023-02-06 01:20:06'),
(26, 'App\\Models\\User', 1, 'token', '691f41dbb34342796f9839cb260f920df06e3d2220061b363d969ab96d6e6a91', '[\"*\"]', NULL, '2023-02-06 01:22:05', '2023-02-06 01:22:05'),
(27, 'App\\Models\\User', 1, 'token', 'fdfef726847726e04fd1ee057bc2875de07fc86405af8f6a13fd785e71f01e7e', '[\"*\"]', NULL, '2023-02-06 01:22:07', '2023-02-06 01:22:07'),
(28, 'App\\Models\\User', 1, 'token', '45d4479b3e52068e6d2dd43aa9a00fed538390f1a63436f8aabbb48c4ba10470', '[\"*\"]', NULL, '2023-02-06 01:22:56', '2023-02-06 01:22:56'),
(29, 'App\\Models\\User', 1, 'token', '51f0690631e744b793f255882d239d4e7bcead8d3f01f8f279ae0657c3e07d8c', '[\"*\"]', NULL, '2023-02-06 01:25:10', '2023-02-06 01:25:10'),
(30, 'App\\Models\\User', 1, 'token', 'a0fbcd71f28fe6c195d3e2bc639729f5665692f85238a7255f5b92beb9055b97', '[\"*\"]', NULL, '2023-02-06 01:25:12', '2023-02-06 01:25:12'),
(31, 'App\\Models\\User', 1, 'token', '89349f677721e852b86371dd5fae6344852c7b6905e5cad5c4eb8d110d49c140', '[\"*\"]', NULL, '2023-02-06 02:07:53', '2023-02-06 02:07:53'),
(32, 'App\\Models\\User', 1, 'token', '9836cf9032dff565e49b42342545a5515241fc0d93856d8d7b5ee2ecd7a3b88c', '[\"*\"]', NULL, '2023-02-06 02:08:12', '2023-02-06 02:08:12'),
(33, 'App\\Models\\User', 1, 'token', 'f84fa18b6cceb5bdefa8506deb07b0b461c4be886a2dcb8af541ab626cf7d02d', '[\"*\"]', NULL, '2023-02-06 02:08:49', '2023-02-06 02:08:49'),
(34, 'App\\Models\\User', 1, 'token', '0dcdfbf00fcab1e3a5688f63488065bf454d6522f8b7f2ab5297aa05406b6a30', '[\"*\"]', NULL, '2023-02-06 02:10:39', '2023-02-06 02:10:39'),
(35, 'App\\Models\\User', 1, 'token', 'd805f471efb59353ccd60447c072433e97852e88ed5ccb938685d6d4c35568e8', '[\"*\"]', NULL, '2023-02-06 02:10:54', '2023-02-06 02:10:54'),
(36, 'App\\Models\\User', 1, 'token', 'e6a7e4cd541493ce6aa6f73a4cbf7b12d8822d32dc744768bf21a3cc3a61872c', '[\"*\"]', NULL, '2023-02-06 02:12:24', '2023-02-06 02:12:24'),
(37, 'App\\Models\\User', 1, 'token', 'fcc951d097a03e96dcca7c242c508b67f906f9e10decd90137eaed1b2e527aea', '[\"*\"]', NULL, '2023-02-06 02:15:09', '2023-02-06 02:15:09'),
(38, 'App\\Models\\User', 1, 'token', 'fd03b938aa6f8a4d2357ba169f6c2f6581e714b672700f69f23fcfb5cf0459a0', '[\"*\"]', NULL, '2023-02-06 02:16:45', '2023-02-06 02:16:45'),
(39, 'App\\Models\\User', 1, 'token', '5670de369149961225f32a47a26586028ab3c28acd3520115311f1b01ee6f357', '[\"*\"]', NULL, '2023-02-06 02:18:40', '2023-02-06 02:18:40'),
(40, 'App\\Models\\User', 1, 'token', 'c2f646fff37b663a46b613efd544ddf40ba15fb1d879b7384f5c4528838f3533', '[\"*\"]', NULL, '2023-02-06 02:19:08', '2023-02-06 02:19:08'),
(41, 'App\\Models\\User', 1, 'token', '4a3165b20e7b3894d2adc69b87a69c8abcc016c16c552eb18685835fe9a2bb41', '[\"*\"]', NULL, '2023-02-06 02:19:24', '2023-02-06 02:19:24'),
(42, 'App\\Models\\User', 1, 'token', '26f178171184c8324c8393d1f1e8553986b8a862370652f9a6dc2dd5352ac060', '[\"*\"]', NULL, '2023-02-06 02:20:20', '2023-02-06 02:20:20'),
(43, 'App\\Models\\User', 1, 'token', '6186f75e542d1d0b044974f41553cda61a01a835bda68487bed3b4a0ec293385', '[\"*\"]', NULL, '2023-02-06 03:10:53', '2023-02-06 03:10:53'),
(44, 'App\\Models\\User', 1, 'token', '93632c576f2bda34588676d6d6a561cdc4f3d9bd601eb24e6d61a6c93d2fc383', '[\"*\"]', NULL, '2023-02-06 03:11:42', '2023-02-06 03:11:42'),
(45, 'App\\Models\\User', 1, 'token', 'b4a03ce38a18d3dc05ac6e1146ab46556e26f1b698b11e900ba7e35466985333', '[\"*\"]', NULL, '2023-02-06 03:16:05', '2023-02-06 03:16:05'),
(46, 'App\\Models\\User', 1, 'token', '809cfa2d891075557d6a441177116abbf3173e9361b1b9c5f0f78690545c406c', '[\"*\"]', NULL, '2023-02-06 03:22:41', '2023-02-06 03:22:41'),
(47, 'App\\Models\\User', 1, 'token', '4a11a128ecbfed297ff1b580edbc0a16645c02cb3a90fefc8dc115561880cf69', '[\"*\"]', NULL, '2023-02-06 03:25:39', '2023-02-06 03:25:39'),
(48, 'App\\Models\\User', 1, 'token', 'c5cf28e73c28fddbb9b6533e3876678efed20864d20586ae6a865b030f6912ac', '[\"*\"]', NULL, '2023-02-06 03:31:05', '2023-02-06 03:31:05'),
(49, 'App\\Models\\User', 1, 'token', '600265469ada244299e3e67d356e234ab05d59b48599879facb164bd5b742946', '[\"*\"]', NULL, '2023-02-06 03:32:48', '2023-02-06 03:32:48'),
(50, 'App\\Models\\User', 1, 'token', '548ff04b63fe61edf3befa24e870918711c8d5f4ac810cfbdd9623fd12b9d7ab', '[\"*\"]', NULL, '2023-02-06 03:36:14', '2023-02-06 03:36:14'),
(51, 'App\\Models\\User', 1, 'token', 'c749d603abaf580f4f3b1aa4e4227d945b490cd2a0cbad65a4ff46a57dff25cc', '[\"*\"]', NULL, '2023-02-06 03:36:50', '2023-02-06 03:36:50'),
(52, 'App\\Models\\User', 1, 'token', '14075d4df98989c6096804d46eeb3eb126a82fd6521ea20c5b6a659a316773b9', '[\"*\"]', NULL, '2023-02-06 03:37:24', '2023-02-06 03:37:24'),
(53, 'App\\Models\\User', 1, 'token', '8fb9a4e1d56aa38df8a5c2f5f100c43033aa2a70b8d756cf31d1b5c0b4e251bf', '[\"*\"]', NULL, '2023-02-06 03:37:37', '2023-02-06 03:37:37'),
(54, 'App\\Models\\User', 1, 'token', 'da6b6cdbcbb71700ca311926ccf7fa3bb55534f958637684b9ccc89920488a32', '[\"*\"]', NULL, '2023-02-06 03:44:14', '2023-02-06 03:44:14'),
(55, 'App\\Models\\User', 1, 'token', '7b5179ac6f83f13dafc82f3a6b60f2d28b317ab115d0afeefb67788247df4a2d', '[\"*\"]', NULL, '2023-02-06 03:48:07', '2023-02-06 03:48:07'),
(56, 'App\\Models\\User', 1, 'token', 'a74d169c597e1a265f5bf37b62604fd24123b9f509b88d97747087ccae6d5d0f', '[\"*\"]', NULL, '2023-02-06 03:50:13', '2023-02-06 03:50:13'),
(57, 'App\\Models\\User', 1, 'token', '6781b4bb3ec25337504e636892f4a95be6c95224dee33ef1a2aa35f84e58ccb4', '[\"*\"]', NULL, '2023-02-06 03:50:32', '2023-02-06 03:50:32'),
(58, 'App\\Models\\User', 1, 'token', 'a0e48ca4a69f3ba68658b6c39f19906547d853bfdf493be54713720f21b4f2bb', '[\"*\"]', NULL, '2023-02-06 03:51:21', '2023-02-06 03:51:21'),
(59, 'App\\Models\\User', 1, 'token', '19972dc2d6b15bbaf176f41728080b62621915671071b5485049d7a2c04638e8', '[\"*\"]', NULL, '2023-02-06 03:58:05', '2023-02-06 03:58:05'),
(60, 'App\\Models\\User', 1, 'token', '9d6c79fe5e8cef05809b59227f466b4acb687ae718383edaa7f8deb8a851ebca', '[\"*\"]', NULL, '2023-02-06 04:15:11', '2023-02-06 04:15:11'),
(61, 'App\\Models\\User', 1, 'token', 'c6f1b507c92c22364f0bbb8ce3ecd82299cde95c3ce38445e29dbba09c9a46e5', '[\"*\"]', NULL, '2023-02-06 04:15:23', '2023-02-06 04:15:23'),
(62, 'App\\Models\\User', 1, 'token', '8e906fd0b57497a57acb2fc02eb163d0ffbfbe840438a13722f1373945e4a341', '[\"*\"]', NULL, '2023-02-06 04:15:59', '2023-02-06 04:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `transction`
--

CREATE TABLE `transction` (
  `transctionID` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userID` bigint(20) UNSIGNED NOT NULL,
  `date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transction`
--

INSERT INTO `transction` (`transctionID`, `status`, `amount`, `userID`, `date`) VALUES
(1, 'withdraw', '10000', 1, NULL),
(2, 'withdraw', '10000', 1, NULL),
(3, 'withdraw', '10000', 1, NULL),
(4, 'withdraw', '10000', 1, NULL),
(5, 'withdraw', '10000', 1, NULL),
(6, 'withdraw', '10000', 1, NULL),
(7, 'Mode', '10000', 1, NULL),
(8, 'withdraw', '10000', 1, NULL),
(9, 'deposit', '1000', 1, NULL),
(10, 'withdraw', '10000', 1, NULL),
(11, 'withdraw', '10000', 1, NULL),
(12, 'withdraw', '10000', 1, NULL),
(13, 'withdraw', '10000', 1, NULL),
(14, 'withdraw', '10000', 1, NULL),
(15, 'withdraw', '12', 1, NULL),
(16, 'withdraw', '10000', 1, NULL),
(17, 'withdraw', '10000', 1, NULL),
(18, 'withdraw', '10000', 1, NULL),
(19, 'withdraw', '10000', 1, NULL),
(20, 'withdraw', '10000', 1, NULL),
(21, 'withdraw', '10000', 1, NULL),
(22, 'withdraw', '10000', 1, NULL),
(23, 'withdraw', '10000', 1, NULL),
(24, 'withdraw', '10000', 1, NULL),
(25, 'withdraw', '10000', 1, NULL),
(26, 'withdraw', '10000', 1, NULL),
(27, 'withdraw', '10000', 1, NULL),
(28, 'withdraw', '10000', 1, NULL),
(29, 'Mode', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `password`, `name`, `surname`, `remember_token`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balanceID`),
  ADD KEY `balance_userid_foreign` (`userID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `transction`
--
ALTER TABLE `transction`
  ADD PRIMARY KEY (`transctionID`),
  ADD KEY `transction_userid_foreign` (`userID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `balanceID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `transction`
--
ALTER TABLE `transction`
  MODIFY `transctionID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balance`
--
ALTER TABLE `balance`
  ADD CONSTRAINT `balance_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transction`
--
ALTER TABLE `transction`
  ADD CONSTRAINT `transction_userid_foreign` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
