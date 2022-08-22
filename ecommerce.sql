-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 12:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(3, 3, 1, 2, '2022-08-18 04:38:39', '2022-08-18 04:38:39'),
(9, 3, 10, 1, '2022-08-19 05:23:54', '2022-08-19 05:23:54'),
(11, 4, 11, 1, '2022-08-19 05:58:50', '2022-08-19 05:58:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile', 'This is a brand new iphone', 0, 1, '1660913365.png', 'Iphone', 'iphone', 'iphone', '2022-08-18 00:35:05', '2022-08-19 07:04:25'),
(2, 'Electric Fan', 'Fan', 'Electirc Fan', 0, 1, '1660887349.png', 'Electric Fan', 'Electric Fan', 'Electric Fan', '2022-08-18 23:50:49', '2022-08-18 23:50:49'),
(3, 'Laptop', 'Laptop', 'Laptop', 0, 1, '1660887404.png', 'Laptop', 'Laptop', 'Laptop', '2022-08-18 23:51:44', '2022-08-18 23:51:44'),
(4, 'Electric Kettle', 'Electric Kettle', 'Electric Kettle', 0, 1, '1660887469.png', 'Electric Kettle', 'Electric Kettle', 'Electric Kettle', '2022-08-18 23:52:49', '2022-08-18 23:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_20_205258_create_categories_table', 1),
(6, '2022_07_21_151738_create_products_table', 1),
(7, '2022_07_26_160643_create_carts_table', 1),
(8, '2022_07_27_184205_create_orders_table', 1),
(9, '2022_07_27_184737_create_order_items_table', 1),
(10, '2022_08_04_035523_create_wishlists_table', 1),
(11, '2022_08_06_093352_create_ratings_table', 1),
(12, '2022_08_07_051312_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postalcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` int(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `postalcode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '1', 'dinesh', 'sigdel', 'dineshsigdel44@gmail.com', '4521216', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '54545', '100000', '', NULL, 0, NULL, 'devkota8203', '2022-08-18 00:40:50', '2022-08-18 00:40:50'),
(2, '1', 'dinesh sigdel', 'sigdel', 'dineshsigdel44@gmail.com', '514314355', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '45', '100000', '', NULL, 0, NULL, 'devkota9297', '2022-08-18 00:43:33', '2022-08-18 00:43:33'),
(3, '1', 'dinesh sigdel', 'sigdel', 'dineshsigdel44@gmail.com', '514314355', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4555', '100000', '', NULL, 0, NULL, 'devkota8917', '2022-08-18 00:43:45', '2022-08-18 00:43:45'),
(4, '1', 'dinesh', 'sigdel', 'dineshsigdel44@gmail.com', '455464', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4545', '100000', '', NULL, 0, NULL, 'devkota1313', '2022-08-18 01:46:02', '2022-08-18 01:46:02'),
(5, '3', 'abc', 'sigdel', 'abc@gmail.com', '4521216', 'sada', 'sigdel', 'sada', 'asda', 'dsfwe', '4545', '100000', 'COD', NULL, 0, NULL, 'devkota7963', '2022-08-18 04:36:31', '2022-08-18 04:36:31'),
(6, '1', 'dinesh', 'sigdel', 'dineshsigdel44@gmail.com', '455464', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4545', '343190', 'COD', NULL, 1, NULL, 'devkota4628', '2022-08-19 03:49:41', '2022-08-20 13:08:03'),
(7, '4', 'xyz', 'xyz', 'xyz@gmail.com', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', '240000', 'COD', NULL, 0, NULL, 'devkota3943', '2022-08-19 05:58:28', '2022-08-19 05:58:28'),
(8, '5', 'asd', 'xyz', 'asd@gmail.com', '455464', 'sada', 'sada', 'xyz', 'xyz', 'dsfwe', '5415', '240000', 'COD', NULL, 0, NULL, 'devkota4446', '2022-08-19 06:59:49', '2022-08-19 06:59:49'),
(9, '6', 'afg', 'sigdel', 'afg@gmail.com', '54564165', 'gbghjbj', 'hvhvh', 'bhjh', 'cgvhg', 'yvhvh', '6464', '240000', 'COD', NULL, 0, NULL, 'devkota2401', '2022-08-19 22:47:35', '2022-08-19 22:47:35'),
(10, '6', 'afg', 'sigdel', 'afg@gmail.com', '54564165', 'gbghjbj', 'hvhvh', 'bhjh', 'cgvhg', 'yvhvh', '6464', '360000', 'COD', NULL, 0, NULL, 'devkota4418', '2022-08-19 23:59:49', '2022-08-19 23:59:49'),
(11, '1', 'dinesh', 'sigdel', 'dineshsigdel44@gmail.com', '455464', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4545', '2700', 'COD', NULL, 0, NULL, 'devkota1282', '2022-08-20 08:48:46', '2022-08-20 08:48:46'),
(12, '1', 'dinesh', 'sigdel', 'dineshsigdel44@gmail.com', '455464', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4545', '1100', 'COD', NULL, 0, NULL, 'devkota8096', '2022-08-20 08:53:41', '2022-08-20 08:53:41'),
(13, '1', 'dinesh', 'sigdel', 'dineshsigdel44@gmail.com', '455464', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4545', '5500', 'COD', NULL, 0, NULL, 'devkota4571', '2022-08-21 01:12:50', '2022-08-21 01:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2', '100000', '2022-08-18 00:40:50', '2022-08-18 00:40:50'),
(2, '2', '1', '2', '100000', '2022-08-18 00:43:33', '2022-08-18 00:43:33'),
(3, '3', '1', '2', '100000', '2022-08-18 00:43:45', '2022-08-18 00:43:45'),
(4, '4', '1', '2', '100000', '2022-08-18 01:46:02', '2022-08-18 01:46:02'),
(5, '5', '1', '4', '100000', '2022-08-18 04:36:31', '2022-08-18 04:36:31'),
(6, '6', '4', '1', '3700', '2022-08-19 03:49:41', '2022-08-19 03:49:41'),
(7, '6', '14', '1', '120000', '2022-08-19 03:49:41', '2022-08-19 03:49:41'),
(8, '6', '18', '2', '33490', '2022-08-19 03:49:41', '2022-08-19 03:49:41'),
(9, '6', '26', '1', '186000', '2022-08-19 03:49:41', '2022-08-19 03:49:41'),
(10, '7', '11', '4', '240000', '2022-08-19 05:58:28', '2022-08-19 05:58:28'),
(11, '8', '11', '1', '240000', '2022-08-19 06:59:49', '2022-08-19 06:59:49'),
(12, '9', '11', '1', '240000', '2022-08-19 22:47:35', '2022-08-19 22:47:35'),
(13, '10', '14', '1', '120000', '2022-08-19 23:59:50', '2022-08-19 23:59:50'),
(14, '10', '11', '1', '240000', '2022-08-19 23:59:50', '2022-08-19 23:59:50'),
(15, '11', '6', '1', '2700', '2022-08-20 08:48:46', '2022-08-20 08:48:46'),
(16, '12', '10', '1', '1100', '2022-08-20 08:53:41', '2022-08-20 08:53:41'),
(17, '13', '3', '2', '2800', '2022-08-21 01:12:50', '2022-08-21 01:12:50'),
(18, '13', '6', '2', '2700', '2022-08-21 01:12:51', '2022-08-21 01:12:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('devkotaanup321@gmail.com', '$2y$10$t2uI94HFZ8L.kLrXDy5zsO/j4vXwVJYjv0N07vtZobU67LyFu5zkO', '2022-08-19 22:41:35'),
('afg@gmail.com', '$2y$10$QZ2nuyl0FqQFPDyA22A71.Y74mbdkzOJcH5.c4QqDCjCwgg9K0BMK', '2022-08-20 12:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(2, 4, 'Electric small kettle', 'Electric small kettle', 'Electric small kettle', 'Features\r\nCapacity: 1 Body \r\nMaterial: Stainless Steel\r\nType: Water, Tea & Soups\r\nHeating Element: Concealed\r\nAutomatic Shut-Off: Yes\r\nCool Touch Handle: Yes\r\nPower Consumption: 3150 W\r\nDry Boil Protection: Yes', '2000', '1798', '1660887834.png', '48', '10', 0, 1, 'Electric Kettle', 'Electric Kettle', 'Electric Kettle', '2022-08-18 23:58:54', '2022-08-19 03:36:50'),
(3, 4, 'Electric kettle', 'Electric kettle', 'Electric kettle', '1.5 Litre Capacity, Power Indicator\r\nElegant Handles with Single- Touch Lid Locking\r\nAutomatic Cut-Off When Water Has Boiled\r\nConcealed Element, Power Indicator', '3000', '2800', '1660888033.png', '56', '10', 0, 1, 'Electric Kettle', 'Electric Kettle', 'Electric Kettle', '2022-08-19 00:02:13', '2022-08-21 01:12:51'),
(4, 4, 'Electric L body Kettle', 'Electric L body Kettle', 'Electric L body Kettle', 'Features\r\n1800W\r\nAuto shut off\r\nEasy Cleaning\r\nCordless kettle\r\nStainless steel body\r\n360 degree rotational base', '4000', '3700', '1660888261.png', '68', '10', 0, 0, 'Electric Kettle', 'Electric Kettle', 'Electric Kettle', '2022-08-19 00:06:01', '2022-08-19 03:49:41'),
(5, 2, 'Ceiling small fan', 'Ceiling small fan', 'Ceiling small fan', 'Ceiling small fan', '2000', '1800', '1660893123.png', '70', '10', 1, 1, 'Ceiling small fan', 'Ceiling small fan', 'Ceiling small fan', '2022-08-19 01:27:03', '2022-08-19 03:37:13'),
(6, 2, 'Ceiling big fan', 'Ceiling big fan', 'Ceiling big fan', 'Ceiling big fan', '3000', '2700', '1660893212.png', '67', '10', 0, 1, 'Ceiling big fan', 'Ceiling big fan', 'Ceiling big fan', '2022-08-19 01:28:32', '2022-08-21 01:12:51'),
(7, 2, 'Electric stand fan', 'Electric stand fan', 'Electric stand fan with alminum blades', 'Electric stand fan with alminum blades', '3500', '3198', '1660893351.png', '70', '10', 1, 0, 'Electric stand fan', 'Electric stand fan', 'Electric stand fan', '2022-08-19 01:30:51', '2022-08-19 01:30:51'),
(8, 2, 'Astron Arrow Desk Fan', 'Astron Arrow Desk Fan 12 inc', 'Astron Arrow Desk Fan 12 inch', 'Astron Arrow Desk Fan 12 inch', '3500', '3300', '1660893452.png', '70', '10', 1, 0, 'Astron Arrow Desk Fan', 'Astron Arrow Desk Fan', 'Astron Arrow Desk Fan', '2022-08-19 01:32:32', '2022-08-19 01:32:32'),
(9, 2, 'Retro metal fan', 'Retro metal fan', '220 v retro metal fan', '220 v retro metal fan', '3500', '3200', '1660893572.png', '69', '10', 1, 0, 'Retro metal fan', 'Retro metal fan', 'Retro metal fan', '2022-08-19 01:34:32', '2022-08-19 01:34:32'),
(10, 2, 'Portable mini clip electric fans', 'Portable mini clip electric fans', 'Portable mini clip electric fans', 'Portable mini clip electric fans', '1400', '1100', '1660893705.png', '68', '10', 0, 1, 'Portable mini clip electric fans', 'Portable mini clip electric fans', 'Portable mini clip electric fans', '2022-08-19 01:36:45', '2022-08-20 08:53:42'),
(11, 3, 'macbook_pro_13', 'macbook_pro_13', 'macbook_pro_13', 'macbook_pro_13_16GB_512GB ssd touch bar and touch id', '250000', '240000', '1660893975.png', '63', '0', 0, 1, 'macbook_pro_13', 'macbook_pro_13', 'macbook_pro_13', '2022-08-19 01:41:15', '2022-08-19 23:59:50'),
(12, 3, 'Mackbook air m2', 'Mackbook air m2', 'mackbook air m2', 'Launched: June 2022\r\nScreen-to-body ratio: ~82%\r\nDimensions: 304.1 x 215 x 11.3 mm (11.97 x 8.46 x 0.44 inches)\r\n8/512GB, 10-core GPU', '255000', '248000', '1660894274.png', '70', '0', 1, 0, 'mackbook air m2', 'mackbook air m2', 'mackbook air m2', '2022-08-19 01:46:14', '2022-08-19 01:46:14'),
(13, 3, 'Mackbook pro', 'Mackbook pro', 'Mackbook pro', 'Features\r\n13.3” Retina display 1\r\n8-core. CPU.\r\n10-core. GPU.\r\n2TB. Maximum configurable storage 2\r\n3.0 lb. Weight.\r\n14.2” Liquid Retina XDR display 1\r\nUp to. 10-core. CPU.\r\nUp to. 32-core. GPU.', '250000', '244000', '1660894475.png', '68', '15', 1, 0, 'Mackbook pro', 'Mackbook pro', 'Mackbook pro', '2022-08-19 01:49:35', '2022-08-19 01:49:35'),
(14, 3, 'Dell G5 5500', 'Dell G5 5500', 'Dell 5G 5500', 'dell g5 5500 gaming laptop i5-10th gen', '130000', '120000', '1660894613.png', '68', '0', 0, 1, 'Dell G5 5500', 'Dell G5 5500', 'Dell G5 5500', '2022-08-19 01:51:53', '2022-08-19 23:59:50'),
(15, 3, 'Dell latitude 3420 14 inch', 'Dell latitude 3420 14 inch', 'Dell latitude 3420 14 inch', '11th Gen Intel® Core™ i3-1115G4 (6 MB cache, 2 cores, 4 threads, 3.00 GHz to 4.10 GHz Turbo)\r\n\r\nlaptop\r\nWindows 11 Pro, English, French, Spanish\r\n(Dell Technologies recommends Windows 11 Pro for business)\r\n\r\nmemory\r\n8 GB, 1 x 8 GB, DDR4, 3200 MHz\r\nharddrive\r\n256 GB, M.2, PCIe NVMe, SSD, Class 35', '110000', '102998', '1660895322.png', '70', '0', 1, 0, 'Dell latitude 3420 14 inch', 'Dell latitude 3420 14 inch', 'Dell latitude 3420 14 inch', '2022-08-19 02:03:42', '2022-08-19 02:03:42'),
(16, 3, 'Dell-XPS-5', 'Dell-XPS-5', 'Dell-XPS-5', 'Features:\r\nIntel 12th-gen H-series processors and RTX graphics\r\nOLED display option\r\nMade of CNC-machined aluminum\r\nPros:\r\nAs always for XPS, this machine provides an overall great experience\r\nThe touchpad is so big\r\nCons:\r\nWebcam is still 720p\r\nPrices are going up', '200000', '195000', '1660897862.png', '70', '0', 1, 0, 'Dell-XPS-5', 'Dell-XPS-5', 'Dell-XPS-5', '2022-08-19 02:46:02', '2022-08-19 02:46:02'),
(17, 1, 'xiaomi-poco-x3', 'xiaomi-poco-x3', 'xiaomi-poco-x3', 'Technology	\r\nGSM / HSPA / LTE\r\nLAUNCH	Announced	2020, September 22\r\nStatus	Available. Released 2020, September 29\r\nBODY	Dimensions	165.3 x 76.8 x 10.1 mm (6.51 x 3.02 x 0.40 in)\r\nWeight	225 g (7.94 oz)\r\nBuild	Glass front (Gorilla Glass 5), plastic frame, plastic back\r\nSIM	Hybrid Dual SIM (Nano-SIM, dual stand-by)\r\n 	IP53, dust and splash resistant\r\nDISPLAY	Type	IPS LCD, 120Hz, HDR10, 450 nits (typ)\r\nSize	6.67 inches, 107.4 cm2 (~84.6% screen-to-body ratio)\r\nResolution	1080 x 2400 pixels, 20:9 ratio (~395 ppi density)\r\nProtection	Corning Gorilla Glass 5\r\nPLATFORM	OS	Android 10, MIUI 12\r\nChipset	Qualcomm SM7150-AC Snapdragon 732G (8 nm)\r\nCPU	Octa-core (2x2.3 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)\r\nGPU	Adreno 618\r\nMEMORY	Card slot	microSDXC (uses shared SIM slot)\r\nInternal	64GB 6GB RAM, 128GB 6GB RAM, 128GB 8GB RAM\r\n 	UFS 2.1\r\nMAIN CAMERA	Quad	64 MP, f/1.9, (wide), 1/1.73\", 0.8µm, PDAF\r\n13 MP, f/2.2, 119˚ (ultrawide), 1.0µm\r\n2 MP, f/2.4, (macro)\r\n2 MP, f/2.4, (depth)\r\nFeatures	Dual-LED flash, HDR, panorama\r\nVideo	4K@30fps, 1080p@30/120fps, 720p@960fps; gyro-EIS\r\nSELFIE CAMERA	Single	20 MP, f/2.2, (wide), 1/3.4\", 0.8µm\r\nFeatures	HDR, panorama\r\nVideo	1080p@30fps\r\nSOUND	Loudspeaker	Yes, with stereo speakers\r\n3.5mm jack	Yes\r\n 	24-bit/192kHz audio\r\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth	5.1, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, BDS\r\nNFC	No\r\nInfrared port	Yes\r\nRadio	FM radio, recording\r\nUSB	USB Type-C 2.0, USB On-The-Go\r\nFEATURES	Sensors	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass\r\nBATTERY	Type	Li-Po 6000 mAh, non-removable\r\nCharging	Fast charging 33W\r\nMISC	Colors	Cobalt Blue, Shadow Gray\r\nModels	MZB07Z0IN, MZB07Z1IN, MZB07Z2IN, MZB07Z3IN, MZB07Z4IN, MZB9965IN, M2007J20CI\r\nSAR	0.75 W/kg (head)     0.61 W/kg (body)', '31999', '29996', '1660898087.png', '70', '0', 1, 0, 'xiaomi-poco-x3', 'xiaomi-poco-x3', 'xiaomi-poco-x3', '2022-08-19 02:49:47', '2022-08-19 02:49:47'),
(18, 1, 'Samsung Galaxy A50', 'Samsung Galaxy A50', 'Samsung Galaxy A50', 'Display\r\n6.40-inch (1080x2340)\r\nFront Camera\r\n25MP\r\nRear Camera\r\n25MP + 5MP + 8MP\r\nRAM\r\n4GB\r\nStorage\r\n64GB\r\nBattery Capacity\r\n4000mAh\r\nOS\r\nAndroid Pie', '34999', '33490', '1660898330.png', '67', '0', 0, 1, 'Samsung Galaxy A50', 'Samsung Galaxy A50', 'Samsung Galaxy A50', '2022-08-19 02:53:50', '2022-08-19 03:49:41'),
(19, 1, 'Samsung Galaxy-s10', 'Samsung Galaxy-s10', 'Samsung Galaxy-s10', 'Display\r\n6.10-inch\r\nProcessor\r\nSamsung Exynos 9820\r\nFront Camera\r\n10MP\r\nRear Camera\r\n12MP + 12MP + 16MP\r\nRAM\r\n8GB\r\nStorage\r\n128GB\r\nBattery Capacity\r\n3400mAh\r\nOS\r\nAndroid 9.0', '86999', '84999', '1660898488.png', '70', '0', 1, 0, 'Samsung Galaxy-s10', 'Samsung Galaxy-s10', 'Samsung Galaxy-s10', '2022-08-19 02:56:28', '2022-08-19 02:56:28'),
(20, 1, 'Samsung Galaxy-A53', 'Samsung Galaxy-A53', 'Samsung Galaxy-A53', 'CAMERA\r\n64 MP + 12 MP + 5 MP + 5 MP\r\nDISPLAY\r\n6.5 inches (16.51 cm)\r\nPERFORMANCE\r\nSamsung Exynos 1280\r\nRAM\r\n6 GB\r\nSTORAGE\r\n128 GB\r\nBATTERY\r\n5000 mAh\r\nLAUNCH DATE\r\nMarch 21, 2022 (Official)', '59496', '57499', '1660898683.png', '70', '0', 0, 1, 'Samsung Galaxy-A53', 'Samsung Galaxy-A53', 'Samsung Galaxy-A53', '2022-08-19 02:59:43', '2022-08-19 03:38:40'),
(21, 1, 'Samsung Galaxy M31', 'Samsung Galaxy M31', 'Samsung Galaxy M31', 'Display\r\n6.40-inch (1080x2340)\r\nProcessor\r\nSamsung Exynos 9611\r\nFront Camera\r\n32MP\r\nRear Camera\r\n64MP + 8MP + 5MP + 5MP\r\nRAM\r\n6GB\r\nStorage\r\n128GB\r\nBattery Capacity\r\n6000mAh\r\nOS\r\nAndroid 10', '31999', '29999', '1660898833.png', '70', '0', 1, 0, 'Samsung Galaxy M31', 'Samsung Galaxy M31', 'Samsung Galaxy M31', '2022-08-19 03:02:13', '2022-08-19 03:02:13'),
(22, 1, 'Iphone-13-pro-max', 'Iphone-13-pro-max', 'Iphone-13-pro-max', 'CAMERA\r\n12 MP + 12 MP + 12 MP\r\nDISPLAY\r\n6.7 inches (17.01 cm)\r\nPERFORMANCE\r\nApple A15 Bionic\r\nSTORAGE\r\n128 GB\r\nLAUNCH DATE\r\nSeptember 14, 2021 (Official)', '193999', '191990', '1660898998.png', '70', '0', 0, 1, 'Iphone-13-pro-max', 'Iphone-13-pro-max', 'Iphone-13-pro-max', '2022-08-19 03:04:58', '2022-08-19 03:38:56'),
(23, 1, 'Iphone 13 pro', 'Iphone 13 pro', 'Iphone 13 pro', 'Display\r\n6.10-inch (1170x2523)\r\nProcessor\r\nApple A15 Bionic\r\nFront Camera\r\n12MP\r\nRear Camera\r\n12MP + 12MP + 12MP\r\nStorage\r\n128GB, 256GB, 512GB, 1TB\r\nBattery Capacity\r\n3095mAh\r\nOS\r\niOS 15', '176499', '174999', '1660900001.png', '70', '0', 0, 1, 'Iphone 13 pro', 'Iphone 13 pro', 'Iphone 13 pro', '2022-08-19 03:21:41', '2022-08-19 03:39:13'),
(24, 1, 'Iphone 12 pro max', 'Iphone 12 pro max', 'Iphone 12 pro max', 'Display\r\n6.70-inch (1284x2778)\r\nProcessor\r\nApple A14 Bionic\r\nFront Camera\r\n12MP\r\nRear Camera\r\n12MP + 12MP + 12MP\r\nStorage\r\n128GB\r\nOS\r\niOS 14', '181990', '179990', '1660900254.png', '69', '0', 0, 1, 'Iphone 12 pro max', 'Iphone 12 pro max', 'Iphone 12 pro max', '2022-08-19 03:25:54', '2022-08-19 03:39:28'),
(25, 1, 'Iphone 12 pro', 'Iphone 12 pro', 'Iphone 12 pro', 'Display\r\n6.10-inch (1170x2532)\r\nProcessor\r\nApple A14 Bionic\r\nFront Camera\r\n12MP\r\nRear Camera\r\n12MP + 12MP + 12MP\r\nStorage\r\n256GB\r\nOS\r\niOS 14', '174500', '172700', '1660900546.png', '70', '0', 0, 1, 'Iphone 12 pro', 'Iphone 12 pro', 'Iphone 12 pro', '2022-08-19 03:30:46', '2022-08-19 03:39:44'),
(26, 1, 'Iphone 11 pro max', 'Iphone 11 pro max', 'Iphone 11 pro max', 'Display\r\n6.50-inch (1242x2688)\r\nProcessor\r\nApple A13 Bionic\r\nFront Camera\r\n12MP\r\nRear Camera\r\n12MP + 12MP + 12MP\r\nRAM\r\n4GB\r\nStorage\r\n256GB\r\nBattery Capacity\r\n3969mAh\r\nOS\r\niOS 13', '18800', '186000', '1660900794.png', '69', '0', 0, 1, 'Iphone 11 pro max', 'Iphone 11 pro max', 'Iphone 11 pro max', '2022-08-19 03:34:54', '2022-08-19 03:49:41');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '3', '2022-08-18 01:46:59', '2022-08-18 01:46:59'),
(2, '1', '26', '5', '2022-08-19 03:50:00', '2022-08-19 03:50:00'),
(3, '6', '11', '4', '2022-08-19 22:47:50', '2022-08-19 22:47:50');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 'this is a good product', '2022-08-18 01:47:14', '2022-08-18 01:47:14'),
(2, '1', '26', 'Good phone', '2022-08-19 03:50:17', '2022-08-19 03:50:17'),
(3, '6', '11', 'This mackbook pro is good product.', '2022-08-19 22:48:14', '2022-08-19 22:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postalcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `postalcode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dinesh', 'dineshsigdel44@gmail.com', NULL, '$2y$10$I1UXYqvFlQTCm/Aoh4teTOsUaiJnOtdUuo8HlsKL.TQeNrqZvh7.q', 'sigdel', '455464', 'sigdel', 'sigdel', 'sigdel', 'sigdel', 'sigdel', '4545', 0, 'q64hR5Kr6EuK7J3ysZsF97xwpSXQLrttcsy19YWDZfToNzf2L7CdkxQsk2w7', '2022-08-18 00:28:36', '2022-08-20 12:34:04'),
(2, 'anup devkota', 'devkotaanup321@gmail.com', NULL, '$2y$10$CSU7kmVLr3gFHemB2PW7UuPX1fbL8s1F7O7m2yJWGZpRwC6aAuuGe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'UNxPeXiKhXarTIJ7Oh1963JC1y4uIHmeP2gYF2W1BHTCG0eM5FXhI9xiMVLZ', '2022-08-18 00:31:50', '2022-08-19 22:36:21'),
(3, 'abc', 'abc@gmail.com', NULL, '$2y$10$xXOUrikwsNjDj6HwWqCTuOGqh5Y5MJskwEib3GhbyZC1zNrC0HAvi', 'sigdel', '4521216', 'sada', 'sigdel', 'sada', 'asda', 'dsfwe', '4545', 0, NULL, '2022-08-18 01:52:54', '2022-08-18 04:36:31'),
(4, 'xyz', 'xyz@gmail.com', NULL, '$2y$10$t8ZNF6ssaOHLgSr5UQYLD.4LzOgeQx/f.xLoekXwBGe/vlazas9se', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 'xyz', 0, NULL, '2022-08-19 05:55:29', '2022-08-19 05:58:28'),
(5, 'asd', 'asd@gmail.com', NULL, '$2y$10$uaYlN7c57rd/QWGApRVApuBoaROi7vtZ/XMobw8x0vEA3K9O9kawm', 'xyz', '455464', 'sada', 'sada', 'xyz', 'xyz', 'dsfwe', '5415', 0, NULL, '2022-08-19 06:50:16', '2022-08-19 06:59:49'),
(6, 'afg', 'afg@gmail.com', NULL, '$2y$10$I3o8Ocotu4mJeFRPUrhPLu40GDhISq7zb9S54qBkGnlFmPdOgm0TG', 'sigdel', '54564165', 'gbghjbj', 'hvhvh', 'bhjh', 'cgvhg', 'yvhvh', '6464', 0, NULL, '2022-08-19 22:45:55', '2022-08-19 22:47:35'),
(7, 'shishir tiwari', 'shishir21@gmail.com', NULL, '$2y$10$hAVmEJucwoRQJW5CmTBsjuq0fCPx4MX1h463hE.XU2dtIxUruiJtS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-08-20 12:27:44', '2022-08-20 12:27:44'),
(8, 'we', 'we@gmail.com', NULL, '$2y$10$v94VX088nueVIyAeDfnIdedyECuFKbz87xPQWVjwZk/P2GYiicsaW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-08-20 12:29:59', '2022-08-20 12:29:59'),
(9, 'dfg', 'dfg@gmail.com', NULL, '$2y$10$RMOlPlOcKIcq6esVyZAkfuEnmQ/x/ay6r73LQ7TRe9lPDvhnxFaGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-08-20 12:31:32', '2022-08-20 12:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2022-08-18 00:39:39', '2022-08-18 00:39:39'),
(2, '3', '1', '2022-08-18 03:20:00', '2022-08-18 03:20:00'),
(3, '1', '26', '2022-08-19 03:48:53', '2022-08-19 03:48:53'),
(4, '3', '10', '2022-08-19 05:23:57', '2022-08-19 05:23:57'),
(5, '4', '11', '2022-08-19 05:55:56', '2022-08-19 05:55:56'),
(6, '6', '11', '2022-08-19 22:46:48', '2022-08-19 22:46:48'),
(7, '1', '6', '2022-08-21 01:12:21', '2022-08-21 01:12:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
