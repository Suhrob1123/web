-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 09:46 AM
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
-- Database: `marketing_learning`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Suhrob', 'suhrob@gmail.com', 'csdccasc\'ksd', 'kscm;slfk.amesoi;mcaw;ofmasdlvmdfl', 1, '2023-05-31 02:24:34', '2023-05-31 02:25:15'),
(2, 'Farruhbek', 'sfarruhbek5@gmail.com', 'csdc', 'ascasc', 1, '2023-05-31 02:25:36', '2023-05-31 02:26:02');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_30_085704_create_posts_table', 1),
(6, '2023_05_30_085833_create_contacts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `url`, `created_at`, `updated_at`) VALUES
(4, 'Elektron pochta marketingi', 'Elektron pochta marketingi, elektron pochta marketing strategiyasi\r\n Tobora ko\'proq elektron tijorat ushbu turdagi strategiyani amalga oshirmoqda, ammo siz juda ehtiyot bo\'lishingiz kerak ko\'pchilik o\'zlarini imzolagan bo\'lsa ham, ularni spam deb hisoblaydi.', 'oA_isaSkvW4', '2023-05-31 02:05:19', '2023-05-31 02:05:19'),
(5, 'Ijtimoiy marketing', 'Ijtimoiy marketing\r\n Una ijtimoiy media asosidagi marketing strategiyasi bugun, aniq zarba. Tarmoqlarga qo\'shilayotganlar soni tobora ko\'paymoqda va ularni qaerdan topishingiz mumkin.', '076A9YzHI4M', '2023-05-31 02:06:03', '2023-05-31 02:13:36'),
(6, 'Kontent marketingi', 'Kontent marketingi\r\n                 Agar izlayotgan narsangiz bo\'lsa veb-saytingiz tarkibiga qiymat bering va shu bilan birga SEO ni yaxshilang Google sizni natijalarning birinchi sahifalarida joylashtirishi uchun, bu marketing strategiyalari uchun eng yaxshi variantlardan biridir.', 'v87f4pl1Xys', '2023-05-31 02:06:42', '2023-05-31 02:12:22'),
(7, 'Kiruvchi marketing strategiyasi', 'Kiruvchi marketing strategiyasi\r\n                 Bunga g\'amxo\'rlik qiladigan kishi mijozlar brendga erishadilar. Bunga misollar foydalanuvchilarga tegishli bo\'lgan muammoni hal qilishga intiladigan, shuningdek uni qanday hal qilishingizni tushuntirib beradigan kurslar, o\'quv qo\'llanmalari yoki mahsulotlar bo\'lishi mumkin.', 'cgSVgMa5bd4', '2023-05-31 02:07:20', '2023-05-31 02:07:20'),
(8, 'Strategiyalar turlari', 'Strategiyalar turlari haqida gapirish juda keng bo\'lishi mumkin. Ammo shu bilan birga u sizga a beradi Siz erishmoqchi bo\'lgan umumiy maqsadga asoslangan holda ushbu turdagi hujjatni qanday ko\'rib chiqish kerakligini ko\'rish. Masalan, sizning do\'koningizda ko\'proq mahsulot sotishni qidirish, ijtimoiy tarmoqlarda mijozlar bilan ko\'proq aloqani izlash bilan bir xil emas.', 'wUlWh5LV72E', '2023-05-31 02:08:43', '2023-05-31 02:08:43'),
(9, 'Marketing strategiyasi nima?', 'Marketing strategiyasi nima?\r\n                  Marketing strategiyasini quyidagicha belgilashingiz mumkin savdo va brend imidjini raqobat nuqtai nazaridan oshirish uchun kompaniya bajarishi kerak bo\'lgan qadamlar.', '5As4fvdutuo', '2023-05-31 02:09:19', '2023-05-31 02:09:19'),
(10, 'Marketing 3 dars.', 'Marketing 3 dars.                  Bugungi kunda elektron tijoratga ega bo\'lish qiyin emas. Ammo u bilan muvaffaqiyatga erishish uchun ha, va juda ko\'p. Shuning uchun marketing strategiyasiga sarmoya kiritadiganlar kerakli mijozlarga erishish, foyda olish va Internetda ushbu biznesni boshlash uchun ko\'proq imkoniyatga ega.', 'mVIUB_4yt_Y', '2023-05-31 02:09:55', '2023-05-31 02:13:46'),
(11, 'Marketing strategiyasi nima?', 'Marketing strategiyasi nima? Turlari juda ko\'pmi? Qanday qilib borish kerak? Agar siz ushbu savollarning barchasini o\'zingizdan so\'ragan bo\'lsangiz va yana bir nechtasini so\'ragan bo\'lsangiz, biz siz uchun to\'plagan ma\'lumotlarga qarash vaqti keldi.', 't2buVHskrvE', '2023-05-31 02:11:15', '2023-05-31 02:11:15');

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
(1, 'Suhrob', 'suhrob@gmail.com', NULL, '$2y$10$hk/GJVaWhq3yC/q0BTgfS.NyOmd8qdpKhDA6LVzrnG68H9SoZXMcO', NULL, NULL, '2023-05-31 01:54:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
