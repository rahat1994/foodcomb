-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 08:02 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodcomb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `e_mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `f_name`, `l_name`, `e_mail`, `phone`, `created_at`, `updated_at`, `message`) VALUES
(1, 'Forrest', 'Alston', 'noxyvocib@mailinator.net', '+573922102496', '2020-06-21 10:58:12', '2020-06-21 10:58:12', NULL),
(2, 'Forrest', 'Alston', 'noxyvocib@mailinator.net', '+573922102496', '2020-06-21 11:07:47', '2020-06-21 11:07:47', 'bdfdndn'),
(3, 'Forrest', 'Alston', 'noxyvocib@mailinator.net', '01637765144', '2020-06-21 11:23:09', '2020-06-21 11:23:09', 'gsdgfdhsd'),
(4, 'Forrest', 'Alston', 'noxyvocib@mailinator.net', '01637765144', '2020-06-21 11:32:46', '2020-06-21 11:32:46', 'gsdgashasdf'),
(5, 'Forrest', 'Alston', 'noxyvocib@mailinator.net', '01637765144', '2020-06-21 12:10:00', '2020-06-21 12:10:00', 'gasdhgahafa');

-- --------------------------------------------------------

--
-- Table structure for table `daily_specials`
--

CREATE TABLE `daily_specials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_specials`
--

INSERT INTO `daily_specials` (`id`, `name`, `description`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Chesapeake crab and artichoke dip', 'Creamy chesapeake crab dip with artichoke, baked and topped with cheddar cheese. served crusty bread for dipping.', '24.95', '2020-06-09 04:55:43', '2020-06-09 04:55:43'),
(2, 'Woondal', 'Creamy chesapeake crab dip with artichoke, baked and topped with cheddar cheese. served crusty bread for dipping.', 'daily-specials\\June2020\\8UP8DqpXAiswImqz135t.png', '2020-06-24 10:13:19', '2020-06-24 10:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 5, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(28, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(29, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(37, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(38, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(40, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(41, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(42, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(43, 15, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
(44, 15, 'quantity_ratio', 'text', 'Quantity Ratio', 1, 1, 1, 1, 1, 1, '{}', 6),
(45, 15, 'restaurant_id', 'text', 'Restaurant Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(46, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(47, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(48, 15, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(51, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(53, 16, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(54, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(55, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(56, 16, 'fc_food_family_belongsto_fc_food_category_relationship', 'relationship', 'fc_food_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcFoodCategory\",\"table\":\"fc_food_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":null}', 6),
(57, 15, 'fc_menu_item_belongsto_data_row_relationship_2', 'relationship', 'Food Family', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\food_family\",\"table\":\"fc_food_families\",\"type\":\"belongsTo\",\"column\":\"food_family_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(58, 15, 'food_family_id', 'text', 'Food Family Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(59, 15, 'fc_menu_item_belongsto_fc_restaurant_relationship', 'relationship', 'fc_restaurants', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\restaurant\",\"table\":\"fc_restaurants\",\"type\":\"belongsTo\",\"column\":\"restaurant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(60, 15, 'fc_menu_item_belongsto_fc_food_category_relationship', 'relationship', 'fc_food_category', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcFoodCategory\",\"table\":\"fc_food_categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(61, 15, 'food_type', 'text', 'Food Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"Spicy - Indian - Salad Included\"}', 10),
(62, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(63, 18, 'restaurant_id', 'text', 'Restaurant Id', 1, 1, 1, 1, 1, 1, '{}', 6),
(64, 18, 'order_body', 'text', 'Order Body', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 18, 'order_user_address', 'text', 'Order User Address', 0, 0, 1, 1, 1, 1, '{}', 10),
(66, 18, 'order_from', 'text', 'Order From', 0, 0, 0, 0, 0, 0, '{}', 12),
(67, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(68, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(69, 18, 'customer_name', 'text', 'Customer Name', 0, 0, 1, 1, 1, 1, '{}', 8),
(70, 18, 'customer_phone', 'text', 'Customer Phone', 0, 0, 1, 1, 1, 1, '{}', 11),
(73, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 20, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(75, 20, 'sitting_capacity', 'text', 'Sitting Capacity', 1, 1, 1, 1, 1, 1, '{}', 4),
(76, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(77, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(78, 20, 'user_id', 'text', 'User Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(79, 20, 'area_id', 'text', 'Area Id', 1, 1, 1, 1, 1, 1, '{}', 7),
(80, 20, 'restaurant_category_id', 'text', 'Restaurant Category Id', 1, 1, 1, 1, 1, 1, '{}', 8),
(81, 20, 'fc_restaurant_belongsto_user_relationship', 'relationship', 'users', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(82, 15, 'food_image', 'text', 'Food Image', 0, 1, 1, 1, 1, 1, '{}', 11),
(83, 18, 'fc_order_belongsto_user_relationship', 'relationship', 'user', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"order_from\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(84, 20, 'fc_restaurant_belongsto_fc_area_relationship', 'relationship', 'fc_areas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcArea\",\"table\":\"fc_areas\",\"type\":\"belongsTo\",\"column\":\"area_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(85, 20, 'fc_restaurant_belongsto_fc_restaurant_category_relationship', 'relationship', 'fc_restaurant_categories', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\FcRestaurantCategory\",\"table\":\"fc_restaurant_categories\",\"type\":\"belongsTo\",\"column\":\"restaurant_category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"data_rows\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(86, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(87, 21, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(88, 21, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(89, 21, 'price', 'image', 'Price', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 4),
(90, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(91, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(92, 22, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 22, 'item_name', 'text', 'Item Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(94, 22, 'item_price', 'text', 'Item Price', 1, 1, 1, 1, 1, 1, '{}', 3),
(95, 22, 'item_description', 'text', 'Item Description', 1, 1, 1, 1, 1, 1, '{}', 4),
(96, 22, 'item_group', 'text', 'Item Group', 1, 1, 1, 1, 1, 1, '{}', 5),
(97, 22, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 6),
(98, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(99, 22, 'item_group_description', 'text', 'Item Group Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(100, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(101, 23, 'branch', 'text', 'Branch', 0, 1, 1, 1, 1, 1, '{}', 2),
(102, 23, 'people', 'text', 'People', 0, 1, 1, 1, 1, 1, '{}', 3),
(103, 23, 'date', 'text', 'Date', 0, 1, 1, 1, 1, 1, '{}', 4),
(104, 23, 'time', 'text', 'Time', 0, 1, 1, 1, 1, 1, '{}', 5),
(105, 23, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 6),
(106, 23, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 7),
(107, 23, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 8),
(108, 23, 'request_text', 'text', 'Request Text', 0, 1, 1, 1, 1, 1, '{}', 9),
(109, 23, 'reservation_belongsto_fc_area_relationship', 'relationship', 'fc_areas', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\area\",\"table\":\"fc_areas\",\"type\":\"belongsTo\",\"column\":\"branch\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"daily_specials\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(110, 18, 'fc_order_belongsto_user_relationship_1', 'relationship', 'Address', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"order_from\",\"key\":\"id\",\"label\":\"address\",\"pivot_table\":\"daily_specials\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(111, 18, 'fc_order_belongsto_fc_restaurant_relationship', 'relationship', 'Restaurant Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\restaurant\",\"table\":\"fc_restaurants\",\"type\":\"belongsTo\",\"column\":\"restaurant_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"daily_specials\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(112, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(113, 24, 'f_name', 'text', 'F Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(114, 24, 'l_name', 'text', 'L Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(115, 24, 'e_mail', 'text', 'E Mail', 1, 1, 1, 1, 1, 1, '{}', 4),
(116, 24, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, '{}', 5),
(117, 24, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, '{}', 6),
(118, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(119, 24, 'message', 'text', 'Message', 0, 1, 1, 1, 1, 1, '{}', 8),
(120, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 25, 'star_count', 'text', 'Star Count', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 25, 'brief', 'text', 'Brief', 0, 1, 1, 1, 1, 1, '{}', 3),
(123, 25, 'image_url', 'image', 'Image Url', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true}', 4),
(124, 25, 'customer_name', 'text', 'Customer Name', 0, 1, 1, 1, 1, 1, '{}', 5),
(125, 25, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(126, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(4, 'fc_areas', 'fc-areas', 'Fc Area', 'Fc Areas', 'voyager-lighthouse', 'App\\FcArea', NULL, '\\App\\Http\\Controllers\\AreaController', 'Area of restaurants.', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-20 23:17:55', '2019-12-20 23:37:41'),
(5, 'fc_food_categories', 'fc-food-categories', 'Fc Food Category', 'Fc Food Categories', 'voyager-images', 'App\\FcFoodCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-20 23:19:59', '2019-12-20 23:33:22'),
(12, 'fc_restaurant_categories', 'fc-restaurant-categories', 'Fc Restaurant Category', 'Fc Restaurant Categories', 'voyager-archive', 'App\\FcRestaurantCategory', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(15, 'fc_menu_items', 'fcmenuitems', 'Menu Item', 'Menu Items', 'voyager-book', 'App\\menu_item', NULL, NULL, 'Foods list.', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-12-29 13:59:08', '2020-01-31 19:25:09'),
(16, 'fc_food_families', 'fc-food-families', 'Food Family', 'Food Families', 'voyager-check-circle', 'App\\food_family', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(18, 'fc_orders', 'fc-orders', 'Fc Order', 'Fc Orders', 'voyager-file-text', 'App\\FcOrders', NULL, '\\App\\Http\\Controllers\\OrderController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-14 16:35:08', '2020-06-15 02:35:55'),
(20, 'fc_restaurants', 'fc-restaurants', 'Restaurant', 'Restaurants', 'voyager-company', 'App\\restaurant', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-01-31 19:18:30', '2020-02-03 11:47:27'),
(21, 'daily_specials', 'daily-specials', 'Daily Special', 'Daily Specials', 'voyager-medal-rank-star', 'App\\DailySpecial', NULL, NULL, 'daily specials of the website', 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-06-09 04:32:17', '2020-06-24 10:12:58'),
(22, 'fc_default_menu', 'fc-default-menu', 'Fc Default Menu', 'Fc Default Menus', 'voyager-boat', 'App\\FcDefaultMenu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-14 23:54:11', '2020-06-15 00:19:18'),
(23, 'reservations', 'reservations', 'Reservation', 'Reservations', 'voyager-ticket', 'App\\Reservation', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-15 02:19:52', '2020-06-15 02:21:54'),
(24, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-power', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-06-21 10:41:18', '2020-06-23 09:44:24'),
(25, 'reviews', 'reviews', 'Review', 'Reviews', 'voyager-star-half', 'App\\Review', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-11 23:20:26', '2020-07-11 23:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `fc_areas`
--

CREATE TABLE `fc_areas` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_areas`
--

