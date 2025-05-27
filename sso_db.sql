-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2025 pada 04.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sso_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vian', 'aalgeraldi65@gmail.com', '$2y$12$PHKotn7SinKxgoN3gjQboeeHbBO0.FnILxcQJxMQ/5mLAudgbghDi', NULL, '2025-04-10 20:09:16', '2025-04-10 20:09:16'),
(2, 'zidan', 'zidan@gmail.com', '$2y$12$bLe7ei5yny2gr1tHCX6x3.866jYOqIs.SqiFGFA2GAzDqe7WJ1zjG', NULL, '2025-04-10 20:27:19', '2025-04-10 20:27:19'),
(3, 'aldi', 'aldi@gmail.com', '$2y$12$AQQQjSMtfK/ucrkHvM5NaeOOaeJaXhYI4efK06m7wYf3SdBhW0ZpG', NULL, '2025-04-10 20:52:18', '2025-04-10 20:52:18'),
(4, 'ardian', 'ardian@gmail.com', '$2y$12$G33VB/fGa03bfvLw5p1lg.qLhFV/zKlBqrhZNBXm1bHYI2JJEK3Yi', NULL, '2025-04-10 20:53:20', '2025-04-10 20:53:20'),
(5, 'faras', 'faras@gmail.com', '$2y$12$VA6oMg8.Kysiqv/3jAEPM.NiivrSTbPm9J8c17CNwq6X0QTeyNAoa', NULL, '2025-04-10 20:55:30', '2025-04-10 20:55:30'),
(6, 'frs', 'frs@gmail.com', '$2y$12$s9BZq9EJGAvNYcs9kbb91eXcNQXf3GEVstFesCRfMFnz615ylGg1e', NULL, '2025-04-10 23:17:08', '2025-04-10 23:17:08'),
(7, 'revo', 'revo@gmail.com', '$2y$12$j4VCxEL9bclIlwfyQQcb1.iBQI/6Jf79PxhiZflV02rZ6BSOoo4lm', NULL, '2025-04-14 05:26:11', '2025-04-14 05:26:11'),
(8, 'hanif', 'hanif@gmail.com', '$2y$12$4GtbJMZGkw/cYtaqtQsryOBPXEeFS/jYpbk8lXmKxiN5frbsr/WYG', NULL, '2025-04-14 20:13:51', '2025-04-14 20:13:51'),
(9, 'hanifan', 'hanifan@gmail.com', '$2y$12$Hyhc64hK3Ii7uASnajI7ROtNadTn8XQWxJbnKvZ1hXiJEk3NgLpvy', NULL, '2025-04-14 20:45:54', '2025-04-14 20:45:54'),
(10, 'mamat', 'mamat@gmail.com', '$2y$12$SfQ34ZHCm63xhrghld09Eev1FjRcgdnazKi7qZp/8qNe/XqxEHGva', NULL, '2025-04-14 22:01:18', '2025-04-14 22:01:18'),
(11, 'admin', 'admin@gmail.com', '$2y$12$Pt6aTJR8My2yU6L05pbxoO18rfXmNSvQmzNMRd7Psm8Ck8l8NvK0y', NULL, '2025-04-30 00:30:12', '2025-04-30 00:30:12'),
(12, 'dika', 'dika@gmail.com', '$2y$12$7kyM66YJBva9S4nMvYxib.zj3lXpDbXTGETa8mpfpNvBRX2T9eZdO', NULL, '2025-05-01 20:38:33', '2025-05-01 20:38:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_04_07_023643_create-admins_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
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
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'faras', 'faras@gmail.com', NULL, '$2y$12$DFhepQ13GKzY.JpRXXCWweFY6zS8FrQ60PAqnxbLQPSLRdpxESZwG', NULL, '2025-04-10 20:59:58', '2025-04-10 20:59:58'),
(2, 'frs', 'frs@gmail.com', NULL, '$2y$12$x1sj0kj30jFfsrtV3o/Jk.kre5c3SBMx.1uPxN6zDnAIdFG9kmJk6', NULL, '2025-04-10 23:06:50', '2025-04-10 23:06:50'),
(3, 'revo', 'revo@gmail.com', NULL, '$2y$12$w55QG1HpHS7Qge0tMEpMRO7h7fpVs04T/ZBhfjw/KjjZroZ9elDkK', NULL, '2025-04-14 05:27:52', '2025-04-14 05:27:52'),
(4, 'ucup', 'ucup@gmail.com', NULL, '$2y$12$BTO7A3Gqn087U2rKrCIkRePpsSYq7omOePHlmiJKGWxWWY5A7CMre', NULL, '2025-04-14 05:28:32', '2025-04-14 05:28:32'),
(5, 'aldi', 'aldi@gmail.com', NULL, '$2y$12$ANvlMw9l/vcbXBrLuIjeMuwH/8yNwHEo7NVVrXaKL4QT1P6e.fXTG', NULL, '2025-04-14 05:29:07', '2025-04-14 05:29:07'),
(6, 'bay', 'bay@gmail.com', NULL, '$2y$12$kQxav45IS39O94J3SaFY8..yl11Xk0AxLTgBD2hx71uZyAYqS6Mfa', NULL, '2025-04-14 18:12:50', '2025-04-14 18:12:50'),
(7, 'vian', 'vian@gmail.com', NULL, '$2y$12$7SEo/2K9WOPtQUV7HtIcdegqP86mWdyUMSwBZjHYc34Q1OsdcEiae', NULL, '2025-04-16 19:09:41', '2025-04-16 19:09:41'),
(8, 'alviandra', 'alviandra@gmail.com', NULL, '$2y$12$lLYroV/m.DFY5gLGcI/RkuhAFECJiiuaA0xSoEIA5dRFxVPlHlpUm', NULL, '2025-04-28 18:02:55', '2025-04-28 18:02:55'),
(9, 'admin', 'admin@gmail.com', NULL, '$2y$12$h9mMzpq9najUyZ1EjmtmUOmTKPwIGxvih4yoTF7LqY74mmdSo1lB2', NULL, '2025-04-30 00:29:37', '2025-04-30 00:29:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
