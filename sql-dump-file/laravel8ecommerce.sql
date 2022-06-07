-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Vært: 127.0.0.1
-- Genereringstid: 17. 05 2022 kl. 21:58:18
-- Serverversion: 10.4.18-MariaDB
-- PHP-version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommerce`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 1, 'White', 32, '2022-04-28 15:30:37', '2022-04-28 15:30:37'),
(7, 2, '10', 32, '2022-04-28 15:30:38', '2022-04-28 15:30:38'),
(8, 2, '11', 32, '2022-04-28 15:30:38', '2022-04-28 15:30:38'),
(9, 2, '11.5', 32, '2022-04-28 15:30:38', '2022-04-28 15:30:38'),
(10, 1, 'Brown', 29, '2022-05-06 04:26:09', '2022-05-06 04:26:09'),
(11, 2, 'Onesize', 29, '2022-05-06 04:26:09', '2022-05-06 04:26:09'),
(12, 1, 'Brown', 30, '2022-05-06 04:26:52', '2022-05-06 04:26:52'),
(13, 1, 'Black', 30, '2022-05-06 04:26:52', '2022-05-06 04:26:52'),
(14, 2, 'One size', 30, '2022-05-06 04:26:52', '2022-05-06 04:26:52');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Bathroom', 'bathroom', '2022-04-13 18:48:14', '2022-05-01 16:46:49'),
(3, 'Kitchen', 'kitchen', '2022-04-13 18:48:14', '2022-05-01 16:45:34'),
(4, 'Indoor', 'indoor', '2022-04-13 18:48:14', '2022-05-01 16:44:56'),
(5, 'Outdoor', 'outdoor', '2022-04-13 18:48:14', '2022-05-01 16:43:33'),
(11, 'Category', 'category', '2022-04-21 17:10:18', '2022-05-01 16:44:33'),
(12, 'Men', 'men', '2022-04-28 13:57:48', '2022-04-28 13:57:48'),
(14, 'Women', 'women', '2022-05-01 16:47:17', '2022-05-01 16:47:17');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Peter Jensen', 'peetmj@gmail.com', '30530717', 'Hi man very nice webshop, can you please let me know how you built it ?\n\nCheers', '2022-04-22 12:26:15', '2022-04-22 12:26:15'),
(2, 'Peter Jensen', 'peetmj@gmail.com', '30530717', 'This is so cool!', '2022-04-29 04:45:41', '2022-04-29 04:45:41'),
(3, 'Peter Jensen', 'peetmj@gmail.com', '30530717', 'Wow', '2022-04-29 04:47:13', '2022-04-29 04:47:13');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '2,3,11', 8, NULL, '2022-04-21 17:11:22');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oslo Lounge', 'muuto oslo lounge chair', '1789', '/shop', '1651414420.jpg', 0, '2022-04-15 08:54:31', '2022-05-05 06:01:29'),
(2, 'Swoon Lounge Chair', 'Orange/Red lounge set with slack', '2200', '/shop', '1651414610.jpg', 1, '2022-04-15 09:00:27', '2022-05-05 06:00:56'),
(3, 'Cache Outdoor', 'outdoor furniture', '2200', '/shop', '1651414385.jpg', 1, '2022-04-15 09:34:13', '2022-05-05 06:01:17');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_13_114101_create_sessions_table', 1),
(7, '2022_04_13_195735_create_categories_table', 2),
(8, '2022_04_13_195755_create_products_table', 2),
(9, '2022_04_15_100846_create_home_sliders_table', 3),
(10, '2022_04_15_134137_create_home_categories_table', 4),
(11, '2022_04_17_102521_create_sales_table', 5),
(12, '2022_04_18_093618_create_orders_table', 6),
(13, '2022_04_18_093649_create_order_items_table', 6),
(14, '2022_04_18_093711_create_shippings_table', 6),
(15, '2022_04_18_093728_create_transactions_table', 6),
(16, '2022_04_22_075557_add_delivered_canceled_date_to_orders_table', 7),
(17, '2022_04_22_090809_create_reviews_table', 8),
(18, '2022_04_22_091215_add_rstatus_to_order_items_table', 8),
(19, '2022_04_22_140313_create_contacts_table', 9),
(20, '2022_04_22_143139_create_settings_table', 10),
(21, '2022_04_28_082713_create_shoppingcart_table', 11),
(22, '2022_04_28_091935_create_profiles_table', 12),
(23, '2022_04_28_121753_create_product_attributes_table', 13),
(24, '2022_04_28_125245_create_attribute_values_table', 14),
(25, '2022_04_28_144704_add_options_to_order_items_table', 15),
(26, '2022_04_28_154737_create_subcategories_table', 16),
(27, '2022_04_28_170317_add_subcategory_id_to_products_table', 17);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`) VALUES
(1, 1, '188.00', '0.00', '39.48', '227.48', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'kbh', 'Denmark', '2990', 'ordered', 0, '2022-04-18 10:35:19', '2022-04-18 10:35:19', NULL, NULL),
(2, 1, '383.00', '0.00', '80.43', '463.43', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'kbh', 'Denmark', '2990', 'ordered', 0, '2022-04-18 11:32:24', '2022-04-18 11:32:24', NULL, NULL),
(3, 1, '383.00', '0.00', '80.43', '463.43', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'kbh', 'Denmark', '2990', 'ordered', 0, '2022-04-18 11:33:33', '2022-04-18 11:33:33', NULL, NULL),
(4, 1, '383.00', '0.00', '80.43', '463.43', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-18 11:35:32', '2022-04-18 11:35:32', NULL, NULL),
(5, 2, '383.00', '0.00', '80.43', '463.43', 'Klaus', 'Jensen', '28395746', 'klaus@jensen.com', 'Landeland', '', 'Copenhagen', 'kbh', 'Denmark', '1615', 'delivered', 0, '2022-04-18 12:07:40', '2022-04-22 07:28:59', '2022-04-22', NULL),
(6, 2, '398.00', '0.00', '83.58', '481.58', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'canceled', 0, '2022-04-21 17:04:57', '2022-04-22 06:15:22', NULL, '2022-04-22'),
(7, 2, '20.00', '0.00', '4.20', '24.20', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'canceled', 0, '2022-04-21 17:17:17', '2022-04-22 06:14:54', NULL, '2022-04-22'),
(8, 2, '20.00', '0.00', '4.20', '24.20', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-04-21 17:18:49', '2022-04-22 06:09:35', '2022-04-22', NULL),
(9, 2, '383.00', '0.00', '80.43', '463.43', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-21 17:20:02', '2022-04-21 17:20:02', NULL, NULL),
(10, 2, '224.00', '0.00', '47.04', '271.04', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-21 17:20:53', '2022-04-21 17:20:53', NULL, NULL),
(11, 1, '185.00', '0.00', '38.85', '223.85', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'canceled', 0, '2022-04-22 05:40:24', '2022-04-22 06:30:53', NULL, '2022-04-22'),
(12, 3, '304.00', '0.00', '63.84', '367.84', 'user2', 'Jensen', '30530717', 'user@user2.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-04-22 07:31:03', '2022-04-22 07:31:33', '2022-04-22', NULL),
(13, 2, '404.00', '0.00', '84.84', '488.84', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-04-22 15:05:22', '2022-04-22 15:06:41', '2022-04-22', NULL),
(14, 5, '304.00', '0.00', '63.84', '367.84', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'canceled', 0, '2022-04-24 11:45:53', '2022-04-28 05:54:52', NULL, '2022-04-28'),
(15, 5, '242.00', '0.00', '50.82', '292.82', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-28 06:16:04', '2022-04-28 06:16:04', NULL, NULL),
(16, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-28 06:19:36', '2022-04-28 06:19:36', NULL, NULL),
(17, 5, '607.00', '0.00', '127.47', '734.47', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-04-28 06:41:20', '2022-04-28 08:34:42', '2022-04-28', NULL),
(18, 5, '744.00', '0.00', '156.24', '900.24', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-28 12:51:54', '2022-04-28 12:51:54', NULL, NULL),
(19, 5, '650.00', '0.00', '136.50', '786.50', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-30 12:31:22', '2022-04-30 12:31:22', NULL, NULL),
(20, 5, '383.00', '0.00', '80.43', '463.43', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-04-30 12:32:12', '2022-04-30 12:32:12', NULL, NULL),
(21, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-01 10:15:27', '2022-05-01 10:15:27', NULL, NULL),
(22, 5, '383.00', '0.00', '80.43', '463.43', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-01 10:15:52', '2022-05-01 10:15:52', NULL, NULL),
(23, 5, '188.00', '0.00', '39.48', '227.48', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 1, '2022-05-01 10:19:15', '2022-05-01 10:19:15', NULL, NULL),
(24, 5, '550.00', '0.00', '115.50', '665.50', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-01 10:21:45', '2022-05-01 10:21:45', NULL, NULL),
(25, 5, '550.00', '0.00', '115.50', '665.50', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-05-01 10:29:46', '2022-05-01 10:31:19', '2022-05-01', NULL),
(26, 5, '570.00', '0.00', '119.70', '689.70', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-05-06 07:38:10', '2022-05-06 07:39:45', '2022-05-06', NULL),
(27, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-07 06:22:29', '2022-05-07 06:22:29', NULL, NULL),
(28, 5, '278.00', '0.00', '58.38', '336.38', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 08:44:20', '2022-05-13 08:44:20', NULL, NULL),
(29, 5, '278.00', '0.00', '58.38', '336.38', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 08:45:24', '2022-05-13 08:45:24', NULL, NULL),
(30, 5, '372.00', '0.00', '78.12', '450.12', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 08:47:17', '2022-05-13 08:47:17', NULL, NULL),
(31, 5, '372.00', '0.00', '78.12', '450.12', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 08:48:36', '2022-05-13 08:48:36', NULL, NULL),
(32, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 08:51:09', '2022-05-13 08:51:09', NULL, NULL),
(33, 5, '398.00', '0.00', '83.58', '481.58', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 12:22:55', '2022-05-13 12:22:55', NULL, NULL),
(34, 5, '304.00', '0.00', '63.84', '367.84', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 13:04:06', '2022-05-13 13:04:06', NULL, NULL),
(35, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-13 20:37:19', '2022-05-13 20:37:19', NULL, NULL),
(36, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-05-13 20:37:35', '2022-05-13 20:56:45', '2022-05-14', NULL),
(37, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-05-13 20:57:34', '2022-05-13 20:58:20', '2022-05-14', NULL),
(38, 5, '278.00', '0.00', '58.38', '336.38', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'ordered', 0, '2022-05-14 13:46:55', '2022-05-14 13:46:55', NULL, NULL),
(39, 5, '20.00', '0.00', '4.20', '24.20', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-05-14 15:11:33', '2022-05-14 15:12:45', '2022-05-14', NULL),
(40, 5, '94.00', '0.00', '19.74', '113.74', 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', 'delivered', 0, '2022-05-15 06:53:10', '2022-05-15 06:53:39', '2022-05-15', NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(1, 3, 1, '94.00', 2, '2022-04-18 10:35:19', '2022-04-18 10:35:19', 0, NULL),
(2, 2, 2, '383.00', 1, '2022-04-18 11:32:24', '2022-04-18 11:32:24', 0, NULL),
(3, 2, 3, '383.00', 1, '2022-04-18 11:33:33', '2022-04-18 11:33:33', 0, NULL),
(4, 2, 4, '383.00', 1, '2022-04-18 11:35:32', '2022-04-18 11:35:32', 0, NULL),
(5, 2, 5, '383.00', 1, '2022-04-18 12:07:40', '2022-04-18 12:07:40', 0, NULL),
(6, 3, 6, '94.00', 1, '2022-04-21 17:04:57', '2022-04-21 17:04:57', 0, NULL),
(7, 4, 6, '304.00', 1, '2022-04-21 17:04:57', '2022-04-21 17:04:57', 0, NULL),
(9, 25, 8, '20.00', 1, '2022-04-21 17:18:49', '2022-04-21 17:18:49', 0, NULL),
(10, 2, 9, '383.00', 1, '2022-04-21 17:20:02', '2022-04-21 17:20:02', 0, NULL),
(11, 7, 10, '224.00', 1, '2022-04-21 17:20:53', '2022-04-21 17:20:53', 0, NULL),
(12, 6, 11, '185.00', 1, '2022-04-22 05:40:24', '2022-04-22 05:40:24', 0, NULL),
(13, 4, 12, '304.00', 1, '2022-04-22 07:31:03', '2022-04-22 09:11:10', 0, NULL),
(14, 6, 13, '100.00', 1, '2022-04-22 15:05:22', '2022-04-22 15:05:22', 0, NULL),
(15, 4, 13, '304.00', 1, '2022-04-22 15:05:22', '2022-04-22 15:05:22', 0, NULL),
(16, 4, 14, '304.00', 1, '2022-04-24 11:45:53', '2022-04-24 11:45:53', 0, NULL),
(17, 3, 15, '94.00', 1, '2022-04-28 06:16:04', '2022-04-28 06:16:04', 0, NULL),
(18, 9, 15, '148.00', 1, '2022-04-28 06:16:04', '2022-04-28 06:16:04', 0, NULL),
(19, 3, 16, '94.00', 1, '2022-04-28 06:19:36', '2022-04-28 06:19:36', 0, NULL),
(20, 7, 17, '224.00', 1, '2022-04-28 06:41:20', '2022-04-28 08:35:15', 1, NULL),
(21, 2, 17, '383.00', 1, '2022-04-28 06:41:20', '2022-04-28 06:41:20', 0, NULL),
(22, 3, 18, '94.00', 1, '2022-04-28 12:51:54', '2022-04-28 12:51:54', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(23, 30, 18, '650.00', 1, '2022-04-28 12:51:54', '2022-04-28 12:51:54', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:1:{s:6:\"Colour\";s:5:\"Black\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(24, 24, 19, '650.00', 1, '2022-04-30 12:31:22', '2022-04-30 12:31:22', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(25, 2, 20, '383.00', 1, '2022-04-30 12:32:12', '2022-04-30 12:32:12', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(26, 3, 21, '94.00', 1, '2022-05-01 10:15:27', '2022-05-01 10:15:27', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(27, 2, 22, '383.00', 1, '2022-05-01 10:15:52', '2022-05-01 10:15:52', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(28, 3, 23, '94.00', 2, '2022-05-01 10:19:15', '2022-05-01 10:19:15', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(29, 28, 24, '550.00', 1, '2022-05-01 10:21:45', '2022-05-01 10:21:45', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(30, 28, 25, '550.00', 1, '2022-05-01 10:29:46', '2022-05-01 10:29:46', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(31, 28, 26, '550.00', 1, '2022-05-06 07:38:10', '2022-05-06 07:40:50', 1, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(32, 25, 26, '20.00', 1, '2022-05-06 07:38:10', '2022-05-06 07:41:08', 1, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(33, 3, 27, '94.00', 1, '2022-05-07 06:22:29', '2022-05-07 06:22:29', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(34, 4, 28, '278.00', 1, '2022-05-13 08:44:20', '2022-05-13 08:44:20', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(35, 4, 29, '278.00', 1, '2022-05-13 08:45:24', '2022-05-13 08:45:24', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(36, 4, 30, '278.00', 1, '2022-05-13 08:47:17', '2022-05-13 08:47:17', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(37, 3, 30, '94.00', 1, '2022-05-13 08:47:17', '2022-05-13 08:47:17', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(38, 4, 31, '278.00', 1, '2022-05-13 08:48:36', '2022-05-13 08:48:36', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(39, 3, 31, '94.00', 1, '2022-05-13 08:48:36', '2022-05-13 08:48:36', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(40, 3, 32, '94.00', 1, '2022-05-13 08:51:09', '2022-05-13 08:51:09', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(41, 4, 33, '304.00', 1, '2022-05-13 12:22:55', '2022-05-13 12:22:55', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(42, 3, 33, '94.00', 1, '2022-05-13 12:22:55', '2022-05-13 12:22:55', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(43, 4, 34, '304.00', 1, '2022-05-13 13:04:06', '2022-05-13 13:04:06', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(44, 3, 35, '94.00', 1, '2022-05-13 20:37:19', '2022-05-13 20:37:19', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(45, 3, 36, '94.00', 1, '2022-05-13 20:37:35', '2022-05-13 20:37:35', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(46, 3, 37, '94.00', 1, '2022-05-13 20:57:34', '2022-05-13 20:57:34', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(47, 4, 38, '278.00', 1, '2022-05-14 13:46:55', '2022-05-14 13:46:55', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(48, 25, 39, '20.00', 1, '2022-05-14 15:11:33', '2022-05-14 15:11:33', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(49, 3, 40, '94.00', 1, '2022-05-15 06:53:10', '2022-05-15 06:53:10', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `personal_access_tokens`
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

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(2, 'perferendis voluptas', 'perferendis-voluptas', 'Consequatur et rem nihil omnis quae. Ratione vel quod ut est totam. Perspiciatis omnis aut doloremque autem ea et. Veniam blanditiis quidem autem consequatur non.', 'Velit odio placeat necessitatibus odit iusto voluptatibus. Amet vitae veniam recusandae. Quidem enim sapiente dolorem amet et ratione. Sunt distinctio accusantium doloremque labore modi. Non ex iusto architecto laudantium explicabo aut. Occaecati expedita architecto nulla eum ipsam voluptatem fugiat. Temporibus qui eum amet quas id. Suscipit omnis deleniti dolorem. Quis provident ut et accusantium temporibus labore recusandae sunt. Sed dicta nostrum doloremque et.', '383.00', '0.00', 'DIGI364', 'instock', 0, 114, 'digital_16.jpg', NULL, 3, '2022-04-13 18:48:14', '2022-05-05 13:14:34', NULL),
(3, 'officiis deserunt', 'officiis-deserunt', 'Perspiciatis minima minima sint. Ut similique eveniet neque nulla id fuga voluptatem. Quia ducimus dolore totam vel. Quia molestias ut praesentium commodi illo.', 'Aliquam nobis a dolor hic. Sunt eaque molestiae voluptatibus voluptatem officia illum quis et. In sunt sed nihil ea qui. Ut impedit et quia perspiciatis qui dolorum excepturi. Aut velit dolores omnis voluptatibus tempora voluptas. Perspiciatis molestias nostrum voluptatibus consequatur doloribus consequatur. Similique distinctio voluptates et ab inventore blanditiis. Natus suscipit provident distinctio.', '94.00', '0.00', 'DIGI462', 'instock', 0, 110, 'digital_22.jpg', NULL, 2, '2022-04-13 18:48:14', '2022-05-05 13:14:50', NULL),
(4, 'dolor officia', 'dolor-officia', 'Et harum animi ex rerum repudiandae. Rerum et magni incidunt numquam.', 'Dolore molestias incidunt molestiae ipsam omnis. Voluptate quidem consectetur odit vel. Illo soluta molestiae voluptas error nemo et qui. Magnam sint eveniet ad qui voluptas quia. Qui ea voluptates perspiciatis et quis cum. Vitae culpa aliquid sunt in eos magni. Ut et nobis modi aut quia. Nobis quae quibusdam nesciunt natus. Et molestiae temporibus explicabo voluptatem nulla fugiat sint. Suscipit corporis repellendus quia quas.', '304.00', '278.00', 'DIGI383', 'instock', 0, 180, 'digital_6.jpg', NULL, 3, '2022-04-13 18:48:14', '2022-05-05 13:15:05', NULL),
(6, 'sit ipsum', 'sit-ipsum', 'Ut dolorum totam eveniet aliquam quis dolorum voluptatum dignissimos. Harum et quo beatae facilis consequatur ducimus inventore id. Pariatur dicta in facere totam id harum.', 'Recusandae quod unde repellendus fugit voluptatem eum. Distinctio eligendi est adipisci accusantium magni enim vel. Alias qui corporis rerum velit eligendi facilis corporis. Quia earum accusamus autem earum omnis. Repellendus consequuntur fugiat sapiente dolor maiores sunt hic. Et dolorem officiis dolorem sit tenetur velit. Quia rerum natus maiores voluptas possimus voluptatem. Ea quae incidunt quia est.', '185.00', '100.00', 'DIGI294', 'instock', 0, 128, 'digital_13.jpg', NULL, 4, '2022-04-13 18:48:14', '2022-05-05 13:13:44', NULL),
(7, 'totam sed dolor qui', 'totam-sed-dolor-qui', 'In dolorem reprehenderit est ipsam voluptatem et. Quisquam eos excepturi at quos. Commodi aperiam mollitia necessitatibus iusto et. In consequatur non reiciendis cumque eum.', 'Aliquam sed eos autem est occaecati. Non rerum corporis amet ut dicta eum eum. Dolores omnis et quas dolor autem optio rem. Sit nam dolor totam. Ut et non in debitis distinctio possimus. Est dolores voluptas nihil et enim ratione. Laudantium veritatis doloremque ut numquam non ipsa ut doloribus. Ut ea aut eligendi autem ut. Non voluptatem est sed laborum. Veritatis non doloribus dolores voluptas dolore excepturi voluptas. Et velit iste sed beatae.', '224.00', '200.00', 'DIGI279', 'instock', 0, 111, 'digital_10.jpg', NULL, 3, '2022-04-13 18:48:14', '2022-04-17 06:25:51', NULL),
(9, 'ipsam explicabo', 'ipsam-explicabo', 'Similique adipisci et blanditiis corporis numquam quibusdam quis numquam. Ullam reprehenderit iure et est quae accusamus. Eaque aut ipsum ut autem explicabo aut quo.', 'Esse veritatis nemo unde possimus dolores. Et doloremque nihil aut quasi quam. Id sit laudantium sit ea laudantium voluptatum rem. Adipisci voluptas error non est aspernatur sunt. Sed autem esse nihil est unde. Quia aut impedit fugit impedit. Quidem est deleniti eius officia. Rem sed neque aliquid quisquam dolores est pariatur. Eligendi ex quibusdam doloribus ab ab eos officia. Quia laudantium autem doloribus voluptatem provident qui molestias. Aut nihil voluptatem ut saepe aspernatur.', '148.00', '120.00', 'DIGI239', 'instock', 0, 173, 'digital_15.jpg', NULL, 3, '2022-04-13 18:48:14', '2022-05-06 04:27:55', NULL),
(10, 'magnam animi', 'magnam-animi', 'Sint animi et delectus nisi. Enim quam pariatur mollitia natus consequatur voluptatem. Doloremque quia praesentium quos ex repellendus velit fuga.', 'Veritatis dolor maiores inventore minus laborum vel culpa. Veniam expedita porro minima voluptates et eos. Minus laborum id ducimus quas. Et omnis sed dolorem facere et facere vitae odio. Exercitationem vel voluptates quaerat aut cumque ad eius. Porro est beatae quibusdam deserunt nesciunt.', '331.00', '300.00', 'DIGI140', 'instock', 0, 200, 'digital_14.jpg', NULL, 2, '2022-04-13 18:48:14', '2022-05-05 13:13:23', NULL),
(11, 'voluptatem conseq', 'voluptatem-conseq', 'Qui dolorem sed similique non nam. Maiores maiores quas possimus sapiente accusantium voluptas. Qui qui atque omnis recusandae ducimus mollitia.', 'Sed illum quibusdam non sit magni ut. Natus ratione vitae est distinctio occaecati quibusdam inventore odio. Ipsum ipsa est laborum optio eius sed dolores. Voluptatum adipisci id dignissimos nobis inventore. Explicabo dolore distinctio ea autem. Delectus voluptatibus deleniti ex praesentium esse voluptatem praesentium. Veritatis error quia aut nihil. Voluptatem dolorum tenetur et et quos.', '489.00', '430.00', 'DIGI193', 'instock', 0, 118, 'digital_20.jpg', NULL, 5, '2022-04-13 18:48:14', '2022-05-05 13:14:15', NULL),
(12, 'officia culpa', 'officia-culpa', 'Laborum non autem distinctio saepe reiciendis eaque et. Sequi ipsum et eum corporis vel accusantium eum. Numquam soluta sit rem quod. At ipsa dolor assumenda voluptatem rerum.', 'Beatae voluptatem deserunt nostrum perferendis. Libero et vel fugiat et. Tempora repudiandae id exercitationem quis possimus voluptatibus. Sed nihil placeat porro autem et suscipit esse. Eligendi beatae quia labore iusto eos omnis quas. Placeat deleniti nesciunt modi incidunt eius quia qui. Rem ea modi ab enim consequuntur.', '78.00', '50.00', 'DIGI354', 'instock', 0, 125, 'digital_12.jpg', NULL, 5, '2022-04-13 18:48:14', '2022-05-06 04:27:23', NULL),
(13, 'omnisd quae at ut', 'omnis-quae-at-ut', 'Veritatis a maxime perferendis aut quia sequi. Sint voluptas aut fugit consequatur. Error ratione autem ea. Facilis excepturi omnis delectus dolores commodi harum voluptatibus commodi.', 'Quibusdam omnis quidem odit. Molestias autem nesciunt id dolore. Velit corporis facilis et adipisci et omnis maxime. Atque quisquam accusantium eius nostrum dolorem explicabo consequatur. Et nisi voluptatem nulla itaque voluptatem. Natus ut quaerat adipisci sit accusamus. Earum ducimus mollitia esse animi. Molestiae quam itaque voluptas illum. Quo distinctio rerum et accusamus dolores libero nemo.', '167.00', '100.00', 'DIGI280', 'instock', 0, 130, 'digital_18.jpg', NULL, 3, '2022-04-13 18:48:14', '2022-04-17 06:26:43', NULL),
(14, 'culpa deleniti', 'culpa-deleniti', 'Et ad est consequatur voluptatem. Iste atque ut natus provident aperiam sit.', 'Et et accusantium corporis. Molestias ratione molestiae sint rerum est repudiandae dolores enim. Ipsa sunt voluptatibus officia vel. Quaerat eveniet eos blanditiis ducimus sint et molestias. Facilis magni et aut quia pariatur omnis. Similique maiores aperiam consectetur facilis sit. Ut excepturi explicabo iure necessitatibus qui deserunt. Doloribus nulla molestiae aut ea quae ut. Voluptatem alias necessitatibus iste asperiores et harum.', '440.00', '0.00', 'DIGI288', 'instock', 0, 125, 'digital_1.jpg', NULL, 5, '2022-04-13 18:48:14', '2022-05-05 13:13:59', NULL),
(15, 'quia voluptas', 'quia-voluptas', 'Dolores saepe itaque et quos exercitationem. Ut suscipit nemo minima rem reiciendis consectetur omnis. Ducimus corrupti ea quia harum aut tempora. Quia et illo dicta impedit.', 'Laboriosam exercitationem voluptate placeat quaerat. Est minima illo in veritatis. Aut non non molestias voluptas asperiores. Et repellendus quia earum enim et molestiae. Eaque quas odio voluptatibus assumenda culpa modi. Optio laborum ea ut magni corrupti non. Mollitia rerum numquam ut cum eum necessitatibus officia. Sapiente autem voluptatum similique est.', '63.00', '0.00', 'DIGI471', 'instock', 0, 108, 'digital_19.jpg', NULL, 4, '2022-04-13 18:48:14', '2022-05-05 13:12:29', NULL),
(16, 'quia dolorem et id', 'quia-dolorem-et-id', 'Rem reiciendis cum aliquid laborum commodi ut. Consequatur error voluptate ea dolore ut. Voluptatem itaque ad nihil nihil in aut rerum.', 'Rerum occaecati ex maiores quae sit. Commodi reprehenderit iste voluptatem occaecati quia. Explicabo impedit facere libero. Est velit deserunt consequatur illo. Illum illo sed est aliquid sit nisi. Consequuntur maiores officiis quam officia. Quisquam ratione qui aut officia. Non omnis quod facere enim veritatis occaecati totam.', '184.00', NULL, 'DIGI180', 'instock', 0, 180, 'digital_21.jpg', NULL, 5, '2022-04-13 18:48:14', '2022-04-13 18:48:14', NULL),
(17, 'esse minima', 'esse-minima', 'Consequuntur voluptas molestias autem nostrum unde. Ratione error quia rerum natus. Qui voluptatum recusandae cupiditate expedita pariatur repellendus. Et quia rerum fugiat expedita voluptatum.', 'Qui aut nam ipsa perspiciatis dolorem. Sed optio quas natus ea dolores. Quia cupiditate odit exercitationem aut in perferendis ut. Mollitia ea doloribus rerum aspernatur occaecati illo. Molestias a ea atque illo asperiores illum non accusantium. Dolor nihil in recusandae ut necessitatibus iusto. Sed omnis labore quia. Quia est laudantium vitae quia. Aut et voluptate aut officiis accusantium eveniet. Fugit praesentium veritatis ducimus blanditiis voluptas et.', '296.00', '0.00', 'DIGI486', 'instock', 0, 134, 'digital_9.jpg', NULL, 4, '2022-04-13 18:48:14', '2022-05-05 13:13:04', NULL),
(18, 'beatae quia', 'beatae-quia', 'Et qui maxime cum ut. Vitae debitis sequi quo omnis sequi. Excepturi rerum et et quibusdam necessitatibus dignissimos.', 'Quidem omnis porro explicabo voluptatem in ut maxime eveniet. Est laboriosam sequi maxime vel odit culpa. Dolorum quibusdam repellendus molestiae nisi. Qui itaque sequi temporibus velit fugit facilis rerum. Consequatur voluptas aut earum quisquam cupiditate. Ex et molestiae eveniet sed. Dolore voluptates ullam saepe. Nostrum et quos natus dolor. Neque consequuntur a corporis rerum repellendus ut animi. Sint optio qui magnam odio.', '468.00', '0.00', 'DIGI242', 'instock', 0, 107, 'digital_8.jpg', NULL, 5, '2022-04-13 18:48:14', '2022-05-05 13:12:46', NULL),
(19, 'magnam ut aut', 'magnam-ut-aut', 'Omnis neque officia fugiat mollitia adipisci ut error. Id sunt labore non. Voluptatum rerum pariatur porro a voluptas.', 'Libero esse voluptas facilis enim ut inventore animi. Deleniti qui tempore sed quis. Tempora veniam quis voluptas iste. Temporibus similique ab dolore ipsum modi. Dolores saepe cupiditate et beatae et. Esse id voluptatem consequatur. Perferendis voluptatem iusto ipsam ea. Error debitis asperiores aliquam magnam voluptatibus amet. Sunt tempora consequatur officiis sunt voluptate quisquam tempore animi.', '189.00', '0.00', 'DIGI171', 'instock', 0, 137, 'digital_5.jpg', NULL, 2, '2022-04-13 18:48:14', '2022-05-05 13:12:03', NULL),
(20, 'sed dolor', 'sed-dolor', 'Vel sunt optio esse. Dolorum molestias dolores omnis nobis qui. Sit delectus aperiam excepturi necessitatibus ex doloremque omnis. Voluptatem molestiae eius nihil aliquid qui officia.', 'Minima velit earum rerum doloremque ea autem quo dolores. Quod sequi vero non quidem id. Dolores ut in sunt. Ut similique quam ut et qui ipsam non. Accusamus ut maiores perspiciatis optio vero magni quas. Repellat voluptas et asperiores nostrum eos totam illum. Quam exercitationem ut delectus officia. Incidunt similique quisquam non libero. Sint nisi veniam quia libero fuga. Excepturi autem velit laborum sit ea facilis. Qui esse qui itaque in ea. Veritatis quis temporibus sed quisquam.', '229.00', '0.00', 'DIGI437', 'instock', 0, 165, 'digital_17.jpg', NULL, 4, '2022-04-13 18:48:14', '2022-05-05 13:11:47', NULL),
(21, 'dolorum', 'dolorum', 'Aspernatur omnis excepturi aliquid numquam. Alias qui voluptas occaecati inventore illum officiis dolor. Eum ut non dolor cumque est et rerum.', 'Omnis at vero consequatur officiis in. Libero deleniti unde porro ex ut iste odit. Et omnis sed sequi autem est id sed excepturi. Voluptatem in beatae qui ab quia at enim. Quos et voluptatibus rerum quo labore veniam. Qui cumque voluptas fugit est veniam perferendis. Tempore ea nostrum repudiandae error natus. Quia quaerat recusandae nostrum eum sequi doloribus.', '230.00', '0.00', 'DIGI292', 'instock', 0, 193, 'digital_2.jpg', NULL, 4, '2022-04-13 18:48:15', '2022-05-05 13:11:34', NULL),
(22, 'omnis aut dolores', 'omnis-aut-dolores', 'Et exercitationem consequuntur provident vero natus. Consequatur nostrum et delectus ullam expedita. Ipsum illum sequi nihil sunt sunt sapiente.', 'Architecto et pariatur odit. Occaecati amet et iste id dolor dolor et. Enim quibusdam corporis eius. Consequatur dolor magnam necessitatibus molestias. Pariatur sunt dicta accusamus et consequatur dolor nesciunt. Nihil deleniti corporis dolores consequatur dolorum veniam repudiandae. Adipisci aperiam in tenetur beatae neque qui et. Debitis velit nulla ex quidem ipsam omnis sunt. Corporis molestias nostrum quisquam earum. Dicta id fugiat nostrum ex ducimus. Et magnam eos pariatur optio.', '276.00', '0.00', 'DIGI281', 'instock', 0, 140, 'digital_3.jpg', NULL, 2, '2022-04-13 18:48:15', '2022-05-05 13:05:36', NULL),
(24, 'Lamp', 'lamp', '1920 lamp', 'This lamp is from the 1920\'s and belonged to what is believed to a royal family.', '700.00', '650.00', 'DIGI8593', 'instock', 0, 1, '1649965696.jpg', ',16506560210.jpg,16506560211.jpg,16506560212.webp', 2, '2022-04-14 17:48:16', '2022-04-22 17:33:41', NULL),
(25, 'Nyt produkt', 'nyt-produkt', 'Dette er et nyt produkt', 'Dette er et nyt produkt beskrivelse', '122.00', '20.00', 'DIGI4585', 'instock', 0, 5, '1650568385.jpg', NULL, 11, '2022-04-21 17:13:05', '2022-04-21 17:13:05', NULL),
(28, 'New test product', 'new-test-product', 'New test product short desc', 'New test product longer desc', '579.00', '550.00', 'DIGI4485', 'instock', 0, 2, '1650642930.jpg', ',16506429300.jpg,16506429301.jpg,16506429302.jpg,16506429303.jpg,16506429304.jpg', 11, '2022-04-22 13:55:30', '2022-04-22 13:55:30', NULL),
(29, 'New product test', 'new-product-test', 'Short description', 'Longer description of product ', '656.00', '400.00', 'DIGI48756', 'instock', 0, 2, '1651152304.jpg', ',16511523040.jpg', 2, '2022-04-28 11:25:04', '2022-05-06 04:26:09', NULL),
(30, 'New product test2', 'new-product-test2', 'New product test attribute short desc', 'New product test attribute longer description of product ', '700.00', '650.00', 'DIGI45875', 'instock', 0, 2, '1651152430.jpg', ',16511524300.jpg,16511524301.jpg,16511524302.jpg', 11, '2022-04-28 11:27:10', '2022-05-06 04:26:52', NULL),
(32, 'Nike air', 'nike-air-new', 'Short description', 'Longer description', '978.00', '788.00', 'DIGI4745', 'instock', 0, 3, '1651167037.png', ',16511670370.png,16511670371.png,16511670372.png', 12, '2022-04-28 15:30:37', '2022-04-28 15:30:37', 1);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Colour', '2022-04-28 10:39:17', '2022-04-28 10:46:52'),
(2, 'Size', '2022-04-28 10:46:29', '2022-04-28 10:46:29');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 5, '1651141570.jpg', '30530717', 'Nr.3 ', NULL, 'Nivå', 'Copenhagen', 'Denmark', '2990', '2022-04-28 07:40:28', '2022-04-28 08:26:10'),
(2, 6, '1651406326.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-01 09:58:33', '2022-05-01 09:58:46'),
(3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-05-13 20:41:24', '2022-05-13 20:41:24');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(2, 2, 'Very nice product', 13, '2022-04-22 09:11:10', '2022-04-22 09:11:10'),
(3, 5, 'Ver nice controller !! ', 20, '2022-04-28 08:35:15', '2022-04-28 08:35:15'),
(4, 4, 'Amazing chair! Use it infront of the tv. Would wish for more colours though. \n\nCheers!', 31, '2022-05-06 07:40:50', '2022-05-06 07:40:50'),
(5, 5, 'Best couch ever!', 32, '2022-05-06 07:41:08', '2022-05-06 07:41:08');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-04-17 12:27:26', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('sL3ZBF8bUJFg5gumUHXsJZwzV3d63CKoYW2dYpYP', 2, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Mobile Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaUVVM0FPZnV6bHFvSDNlOE9vdERxYzV5d0pGcURSVVkxVTExN2VjeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0LXVzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImNhcnQiO2E6MTp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319fQ==', 1652817372);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twitter`, `facebook`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 'admin@admin.com', '88888888', '88888888', 'Company Address', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d72000.47096306228!2d12.523784642347342!3d55.67134422214988!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4652533c5c803d23%3A0x4dd7edde69467b8!2sK%C3%B8benhavn!5e0!3m2!1sda!2sdk!4v1652816964074!5m2!1sda!2sdk', '#', '#', '#', '2022-05-17 19:38:55', NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 23, 'Peter', 'Jensen', '30530717', 'peetmj@gmail.com', 'Nivåvænge', 'Nivåvænge', 'Nivå', 'Select region', 'Denmark', '2990', '2022-05-01 10:19:15', '2022-05-01 10:19:15');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@admin.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-17 17:00:28', NULL),
('peetmj@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-05-15 06:53:18', NULL);

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Shoes', 'shoes', 12, '2022-04-28 13:58:28', '2022-04-28 13:58:28'),
(2, 'Tshirts', 'tshirts', 12, '2022-04-28 14:05:25', '2022-04-28 14:05:25'),
(3, 'sub category', 'sub-category', 11, '2022-05-01 16:42:01', '2022-05-01 16:42:01'),
(4, 'Lounge', 'lounge', 5, '2022-05-01 16:43:56', '2022-05-01 16:43:56'),
(5, 'Shoes', 'shoes', 14, '2022-05-01 16:47:33', '2022-05-01 16:47:33'),
(6, 'Dresses', 'dresses', 14, '2022-05-01 16:47:41', '2022-05-01 16:47:41'),
(7, 'Jackets', 'jackets', 14, '2022-05-01 16:47:47', '2022-05-01 16:47:47'),
(8, 'Casual', 'casual', 14, '2022-05-01 16:47:56', '2022-05-01 16:47:56');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cod', 'pending', '2022-04-18 10:35:19', '2022-04-18 10:35:19'),
(2, 1, 4, 'card', 'approved', '2022-04-18 11:35:35', '2022-04-18 11:35:35'),
(3, 2, 5, 'card', 'approved', '2022-04-18 12:07:43', '2022-04-18 12:07:43'),
(4, 2, 6, 'card', 'approved', '2022-04-21 17:05:00', '2022-04-21 17:05:00'),
(5, 2, 7, 'cod', 'pending', '2022-04-21 17:17:17', '2022-04-21 17:17:17'),
(6, 2, 8, 'cod', 'pending', '2022-04-21 17:18:49', '2022-04-21 17:18:49'),
(7, 2, 9, 'cod', 'pending', '2022-04-21 17:20:02', '2022-04-21 17:20:02'),
(8, 2, 10, 'card', 'approved', '2022-04-21 17:20:57', '2022-04-21 17:20:57'),
(9, 1, 11, 'cod', 'pending', '2022-04-22 05:40:24', '2022-04-22 05:40:24'),
(10, 3, 12, 'cod', 'pending', '2022-04-22 07:31:03', '2022-04-22 07:31:03'),
(11, 2, 13, 'card', 'approved', '2022-04-22 15:05:25', '2022-04-22 15:05:25'),
(12, 5, 14, 'card', 'approved', '2022-04-24 11:45:56', '2022-04-24 11:45:56'),
(13, 5, 15, 'card', 'approved', '2022-04-28 06:16:08', '2022-04-28 06:16:08'),
(14, 5, 16, 'card', 'approved', '2022-04-28 06:19:38', '2022-04-28 06:19:38'),
(15, 5, 17, 'cod', 'pending', '2022-04-28 06:41:20', '2022-04-28 06:41:20'),
(16, 5, 18, 'cod', 'pending', '2022-04-28 12:51:54', '2022-04-28 12:51:54'),
(17, 5, 19, 'card', 'approved', '2022-04-30 12:31:26', '2022-04-30 12:31:26'),
(18, 5, 20, 'card', 'approved', '2022-04-30 12:32:15', '2022-04-30 12:32:15'),
(19, 5, 21, 'cod', 'pending', '2022-05-01 10:15:27', '2022-05-01 10:15:27'),
(20, 5, 22, 'cod', 'pending', '2022-05-01 10:15:52', '2022-05-01 10:15:52'),
(21, 5, 23, 'cod', 'pending', '2022-05-01 10:19:15', '2022-05-01 10:19:15'),
(22, 5, 24, 'card', 'approved', '2022-05-01 10:21:49', '2022-05-01 10:21:49'),
(23, 5, 25, 'card', 'approved', '2022-05-01 10:29:49', '2022-05-01 10:29:49'),
(24, 5, 26, 'card', 'approved', '2022-05-06 07:38:14', '2022-05-06 07:38:14'),
(25, 5, 27, 'card', 'approved', '2022-05-07 06:22:33', '2022-05-07 06:22:33'),
(26, 5, 31, 'card', 'approved', '2022-05-13 08:48:39', '2022-05-13 08:48:39'),
(27, 5, 32, 'card', 'approved', '2022-05-13 08:51:12', '2022-05-13 08:51:12'),
(28, 5, 33, 'card', 'approved', '2022-05-13 12:22:58', '2022-05-13 12:22:58'),
(29, 5, 34, 'card', 'approved', '2022-05-13 13:04:09', '2022-05-13 13:04:09'),
(30, 5, 36, 'card', 'approved', '2022-05-13 20:37:39', '2022-05-13 20:37:39'),
(31, 5, 37, 'card', 'approved', '2022-05-13 20:57:37', '2022-05-13 20:57:37'),
(32, 5, 38, 'card', 'approved', '2022-05-14 13:46:59', '2022-05-14 13:46:59'),
(33, 5, 39, 'card', 'approved', '2022-05-14 15:11:36', '2022-05-14 15:11:36'),
(34, 5, 40, 'card', 'approved', '2022-05-15 06:53:13', '2022-05-15 06:53:13');

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Data dump for tabellen `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Balder Bruhn', 'balder.bruhn@gmail.com', NULL, '$2y$10$m35vUlQBv977/4PG27x9Fey/Sd/P26BP4RRz8JJieSYCseaPNRen.', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-04-13 10:05:54', '2022-04-13 10:05:54'),
(2, 'Admin', 'admin@admin.com', NULL, '$2y$10$cEVphlHPC4UkVaPFZWHYwe3XE.elHXMfhmwf5Fd1xsx8FM3n5B/uC', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-04-13 10:08:02', '2022-04-13 10:08:02'),
(3, 'user2', 'user@user2.com', NULL, '$2y$10$ZM61KKhzJA5XYzNklar/6e3lY9iWNjXBLZQFwIGZHxFW0vbmZOwGS', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-04-13 11:19:05', '2022-04-22 12:00:30'),
(4, 'Ninns', 'ninns@user.com', NULL, '$2y$10$SdFnK4nt8Ew7ZY3vD5nwvuWp4EWt/KtuRs.KxRInw3FcQCpjIBDmu', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-04-14 11:17:15', '2022-04-14 11:17:15'),
(5, 'Peter Jensen', 'peetmj@gmail.com', NULL, '$2y$10$uaeQXx2isUc4QCWAKqxpre0X2zoBzrsh4Cux1dMnPf120Ab..klsa', NULL, NULL, NULL, 'BETzcnaYzdlgvkaGiu8FsjWJ8Nyr90hecOAHRhAgM4OC8cLoN6OxsMsIMN68', NULL, NULL, 'USR', '2022-04-22 14:10:22', '2022-04-24 11:43:28'),
(6, 'user4', 'user@user4.com', NULL, '$2y$10$.StbyPkFeDbKskWN4rMglO3Ja97X3yoWGKePdIVn86ZVxmPNW4NXe', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-05-01 09:58:27', '2022-05-01 09:58:27'),
(7, 'admin2@admin.com', 'admin2@admin.com', NULL, '$2y$10$oR3TVaZ6GZlbnbn0.WE2POUkPA5xbrSTDM70fO5XIiUwdWvz8LNzm', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-05-13 20:41:15', '2022-05-13 20:41:15');

--
-- Begrænsninger for dumpede tabeller
--

--
-- Indeks for tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indeks for tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks for tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks for tabel `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks for tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indeks for tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks for tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks for tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indeks for tabel `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indeks for tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indeks for tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks for tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks for tabel `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indeks for tabel `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indeks for tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indeks for tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indeks for tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Brug ikke AUTO_INCREMENT for slettede tabeller
--

--
-- Tilføj AUTO_INCREMENT i tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tilføj AUTO_INCREMENT i tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Tilføj AUTO_INCREMENT i tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tilføj AUTO_INCREMENT i tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tilføj AUTO_INCREMENT i tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tilføj AUTO_INCREMENT i tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Tilføj AUTO_INCREMENT i tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Tilføj AUTO_INCREMENT i tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Tilføj AUTO_INCREMENT i tabel `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tilføj AUTO_INCREMENT i tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tilføj AUTO_INCREMENT i tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tilføj AUTO_INCREMENT i tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tilføj AUTO_INCREMENT i tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tilføj AUTO_INCREMENT i tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tilføj AUTO_INCREMENT i tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Begrænsninger for dumpede tabeller
--

--
-- Begrænsninger for tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Begrænsninger for tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