INSERT INTO `fc_areas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Zinda bazar', '2019-12-22 03:06:01', '2019-12-22 03:06:01'),
(2, 'Nayasarak', '2019-12-22 03:13:41', '2019-12-22 03:13:41');

-- --------------------------------------------------------

--
-- Table structure for table `fc_default_menu`
--

CREATE TABLE `fc_default_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_group_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Starts at 11:00 am',
  `item_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hello.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_default_menu`
--

INSERT INTO `fc_default_menu` (`id`, `item_name`, `item_price`, `item_description`, `item_group`, `created_at`, `updated_at`, `item_group_description`, `item_image`) VALUES
(2, 'Pan of Fried Eggs', '12.95', 'eggs, bacon and cherry-tomatoes with bread.', 'BreakFast', '2020-06-15 06:41:41', '2020-06-15 00:17:01', 'Starts at 11:00 am', 'hello.jpg'),
(3, 'Healthy Breakfast', '19.95', 'Oat granola with fresh blueberries, almond, yogurt', 'BreakFast', '2020-06-15 06:41:58', '2020-06-15 00:17:55', 'Starts at 11:00 am', 'hello.jpg'),
(4, 'Grilled Fillet', '12.95', 'eggs, bacon and cherry-tomatoes with bread.', 'Lunch', '2020-06-15 06:41:44', '2020-06-15 00:20:18', 'Starts at 2:00 pm', 'hello.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fc_food_categories`
--

CREATE TABLE `fc_food_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_food_categories`
--

INSERT INTO `fc_food_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Starter', '2019-12-20 23:54:21', '2019-12-20 23:54:21'),
(2, 'Main Dish', '2020-01-04 06:19:26', '2020-01-04 06:19:26'),
(3, 'Dessert', '2020-01-04 06:19:47', '2020-01-04 06:19:47'),
(4, 'Drinks', '2020-01-04 07:25:52', '2020-01-04 07:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `fc_food_families`
--

CREATE TABLE `fc_food_families` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_food_families`
--

INSERT INTO `fc_food_families` (`id`, `name`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Wonton', 1, '2020-01-04 04:02:53', '2020-01-04 04:02:53'),
(2, 'French Fries', 1, '2020-01-04 06:17:57', '2020-01-04 06:17:57'),
(3, 'Soup', 1, '2020-01-04 06:18:00', '2020-01-04 06:18:53'),
(4, 'Chicken Wings', 1, '2020-01-04 06:18:42', '2020-01-04 06:18:42'),
(5, 'Hyderabadi Biriyani', 2, '2020-01-04 06:20:28', '2020-01-04 06:20:28'),
(6, 'Chicken Biryani', 2, '2020-01-04 06:20:45', '2020-01-04 06:20:45'),
(7, 'Afghani Biryani', 2, '2020-01-04 06:22:46', '2020-01-04 06:22:46'),
(8, 'Smoothies', 4, '2020-01-04 07:26:43', '2020-01-04 07:26:43'),
(9, 'Soup', 1, '2020-01-30 00:23:21', '2020-01-30 00:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `fc_menu_items`
--

CREATE TABLE `fc_menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity_ratio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `food_family_id` bigint(20) UNSIGNED NOT NULL,
  `food_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `food_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_menu_items`
--

INSERT INTO `fc_menu_items` (`id`, `name`, `price`, `quantity_ratio`, `restaurant_id`, `created_at`, `updated_at`, `category_id`, `food_family_id`, `food_type`, `food_image`) VALUES
(1, 'Brenna Lancaster', 162, '3', 2, '2020-01-12 03:25:00', '2020-06-12 07:20:05', 2, 7, 'Spicy - Mexican - Chicken', 'storage/Eagle_nebula_pillars.jpg'),
(2, 'Kasper Gonzales', 992, '3', 2, '2020-01-14 11:55:00', '2020-06-12 07:19:57', 1, 1, 'Suscipit rem iure ut', 'storage/Eagle_nebula_pillars.jpg'),
(3, 'bath', 20, '1', 2, '2020-01-30 00:29:00', '2020-06-12 07:19:41', 2, 5, 'Spicy - Indian - Salad Included', 'storage/Eagle_nebula_pillars.jpg'),
(4, 'Teriyaki', 25, '1', 3, '2020-06-12 07:31:18', '2020-06-12 07:31:18', 3, 1, 'Spicy - Indian - Salad Included', 'storage/Eagle_nebula_pillars.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fc_orders`
--

CREATE TABLE `fc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `order_body` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_user_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_from` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_orders`
--

INSERT INTO `fc_orders` (`id`, `restaurant_id`, `order_body`, `order_user_address`, `order_from`, `customer_name`, `customer_phone`, `created_at`, `updated_at`) VALUES
(7, 2, '{\"1\":{\"food_id\":\"1\",\"food_name\":\"Brenna Lancaster\",\"food_price\":\"162\",\"quantity\":\"1\"},\"2\":{\"food_id\":\"2\",\"food_name\":\"Kasper Gonzales\",\"food_price\":\"992\",\"quantity\":\"1\"}}', NULL, 1, NULL, NULL, '2020-01-28 06:43:07', '2020-01-28 06:43:07'),
(8, 2, '{\"1\":{\"food_id\":\"1\",\"food_name\":\"Brenna Lancaster\",\"food_price\":\"162\",\"quantity\":\"1\"},\"2\":{\"food_id\":\"2\",\"food_name\":\"Kasper Gonzales\",\"food_price\":\"992\",\"quantity\":\"3\"}}', NULL, 1, NULL, NULL, '2020-01-28 19:08:44', '2020-01-28 19:08:44'),
(9, 2, '{\"2\":{\"food_id\":\"2\",\"food_name\":\"Kasper Gonzales\",\"food_price\":\"992\",\"quantity\":\"1\"}}', NULL, 1, NULL, NULL, '2020-01-30 00:21:59', '2020-01-30 00:21:59'),
(10, 2, '{\"1\":{\"food_id\":\"1\",\"food_name\":\"Brenna Lancaster\",\"food_price\":\"162\",\"quantity\":\"4\"},\"2\":{\"food_id\":\"2\",\"food_name\":\"Kasper Gonzales\",\"food_price\":\"992\",\"quantity\":\"3\"}}', NULL, 1, NULL, NULL, '2020-01-30 00:24:20', '2020-01-30 00:24:20'),
(11, 2, '{\"1\":{\"food_id\":\"1\",\"food_name\":\"Brenna Lancaster\",\"food_price\":\"162\",\"quantity\":\"1\"},\"2\":{\"food_id\":\"2\",\"food_name\":\"Kasper Gonzales\",\"food_price\":\"992\",\"quantity\":\"1\"},\"3\":{\"food_id\":\"3\",\"food_name\":\"bath\",\"food_price\":\"20\",\"quantity\":\"1\"}}', NULL, 4, NULL, NULL, '2020-02-16 07:45:54', '2020-02-16 07:45:54');

-- --------------------------------------------------------

--
-- Table structure for table `fc_restaurants`
--

CREATE TABLE `fc_restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitting_capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_restaurants`
--

INSERT INTO `fc_restaurants` (`id`, `name`, `sitting_capacity`, `created_at`, `updated_at`, `user_id`, `area_id`, `restaurant_category_id`) VALUES
(2, 'Woondal', 55, '2019-12-29 13:47:33', '2019-12-29 13:47:33', 1, 2, 2),
(3, 'Ross Bolton', 56, '2020-02-17 12:44:50', '2020-02-17 12:44:50', 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `fc_restaurant_categories`
--

CREATE TABLE `fc_restaurant_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fc_restaurant_categories`
--

INSERT INTO `fc_restaurant_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chinese', '2019-12-22 03:15:47', '2019-12-22 03:15:47'),
(2, 'Indian', '2019-12-21 03:16:00', '2019-12-22 03:16:19'),
(3, 'Thai', '2019-12-22 03:16:34', '2019-12-22 03:16:34');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-12-20 15:07:14', '2019-12-20 15:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-12-20 15:07:14', '2019-12-20 15:07:14', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-12-20 15:07:14', '2019-12-20 15:07:14', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-12-20 15:07:14', '2019-12-20 15:07:14', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2019-12-20 15:07:14', '2019-12-21 05:57:01', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-12-20 15:07:14', '2019-12-21 05:57:01', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2019-12-20 15:07:14', '2019-12-21 05:57:02', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-12-20 15:07:29', '2019-12-21 05:57:01', 'voyager.hooks', NULL),
(12, 1, 'Fc Areas', '', '_self', 'voyager-lighthouse', NULL, NULL, 7, '2019-12-20 23:17:55', '2019-12-21 05:57:02', 'voyager.fc-areas.index', NULL),
(13, 1, 'Fc Food Categories', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-12-20 23:19:59', '2019-12-21 05:57:02', 'voyager.fc-food-categories.index', NULL),
(20, 1, 'Fc Restaurant Categories', '', '_self', 'voyager-archive', NULL, NULL, 10, '2019-12-21 07:12:49', '2019-12-21 07:12:49', 'voyager.fc-restaurant-categories.index', NULL),
(21, 1, 'Menu Items', '', '_self', 'voyager-book', NULL, NULL, 11, '2019-12-29 13:59:09', '2019-12-29 13:59:09', 'voyager.fcmenuitems.index', NULL),
(22, 1, 'Food Families', '', '_self', 'voyager-check-circle', NULL, NULL, 12, '2020-01-04 03:34:03', '2020-01-04 03:34:03', 'voyager.fc-food-families.index', NULL),
(23, 1, 'Menu Item (Restaurant Owner)', 'owner/menu_item_owner', '_blank', 'voyager-book-download', '#000000', NULL, 13, '2020-01-05 15:50:03', '2020-01-05 15:54:32', NULL, ''),
(24, 1, 'Fc Orders', '', '_self', NULL, NULL, NULL, 14, '2020-01-14 16:35:08', '2020-01-14 16:35:08', 'voyager.fc-orders.index', NULL),
(25, 1, 'Restaurants', '', '_self', 'voyager-company', NULL, NULL, 15, '2020-01-31 19:18:30', '2020-01-31 19:18:30', 'voyager.fc-restaurants.index', NULL),
(26, 1, 'Daily Specials', '', '_self', 'voyager-medal-rank-star', NULL, NULL, 16, '2020-06-09 04:32:17', '2020-06-09 04:32:17', 'voyager.daily-specials.index', NULL),
(27, 1, 'Fc Default Menus', '', '_self', 'voyager-boat', NULL, NULL, 17, '2020-06-14 23:54:11', '2020-06-14 23:54:11', 'voyager.fc-default-menu.index', NULL),
(28, 1, 'Reservations', '', '_self', 'voyager-ticket', NULL, NULL, 18, '2020-06-15 02:19:52', '2020-06-15 02:19:52', 'voyager.reservations.index', NULL),
(29, 1, 'Contacts', '', '_self', NULL, NULL, NULL, 19, '2020-06-21 10:41:18', '2020-06-21 10:41:18', 'voyager.contacts.index', NULL),
(30, 1, 'Reviews', '', '_self', 'voyager-star-half', NULL, NULL, 20, '2020-07-11 23:20:26', '2020-07-11 23:20:26', 'voyager.reviews.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2019_12_20_111928_create_restaurants_table', 1),
(28, '2019_12_20_112010_create_menu_items_table', 1),
(29, '2019_12_20_112137_create_orders_table', 1),
(37, '2019_12_21_065414_add_user_foreign_key_to_restaurants', 2),
(38, '2019_12_21_125814_add_columns_to_fc_restaurant', 2),
(39, '2019_12_29_190221_add_category_refrence_to_fc_items', 3),
(41, '2020_01_04_092544_create_food_families_table', 4),
(42, '2020_01_05_201604_add_food_family_refrence_to_fc_food_items', 5),
(43, '2020_01_05_213021_add_type_to_fc_menu_items', 6),
(44, '2020_01_14_215607_create_fc_orders_table', 7);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(2, 'browse_bread', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(3, 'browse_database', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(4, 'browse_media', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(5, 'browse_compass', NULL, '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(6, 'browse_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(7, 'read_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(8, 'edit_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(9, 'add_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(10, 'delete_menus', 'menus', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(11, 'browse_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(12, 'read_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(13, 'edit_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(14, 'add_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(15, 'delete_roles', 'roles', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(16, 'browse_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(17, 'read_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(18, 'edit_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(19, 'add_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(20, 'delete_users', 'users', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(21, 'browse_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(22, 'read_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(23, 'edit_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(24, 'add_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(25, 'delete_settings', 'settings', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(26, 'browse_hooks', NULL, '2019-12-20 15:07:29', '2019-12-20 15:07:29'),
(27, 'browse_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(28, 'read_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(29, 'edit_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(30, 'add_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(31, 'delete_fc_areas', 'fc_areas', '2019-12-20 23:17:55', '2019-12-20 23:17:55'),
(32, 'browse_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(33, 'read_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(34, 'edit_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(35, 'add_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(36, 'delete_fc_food_categories', 'fc_food_categories', '2019-12-20 23:19:59', '2019-12-20 23:19:59'),
(57, 'browse_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(58, 'read_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(59, 'edit_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(60, 'add_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(61, 'delete_fc_restaurant_categories', 'fc_restaurant_categories', '2019-12-21 07:12:49', '2019-12-21 07:12:49'),
(62, 'browse_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(63, 'read_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(64, 'edit_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(65, 'add_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(66, 'delete_fc_menu_items', 'fc_menu_items', '2019-12-29 13:59:09', '2019-12-29 13:59:09'),
(67, 'browse_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(68, 'read_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(69, 'edit_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(70, 'add_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(71, 'delete_fc_food_families', 'fc_food_families', '2020-01-04 03:34:03', '2020-01-04 03:34:03'),
(72, 'browse_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(73, 'read_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(74, 'edit_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(75, 'add_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(76, 'delete_fc_orders', 'fc_orders', '2020-01-14 16:35:08', '2020-01-14 16:35:08'),
(77, 'browse_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(78, 'read_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(79, 'edit_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(80, 'add_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(81, 'delete_fc_restaurants', 'fc_restaurants', '2020-01-31 19:18:30', '2020-01-31 19:18:30'),
(82, 'browse_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(83, 'read_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(84, 'edit_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(85, 'add_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(86, 'delete_daily_specials', 'daily_specials', '2020-06-09 04:32:17', '2020-06-09 04:32:17'),
(87, 'browse_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(88, 'read_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(89, 'edit_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(90, 'add_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(91, 'delete_fc_default_menu', 'fc_default_menu', '2020-06-14 23:54:11', '2020-06-14 23:54:11'),
(92, 'browse_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(93, 'read_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(94, 'edit_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(95, 'add_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(96, 'delete_reservations', 'reservations', '2020-06-15 02:19:52', '2020-06-15 02:19:52'),
(97, 'browse_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(98, 'read_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(99, 'edit_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(100, 'add_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(101, 'delete_contacts', 'contacts', '2020-06-21 10:41:18', '2020-06-21 10:41:18'),
(102, 'browse_reviews', 'reviews', '2020-07-11 23:20:26', '2020-07-11 23:20:26'),
(103, 'read_reviews', 'reviews', '2020-07-11 23:20:26', '2020-07-11 23:20:26'),
(104, 'edit_reviews', 'reviews', '2020-07-11 23:20:26', '2020-07-11 23:20:26'),
(105, 'add_reviews', 'reviews', '2020-07-11 23:20:26', '2020-07-11 23:20:26'),
(106, 'delete_reviews', 'reviews', '2020-07-11 23:20:26', '2020-07-11 23:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\r\n                <h2>We can use all kinds of format!</h2>\r\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\r\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\r\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-12-20 15:13:47', '2019-12-20 15:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch` int(11) DEFAULT NULL,
  `people` int(11) DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `branch`, `people`, `date`, `time`, `name`, `email`, `phone`, `request_text`) VALUES
(1, 1, 5, '2020-06-24', '10:00', 'Rahat', 'rahat@ggmail.com', '01637765144', 'This is a request message'),
(2, 2, 4, '2020-06-25', '10:00', 'Forrest Alston', 'noxyvocib@mailinator.net', '+573922102496', 'fsdgashbahadf'),
(3, 2, 4, '2020-06-25', '10:00', 'Forrest Alston', 'noxyvocib@mailinator.net', '+573922102496', 'fsdgashbahadf'),
(4, 1, 3, '2020-06-24', '10:00', 'Forrest Alston', 'noxyvocib@mailinator.net', '01637765144', 'wgwgwhwrhtehatahtash');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `star_count` int(11) DEFAULT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `star_count`, `brief`, `image_url`, `customer_name`, `created_at`, `updated_at`) VALUES
(1, 5, 'gsghaerhaeaetja', NULL, 'Rahat Baksh', '2020-07-11 23:43:34', '2020-07-11 23:43:34'),
(2, 4, 'This is a small brief.', 'reviews\\July2020\\7SB9IQnIg8OEgFxUwrrn.PNG', 'Rahat Baksh', '2020-07-11 23:55:13', '2020-07-11 23:55:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(2, 'user', 'Normal User', '2019-12-20 15:07:14', '2019-12-20 15:07:14'),
(3, 'shop_holder', 'ShopHolder', '2020-02-16 07:41:28', '2020-02-16 07:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Food Comb', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Find you taste easily.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\December2019\\RXqv3HpiC7mH1gDXzS52.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Food Comb', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Foodcomb admin panel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(22, 'menu_items', 'title', 13, 'pt', 'Publicações', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(24, 'menu_items', 'title', 12, 'pt', 'Categorias', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(25, 'menu_items', 'title', 14, 'pt', 'Páginas', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-12-20 15:13:47', '2019-12-20 15:13:47'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-12-20 15:13:48', '2019-12-20 15:13:48'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-12-20 15:13:48', '2019-12-20 15:13:48'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-12-20 15:13:48', '2019-12-20 15:13:48'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-12-20 15:13:48', '2019-12-20 15:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'zindabazar,Sylhet',
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '+8801764562808'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `address`, `phone_number`) VALUES
(1, 1, 'Kamran', 'kamran@gmail.com', 'users/default.png', NULL, '$2y$10$FjVabEtllFT7y7lh0i0RtepK7KXRhq.OSS8jp2lNbWHSKmzO56CJi', NULL, NULL, '2019-12-20 15:10:14', '2019-12-20 15:10:14', 'zindabazar,Sylhet', '+8801764562808'),
(2, 2, 'Calista Branch', 'legica@mailinator.com', 'users\\December2019\\lKXdEpOGSsr6MPZ9JcP6.png', NULL, '$2y$10$ES/0YWhCsFq/oqbUfiRCZOk7GrLkPE3vtcpQ/CcljrXpnygIAf2IG', NULL, '{\"locale\":\"en\"}', '2019-12-21 08:54:49', '2019-12-21 08:54:49', 'zindabazar,Sylhet', '+8801764562808'),
(3, 3, 'Forrest Alston', 'rahat3@gmail.com', 'users/default.png', NULL, '$2y$10$r8uWtz2pFT3mufX2os.rYusfUGMxFqEwBqfAEIj5uUVzkTUzlKWyi', NULL, '{\"locale\":\"en\"}', '2020-01-26 19:33:20', '2020-06-29 09:48:20', 'zindabazar,Sylhet', '+8801764562808'),
(4, 3, 'rahat', 'rahat396@gmail.com', 'users/default.png', NULL, '$2y$10$PTB1hJv6GxxFKDOMf4qrqeO61eqyHFMkY87RtyAznsCMa/ViCVexK', NULL, '{\"locale\":\"en\"}', '2020-01-26 20:39:28', '2020-02-16 07:41:47', 'zindabazar,Sylhet', '+8801764562808'),
(5, 1, 'rahat', 'rahat362@gmail.com', 'users/default.png', NULL, '$2y$10$THfu93YSTLc7RFdZ1ohVa.wlU1djNP86IkcTMvlR.8cYdX93tN5BC', NULL, '{\"locale\":\"en\"}', '2020-01-27 04:46:06', '2020-01-27 04:52:33', 'zindabazar,Sylhet', '+8801764562808'),
(6, 2, 'Kamran Khan', 'kamran392@gmail.com', 'users/default.png', NULL, '$2y$10$DrjnxjEHB8mttaAJjJ/p.O.uXwTgaZCQzQfkqlqYONPtpAAENCvEi', NULL, NULL, '2020-06-09 04:07:32', '2020-06-09 04:07:32', 'zindabazar,Sylhet', '+8801764562808'),
(7, 2, 'Forrest Alston', 'rahat356@gmail.com', 'users/default.png', NULL, '$2y$10$7mgdIk7.J9LtJ3sLiJ13ouZq93VPn/QdjAD/pKvZzCQxaRIPj8BYS', NULL, NULL, '2020-06-12 00:07:49', '2020-06-12 00:07:50', 'zindabazar,Sylhet', '+8801764562808'),
(8, 2, 'Forrest Alston', 'rahat5963@gmail.com', 'users/default.png', NULL, '$2y$10$ZUY.x4gYXE9/mTHfr9.tV.Td..NUa/QoPx94Ut97Ik4xbjgqFbrE6', NULL, NULL, '2020-06-21 11:52:27', '2020-06-21 11:52:27', 'zindabazar,Sylhet', '+8801764562808'),
(9, 2, 'Forrest Alston', 'rahat38964@gmail.com', 'users/default.png', NULL, '$2y$10$2MpqFz5t90HrrkPxY62Uk.KX6A5ECh4NxMkK49h2/uY9qcsElRTEW', NULL, NULL, '2020-06-21 11:54:47', '2020-06-21 11:54:47', 'zindabazar,Sylhet', '+8801764562808'),
(10, 2, 'Forrest Alston', 'rahat392@gmail.com', 'users/default.png', NULL, '$2y$10$61VjHLzj79Y7qA0uOPYVYOCjvJQf7bwK6GZ4yZ566nsMAJpgFsXLC', NULL, NULL, '2020-06-22 11:07:53', '2020-06-22 11:07:53', 'zindabazar,Sylhet', '+8801764562808'),
(11, 2, 'Forrest Alston', 'rahat386127@gmail.com', 'users/default.png', NULL, '$2y$10$kyIxsqCMOnQF7yVSqeXcrupW4i9zyVTEH5Bhmh4GZBTyt8hZbSlMy', NULL, NULL, '2020-06-22 11:09:54', '2020-06-22 11:09:54', 'zindabazar,Sylhet', '+8801764562808'),
(12, 2, 'Forrest Alston', 'rahat3sagfsad@gmail.com', 'users/default.png', NULL, '$2y$10$WZxC/S7BFQGG5frCWpawwuOlbCh8DaihcoBXca3gnW.EaBHchll5K', NULL, NULL, '2020-06-22 11:11:41', '2020-06-22 11:11:41', 'zindabazar,Sylhet', '+8801764562808'),
(13, 2, 'Forrest Alston', 'rahat3sagfsadgag@gmail.com', 'users/default.png', NULL, '$2y$10$.Oe0xxEr0gbS1oL0JxKmBuMsSMaKKCrz94zjjbTNfv.Tyy3d1Gf8i', NULL, NULL, '2020-06-22 11:16:51', '2020-06-22 11:16:51', 'zindabazar,Sylhet', '+8801764562808'),
(14, 2, 'Forrest Alston', 'rahatafsdgas3@gmail.com', 'users/default.png', NULL, '$2y$10$UyePsW0RmBUfu7D6WwH5yuYYe7muGXYeGFvnUcerbDhS12bbpny/q', NULL, NULL, '2020-06-22 11:22:36', '2020-06-22 11:22:36', 'zindabazar,Sylhet', '+8801764562808'),
(15, 2, 'Forrest Alston', 'rahat3uyfu@gmail.com', 'users/default.png', NULL, '$2y$10$WGyhPmCRXBiqHtaQcz3Kp.0jS.kre4hRu.pk77DUuRB6aTLRYiP/.', NULL, NULL, '2020-06-22 11:27:44', '2020-06-22 11:27:44', 'zindabazar,Sylhet', '+8801764562808');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_specials`
--
ALTER TABLE `daily_specials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `fc_areas`
--
ALTER TABLE `fc_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_default_menu`
--
ALTER TABLE `fc_default_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_food_categories`
--
ALTER TABLE `fc_food_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fc_food_families`
--
ALTER TABLE `fc_food_families`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_food_families_category_id_foreign` (`category_id`);

--
-- Indexes for table `fc_menu_items`
--
ALTER TABLE `fc_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_menu_items_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `fc_menu_items_category_id_index` (`category_id`),
  ADD KEY `fc_menu_items_food_family_id_index` (`food_family_id`);

--
-- Indexes for table `fc_orders`
--
ALTER TABLE `fc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_orders_order_from_index` (`order_from`),
  ADD KEY `fc_orders_restaurant_id_index` (`restaurant_id`);

--
-- Indexes for table `fc_restaurants`
--
ALTER TABLE `fc_restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fc_restaurants_user_id_index` (`user_id`);

--
-- Indexes for table `fc_restaurant_categories`
--
ALTER TABLE `fc_restaurant_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `daily_specials`
--
ALTER TABLE `daily_specials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `fc_areas`
--
ALTER TABLE `fc_areas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fc_default_menu`
--
ALTER TABLE `fc_default_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_food_categories`
--
ALTER TABLE `fc_food_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_food_families`
--
ALTER TABLE `fc_food_families`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `fc_menu_items`
--
ALTER TABLE `fc_menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fc_orders`
--
ALTER TABLE `fc_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `fc_restaurants`
--
ALTER TABLE `fc_restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fc_restaurant_categories`
--
ALTER TABLE `fc_restaurant_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `fc_food_families`
--
ALTER TABLE `fc_food_families`
  ADD CONSTRAINT `fc_food_families_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `fc_food_categories` (`id`);

--
-- Constraints for table `fc_menu_items`
--
ALTER TABLE `fc_menu_items`
  ADD CONSTRAINT `fc_menu_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `fc_food_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fc_menu_items_food_family_id_foreign` FOREIGN KEY (`food_family_id`) REFERENCES `fc_food_families` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fc_menu_items_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `fc_restaurants` (`id`);

--
-- Constraints for table `fc_orders`
--
ALTER TABLE `fc_orders`
  ADD CONSTRAINT `fc_orders_order_from_foreign` FOREIGN KEY (`order_from`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fc_orders_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `fc_restaurants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fc_restaurants`
--
ALTER TABLE `fc_restaurants`
  ADD CONSTRAINT `fc_restaurants_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
