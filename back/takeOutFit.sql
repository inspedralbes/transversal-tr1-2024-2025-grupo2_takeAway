-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2024 at 08:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `el_teu_nom_de_la_base_de_dades`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'samarretes', NULL, NULL),
(2, 'dessuadores', NULL, NULL),
(3, 'pantalons', NULL, NULL),
(4, 'vestits', NULL, NULL),
(5, 'jaquetes', NULL, NULL),
(6, 'faldilles', NULL, NULL),
(7, 'polos', NULL, NULL),
(8, 'camises', NULL, NULL),
(9, 'bruses', NULL, NULL),
(10, 'jerseis', NULL, NULL);

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
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(33, '0001_01_01_000000_create_users_table', 1),
(34, '0001_01_01_000001_create_cache_table', 1),
(35, '0001_01_01_000002_create_jobs_table', 1),
(36, '2024_10_24_062434_create_table_sizes', 1),
(37, '2024_10_24_062506_create_table_categories', 1),
(38, '2024_10_24_062524_create_table_products', 1),
(39, '2024_10_25_100522_create_table_orders', 1),
(40, '2024_10_25_100552_create_table_order_products', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `finalprice` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `size_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `category_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 'Samarreta Bàsica', 'Samarreta de cotó 100% en diversos colors.', 12.99, 'modelSamarretaBasica.jpg', 1, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(2, 'Dessuatge amb Caputxa', 'Dessuatge unisex amb caputxa i butxaca davantera.', 29.99, 'modelDessuatgeCaputxa.jpg', 2, 3, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(3, 'Pantalons Jogger', 'Pantalons còmodes d\'estil jogger, ideals per al dia a dia.', 24.99, 'pantalonsJoger.jpg', 3, 4, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(4, 'Vestit Casual', 'Vestit de tall senzill, perfecte per a l\'estiu.', 19.99, 'vestitCasual.jpg', 4, 1, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(5, 'Jaqueta Texana', 'Jaqueta de mezclilla clàssica, ideal per a qualsevol look.', 39.99, 'jaquetaTexana.jpg', 5, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(6, 'Samarreta Gràfica', 'Samarreta de cotó amb disseny gràfic estampat.', 14.99, 'samarretaGrafica.jpg', 1, 3, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(7, 'Faldilla Midi', 'Faldilla de llargada midi amb plecs, disponible en diversos colors.', 22.99, 'faldillaMidi.jpg', 6, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(8, 'Polo Esportiu', 'Polo lleuger i transpirable, ideal per a activitats a l\'aire lliure.', 17.99, 'poloSportiu.jpg', 7, 4, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(9, 'Jaqueta Tallavent', 'Jaqueta lleugera i resistent al vent, perfecta per a mitja temporada.', 34.99, 'jaquetaTallavent.jpg', 5, 1, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(10, 'Pantalons Curts', 'Pantalons curts de cotó per a dies de calor.', 15.99, 'pantalonsCurts.jpg', 3, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(11, 'Camisa de Lili', 'Camisa de lli transpirable, perfecta per a climes càlids.', 25.99, 'camisaLili.jpg', 8, 3, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(12, 'Samarreta de Tirants', 'Samarreta sense mànigues, ideal per al gimnàs.', 10.99, 'samarretaTirants.jpg', 1, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(13, 'Jersei de Punt', 'Jersei de punt suau, ideal per a l\'hivern.', 32.99, 'jerseiPunt.jpg', 10, 4, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(14, 'Pantalons Xinesos', 'Pantalons elegants per a ocasions formals.', 35.99, 'pantalonsXinesos.jpg', 3, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(15, 'Brusa de Seda', 'Brusa elegant de seda, disponible en diversos colors.', 29.99, 'brusaSeda.jpg', 9, 1, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(16, 'Jaqueta de Pell', 'Jaqueta de pell genuïna, un clàssic atemporal.', 79.99, 'jaquetaPell.jpg', 5, 3, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(17, 'Samarreta Bàsica', 'Samarreta bàsica d\'estil modern, perfecta per a la feina.', 27.99, 'samarretaBasica.jpg', 1, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(18, 'Samarreta Oversize', 'Samarreta d\'estil oversize per a un look relaxat.', 15.99, 'samarretaOversize.jpg', 1, 4, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(19, 'Shorts Esportius', 'Shorts de material elàstic per a activitats esportives.', 13.99, 'shortsSportius.jpg', 3, 3, '2024-10-28 10:23:55', '2024-10-28 10:23:55'),
(20, 'Armilla Encoixinada', 'Armilla encoixinada per mantenir la calor sense perdre estil.', 42.99, 'armillaEncoixionada.jpg', 5, 2, '2024-10-28 10:23:55', '2024-10-28 10:23:55');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('E4xRTqmFnfVXH2nbTkx9Kx6dJRkr6dNoGc2IAGKm', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFRtSHQzNGtUZkF1QlZTWG84SGcxODIwSGNISWlLR3VjTnJjeDVLZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730116109);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 'S', NULL, NULL),
(2, 'M', NULL, NULL),
(3, 'L', NULL, NULL),
(4, 'XL', NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_size_id_foreign` (`size_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_size_id_foreign` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;